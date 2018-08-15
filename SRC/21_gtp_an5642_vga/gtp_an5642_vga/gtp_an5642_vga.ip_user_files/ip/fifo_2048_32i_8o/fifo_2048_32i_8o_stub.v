// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Jul  5 11:44:35 2018
// Host        : PC-201805041311 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/fifo_2048_32i_8o/fifo_2048_32i_8o_stub.v
// Design      : fifo_2048_32i_8o
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_1,Vivado 2017.4" *)
module fifo_2048_32i_8o(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  almost_full, empty, almost_empty, rd_data_count, wr_data_count, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[31:0],wr_en,rd_en,dout[15:0],full,almost_full,empty,almost_empty,rd_data_count[11:0],wr_data_count[10:0],wr_rst_busy,rd_rst_busy" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [31:0]din;
  input wr_en;
  input rd_en;
  output [15:0]dout;
  output full;
  output almost_full;
  output empty;
  output almost_empty;
  output [11:0]rd_data_count;
  output [10:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
