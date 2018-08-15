`timescale 1ns / 1ps  
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ethernet_test 
//////////////////////////////////////////////////////////////////////////////////
module ethernet_test
(
    input       key,
    input       rst_n,
	output      e_reset,
    output       e_mdc,                      //MDIO��ʱ���źţ����ڶ�дPHY�ļĴ���
    inout        e_mdio,                     //MDIO�������źţ����ڶ�дPHY�ļĴ��� 
	input	    e_rxc,                          ////125Mhz ethernet gmii rx clock
    input       e_rxdv,                        //GMII ����������Ч�ź�
    input       e_rxer,                        //GMII �������ݴ����ź�                    
    input [7:0] e_rxd,                         //GMII ��������          

    input       e_txc,                      //25Mhz ethernet mii tx clock         
    output      e_gtxc,                     //125Mhz ethernet gmii tx clock  
    output      e_txen,                     //GMII ����������Ч�ź�    
    output      e_txer,                     //GMII �������ݴ����ź�                    
    output[7:0] e_txd                      //GMII �������� 
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
