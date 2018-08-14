set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
#############SPI Configurate Setting##################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design] 
set_property CONFIG_MODE SPIx4 [current_design] 
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design] 
############## clock define##################
create_clock -period 5 [get_ports sys_clk_p]
set_property PACKAGE_PIN R4 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_p]
############## key define##################
set_property PACKAGE_PIN T6 [get_ports rst_n]
set_property IOSTANDARD LVCMOS15 [get_ports rst_n]
############## VGA define##################
set_property IOSTANDARD LVCMOS33 [get_ports vga_out_hs]
set_property PACKAGE_PIN C13 [get_ports vga_out_hs]

set_property IOSTANDARD LVCMOS33 [get_ports vga_out_vs]
set_property PACKAGE_PIN B13 [get_ports vga_out_vs]


set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_r[0]}]
set_property PACKAGE_PIN AB16 [get_ports {vga_out_r[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_r[1]}]
set_property PACKAGE_PIN Y16 [get_ports {vga_out_r[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_r[2]}]
set_property PACKAGE_PIN AA16 [get_ports {vga_out_r[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_r[3]}]
set_property PACKAGE_PIN Y13 [get_ports {vga_out_r[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_r[4]}]
set_property PACKAGE_PIN AB17 [get_ports {vga_out_r[4]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[0]}]
set_property PACKAGE_PIN D15 [get_ports {vga_out_g[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[1]}]
set_property PACKAGE_PIN AB13 [get_ports {vga_out_g[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[2]}]
set_property PACKAGE_PIN W14 [get_ports {vga_out_g[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[3]}]
set_property PACKAGE_PIN AA14 [get_ports {vga_out_g[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[4]}]
set_property PACKAGE_PIN AA13 [get_ports {vga_out_g[4]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_g[5]}]
set_property PACKAGE_PIN AB12 [get_ports {vga_out_g[5]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_b[0]}]
set_property PACKAGE_PIN D14 [get_ports {vga_out_b[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_b[1]}]
set_property PACKAGE_PIN E14 [get_ports {vga_out_b[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_b[2]}]
set_property PACKAGE_PIN E13 [get_ports {vga_out_b[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_b[3]}]
set_property PACKAGE_PIN F13 [get_ports {vga_out_b[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_out_b[4]}]
set_property PACKAGE_PIN F14 [get_ports {vga_out_b[4]}]

########AN706 ON AX7101 J11##########################################
set_property PACKAGE_PIN B22 [get_ports {ad7606_os[1]}]
set_property PACKAGE_PIN C22 [get_ports {ad7606_os[0]}]
set_property PACKAGE_PIN A20 [get_ports {ad7606_convstab}]
set_property PACKAGE_PIN B20  [get_ports {ad7606_os[2]}]
set_property PACKAGE_PIN F20 [get_ports {ad7606_rd}]
set_property PACKAGE_PIN F19 [get_ports {ad7606_reset}]
set_property PACKAGE_PIN J16 [get_ports {ad7606_busy}]
set_property PACKAGE_PIN F15  [get_ports {ad7606_cs}]
set_property PACKAGE_M17 [get_ports {ad7606_first_data}]
set_property PACKAGE_PIN D21  [get_ports {ad7606_data[0]}]
set_property PACKAGE_PIN E21  [get_ports {ad7606_data[1]}]
set_property PACKAGE_PIN G18  [get_ports {ad7606_data[2]}]
set_property PACKAGE_PIN G17  [get_ports {ad7606_data[3]}]
set_property PACKAGE_PIN H19  [get_ports {ad7606_data[4]}]
set_property PACKAGE_PIN J19  [get_ports {ad7606_data[5]}]
set_property PACKAGE_PIN G16  [get_ports {ad7606_data[6]}]
set_property PACKAGE_PIN G15  [get_ports {ad7606_data[7]}]
set_property PACKAGE_PIN D19  [get_ports {ad7606_data[8]}]
set_property PACKAGE_PIN E19  [get_ports {ad7606_data[9]}]
set_property PACKAGE_PIN C20 [get_ports {ad7606_data[10]}]
set_property PACKAGE_PIN D20 [get_ports {ad7606_data[11]}]
set_property PACKAGE_PIN A19  [get_ports {ad7606_data[12]}]
set_property PACKAGE_PIN A18  [get_ports {ad7606_data[13]}]
set_property PACKAGE_PIN E18  [get_ports {ad7606_data[14]}]
set_property PACKAGE_PIN F18  [get_ports {ad7606_data[15]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_os[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_os[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_convstab}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_os[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_rd}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_reset}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_busy}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_cs}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_first_data}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad7606_data[15]}]




