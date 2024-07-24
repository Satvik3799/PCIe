--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Wed Jul 24 22:46:09 2024
--Host        : Satvik running 64-bit major release  (build 9200)
--Command     : generate_target Pcie_RP.bd
--Design      : Pcie_RP
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Pcie_RP is
  port (
    pcie_7x_mgt_0_rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tx_0_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_0_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_0_tlast : in STD_LOGIC;
    s_axis_tx_0_tready : out STD_LOGIC;
    s_axis_tx_0_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tx_0_tvalid : in STD_LOGIC;
    sys_clk_0 : in STD_LOGIC;
    sys_rst_n_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Pcie_RP : entity is "Pcie_RP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Pcie_RP,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Pcie_RP : entity is "Pcie_RP.hwdef";
end Pcie_RP;

architecture STRUCTURE of Pcie_RP is
  component Pcie_RP_pcie_7x_0_0 is
  port (
    pci_exp_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    pci_exp_txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    pci_exp_rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    pci_exp_rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    pipe_pclk_in : in STD_LOGIC;
    pipe_rxusrclk_in : in STD_LOGIC;
    pipe_rxoutclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pipe_dclk_in : in STD_LOGIC;
    pipe_userclk1_in : in STD_LOGIC;
    pipe_userclk2_in : in STD_LOGIC;
    pipe_oobclk_in : in STD_LOGIC;
    pipe_mmcm_lock_in : in STD_LOGIC;
    pipe_txoutclk_out : out STD_LOGIC;
    pipe_rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pipe_pclk_sel_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pipe_gen3_out : out STD_LOGIC;
    user_clk_out : out STD_LOGIC;
    user_reset_out : out STD_LOGIC;
    user_lnk_up : out STD_LOGIC;
    user_app_rdy : out STD_LOGIC;
    tx_buf_av : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tx_cfg_req : out STD_LOGIC;
    tx_err_drop : out STD_LOGIC;
    s_axis_tx_tready : out STD_LOGIC;
    s_axis_tx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_tlast : in STD_LOGIC;
    s_axis_tx_tvalid : in STD_LOGIC;
    s_axis_tx_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_cfg_gnt : in STD_LOGIC;
    m_axis_rx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_rx_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_rx_tlast : out STD_LOGIC;
    m_axis_rx_tvalid : out STD_LOGIC;
    m_axis_rx_tready : in STD_LOGIC;
    m_axis_rx_tuser : out STD_LOGIC_VECTOR ( 21 downto 0 );
    rx_np_ok : in STD_LOGIC;
    rx_np_req : in STD_LOGIC;
    fc_cpld : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fc_cplh : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fc_npd : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fc_nph : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fc_pd : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fc_ph : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fc_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    cfg_mgmt_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cfg_mgmt_rd_wr_done : out STD_LOGIC;
    cfg_status : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cfg_command : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cfg_dstatus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cfg_dcommand : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cfg_lstatus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cfg_lcommand : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cfg_dcommand2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cfg_pcie_link_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cfg_pmcsr_pme_en : out STD_LOGIC;
    cfg_pmcsr_powerstate : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cfg_pmcsr_pme_status : out STD_LOGIC;
    cfg_received_func_lvl_rst : out STD_LOGIC;
    cfg_mgmt_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cfg_mgmt_byte_en : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cfg_mgmt_dwaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    cfg_mgmt_wr_en : in STD_LOGIC;
    cfg_mgmt_rd_en : in STD_LOGIC;
    cfg_mgmt_wr_readonly : in STD_LOGIC;
    cfg_err_ecrc : in STD_LOGIC;
    cfg_err_ur : in STD_LOGIC;
    cfg_err_cpl_timeout : in STD_LOGIC;
    cfg_err_cpl_unexpect : in STD_LOGIC;
    cfg_err_cpl_abort : in STD_LOGIC;
    cfg_err_posted : in STD_LOGIC;
    cfg_err_cor : in STD_LOGIC;
    cfg_err_atomic_egress_blocked : in STD_LOGIC;
    cfg_err_internal_cor : in STD_LOGIC;
    cfg_err_malformed : in STD_LOGIC;
    cfg_err_mc_blocked : in STD_LOGIC;
    cfg_err_poisoned : in STD_LOGIC;
    cfg_err_norecovery : in STD_LOGIC;
    cfg_err_tlp_cpl_header : in STD_LOGIC_VECTOR ( 47 downto 0 );
    cfg_err_cpl_rdy : out STD_LOGIC;
    cfg_err_locked : in STD_LOGIC;
    cfg_err_acs : in STD_LOGIC;
    cfg_err_internal_uncor : in STD_LOGIC;
    cfg_trn_pending : in STD_LOGIC;
    cfg_pm_halt_aspm_l0s : in STD_LOGIC;
    cfg_pm_halt_aspm_l1 : in STD_LOGIC;
    cfg_pm_force_state_en : in STD_LOGIC;
    cfg_pm_force_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cfg_dsn : in STD_LOGIC_VECTOR ( 63 downto 0 );
    cfg_interrupt : in STD_LOGIC;
    cfg_interrupt_rdy : out STD_LOGIC;
    cfg_interrupt_assert : in STD_LOGIC;
    cfg_interrupt_di : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_interrupt_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_interrupt_mmenable : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cfg_interrupt_msienable : out STD_LOGIC;
    cfg_interrupt_msixenable : out STD_LOGIC;
    cfg_interrupt_msixfm : out STD_LOGIC;
    cfg_interrupt_stat : in STD_LOGIC;
    cfg_pciecap_interrupt_msgnum : in STD_LOGIC_VECTOR ( 4 downto 0 );
    cfg_to_turnoff : out STD_LOGIC;
    cfg_turnoff_ok : in STD_LOGIC;
    cfg_bus_number : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_device_number : out STD_LOGIC_VECTOR ( 4 downto 0 );
    cfg_function_number : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cfg_pm_wake : in STD_LOGIC;
    cfg_pm_send_pme_to : in STD_LOGIC;
    cfg_ds_bus_number : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_ds_device_number : in STD_LOGIC_VECTOR ( 4 downto 0 );
    cfg_ds_function_number : in STD_LOGIC_VECTOR ( 2 downto 0 );
    cfg_mgmt_wr_rw1c_as_rw : in STD_LOGIC;
    cfg_msg_received : out STD_LOGIC;
    cfg_msg_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cfg_bridge_serr_en : out STD_LOGIC;
    cfg_slot_control_electromech_il_ctl_pulse : out STD_LOGIC;
    cfg_root_control_syserr_corr_err_en : out STD_LOGIC;
    cfg_root_control_syserr_non_fatal_err_en : out STD_LOGIC;
    cfg_root_control_syserr_fatal_err_en : out STD_LOGIC;
    cfg_root_control_pme_int_en : out STD_LOGIC;
    cfg_aer_rooterr_corr_err_reporting_en : out STD_LOGIC;
    cfg_aer_rooterr_non_fatal_err_reporting_en : out STD_LOGIC;
    cfg_aer_rooterr_fatal_err_reporting_en : out STD_LOGIC;
    cfg_aer_rooterr_corr_err_received : out STD_LOGIC;
    cfg_aer_rooterr_non_fatal_err_received : out STD_LOGIC;
    cfg_aer_rooterr_fatal_err_received : out STD_LOGIC;
    cfg_msg_received_err_cor : out STD_LOGIC;
    cfg_msg_received_err_non_fatal : out STD_LOGIC;
    cfg_msg_received_err_fatal : out STD_LOGIC;
    cfg_msg_received_pm_as_nak : out STD_LOGIC;
    cfg_msg_received_pm_pme : out STD_LOGIC;
    cfg_msg_received_pme_to_ack : out STD_LOGIC;
    cfg_msg_received_assert_int_a : out STD_LOGIC;
    cfg_msg_received_assert_int_b : out STD_LOGIC;
    cfg_msg_received_assert_int_c : out STD_LOGIC;
    cfg_msg_received_assert_int_d : out STD_LOGIC;
    cfg_msg_received_deassert_int_a : out STD_LOGIC;
    cfg_msg_received_deassert_int_b : out STD_LOGIC;
    cfg_msg_received_deassert_int_c : out STD_LOGIC;
    cfg_msg_received_deassert_int_d : out STD_LOGIC;
    cfg_msg_received_setslotpowerlimit : out STD_LOGIC;
    pl_directed_link_change : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_directed_link_width : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_directed_link_speed : in STD_LOGIC;
    pl_directed_link_auton : in STD_LOGIC;
    pl_upstream_prefer_deemph : in STD_LOGIC;
    pl_sel_lnk_rate : out STD_LOGIC;
    pl_sel_lnk_width : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_ltssm_state : out STD_LOGIC_VECTOR ( 5 downto 0 );
    pl_lane_reversal_mode : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_phy_lnk_up : out STD_LOGIC;
    pl_tx_pm_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pl_rx_pm_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_link_upcfg_cap : out STD_LOGIC;
    pl_link_gen2_cap : out STD_LOGIC;
    pl_link_partner_gen2_supported : out STD_LOGIC;
    pl_initial_link_width : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pl_directed_change_done : out STD_LOGIC;
    pl_received_hot_rst : out STD_LOGIC;
    pl_transmit_hot_rst : in STD_LOGIC;
    pl_downstream_deemph_source : in STD_LOGIC;
    cfg_err_aer_headerlog : in STD_LOGIC_VECTOR ( 127 downto 0 );
    cfg_aer_interrupt_msgnum : in STD_LOGIC_VECTOR ( 4 downto 0 );
    cfg_err_aer_headerlog_set : out STD_LOGIC;
    cfg_aer_ecrc_check_en : out STD_LOGIC;
    cfg_aer_ecrc_gen_en : out STD_LOGIC;
    cfg_vc_tcvc_map : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    pipe_mmcm_rst_n : in STD_LOGIC;
    pcie_drp_clk : in STD_LOGIC;
    pcie_drp_en : in STD_LOGIC;
    pcie_drp_we : in STD_LOGIC;
    pcie_drp_addr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    pcie_drp_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcie_drp_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pcie_drp_rdy : out STD_LOGIC
  );
  end component Pcie_RP_pcie_7x_0_0;
  signal pcie_7x_0_pcie_7x_mgt_rxn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pcie_7x_0_pcie_7x_mgt_rxp : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pcie_7x_0_pcie_7x_mgt_txn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pcie_7x_0_pcie_7x_mgt_txp : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axis_tx_0_1_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s_axis_tx_0_1_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axis_tx_0_1_TLAST : STD_LOGIC;
  signal s_axis_tx_0_1_TREADY : STD_LOGIC;
  signal s_axis_tx_0_1_TUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axis_tx_0_1_TVALID : STD_LOGIC;
  signal sys_clk_0_1 : STD_LOGIC;
  signal sys_rst_n_0_1 : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_aer_ecrc_check_en_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_aer_ecrc_gen_en_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_aer_rooterr_corr_err_received_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_aer_rooterr_corr_err_reporting_en_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_aer_rooterr_fatal_err_received_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_aer_rooterr_fatal_err_reporting_en_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_aer_rooterr_non_fatal_err_received_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_aer_rooterr_non_fatal_err_reporting_en_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_bridge_serr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_err_aer_headerlog_set_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_err_cpl_rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_msienable_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_msixenable_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_msixfm_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_mgmt_rd_wr_done_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_assert_int_a_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_assert_int_b_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_assert_int_c_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_assert_int_d_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_deassert_int_a_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_deassert_int_b_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_deassert_int_c_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_deassert_int_d_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_err_cor_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_err_fatal_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_err_non_fatal_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_pm_as_nak_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_pm_pme_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_pme_to_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_msg_received_setslotpowerlimit_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_pmcsr_pme_en_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_pmcsr_pme_status_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_received_func_lvl_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_root_control_pme_int_en_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_root_control_syserr_corr_err_en_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_root_control_syserr_fatal_err_en_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_root_control_syserr_non_fatal_err_en_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_slot_control_electromech_il_ctl_pulse_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_to_turnoff_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_m_axis_rx_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_m_axis_rx_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_pcie_drp_rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_pipe_gen3_out_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_pipe_txoutclk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_pl_directed_change_done_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_pl_link_gen2_cap_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_pl_link_partner_gen2_supported_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_pl_link_upcfg_cap_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_pl_phy_lnk_up_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_pl_received_hot_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_pl_sel_lnk_rate_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_tx_cfg_req_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_tx_err_drop_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_user_app_rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_user_clk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_user_lnk_up_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_user_reset_out_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_bus_number_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_pcie_7x_0_cfg_command_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pcie_7x_0_cfg_dcommand_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pcie_7x_0_cfg_dcommand2_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pcie_7x_0_cfg_device_number_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_pcie_7x_0_cfg_dstatus_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pcie_7x_0_cfg_function_number_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_pcie_7x_0_cfg_interrupt_do_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_pcie_7x_0_cfg_interrupt_mmenable_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_pcie_7x_0_cfg_lcommand_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pcie_7x_0_cfg_lstatus_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pcie_7x_0_cfg_mgmt_do_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_pcie_7x_0_cfg_msg_data_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pcie_7x_0_cfg_pcie_link_state_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_pcie_7x_0_cfg_pmcsr_powerstate_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pcie_7x_0_cfg_status_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pcie_7x_0_cfg_vc_tcvc_map_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_pcie_7x_0_fc_cpld_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_pcie_7x_0_fc_cplh_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_pcie_7x_0_fc_npd_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_pcie_7x_0_fc_nph_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_pcie_7x_0_fc_pd_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_pcie_7x_0_fc_ph_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_pcie_7x_0_m_axis_rx_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_pcie_7x_0_m_axis_rx_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_pcie_7x_0_m_axis_rx_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal NLW_pcie_7x_0_pcie_drp_do_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pcie_7x_0_pipe_pclk_sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_pcie_7x_0_pipe_rxoutclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_pcie_7x_0_pl_initial_link_width_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_pcie_7x_0_pl_lane_reversal_mode_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pcie_7x_0_pl_ltssm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_pcie_7x_0_pl_rx_pm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pcie_7x_0_pl_sel_lnk_width_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pcie_7x_0_pl_tx_pm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_pcie_7x_0_tx_buf_av_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axis_tx_0_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_tx_0 TLAST";
  attribute X_INTERFACE_INFO of s_axis_tx_0_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_tx_0 TREADY";
  attribute X_INTERFACE_INFO of s_axis_tx_0_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_tx_0 TVALID";
  attribute X_INTERFACE_INFO of sys_clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_clk_0 : signal is "XIL_INTERFACENAME CLK.SYS_CLK_0, CLK_DOMAIN Pcie_RP_sys_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of sys_rst_n_0 : signal is "xilinx.com:signal:reset:1.0 RST.SYS_RST_N_0 RST";
  attribute X_INTERFACE_PARAMETER of sys_rst_n_0 : signal is "XIL_INTERFACENAME RST.SYS_RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of pcie_7x_mgt_0_rxn : signal is "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_0 rxn";
  attribute X_INTERFACE_INFO of pcie_7x_mgt_0_rxp : signal is "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_0 rxp";
  attribute X_INTERFACE_INFO of pcie_7x_mgt_0_txn : signal is "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_0 txn";
  attribute X_INTERFACE_INFO of pcie_7x_mgt_0_txp : signal is "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_0 txp";
  attribute X_INTERFACE_INFO of s_axis_tx_0_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_tx_0 TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tx_0_tdata : signal is "XIL_INTERFACENAME s_axis_tx_0, FREQ_HZ 62500000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 4";
  attribute X_INTERFACE_INFO of s_axis_tx_0_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis_tx_0 TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tx_0_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_tx_0 TUSER";
begin
  pcie_7x_0_pcie_7x_mgt_rxn(0) <= pcie_7x_mgt_0_rxn(0);
  pcie_7x_0_pcie_7x_mgt_rxp(0) <= pcie_7x_mgt_0_rxp(0);
  pcie_7x_mgt_0_txn(0) <= pcie_7x_0_pcie_7x_mgt_txn(0);
  pcie_7x_mgt_0_txp(0) <= pcie_7x_0_pcie_7x_mgt_txp(0);
  s_axis_tx_0_1_TDATA(63 downto 0) <= s_axis_tx_0_tdata(63 downto 0);
  s_axis_tx_0_1_TKEEP(7 downto 0) <= s_axis_tx_0_tkeep(7 downto 0);
  s_axis_tx_0_1_TLAST <= s_axis_tx_0_tlast;
  s_axis_tx_0_1_TUSER(3 downto 0) <= s_axis_tx_0_tuser(3 downto 0);
  s_axis_tx_0_1_TVALID <= s_axis_tx_0_tvalid;
  s_axis_tx_0_tready <= s_axis_tx_0_1_TREADY;
  sys_clk_0_1 <= sys_clk_0;
  sys_rst_n_0_1 <= sys_rst_n_0;
pcie_7x_0: component Pcie_RP_pcie_7x_0_0
     port map (
      cfg_aer_ecrc_check_en => NLW_pcie_7x_0_cfg_aer_ecrc_check_en_UNCONNECTED,
      cfg_aer_ecrc_gen_en => NLW_pcie_7x_0_cfg_aer_ecrc_gen_en_UNCONNECTED,
      cfg_aer_interrupt_msgnum(4 downto 0) => B"00000",
      cfg_aer_rooterr_corr_err_received => NLW_pcie_7x_0_cfg_aer_rooterr_corr_err_received_UNCONNECTED,
      cfg_aer_rooterr_corr_err_reporting_en => NLW_pcie_7x_0_cfg_aer_rooterr_corr_err_reporting_en_UNCONNECTED,
      cfg_aer_rooterr_fatal_err_received => NLW_pcie_7x_0_cfg_aer_rooterr_fatal_err_received_UNCONNECTED,
      cfg_aer_rooterr_fatal_err_reporting_en => NLW_pcie_7x_0_cfg_aer_rooterr_fatal_err_reporting_en_UNCONNECTED,
      cfg_aer_rooterr_non_fatal_err_received => NLW_pcie_7x_0_cfg_aer_rooterr_non_fatal_err_received_UNCONNECTED,
      cfg_aer_rooterr_non_fatal_err_reporting_en => NLW_pcie_7x_0_cfg_aer_rooterr_non_fatal_err_reporting_en_UNCONNECTED,
      cfg_bridge_serr_en => NLW_pcie_7x_0_cfg_bridge_serr_en_UNCONNECTED,
      cfg_bus_number(7 downto 0) => NLW_pcie_7x_0_cfg_bus_number_UNCONNECTED(7 downto 0),
      cfg_command(15 downto 0) => NLW_pcie_7x_0_cfg_command_UNCONNECTED(15 downto 0),
      cfg_dcommand(15 downto 0) => NLW_pcie_7x_0_cfg_dcommand_UNCONNECTED(15 downto 0),
      cfg_dcommand2(15 downto 0) => NLW_pcie_7x_0_cfg_dcommand2_UNCONNECTED(15 downto 0),
      cfg_device_number(4 downto 0) => NLW_pcie_7x_0_cfg_device_number_UNCONNECTED(4 downto 0),
      cfg_ds_bus_number(7 downto 0) => B"00000000",
      cfg_ds_device_number(4 downto 0) => B"00000",
      cfg_ds_function_number(2 downto 0) => B"000",
      cfg_dsn(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      cfg_dstatus(15 downto 0) => NLW_pcie_7x_0_cfg_dstatus_UNCONNECTED(15 downto 0),
      cfg_err_acs => '0',
      cfg_err_aer_headerlog(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      cfg_err_aer_headerlog_set => NLW_pcie_7x_0_cfg_err_aer_headerlog_set_UNCONNECTED,
      cfg_err_atomic_egress_blocked => '0',
      cfg_err_cor => '0',
      cfg_err_cpl_abort => '0',
      cfg_err_cpl_rdy => NLW_pcie_7x_0_cfg_err_cpl_rdy_UNCONNECTED,
      cfg_err_cpl_timeout => '0',
      cfg_err_cpl_unexpect => '0',
      cfg_err_ecrc => '0',
      cfg_err_internal_cor => '0',
      cfg_err_internal_uncor => '0',
      cfg_err_locked => '0',
      cfg_err_malformed => '0',
      cfg_err_mc_blocked => '0',
      cfg_err_norecovery => '0',
      cfg_err_poisoned => '0',
      cfg_err_posted => '0',
      cfg_err_tlp_cpl_header(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      cfg_err_ur => '0',
      cfg_function_number(2 downto 0) => NLW_pcie_7x_0_cfg_function_number_UNCONNECTED(2 downto 0),
      cfg_interrupt => '0',
      cfg_interrupt_assert => '0',
      cfg_interrupt_di(7 downto 0) => B"00000000",
      cfg_interrupt_do(7 downto 0) => NLW_pcie_7x_0_cfg_interrupt_do_UNCONNECTED(7 downto 0),
      cfg_interrupt_mmenable(2 downto 0) => NLW_pcie_7x_0_cfg_interrupt_mmenable_UNCONNECTED(2 downto 0),
      cfg_interrupt_msienable => NLW_pcie_7x_0_cfg_interrupt_msienable_UNCONNECTED,
      cfg_interrupt_msixenable => NLW_pcie_7x_0_cfg_interrupt_msixenable_UNCONNECTED,
      cfg_interrupt_msixfm => NLW_pcie_7x_0_cfg_interrupt_msixfm_UNCONNECTED,
      cfg_interrupt_rdy => NLW_pcie_7x_0_cfg_interrupt_rdy_UNCONNECTED,
      cfg_interrupt_stat => '0',
      cfg_lcommand(15 downto 0) => NLW_pcie_7x_0_cfg_lcommand_UNCONNECTED(15 downto 0),
      cfg_lstatus(15 downto 0) => NLW_pcie_7x_0_cfg_lstatus_UNCONNECTED(15 downto 0),
      cfg_mgmt_byte_en(3 downto 0) => B"0000",
      cfg_mgmt_di(31 downto 0) => B"00000000000000000000000000000000",
      cfg_mgmt_do(31 downto 0) => NLW_pcie_7x_0_cfg_mgmt_do_UNCONNECTED(31 downto 0),
      cfg_mgmt_dwaddr(9 downto 0) => B"0000000000",
      cfg_mgmt_rd_en => '0',
      cfg_mgmt_rd_wr_done => NLW_pcie_7x_0_cfg_mgmt_rd_wr_done_UNCONNECTED,
      cfg_mgmt_wr_en => '0',
      cfg_mgmt_wr_readonly => '0',
      cfg_mgmt_wr_rw1c_as_rw => '0',
      cfg_msg_data(15 downto 0) => NLW_pcie_7x_0_cfg_msg_data_UNCONNECTED(15 downto 0),
      cfg_msg_received => NLW_pcie_7x_0_cfg_msg_received_UNCONNECTED,
      cfg_msg_received_assert_int_a => NLW_pcie_7x_0_cfg_msg_received_assert_int_a_UNCONNECTED,
      cfg_msg_received_assert_int_b => NLW_pcie_7x_0_cfg_msg_received_assert_int_b_UNCONNECTED,
      cfg_msg_received_assert_int_c => NLW_pcie_7x_0_cfg_msg_received_assert_int_c_UNCONNECTED,
      cfg_msg_received_assert_int_d => NLW_pcie_7x_0_cfg_msg_received_assert_int_d_UNCONNECTED,
      cfg_msg_received_deassert_int_a => NLW_pcie_7x_0_cfg_msg_received_deassert_int_a_UNCONNECTED,
      cfg_msg_received_deassert_int_b => NLW_pcie_7x_0_cfg_msg_received_deassert_int_b_UNCONNECTED,
      cfg_msg_received_deassert_int_c => NLW_pcie_7x_0_cfg_msg_received_deassert_int_c_UNCONNECTED,
      cfg_msg_received_deassert_int_d => NLW_pcie_7x_0_cfg_msg_received_deassert_int_d_UNCONNECTED,
      cfg_msg_received_err_cor => NLW_pcie_7x_0_cfg_msg_received_err_cor_UNCONNECTED,
      cfg_msg_received_err_fatal => NLW_pcie_7x_0_cfg_msg_received_err_fatal_UNCONNECTED,
      cfg_msg_received_err_non_fatal => NLW_pcie_7x_0_cfg_msg_received_err_non_fatal_UNCONNECTED,
      cfg_msg_received_pm_as_nak => NLW_pcie_7x_0_cfg_msg_received_pm_as_nak_UNCONNECTED,
      cfg_msg_received_pm_pme => NLW_pcie_7x_0_cfg_msg_received_pm_pme_UNCONNECTED,
      cfg_msg_received_pme_to_ack => NLW_pcie_7x_0_cfg_msg_received_pme_to_ack_UNCONNECTED,
      cfg_msg_received_setslotpowerlimit => NLW_pcie_7x_0_cfg_msg_received_setslotpowerlimit_UNCONNECTED,
      cfg_pcie_link_state(2 downto 0) => NLW_pcie_7x_0_cfg_pcie_link_state_UNCONNECTED(2 downto 0),
      cfg_pciecap_interrupt_msgnum(4 downto 0) => B"00000",
      cfg_pm_force_state(1 downto 0) => B"00",
      cfg_pm_force_state_en => '0',
      cfg_pm_halt_aspm_l0s => '0',
      cfg_pm_halt_aspm_l1 => '0',
      cfg_pm_send_pme_to => '0',
      cfg_pm_wake => '0',
      cfg_pmcsr_pme_en => NLW_pcie_7x_0_cfg_pmcsr_pme_en_UNCONNECTED,
      cfg_pmcsr_pme_status => NLW_pcie_7x_0_cfg_pmcsr_pme_status_UNCONNECTED,
      cfg_pmcsr_powerstate(1 downto 0) => NLW_pcie_7x_0_cfg_pmcsr_powerstate_UNCONNECTED(1 downto 0),
      cfg_received_func_lvl_rst => NLW_pcie_7x_0_cfg_received_func_lvl_rst_UNCONNECTED,
      cfg_root_control_pme_int_en => NLW_pcie_7x_0_cfg_root_control_pme_int_en_UNCONNECTED,
      cfg_root_control_syserr_corr_err_en => NLW_pcie_7x_0_cfg_root_control_syserr_corr_err_en_UNCONNECTED,
      cfg_root_control_syserr_fatal_err_en => NLW_pcie_7x_0_cfg_root_control_syserr_fatal_err_en_UNCONNECTED,
      cfg_root_control_syserr_non_fatal_err_en => NLW_pcie_7x_0_cfg_root_control_syserr_non_fatal_err_en_UNCONNECTED,
      cfg_slot_control_electromech_il_ctl_pulse => NLW_pcie_7x_0_cfg_slot_control_electromech_il_ctl_pulse_UNCONNECTED,
      cfg_status(15 downto 0) => NLW_pcie_7x_0_cfg_status_UNCONNECTED(15 downto 0),
      cfg_to_turnoff => NLW_pcie_7x_0_cfg_to_turnoff_UNCONNECTED,
      cfg_trn_pending => '0',
      cfg_turnoff_ok => '0',
      cfg_vc_tcvc_map(6 downto 0) => NLW_pcie_7x_0_cfg_vc_tcvc_map_UNCONNECTED(6 downto 0),
      fc_cpld(11 downto 0) => NLW_pcie_7x_0_fc_cpld_UNCONNECTED(11 downto 0),
      fc_cplh(7 downto 0) => NLW_pcie_7x_0_fc_cplh_UNCONNECTED(7 downto 0),
      fc_npd(11 downto 0) => NLW_pcie_7x_0_fc_npd_UNCONNECTED(11 downto 0),
      fc_nph(7 downto 0) => NLW_pcie_7x_0_fc_nph_UNCONNECTED(7 downto 0),
      fc_pd(11 downto 0) => NLW_pcie_7x_0_fc_pd_UNCONNECTED(11 downto 0),
      fc_ph(7 downto 0) => NLW_pcie_7x_0_fc_ph_UNCONNECTED(7 downto 0),
      fc_sel(2 downto 0) => B"000",
      m_axis_rx_tdata(63 downto 0) => NLW_pcie_7x_0_m_axis_rx_tdata_UNCONNECTED(63 downto 0),
      m_axis_rx_tkeep(7 downto 0) => NLW_pcie_7x_0_m_axis_rx_tkeep_UNCONNECTED(7 downto 0),
      m_axis_rx_tlast => NLW_pcie_7x_0_m_axis_rx_tlast_UNCONNECTED,
      m_axis_rx_tready => '1',
      m_axis_rx_tuser(21 downto 0) => NLW_pcie_7x_0_m_axis_rx_tuser_UNCONNECTED(21 downto 0),
      m_axis_rx_tvalid => NLW_pcie_7x_0_m_axis_rx_tvalid_UNCONNECTED,
      pci_exp_rxn(0) => pcie_7x_0_pcie_7x_mgt_rxn(0),
      pci_exp_rxp(0) => pcie_7x_0_pcie_7x_mgt_rxp(0),
      pci_exp_txn(0) => pcie_7x_0_pcie_7x_mgt_txn(0),
      pci_exp_txp(0) => pcie_7x_0_pcie_7x_mgt_txp(0),
      pcie_drp_addr(8 downto 0) => B"000000000",
      pcie_drp_clk => sys_clk_0_1,
      pcie_drp_di(15 downto 0) => B"0000000000000000",
      pcie_drp_do(15 downto 0) => NLW_pcie_7x_0_pcie_drp_do_UNCONNECTED(15 downto 0),
      pcie_drp_en => '0',
      pcie_drp_rdy => NLW_pcie_7x_0_pcie_drp_rdy_UNCONNECTED,
      pcie_drp_we => '0',
      pipe_dclk_in => '0',
      pipe_gen3_out => NLW_pcie_7x_0_pipe_gen3_out_UNCONNECTED,
      pipe_mmcm_lock_in => '1',
      pipe_mmcm_rst_n => '1',
      pipe_oobclk_in => '0',
      pipe_pclk_in => '0',
      pipe_pclk_sel_out(0) => NLW_pcie_7x_0_pipe_pclk_sel_out_UNCONNECTED(0),
      pipe_rxoutclk_in(0) => '0',
      pipe_rxoutclk_out(0) => NLW_pcie_7x_0_pipe_rxoutclk_out_UNCONNECTED(0),
      pipe_rxusrclk_in => '0',
      pipe_txoutclk_out => NLW_pcie_7x_0_pipe_txoutclk_out_UNCONNECTED,
      pipe_userclk1_in => '1',
      pipe_userclk2_in => '0',
      pl_directed_change_done => NLW_pcie_7x_0_pl_directed_change_done_UNCONNECTED,
      pl_directed_link_auton => '0',
      pl_directed_link_change(1 downto 0) => B"00",
      pl_directed_link_speed => '0',
      pl_directed_link_width(1 downto 0) => B"00",
      pl_downstream_deemph_source => '0',
      pl_initial_link_width(2 downto 0) => NLW_pcie_7x_0_pl_initial_link_width_UNCONNECTED(2 downto 0),
      pl_lane_reversal_mode(1 downto 0) => NLW_pcie_7x_0_pl_lane_reversal_mode_UNCONNECTED(1 downto 0),
      pl_link_gen2_cap => NLW_pcie_7x_0_pl_link_gen2_cap_UNCONNECTED,
      pl_link_partner_gen2_supported => NLW_pcie_7x_0_pl_link_partner_gen2_supported_UNCONNECTED,
      pl_link_upcfg_cap => NLW_pcie_7x_0_pl_link_upcfg_cap_UNCONNECTED,
      pl_ltssm_state(5 downto 0) => NLW_pcie_7x_0_pl_ltssm_state_UNCONNECTED(5 downto 0),
      pl_phy_lnk_up => NLW_pcie_7x_0_pl_phy_lnk_up_UNCONNECTED,
      pl_received_hot_rst => NLW_pcie_7x_0_pl_received_hot_rst_UNCONNECTED,
      pl_rx_pm_state(1 downto 0) => NLW_pcie_7x_0_pl_rx_pm_state_UNCONNECTED(1 downto 0),
      pl_sel_lnk_rate => NLW_pcie_7x_0_pl_sel_lnk_rate_UNCONNECTED,
      pl_sel_lnk_width(1 downto 0) => NLW_pcie_7x_0_pl_sel_lnk_width_UNCONNECTED(1 downto 0),
      pl_transmit_hot_rst => '0',
      pl_tx_pm_state(2 downto 0) => NLW_pcie_7x_0_pl_tx_pm_state_UNCONNECTED(2 downto 0),
      pl_upstream_prefer_deemph => '1',
      rx_np_ok => '1',
      rx_np_req => '1',
      s_axis_tx_tdata(63 downto 0) => s_axis_tx_0_1_TDATA(63 downto 0),
      s_axis_tx_tkeep(7 downto 0) => s_axis_tx_0_1_TKEEP(7 downto 0),
      s_axis_tx_tlast => s_axis_tx_0_1_TLAST,
      s_axis_tx_tready => s_axis_tx_0_1_TREADY,
      s_axis_tx_tuser(3 downto 0) => s_axis_tx_0_1_TUSER(3 downto 0),
      s_axis_tx_tvalid => s_axis_tx_0_1_TVALID,
      sys_clk => sys_clk_0_1,
      sys_rst_n => sys_rst_n_0_1,
      tx_buf_av(5 downto 0) => NLW_pcie_7x_0_tx_buf_av_UNCONNECTED(5 downto 0),
      tx_cfg_gnt => '1',
      tx_cfg_req => NLW_pcie_7x_0_tx_cfg_req_UNCONNECTED,
      tx_err_drop => NLW_pcie_7x_0_tx_err_drop_UNCONNECTED,
      user_app_rdy => NLW_pcie_7x_0_user_app_rdy_UNCONNECTED,
      user_clk_out => NLW_pcie_7x_0_user_clk_out_UNCONNECTED,
      user_lnk_up => NLW_pcie_7x_0_user_lnk_up_UNCONNECTED,
      user_reset_out => NLW_pcie_7x_0_user_reset_out_UNCONNECTED
    );
end STRUCTURE;
