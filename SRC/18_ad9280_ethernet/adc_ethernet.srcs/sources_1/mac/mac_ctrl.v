//////////////////////////////////////////////////////////////////////////////////////
//Module Name : mac_top
//Description :
//
//////////////////////////////////////////////////////////////////////////////////////
`timescale 1 ns/1 ns
module mac_ctrl
       (
         input                     clk,
         input                     rst_n  ,
                                   
         output reg [15:0]         udp_send_data_length,
         input      [31:0]         ip_rec_source_ip_addr,    //broadcast source ip address
         output reg [31:0]         destination_ip_addr,
                                   
         input      [15:0]         fifo_data,             //FIFO中的数据
         input      [10:0]         fifo_data_count,       //FIFO中的数据数量
         output                    fifo_rd_en,            //FIFO读使能
         input                     udp_rd_en,
                                   
         input      [7:0]          header,
         input      [31:0]         sample_num,
         output reg [31:0]         sample_len,
                                   
         input      [7:0]          reply_data,         //reply cmd
         output reg                cmd_reply_ack,
         input                     cmd_reply_req,      //cmd reply request
         input      [15:0]         cmd_send_len,       //cmd reply length
         output reg                ad_data_ack,
         input                     ad_data_req,        //ad data request
         output reg                ad_sample_req,
         input                     ad_sample_ack,
                                   
         input                     mac_send_end,
         input                     mac_not_exist,
         input                     arp_found,
         output                    udp_tx_req,
         output                    arp_request_req,
         output     [7:0]          udp_data,
                                   
         input                     read_req_ack,
         output reg                read_req,
         output reg [15:0]         identify_code
         
       );
       
localparam AD_DATA_REQ  = 32'h00010002 ;

reg [31:0]       wait_cnt ;
reg [31:0]       send_cnt ;
                 
reg              ad_sample_ack_d0     ;
reg              ad_sample_ack_d1     ;
reg              ad_sample_ack_d2     ;
reg              ad_req_d0         ;
reg              ad_req_d1         ;
wire             ad_req_posedge      ;
reg [15:0]       udp_cnt ;
reg [7:0]        udp_fifo_data ;
reg [7:0]        udp_fifo_data_tmp ;
reg [7:0]        fifo_data_tmp ;

parameter IDLE            = 13'b0000000000001 ;
parameter CMD_WAIT        = 13'b0000000000010 ;
parameter CHECK_ARP       = 13'b0000000000100 ;
parameter ARP_REQ         = 13'b0000000001000 ;
parameter ARP_SEND        = 13'b0000000010000 ;
parameter ARP_WAIT        = 13'b0000000100000 ;
parameter WAIT            = 13'b0000001000000 ;
parameter CHECK_FIFO      = 13'b0000010000000 ;
parameter GEN_CMD_REQ     = 13'b0000100000000 ;
parameter GEN_AD_REQ      = 13'b0001000000000 ;
parameter CMD_SEND        = 13'b0010000000000 ;
parameter AD_SEND         = 13'b0100000000000 ;
parameter AD_SEND_WAIT    = 13'b1000000000000 ;

reg [12:0]    state  ;

always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      begin
        state  <=  IDLE  ;
        send_cnt <= 32'd0 ;
      end
    else
      begin
        case(state)
          IDLE        :
            begin
              if (wait_cnt == 32'd1250000 )  //wait for 10ms
                state <= CMD_WAIT ;
              else
                state <= IDLE ;
            end
          CMD_WAIT  :
            begin
              if (cmd_reply_req|ad_data_req)
                state <= CHECK_ARP ;
              else
                state <= CMD_WAIT ;
            end
          CHECK_ARP   :
            begin
              if (mac_not_exist)
                state <= ARP_REQ ;
              else if (cmd_reply_req)
                state <= GEN_CMD_REQ ;
              else if (ad_data_req)
                state <= CHECK_FIFO ;
              else
                state <= CMD_WAIT ;
            end
          ARP_REQ     :
            state <= ARP_SEND ;
          ARP_SEND    :
            begin
              if (mac_send_end)
                state <= ARP_WAIT ;
              else
                state <= ARP_SEND ;
            end
          ARP_WAIT    :
            begin
              if (arp_found)
                state <= WAIT ;
              else if (wait_cnt == 32'd125_000_000)
                state <= ARP_REQ ;
              else
                state <= ARP_WAIT ;
            end
          WAIT    :
            begin
              if (cmd_reply_req)
                state <= GEN_CMD_REQ ;
              else if (ad_data_req)
                state <= CHECK_FIFO ;
              else
                state <= CMD_WAIT ;
            end
          CHECK_FIFO  :
            begin
              if (fifo_rdusedw > 11'd511)
                state <= GEN_AD_REQ     ;
              else if (wait_cnt == 32'hffffffff)
                state <= CMD_WAIT     ;
              else
                state <= CHECK_FIFO ;
            end
            
          GEN_CMD_REQ :
            begin
            
              state <= CMD_SEND ;
            end
          GEN_AD_REQ  :
            begin
              state <= AD_SEND ;
            end
          CMD_SEND    :
            begin
              if (mac_send_end)
                state <= CMD_WAIT ;
              else
                state <= CMD_SEND ;
            end
          AD_SEND     :
            begin
              if (mac_send_end)
                begin
                  state <= AD_SEND_WAIT ;
                  send_cnt <= send_cnt + 32'd1024 ;
                end
              else
                state <= AD_SEND ;
            end
            
          AD_SEND_WAIT:
            begin
              if (send_cnt < sample_len*2)
                begin
                  if (wait_cnt == 32'd6250)
                    state <= CHECK_FIFO ;
                  else
                    state <= AD_SEND_WAIT ;
                end
              else
                begin
                  send_cnt <= 32'd0 ;
                  state <= CMD_WAIT ;
                end
            end
          default     :
            state <= IDLE ;
        endcase
      end
  end
  
  
  
  
assign udp_tx_req = (state == GEN_CMD_REQ || state == GEN_AD_REQ) ;
assign arp_request_req = (state == ARP_REQ) ;

assign udp_data = (state == CMD_SEND) ? reply_data : udp_fifo_data ;

always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      identify_code <= 16'd0 ;
    else if (state == GEN_AD_REQ)
      identify_code <= identify_code + 1'b1 ;
    else if (state == CMD_WAIT)
      identify_code <= 16'd0 ;
  end
  
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      begin
        ad_sample_ack_d0 <= 1'b0 ;
        ad_sample_ack_d1 <= 1'b0 ;
        ad_sample_ack_d2 <= 1'b0 ;
      end
    else
      begin
        ad_sample_ack_d0 <= ad_sample_ack ;
        ad_sample_ack_d1 <= ad_sample_ack_d0 ;
        ad_sample_ack_d2 <= ad_sample_ack_d1 ;
      end
  end
  
always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      begin
        ad_req_d0 <= 1'b0 ;
        ad_req_d1 <= 1'b0 ;
      end
    else
      begin
        ad_req_d0 <= ad_data_req ;
        ad_req_d1 <= ad_req_d0 ;
      end
  end
  
assign ad_req_posedge = ~ad_req_d1 & ad_req_d0 ;

always @(posedge clk or negedge rst_n )
  begin
    if (!rst_n)
      ad_sample_req <= 1'b0 ;
    else if (ad_sample_ack_d2)
      ad_sample_req <= 1'b0 ;
    else if (ad_req_posedge)
      ad_sample_req <= 1'b1 ;
      
  end
  
always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      sample_len <= 1'b0 ;
    else if (ad_req_posedge)
      sample_len <= sample_num ;
  end
  
  
always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      destination_ip_addr <= 32'hffffffff ;
    else if (cmd_reply_req|ad_data_req)
      destination_ip_addr <= ip_rec_source_ip_addr ;
  end
  
always @(posedge clk or negedge rst_n )
  begin
    if (!rst_n)
      read_req <= 1'b0 ;
    else if (read_req_ack)
      read_req <= 1'b0 ;
    else if (ad_req_posedge)
      read_req <= 1'b1 ;
  end
  
  
always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      ad_data_ack <= 1'b0 ;
    else if (state ==  GEN_AD_REQ)
      ad_data_ack <= 1'b1 ;
    else
      ad_data_ack <= 1'b0 ;
  end
  
always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      cmd_reply_ack <= 1'b0 ;
    else if (state ==  GEN_CMD_REQ)
      cmd_reply_ack <= 1'b1 ;
    else
      cmd_reply_ack <= 1'b0 ;
  end
  
always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      udp_send_data_length <= 16'd0 ;
    else if (state ==  GEN_CMD_REQ)
      udp_send_data_length <= cmd_send_len ;
    else if (state ==  GEN_AD_REQ)
      udp_send_data_length <= 16'd1029 ;
  end
  
  
reg [10:0] fifo_rdusedw ;
always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      fifo_rdusedw <= 11'd0 ;
    else
      fifo_rdusedw <= fifo_data_count ;
  end
  
  
always@(posedge clk or negedge rst_n)
  begin
    if(rst_n == 1'b0)
      wait_cnt <= 0 ;
    else if (state == IDLE ||state == CHECK_FIFO || state == WAIT || state == ARP_WAIT || state == AD_SEND_WAIT)
      wait_cnt <= wait_cnt + 1'b1 ;
    else
      wait_cnt <= 0 ;
  end
  
  
  
assign fifo_rd_en = (state == AD_SEND && udp_cnt > 16'd2 && udp_cnt < 16'd1027)? udp_cnt[0] : 1'b0 ;



always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      udp_cnt <= 16'd0 ;
    else if (udp_rd_en)
      udp_cnt <= udp_cnt + 1'b1 ;
    else
      udp_cnt <= 16'd0 ;
  end
  
always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      udp_fifo_data_tmp <= 8'd0 ;
    else
      case(udp_cnt)
        16'd0   :  udp_fifo_data_tmp <= header|8'h01 ;
        16'd1   :  udp_fifo_data_tmp <= AD_DATA_REQ[31:24] ;
        16'd2   :  udp_fifo_data_tmp <= AD_DATA_REQ[23:16] ;
        16'd3   :  udp_fifo_data_tmp <= AD_DATA_REQ[15:8]  ;
        16'd4   :  udp_fifo_data_tmp <= AD_DATA_REQ[7:0]   ;
        default :  udp_fifo_data_tmp <= fifo_data_tmp ;
      endcase
  end
  
always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      udp_fifo_data <= 8'd0 ;
    else
      udp_fifo_data <= udp_fifo_data_tmp ;
  end
  
always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      fifo_data_tmp <= 8'd0 ;
    else if (udp_cnt[0])
      fifo_data_tmp <= fifo_data[7:0] ;
    else
      fifo_data_tmp <= fifo_data[15:8] ;
  end
  
  
  
endmodule
