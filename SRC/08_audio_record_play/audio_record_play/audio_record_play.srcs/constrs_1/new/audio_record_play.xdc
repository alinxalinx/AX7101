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

##############reset key define##################
set_property PACKAGE_PIN T6 [get_ports rst_n]
set_property IOSTANDARD LVCMOS15 [get_ports rst_n]

set_property PACKAGE_PIN E16 [get_ports key]
set_property IOSTANDARD LVCMOS33 [get_ports key]
###AN831 on AX7101 J11###########################################
set_property IOSTANDARD LVCMOS33 [get_ports {wm8731_scl}]
set_property IOSTANDARD LVCMOS33 [get_ports {wm8731_sda}]
set_property IOSTANDARD LVCMOS33 [get_ports {wm8731_dacdat}]
set_property IOSTANDARD LVCMOS33 [get_ports {wm8731_bclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {wm8731_adcdat}]
set_property IOSTANDARD LVCMOS33 [get_ports {wm8731_daclrc}]
set_property IOSTANDARD LVCMOS33 [get_ports {wm8731_adclrc}]

set_property PACKAGE_PIN B22 [get_ports {wm8731_scl}]
set_property PACKAGE_PIN C22 [get_ports {wm8731_sda}]
set_property PACKAGE_PIN A20 [get_ports {wm8731_dacdat}]
set_property PACKAGE_PIN B20 [get_ports {wm8731_bclk}]
set_property PACKAGE_PIN F20 [get_ports {wm8731_adcdat}]
set_property PACKAGE_PIN F19 [get_ports {wm8731_daclrc}]
set_property PACKAGE_PIN J16 [get_ports {wm8731_adclrc}]
