// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Jun 28 13:24:52 2018
// Host        : PC-201805041311 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/demo_ax7102/demo/17_ad7606_vga_test/ad7606_vga_test/ad7606_vga_test.srcs/sources_1/ip/dpram1024x8/dpram1024x8_stub.v
// Design      : dpram1024x8
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module dpram1024x8(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[9:0],dina[7:0],clkb,enb,addrb[9:0],doutb[7:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [7:0]dina;
  input clkb;
  input enb;
  input [9:0]addrb;
  output [7:0]doutb;
endmodule
