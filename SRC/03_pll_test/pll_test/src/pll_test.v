`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    pll_test                                                      //
 //                                                                              //
 //  Author: lhj                                                                //
 //                                                                             //
 //          ALINX(shanghai) Technology Co.,Ltd                                  //
 //          heijin                                                              //
 //     WEB: http://www.alinx.cn/                                                //
 //     BBS: http://www.heijin.org/                                              //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// Copyright (c) 2017,ALINX(shanghai) Technology Co.,Ltd                        //
//                    All rights reserved                                       //
//                                                                              //
// This source file may be used and distributed without restriction provided    //
// that this copyright statement is not removed from the file and that any      //
// derivative work contains the original copyright notice and the associated    //
// disclaimer.                                                                  //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////
                        
//================================================================================
//  Revision History:
 //  Date          By            Revision    Change Description
//--------------------------------------------------------------------------------
//  2018/01/03     lhj          1.0         Original
//*******************************************************************************/
//////////////////////////////////////////////////////////////////////////////////
module pll_test(
//Differential system clocks
 input       sys_clk_p,
 input       sys_clk_n,   
 input       rst_n,             //reset ,low active
 output      clk_out           //pll clock output J8_Pin3
);
   
wire        locked;
wire        pll_clk_o;
wire        sys_clk;
IBUFDS sys_clk_ibufgds   //generate single end clock
 (
 .O                          (sys_clk                  ),
 .I                          (sys_clk_p                ),
 .IB                         (sys_clk_n                )
 );
/////////////////////PLL IP call////////////////////////////
clk_wiz_0 clk_wiz_0_inst
(// Clock in ports
.clk_in1(sys_clk),            // IN 50Mhz
// Clock out ports
.clk_out1(),                // OUT 200Mhz
.clk_out2(),               // OUT 100Mhz
.clk_out3(),              // OUT 50Mhz
.clk_out4(pll_clk_o),    // OUT 25Mhz	 
// Status and control signals	 
.reset(~rst_n),        // RESET IN
.locked(locked));     // OUT


///////////////调用ODDR使时钟信号通过普通IO输出//////////////////	  
ODDR #(
.DDR_CLK_EDGE("SAME_EDGE")
) ODDR_inst (
.Q        (clk_out  ),                   // 1-bit DDR output data
.C        (pll_clk_o),                  // 1-bit clock input
.CE       (1'b1     ),                 // 1-bit clock enable input
.D1       (1'b1     ),                // 1-bit data input (associated with C)
.D2       (1'b0     ),               // 1-bit data input (associated with C)
.R        (1'b0     ),              // 1-bit reset input
.S        (1'b0     )              // 1-bit set input
);     	  
endmodule
