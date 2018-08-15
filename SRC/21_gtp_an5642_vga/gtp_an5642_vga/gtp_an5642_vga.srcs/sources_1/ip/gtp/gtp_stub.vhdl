-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jul  4 16:04:40 2018
-- Host        : PC-201805041311 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/demo_ax7102/demo/22_gtp_ov5640_vga/gtp_ov5640_vga.srcs/sources_1/ip/gtp/gtp_stub.vhdl
-- Design      : gtp
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gtp is
  Port ( 
    sysclk_in : in STD_LOGIC;
    soft_reset_tx_in : in STD_LOGIC;
    soft_reset_rx_in : in STD_LOGIC;
    dont_reset_on_data_error_in : in STD_LOGIC;
    gt0_drp_busy_out : out STD_LOGIC;
    gt0_tx_fsm_reset_done_out : out STD_LOGIC;
    gt0_rx_fsm_reset_done_out : out STD_LOGIC;
    gt0_data_valid_in : in STD_LOGIC;
    gt0_tx_mmcm_lock_in : in STD_LOGIC;
    gt0_tx_mmcm_reset_out : out STD_LOGIC;
    gt0_rx_mmcm_lock_in : in STD_LOGIC;
    gt0_rx_mmcm_reset_out : out STD_LOGIC;
    gt1_drp_busy_out : out STD_LOGIC;
    gt1_tx_fsm_reset_done_out : out STD_LOGIC;
    gt1_rx_fsm_reset_done_out : out STD_LOGIC;
    gt1_data_valid_in : in STD_LOGIC;
    gt1_tx_mmcm_lock_in : in STD_LOGIC;
    gt1_tx_mmcm_reset_out : out STD_LOGIC;
    gt1_rx_mmcm_lock_in : in STD_LOGIC;
    gt1_rx_mmcm_reset_out : out STD_LOGIC;
    gt2_drp_busy_out : out STD_LOGIC;
    gt2_tx_fsm_reset_done_out : out STD_LOGIC;
    gt2_rx_fsm_reset_done_out : out STD_LOGIC;
    gt2_data_valid_in : in STD_LOGIC;
    gt2_tx_mmcm_lock_in : in STD_LOGIC;
    gt2_tx_mmcm_reset_out : out STD_LOGIC;
    gt2_rx_mmcm_lock_in : in STD_LOGIC;
    gt2_rx_mmcm_reset_out : out STD_LOGIC;
    gt3_drp_busy_out : out STD_LOGIC;
    gt3_tx_fsm_reset_done_out : out STD_LOGIC;
    gt3_rx_fsm_reset_done_out : out STD_LOGIC;
    gt3_data_valid_in : in STD_LOGIC;
    gt3_tx_mmcm_lock_in : in STD_LOGIC;
    gt3_tx_mmcm_reset_out : out STD_LOGIC;
    gt3_rx_mmcm_lock_in : in STD_LOGIC;
    gt3_rx_mmcm_reset_out : out STD_LOGIC;
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpen_in : in STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_rxuserrdy_in : in STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt0_rxcdrovrden_in : in STD_LOGIC;
    gt0_rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_rxusrclk_in : in STD_LOGIC;
    gt0_rxusrclk2_in : in STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_gtprxn_in : in STD_LOGIC;
    gt0_gtprxp_in : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxmcommaalignen_in : in STD_LOGIC;
    gt0_rxpcommaalignen_in : in STD_LOGIC;
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    gt0_rxlpmhfhold_in : in STD_LOGIC;
    gt0_rxlpmhfovrden_in : in STD_LOGIC;
    gt0_rxlpmlfhold_in : in STD_LOGIC;
    gt0_rxoutclkfabric_out : out STD_LOGIC;
    gt0_gtrxreset_in : in STD_LOGIC;
    gt0_rxlpmreset_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_gttxreset_in : in STD_LOGIC;
    gt0_txuserrdy_in : in STD_LOGIC;
    gt0_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_txusrclk_in : in STD_LOGIC;
    gt0_txusrclk2_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_txchardispmode_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txchardispval_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_gtptxn_out : out STD_LOGIC;
    gt0_gtptxp_out : out STD_LOGIC;
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_txoutclk_out : out STD_LOGIC;
    gt0_txoutclkfabric_out : out STD_LOGIC;
    gt0_txoutclkpcs_out : out STD_LOGIC;
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txresetdone_out : out STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt1_drpclk_in : in STD_LOGIC;
    gt1_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drpen_in : in STD_LOGIC;
    gt1_drprdy_out : out STD_LOGIC;
    gt1_drpwe_in : in STD_LOGIC;
    gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_eyescanreset_in : in STD_LOGIC;
    gt1_rxuserrdy_in : in STD_LOGIC;
    gt1_eyescandataerror_out : out STD_LOGIC;
    gt1_eyescantrigger_in : in STD_LOGIC;
    gt1_rxcdrhold_in : in STD_LOGIC;
    gt1_rxcdrovrden_in : in STD_LOGIC;
    gt1_rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_rxusrclk_in : in STD_LOGIC;
    gt1_rxusrclk2_in : in STD_LOGIC;
    gt1_rxprbserr_out : out STD_LOGIC;
    gt1_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxprbscntreset_in : in STD_LOGIC;
    gt1_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_gtprxn_in : in STD_LOGIC;
    gt1_gtprxp_in : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt1_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxbyteisaligned_out : out STD_LOGIC;
    gt1_rxbyterealign_out : out STD_LOGIC;
    gt1_rxcommadet_out : out STD_LOGIC;
    gt1_rxmcommaalignen_in : in STD_LOGIC;
    gt1_rxpcommaalignen_in : in STD_LOGIC;
    gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    gt1_rxlpmhfhold_in : in STD_LOGIC;
    gt1_rxlpmhfovrden_in : in STD_LOGIC;
    gt1_rxlpmlfhold_in : in STD_LOGIC;
    gt1_rxoutclkfabric_out : out STD_LOGIC;
    gt1_gtrxreset_in : in STD_LOGIC;
    gt1_rxlpmreset_in : in STD_LOGIC;
    gt1_rxpcsreset_in : in STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC;
    gt1_rxpolarity_in : in STD_LOGIC;
    gt1_rxresetdone_out : out STD_LOGIC;
    gt1_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_gttxreset_in : in STD_LOGIC;
    gt1_txuserrdy_in : in STD_LOGIC;
    gt1_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_txusrclk_in : in STD_LOGIC;
    gt1_txusrclk2_in : in STD_LOGIC;
    gt1_txprbsforceerr_in : in STD_LOGIC;
    gt1_txchardispmode_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txchardispval_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_gtptxn_out : out STD_LOGIC;
    gt1_gtptxp_out : out STD_LOGIC;
    gt1_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_txoutclk_out : out STD_LOGIC;
    gt1_txoutclkfabric_out : out STD_LOGIC;
    gt1_txoutclkpcs_out : out STD_LOGIC;
    gt1_txpcsreset_in : in STD_LOGIC;
    gt1_txpmareset_in : in STD_LOGIC;
    gt1_txresetdone_out : out STD_LOGIC;
    gt1_txpolarity_in : in STD_LOGIC;
    gt1_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt2_drpclk_in : in STD_LOGIC;
    gt2_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drpen_in : in STD_LOGIC;
    gt2_drprdy_out : out STD_LOGIC;
    gt2_drpwe_in : in STD_LOGIC;
    gt2_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_eyescanreset_in : in STD_LOGIC;
    gt2_rxuserrdy_in : in STD_LOGIC;
    gt2_eyescandataerror_out : out STD_LOGIC;
    gt2_eyescantrigger_in : in STD_LOGIC;
    gt2_rxcdrhold_in : in STD_LOGIC;
    gt2_rxcdrovrden_in : in STD_LOGIC;
    gt2_rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_rxusrclk_in : in STD_LOGIC;
    gt2_rxusrclk2_in : in STD_LOGIC;
    gt2_rxprbserr_out : out STD_LOGIC;
    gt2_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxprbscntreset_in : in STD_LOGIC;
    gt2_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_gtprxn_in : in STD_LOGIC;
    gt2_gtprxp_in : in STD_LOGIC;
    gt2_rxbufreset_in : in STD_LOGIC;
    gt2_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxbyteisaligned_out : out STD_LOGIC;
    gt2_rxbyterealign_out : out STD_LOGIC;
    gt2_rxcommadet_out : out STD_LOGIC;
    gt2_rxmcommaalignen_in : in STD_LOGIC;
    gt2_rxpcommaalignen_in : in STD_LOGIC;
    gt2_dmonitorout_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    gt2_rxlpmhfhold_in : in STD_LOGIC;
    gt2_rxlpmhfovrden_in : in STD_LOGIC;
    gt2_rxlpmlfhold_in : in STD_LOGIC;
    gt2_rxoutclkfabric_out : out STD_LOGIC;
    gt2_gtrxreset_in : in STD_LOGIC;
    gt2_rxlpmreset_in : in STD_LOGIC;
    gt2_rxpcsreset_in : in STD_LOGIC;
    gt2_rxpmareset_in : in STD_LOGIC;
    gt2_rxpolarity_in : in STD_LOGIC;
    gt2_rxresetdone_out : out STD_LOGIC;
    gt2_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_gttxreset_in : in STD_LOGIC;
    gt2_txuserrdy_in : in STD_LOGIC;
    gt2_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_txusrclk_in : in STD_LOGIC;
    gt2_txusrclk2_in : in STD_LOGIC;
    gt2_txprbsforceerr_in : in STD_LOGIC;
    gt2_txchardispmode_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txchardispval_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_gtptxn_out : out STD_LOGIC;
    gt2_gtptxp_out : out STD_LOGIC;
    gt2_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gt2_txoutclk_out : out STD_LOGIC;
    gt2_txoutclkfabric_out : out STD_LOGIC;
    gt2_txoutclkpcs_out : out STD_LOGIC;
    gt2_txpcsreset_in : in STD_LOGIC;
    gt2_txpmareset_in : in STD_LOGIC;
    gt2_txresetdone_out : out STD_LOGIC;
    gt2_txpolarity_in : in STD_LOGIC;
    gt2_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt3_drpclk_in : in STD_LOGIC;
    gt3_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drpen_in : in STD_LOGIC;
    gt3_drprdy_out : out STD_LOGIC;
    gt3_drpwe_in : in STD_LOGIC;
    gt3_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_eyescanreset_in : in STD_LOGIC;
    gt3_rxuserrdy_in : in STD_LOGIC;
    gt3_eyescandataerror_out : out STD_LOGIC;
    gt3_eyescantrigger_in : in STD_LOGIC;
    gt3_rxcdrhold_in : in STD_LOGIC;
    gt3_rxcdrovrden_in : in STD_LOGIC;
    gt3_rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_rxusrclk_in : in STD_LOGIC;
    gt3_rxusrclk2_in : in STD_LOGIC;
    gt3_rxprbserr_out : out STD_LOGIC;
    gt3_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxprbscntreset_in : in STD_LOGIC;
    gt3_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_gtprxn_in : in STD_LOGIC;
    gt3_gtprxp_in : in STD_LOGIC;
    gt3_rxbufreset_in : in STD_LOGIC;
    gt3_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxbyteisaligned_out : out STD_LOGIC;
    gt3_rxbyterealign_out : out STD_LOGIC;
    gt3_rxcommadet_out : out STD_LOGIC;
    gt3_rxmcommaalignen_in : in STD_LOGIC;
    gt3_rxpcommaalignen_in : in STD_LOGIC;
    gt3_dmonitorout_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    gt3_rxlpmhfhold_in : in STD_LOGIC;
    gt3_rxlpmhfovrden_in : in STD_LOGIC;
    gt3_rxlpmlfhold_in : in STD_LOGIC;
    gt3_rxoutclkfabric_out : out STD_LOGIC;
    gt3_gtrxreset_in : in STD_LOGIC;
    gt3_rxlpmreset_in : in STD_LOGIC;
    gt3_rxpcsreset_in : in STD_LOGIC;
    gt3_rxpmareset_in : in STD_LOGIC;
    gt3_rxpolarity_in : in STD_LOGIC;
    gt3_rxresetdone_out : out STD_LOGIC;
    gt3_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_gttxreset_in : in STD_LOGIC;
    gt3_txuserrdy_in : in STD_LOGIC;
    gt3_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_txusrclk_in : in STD_LOGIC;
    gt3_txusrclk2_in : in STD_LOGIC;
    gt3_txprbsforceerr_in : in STD_LOGIC;
    gt3_txchardispmode_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txchardispval_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_gtptxn_out : out STD_LOGIC;
    gt3_gtptxp_out : out STD_LOGIC;
    gt3_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gt3_txoutclk_out : out STD_LOGIC;
    gt3_txoutclkfabric_out : out STD_LOGIC;
    gt3_txoutclkpcs_out : out STD_LOGIC;
    gt3_txpcsreset_in : in STD_LOGIC;
    gt3_txpmareset_in : in STD_LOGIC;
    gt3_txresetdone_out : out STD_LOGIC;
    gt3_txpolarity_in : in STD_LOGIC;
    gt3_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll0reset_out : out STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC
  );

end gtp;

architecture stub of gtp is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sysclk_in,soft_reset_tx_in,soft_reset_rx_in,dont_reset_on_data_error_in,gt0_drp_busy_out,gt0_tx_fsm_reset_done_out,gt0_rx_fsm_reset_done_out,gt0_data_valid_in,gt0_tx_mmcm_lock_in,gt0_tx_mmcm_reset_out,gt0_rx_mmcm_lock_in,gt0_rx_mmcm_reset_out,gt1_drp_busy_out,gt1_tx_fsm_reset_done_out,gt1_rx_fsm_reset_done_out,gt1_data_valid_in,gt1_tx_mmcm_lock_in,gt1_tx_mmcm_reset_out,gt1_rx_mmcm_lock_in,gt1_rx_mmcm_reset_out,gt2_drp_busy_out,gt2_tx_fsm_reset_done_out,gt2_rx_fsm_reset_done_out,gt2_data_valid_in,gt2_tx_mmcm_lock_in,gt2_tx_mmcm_reset_out,gt2_rx_mmcm_lock_in,gt2_rx_mmcm_reset_out,gt3_drp_busy_out,gt3_tx_fsm_reset_done_out,gt3_rx_fsm_reset_done_out,gt3_data_valid_in,gt3_tx_mmcm_lock_in,gt3_tx_mmcm_reset_out,gt3_rx_mmcm_lock_in,gt3_rx_mmcm_reset_out,gt0_drpaddr_in[8:0],gt0_drpclk_in,gt0_drpdi_in[15:0],gt0_drpdo_out[15:0],gt0_drpen_in,gt0_drprdy_out,gt0_drpwe_in,gt0_loopback_in[2:0],gt0_rxpd_in[1:0],gt0_txpd_in[1:0],gt0_eyescanreset_in,gt0_rxuserrdy_in,gt0_eyescandataerror_out,gt0_eyescantrigger_in,gt0_rxcdrhold_in,gt0_rxcdrovrden_in,gt0_rxclkcorcnt_out[1:0],gt0_rxdata_out[31:0],gt0_rxusrclk_in,gt0_rxusrclk2_in,gt0_rxprbserr_out,gt0_rxprbssel_in[2:0],gt0_rxprbscntreset_in,gt0_rxchariscomma_out[3:0],gt0_rxcharisk_out[3:0],gt0_rxdisperr_out[3:0],gt0_rxnotintable_out[3:0],gt0_gtprxn_in,gt0_gtprxp_in,gt0_rxbufreset_in,gt0_rxbufstatus_out[2:0],gt0_rxbyteisaligned_out,gt0_rxbyterealign_out,gt0_rxcommadet_out,gt0_rxmcommaalignen_in,gt0_rxpcommaalignen_in,gt0_dmonitorout_out[14:0],gt0_rxlpmhfhold_in,gt0_rxlpmhfovrden_in,gt0_rxlpmlfhold_in,gt0_rxoutclkfabric_out,gt0_gtrxreset_in,gt0_rxlpmreset_in,gt0_rxpcsreset_in,gt0_rxpmareset_in,gt0_rxpolarity_in,gt0_rxresetdone_out,gt0_txpostcursor_in[4:0],gt0_txprecursor_in[4:0],gt0_gttxreset_in,gt0_txuserrdy_in,gt0_txdata_in[31:0],gt0_txusrclk_in,gt0_txusrclk2_in,gt0_txprbsforceerr_in,gt0_txchardispmode_in[3:0],gt0_txchardispval_in[3:0],gt0_txcharisk_in[3:0],gt0_txbufstatus_out[1:0],gt0_gtptxn_out,gt0_gtptxp_out,gt0_txdiffctrl_in[3:0],gt0_txmaincursor_in[6:0],gt0_txoutclk_out,gt0_txoutclkfabric_out,gt0_txoutclkpcs_out,gt0_txpcsreset_in,gt0_txpmareset_in,gt0_txresetdone_out,gt0_txpolarity_in,gt0_txprbssel_in[2:0],gt1_drpaddr_in[8:0],gt1_drpclk_in,gt1_drpdi_in[15:0],gt1_drpdo_out[15:0],gt1_drpen_in,gt1_drprdy_out,gt1_drpwe_in,gt1_loopback_in[2:0],gt1_rxpd_in[1:0],gt1_txpd_in[1:0],gt1_eyescanreset_in,gt1_rxuserrdy_in,gt1_eyescandataerror_out,gt1_eyescantrigger_in,gt1_rxcdrhold_in,gt1_rxcdrovrden_in,gt1_rxclkcorcnt_out[1:0],gt1_rxdata_out[31:0],gt1_rxusrclk_in,gt1_rxusrclk2_in,gt1_rxprbserr_out,gt1_rxprbssel_in[2:0],gt1_rxprbscntreset_in,gt1_rxchariscomma_out[3:0],gt1_rxcharisk_out[3:0],gt1_rxdisperr_out[3:0],gt1_rxnotintable_out[3:0],gt1_gtprxn_in,gt1_gtprxp_in,gt1_rxbufreset_in,gt1_rxbufstatus_out[2:0],gt1_rxbyteisaligned_out,gt1_rxbyterealign_out,gt1_rxcommadet_out,gt1_rxmcommaalignen_in,gt1_rxpcommaalignen_in,gt1_dmonitorout_out[14:0],gt1_rxlpmhfhold_in,gt1_rxlpmhfovrden_in,gt1_rxlpmlfhold_in,gt1_rxoutclkfabric_out,gt1_gtrxreset_in,gt1_rxlpmreset_in,gt1_rxpcsreset_in,gt1_rxpmareset_in,gt1_rxpolarity_in,gt1_rxresetdone_out,gt1_txpostcursor_in[4:0],gt1_txprecursor_in[4:0],gt1_gttxreset_in,gt1_txuserrdy_in,gt1_txdata_in[31:0],gt1_txusrclk_in,gt1_txusrclk2_in,gt1_txprbsforceerr_in,gt1_txchardispmode_in[3:0],gt1_txchardispval_in[3:0],gt1_txcharisk_in[3:0],gt1_txbufstatus_out[1:0],gt1_gtptxn_out,gt1_gtptxp_out,gt1_txdiffctrl_in[3:0],gt1_txmaincursor_in[6:0],gt1_txoutclk_out,gt1_txoutclkfabric_out,gt1_txoutclkpcs_out,gt1_txpcsreset_in,gt1_txpmareset_in,gt1_txresetdone_out,gt1_txpolarity_in,gt1_txprbssel_in[2:0],gt2_drpaddr_in[8:0],gt2_drpclk_in,gt2_drpdi_in[15:0],gt2_drpdo_out[15:0],gt2_drpen_in,gt2_drprdy_out,gt2_drpwe_in,gt2_loopback_in[2:0],gt2_rxpd_in[1:0],gt2_txpd_in[1:0],gt2_eyescanreset_in,gt2_rxuserrdy_in,gt2_eyescandataerror_out,gt2_eyescantrigger_in,gt2_rxcdrhold_in,gt2_rxcdrovrden_in,gt2_rxclkcorcnt_out[1:0],gt2_rxdata_out[31:0],gt2_rxusrclk_in,gt2_rxusrclk2_in,gt2_rxprbserr_out,gt2_rxprbssel_in[2:0],gt2_rxprbscntreset_in,gt2_rxchariscomma_out[3:0],gt2_rxcharisk_out[3:0],gt2_rxdisperr_out[3:0],gt2_rxnotintable_out[3:0],gt2_gtprxn_in,gt2_gtprxp_in,gt2_rxbufreset_in,gt2_rxbufstatus_out[2:0],gt2_rxbyteisaligned_out,gt2_rxbyterealign_out,gt2_rxcommadet_out,gt2_rxmcommaalignen_in,gt2_rxpcommaalignen_in,gt2_dmonitorout_out[14:0],gt2_rxlpmhfhold_in,gt2_rxlpmhfovrden_in,gt2_rxlpmlfhold_in,gt2_rxoutclkfabric_out,gt2_gtrxreset_in,gt2_rxlpmreset_in,gt2_rxpcsreset_in,gt2_rxpmareset_in,gt2_rxpolarity_in,gt2_rxresetdone_out,gt2_txpostcursor_in[4:0],gt2_txprecursor_in[4:0],gt2_gttxreset_in,gt2_txuserrdy_in,gt2_txdata_in[31:0],gt2_txusrclk_in,gt2_txusrclk2_in,gt2_txprbsforceerr_in,gt2_txchardispmode_in[3:0],gt2_txchardispval_in[3:0],gt2_txcharisk_in[3:0],gt2_txbufstatus_out[1:0],gt2_gtptxn_out,gt2_gtptxp_out,gt2_txdiffctrl_in[3:0],gt2_txmaincursor_in[6:0],gt2_txoutclk_out,gt2_txoutclkfabric_out,gt2_txoutclkpcs_out,gt2_txpcsreset_in,gt2_txpmareset_in,gt2_txresetdone_out,gt2_txpolarity_in,gt2_txprbssel_in[2:0],gt3_drpaddr_in[8:0],gt3_drpclk_in,gt3_drpdi_in[15:0],gt3_drpdo_out[15:0],gt3_drpen_in,gt3_drprdy_out,gt3_drpwe_in,gt3_loopback_in[2:0],gt3_rxpd_in[1:0],gt3_txpd_in[1:0],gt3_eyescanreset_in,gt3_rxuserrdy_in,gt3_eyescandataerror_out,gt3_eyescantrigger_in,gt3_rxcdrhold_in,gt3_rxcdrovrden_in,gt3_rxclkcorcnt_out[1:0],gt3_rxdata_out[31:0],gt3_rxusrclk_in,gt3_rxusrclk2_in,gt3_rxprbserr_out,gt3_rxprbssel_in[2:0],gt3_rxprbscntreset_in,gt3_rxchariscomma_out[3:0],gt3_rxcharisk_out[3:0],gt3_rxdisperr_out[3:0],gt3_rxnotintable_out[3:0],gt3_gtprxn_in,gt3_gtprxp_in,gt3_rxbufreset_in,gt3_rxbufstatus_out[2:0],gt3_rxbyteisaligned_out,gt3_rxbyterealign_out,gt3_rxcommadet_out,gt3_rxmcommaalignen_in,gt3_rxpcommaalignen_in,gt3_dmonitorout_out[14:0],gt3_rxlpmhfhold_in,gt3_rxlpmhfovrden_in,gt3_rxlpmlfhold_in,gt3_rxoutclkfabric_out,gt3_gtrxreset_in,gt3_rxlpmreset_in,gt3_rxpcsreset_in,gt3_rxpmareset_in,gt3_rxpolarity_in,gt3_rxresetdone_out,gt3_txpostcursor_in[4:0],gt3_txprecursor_in[4:0],gt3_gttxreset_in,gt3_txuserrdy_in,gt3_txdata_in[31:0],gt3_txusrclk_in,gt3_txusrclk2_in,gt3_txprbsforceerr_in,gt3_txchardispmode_in[3:0],gt3_txchardispval_in[3:0],gt3_txcharisk_in[3:0],gt3_txbufstatus_out[1:0],gt3_gtptxn_out,gt3_gtptxp_out,gt3_txdiffctrl_in[3:0],gt3_txmaincursor_in[6:0],gt3_txoutclk_out,gt3_txoutclkfabric_out,gt3_txoutclkpcs_out,gt3_txpcsreset_in,gt3_txpmareset_in,gt3_txresetdone_out,gt3_txpolarity_in,gt3_txprbssel_in[2:0],gt0_pll0outclk_in,gt0_pll0outrefclk_in,gt0_pll0reset_out,gt0_pll0lock_in,gt0_pll0refclklost_in,gt0_pll1outclk_in,gt0_pll1outrefclk_in";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gtp,gtwizard_v3_6_8,{protocol_file=aurora_8b10b_single_lane_4byte}";
begin
end;
