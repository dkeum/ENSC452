-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Feb 24 15:26:18 2023
-- Host        : ensc-pit-w15 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rand_num_generator_0_1_sim_netlist.vhdl
-- Design      : design_1_rand_num_generator_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inverter is
  port (
    m_axis_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_ready : out STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    axi_clk : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_ready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inverter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inverter is
  signal counter : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal \^m_axis_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \m_axis_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_data[0]_i_7_n_0\ : STD_LOGIC;
  signal \^m_axis_valid\ : STD_LOGIC;
  signal m_axis_valid_i_1_n_0 : STD_LOGIC;
  signal m_axis_valid_i_2_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axis_ready\ : STD_LOGIC;
  signal s_axis_ready_i_1_n_0 : STD_LOGIC;
  signal s_axis_ready_i_2_n_0 : STD_LOGIC;
  signal s_axis_ready_i_3_n_0 : STD_LOGIC;
  signal s_axis_ready_i_4_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_data[0]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_data[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_data[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_data[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_data[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_data[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_data[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_data[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_data[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_data[18]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_data[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_data[20]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_data[21]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_data[22]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_data[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_data[24]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_data[25]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_data[26]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_data[27]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_data[28]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_data[29]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_data[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_data[30]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_data[31]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_data[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_data[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_data[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_data[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_data[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_data[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_data[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of m_axis_valid_i_2 : label is "soft_lutpair1";
begin
  m_axis_data(31 downto 0) <= \^m_axis_data\(31 downto 0);
  m_axis_valid <= \^m_axis_valid\;
  s_axis_ready <= \^s_axis_ready\;
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_valid,
      I1 => counter(0),
      O => sel0(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => s_axis_valid,
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => counter(2),
      I1 => s_axis_valid,
      I2 => counter(0),
      I3 => counter(1),
      O => counter_0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => counter(3),
      I1 => counter(1),
      I2 => counter(0),
      I3 => s_axis_valid,
      I4 => counter(2),
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => counter(4),
      I1 => counter(2),
      I2 => s_axis_valid,
      I3 => counter(0),
      I4 => counter(1),
      I5 => counter(3),
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(5),
      I1 => \counter[8]_i_3_n_0\,
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter(6),
      I1 => \counter[8]_i_3_n_0\,
      I2 => counter(5),
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => counter(7),
      I1 => counter(5),
      I2 => \counter[8]_i_3_n_0\,
      I3 => counter(6),
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"62AAAAAAAAAAAAA8"
    )
        port map (
      I0 => counter(8),
      I1 => counter(6),
      I2 => \counter[8]_i_2_n_0\,
      I3 => counter(5),
      I4 => \counter[8]_i_3_n_0\,
      I5 => counter(7),
      O => counter_0(8)
    );
\counter[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFE"
    )
        port map (
      I0 => counter(4),
      I1 => counter(2),
      I2 => counter(1),
      I3 => counter(0),
      I4 => s_axis_valid,
      I5 => counter(3),
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => counter(4),
      I1 => counter(2),
      I2 => s_axis_valid,
      I3 => counter(0),
      I4 => counter(1),
      I5 => counter(3),
      O => \counter[8]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => '1',
      D => sel0(0),
      Q => counter(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      Q => counter(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => '1',
      D => counter_0(2),
      Q => counter(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => '1',
      D => counter_0(3),
      Q => counter(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => '1',
      D => counter_0(4),
      Q => counter(4),
      R => '0'
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => '1',
      D => counter_0(5),
      Q => counter(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => '1',
      D => counter_0(6),
      Q => counter(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => '1',
      D => counter_0(7),
      Q => counter(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_clk,
      CE => '1',
      D => counter_0(8),
      Q => counter(8),
      R => '0'
    );
\m_axis_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \m_axis_data[0]_i_2_n_0\,
      I1 => \m_axis_data[0]_i_3_n_0\,
      I2 => \m_axis_data[0]_i_4_n_0\,
      I3 => \m_axis_data[0]_i_5_n_0\,
      I4 => \m_axis_data[0]_i_6_n_0\,
      O => p_1_in(0)
    );
\m_axis_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => s_axis_data(1),
      I1 => counter(5),
      I2 => counter(7),
      I3 => counter(1),
      I4 => s_axis_ready_i_4_n_0,
      I5 => \^m_axis_data\(1),
      O => \m_axis_data[0]_i_2_n_0\
    );
\m_axis_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A335A5A5ACC5A5A"
    )
        port map (
      I0 => \^m_axis_data\(31),
      I1 => s_axis_data(31),
      I2 => \^m_axis_data\(2),
      I3 => s_axis_ready_i_4_n_0,
      I4 => \m_axis_data[0]_i_7_n_0\,
      I5 => s_axis_data(2),
      O => \m_axis_data[0]_i_3_n_0\
    );
\m_axis_data[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A335A5A5ACC5A5A"
    )
        port map (
      I0 => \^m_axis_data\(25),
      I1 => s_axis_data(25),
      I2 => \^m_axis_data\(24),
      I3 => s_axis_ready_i_4_n_0,
      I4 => \m_axis_data[0]_i_7_n_0\,
      I5 => s_axis_data(24),
      O => \m_axis_data[0]_i_4_n_0\
    );
\m_axis_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => s_axis_data(29),
      I1 => counter(5),
      I2 => counter(7),
      I3 => counter(1),
      I4 => s_axis_ready_i_4_n_0,
      I5 => \^m_axis_data\(29),
      O => \m_axis_data[0]_i_5_n_0\
    );
\m_axis_data[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => s_axis_data(0),
      I1 => counter(5),
      I2 => counter(7),
      I3 => counter(1),
      I4 => s_axis_ready_i_4_n_0,
      I5 => \^m_axis_data\(0),
      O => \m_axis_data[0]_i_6_n_0\
    );
\m_axis_data[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => counter(1),
      I1 => counter(7),
      I2 => counter(5),
      O => \m_axis_data[0]_i_7_n_0\
    );
\m_axis_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(9),
      I1 => \^m_axis_data\(9),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(10)
    );
\m_axis_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(10),
      I1 => \^m_axis_data\(10),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(11)
    );
\m_axis_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(11),
      I1 => \^m_axis_data\(11),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(12)
    );
\m_axis_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(12),
      I1 => \^m_axis_data\(12),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(13)
    );
\m_axis_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(13),
      I1 => \^m_axis_data\(13),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(14)
    );
\m_axis_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(14),
      I1 => \^m_axis_data\(14),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(15)
    );
\m_axis_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(15),
      I1 => \^m_axis_data\(15),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(16)
    );
\m_axis_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(16),
      I1 => \^m_axis_data\(16),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(17)
    );
\m_axis_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(17),
      I1 => \^m_axis_data\(17),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(18)
    );
\m_axis_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(18),
      I1 => \^m_axis_data\(18),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(19)
    );
\m_axis_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(0),
      I1 => \^m_axis_data\(0),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(1)
    );
\m_axis_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(19),
      I1 => \^m_axis_data\(19),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(20)
    );
\m_axis_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(20),
      I1 => \^m_axis_data\(20),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(21)
    );
\m_axis_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(21),
      I1 => \^m_axis_data\(21),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(22)
    );
\m_axis_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(22),
      I1 => \^m_axis_data\(22),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(23)
    );
\m_axis_data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(23),
      I1 => \^m_axis_data\(23),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(24)
    );
\m_axis_data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(24),
      I1 => \^m_axis_data\(24),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(25)
    );
\m_axis_data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(25),
      I1 => \^m_axis_data\(25),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(26)
    );
\m_axis_data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(26),
      I1 => \^m_axis_data\(26),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(27)
    );
\m_axis_data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(27),
      I1 => \^m_axis_data\(27),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(28)
    );
\m_axis_data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(28),
      I1 => \^m_axis_data\(28),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(29)
    );
\m_axis_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(1),
      I1 => \^m_axis_data\(1),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(2)
    );
\m_axis_data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(29),
      I1 => \^m_axis_data\(29),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(30)
    );
\m_axis_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(30),
      I1 => \^m_axis_data\(30),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(31)
    );
\m_axis_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(2),
      I1 => \^m_axis_data\(2),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(3)
    );
\m_axis_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(3),
      I1 => \^m_axis_data\(3),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(4)
    );
\m_axis_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(4),
      I1 => \^m_axis_data\(4),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(5)
    );
\m_axis_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(5),
      I1 => \^m_axis_data\(5),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(6)
    );
\m_axis_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(6),
      I1 => \^m_axis_data\(6),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(7)
    );
\m_axis_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(7),
      I1 => \^m_axis_data\(7),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(8)
    );
\m_axis_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_data(8),
      I1 => \^m_axis_data\(8),
      I2 => s_axis_ready_i_3_n_0,
      O => p_1_in(9)
    );
\m_axis_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(0),
      Q => \^m_axis_data\(0),
      R => '0'
    );
\m_axis_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(10),
      Q => \^m_axis_data\(10),
      R => '0'
    );
\m_axis_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(11),
      Q => \^m_axis_data\(11),
      R => '0'
    );
\m_axis_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(12),
      Q => \^m_axis_data\(12),
      R => '0'
    );
\m_axis_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(13),
      Q => \^m_axis_data\(13),
      R => '0'
    );
\m_axis_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(14),
      Q => \^m_axis_data\(14),
      R => '0'
    );
\m_axis_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(15),
      Q => \^m_axis_data\(15),
      R => '0'
    );
\m_axis_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(16),
      Q => \^m_axis_data\(16),
      R => '0'
    );
\m_axis_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(17),
      Q => \^m_axis_data\(17),
      R => '0'
    );
\m_axis_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(18),
      Q => \^m_axis_data\(18),
      R => '0'
    );
\m_axis_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(19),
      Q => \^m_axis_data\(19),
      R => '0'
    );
\m_axis_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(1),
      Q => \^m_axis_data\(1),
      R => '0'
    );
\m_axis_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(20),
      Q => \^m_axis_data\(20),
      R => '0'
    );
\m_axis_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(21),
      Q => \^m_axis_data\(21),
      R => '0'
    );
\m_axis_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(22),
      Q => \^m_axis_data\(22),
      R => '0'
    );
\m_axis_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(23),
      Q => \^m_axis_data\(23),
      R => '0'
    );
\m_axis_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(24),
      Q => \^m_axis_data\(24),
      R => '0'
    );
\m_axis_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(25),
      Q => \^m_axis_data\(25),
      R => '0'
    );
\m_axis_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(26),
      Q => \^m_axis_data\(26),
      R => '0'
    );
\m_axis_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(27),
      Q => \^m_axis_data\(27),
      R => '0'
    );
\m_axis_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(28),
      Q => \^m_axis_data\(28),
      R => '0'
    );
\m_axis_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(29),
      Q => \^m_axis_data\(29),
      R => '0'
    );
\m_axis_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(2),
      Q => \^m_axis_data\(2),
      R => '0'
    );
\m_axis_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(30),
      Q => \^m_axis_data\(30),
      R => '0'
    );
\m_axis_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(31),
      Q => \^m_axis_data\(31),
      R => '0'
    );
\m_axis_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(3),
      Q => \^m_axis_data\(3),
      R => '0'
    );
\m_axis_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(4),
      Q => \^m_axis_data\(4),
      R => '0'
    );
\m_axis_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(5),
      Q => \^m_axis_data\(5),
      R => '0'
    );
\m_axis_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(6),
      Q => \^m_axis_data\(6),
      R => '0'
    );
\m_axis_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(7),
      Q => \^m_axis_data\(7),
      R => '0'
    );
\m_axis_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(8),
      Q => \^m_axis_data\(8),
      R => '0'
    );
\m_axis_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => s_axis_valid,
      D => p_1_in(9),
      Q => \^m_axis_data\(9),
      R => '0'
    );
m_axis_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2F2F222020202"
    )
        port map (
      I0 => m_axis_valid_i_2_n_0,
      I1 => counter(8),
      I2 => s_axis_ready_i_2_n_0,
      I3 => s_axis_ready_i_3_n_0,
      I4 => s_axis_valid,
      I5 => \^m_axis_valid\,
      O => m_axis_valid_i_1_n_0
    );
m_axis_valid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => counter(7),
      I1 => counter(5),
      I2 => \counter[8]_i_3_n_0\,
      I3 => counter(6),
      O => m_axis_valid_i_2_n_0
    );
m_axis_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => m_axis_valid_i_1_n_0,
      Q => \^m_axis_valid\,
      R => '0'
    );
s_axis_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EEE2222"
    )
        port map (
      I0 => m_axis_ready,
      I1 => s_axis_ready_i_2_n_0,
      I2 => s_axis_ready_i_3_n_0,
      I3 => s_axis_valid,
      I4 => \^s_axis_ready\,
      O => s_axis_ready_i_1_n_0
    );
s_axis_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEBFFFFFFF"
    )
        port map (
      I0 => \counter[8]_i_2_n_0\,
      I1 => counter(7),
      I2 => counter(5),
      I3 => \counter[8]_i_3_n_0\,
      I4 => counter(6),
      I5 => counter(8),
      O => s_axis_ready_i_2_n_0
    );
s_axis_ready_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => counter(5),
      I1 => counter(7),
      I2 => counter(1),
      I3 => s_axis_ready_i_4_n_0,
      O => s_axis_ready_i_3_n_0
    );
s_axis_ready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => counter(3),
      I1 => counter(2),
      I2 => counter(0),
      I3 => counter(8),
      I4 => counter(4),
      I5 => counter(6),
      O => s_axis_ready_i_4_n_0
    );
s_axis_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => s_axis_ready_i_1_n_0,
      Q => \^s_axis_ready\,
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
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_ready : out STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_ready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_rand_num_generator_0_1,inverter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "inverter,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axi_clk : signal is "xilinx.com:signal:clock:1.0 axi_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axi_clk : signal is "XIL_INTERFACENAME axi_clk, ASSOCIATED_BUSIF m_axi:s_axi, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_ready : signal is "xilinx.com:interface:axis:1.0 m_axi TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_ready : signal is "XIL_INTERFACENAME m_axi, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_valid : signal is "xilinx.com:interface:axis:1.0 m_axi TVALID";
  attribute X_INTERFACE_INFO of s_axis_ready : signal is "xilinx.com:interface:axis:1.0 s_axi TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_ready : signal is "XIL_INTERFACENAME s_axi, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_valid : signal is "xilinx.com:interface:axis:1.0 s_axi TVALID";
  attribute X_INTERFACE_INFO of m_axis_data : signal is "xilinx.com:interface:axis:1.0 m_axi TDATA";
  attribute X_INTERFACE_INFO of s_axis_data : signal is "xilinx.com:interface:axis:1.0 s_axi TDATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inverter
     port map (
      axi_clk => axi_clk,
      m_axis_data(31 downto 0) => m_axis_data(31 downto 0),
      m_axis_ready => m_axis_ready,
      m_axis_valid => m_axis_valid,
      s_axis_data(31 downto 0) => s_axis_data(31 downto 0),
      s_axis_ready => s_axis_ready,
      s_axis_valid => s_axis_valid
    );
end STRUCTURE;
