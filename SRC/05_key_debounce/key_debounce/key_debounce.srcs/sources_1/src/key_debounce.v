//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
//                                                                              //
//  Author: meisq                                                               //
//          msq@qq.com                                                          //
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

//===============================================================================
//  Revision History:
//  Date          By            Revision    Change Description
//-------------------------------------------------------------------------------
//  2017/6/19     meisq         1.0         Original
//*******************************************************************************/
module key_debounce(
	//Differential system clocks
	input                       sys_clk_p,
	input                       sys_clk_n,
	input                       rst_n,
	input                       key,
    output [1:0]                led
);
wire                            sys_clk;
wire                            button_negedge; //Key falling edge
wire[3:0]                       count;
assign led = ~count[1:0];
IBUFDS sys_clk_ibufgds
(
	.O                          (sys_clk                  ),
	.I                          (sys_clk_p                ),
	.IB                         (sys_clk_n                )
);

ax_debounce#(.FREQ(200)) ax_debounce_m0
(
    .clk                        (sys_clk),
    .rst                        (~rst_n),
    .button_in                  (key),
    .button_posedge             (),
    .button_negedge             (button_negedge),
    .button_out                 ()
);

count_m10 count10_m0(
    .clk                       (sys_clk),
    .rst_n                     (rst_n),
    .en                        (button_negedge),
    .clr                       (1'b0),
    .data                      (count),
    .t                         (     )
);
endmodule 