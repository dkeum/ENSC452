-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Mar 27 19:24:52 2023
-- Host        : ensc-pit-w15 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/dkeum/audio_tutorial/audio_tutorial/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1_stub.vhdl
-- Design      : design_1_xbar_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_xbar_1 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 41 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 223 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 55 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 20 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 20 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 34 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 447 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 55 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 41 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 41 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 223 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 55 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 20 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 20 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 34 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 41 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 447 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_xbar_1;

architecture stub of design_1_xbar_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axi_awid[41:0],s_axi_awaddr[223:0],s_axi_awlen[55:0],s_axi_awsize[20:0],s_axi_awburst[13:0],s_axi_awlock[6:0],s_axi_awcache[27:0],s_axi_awprot[20:0],s_axi_awqos[27:0],s_axi_awuser[34:0],s_axi_awvalid[6:0],s_axi_awready[6:0],s_axi_wdata[447:0],s_axi_wstrb[55:0],s_axi_wlast[6:0],s_axi_wvalid[6:0],s_axi_wready[6:0],s_axi_bid[41:0],s_axi_bresp[13:0],s_axi_bvalid[6:0],s_axi_bready[6:0],s_axi_arid[41:0],s_axi_araddr[223:0],s_axi_arlen[55:0],s_axi_arsize[20:0],s_axi_arburst[13:0],s_axi_arlock[6:0],s_axi_arcache[27:0],s_axi_arprot[20:0],s_axi_arqos[27:0],s_axi_aruser[34:0],s_axi_arvalid[6:0],s_axi_arready[6:0],s_axi_rid[41:0],s_axi_rdata[447:0],s_axi_rresp[13:0],s_axi_rlast[6:0],s_axi_rvalid[6:0],s_axi_rready[6:0],m_axi_awid[5:0],m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awlock[0:0],m_axi_awcache[3:0],m_axi_awprot[2:0],m_axi_awregion[3:0],m_axi_awqos[3:0],m_axi_awuser[4:0],m_axi_awvalid[0:0],m_axi_awready[0:0],m_axi_wdata[63:0],m_axi_wstrb[7:0],m_axi_wlast[0:0],m_axi_wvalid[0:0],m_axi_wready[0:0],m_axi_bid[5:0],m_axi_bresp[1:0],m_axi_bvalid[0:0],m_axi_bready[0:0],m_axi_arid[5:0],m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arlock[0:0],m_axi_arcache[3:0],m_axi_arprot[2:0],m_axi_arregion[3:0],m_axi_arqos[3:0],m_axi_aruser[4:0],m_axi_arvalid[0:0],m_axi_arready[0:0],m_axi_rid[5:0],m_axi_rdata[63:0],m_axi_rresp[1:0],m_axi_rlast[0:0],m_axi_rvalid[0:0],m_axi_rready[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_crossbar_v2_1_23_axi_crossbar,Vivado 2020.2";
begin
end;