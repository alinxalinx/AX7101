# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a100tfgg484-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.cache/wt [current_project]
set_property parent.project_path D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions disable [current_project]
read_verilog -library xil_defaultlib {
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/aq_axi_master.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/cmos_8_16bit.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/imports/sources_1/cmos_select.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/cmos_write_req_gen.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/video_define.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/color_bar.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/frame_fifo_read.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/frame_fifo_write.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/frame_read_write.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/i2c_master/i2c_config.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/i2c_master/timescale.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/i2c_master/i2c_master_defines.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/i2c_master/i2c_master_bit_ctrl.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/i2c_master/i2c_master_byte_ctrl.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/i2c_master/i2c_master_top.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/imports/sources_1/lut_ov5640_rgb565_1024_768.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/imports/sources_1/rgb_to_ycbcr.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/imports/sobel/sobel.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/imports/sources_1/video_timing_data.v
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/top.v
}
read_vhdl -library xil_defaultlib {
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/imports/sobel/ImageXlib_utils.vhd
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/imports/sources_1/sobel/ImageXlib_utils.vhd
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/imports/sobel/ImageXlib_arch.vhd
  D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/imports/sobel/linebuffer_Wapper.vhd
}
read_ip -quiet D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/sys_pll/sys_pll.xci
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/sys_pll/sys_pll_board.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/sys_pll/sys_pll.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/sys_pll/sys_pll_late.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/sys_pll/sys_pll_ooc.xdc]

read_ip -quiet D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll.xci
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_board.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_late.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_ooc.xdc]

read_ip -quiet D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/afifo_16i_64o_512/afifo_16i_64o_512.xci
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/afifo_16i_64o_512/afifo_16i_64o_512.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/afifo_16i_64o_512/afifo_16i_64o_512_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/afifo_16i_64o_512/afifo_16i_64o_512_ooc.xdc]

read_ip -quiet D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/afifo_64i_16o_128/afifo_64i_16o_128.xci
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/afifo_64i_16o_128/afifo_64i_16o_128.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/afifo_64i_16o_128/afifo_64i_16o_128_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/afifo_64i_16o_128/afifo_64i_16o_128_ooc.xdc]

read_ip -quiet D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/ddr3/ddr3.xci
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/ddr3/ddr3/user_design/constraints/ddr3.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/ddr3/ddr3/user_design/constraints/ddr3_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/constrs_1/new/ddr3_ov5640_vga.xdc
set_property used_in_implementation false [get_files D:/demo_ax7101/demo/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/constrs_1/new/ddr3_ov5640_vga.xdc]


synth_design -top top -part xc7a100tfgg484-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
