-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Mon Sep 11 15:59:16 2017
-- Host        : Mei-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               G:/AX7100/audio_record_play/ddr3_ov5640_an430_lcd/ddr3_ov5640_an430_lcd.srcs/sources_1/ip/afifo_64i_16o_128/afifo_64i_16o_128_stub.vhdl
-- Design      : afifo_64i_16o_128
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity afifo_64i_16o_128 is
  Port ( 
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end afifo_64i_16o_128;

architecture stub of afifo_64i_16o_128 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,wr_clk,rd_clk,din[63:0],wr_en,rd_en,dout[15:0],full,empty,rd_data_count[8:0],wr_data_count[6:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_0_1,Vivado 2015.4";
begin
end;
