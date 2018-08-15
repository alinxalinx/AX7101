`timescale 1ns / 1ps  
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ethernet_test 
//////////////////////////////////////////////////////////////////////////////////
module ethernet_test
(
    input       key,
    input       rst_n,
	output      e_reset,
    output       e_mdc,                      //MDIO的时钟信号，用于读写PHY的寄存器
    inout        e_mdio,                     //MDIO的数据信号，用于读写PHY的寄存器 
	input	    e_rxc,                          ////125Mhz ethernet gmii rx clock
    input       e_rxdv,                        //GMII 接收数据有效信号
    input       e_rxer,                        //GMII 接收数据错误信号                    
    input [7:0] e_rxd,                         //GMII 接收数据          

    input       e_txc,                      //25Mhz ethernet mii tx clock         
    output      e_gtxc,                     //125Mhz ethernet gmii tx clock  
    output      e_txen,                     //GMII 发送数据有效信号    
    output      e_txer,                     //GMII 发送数据错误信号                    
    output[7:0] e_txd                      //GMII 发送数据 
);

assign e_gtxc=e_rxc;	 
assign e_reset = 1'b1; 

assign  e_mdc=1'bz;
assign  e_mdio=1'bz;
mac_test mac_test0
(
    .gmii_tx_clk            (e_gtxc),
    .gmii_rx_clk            (e_rxc) ,
    .rst_n                  (rst_n),
    .push_button            (key),
    .gmii_rx_dv             (e_rxdv),
    .gmii_rxd               (e_rxd),
    .gmii_tx_en             (e_txen),
    .gmii_txd               (e_txd)
 
); 
endmodule
