-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/adc_pll/adc_pll_clk_wiz.v" \
  "../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/adc_pll/adc_pll.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

