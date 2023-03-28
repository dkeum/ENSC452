// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar 27 14:57:52 2023
// Host        : ensc-pit-w15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_rand_num_generator_0_2 -prefix
//               design_1_rand_num_generator_0_2_ design_1_rand_num_generator_0_2_sim_netlist.v
// Design      : design_1_rand_num_generator_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rand_num_generator_0_2,inverter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "inverter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_rand_num_generator_0_2
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

  wire \<const1> ;
  wire axi_clk;
  wire [31:0]m_axis_data;
  wire m_axis_ready;
  wire [31:0]s_axis_data;
  wire s_axis_ready;
  wire s_axis_valid;

  assign m_axis_valid = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  design_1_rand_num_generator_0_2_inverter inst
       (.axi_clk(axi_clk),
        .m_axis_data(m_axis_data),
        .m_axis_ready(m_axis_ready),
        .s_axis_data(s_axis_data),
        .s_axis_ready(s_axis_ready),
        .s_axis_valid(s_axis_valid));
endmodule

module design_1_rand_num_generator_0_2_inverter
   (s_axis_ready,
    m_axis_data,
    s_axis_valid,
    m_axis_ready,
    axi_clk,
    s_axis_data);
  output s_axis_ready;
  output [31:0]m_axis_data;
  input s_axis_valid;
  input m_axis_ready;
  input axi_clk;
  input [31:0]s_axis_data;

  wire axi_clk;
  wire [31:0]m_axis_data;
  wire \m_axis_data[0]_i_2_n_0 ;
  wire m_axis_ready;
  wire [0:0]p_1_in;
  wire [31:0]s_axis_data;
  wire s_axis_ready;
  wire s_axis_valid;

  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_data[0]_i_1 
       (.I0(s_axis_data[25]),
        .I1(s_axis_data[24]),
        .I2(s_axis_data[29]),
        .I3(\m_axis_data[0]_i_2_n_0 ),
        .O(p_1_in));
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_data[0]_i_2 
       (.I0(s_axis_data[1]),
        .I1(s_axis_data[2]),
        .I2(s_axis_data[31]),
        .I3(s_axis_data[0]),
        .O(\m_axis_data[0]_i_2_n_0 ));
  FDRE \m_axis_data_reg[0] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(p_1_in),
        .Q(m_axis_data[0]),
        .R(1'b0));
  FDRE \m_axis_data_reg[10] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[9]),
        .Q(m_axis_data[10]),
        .R(1'b0));
  FDRE \m_axis_data_reg[11] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[10]),
        .Q(m_axis_data[11]),
        .R(1'b0));
  FDRE \m_axis_data_reg[12] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[11]),
        .Q(m_axis_data[12]),
        .R(1'b0));
  FDRE \m_axis_data_reg[13] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[12]),
        .Q(m_axis_data[13]),
        .R(1'b0));
  FDRE \m_axis_data_reg[14] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[13]),
        .Q(m_axis_data[14]),
        .R(1'b0));
  FDRE \m_axis_data_reg[15] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[14]),
        .Q(m_axis_data[15]),
        .R(1'b0));
  FDRE \m_axis_data_reg[16] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[15]),
        .Q(m_axis_data[16]),
        .R(1'b0));
  FDRE \m_axis_data_reg[17] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[16]),
        .Q(m_axis_data[17]),
        .R(1'b0));
  FDRE \m_axis_data_reg[18] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[17]),
        .Q(m_axis_data[18]),
        .R(1'b0));
  FDRE \m_axis_data_reg[19] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[18]),
        .Q(m_axis_data[19]),
        .R(1'b0));
  FDRE \m_axis_data_reg[1] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[0]),
        .Q(m_axis_data[1]),
        .R(1'b0));
  FDRE \m_axis_data_reg[20] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[19]),
        .Q(m_axis_data[20]),
        .R(1'b0));
  FDRE \m_axis_data_reg[21] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[20]),
        .Q(m_axis_data[21]),
        .R(1'b0));
  FDRE \m_axis_data_reg[22] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[21]),
        .Q(m_axis_data[22]),
        .R(1'b0));
  FDRE \m_axis_data_reg[23] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[22]),
        .Q(m_axis_data[23]),
        .R(1'b0));
  FDRE \m_axis_data_reg[24] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[23]),
        .Q(m_axis_data[24]),
        .R(1'b0));
  FDRE \m_axis_data_reg[25] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[24]),
        .Q(m_axis_data[25]),
        .R(1'b0));
  FDRE \m_axis_data_reg[26] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[25]),
        .Q(m_axis_data[26]),
        .R(1'b0));
  FDRE \m_axis_data_reg[27] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[26]),
        .Q(m_axis_data[27]),
        .R(1'b0));
  FDRE \m_axis_data_reg[28] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[27]),
        .Q(m_axis_data[28]),
        .R(1'b0));
  FDRE \m_axis_data_reg[29] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[28]),
        .Q(m_axis_data[29]),
        .R(1'b0));
  FDRE \m_axis_data_reg[2] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[1]),
        .Q(m_axis_data[2]),
        .R(1'b0));
  FDRE \m_axis_data_reg[30] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[29]),
        .Q(m_axis_data[30]),
        .R(1'b0));
  FDRE \m_axis_data_reg[31] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[30]),
        .Q(m_axis_data[31]),
        .R(1'b0));
  FDRE \m_axis_data_reg[3] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[2]),
        .Q(m_axis_data[3]),
        .R(1'b0));
  FDRE \m_axis_data_reg[4] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[3]),
        .Q(m_axis_data[4]),
        .R(1'b0));
  FDRE \m_axis_data_reg[5] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[4]),
        .Q(m_axis_data[5]),
        .R(1'b0));
  FDRE \m_axis_data_reg[6] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[5]),
        .Q(m_axis_data[6]),
        .R(1'b0));
  FDRE \m_axis_data_reg[7] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[6]),
        .Q(m_axis_data[7]),
        .R(1'b0));
  FDRE \m_axis_data_reg[8] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[7]),
        .Q(m_axis_data[8]),
        .R(1'b0));
  FDRE \m_axis_data_reg[9] 
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(s_axis_data[8]),
        .Q(m_axis_data[9]),
        .R(1'b0));
  FDRE s_axis_ready_reg
       (.C(axi_clk),
        .CE(s_axis_valid),
        .D(m_axis_ready),
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
