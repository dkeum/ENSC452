// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Feb 21 14:53:07 2023
// Host        : ensc-pit-w15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_random_num_generator_0_1_sim_netlist.v
// Design      : design_1_random_num_generator_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_random_num_generator_0_1,random_num_generator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "random_num_generator,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (axi_clk,
    axi_reset_n,
    s_axis_valid,
    s_axis_data,
    s_axis_ready,
    m_axis_ready,
    m_axis_valid,
    m_axis_data);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 axi_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME axi_clk, ASSOCIATED_BUSIF m_axi:s_axi, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axi_clk;
  input axi_reset_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi, ASSOCIATED_BUSIF m_axi:s_axi, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_valid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi TDATA" *) input [7:0]s_axis_data;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi TREADY" *) output s_axis_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi TVALID" *) output m_axis_valid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi TDATA" *) output [7:0]m_axis_data;

  wire axi_clk;
  wire axi_reset_n;
  wire [7:0]m_axis_data;
  wire m_axis_ready;
  wire m_axis_valid;
  wire s_axis_valid;

  assign s_axis_ready = m_axis_ready;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_random_num_generator U0
       (.axi_clk(axi_clk),
        .axi_reset_n(axi_reset_n),
        .m_axis_data(m_axis_data),
        .m_axis_valid(m_axis_valid),
        .s_axis_valid(s_axis_valid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_random_num_generator
   (m_axis_valid,
    m_axis_data,
    axi_reset_n,
    s_axis_valid,
    axi_clk);
  output m_axis_valid;
  output [7:0]m_axis_data;
  input axi_reset_n;
  input s_axis_valid;
  input axi_clk;

  wire axi_clk;
  wire axi_reset_n;
  wire [7:0]m_axis_data;
  wire m_axis_valid;
  wire p_0_out_n_0;
  wire [7:0]rand_num_output;
  wire rand_num_output0;
  wire s_axis_valid;

  FDRE \m_axis_data_reg[0] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[0]),
        .Q(m_axis_data[0]),
        .R(1'b0));
  FDRE \m_axis_data_reg[1] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[1]),
        .Q(m_axis_data[1]),
        .R(1'b0));
  FDRE \m_axis_data_reg[2] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[2]),
        .Q(m_axis_data[2]),
        .R(1'b0));
  FDRE \m_axis_data_reg[3] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[3]),
        .Q(m_axis_data[3]),
        .R(1'b0));
  FDRE \m_axis_data_reg[4] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[4]),
        .Q(m_axis_data[4]),
        .R(1'b0));
  FDRE \m_axis_data_reg[5] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[5]),
        .Q(m_axis_data[5]),
        .R(1'b0));
  FDRE \m_axis_data_reg[6] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[6]),
        .Q(m_axis_data[6]),
        .R(1'b0));
  FDRE \m_axis_data_reg[7] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[7]),
        .Q(m_axis_data[7]),
        .R(1'b0));
  FDRE m_axis_valid_reg
       (.C(axi_clk),
        .CE(1'b1),
        .D(s_axis_valid),
        .Q(m_axis_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h14414114)) 
    p_0_out
       (.I0(axi_reset_n),
        .I1(rand_num_output[2]),
        .I2(rand_num_output[3]),
        .I3(rand_num_output[4]),
        .I4(rand_num_output[0]),
        .O(p_0_out_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \rand_num_output[6]_i_1 
       (.I0(s_axis_valid),
        .I1(axi_reset_n),
        .O(rand_num_output0));
  FDSE #(
    .INIT(1'b1)) 
    \rand_num_output_reg[0] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[1]),
        .Q(rand_num_output[0]),
        .S(rand_num_output0));
  FDRE #(
    .INIT(1'b0)) 
    \rand_num_output_reg[1] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[2]),
        .Q(rand_num_output[1]),
        .R(rand_num_output0));
  FDRE #(
    .INIT(1'b0)) 
    \rand_num_output_reg[2] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[3]),
        .Q(rand_num_output[2]),
        .R(rand_num_output0));
  FDRE #(
    .INIT(1'b0)) 
    \rand_num_output_reg[3] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[4]),
        .Q(rand_num_output[3]),
        .R(rand_num_output0));
  FDRE #(
    .INIT(1'b0)) 
    \rand_num_output_reg[4] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[5]),
        .Q(rand_num_output[4]),
        .R(rand_num_output0));
  FDRE #(
    .INIT(1'b0)) 
    \rand_num_output_reg[5] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[6]),
        .Q(rand_num_output[5]),
        .R(rand_num_output0));
  FDRE #(
    .INIT(1'b0)) 
    \rand_num_output_reg[6] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(rand_num_output[7]),
        .Q(rand_num_output[6]),
        .R(rand_num_output0));
  FDRE #(
    .INIT(1'b0)) 
    \rand_num_output_reg[7] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_0_out_n_0),
        .Q(rand_num_output[7]),
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
