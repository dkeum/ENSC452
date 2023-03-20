// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Feb 24 15:26:18 2023
// Host        : ensc-pit-w15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rand_num_generator_0_1_sim_netlist.v
// Design      : design_1_rand_num_generator_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rand_num_generator_0_1,inverter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "inverter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (axi_clk,
    axi_reset_n,
    s_axis_valid,
    s_axis_data,
    s_axis_ready,
    m_axis_valid,
    m_axis_data,
    m_axis_ready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, ASSOCIATED_BUSIF m_axi:s_axi, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axi_clk;
  input axi_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axi TVALID" *) input s_axis_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axi TDATA" *) input [31:0]s_axis_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axi TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axi TVALID" *) output m_axis_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axi TDATA" *) output [31:0]m_axis_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axi TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_ready;

  wire axi_clk;
  wire [31:0]m_axis_data;
  wire m_axis_ready;
  wire m_axis_valid;
  wire [31:0]s_axis_data;
  wire s_axis_ready;
  wire s_axis_valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inverter inst
       (.axi_clk(axi_clk),
        .m_axis_data(m_axis_data),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .s_axis_data(s_axis_data),
        .s_axis_ready(s_axis_ready),
        .s_axis_valid(s_axis_valid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inverter
   (m_axis_data,
    s_axis_ready,
    m_axis_valid,
    s_axis_valid,
    axi_clk,
    s_axis_data,
    m_axis_ready);
  output [31:0]m_axis_data;
  output s_axis_ready;
  output m_axis_valid;
  input s_axis_valid;
  input axi_clk;
  input [31:0]s_axis_data;
  input m_axis_ready;

  wire axi_clk;
  wire [8:0]counter;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire [8:2]counter_0;
  wire [31:0]m_axis_data;
  wire \m_axis_data[0]_i_2_n_0 ;
  wire \m_axis_data[0]_i_3_n_0 ;
  wire \m_axis_data[0]_i_4_n_0 ;
  wire \m_axis_data[0]_i_5_n_0 ;
  wire \m_axis_data[0]_i_6_n_0 ;
  wire \m_axis_data[0]_i_7_n_0 ;
  wire m_axis_ready;
  wire m_axis_valid;
  wire m_axis_valid_i_1_n_0;
  wire m_axis_valid_i_2_n_0;
  wire [31:0]p_1_in;
  wire [31:0]s_axis_data;
  wire s_axis_ready;
  wire s_axis_ready_i_1_n_0;
  wire s_axis_ready_i_2_n_0;
  wire s_axis_ready_i_3_n_0;
  wire s_axis_ready_i_4_n_0;
  wire s_axis_valid;
  wire [0:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1 
       (.I0(s_axis_valid),
        .I1(counter[0]),
        .O(sel0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(s_axis_valid),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[2]_i_1 
       (.I0(counter[2]),
        .I1(s_axis_valid),
        .I2(counter[0]),
        .I3(counter[1]),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[3]_i_1 
       (.I0(counter[3]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(s_axis_valid),
        .I4(counter[2]),
        .O(counter_0[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[4]_i_1 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(s_axis_valid),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(counter[3]),
        .O(counter_0[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[5]_i_1 
       (.I0(counter[5]),
        .I1(\counter[8]_i_3_n_0 ),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[6]_i_1 
       (.I0(counter[6]),
        .I1(\counter[8]_i_3_n_0 ),
        .I2(counter[5]),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[7]_i_1 
       (.I0(counter[7]),
        .I1(counter[5]),
        .I2(\counter[8]_i_3_n_0 ),
        .I3(counter[6]),
        .O(counter_0[7]));
  LUT6 #(
    .INIT(64'h62AAAAAAAAAAAAA8)) 
    \counter[8]_i_1 
       (.I0(counter[8]),
        .I1(counter[6]),
        .I2(\counter[8]_i_2_n_0 ),
        .I3(counter[5]),
        .I4(\counter[8]_i_3_n_0 ),
        .I5(counter[7]),
        .O(counter_0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFE)) 
    \counter[8]_i_2 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(s_axis_valid),
        .I5(counter[3]),
        .O(\counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[8]_i_3 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(s_axis_valid),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(counter[3]),
        .O(\counter[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(sel0),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_data[0]_i_1 
       (.I0(\m_axis_data[0]_i_2_n_0 ),
        .I1(\m_axis_data[0]_i_3_n_0 ),
        .I2(\m_axis_data[0]_i_4_n_0 ),
        .I3(\m_axis_data[0]_i_5_n_0 ),
        .I4(\m_axis_data[0]_i_6_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \m_axis_data[0]_i_2 
       (.I0(s_axis_data[1]),
        .I1(counter[5]),
        .I2(counter[7]),
        .I3(counter[1]),
        .I4(s_axis_ready_i_4_n_0),
        .I5(m_axis_data[1]),
        .O(\m_axis_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5A335A5A5ACC5A5A)) 
    \m_axis_data[0]_i_3 
       (.I0(m_axis_data[31]),
        .I1(s_axis_data[31]),
        .I2(m_axis_data[2]),
        .I3(s_axis_ready_i_4_n_0),
        .I4(\m_axis_data[0]_i_7_n_0 ),
        .I5(s_axis_data[2]),
        .O(\m_axis_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5A335A5A5ACC5A5A)) 
    \m_axis_data[0]_i_4 
       (.I0(m_axis_data[25]),
        .I1(s_axis_data[25]),
        .I2(m_axis_data[24]),
        .I3(s_axis_ready_i_4_n_0),
        .I4(\m_axis_data[0]_i_7_n_0 ),
        .I5(s_axis_data[24]),
        .O(\m_axis_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \m_axis_data[0]_i_5 
       (.I0(s_axis_data[29]),
        .I1(counter[5]),
        .I2(counter[7]),
        .I3(counter[1]),
        .I4(s_axis_ready_i_4_n_0),
        .I5(m_axis_data[29]),
        .O(\m_axis_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \m_axis_data[0]_i_6 
       (.I0(s_axis_data[0]),
        .I1(counter[5]),
        .I2(counter[7]),
        .I3(counter[1]),
        .I4(s_axis_ready_i_4_n_0),
        .I5(m_axis_data[0]),
        .O(\m_axis_data[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \m_axis_data[0]_i_7 
       (.I0(counter[1]),
        .I1(counter[7]),
        .I2(counter[5]),
        .O(\m_axis_data[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[10]_i_1 
       (.I0(s_axis_data[9]),
        .I1(m_axis_data[9]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[11]_i_1 
       (.I0(s_axis_data[10]),
        .I1(m_axis_data[10]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[12]_i_1 
       (.I0(s_axis_data[11]),
        .I1(m_axis_data[11]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[13]_i_1 
       (.I0(s_axis_data[12]),
        .I1(m_axis_data[12]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[14]_i_1 
       (.I0(s_axis_data[13]),
        .I1(m_axis_data[13]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[15]_i_1 
       (.I0(s_axis_data[14]),
        .I1(m_axis_data[14]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[16]_i_1 
       (.I0(s_axis_data[15]),
        .I1(m_axis_data[15]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[17]_i_1 
       (.I0(s_axis_data[16]),
        .I1(m_axis_data[16]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[18]_i_1 
       (.I0(s_axis_data[17]),
        .I1(m_axis_data[17]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[19]_i_1 
       (.I0(s_axis_data[18]),
        .I1(m_axis_data[18]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[1]_i_1 
       (.I0(s_axis_data[0]),
        .I1(m_axis_data[0]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[20]_i_1 
       (.I0(s_axis_data[19]),
        .I1(m_axis_data[19]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[21]_i_1 
       (.I0(s_axis_data[20]),
        .I1(m_axis_data[20]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[22]_i_1 
       (.I0(s_axis_data[21]),
        .I1(m_axis_data[21]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[23]_i_1 
       (.I0(s_axis_data[22]),
        .I1(m_axis_data[22]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[24]_i_1 
       (.I0(s_axis_data[23]),
        .I1(m_axis_data[23]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[25]_i_1 
       (.I0(s_axis_data[24]),
        .I1(m_axis_data[24]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[26]_i_1 
       (.I0(s_axis_data[25]),
        .I1(m_axis_data[25]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[27]_i_1 
       (.I0(s_axis_data[26]),
        .I1(m_axis_data[26]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[28]_i_1 
       (.I0(s_axis_data[27]),
        .I1(m_axis_data[27]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[29]_i_1 
       (.I0(s_axis_data[28]),
        .I1(m_axis_data[28]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[2]_i_1 
       (.I0(s_axis_data[1]),
        .I1(m_axis_data[1]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[30]_i_1 
       (.I0(s_axis_data[29]),
        .I1(m_axis_data[29]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[31]_i_1 
       (.I0(s_axis_data[30]),
        .I1(m_axis_data[30]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[3]_i_1 
       (.I0(s_axis_data[2]),
        .I1(m_axis_data[2]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[4]_i_1 
       (.I0(s_axis_data[3]),
        .I1(m_axis_data[3]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[5]_i_1 
       (.I0(s_axis_data[4]),
        .I1(m_axis_data[4]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[6]_i_1 
       (.I0(s_axis_data[5]),
        .I1(m_axis_data[5]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[7]_i_1 
       (.I0(s_axis_data[6]),
        .I1(m_axis_data[6]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[8]_i_1 
       (.I0(s_axis_data[7]),
        .I1(m_axis_data[7]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_data[9]_i_1 
       (.I0(s_axis_data[8]),
        .I1(m_axis_data[8]),
        .I2(s_axis_ready_i_3_n_0),
        .O(p_1_in[9]));
  FDRE \m_axis_data_reg[0] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[0]),
        .Q(m_axis_data[0]),
        .R(1'b0));
  FDRE \m_axis_data_reg[10] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[10]),
        .Q(m_axis_data[10]),
        .R(1'b0));
  FDRE \m_axis_data_reg[11] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[11]),
        .Q(m_axis_data[11]),
        .R(1'b0));
  FDRE \m_axis_data_reg[12] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[12]),
        .Q(m_axis_data[12]),
        .R(1'b0));
  FDRE \m_axis_data_reg[13] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[13]),
        .Q(m_axis_data[13]),
        .R(1'b0));
  FDRE \m_axis_data_reg[14] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[14]),
        .Q(m_axis_data[14]),
        .R(1'b0));
  FDRE \m_axis_data_reg[15] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[15]),
        .Q(m_axis_data[15]),
        .R(1'b0));
  FDRE \m_axis_data_reg[16] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[16]),
        .Q(m_axis_data[16]),
        .R(1'b0));
  FDRE \m_axis_data_reg[17] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[17]),
        .Q(m_axis_data[17]),
        .R(1'b0));
  FDRE \m_axis_data_reg[18] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[18]),
        .Q(m_axis_data[18]),
        .R(1'b0));
  FDRE \m_axis_data_reg[19] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[19]),
        .Q(m_axis_data[19]),
        .R(1'b0));
  FDRE \m_axis_data_reg[1] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[1]),
        .Q(m_axis_data[1]),
        .R(1'b0));
  FDRE \m_axis_data_reg[20] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[20]),
        .Q(m_axis_data[20]),
        .R(1'b0));
  FDRE \m_axis_data_reg[21] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[21]),
        .Q(m_axis_data[21]),
        .R(1'b0));
  FDRE \m_axis_data_reg[22] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[22]),
        .Q(m_axis_data[22]),
        .R(1'b0));
  FDRE \m_axis_data_reg[23] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[23]),
        .Q(m_axis_data[23]),
        .R(1'b0));
  FDRE \m_axis_data_reg[24] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[24]),
        .Q(m_axis_data[24]),
        .R(1'b0));
  FDRE \m_axis_data_reg[25] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[25]),
        .Q(m_axis_data[25]),
        .R(1'b0));
  FDRE \m_axis_data_reg[26] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[26]),
        .Q(m_axis_data[26]),
        .R(1'b0));
  FDRE \m_axis_data_reg[27] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[27]),
        .Q(m_axis_data[27]),
        .R(1'b0));
  FDRE \m_axis_data_reg[28] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[28]),
        .Q(m_axis_data[28]),
        .R(1'b0));
  FDRE \m_axis_data_reg[29] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[29]),
        .Q(m_axis_data[29]),
        .R(1'b0));
  FDRE \m_axis_data_reg[2] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[2]),
        .Q(m_axis_data[2]),
        .R(1'b0));
  FDRE \m_axis_data_reg[30] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[30]),
        .Q(m_axis_data[30]),
        .R(1'b0));
  FDRE \m_axis_data_reg[31] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[31]),
        .Q(m_axis_data[31]),
        .R(1'b0));
  FDRE \m_axis_data_reg[3] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[3]),
        .Q(m_axis_data[3]),
        .R(1'b0));
  FDRE \m_axis_data_reg[4] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[4]),
        .Q(m_axis_data[4]),
        .R(1'b0));
  FDRE \m_axis_data_reg[5] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[5]),
        .Q(m_axis_data[5]),
        .R(1'b0));
  FDRE \m_axis_data_reg[6] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[6]),
        .Q(m_axis_data[6]),
        .R(1'b0));
  FDRE \m_axis_data_reg[7] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[7]),
        .Q(m_axis_data[7]),
        .R(1'b0));
  FDRE \m_axis_data_reg[8] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[8]),
        .Q(m_axis_data[8]),
        .R(1'b0));
  FDRE \m_axis_data_reg[9] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in[9]),
        .Q(m_axis_data[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h22F2F2F222020202)) 
    m_axis_valid_i_1
       (.I0(m_axis_valid_i_2_n_0),
        .I1(counter[8]),
        .I2(s_axis_ready_i_2_n_0),
        .I3(s_axis_ready_i_3_n_0),
        .I4(s_axis_valid),
        .I5(m_axis_valid),
        .O(m_axis_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    m_axis_valid_i_2
       (.I0(counter[7]),
        .I1(counter[5]),
        .I2(\counter[8]_i_3_n_0 ),
        .I3(counter[6]),
        .O(m_axis_valid_i_2_n_0));
  FDRE m_axis_valid_reg
       (.C(axi_clk),
        .CE(1'b1),
        .D(m_axis_valid_i_1_n_0),
        .Q(m_axis_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h2EEE2222)) 
    s_axis_ready_i_1
       (.I0(m_axis_ready),
        .I1(s_axis_ready_i_2_n_0),
        .I2(s_axis_ready_i_3_n_0),
        .I3(s_axis_valid),
        .I4(s_axis_ready),
        .O(s_axis_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEBFFFFFFF)) 
    s_axis_ready_i_2
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(counter[7]),
        .I2(counter[5]),
        .I3(\counter[8]_i_3_n_0 ),
        .I4(counter[6]),
        .I5(counter[8]),
        .O(s_axis_ready_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    s_axis_ready_i_3
       (.I0(counter[5]),
        .I1(counter[7]),
        .I2(counter[1]),
        .I3(s_axis_ready_i_4_n_0),
        .O(s_axis_ready_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axis_ready_i_4
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[8]),
        .I4(counter[4]),
        .I5(counter[6]),
        .O(s_axis_ready_i_4_n_0));
  FDRE s_axis_ready_reg
       (.C(axi_clk),
        .CE(1'b1),
        .D(s_axis_ready_i_1_n_0),
        .Q(s_axis_ready),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
