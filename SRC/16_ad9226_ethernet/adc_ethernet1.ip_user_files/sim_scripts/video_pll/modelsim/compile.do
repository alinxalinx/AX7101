vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../ddr3_ov5640_an430_lcd.srcs/sources_1/ip/video_pll/video_pll_clk_wiz.v" \
"../../../../ddr3_ov5640_an430_lcd.srcs/sources_1/ip/video_pll/video_pll.v" \


vlog -work xil_defaultlib "glbl.v"

