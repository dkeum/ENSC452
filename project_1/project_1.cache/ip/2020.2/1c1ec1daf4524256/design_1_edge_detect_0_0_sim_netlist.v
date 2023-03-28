// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar 27 21:28:20 2023
// Host        : ensc-pit-w15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_edge_detect_0_0_sim_netlist.v
// Design      : design_1_edge_detect_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_edge_detect_0_0,edge_detect,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "edge_detect,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    din,
    edge_detected);
  input clk;
  input [7:0]din;
  output edge_detected;

  wire clk;
  wire [7:0]din;
  wire edge_detected;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect inst
       (.clk(clk),
        .din(din),
        .edge_detected(edge_detected));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect
   (edge_detected,
    din,
    clk);
  output edge_detected;
  input [7:0]din;
  input clk;

  wire clk;
  wire [7:0]din;
  wire edge_detected;
  wire edge_detected_i_i_2_n_0;
  wire edge_detected_i_i_3_n_0;
  wire p_0_in;
  wire [7:0]tmp;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    edge_detected_i_i_1
       (.I0(din[7]),
        .I1(tmp[7]),
        .I2(din[6]),
        .I3(tmp[6]),
        .I4(edge_detected_i_i_2_n_0),
        .I5(edge_detected_i_i_3_n_0),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    edge_detected_i_i_2
       (.I0(tmp[3]),
        .I1(din[3]),
        .I2(din[5]),
        .I3(tmp[5]),
        .I4(din[4]),
        .I5(tmp[4]),
        .O(edge_detected_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    edge_detected_i_i_3
       (.I0(tmp[0]),
        .I1(din[0]),
        .I2(din[2]),
        .I3(tmp[2]),
        .I4(din[1]),
        .I5(tmp[1]),
        .O(edge_detected_i_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    edge_detected_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(edge_detected),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(din[0]),
        .Q(tmp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(din[1]),
        .Q(tmp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(din[2]),
        .Q(tmp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(din[3]),
        .Q(tmp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(din[4]),
        .Q(tmp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(din[5]),
        .Q(tmp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(din[6]),
        .Q(tmp[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(din[7]),
        .Q(tmp[7]),
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
