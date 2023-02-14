// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Feb 13 16:19:16 2023
// Host        : ensc-pit-w15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dkeum/audio_tutorial/audio_tutorial/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_vga_controller_0_1/design_1_vga_controller_0_1_sim_netlist.v
// Design      : design_1_vga_controller_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vga_controller_0_1,vga_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "vga_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_vga_controller_0_1
   (VGA_R,
    VGA_G,
    VGA_B,
    VGA_HS,
    VGA_VS,
    clk,
    pixel_clk,
    rstn,
    pixel_rstn,
    fifo_rst,
    rfifo_count,
    switch_buffer,
    switch_buffer_ack,
    M_AXI_AWID,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWBURST,
    M_AXI_AWLOCK,
    M_AXI_AWCACHE,
    M_AXI_AWPROT,
    M_AXI_AWQOS,
    M_AXI_AWUSER,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WID,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BID,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARID,
    M_AXI_ARADDR,
    M_AXI_ARLEN,
    M_AXI_ARSIZE,
    M_AXI_ARBURST,
    M_AXI_ARLOCK,
    M_AXI_ARCACHE,
    M_AXI_ARPROT,
    M_AXI_ARQOS,
    M_AXI_ARUSER,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RID,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RLAST,
    M_AXI_RVALID,
    M_AXI_RREADY);
  output [3:0]VGA_R;
  output [3:0]VGA_G;
  output [3:0]VGA_B;
  output VGA_HS;
  output VGA_VS;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, ASSOCIATED_BUSIF M_AXI, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME pixel_clk, ASSOCIATED_RESET pixel_rstn, FREQ_HZ 108000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input pixel_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 pixel_rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME pixel_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input pixel_rstn;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 fifo_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input fifo_rst;
  input [7:0]rfifo_count;
  input switch_buffer;
  output switch_buffer_ack;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 3, ADDR_WIDTH 32, AWUSER_WIDTH 5, ARUSER_WIDTH 5, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [2:0]M_AXI_AWID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]M_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]M_AXI_AWLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]M_AXI_AWSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]M_AXI_AWBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]M_AXI_AWLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]M_AXI_AWCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]M_AXI_AWQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWUSER" *) output [4:0]M_AXI_AWUSER;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WID" *) output [5:0]M_AXI_WID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]M_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]M_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output M_AXI_WLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BID" *) input [2:0]M_AXI_BID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *) output [2:0]M_AXI_ARID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]M_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]M_AXI_ARLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]M_AXI_ARSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]M_AXI_ARBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]M_AXI_ARLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]M_AXI_ARCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]M_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]M_AXI_ARQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *) output [4:0]M_AXI_ARUSER;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RID" *) input [2:0]M_AXI_RID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]M_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input M_AXI_RLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output M_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]\^M_AXI_ARADDR ;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire clk;
  wire fifo_rst;
  wire pixel_clk;
  wire [7:0]rfifo_count;
  wire rstn;
  wire switch_buffer;
  wire switch_buffer_ack;

  assign M_AXI_ARADDR[31:6] = \^M_AXI_ARADDR [31:6];
  assign M_AXI_ARADDR[5] = \<const0> ;
  assign M_AXI_ARADDR[4] = \<const0> ;
  assign M_AXI_ARADDR[3] = \<const0> ;
  assign M_AXI_ARADDR[2] = \<const0> ;
  assign M_AXI_ARADDR[1] = \<const0> ;
  assign M_AXI_ARADDR[0] = \^M_AXI_ARADDR [0];
  assign M_AXI_ARBURST[1] = \<const0> ;
  assign M_AXI_ARBURST[0] = \<const1> ;
  assign M_AXI_ARCACHE[3] = \<const0> ;
  assign M_AXI_ARCACHE[2] = \<const0> ;
  assign M_AXI_ARCACHE[1] = \<const1> ;
  assign M_AXI_ARCACHE[0] = \<const1> ;
  assign M_AXI_ARID[2] = \<const0> ;
  assign M_AXI_ARID[1] = \<const0> ;
  assign M_AXI_ARID[0] = \<const0> ;
  assign M_AXI_ARLEN[3] = \<const1> ;
  assign M_AXI_ARLEN[2] = \<const1> ;
  assign M_AXI_ARLEN[1] = \<const1> ;
  assign M_AXI_ARLEN[0] = \<const1> ;
  assign M_AXI_ARLOCK[1] = \<const0> ;
  assign M_AXI_ARLOCK[0] = \<const0> ;
  assign M_AXI_ARPROT[2] = \<const0> ;
  assign M_AXI_ARPROT[1] = \<const0> ;
  assign M_AXI_ARPROT[0] = \<const0> ;
  assign M_AXI_ARQOS[3] = \<const0> ;
  assign M_AXI_ARQOS[2] = \<const0> ;
  assign M_AXI_ARQOS[1] = \<const0> ;
  assign M_AXI_ARQOS[0] = \<const0> ;
  assign M_AXI_ARSIZE[2] = \<const0> ;
  assign M_AXI_ARSIZE[1] = \<const1> ;
  assign M_AXI_ARSIZE[0] = \<const1> ;
  assign M_AXI_ARUSER[4] = \<const0> ;
  assign M_AXI_ARUSER[3] = \<const0> ;
  assign M_AXI_ARUSER[2] = \<const0> ;
  assign M_AXI_ARUSER[1] = \<const0> ;
  assign M_AXI_ARUSER[0] = \<const0> ;
  assign M_AXI_AWADDR[31] = \<const0> ;
  assign M_AXI_AWADDR[30] = \<const0> ;
  assign M_AXI_AWADDR[29] = \<const0> ;
  assign M_AXI_AWADDR[28] = \<const0> ;
  assign M_AXI_AWADDR[27] = \<const0> ;
  assign M_AXI_AWADDR[26] = \<const0> ;
  assign M_AXI_AWADDR[25] = \<const0> ;
  assign M_AXI_AWADDR[24] = \<const0> ;
  assign M_AXI_AWADDR[23] = \<const0> ;
  assign M_AXI_AWADDR[22] = \<const0> ;
  assign M_AXI_AWADDR[21] = \<const0> ;
  assign M_AXI_AWADDR[20] = \<const0> ;
  assign M_AXI_AWADDR[19] = \<const0> ;
  assign M_AXI_AWADDR[18] = \<const0> ;
  assign M_AXI_AWADDR[17] = \<const0> ;
  assign M_AXI_AWADDR[16] = \<const0> ;
  assign M_AXI_AWADDR[15] = \<const0> ;
  assign M_AXI_AWADDR[14] = \<const0> ;
  assign M_AXI_AWADDR[13] = \<const0> ;
  assign M_AXI_AWADDR[12] = \<const0> ;
  assign M_AXI_AWADDR[11] = \<const0> ;
  assign M_AXI_AWADDR[10] = \<const0> ;
  assign M_AXI_AWADDR[9] = \<const0> ;
  assign M_AXI_AWADDR[8] = \<const0> ;
  assign M_AXI_AWADDR[7] = \<const0> ;
  assign M_AXI_AWADDR[6] = \<const0> ;
  assign M_AXI_AWADDR[5] = \<const0> ;
  assign M_AXI_AWADDR[4] = \<const0> ;
  assign M_AXI_AWADDR[3] = \<const0> ;
  assign M_AXI_AWADDR[2] = \<const0> ;
  assign M_AXI_AWADDR[1] = \<const0> ;
  assign M_AXI_AWADDR[0] = \<const0> ;
  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const0> ;
  assign M_AXI_AWCACHE[3] = \<const0> ;
  assign M_AXI_AWCACHE[2] = \<const0> ;
  assign M_AXI_AWCACHE[1] = \<const0> ;
  assign M_AXI_AWCACHE[0] = \<const0> ;
  assign M_AXI_AWID[2] = \<const0> ;
  assign M_AXI_AWID[1] = \<const0> ;
  assign M_AXI_AWID[0] = \<const0> ;
  assign M_AXI_AWLEN[3] = \<const0> ;
  assign M_AXI_AWLEN[2] = \<const0> ;
  assign M_AXI_AWLEN[1] = \<const0> ;
  assign M_AXI_AWLEN[0] = \<const0> ;
  assign M_AXI_AWLOCK[1] = \<const0> ;
  assign M_AXI_AWLOCK[0] = \<const0> ;
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_AWQOS[3] = \<const0> ;
  assign M_AXI_AWQOS[2] = \<const0> ;
  assign M_AXI_AWQOS[1] = \<const0> ;
  assign M_AXI_AWQOS[0] = \<const0> ;
  assign M_AXI_AWSIZE[2] = \<const0> ;
  assign M_AXI_AWSIZE[1] = \<const0> ;
  assign M_AXI_AWSIZE[0] = \<const0> ;
  assign M_AXI_AWUSER[4] = \<const0> ;
  assign M_AXI_AWUSER[3] = \<const0> ;
  assign M_AXI_AWUSER[2] = \<const0> ;
  assign M_AXI_AWUSER[1] = \<const0> ;
  assign M_AXI_AWUSER[0] = \<const0> ;
  assign M_AXI_AWVALID = \<const0> ;
  assign M_AXI_BREADY = \<const0> ;
  assign M_AXI_WDATA[63] = \<const0> ;
  assign M_AXI_WDATA[62] = \<const0> ;
  assign M_AXI_WDATA[61] = \<const0> ;
  assign M_AXI_WDATA[60] = \<const0> ;
  assign M_AXI_WDATA[59] = \<const0> ;
  assign M_AXI_WDATA[58] = \<const0> ;
  assign M_AXI_WDATA[57] = \<const0> ;
  assign M_AXI_WDATA[56] = \<const0> ;
  assign M_AXI_WDATA[55] = \<const0> ;
  assign M_AXI_WDATA[54] = \<const0> ;
  assign M_AXI_WDATA[53] = \<const0> ;
  assign M_AXI_WDATA[52] = \<const0> ;
  assign M_AXI_WDATA[51] = \<const0> ;
  assign M_AXI_WDATA[50] = \<const0> ;
  assign M_AXI_WDATA[49] = \<const0> ;
  assign M_AXI_WDATA[48] = \<const0> ;
  assign M_AXI_WDATA[47] = \<const0> ;
  assign M_AXI_WDATA[46] = \<const0> ;
  assign M_AXI_WDATA[45] = \<const0> ;
  assign M_AXI_WDATA[44] = \<const0> ;
  assign M_AXI_WDATA[43] = \<const0> ;
  assign M_AXI_WDATA[42] = \<const0> ;
  assign M_AXI_WDATA[41] = \<const0> ;
  assign M_AXI_WDATA[40] = \<const0> ;
  assign M_AXI_WDATA[39] = \<const0> ;
  assign M_AXI_WDATA[38] = \<const0> ;
  assign M_AXI_WDATA[37] = \<const0> ;
  assign M_AXI_WDATA[36] = \<const0> ;
  assign M_AXI_WDATA[35] = \<const0> ;
  assign M_AXI_WDATA[34] = \<const0> ;
  assign M_AXI_WDATA[33] = \<const0> ;
  assign M_AXI_WDATA[32] = \<const0> ;
  assign M_AXI_WDATA[31] = \<const0> ;
  assign M_AXI_WDATA[30] = \<const0> ;
  assign M_AXI_WDATA[29] = \<const0> ;
  assign M_AXI_WDATA[28] = \<const0> ;
  assign M_AXI_WDATA[27] = \<const0> ;
  assign M_AXI_WDATA[26] = \<const0> ;
  assign M_AXI_WDATA[25] = \<const0> ;
  assign M_AXI_WDATA[24] = \<const0> ;
  assign M_AXI_WDATA[23] = \<const0> ;
  assign M_AXI_WDATA[22] = \<const0> ;
  assign M_AXI_WDATA[21] = \<const0> ;
  assign M_AXI_WDATA[20] = \<const0> ;
  assign M_AXI_WDATA[19] = \<const0> ;
  assign M_AXI_WDATA[18] = \<const0> ;
  assign M_AXI_WDATA[17] = \<const0> ;
  assign M_AXI_WDATA[16] = \<const0> ;
  assign M_AXI_WDATA[15] = \<const0> ;
  assign M_AXI_WDATA[14] = \<const0> ;
  assign M_AXI_WDATA[13] = \<const0> ;
  assign M_AXI_WDATA[12] = \<const0> ;
  assign M_AXI_WDATA[11] = \<const0> ;
  assign M_AXI_WDATA[10] = \<const0> ;
  assign M_AXI_WDATA[9] = \<const0> ;
  assign M_AXI_WDATA[8] = \<const0> ;
  assign M_AXI_WDATA[7] = \<const0> ;
  assign M_AXI_WDATA[6] = \<const0> ;
  assign M_AXI_WDATA[5] = \<const0> ;
  assign M_AXI_WDATA[4] = \<const0> ;
  assign M_AXI_WDATA[3] = \<const0> ;
  assign M_AXI_WDATA[2] = \<const0> ;
  assign M_AXI_WDATA[1] = \<const0> ;
  assign M_AXI_WDATA[0] = \<const0> ;
  assign M_AXI_WID[5] = \<const0> ;
  assign M_AXI_WID[4] = \<const0> ;
  assign M_AXI_WID[3] = \<const0> ;
  assign M_AXI_WID[2] = \<const0> ;
  assign M_AXI_WID[1] = \<const0> ;
  assign M_AXI_WID[0] = \<const0> ;
  assign M_AXI_WLAST = \<const0> ;
  assign M_AXI_WSTRB[7] = \<const0> ;
  assign M_AXI_WSTRB[6] = \<const0> ;
  assign M_AXI_WSTRB[5] = \<const0> ;
  assign M_AXI_WSTRB[4] = \<const0> ;
  assign M_AXI_WSTRB[3] = \<const0> ;
  assign M_AXI_WSTRB[2] = \<const0> ;
  assign M_AXI_WSTRB[1] = \<const0> ;
  assign M_AXI_WSTRB[0] = \<const0> ;
  assign M_AXI_WVALID = \<const0> ;
  assign VGA_B[3] = \<const0> ;
  assign VGA_B[2] = \<const0> ;
  assign VGA_B[1] = \<const0> ;
  assign VGA_B[0] = \<const0> ;
  assign VGA_G[3] = \<const0> ;
  assign VGA_G[2] = \<const0> ;
  assign VGA_G[1] = \<const0> ;
  assign VGA_G[0] = \<const0> ;
  assign VGA_HS = \<const1> ;
  assign VGA_R[3] = \<const0> ;
  assign VGA_R[2] = \<const0> ;
  assign VGA_R[1] = \<const0> ;
  assign VGA_R[0] = \<const0> ;
  assign VGA_VS = \<const1> ;
  GND GND
       (.G(\<const0> ));
  design_1_vga_controller_0_1_vga_controller U0
       (.M_AXI_ARADDR({\^M_AXI_ARADDR [31:6],\^M_AXI_ARADDR [0]}),
        .M_AXI_ARREADY(M_AXI_ARREADY),
        .M_AXI_ARVALID(M_AXI_ARVALID),
        .M_AXI_RREADY(M_AXI_RREADY),
        .M_AXI_RVALID(M_AXI_RVALID),
        .clk(clk),
        .fifo_rst(fifo_rst),
        .pixel_clk(pixel_clk),
        .rfifo_count(rfifo_count),
        .rstn(rstn),
        .switch_buffer(switch_buffer),
        .switch_buffer_ack_reg_reg_0(switch_buffer_ack));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) (* ORIG_REF_NAME = "fifo_generator_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
module design_1_vga_controller_0_1_fifo_generator_0
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    overflow,
    empty,
    almost_empty,
    underflow,
    prog_full);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  output overflow;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output underflow;
  output prog_full;

  wire \<const0> ;
  wire prog_full;
  wire rd_clk;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_empty_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_dout_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [12:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23] = \<const0> ;
  assign dout[22] = \<const0> ;
  assign dout[21] = \<const0> ;
  assign dout[20] = \<const0> ;
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign underflow = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "64" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "1" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "1" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "3000" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2000" *) 
  (* C_PROG_FULL_TYPE = "2" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "13" *) 
  (* C_RD_DEPTH = "8192" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "13" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_vga_controller_0_1_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_U0_dout_UNCONNECTED[31:0]),
        .empty(NLW_U0_empty_UNCONNECTED),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[12:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "vga_controller" *) 
module design_1_vga_controller_0_1_vga_controller
   (M_AXI_ARADDR,
    M_AXI_ARVALID,
    M_AXI_RREADY,
    switch_buffer_ack_reg_reg_0,
    M_AXI_ARREADY,
    fifo_rst,
    clk,
    pixel_clk,
    rstn,
    M_AXI_RVALID,
    rfifo_count,
    switch_buffer);
  output [26:0]M_AXI_ARADDR;
  output M_AXI_ARVALID;
  output M_AXI_RREADY;
  output switch_buffer_ack_reg_reg_0;
  input M_AXI_ARREADY;
  input fifo_rst;
  input clk;
  input pixel_clk;
  input rstn;
  input M_AXI_RVALID;
  input [7:0]rfifo_count;
  input switch_buffer;

  wire ARVALID_reg;
  wire ARVALID_reg_i_1_n_0;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire [26:0]M_AXI_ARADDR;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire clk;
  wire [24:0]current_base_addr;
  wire \current_base_addr[24]_i_1_n_0 ;
  wire [31:0]current_max_addr;
  wire [24:0]data;
  wire fifo_rst;
  wire flush_arvalid;
  wire flush_arvalid_i_1_n_0;
  wire flush_done;
  wire flush_done_i_1_n_0;
  wire flush_rready;
  wire flush_rready_i_1_n_0;
  wire [24:0]old_base_addr;
  wire old_base_addr_0;
  wire [31:0]old_max_addr;
  wire pixel_clk;
  wire prog_full;
  wire rd_addr_reg1_carry__0_i_1_n_0;
  wire rd_addr_reg1_carry__0_i_2_n_0;
  wire rd_addr_reg1_carry__0_i_3_n_0;
  wire rd_addr_reg1_carry__0_i_4_n_0;
  wire rd_addr_reg1_carry__0_i_5_n_0;
  wire rd_addr_reg1_carry__0_i_6_n_0;
  wire rd_addr_reg1_carry__0_i_7_n_0;
  wire rd_addr_reg1_carry__0_i_8_n_0;
  wire rd_addr_reg1_carry__0_n_0;
  wire rd_addr_reg1_carry__0_n_1;
  wire rd_addr_reg1_carry__0_n_2;
  wire rd_addr_reg1_carry__0_n_3;
  wire rd_addr_reg1_carry__1_i_1_n_0;
  wire rd_addr_reg1_carry__1_i_2_n_0;
  wire rd_addr_reg1_carry__1_i_3_n_0;
  wire rd_addr_reg1_carry__1_i_4_n_0;
  wire rd_addr_reg1_carry__1_i_5_n_0;
  wire rd_addr_reg1_carry__1_i_6_n_0;
  wire rd_addr_reg1_carry__1_i_7_n_0;
  wire rd_addr_reg1_carry__1_i_8_n_0;
  wire rd_addr_reg1_carry__1_n_0;
  wire rd_addr_reg1_carry__1_n_1;
  wire rd_addr_reg1_carry__1_n_2;
  wire rd_addr_reg1_carry__1_n_3;
  wire rd_addr_reg1_carry__2_i_1_n_0;
  wire rd_addr_reg1_carry__2_i_2_n_0;
  wire rd_addr_reg1_carry__2_i_3_n_0;
  wire rd_addr_reg1_carry__2_i_4_n_0;
  wire rd_addr_reg1_carry__2_i_5_n_0;
  wire rd_addr_reg1_carry__2_i_6_n_0;
  wire rd_addr_reg1_carry__2_i_7_n_0;
  wire rd_addr_reg1_carry__2_i_8_n_0;
  wire rd_addr_reg1_carry__2_n_0;
  wire rd_addr_reg1_carry__2_n_1;
  wire rd_addr_reg1_carry__2_n_2;
  wire rd_addr_reg1_carry__2_n_3;
  wire rd_addr_reg1_carry_i_1_n_0;
  wire rd_addr_reg1_carry_i_2_n_0;
  wire rd_addr_reg1_carry_i_3_n_0;
  wire rd_addr_reg1_carry_i_4_n_0;
  wire rd_addr_reg1_carry_n_0;
  wire rd_addr_reg1_carry_n_1;
  wire rd_addr_reg1_carry_n_2;
  wire rd_addr_reg1_carry_n_3;
  wire \rd_addr_reg[0]_i_1_n_0 ;
  wire \rd_addr_reg[13]_i_2_n_0 ;
  wire \rd_addr_reg[13]_i_3_n_0 ;
  wire \rd_addr_reg[13]_i_4_n_0 ;
  wire \rd_addr_reg[13]_i_5_n_0 ;
  wire \rd_addr_reg[17]_i_2_n_0 ;
  wire \rd_addr_reg[17]_i_3_n_0 ;
  wire \rd_addr_reg[17]_i_4_n_0 ;
  wire \rd_addr_reg[17]_i_5_n_0 ;
  wire \rd_addr_reg[21]_i_2_n_0 ;
  wire \rd_addr_reg[21]_i_3_n_0 ;
  wire \rd_addr_reg[21]_i_4_n_0 ;
  wire \rd_addr_reg[21]_i_5_n_0 ;
  wire \rd_addr_reg[25]_i_2_n_0 ;
  wire \rd_addr_reg[25]_i_3_n_0 ;
  wire \rd_addr_reg[25]_i_4_n_0 ;
  wire \rd_addr_reg[25]_i_5_n_0 ;
  wire \rd_addr_reg[29]_i_2_n_0 ;
  wire \rd_addr_reg[29]_i_3_n_0 ;
  wire \rd_addr_reg[29]_i_4_n_0 ;
  wire \rd_addr_reg[29]_i_5_n_0 ;
  wire \rd_addr_reg[31]_i_1_n_0 ;
  wire \rd_addr_reg[31]_i_3_n_0 ;
  wire \rd_addr_reg[31]_i_4_n_0 ;
  wire \rd_addr_reg[9]_i_2_n_0 ;
  wire \rd_addr_reg[9]_i_3_n_0 ;
  wire \rd_addr_reg[9]_i_4_n_0 ;
  wire \rd_addr_reg[9]_i_5_n_0 ;
  wire \rd_addr_reg_reg[13]_i_1_n_0 ;
  wire \rd_addr_reg_reg[13]_i_1_n_1 ;
  wire \rd_addr_reg_reg[13]_i_1_n_2 ;
  wire \rd_addr_reg_reg[13]_i_1_n_3 ;
  wire \rd_addr_reg_reg[13]_i_1_n_4 ;
  wire \rd_addr_reg_reg[13]_i_1_n_5 ;
  wire \rd_addr_reg_reg[13]_i_1_n_6 ;
  wire \rd_addr_reg_reg[13]_i_1_n_7 ;
  wire \rd_addr_reg_reg[17]_i_1_n_0 ;
  wire \rd_addr_reg_reg[17]_i_1_n_1 ;
  wire \rd_addr_reg_reg[17]_i_1_n_2 ;
  wire \rd_addr_reg_reg[17]_i_1_n_3 ;
  wire \rd_addr_reg_reg[17]_i_1_n_4 ;
  wire \rd_addr_reg_reg[17]_i_1_n_5 ;
  wire \rd_addr_reg_reg[17]_i_1_n_6 ;
  wire \rd_addr_reg_reg[17]_i_1_n_7 ;
  wire \rd_addr_reg_reg[21]_i_1_n_0 ;
  wire \rd_addr_reg_reg[21]_i_1_n_1 ;
  wire \rd_addr_reg_reg[21]_i_1_n_2 ;
  wire \rd_addr_reg_reg[21]_i_1_n_3 ;
  wire \rd_addr_reg_reg[21]_i_1_n_4 ;
  wire \rd_addr_reg_reg[21]_i_1_n_5 ;
  wire \rd_addr_reg_reg[21]_i_1_n_6 ;
  wire \rd_addr_reg_reg[21]_i_1_n_7 ;
  wire \rd_addr_reg_reg[25]_i_1_n_0 ;
  wire \rd_addr_reg_reg[25]_i_1_n_1 ;
  wire \rd_addr_reg_reg[25]_i_1_n_2 ;
  wire \rd_addr_reg_reg[25]_i_1_n_3 ;
  wire \rd_addr_reg_reg[25]_i_1_n_4 ;
  wire \rd_addr_reg_reg[25]_i_1_n_5 ;
  wire \rd_addr_reg_reg[25]_i_1_n_6 ;
  wire \rd_addr_reg_reg[25]_i_1_n_7 ;
  wire \rd_addr_reg_reg[29]_i_1_n_0 ;
  wire \rd_addr_reg_reg[29]_i_1_n_1 ;
  wire \rd_addr_reg_reg[29]_i_1_n_2 ;
  wire \rd_addr_reg_reg[29]_i_1_n_3 ;
  wire \rd_addr_reg_reg[29]_i_1_n_4 ;
  wire \rd_addr_reg_reg[29]_i_1_n_5 ;
  wire \rd_addr_reg_reg[29]_i_1_n_6 ;
  wire \rd_addr_reg_reg[29]_i_1_n_7 ;
  wire \rd_addr_reg_reg[31]_i_2_n_3 ;
  wire \rd_addr_reg_reg[31]_i_2_n_6 ;
  wire \rd_addr_reg_reg[31]_i_2_n_7 ;
  wire \rd_addr_reg_reg[9]_i_1_n_0 ;
  wire \rd_addr_reg_reg[9]_i_1_n_1 ;
  wire \rd_addr_reg_reg[9]_i_1_n_2 ;
  wire \rd_addr_reg_reg[9]_i_1_n_3 ;
  wire \rd_addr_reg_reg[9]_i_1_n_4 ;
  wire \rd_addr_reg_reg[9]_i_1_n_5 ;
  wire \rd_addr_reg_reg[9]_i_1_n_6 ;
  wire \rd_addr_reg_reg[9]_i_1_n_7 ;
  wire [7:0]rfifo_count;
  wire rready;
  wire rready_i_1_n_0;
  wire rstn;
  wire [2:0]state;
  wire switch_buffer;
  wire switch_buffer_ack_reg_i_1_n_0;
  wire switch_buffer_ack_reg_reg_0;
  wire switch_buffer_reg1;
  wire switch_buffer_reg1_i_1_n_0;
  wire switch_buffer_reg2;
  wire switch_buffer_reg2_i_1_n_0;
  wire switch_buffer_reg_out;
  wire switch_buffer_reg_out_i_1_n_0;
  wire wr_en;
  wire wr_en_reg_i_1_n_0;
  wire NLW_fifo_almost_empty_UNCONNECTED;
  wire NLW_fifo_almost_full_UNCONNECTED;
  wire NLW_fifo_empty_UNCONNECTED;
  wire NLW_fifo_full_UNCONNECTED;
  wire NLW_fifo_overflow_UNCONNECTED;
  wire NLW_fifo_underflow_UNCONNECTED;
  wire [31:0]NLW_fifo_dout_UNCONNECTED;
  wire [3:0]NLW_rd_addr_reg1_carry_O_UNCONNECTED;
  wire [3:0]NLW_rd_addr_reg1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rd_addr_reg1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rd_addr_reg1_carry__2_O_UNCONNECTED;
  wire [3:1]\NLW_rd_addr_reg_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_rd_addr_reg_reg[31]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARVALID_reg_i_1
       (.I0(flush_done),
        .I1(rstn),
        .O(ARVALID_reg_i_1_n_0));
  FDRE ARVALID_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(ARVALID_reg_i_1_n_0),
        .Q(ARVALID_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2600)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state[2]),
        .I3(rstn),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h262A0000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(rstn),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h622A0000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(rstn),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEABAA)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .I5(\FSM_sequential_state[2]_i_8_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[1]),
        .I1(M_AXI_ARREADY),
        .I2(state[2]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(rfifo_count[1]),
        .I1(rfifo_count[0]),
        .I2(rfifo_count[3]),
        .I3(rfifo_count[2]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(rfifo_count[5]),
        .I1(rfifo_count[4]),
        .I2(rfifo_count[7]),
        .I3(rfifo_count[6]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(M_AXI_RVALID),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "st1_rst:000,st2_sendreq:001,st3_obtain_datacount:010,st4_rvalid:011,st5_done:100," *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "st1_rst:000,st2_sendreq:001,st3_obtain_datacount:010,st4_rvalid:011,st5_done:100," *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "st1_rst:000,st2_sendreq:001,st3_obtain_datacount:010,st4_rvalid:011,st5_done:100," *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    M_AXI_ARVALID_INST_0
       (.I0(ARVALID_reg),
        .I1(flush_done),
        .I2(flush_arvalid),
        .O(M_AXI_ARVALID));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    M_AXI_RREADY_INST_0
       (.I0(rready),
        .I1(flush_done),
        .I2(flush_rready),
        .O(M_AXI_RREADY));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[0]_i_1 
       (.I0(current_base_addr[0]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[0]),
        .O(data[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[12]_i_1 
       (.I0(current_base_addr[12]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[12]),
        .O(data[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[15]_i_1 
       (.I0(current_base_addr[15]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[15]),
        .O(data[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[17]_i_1 
       (.I0(current_base_addr[17]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[17]),
        .O(data[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[18]_i_1 
       (.I0(current_base_addr[18]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[18]),
        .O(data[18]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[19]_i_1 
       (.I0(current_base_addr[19]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[19]),
        .O(data[19]));
  LUT2 #(
    .INIT(4'h2)) 
    \current_base_addr[24]_i_1 
       (.I0(M_AXI_ARREADY),
        .I1(rd_addr_reg1_carry__2_n_0),
        .O(\current_base_addr[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[24]_i_2 
       (.I0(current_base_addr[24]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[24]),
        .O(data[24]));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[0] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[0]),
        .Q(current_base_addr[0]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[12] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[12]),
        .Q(current_base_addr[12]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[15] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[15]),
        .Q(current_base_addr[15]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[17] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[17]),
        .Q(current_base_addr[17]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[18] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[18]),
        .Q(current_base_addr[18]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[19] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[19]),
        .Q(current_base_addr[19]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[24] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[24]),
        .Q(current_base_addr[24]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_max_addr_reg[0] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[0]),
        .Q(current_max_addr[0]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[12] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[12]),
        .Q(current_max_addr[12]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[13] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[13]),
        .Q(current_max_addr[13]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[14] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[14]),
        .Q(current_max_addr[14]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[16] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[16]),
        .Q(current_max_addr[16]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[20] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[20]),
        .Q(current_max_addr[20]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[21] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[21]),
        .Q(current_max_addr[21]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[22] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[22]),
        .Q(current_max_addr[22]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[23] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[23]),
        .Q(current_max_addr[23]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[25] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[25]),
        .Q(current_max_addr[25]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[26] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[26]),
        .Q(current_max_addr[26]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[27] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[27]),
        .Q(current_max_addr[27]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[28] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[28]),
        .Q(current_max_addr[28]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[29] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[29]),
        .Q(current_max_addr[29]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[30] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[30]),
        .Q(current_max_addr[30]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[31] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(old_max_addr[31]),
        .Q(current_max_addr[31]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
  design_1_vga_controller_0_1_fifo_generator_0 fifo
       (.almost_empty(NLW_fifo_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_almost_full_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_fifo_dout_UNCONNECTED[31:0]),
        .empty(NLW_fifo_empty_UNCONNECTED),
        .full(NLW_fifo_full_UNCONNECTED),
        .overflow(NLW_fifo_overflow_UNCONNECTED),
        .prog_full(prog_full),
        .rd_clk(pixel_clk),
        .rd_en(1'b0),
        .rst(fifo_rst),
        .underflow(NLW_fifo_underflow_UNCONNECTED),
        .wr_clk(clk),
        .wr_en(wr_en));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    flush_arvalid_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(rstn),
        .I4(flush_arvalid),
        .O(flush_arvalid_i_1_n_0));
  FDRE flush_arvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(flush_arvalid_i_1_n_0),
        .Q(flush_arvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    flush_done_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(rstn),
        .I4(flush_done),
        .O(flush_done_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    flush_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(flush_done_i_1_n_0),
        .Q(flush_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h08FF0800)) 
    flush_rready_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(rstn),
        .I4(flush_rready),
        .O(flush_rready_i_1_n_0));
  FDRE flush_rready_reg
       (.C(clk),
        .CE(1'b1),
        .D(flush_rready_i_1_n_0),
        .Q(flush_rready),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[0] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_base_addr[0]),
        .Q(old_base_addr[0]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[12] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_base_addr[12]),
        .Q(old_base_addr[12]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[15] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_base_addr[15]),
        .Q(old_base_addr[15]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[17] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_base_addr[17]),
        .Q(old_base_addr[17]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[18] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_base_addr[18]),
        .Q(old_base_addr[18]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[19] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_base_addr[19]),
        .Q(old_base_addr[19]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[24] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_base_addr[24]),
        .Q(old_base_addr[24]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \old_max_addr[31]_i_1 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(M_AXI_ARREADY),
        .O(old_base_addr_0));
  FDSE #(
    .INIT(1'b1)) 
    \old_max_addr_reg[0] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[0]),
        .Q(old_max_addr[0]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[12] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[12]),
        .Q(old_max_addr[12]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[13] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[13]),
        .Q(old_max_addr[13]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[14] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[14]),
        .Q(old_max_addr[14]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[16] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[16]),
        .Q(old_max_addr[16]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[20] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[20]),
        .Q(old_max_addr[20]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[21] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[21]),
        .Q(old_max_addr[21]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[22] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[22]),
        .Q(old_max_addr[22]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[23] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[23]),
        .Q(old_max_addr[23]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[25] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[25]),
        .Q(old_max_addr[25]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[26] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[26]),
        .Q(old_max_addr[26]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[27] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[27]),
        .Q(old_max_addr[27]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[28] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[28]),
        .Q(old_max_addr[28]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[29] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[29]),
        .Q(old_max_addr[29]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[30] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[30]),
        .Q(old_max_addr[30]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[31] 
       (.C(clk),
        .CE(old_base_addr_0),
        .D(current_max_addr[31]),
        .Q(old_max_addr[31]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_addr_reg1_carry
       (.CI(1'b0),
        .CO({rd_addr_reg1_carry_n_0,rd_addr_reg1_carry_n_1,rd_addr_reg1_carry_n_2,rd_addr_reg1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rd_addr_reg1_carry_i_1_n_0,1'b0,1'b0,rd_addr_reg1_carry_i_2_n_0}),
        .O(NLW_rd_addr_reg1_carry_O_UNCONNECTED[3:0]),
        .S({rd_addr_reg1_carry_i_3_n_0,1'b1,1'b1,rd_addr_reg1_carry_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_addr_reg1_carry__0
       (.CI(rd_addr_reg1_carry_n_0),
        .CO({rd_addr_reg1_carry__0_n_0,rd_addr_reg1_carry__0_n_1,rd_addr_reg1_carry__0_n_2,rd_addr_reg1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({rd_addr_reg1_carry__0_i_1_n_0,rd_addr_reg1_carry__0_i_2_n_0,rd_addr_reg1_carry__0_i_3_n_0,rd_addr_reg1_carry__0_i_4_n_0}),
        .O(NLW_rd_addr_reg1_carry__0_O_UNCONNECTED[3:0]),
        .S({rd_addr_reg1_carry__0_i_5_n_0,rd_addr_reg1_carry__0_i_6_n_0,rd_addr_reg1_carry__0_i_7_n_0,rd_addr_reg1_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h75)) 
    rd_addr_reg1_carry__0_i_1
       (.I0(M_AXI_ARADDR[10]),
        .I1(M_AXI_ARADDR[9]),
        .I2(current_max_addr[14]),
        .O(rd_addr_reg1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    rd_addr_reg1_carry__0_i_2
       (.I0(current_max_addr[13]),
        .I1(M_AXI_ARADDR[8]),
        .I2(current_max_addr[12]),
        .I3(M_AXI_ARADDR[7]),
        .O(rd_addr_reg1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    rd_addr_reg1_carry__0_i_3
       (.I0(M_AXI_ARADDR[6]),
        .I1(M_AXI_ARADDR[5]),
        .O(rd_addr_reg1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    rd_addr_reg1_carry__0_i_4
       (.I0(M_AXI_ARADDR[4]),
        .I1(M_AXI_ARADDR[3]),
        .O(rd_addr_reg1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    rd_addr_reg1_carry__0_i_5
       (.I0(M_AXI_ARADDR[10]),
        .I1(current_max_addr[14]),
        .I2(M_AXI_ARADDR[9]),
        .O(rd_addr_reg1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_addr_reg1_carry__0_i_6
       (.I0(current_max_addr[13]),
        .I1(M_AXI_ARADDR[8]),
        .I2(current_max_addr[12]),
        .I3(M_AXI_ARADDR[7]),
        .O(rd_addr_reg1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rd_addr_reg1_carry__0_i_7
       (.I0(M_AXI_ARADDR[5]),
        .I1(M_AXI_ARADDR[6]),
        .O(rd_addr_reg1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rd_addr_reg1_carry__0_i_8
       (.I0(M_AXI_ARADDR[3]),
        .I1(M_AXI_ARADDR[4]),
        .O(rd_addr_reg1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_addr_reg1_carry__1
       (.CI(rd_addr_reg1_carry__0_n_0),
        .CO({rd_addr_reg1_carry__1_n_0,rd_addr_reg1_carry__1_n_1,rd_addr_reg1_carry__1_n_2,rd_addr_reg1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({rd_addr_reg1_carry__1_i_1_n_0,rd_addr_reg1_carry__1_i_2_n_0,rd_addr_reg1_carry__1_i_3_n_0,rd_addr_reg1_carry__1_i_4_n_0}),
        .O(NLW_rd_addr_reg1_carry__1_O_UNCONNECTED[3:0]),
        .S({rd_addr_reg1_carry__1_i_5_n_0,rd_addr_reg1_carry__1_i_6_n_0,rd_addr_reg1_carry__1_i_7_n_0,rd_addr_reg1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    rd_addr_reg1_carry__1_i_1
       (.I0(current_max_addr[23]),
        .I1(M_AXI_ARADDR[18]),
        .I2(current_max_addr[22]),
        .I3(M_AXI_ARADDR[17]),
        .O(rd_addr_reg1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    rd_addr_reg1_carry__1_i_2
       (.I0(current_max_addr[21]),
        .I1(M_AXI_ARADDR[16]),
        .I2(current_max_addr[20]),
        .I3(M_AXI_ARADDR[15]),
        .O(rd_addr_reg1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    rd_addr_reg1_carry__1_i_3
       (.I0(M_AXI_ARADDR[14]),
        .I1(M_AXI_ARADDR[13]),
        .O(rd_addr_reg1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h75)) 
    rd_addr_reg1_carry__1_i_4
       (.I0(M_AXI_ARADDR[12]),
        .I1(M_AXI_ARADDR[11]),
        .I2(current_max_addr[16]),
        .O(rd_addr_reg1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_addr_reg1_carry__1_i_5
       (.I0(current_max_addr[23]),
        .I1(M_AXI_ARADDR[18]),
        .I2(current_max_addr[22]),
        .I3(M_AXI_ARADDR[17]),
        .O(rd_addr_reg1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_addr_reg1_carry__1_i_6
       (.I0(current_max_addr[21]),
        .I1(M_AXI_ARADDR[16]),
        .I2(current_max_addr[20]),
        .I3(M_AXI_ARADDR[15]),
        .O(rd_addr_reg1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rd_addr_reg1_carry__1_i_7
       (.I0(M_AXI_ARADDR[13]),
        .I1(M_AXI_ARADDR[14]),
        .O(rd_addr_reg1_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    rd_addr_reg1_carry__1_i_8
       (.I0(M_AXI_ARADDR[12]),
        .I1(current_max_addr[16]),
        .I2(M_AXI_ARADDR[11]),
        .O(rd_addr_reg1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_addr_reg1_carry__2
       (.CI(rd_addr_reg1_carry__1_n_0),
        .CO({rd_addr_reg1_carry__2_n_0,rd_addr_reg1_carry__2_n_1,rd_addr_reg1_carry__2_n_2,rd_addr_reg1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({rd_addr_reg1_carry__2_i_1_n_0,rd_addr_reg1_carry__2_i_2_n_0,rd_addr_reg1_carry__2_i_3_n_0,rd_addr_reg1_carry__2_i_4_n_0}),
        .O(NLW_rd_addr_reg1_carry__2_O_UNCONNECTED[3:0]),
        .S({rd_addr_reg1_carry__2_i_5_n_0,rd_addr_reg1_carry__2_i_6_n_0,rd_addr_reg1_carry__2_i_7_n_0,rd_addr_reg1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    rd_addr_reg1_carry__2_i_1
       (.I0(M_AXI_ARADDR[26]),
        .I1(current_max_addr[31]),
        .I2(current_max_addr[30]),
        .I3(M_AXI_ARADDR[25]),
        .O(rd_addr_reg1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    rd_addr_reg1_carry__2_i_2
       (.I0(current_max_addr[29]),
        .I1(M_AXI_ARADDR[24]),
        .I2(current_max_addr[28]),
        .I3(M_AXI_ARADDR[23]),
        .O(rd_addr_reg1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    rd_addr_reg1_carry__2_i_3
       (.I0(current_max_addr[27]),
        .I1(M_AXI_ARADDR[22]),
        .I2(current_max_addr[26]),
        .I3(M_AXI_ARADDR[21]),
        .O(rd_addr_reg1_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h2B)) 
    rd_addr_reg1_carry__2_i_4
       (.I0(current_max_addr[25]),
        .I1(M_AXI_ARADDR[20]),
        .I2(M_AXI_ARADDR[19]),
        .O(rd_addr_reg1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_addr_reg1_carry__2_i_5
       (.I0(current_max_addr[31]),
        .I1(M_AXI_ARADDR[26]),
        .I2(current_max_addr[30]),
        .I3(M_AXI_ARADDR[25]),
        .O(rd_addr_reg1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_addr_reg1_carry__2_i_6
       (.I0(current_max_addr[29]),
        .I1(M_AXI_ARADDR[24]),
        .I2(current_max_addr[28]),
        .I3(M_AXI_ARADDR[23]),
        .O(rd_addr_reg1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_addr_reg1_carry__2_i_7
       (.I0(current_max_addr[27]),
        .I1(M_AXI_ARADDR[22]),
        .I2(current_max_addr[26]),
        .I3(M_AXI_ARADDR[21]),
        .O(rd_addr_reg1_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    rd_addr_reg1_carry__2_i_8
       (.I0(M_AXI_ARADDR[19]),
        .I1(M_AXI_ARADDR[20]),
        .I2(current_max_addr[25]),
        .O(rd_addr_reg1_carry__2_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rd_addr_reg1_carry_i_1
       (.I0(M_AXI_ARADDR[2]),
        .O(rd_addr_reg1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rd_addr_reg1_carry_i_2
       (.I0(current_max_addr[0]),
        .I1(M_AXI_ARADDR[0]),
        .O(rd_addr_reg1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    rd_addr_reg1_carry_i_3
       (.I0(M_AXI_ARADDR[1]),
        .I1(M_AXI_ARADDR[2]),
        .O(rd_addr_reg1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rd_addr_reg1_carry_i_4
       (.I0(M_AXI_ARADDR[0]),
        .I1(current_max_addr[0]),
        .O(rd_addr_reg1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[0]_i_1 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[0]),
        .I3(old_base_addr[0]),
        .I4(M_AXI_ARADDR[0]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[13]_i_2 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[8]),
        .O(\rd_addr_reg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[13]_i_3 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[12]),
        .I3(old_base_addr[12]),
        .I4(M_AXI_ARADDR[7]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[13]_i_4 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[6]),
        .O(\rd_addr_reg[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[13]_i_5 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[5]),
        .O(\rd_addr_reg[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[17]_i_2 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[17]),
        .I3(old_base_addr[17]),
        .I4(M_AXI_ARADDR[12]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[17]_i_3 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[11]),
        .O(\rd_addr_reg[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[17]_i_4 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[15]),
        .I3(old_base_addr[15]),
        .I4(M_AXI_ARADDR[10]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[17]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[17]_i_5 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[9]),
        .O(\rd_addr_reg[17]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[21]_i_2 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[16]),
        .O(\rd_addr_reg[21]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[21]_i_3 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[15]),
        .O(\rd_addr_reg[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[21]_i_4 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[19]),
        .I3(old_base_addr[19]),
        .I4(M_AXI_ARADDR[14]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[21]_i_5 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[18]),
        .I3(old_base_addr[18]),
        .I4(M_AXI_ARADDR[13]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[21]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[25]_i_2 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[20]),
        .O(\rd_addr_reg[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[25]_i_3 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[24]),
        .I3(old_base_addr[24]),
        .I4(M_AXI_ARADDR[19]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[25]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[25]_i_4 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[18]),
        .O(\rd_addr_reg[25]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[25]_i_5 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[17]),
        .O(\rd_addr_reg[25]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[29]_i_2 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[24]),
        .O(\rd_addr_reg[29]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[29]_i_3 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[23]),
        .O(\rd_addr_reg[29]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[29]_i_4 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[22]),
        .O(\rd_addr_reg[29]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[29]_i_5 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[21]),
        .O(\rd_addr_reg[29]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rd_addr_reg[31]_i_1 
       (.I0(rstn),
        .I1(flush_done),
        .O(\rd_addr_reg[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[31]_i_3 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[26]),
        .O(\rd_addr_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[31]_i_4 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[25]),
        .O(\rd_addr_reg[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[9]_i_2 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[4]),
        .O(\rd_addr_reg[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[9]_i_3 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[3]),
        .O(\rd_addr_reg[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \rd_addr_reg[9]_i_4 
       (.I0(M_AXI_ARADDR[2]),
        .I1(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[9]_i_5 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[1]),
        .O(\rd_addr_reg[9]_i_5_n_0 ));
  FDRE \rd_addr_reg_reg[0] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg[0]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[0]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[10] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[13]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[5]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[11] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[13]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[6]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[12] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[13]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[7]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[13] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[13]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[8]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[13]_i_1 
       (.CI(\rd_addr_reg_reg[9]_i_1_n_0 ),
        .CO({\rd_addr_reg_reg[13]_i_1_n_0 ,\rd_addr_reg_reg[13]_i_1_n_1 ,\rd_addr_reg_reg[13]_i_1_n_2 ,\rd_addr_reg_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_addr_reg_reg[13]_i_1_n_4 ,\rd_addr_reg_reg[13]_i_1_n_5 ,\rd_addr_reg_reg[13]_i_1_n_6 ,\rd_addr_reg_reg[13]_i_1_n_7 }),
        .S({\rd_addr_reg[13]_i_2_n_0 ,\rd_addr_reg[13]_i_3_n_0 ,\rd_addr_reg[13]_i_4_n_0 ,\rd_addr_reg[13]_i_5_n_0 }));
  FDSE \rd_addr_reg_reg[14] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[17]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[9]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[15] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[17]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[10]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[16] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[17]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[11]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[17] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[17]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[12]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[17]_i_1 
       (.CI(\rd_addr_reg_reg[13]_i_1_n_0 ),
        .CO({\rd_addr_reg_reg[17]_i_1_n_0 ,\rd_addr_reg_reg[17]_i_1_n_1 ,\rd_addr_reg_reg[17]_i_1_n_2 ,\rd_addr_reg_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_addr_reg_reg[17]_i_1_n_4 ,\rd_addr_reg_reg[17]_i_1_n_5 ,\rd_addr_reg_reg[17]_i_1_n_6 ,\rd_addr_reg_reg[17]_i_1_n_7 }),
        .S({\rd_addr_reg[17]_i_2_n_0 ,\rd_addr_reg[17]_i_3_n_0 ,\rd_addr_reg[17]_i_4_n_0 ,\rd_addr_reg[17]_i_5_n_0 }));
  FDSE \rd_addr_reg_reg[18] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[21]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[13]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[19] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[21]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[14]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[20] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[21]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[15]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[21] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[21]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[16]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[21]_i_1 
       (.CI(\rd_addr_reg_reg[17]_i_1_n_0 ),
        .CO({\rd_addr_reg_reg[21]_i_1_n_0 ,\rd_addr_reg_reg[21]_i_1_n_1 ,\rd_addr_reg_reg[21]_i_1_n_2 ,\rd_addr_reg_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_addr_reg_reg[21]_i_1_n_4 ,\rd_addr_reg_reg[21]_i_1_n_5 ,\rd_addr_reg_reg[21]_i_1_n_6 ,\rd_addr_reg_reg[21]_i_1_n_7 }),
        .S({\rd_addr_reg[21]_i_2_n_0 ,\rd_addr_reg[21]_i_3_n_0 ,\rd_addr_reg[21]_i_4_n_0 ,\rd_addr_reg[21]_i_5_n_0 }));
  FDSE \rd_addr_reg_reg[22] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[25]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[17]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[23] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[25]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[18]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[24] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[25]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[19]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[25] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[25]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[20]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[25]_i_1 
       (.CI(\rd_addr_reg_reg[21]_i_1_n_0 ),
        .CO({\rd_addr_reg_reg[25]_i_1_n_0 ,\rd_addr_reg_reg[25]_i_1_n_1 ,\rd_addr_reg_reg[25]_i_1_n_2 ,\rd_addr_reg_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_addr_reg_reg[25]_i_1_n_4 ,\rd_addr_reg_reg[25]_i_1_n_5 ,\rd_addr_reg_reg[25]_i_1_n_6 ,\rd_addr_reg_reg[25]_i_1_n_7 }),
        .S({\rd_addr_reg[25]_i_2_n_0 ,\rd_addr_reg[25]_i_3_n_0 ,\rd_addr_reg[25]_i_4_n_0 ,\rd_addr_reg[25]_i_5_n_0 }));
  FDSE \rd_addr_reg_reg[26] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[29]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[21]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[27] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[29]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[22]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[28] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[29]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[23]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[29] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[29]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[24]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[29]_i_1 
       (.CI(\rd_addr_reg_reg[25]_i_1_n_0 ),
        .CO({\rd_addr_reg_reg[29]_i_1_n_0 ,\rd_addr_reg_reg[29]_i_1_n_1 ,\rd_addr_reg_reg[29]_i_1_n_2 ,\rd_addr_reg_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_addr_reg_reg[29]_i_1_n_4 ,\rd_addr_reg_reg[29]_i_1_n_5 ,\rd_addr_reg_reg[29]_i_1_n_6 ,\rd_addr_reg_reg[29]_i_1_n_7 }),
        .S({\rd_addr_reg[29]_i_2_n_0 ,\rd_addr_reg[29]_i_3_n_0 ,\rd_addr_reg[29]_i_4_n_0 ,\rd_addr_reg[29]_i_5_n_0 }));
  FDSE \rd_addr_reg_reg[30] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[31]_i_2_n_7 ),
        .Q(M_AXI_ARADDR[25]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[31] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[31]_i_2_n_6 ),
        .Q(M_AXI_ARADDR[26]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[31]_i_2 
       (.CI(\rd_addr_reg_reg[29]_i_1_n_0 ),
        .CO({\NLW_rd_addr_reg_reg[31]_i_2_CO_UNCONNECTED [3:1],\rd_addr_reg_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_addr_reg_reg[31]_i_2_O_UNCONNECTED [3:2],\rd_addr_reg_reg[31]_i_2_n_6 ,\rd_addr_reg_reg[31]_i_2_n_7 }),
        .S({1'b0,1'b0,\rd_addr_reg[31]_i_3_n_0 ,\rd_addr_reg[31]_i_4_n_0 }));
  FDRE \rd_addr_reg_reg[6] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[9]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[1]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[7] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[9]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[2]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[8] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[9]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[3]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[9] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[9]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[4]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\rd_addr_reg_reg[9]_i_1_n_0 ,\rd_addr_reg_reg[9]_i_1_n_1 ,\rd_addr_reg_reg[9]_i_1_n_2 ,\rd_addr_reg_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rd_addr_reg1_carry__2_n_0,1'b0}),
        .O({\rd_addr_reg_reg[9]_i_1_n_4 ,\rd_addr_reg_reg[9]_i_1_n_5 ,\rd_addr_reg_reg[9]_i_1_n_6 ,\rd_addr_reg_reg[9]_i_1_n_7 }),
        .S({\rd_addr_reg[9]_i_2_n_0 ,\rd_addr_reg[9]_i_3_n_0 ,\rd_addr_reg[9]_i_4_n_0 ,\rd_addr_reg[9]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    rready_i_1
       (.I0(flush_done),
        .I1(rstn),
        .I2(prog_full),
        .O(rready_i_1_n_0));
  FDRE rready_reg
       (.C(clk),
        .CE(1'b1),
        .D(rready_i_1_n_0),
        .Q(rready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8080808000800000)) 
    switch_buffer_ack_reg_i_1
       (.I0(switch_buffer_reg_out),
        .I1(rstn),
        .I2(flush_done),
        .I3(rd_addr_reg1_carry__2_n_0),
        .I4(M_AXI_ARREADY),
        .I5(switch_buffer_ack_reg_reg_0),
        .O(switch_buffer_ack_reg_i_1_n_0));
  FDRE switch_buffer_ack_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(switch_buffer_ack_reg_i_1_n_0),
        .Q(switch_buffer_ack_reg_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    switch_buffer_reg1_i_1
       (.I0(switch_buffer),
        .I1(rstn),
        .O(switch_buffer_reg1_i_1_n_0));
  FDRE switch_buffer_reg1_reg
       (.C(clk),
        .CE(1'b1),
        .D(switch_buffer_reg1_i_1_n_0),
        .Q(switch_buffer_reg1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    switch_buffer_reg2_i_1
       (.I0(switch_buffer_reg1),
        .I1(rstn),
        .O(switch_buffer_reg2_i_1_n_0));
  FDRE switch_buffer_reg2_reg
       (.C(clk),
        .CE(1'b1),
        .D(switch_buffer_reg2_i_1_n_0),
        .Q(switch_buffer_reg2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    switch_buffer_reg_out_i_1
       (.I0(switch_buffer_reg2),
        .I1(rstn),
        .O(switch_buffer_reg_out_i_1_n_0));
  FDRE switch_buffer_reg_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(switch_buffer_reg_out_i_1_n_0),
        .Q(switch_buffer_reg_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    wr_en_reg_i_1
       (.I0(rready),
        .I1(M_AXI_RVALID),
        .I2(flush_done),
        .I3(rstn),
        .O(wr_en_reg_i_1_n_0));
  FDRE wr_en_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_en_reg_i_1_n_0),
        .Q(wr_en),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_vga_controller_0_1_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_vga_controller_0_1_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_vga_controller_0_1_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "13" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_vga_controller_0_1_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [12:0]src_in_bin;
  input dest_clk;
  output [12:0]dest_out_bin;

  wire [12:0]async_path;
  wire [11:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [12:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [12:0]\dest_graysync_ff[1] ;
  wire [12:0]dest_out_bin;
  wire [11:0]gray_enc;
  wire src_clk;
  wire [12:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[12]),
        .Q(\dest_graysync_ff[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [12]),
        .Q(\dest_graysync_ff[1] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [12]),
        .I2(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[11]_i_1 
       (.I0(\dest_graysync_ff[1] [11]),
        .I1(\dest_graysync_ff[1] [12]),
        .O(binval[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(binval[7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(binval[7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(binval[7]),
        .O(binval[6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [12]),
        .I4(\dest_graysync_ff[1] [10]),
        .I5(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [12]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [12]),
        .I3(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [12]),
        .Q(dest_out_bin[12]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[11]_i_1 
       (.I0(src_in_bin[12]),
        .I1(src_in_bin[11]),
        .O(gray_enc[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[12] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[12]),
        .Q(async_path[12]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module design_1_vga_controller_0_1_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module design_1_vga_controller_0_1_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 109408)
`pragma protect data_block
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
HJkm9RJQ+/ZVRrp/K3HEvnPe25utg7JmfQ==
`pragma protect end_protected
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
