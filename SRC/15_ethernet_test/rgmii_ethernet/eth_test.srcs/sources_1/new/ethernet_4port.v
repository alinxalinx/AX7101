`timescale 1ns / 1ps  
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ethernet_4port 
//////////////////////////////////////////////////////////////////////////////////
module ethernet_4port
(
input        sys_clk_p,                   // �������ϲ������ʱ��200Mhz�� ����
input        sys_clk_n,                     // �������ϲ������ʱ��200Mhz�� ����  
input        key,
input        rst_n,
///////////////////////��̫��1 GMII Interface//////////////////////////////////////                                
output       e1_reset,       
output       e1_mdc,                      //MDIO��ʱ���źţ����ڶ�дPHY�ļĴ���
inout        e1_mdio,                     //MDIO�������źţ����ڶ�дPHY�ļĴ���      
input	     e1_rxc,                      //125Mhz ethernet gmii rx clock
input	     e1_rxdv,	                  //GMII ����������Ч�ź�
input	     e1_rxer,	                  //GMII �������ݴ����ź�					
input  [7:0] e1_rxd,                      //GMII ��������	 
input	     e1_txc,                      //25Mhz ethernet mii tx clock         
output       e1_gtxc,                     //125Mhz ethernet gmii tx clock  
output       e1_txen,                     //GMII ����������Ч�ź�	
output       e1_txer,                     //GMII �������ݴ����ź�					
output [7:0] e1_txd,	                  //GMII �������� 

 ///////////////////////��̫��2 GMII Interface//////////////////////////////////////                                
output       e2_reset,        
output       e2_mdc,                      //MDIO��ʱ���źţ����ڶ�дPHY�ļĴ���
inout        e2_mdio,                     //MDIO�������źţ����ڶ�дPHY�ļĴ���    
input	     e2_rxc,                      //125Mhz ethernet gmii rx clock
input	     e2_rxdv,	                  //GMII ����������Ч�ź�
input	     e2_rxer,	                  //GMII �������ݴ����ź�					
input  [7:0] e2_rxd,                      //GMII ��������	 
input	     e2_txc,                      //25Mhz ethernet mii tx clock         
output       e2_gtxc,                     //125Mhz ethernet gmii tx clock  
output       e2_txen,                     //GMII ����������Ч�ź�	
output       e2_txer,                     //GMII �������ݴ����ź�					
output [7:0] e2_txd,	                  //GMII �������� 
					
///////////////////////��̫��3 GMII Interface//////////////////////////////////////                                
output       e3_reset,     
output       e3_mdc,                      //MDIO��ʱ���źţ����ڶ�дPHY�ļĴ���
inout        e3_mdio,                     //MDIO�������źţ����ڶ�дPHY�ļĴ���      
input        e3_rxc,                      //125Mhz ethernet gmii rx clock
input        e3_rxdv,                     //GMII ����������Ч�ź�
input        e3_rxer,                     //GMII �������ݴ����ź�                    
input  [7:0] e3_rxd,                      //GMII ��������     
input        e3_txc,                      //25Mhz ethernet mii tx clock         
output       e3_gtxc,                     //125Mhz ethernet gmii tx clock  
output       e3_txen,                     //GMII ����������Ч�ź�    
output       e3_txer,                     //GMII �������ݴ����ź�                    
output [7:0] e3_txd,                      //GMII �������� 					
 ///////////////////////��̫��4 GMII Interface//////////////////////////////////////                                
output       e4_reset,  
output       e4_mdc,                      //MDIO��ʱ���źţ����ڶ�дPHY�ļĴ���
inout        e4_mdio,                     //MDIO�������źţ����ڶ�дPHY�ļĴ���            
input        e4_rxc,                      //125Mhz ethernet gmii rx clock
input        e4_rxdv,                     //GMII ����������Ч�ź�
input        e4_rxer,                     //GMII �������ݴ����ź�                    
input  [7:0] e4_rxd,                      //GMII ��������     
input        e4_txc,                      //25Mhz ethernet mii tx clock         
output       e4_gtxc,                     //125Mhz ethernet gmii tx clock  
output       e4_txen,                     //GMII ����������Ч�ź�    
output       e4_txer,                     //GMII �������ݴ����ź�                    
output [7:0] e4_txd                       //GMII ��������         
); 
//////////////////////////��̫��1���Գ���*//////////////////////////
ethernet_test u1
(
.key                        (key),
.rst_n                      (rst_n),
.e_reset                    (e1_reset), 
.e_mdc                      (e1_mdc),        
.e_mdio                     (e1_mdio), 
.e_rxc                      (e1_rxc), 
.e_rxdv                     (e1_rxdv), 
.e_rxer                     (e1_rxer), 
.e_rxd                      (e1_rxd), 

.e_txc                      (e1_txc), 
.e_gtxc                     (e1_gtxc), 
.e_txen                     (e1_txen), 
.e_txer                     (e1_txer),
.e_txd                      (e1_txd)        

);

//////////////////////////��̫��2���Գ���*//////////////////////////
ethernet_test u2
(
.key                        (key),
.rst_n                      (rst_n),
.e_reset                    (e2_reset), 
.e_mdc                      (e2_mdc),        
.e_mdio                     (e2_mdio),  
.e_rxc                      (e2_rxc), 
.e_rxdv                     (e2_rxdv), 
.e_rxer                     (e2_rxer), 
.e_rxd                      (e2_rxd), 

.e_txc                      (e2_txc), 
.e_gtxc                     (e2_gtxc), 
.e_txen                     (e2_txen), 
.e_txer                     (e2_txer),
.e_txd                      (e2_txd)        

);

//////////////////////////��̫��3���Գ���*//////////////////////////
ethernet_test u3
(
.key                        (key),
.rst_n                      (rst_n),
.e_reset                    (e3_reset), 
.e_mdc                      (e3_mdc),        
.e_mdio                     (e3_mdio), 
.e_rxc                      (e3_rxc), 
.e_rxdv                     (e3_rxdv), 
.e_rxer                     (e3_rxer), 
.e_rxd                      (e3_rxd), 

.e_txc                      (e3_txc), 
.e_gtxc                     (e3_gtxc), 
.e_txen                     (e3_txen), 
.e_txer                     (e3_txer),
.e_txd                      (e3_txd)        
 );
//////////////////////////��̫��4���Գ���*//////////////////////////
ethernet_test u4
(
.key                        (key),
.rst_n                      (rst_n),
.e_reset                    (e4_reset), 
.e_mdc                      (e4_mdc),        
.e_mdio                     (e4_mdio), 
.e_rxc                      (e4_rxc), 
.e_rxdv                     (e4_rxdv), 
.e_rxer                     (e4_rxer), 
.e_rxd                      (e4_rxd), 

.e_txc                      (e4_txc), 
.e_gtxc                     (e4_gtxc), 
.e_txen                     (e4_txen), 
.e_txer                     (e4_txer),
.e_txd                      (e4_txd)        

);   
endmodule