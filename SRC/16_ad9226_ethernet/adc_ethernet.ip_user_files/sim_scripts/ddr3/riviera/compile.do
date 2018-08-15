vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_addr_decode.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_read.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg_bank.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_top.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_write.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_ar_channel.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_aw_channel.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_b_channel.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_arbiter.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_fsm.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_translator.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_fifo.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_incr_cmd.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_r_channel.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_simple_fifo.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wrap_cmd.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wr_cmd_fsm.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_axi_mc_w_channel.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_axic_register_slice.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_register_slice.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_upsizer.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_a_upsizer.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_and.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_and.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_or.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_or.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_command_fifo.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel_static.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_r_upsizer.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/axi/mig_7series_v4_0_ddr_w_upsizer.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_axi.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_skip_calib_tap.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ddr3_mig_sim.v" \
"../../../../ddr3_an5642_an430_lcd.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ddr3.v" \

vlog -work xil_defaultlib \
"glbl.v"
