library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

Library UNISIM;
use UNISIM.vcomponents.all;

entity full_project is
    port(
    --clock and reset
        CLK_IN_P : in STD_LOGIC; --100MHZ
        CLK_IN_N : in STD_LOGIC; --100MHZ
        RST_IN   : in STD_LOGIC; 
    
	--pcie link
		PCIE_RXN : in STD_LOGIC_VECTOR ( 0 to 0 ); 
		PCIE_RXP : in STD_LOGIC_VECTOR ( 0 to 0 ); 
		PCIE_TXN : out STD_LOGIC_VECTOR ( 0 to 0 ); 
		PCIE_TXP : out STD_LOGIC_VECTOR ( 0 to 0 )
		
		
	);
end full_project;

architecture full_project_arch of full_project is

--components


component PCIe_wrapper is
  port (
    M00_AXI_0_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_0_arlock : out STD_LOGIC;
    M00_AXI_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_arready : in STD_LOGIC;
    M00_AXI_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_arvalid : out STD_LOGIC;
    M00_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_0_awlock : out STD_LOGIC;
    M00_AXI_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_awready : in STD_LOGIC;
    M00_AXI_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_awvalid : out STD_LOGIC;
    M00_AXI_0_bready : out STD_LOGIC;
    M00_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_bvalid : in STD_LOGIC;
    M00_AXI_0_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_0_rlast : in STD_LOGIC;
    M00_AXI_0_rready : out STD_LOGIC;
    M00_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_rvalid : in STD_LOGIC;
    M00_AXI_0_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_0_wlast : out STD_LOGIC;
    M00_AXI_0_wready : in STD_LOGIC;
    M00_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_0_wvalid : out STD_LOGIC;
    ext_reset_in_0 : in STD_LOGIC;
    pcie_7x_mgt_0_rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    slowest_sync_clk_0 : in STD_LOGIC;
    axi_clk_out : out STD_LOGIC
  );
end component;


component pcie_block_wrapper is
  port (
    M_AVALON_0_address            : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AVALON_0_beginbursttransfer : out STD_LOGIC;
    M_AVALON_0_burstcount         : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AVALON_0_read               : out STD_LOGIC;
    M_AVALON_0_readdata           : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AVALON_0_readdatavalid      : in STD_LOGIC;
    M_AVALON_0_waitrequest        : in STD_LOGIC;
    M_AVALON_0_write              : out STD_LOGIC;
    M_AVALON_0_writedata          : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clock_out_62_5                : out STD_LOGIC;
	ext_reset_in_0                : in STD_LOGIC;
    pcie_7x_mgt_0_rxn             : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_rxp             : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txn             : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txp             : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_pcie_out                : out STD_LOGIC;
	slowest_sync_clk_0            : in STD_LOGIC
  );
end component;





component register_files is
    port(
	    clock        :in std_logic;
		reset        :in std_logic;
	
	
        addr_regs      :in std_logic_vector ( 31 downto 0 );
		read_regs      :in std_logic;
		write_regs     :in std_logic;
		readdata_regs  :out std_logic_vector ( 63 downto 0 );
		writedata_regs :in std_logic_vector ( 63 downto 0 )
		
		
	);
end component;




--signals

--signal clock_out_sig            : std_logic;

signal clock_out_100_sig        : std_logic;
							    
signal reset_pcie_out           :std_logic;
signal clock_out_62_5           :std_logic;
					            
signal addr_regs                : std_logic_vector ( 31 downto 0 );
signal read_regs                : std_logic;
signal write_regs               : std_logic;
signal readdata_regs            : std_logic_vector ( 63 downto 0 );
signal writedata_regs           : std_logic_vector ( 63 downto 0 );
		
signal m_avalon_0_readdatavalid : std_logic;
signal m_avalon_0_waitrequest   : std_logic;

begin


--  <-----Cut code below this line and paste into the architecture body---->

   -- IBUFDS: Differential Input Buffer
   --         Artix-7
   -- Xilinx HDL Language Template, version 2019.1

   IBUFDS_inst : IBUFDS
   generic map (
      DIFF_TERM => FALSE, -- Differential Termination 
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "DEFAULT")
   port map (
      O  => clock_out_100_sig ,  -- Buffer output
      I  => CLK_IN_P ,  -- Diff_p buffer input (connect directly to top-level port)
      IB => CLK_IN_N -- Diff_n buffer input (connect directly to top-level port)
   );

   -- End of IBUFDS_inst instantiation




pcie_block_wrapper_comp: pcie_block_wrapper
  port map(
    M_AVALON_0_address            => addr_regs,--: out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AVALON_0_beginbursttransfer => open,--: out STD_LOGIC;
    M_AVALON_0_burstcount         => open,--: out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AVALON_0_read               => read_regs,--: out STD_LOGIC;
    M_AVALON_0_readdata           => readdata_regs,--: in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AVALON_0_readdatavalid      => m_avalon_0_readdatavalid,--: in STD_LOGIC;
    M_AVALON_0_waitrequest        => '0',--m_avalon_0_waitrequest,--: in STD_LOGIC;
    M_AVALON_0_write              => write_regs,--: out STD_LOGIC;
    M_AVALON_0_writedata          => writedata_regs,--: out STD_LOGIC_VECTOR ( 63 downto 0 );
	clock_out_62_5                => clock_out_62_5,--: out STD_LOGIC;
	ext_reset_in_0                => RST_IN,--: in STD_LOGIC;
    pcie_7x_mgt_0_rxn             => PCIE_RXN,--: in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_rxp             => PCIE_RXP,--: in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txn             => PCIE_TXN,--: out STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txp             => PCIE_TXP,--: out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_pcie_out                => reset_pcie_out,--: out STD_LOGIC;
	slowest_sync_clk_0            => clock_out_100_sig --: in STD_LOGIC
  );


register_files_comp: register_files
    port map(
	    clock           => clock_out_62_5,--:in std_logic;
		reset           => reset_pcie_out,--:in std_logic;


        addr_regs       => addr_regs     ,--:in std_logic_vector ( 31 downto 0 );
		read_regs       => read_regs     ,--:in std_logic;
		write_regs      => write_regs    ,--:in std_logic;
		readdata_regs   => readdata_regs ,--:out std_logic_vector ( 63 downto 0 );
		writedata_regs  => writedata_regs --:in std_logic_vector ( 63 downto 0 )
		
		
	);  
     
    
process (clock_out_62_5,reset_pcie_out)
begin
    if (reset_pcie_out = '0') then
	    m_avalon_0_readdatavalid <= '0';
	elsif (rising_edge (clock_out_62_5)) then
	    if (read_regs = '1') then
	        m_avalon_0_readdatavalid <= '1';
		else
		    m_avalon_0_readdatavalid <= '0';
		end if;
	end if;
end process; 















end full_project_arch;