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
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a100tfgg484-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.cache/wt [current_project]
set_property parent.project_path D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions disable [current_project]
read_ip -quiet D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll.xci
set_property used_in_implementation false [get_files -all d:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_board.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_late.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top video_pll -part xc7a100tfgg484-2 -mode out_of_context

rename_ref -prefix_all video_pll_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef video_pll.dcp
create_report "video_pll_synth_1_synth_report_utilization_0" "report_utilization -file video_pll_utilization_synth.rpt -pb video_pll_utilization_synth.pb"

if { [catch {
  file copy -force D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.runs/video_pll_synth_1/video_pll.dcp D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.ip_user_files/ip/video_pll]} {
  catch { 
    file copy -force D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_stub.v D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.ip_user_files/ip/video_pll
  }
}

if {[file isdir D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.ip_user_files/ip/video_pll]} {
  catch { 
    file copy -force D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.srcs/sources_1/ip/video_pll/video_pll_stub.vhdl D:/demo_ax7102/demo/gtp_video/15_ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel/ddr3_an5642_vga_sobel.ip_user_files/ip/video_pll
  }
}
