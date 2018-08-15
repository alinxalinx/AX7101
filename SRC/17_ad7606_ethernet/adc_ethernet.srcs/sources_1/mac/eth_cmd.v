`timescale 1 ns/1 ns
module eth_cmd
       #(
         parameter SAMPLE_RATE  = 32'd65_000_000 ,  //65Msps
         parameter SAMPLE_DEPTH = 32'd16_000_000 ,  //16MB
         parameter DATA_SIGN    = 8'h01          ,  //00,unsinged;01,signed
         parameter DATA_LEN     = 8'd12          ,  //adc data width
         parameter DATA_BYTE    = 8'h02             //data byte number
         
       )
       
       (
         input                     clk ,
         input                     rst_n   ,
         
         input                     udp_rec_data_valid,    //received data valid
         input      [7:0]          udp_rec_ram_rdata ,     //read data from received ram
         output     [10:0]         udp_rec_ram_read_addr,  //read address for received ram
         input      [15:0]         udp_rec_data_length,   //received data length
         input                     udp_rd_en,        //udp read enable
         output reg [7:0]          reply_data,        //reply cmd
         
         input      [31:0]         local_ip_addr,        //local ip address
         input      [47:0]         local_mac_addr,       //local mac address
         
         output reg [31:0]         ch_sel,
         output reg [31:0]         sample_num,
         output reg [7:0]          header,
         input                     cmd_reply_ack,
         output reg                cmd_reply_req,      //cmd reply request
         output     [15:0]         cmd_send_len,       //cmd reply length
         input                     ad_data_ack,
         output reg                ad_data_req        //ad data request
         
         
       ) ;
       
       
localparam CMD_INQUIRY  = 32'h00010001 ;
localparam AD_DATA_REQ  = 32'h00010002 ;
localparam CMD_SEND_LEN = 16'd27 ;

reg  [7:0]    cmd_cnt                 ;
reg  [3:0]    wait_cnt                ;
reg  [15:0]   timeout                 ;
reg  [5:0]    reply_cnt               ;

reg  [31:0]   header_argu             ;
reg           udp_data_valid_d0       ;
reg           udp_data_valid_d1       ;
wire          udp_data_valid_posedge  ;
reg           ad_data_ack_d0          ;
reg           ad_data_ack_d1          ;
reg           ad_data_ack_d2          ;
reg  [47:0]   cmd_mac_addr            ;

localparam IDLE           = 7'b0000001 ;
localparam CMD_READ       = 7'b0000010 ;
localparam CMD_WAIT       = 7'b0000100 ;
localparam CMD_CHECK      = 7'b0001000 ;
localparam CMD_REPLY_WAIT = 7'b0010000 ;
localparam CMD_REPLY      = 7'b0100000 ;
localparam CMD_END        = 7'b1000000 ;

reg [6:0]   state    ;
reg [6:0]   next_state  ;

always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      state <= IDLE ;
    else
      state <= next_state ;
  end
  
always @(*)
  begin
    case(state)
      IDLE      :
        begin
          if (udp_data_valid_posedge && udp_rec_data_length < 16'd28)
            next_state <= CMD_READ ;
          else
            next_state <= IDLE ;
        end
      CMD_READ    :
        begin
          if (cmd_cnt == udp_rec_data_length - 9)
            next_state <= CMD_WAIT ;
          else
            next_state <= CMD_READ ;
        end
      CMD_WAIT    :
        begin
          if (wait_cnt == 4'd7)
            next_state <= CMD_CHECK ;
          else
            next_state <= CMD_WAIT ;
        end
      CMD_CHECK    :
        begin
          if (cmd_reply_req)
            next_state <= CMD_REPLY_WAIT ;
          else if (ad_data_req || wait_cnt == 4'd15)
            next_state <= CMD_END ;
          else
            next_state <= CMD_CHECK ;
        end
      CMD_REPLY_WAIT :
        begin
          if (udp_rd_en)
            next_state <= CMD_REPLY ;
          else if (timeout == 16'hffff)
            next_state <= CMD_END ;
          else
            next_state <= CMD_REPLY_WAIT ;
        end
      CMD_REPLY    :
        begin
          if (reply_cnt == CMD_SEND_LEN - 1)
            next_state <= CMD_END ;
          else
            next_state <= CMD_REPLY ;
        end
      CMD_END     :
        next_state <= IDLE ;
      default     :
        next_state <= IDLE ;
        
    endcase
  end
  
assign udp_rec_ram_read_addr   = cmd_cnt ;
assign cmd_send_len            = CMD_SEND_LEN ;

always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      begin
        ad_data_ack_d0 <= 1'b0 ;
        ad_data_ack_d1 <= 1'b0 ;
        ad_data_ack_d2 <= 1'b0 ;
      end
    else
      begin
        ad_data_ack_d0 <= ad_data_ack ;
        ad_data_ack_d1 <= ad_data_ack_d0 ;
        ad_data_ack_d2 <= ad_data_ack_d1 ;
      end
  end
  
//read data from udp received ram counter
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      begin
        udp_data_valid_d0 <= 1'b0 ;
        udp_data_valid_d1 <= 1'b0 ;
      end
    else
      begin
        udp_data_valid_d0 <= udp_rec_data_valid ;
        udp_data_valid_d1 <= udp_data_valid_d0 ;
      end
  end
  
assign udp_data_valid_posedge = ~udp_data_valid_d1 & udp_data_valid_d0 ;


//read data from udp received ram counter
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      cmd_cnt <= 8'd0 ;
    else if (state == CMD_READ)
      cmd_cnt <= cmd_cnt + 1'b1 ;
    else
      cmd_cnt <= 8'd0 ;
  end
//wait for some clocks
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      wait_cnt <= 4'd0 ;
    else if (state == CMD_WAIT || state == CMD_CHECK)
      wait_cnt <= wait_cnt + 1'b1 ;
    else
      wait_cnt <= 4'd0 ;
  end
  
//wait for some clocks
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      timeout <= 16'd0 ;
    else if (state == CMD_REPLY_WAIT)
      timeout <= timeout + 1'b1 ;
    else
      timeout <= 16'd0 ;
  end
  
  
//reply counter
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      reply_cnt <= 6'd0 ;
    else if (state == CMD_REPLY)
      reply_cnt <= reply_cnt + 1'b1 ;
    else
      reply_cnt <= 6'd0 ;
  end
//register header
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      header <= 8'd0 ;
    else if (cmd_cnt == 8'd1)
      header <= udp_rec_ram_rdata ;
  end
//register header argument
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      header_argu <= 32'd0 ;
    else if (cmd_cnt == 8'd2)
      header_argu[31:24]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd3)
      header_argu[23:16]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd4)
      header_argu[15:8]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd5)
      header_argu[7:0]    <= udp_rec_ram_rdata ;
  end
//received cmd
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      cmd_mac_addr <= 48'd0 ;
    else if (cmd_cnt == 8'd6)
      cmd_mac_addr[47:40]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd7)
      cmd_mac_addr[39:32]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd8)
      cmd_mac_addr[31:24]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd9)
      cmd_mac_addr[23:16]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd10)
      cmd_mac_addr[15:8]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd11)
      cmd_mac_addr[7:0]    <= udp_rec_ram_rdata ;
  end
  
//register channel select
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      ch_sel <= 32'd0 ;
    else if (cmd_cnt == 8'd12)
      ch_sel[31:24]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd13)
      ch_sel[23:16]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd14)
      ch_sel[15:8]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd15)
      ch_sel[7:0]    <= udp_rec_ram_rdata ;
  end
//register sample number
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      sample_num <= 32'd0 ;
    else if (cmd_cnt == 8'd16)
      sample_num[31:24]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd17)
      sample_num[23:16]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd18)
      sample_num[15:8]   <= udp_rec_ram_rdata ;
    else if (cmd_cnt == 8'd20)
      sample_num[7:0]    <= udp_rec_ram_rdata ;
  end
//check command
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      cmd_reply_req <= 1'b0 ;
    else if (cmd_reply_ack)
      cmd_reply_req <= 1'b0 ;
    else if (state == CMD_CHECK)
      begin
        if (~header[0] && (header_argu == 32'd0 || header_argu == CMD_INQUIRY))
          cmd_reply_req <= 1'b1 ;
      end
  end
  
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      ad_data_req <= 1'b0 ;
    else if (ad_data_ack)
      ad_data_req <= 1'b0 ;
    else if (state == CMD_CHECK)
      begin
        if (~header[0] && header_argu == AD_DATA_REQ && cmd_mac_addr == local_mac_addr)
          ad_data_req <= 1'b1 ;
      end
  end
//reply cmd data
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      reply_data <= 8'd0 ;
    else
      begin
        case(reply_cnt)
          6'd0    :   reply_data <= header|8'h01           ;
          6'd1    :   reply_data <= CMD_INQUIRY[31:24]     ;
          6'd2    :   reply_data <= CMD_INQUIRY[23:16]     ;
          6'd3    :   reply_data <= CMD_INQUIRY[15:8]      ;
          6'd4    :   reply_data <= CMD_INQUIRY[7:0]       ;
          6'd5    :   reply_data <= local_mac_addr[47:40]  ;
          6'd6    :   reply_data <= local_mac_addr[39:32]  ;
          6'd7    :   reply_data <= local_mac_addr[31:24]  ;
          6'd8    :   reply_data <= local_mac_addr[23:16]  ;
          6'd9    :   reply_data <= local_mac_addr[15:8]   ;
          6'd10   :   reply_data <= local_mac_addr[7:0]    ;
          6'd11   :   reply_data <= local_ip_addr[31:24]   ;
          6'd12   :   reply_data <= local_ip_addr[23:16]   ;
          6'd13   :   reply_data <= local_ip_addr[15:8]    ;
          6'd14   :   reply_data <= local_ip_addr[7:0]     ;
          6'd15   :   reply_data <= DATA_SIGN              ;
          6'd16   :   reply_data <= DATA_LEN               ;
          6'd17   :   reply_data <= DATA_BYTE              ;
          6'd18   :   reply_data <= 8'h01                  ; //channel
          6'd19   :   reply_data <= SAMPLE_RATE[31:24]     ;
          6'd20   :   reply_data <= SAMPLE_RATE[23:16]     ;
          6'd21   :   reply_data <= SAMPLE_RATE[15:8]      ;
          6'd22   :   reply_data <= SAMPLE_RATE[7:0]       ;
          6'd23   :   reply_data <= SAMPLE_DEPTH[31:24]    ;
          6'd24   :   reply_data <= SAMPLE_DEPTH[23:16]    ;
          6'd25   :   reply_data <= SAMPLE_DEPTH[15:8]     ;
          6'd26   :   reply_data <= SAMPLE_DEPTH[7:0]      ;
          default :   reply_data <= 8'h00                  ;
        endcase
      end
  end
  
endmodule









