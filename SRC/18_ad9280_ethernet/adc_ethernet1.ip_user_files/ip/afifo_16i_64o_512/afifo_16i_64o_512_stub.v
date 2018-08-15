// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Mon Sep 11 15:59:17 2017
// Host        : Mei-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               G:/AX7100/audio_record_play/ddr3_ov5640_an430_lcd/ddr3_ov5640_an430_lcd.srcs/sources_1/ip/afifo_16i_64o_512/afifo_16i_64o_512_stub.v
// Design      : afifo_16i_64o_512
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_0_1,Vivado 2015.4" *)
module afifo_16i_64o_512(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty, rd_data_count, wr_data_count)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[15:0],wr_en,rd_en,dout[63:0],full,empty,rd_data_count[6:0],wr_data_count[8:0]" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [15:0]din;
  input wr_en;
  input rd_en;
  output [63:0]dout;
  output full;
  output empty;
  output [6:0]rd_data_count;
  output [8:0]wr_data_count;
endmodule
