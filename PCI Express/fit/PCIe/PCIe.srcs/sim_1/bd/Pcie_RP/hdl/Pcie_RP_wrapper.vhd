--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Jul 25 10:42:33 2024
--Host        : Satvik running 64-bit major release  (build 9200)
--Command     : generate_target Pcie_RP_wrapper.bd
--Design      : Pcie_RP_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Pcie_RP_wrapper is
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
    sys_rst_n_0 : in STD_LOGIC;
    user_clk_out_0 : out STD_LOGIC;
    user_reset_out_0 : out STD_LOGIC
  );
end Pcie_RP_wrapper;

architecture STRUCTURE of Pcie_RP_wrapper is
  component Pcie_RP is
  port (
    pcie_7x_mgt_0_rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk_0 : in STD_LOGIC;
    sys_rst_n_0 : in STD_LOGIC;
    s_axis_tx_0_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_0_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_0_tlast : in STD_LOGIC;
    s_axis_tx_0_tready : out STD_LOGIC;
    s_axis_tx_0_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tx_0_tvalid : in STD_LOGIC;
    user_clk_out_0 : out STD_LOGIC;
    user_reset_out_0 : out STD_LOGIC
  );
  end component Pcie_RP;
begin
Pcie_RP_i: component Pcie_RP
     port map (
      pcie_7x_mgt_0_rxn(0) => pcie_7x_mgt_0_rxn(0),
      pcie_7x_mgt_0_rxp(0) => pcie_7x_mgt_0_rxp(0),
      pcie_7x_mgt_0_txn(0) => pcie_7x_mgt_0_txn(0),
      pcie_7x_mgt_0_txp(0) => pcie_7x_mgt_0_txp(0),
      s_axis_tx_0_tdata(63 downto 0) => s_axis_tx_0_tdata(63 downto 0),
      s_axis_tx_0_tkeep(7 downto 0) => s_axis_tx_0_tkeep(7 downto 0),
      s_axis_tx_0_tlast => s_axis_tx_0_tlast,
      s_axis_tx_0_tready => s_axis_tx_0_tready,
      s_axis_tx_0_tuser(3 downto 0) => s_axis_tx_0_tuser(3 downto 0),
      s_axis_tx_0_tvalid => s_axis_tx_0_tvalid,
      sys_clk_0 => sys_clk_0,
      sys_rst_n_0 => sys_rst_n_0,
      user_clk_out_0 => user_clk_out_0,
      user_reset_out_0 => user_reset_out_0
    );
end STRUCTURE;
