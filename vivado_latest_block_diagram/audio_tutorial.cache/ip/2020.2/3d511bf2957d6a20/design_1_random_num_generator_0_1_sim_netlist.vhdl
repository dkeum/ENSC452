-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Feb 21 14:53:07 2023
-- Host        : ensc-pit-w15 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_random_num_generator_0_1_sim_netlist.vhdl
-- Design      : design_1_random_num_generator_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_random_num_generator is
  port (
    m_axis_valid : out STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_reset_n : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    axi_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_random_num_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_random_num_generator is
  signal p_0_out_n_0 : STD_LOGIC;
  signal rand_num_output : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rand_num_output0 : STD_LOGIC;
begin
\m_axis_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(0),
      Q => m_axis_data(0),
      R => '0'
    );
\m_axis_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(1),
      Q => m_axis_data(1),
      R => '0'
    );
\m_axis_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(2),
      Q => m_axis_data(2),
      R => '0'
    );
\m_axis_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(3),
      Q => m_axis_data(3),
      R => '0'
    );
\m_axis_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(4),
      Q => m_axis_data(4),
      R => '0'
    );
\m_axis_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(5),
      Q => m_axis_data(5),
      R => '0'
    );
\m_axis_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(6),
      Q => m_axis_data(6),
      R => '0'
    );
\m_axis_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(7),
      Q => m_axis_data(7),
      R => '0'
    );
m_axis_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => s_axis_valid,
      Q => m_axis_valid,
      R => '0'
    );
p_0_out: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14414114"
    )
        port map (
      I0 => axi_reset_n,
      I1 => rand_num_output(2),
      I2 => rand_num_output(3),
      I3 => rand_num_output(4),
      I4 => rand_num_output(0),
      O => p_0_out_n_0
    );
\rand_num_output[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_valid,
      I1 => axi_reset_n,
      O => rand_num_output0
    );
\rand_num_output_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(1),
      Q => rand_num_output(0),
      S => rand_num_output0
    );
\rand_num_output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(2),
      Q => rand_num_output(1),
      R => rand_num_output0
    );
\rand_num_output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(3),
      Q => rand_num_output(2),
      R => rand_num_output0
    );
\rand_num_output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(4),
      Q => rand_num_output(3),
      R => rand_num_output0
    );
\rand_num_output_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(5),
      Q => rand_num_output(4),
      R => rand_num_output0
    );
\rand_num_output_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(6),
      Q => rand_num_output(5),
      R => rand_num_output0
    );
\rand_num_output_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => rand_num_output(7),
      Q => rand_num_output(6),
      R => rand_num_output0
    );
\rand_num_output_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_0_out_n_0,
      Q => rand_num_output(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    axi_clk : in STD_LOGIC;
    axi_reset_n : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_ready : out STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_random_num_generator_0_1,random_num_generator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "random_num_generator,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^m_axis_ready\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of axi_clk : signal is "xilinx.com:signal:clock:1.0 axi_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of axi_clk : signal is "XIL_INTERFACENAME axi_clk, ASSOCIATED_BUSIF m_axi:s_axi, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m_axis_ready : signal is "xilinx.com:interface:axis:1.0 m_axi TREADY";
  attribute x_interface_parameter of m_axis_ready : signal is "XIL_INTERFACENAME m_axi, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_valid : signal is "xilinx.com:interface:axis:1.0 m_axi TVALID";
  attribute x_interface_info of s_axis_ready : signal is "xilinx.com:interface:axis:1.0 s_axi TREADY";
  attribute x_interface_info of s_axis_valid : signal is "xilinx.com:interface:axis:1.0 s_axi TVALID";
  attribute x_interface_parameter of s_axis_valid : signal is "XIL_INTERFACENAME s_axi, ASSOCIATED_BUSIF m_axi:s_axi, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_data : signal is "xilinx.com:interface:axis:1.0 m_axi TDATA";
  attribute x_interface_info of s_axis_data : signal is "xilinx.com:interface:axis:1.0 s_axi TDATA";
begin
  \^m_axis_ready\ <= m_axis_ready;
  s_axis_ready <= \^m_axis_ready\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_random_num_generator
     port map (
      axi_clk => axi_clk,
      axi_reset_n => axi_reset_n,
      m_axis_data(7 downto 0) => m_axis_data(7 downto 0),
      m_axis_valid => m_axis_valid,
      s_axis_valid => s_axis_valid
    );
end STRUCTURE;
