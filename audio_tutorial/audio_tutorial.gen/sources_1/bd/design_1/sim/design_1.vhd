--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Mon Mar 27 19:23:24 2023
--Host        : ensc-pit-w15 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_15SPJYW is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_15SPJYW;

architecture STRUCTURE of m00_couplers_imp_15SPJYW is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1614QE6 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1614QE6;

architecture STRUCTURE of m00_couplers_imp_1614QE6 is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1R706YB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1R706YB;

architecture STRUCTURE of m00_couplers_imp_1R706YB is
  component design_1_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_couplers_WID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_auto_pc_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(5 downto 0) <= auto_pc_to_m00_couplers_ARID(5 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_m00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_m00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(5 downto 0) <= auto_pc_to_m00_couplers_AWID(5 downto 0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_m00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_m00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_pc_to_m00_couplers_WDATA(63 downto 0);
  M_AXI_wid(5 downto 0) <= auto_pc_to_m00_couplers_WID(5 downto 0);
  M_AXI_wlast <= auto_pc_to_m00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_pc_to_m00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(5 downto 0) <= m00_couplers_to_auto_pc_BID(5 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(63 downto 0) <= m00_couplers_to_auto_pc_RDATA(63 downto 0);
  S_AXI_rid(5 downto 0) <= m00_couplers_to_auto_pc_RID(5 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_pc_to_m00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_pc_to_m00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(5 downto 0) <= S_AXI_arid(5 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARUSER(4 downto 0) <= S_AXI_aruser(4 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(5 downto 0) <= S_AXI_awid(5 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWUSER(4 downto 0) <= S_AXI_awuser(4 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_1_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(5 downto 0) => auto_pc_to_m00_couplers_ARID(5 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_aruser(4 downto 0) => NLW_auto_pc_m_axi_aruser_UNCONNECTED(4 downto 0),
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(5 downto 0) => auto_pc_to_m00_couplers_AWID(5 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awuser(4 downto 0) => NLW_auto_pc_m_axi_awuser_UNCONNECTED(4 downto 0),
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bid(5 downto 0) => auto_pc_to_m00_couplers_BID(5 downto 0),
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_pc_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(5 downto 0) => auto_pc_to_m00_couplers_RID(5 downto 0),
      m_axi_rlast => auto_pc_to_m00_couplers_RLAST,
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_pc_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wid(5 downto 0) => auto_pc_to_m00_couplers_WID(5 downto 0),
      m_axi_wlast => auto_pc_to_m00_couplers_WLAST,
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_pc_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(5 downto 0) => m00_couplers_to_auto_pc_ARID(5 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_aruser(4 downto 0) => m00_couplers_to_auto_pc_ARUSER(4 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => m00_couplers_to_auto_pc_AWID(5 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awuser(4 downto 0) => m00_couplers_to_auto_pc_AWUSER(4 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(5 downto 0) => m00_couplers_to_auto_pc_BID(5 downto 0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(63 downto 0) => m00_couplers_to_auto_pc_RDATA(63 downto 0),
      s_axi_rid(5 downto 0) => m00_couplers_to_auto_pc_RID(5 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(63 downto 0) => m00_couplers_to_auto_pc_WDATA(63 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(7 downto 0) => m00_couplers_to_auto_pc_WSTRB(7 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_ZLTC2M is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_ZLTC2M;

architecture STRUCTURE of m00_couplers_imp_ZLTC2M is
  component design_1_auto_pc_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_pc_3;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_couplers_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= auto_pc_to_m00_couplers_ARID(0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_m00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_m00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= auto_pc_to_m00_couplers_AWID(0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_m00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_m00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_pc_to_m00_couplers_WDATA(63 downto 0);
  M_AXI_wid(0) <= auto_pc_to_m00_couplers_WID(0);
  M_AXI_wlast <= auto_pc_to_m00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_pc_to_m00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(0) <= m00_couplers_to_auto_pc_BID(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(63 downto 0) <= m00_couplers_to_auto_pc_RDATA(63 downto 0);
  S_AXI_rid(0) <= m00_couplers_to_auto_pc_RID(0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_pc_to_m00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_pc_to_m00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(0) <= S_AXI_arid(0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(0) <= S_AXI_awid(0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_1_auto_pc_3
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => auto_pc_to_m00_couplers_ARID(0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => auto_pc_to_m00_couplers_AWID(0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bid(0) => auto_pc_to_m00_couplers_BID(0),
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_pc_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(0) => auto_pc_to_m00_couplers_RID(0),
      m_axi_rlast => auto_pc_to_m00_couplers_RLAST,
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_pc_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wid(0) => auto_pc_to_m00_couplers_WID(0),
      m_axi_wlast => auto_pc_to_m00_couplers_WLAST,
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_pc_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(0) => m00_couplers_to_auto_pc_ARID(0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(0) => m00_couplers_to_auto_pc_AWID(0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(0) => m00_couplers_to_auto_pc_BID(0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(63 downto 0) => m00_couplers_to_auto_pc_RDATA(63 downto 0),
      s_axi_rid(0) => m00_couplers_to_auto_pc_RID(0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(63 downto 0) => m00_couplers_to_auto_pc_WDATA(63 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(7 downto 0) => m00_couplers_to_auto_pc_WSTRB(7 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_XC9BB3 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_XC9BB3;

architecture STRUCTURE of m01_couplers_imp_XC9BB3 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_XU9C55 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_XU9C55;

architecture STRUCTURE of m01_couplers_imp_XU9C55 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_14WQB4R is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_14WQB4R;

architecture STRUCTURE of m02_couplers_imp_14WQB4R is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_YFYJ3U is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_YFYJ3U;

architecture STRUCTURE of m03_couplers_imp_YFYJ3U is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_17KQ732 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_17KQ732;

architecture STRUCTURE of m04_couplers_imp_17KQ732 is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_7HNO1D is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_aruser : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awuser : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_7HNO1D;

architecture STRUCTURE of s00_couplers_imp_7HNO1D is
  component design_1_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_pc_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(2 downto 0) <= auto_pc_to_s00_couplers_ARID(2 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_aruser(4 downto 0) <= auto_pc_to_s00_couplers_ARUSER(4 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(2 downto 0) <= auto_pc_to_s00_couplers_AWID(2 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awuser(4 downto 0) <= auto_pc_to_s00_couplers_AWUSER(4 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_pc_to_s00_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_pc_to_s00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(2 downto 0) <= s00_couplers_to_auto_pc_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(63 downto 0) <= s00_couplers_to_auto_pc_RDATA(63 downto 0);
  S_AXI_rid(2 downto 0) <= s00_couplers_to_auto_pc_RID(2 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_pc_to_s00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARUSER(4 downto 0) <= S_AXI_aruser(4 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWUSER(4 downto 0) <= S_AXI_awuser(4 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  s00_couplers_to_auto_pc_WID(2 downto 0) <= S_AXI_wid(2 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_1_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(2 downto 0) => auto_pc_to_s00_couplers_ARID(2 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_aruser(4 downto 0) => auto_pc_to_s00_couplers_ARUSER(4 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(2 downto 0) => auto_pc_to_s00_couplers_AWID(2 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awuser(4 downto 0) => auto_pc_to_s00_couplers_AWUSER(4 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bid(2 downto 0) => auto_pc_to_s00_couplers_BID(2 downto 0),
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_pc_to_s00_couplers_RDATA(63 downto 0),
      m_axi_rid(2 downto 0) => auto_pc_to_s00_couplers_RID(2 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_pc_to_s00_couplers_WDATA(63 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_pc_to_s00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(2 downto 0) => s00_couplers_to_auto_pc_ARID(2 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_aruser(4 downto 0) => s00_couplers_to_auto_pc_ARUSER(4 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => s00_couplers_to_auto_pc_AWID(2 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awuser(4 downto 0) => s00_couplers_to_auto_pc_AWUSER(4 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(2 downto 0) => s00_couplers_to_auto_pc_BID(2 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(63 downto 0) => s00_couplers_to_auto_pc_RDATA(63 downto 0),
      s_axi_rid(2 downto 0) => s00_couplers_to_auto_pc_RID(2 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(63 downto 0) => s00_couplers_to_auto_pc_WDATA(63 downto 0),
      s_axi_wid(2 downto 0) => s00_couplers_to_auto_pc_WID(2 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(7 downto 0) => s00_couplers_to_auto_pc_WSTRB(7 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_ULGAU4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_ULGAU4;

architecture STRUCTURE of s00_couplers_imp_ULGAU4 is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_UYSKKA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_UYSKKA;

architecture STRUCTURE of s00_couplers_imp_UYSKKA is
  component design_1_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_1_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_XOWISC is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_XOWISC;

architecture STRUCTURE of s00_couplers_imp_XOWISC is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_couplers_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_couplers_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s00_couplers_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_couplers_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_rdata(63 downto 0) <= s00_couplers_to_s00_couplers_RDATA(63 downto 0);
  S_AXI_rlast(0) <= s00_couplers_to_s00_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  s00_couplers_to_s00_couplers_RLAST(0) <= M_AXI_rlast(0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_15OSRGD is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s01_couplers_imp_15OSRGD;

architecture STRUCTURE of s01_couplers_imp_15OSRGD is
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_couplers_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_couplers_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s01_couplers_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_couplers_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s01_couplers_to_s01_couplers_AWVALID(0);
  M_AXI_bready(0) <= s01_couplers_to_s01_couplers_BREADY(0);
  M_AXI_wdata(63 downto 0) <= s01_couplers_to_s01_couplers_WDATA(63 downto 0);
  M_AXI_wlast(0) <= s01_couplers_to_s01_couplers_WLAST(0);
  M_AXI_wstrb(7 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid(0) <= s01_couplers_to_s01_couplers_WVALID(0);
  S_AXI_awready(0) <= s01_couplers_to_s01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s01_couplers_to_s01_couplers_BVALID(0);
  S_AXI_wready(0) <= s01_couplers_to_s01_couplers_WREADY(0);
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWREADY(0) <= M_AXI_awready(0);
  s01_couplers_to_s01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s01_couplers_to_s01_couplers_BREADY(0) <= S_AXI_bready(0);
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s01_couplers_to_s01_couplers_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  s01_couplers_to_s01_couplers_WLAST(0) <= S_AXI_wlast(0);
  s01_couplers_to_s01_couplers_WREADY(0) <= M_AXI_wready(0);
  s01_couplers_to_s01_couplers_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  s01_couplers_to_s01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1W60HW0 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s01_couplers_imp_1W60HW0;

architecture STRUCTURE of s01_couplers_imp_1W60HW0 is
  component design_1_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_us_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s01_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s01_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_auto_us_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_us_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_us_ARREADY : STD_LOGIC;
  signal s01_couplers_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_us_ARVALID : STD_LOGIC;
  signal s01_couplers_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_us_RLAST : STD_LOGIC;
  signal s01_couplers_to_auto_us_RREADY : STD_LOGIC;
  signal s01_couplers_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_us_RVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_us_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_to_s01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s01_couplers_ARVALID;
  M_AXI_rready <= auto_us_to_s01_couplers_RREADY;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s01_couplers_to_auto_us_ARREADY;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_auto_us_RDATA(31 downto 0);
  S_AXI_rlast <= s01_couplers_to_auto_us_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_auto_us_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_auto_us_RVALID;
  auto_us_to_s01_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s01_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_us_to_s01_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_auto_us_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_auto_us_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_auto_us_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_auto_us_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_auto_us_ARLOCK(0) <= S_AXI_arlock(0);
  s01_couplers_to_auto_us_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_auto_us_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_auto_us_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_auto_us_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_auto_us_RREADY <= S_AXI_rready;
auto_us: component design_1_auto_us_0
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_s01_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s01_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s01_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_s01_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_s01_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_s01_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s01_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s01_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_s01_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s01_couplers_ARVALID,
      m_axi_rdata(63 downto 0) => auto_us_to_s01_couplers_RDATA(63 downto 0),
      m_axi_rlast => auto_us_to_s01_couplers_RLAST,
      m_axi_rready => auto_us_to_s01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s01_couplers_RVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s01_couplers_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s01_couplers_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_couplers_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => s01_couplers_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => s01_couplers_to_auto_us_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s01_couplers_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s01_couplers_to_auto_us_ARQOS(3 downto 0),
      s_axi_arready => s01_couplers_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s01_couplers_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_couplers_to_auto_us_ARVALID,
      s_axi_rdata(31 downto 0) => s01_couplers_to_auto_us_RDATA(31 downto 0),
      s_axi_rlast => s01_couplers_to_auto_us_RLAST,
      s_axi_rready => s01_couplers_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s01_couplers_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s01_couplers_to_auto_us_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_8NCF02 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s02_couplers_imp_8NCF02;

architecture STRUCTURE of s02_couplers_imp_8NCF02 is
  component design_1_auto_us_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component design_1_auto_us_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s02_couplers_AWREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s02_couplers_AWVALID : STD_LOGIC;
  signal auto_us_to_s02_couplers_BREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s02_couplers_BVALID : STD_LOGIC;
  signal auto_us_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s02_couplers_WLAST : STD_LOGIC;
  signal auto_us_to_s02_couplers_WREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s02_couplers_WVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_auto_us_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_AWREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_AWVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_BREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_BVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_WLAST : STD_LOGIC;
  signal s02_couplers_to_auto_us_WREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_WVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_awaddr(31 downto 0) <= auto_us_to_s02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_to_s02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_to_s02_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_to_s02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_to_s02_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_to_s02_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_to_s02_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_to_s02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_to_s02_couplers_AWVALID;
  M_AXI_bready <= auto_us_to_s02_couplers_BREADY;
  M_AXI_wdata(63 downto 0) <= auto_us_to_s02_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= auto_us_to_s02_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_us_to_s02_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_us_to_s02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_awready <= s02_couplers_to_auto_us_AWREADY;
  S_AXI_bresp(1 downto 0) <= s02_couplers_to_auto_us_BRESP(1 downto 0);
  S_AXI_bvalid <= s02_couplers_to_auto_us_BVALID;
  S_AXI_wready <= s02_couplers_to_auto_us_WREADY;
  auto_us_to_s02_couplers_AWREADY <= M_AXI_awready;
  auto_us_to_s02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_to_s02_couplers_BVALID <= M_AXI_bvalid;
  auto_us_to_s02_couplers_WREADY <= M_AXI_wready;
  s02_couplers_to_auto_us_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s02_couplers_to_auto_us_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s02_couplers_to_auto_us_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s02_couplers_to_auto_us_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s02_couplers_to_auto_us_AWLOCK(0) <= S_AXI_awlock(0);
  s02_couplers_to_auto_us_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s02_couplers_to_auto_us_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s02_couplers_to_auto_us_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s02_couplers_to_auto_us_AWVALID <= S_AXI_awvalid;
  s02_couplers_to_auto_us_BREADY <= S_AXI_bready;
  s02_couplers_to_auto_us_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s02_couplers_to_auto_us_WLAST <= S_AXI_wlast;
  s02_couplers_to_auto_us_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s02_couplers_to_auto_us_WVALID <= S_AXI_wvalid;
auto_us: component design_1_auto_us_1
     port map (
      m_axi_awaddr(31 downto 0) => auto_us_to_s02_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_s02_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_s02_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_s02_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_s02_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_to_s02_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_s02_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_s02_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_s02_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_s02_couplers_AWVALID,
      m_axi_bready => auto_us_to_s02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_s02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_s02_couplers_BVALID,
      m_axi_wdata(63 downto 0) => auto_us_to_s02_couplers_WDATA(63 downto 0),
      m_axi_wlast => auto_us_to_s02_couplers_WLAST,
      m_axi_wready => auto_us_to_s02_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_us_to_s02_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_us_to_s02_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_aresetn => S_ARESETN_1,
      s_axi_awaddr(31 downto 0) => s02_couplers_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s02_couplers_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s02_couplers_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s02_couplers_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => s02_couplers_to_auto_us_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s02_couplers_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s02_couplers_to_auto_us_AWQOS(3 downto 0),
      s_axi_awready => s02_couplers_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s02_couplers_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => s02_couplers_to_auto_us_AWVALID,
      s_axi_bready => s02_couplers_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => s02_couplers_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => s02_couplers_to_auto_us_BVALID,
      s_axi_wdata(31 downto 0) => s02_couplers_to_auto_us_WDATA(31 downto 0),
      s_axi_wlast => s02_couplers_to_auto_us_WLAST,
      s_axi_wready => s02_couplers_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => s02_couplers_to_auto_us_WSTRB(3 downto 0),
      s_axi_wvalid => s02_couplers_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s03_couplers_imp_1UQ1PUB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_aruser : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awuser : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_aruser : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awuser : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end s03_couplers_imp_1UQ1PUB;

architecture STRUCTURE of s03_couplers_imp_1UQ1PUB is
  signal s03_couplers_to_s03_couplers_ARADDR : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARBURST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARCACHE : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARLEN : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARLOCK : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARPROT : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARQOS : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARSIZE : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARUSER : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWADDR : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWBURST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWCACHE : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWLEN : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWLOCK : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWPROT : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWQOS : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWSIZE : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWUSER : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_BID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_BREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_BRESP : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_BVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RDATA : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RLAST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RRESP : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_WDATA : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_WLAST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_WREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_WSTRB : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= s03_couplers_to_s03_couplers_ARADDR;
  M_AXI_arburst <= s03_couplers_to_s03_couplers_ARBURST;
  M_AXI_arcache <= s03_couplers_to_s03_couplers_ARCACHE;
  M_AXI_arid <= s03_couplers_to_s03_couplers_ARID;
  M_AXI_arlen <= s03_couplers_to_s03_couplers_ARLEN;
  M_AXI_arlock <= s03_couplers_to_s03_couplers_ARLOCK;
  M_AXI_arprot <= s03_couplers_to_s03_couplers_ARPROT;
  M_AXI_arqos <= s03_couplers_to_s03_couplers_ARQOS;
  M_AXI_arsize <= s03_couplers_to_s03_couplers_ARSIZE;
  M_AXI_aruser <= s03_couplers_to_s03_couplers_ARUSER;
  M_AXI_arvalid <= s03_couplers_to_s03_couplers_ARVALID;
  M_AXI_awaddr <= s03_couplers_to_s03_couplers_AWADDR;
  M_AXI_awburst <= s03_couplers_to_s03_couplers_AWBURST;
  M_AXI_awcache <= s03_couplers_to_s03_couplers_AWCACHE;
  M_AXI_awid <= s03_couplers_to_s03_couplers_AWID;
  M_AXI_awlen <= s03_couplers_to_s03_couplers_AWLEN;
  M_AXI_awlock <= s03_couplers_to_s03_couplers_AWLOCK;
  M_AXI_awprot <= s03_couplers_to_s03_couplers_AWPROT;
  M_AXI_awqos <= s03_couplers_to_s03_couplers_AWQOS;
  M_AXI_awsize <= s03_couplers_to_s03_couplers_AWSIZE;
  M_AXI_awuser <= s03_couplers_to_s03_couplers_AWUSER;
  M_AXI_awvalid <= s03_couplers_to_s03_couplers_AWVALID;
  M_AXI_bready <= s03_couplers_to_s03_couplers_BREADY;
  M_AXI_rready <= s03_couplers_to_s03_couplers_RREADY;
  M_AXI_wdata <= s03_couplers_to_s03_couplers_WDATA;
  M_AXI_wlast <= s03_couplers_to_s03_couplers_WLAST;
  M_AXI_wstrb <= s03_couplers_to_s03_couplers_WSTRB;
  M_AXI_wvalid <= s03_couplers_to_s03_couplers_WVALID;
  S_AXI_arready <= s03_couplers_to_s03_couplers_ARREADY;
  S_AXI_awready <= s03_couplers_to_s03_couplers_AWREADY;
  S_AXI_bid <= s03_couplers_to_s03_couplers_BID;
  S_AXI_bresp <= s03_couplers_to_s03_couplers_BRESP;
  S_AXI_bvalid <= s03_couplers_to_s03_couplers_BVALID;
  S_AXI_rdata <= s03_couplers_to_s03_couplers_RDATA;
  S_AXI_rid <= s03_couplers_to_s03_couplers_RID;
  S_AXI_rlast <= s03_couplers_to_s03_couplers_RLAST;
  S_AXI_rresp <= s03_couplers_to_s03_couplers_RRESP;
  S_AXI_rvalid <= s03_couplers_to_s03_couplers_RVALID;
  S_AXI_wready <= s03_couplers_to_s03_couplers_WREADY;
  s03_couplers_to_s03_couplers_ARADDR <= S_AXI_araddr;
  s03_couplers_to_s03_couplers_ARBURST <= S_AXI_arburst;
  s03_couplers_to_s03_couplers_ARCACHE <= S_AXI_arcache;
  s03_couplers_to_s03_couplers_ARID <= S_AXI_arid;
  s03_couplers_to_s03_couplers_ARLEN <= S_AXI_arlen;
  s03_couplers_to_s03_couplers_ARLOCK <= S_AXI_arlock;
  s03_couplers_to_s03_couplers_ARPROT <= S_AXI_arprot;
  s03_couplers_to_s03_couplers_ARQOS <= S_AXI_arqos;
  s03_couplers_to_s03_couplers_ARREADY <= M_AXI_arready;
  s03_couplers_to_s03_couplers_ARSIZE <= S_AXI_arsize;
  s03_couplers_to_s03_couplers_ARUSER <= S_AXI_aruser;
  s03_couplers_to_s03_couplers_ARVALID <= S_AXI_arvalid;
  s03_couplers_to_s03_couplers_AWADDR <= S_AXI_awaddr;
  s03_couplers_to_s03_couplers_AWBURST <= S_AXI_awburst;
  s03_couplers_to_s03_couplers_AWCACHE <= S_AXI_awcache;
  s03_couplers_to_s03_couplers_AWID <= S_AXI_awid;
  s03_couplers_to_s03_couplers_AWLEN <= S_AXI_awlen;
  s03_couplers_to_s03_couplers_AWLOCK <= S_AXI_awlock;
  s03_couplers_to_s03_couplers_AWPROT <= S_AXI_awprot;
  s03_couplers_to_s03_couplers_AWQOS <= S_AXI_awqos;
  s03_couplers_to_s03_couplers_AWREADY <= M_AXI_awready;
  s03_couplers_to_s03_couplers_AWSIZE <= S_AXI_awsize;
  s03_couplers_to_s03_couplers_AWUSER <= S_AXI_awuser;
  s03_couplers_to_s03_couplers_AWVALID <= S_AXI_awvalid;
  s03_couplers_to_s03_couplers_BID <= M_AXI_bid;
  s03_couplers_to_s03_couplers_BREADY <= S_AXI_bready;
  s03_couplers_to_s03_couplers_BRESP <= M_AXI_bresp;
  s03_couplers_to_s03_couplers_BVALID <= M_AXI_bvalid;
  s03_couplers_to_s03_couplers_RDATA <= M_AXI_rdata;
  s03_couplers_to_s03_couplers_RID <= M_AXI_rid;
  s03_couplers_to_s03_couplers_RLAST <= M_AXI_rlast;
  s03_couplers_to_s03_couplers_RREADY <= S_AXI_rready;
  s03_couplers_to_s03_couplers_RRESP <= M_AXI_rresp;
  s03_couplers_to_s03_couplers_RVALID <= M_AXI_rvalid;
  s03_couplers_to_s03_couplers_WDATA <= S_AXI_wdata;
  s03_couplers_to_s03_couplers_WLAST <= S_AXI_wlast;
  s03_couplers_to_s03_couplers_WREADY <= M_AXI_wready;
  s03_couplers_to_s03_couplers_WSTRB <= S_AXI_wstrb;
  s03_couplers_to_s03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s04_couplers_imp_4T8GAF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_aruser : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awuser : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_aruser : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awuser : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end s04_couplers_imp_4T8GAF;

architecture STRUCTURE of s04_couplers_imp_4T8GAF is
  signal s04_couplers_to_s04_couplers_ARADDR : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARBURST : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARCACHE : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARLEN : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARLOCK : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARPROT : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARQOS : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARSIZE : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARUSER : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARVALID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWADDR : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWBURST : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWCACHE : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWLEN : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWLOCK : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWPROT : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWQOS : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWSIZE : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWUSER : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWVALID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_BID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_BREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_BRESP : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_BVALID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RDATA : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RLAST : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RRESP : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RVALID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_WDATA : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_WLAST : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_WREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_WSTRB : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= s04_couplers_to_s04_couplers_ARADDR;
  M_AXI_arburst <= s04_couplers_to_s04_couplers_ARBURST;
  M_AXI_arcache <= s04_couplers_to_s04_couplers_ARCACHE;
  M_AXI_arid <= s04_couplers_to_s04_couplers_ARID;
  M_AXI_arlen <= s04_couplers_to_s04_couplers_ARLEN;
  M_AXI_arlock <= s04_couplers_to_s04_couplers_ARLOCK;
  M_AXI_arprot <= s04_couplers_to_s04_couplers_ARPROT;
  M_AXI_arqos <= s04_couplers_to_s04_couplers_ARQOS;
  M_AXI_arsize <= s04_couplers_to_s04_couplers_ARSIZE;
  M_AXI_aruser <= s04_couplers_to_s04_couplers_ARUSER;
  M_AXI_arvalid <= s04_couplers_to_s04_couplers_ARVALID;
  M_AXI_awaddr <= s04_couplers_to_s04_couplers_AWADDR;
  M_AXI_awburst <= s04_couplers_to_s04_couplers_AWBURST;
  M_AXI_awcache <= s04_couplers_to_s04_couplers_AWCACHE;
  M_AXI_awid <= s04_couplers_to_s04_couplers_AWID;
  M_AXI_awlen <= s04_couplers_to_s04_couplers_AWLEN;
  M_AXI_awlock <= s04_couplers_to_s04_couplers_AWLOCK;
  M_AXI_awprot <= s04_couplers_to_s04_couplers_AWPROT;
  M_AXI_awqos <= s04_couplers_to_s04_couplers_AWQOS;
  M_AXI_awsize <= s04_couplers_to_s04_couplers_AWSIZE;
  M_AXI_awuser <= s04_couplers_to_s04_couplers_AWUSER;
  M_AXI_awvalid <= s04_couplers_to_s04_couplers_AWVALID;
  M_AXI_bready <= s04_couplers_to_s04_couplers_BREADY;
  M_AXI_rready <= s04_couplers_to_s04_couplers_RREADY;
  M_AXI_wdata <= s04_couplers_to_s04_couplers_WDATA;
  M_AXI_wlast <= s04_couplers_to_s04_couplers_WLAST;
  M_AXI_wstrb <= s04_couplers_to_s04_couplers_WSTRB;
  M_AXI_wvalid <= s04_couplers_to_s04_couplers_WVALID;
  S_AXI_arready <= s04_couplers_to_s04_couplers_ARREADY;
  S_AXI_awready <= s04_couplers_to_s04_couplers_AWREADY;
  S_AXI_bid <= s04_couplers_to_s04_couplers_BID;
  S_AXI_bresp <= s04_couplers_to_s04_couplers_BRESP;
  S_AXI_bvalid <= s04_couplers_to_s04_couplers_BVALID;
  S_AXI_rdata <= s04_couplers_to_s04_couplers_RDATA;
  S_AXI_rid <= s04_couplers_to_s04_couplers_RID;
  S_AXI_rlast <= s04_couplers_to_s04_couplers_RLAST;
  S_AXI_rresp <= s04_couplers_to_s04_couplers_RRESP;
  S_AXI_rvalid <= s04_couplers_to_s04_couplers_RVALID;
  S_AXI_wready <= s04_couplers_to_s04_couplers_WREADY;
  s04_couplers_to_s04_couplers_ARADDR <= S_AXI_araddr;
  s04_couplers_to_s04_couplers_ARBURST <= S_AXI_arburst;
  s04_couplers_to_s04_couplers_ARCACHE <= S_AXI_arcache;
  s04_couplers_to_s04_couplers_ARID <= S_AXI_arid;
  s04_couplers_to_s04_couplers_ARLEN <= S_AXI_arlen;
  s04_couplers_to_s04_couplers_ARLOCK <= S_AXI_arlock;
  s04_couplers_to_s04_couplers_ARPROT <= S_AXI_arprot;
  s04_couplers_to_s04_couplers_ARQOS <= S_AXI_arqos;
  s04_couplers_to_s04_couplers_ARREADY <= M_AXI_arready;
  s04_couplers_to_s04_couplers_ARSIZE <= S_AXI_arsize;
  s04_couplers_to_s04_couplers_ARUSER <= S_AXI_aruser;
  s04_couplers_to_s04_couplers_ARVALID <= S_AXI_arvalid;
  s04_couplers_to_s04_couplers_AWADDR <= S_AXI_awaddr;
  s04_couplers_to_s04_couplers_AWBURST <= S_AXI_awburst;
  s04_couplers_to_s04_couplers_AWCACHE <= S_AXI_awcache;
  s04_couplers_to_s04_couplers_AWID <= S_AXI_awid;
  s04_couplers_to_s04_couplers_AWLEN <= S_AXI_awlen;
  s04_couplers_to_s04_couplers_AWLOCK <= S_AXI_awlock;
  s04_couplers_to_s04_couplers_AWPROT <= S_AXI_awprot;
  s04_couplers_to_s04_couplers_AWQOS <= S_AXI_awqos;
  s04_couplers_to_s04_couplers_AWREADY <= M_AXI_awready;
  s04_couplers_to_s04_couplers_AWSIZE <= S_AXI_awsize;
  s04_couplers_to_s04_couplers_AWUSER <= S_AXI_awuser;
  s04_couplers_to_s04_couplers_AWVALID <= S_AXI_awvalid;
  s04_couplers_to_s04_couplers_BID <= M_AXI_bid;
  s04_couplers_to_s04_couplers_BREADY <= S_AXI_bready;
  s04_couplers_to_s04_couplers_BRESP <= M_AXI_bresp;
  s04_couplers_to_s04_couplers_BVALID <= M_AXI_bvalid;
  s04_couplers_to_s04_couplers_RDATA <= M_AXI_rdata;
  s04_couplers_to_s04_couplers_RID <= M_AXI_rid;
  s04_couplers_to_s04_couplers_RLAST <= M_AXI_rlast;
  s04_couplers_to_s04_couplers_RREADY <= S_AXI_rready;
  s04_couplers_to_s04_couplers_RRESP <= M_AXI_rresp;
  s04_couplers_to_s04_couplers_RVALID <= M_AXI_rvalid;
  s04_couplers_to_s04_couplers_WDATA <= S_AXI_wdata;
  s04_couplers_to_s04_couplers_WLAST <= S_AXI_wlast;
  s04_couplers_to_s04_couplers_WREADY <= M_AXI_wready;
  s04_couplers_to_s04_couplers_WSTRB <= S_AXI_wstrb;
  s04_couplers_to_s04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s05_couplers_imp_1YHCGIE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_aruser : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awuser : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_aruser : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awuser : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end s05_couplers_imp_1YHCGIE;

architecture STRUCTURE of s05_couplers_imp_1YHCGIE is
  signal s05_couplers_to_s05_couplers_ARADDR : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARBURST : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARCACHE : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARLEN : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARLOCK : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARPROT : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARQOS : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARREADY : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARSIZE : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARUSER : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARVALID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWADDR : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWBURST : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWCACHE : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWLEN : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWLOCK : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWPROT : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWQOS : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWREADY : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWSIZE : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWUSER : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWVALID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_BID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_BREADY : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_BRESP : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_BVALID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_RDATA : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_RID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_RLAST : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_RREADY : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_RRESP : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_RVALID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_WDATA : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_WLAST : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_WREADY : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_WSTRB : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= s05_couplers_to_s05_couplers_ARADDR;
  M_AXI_arburst <= s05_couplers_to_s05_couplers_ARBURST;
  M_AXI_arcache <= s05_couplers_to_s05_couplers_ARCACHE;
  M_AXI_arid <= s05_couplers_to_s05_couplers_ARID;
  M_AXI_arlen <= s05_couplers_to_s05_couplers_ARLEN;
  M_AXI_arlock <= s05_couplers_to_s05_couplers_ARLOCK;
  M_AXI_arprot <= s05_couplers_to_s05_couplers_ARPROT;
  M_AXI_arqos <= s05_couplers_to_s05_couplers_ARQOS;
  M_AXI_arsize <= s05_couplers_to_s05_couplers_ARSIZE;
  M_AXI_aruser <= s05_couplers_to_s05_couplers_ARUSER;
  M_AXI_arvalid <= s05_couplers_to_s05_couplers_ARVALID;
  M_AXI_awaddr <= s05_couplers_to_s05_couplers_AWADDR;
  M_AXI_awburst <= s05_couplers_to_s05_couplers_AWBURST;
  M_AXI_awcache <= s05_couplers_to_s05_couplers_AWCACHE;
  M_AXI_awid <= s05_couplers_to_s05_couplers_AWID;
  M_AXI_awlen <= s05_couplers_to_s05_couplers_AWLEN;
  M_AXI_awlock <= s05_couplers_to_s05_couplers_AWLOCK;
  M_AXI_awprot <= s05_couplers_to_s05_couplers_AWPROT;
  M_AXI_awqos <= s05_couplers_to_s05_couplers_AWQOS;
  M_AXI_awsize <= s05_couplers_to_s05_couplers_AWSIZE;
  M_AXI_awuser <= s05_couplers_to_s05_couplers_AWUSER;
  M_AXI_awvalid <= s05_couplers_to_s05_couplers_AWVALID;
  M_AXI_bready <= s05_couplers_to_s05_couplers_BREADY;
  M_AXI_rready <= s05_couplers_to_s05_couplers_RREADY;
  M_AXI_wdata <= s05_couplers_to_s05_couplers_WDATA;
  M_AXI_wlast <= s05_couplers_to_s05_couplers_WLAST;
  M_AXI_wstrb <= s05_couplers_to_s05_couplers_WSTRB;
  M_AXI_wvalid <= s05_couplers_to_s05_couplers_WVALID;
  S_AXI_arready <= s05_couplers_to_s05_couplers_ARREADY;
  S_AXI_awready <= s05_couplers_to_s05_couplers_AWREADY;
  S_AXI_bid <= s05_couplers_to_s05_couplers_BID;
  S_AXI_bresp <= s05_couplers_to_s05_couplers_BRESP;
  S_AXI_bvalid <= s05_couplers_to_s05_couplers_BVALID;
  S_AXI_rdata <= s05_couplers_to_s05_couplers_RDATA;
  S_AXI_rid <= s05_couplers_to_s05_couplers_RID;
  S_AXI_rlast <= s05_couplers_to_s05_couplers_RLAST;
  S_AXI_rresp <= s05_couplers_to_s05_couplers_RRESP;
  S_AXI_rvalid <= s05_couplers_to_s05_couplers_RVALID;
  S_AXI_wready <= s05_couplers_to_s05_couplers_WREADY;
  s05_couplers_to_s05_couplers_ARADDR <= S_AXI_araddr;
  s05_couplers_to_s05_couplers_ARBURST <= S_AXI_arburst;
  s05_couplers_to_s05_couplers_ARCACHE <= S_AXI_arcache;
  s05_couplers_to_s05_couplers_ARID <= S_AXI_arid;
  s05_couplers_to_s05_couplers_ARLEN <= S_AXI_arlen;
  s05_couplers_to_s05_couplers_ARLOCK <= S_AXI_arlock;
  s05_couplers_to_s05_couplers_ARPROT <= S_AXI_arprot;
  s05_couplers_to_s05_couplers_ARQOS <= S_AXI_arqos;
  s05_couplers_to_s05_couplers_ARREADY <= M_AXI_arready;
  s05_couplers_to_s05_couplers_ARSIZE <= S_AXI_arsize;
  s05_couplers_to_s05_couplers_ARUSER <= S_AXI_aruser;
  s05_couplers_to_s05_couplers_ARVALID <= S_AXI_arvalid;
  s05_couplers_to_s05_couplers_AWADDR <= S_AXI_awaddr;
  s05_couplers_to_s05_couplers_AWBURST <= S_AXI_awburst;
  s05_couplers_to_s05_couplers_AWCACHE <= S_AXI_awcache;
  s05_couplers_to_s05_couplers_AWID <= S_AXI_awid;
  s05_couplers_to_s05_couplers_AWLEN <= S_AXI_awlen;
  s05_couplers_to_s05_couplers_AWLOCK <= S_AXI_awlock;
  s05_couplers_to_s05_couplers_AWPROT <= S_AXI_awprot;
  s05_couplers_to_s05_couplers_AWQOS <= S_AXI_awqos;
  s05_couplers_to_s05_couplers_AWREADY <= M_AXI_awready;
  s05_couplers_to_s05_couplers_AWSIZE <= S_AXI_awsize;
  s05_couplers_to_s05_couplers_AWUSER <= S_AXI_awuser;
  s05_couplers_to_s05_couplers_AWVALID <= S_AXI_awvalid;
  s05_couplers_to_s05_couplers_BID <= M_AXI_bid;
  s05_couplers_to_s05_couplers_BREADY <= S_AXI_bready;
  s05_couplers_to_s05_couplers_BRESP <= M_AXI_bresp;
  s05_couplers_to_s05_couplers_BVALID <= M_AXI_bvalid;
  s05_couplers_to_s05_couplers_RDATA <= M_AXI_rdata;
  s05_couplers_to_s05_couplers_RID <= M_AXI_rid;
  s05_couplers_to_s05_couplers_RLAST <= M_AXI_rlast;
  s05_couplers_to_s05_couplers_RREADY <= S_AXI_rready;
  s05_couplers_to_s05_couplers_RRESP <= M_AXI_rresp;
  s05_couplers_to_s05_couplers_RVALID <= M_AXI_rvalid;
  s05_couplers_to_s05_couplers_WDATA <= S_AXI_wdata;
  s05_couplers_to_s05_couplers_WLAST <= S_AXI_wlast;
  s05_couplers_to_s05_couplers_WREADY <= M_AXI_wready;
  s05_couplers_to_s05_couplers_WSTRB <= S_AXI_wstrb;
  s05_couplers_to_s05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s06_couplers_imp_5OWWZ8 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_aruser : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awuser : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_aruser : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awuser : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end s06_couplers_imp_5OWWZ8;

architecture STRUCTURE of s06_couplers_imp_5OWWZ8 is
  signal s06_couplers_to_s06_couplers_ARADDR : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_ARBURST : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_ARCACHE : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_ARID : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_ARLEN : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_ARLOCK : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_ARPROT : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_ARQOS : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_ARREADY : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_ARSIZE : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_ARUSER : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_ARVALID : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWADDR : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWBURST : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWCACHE : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWID : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWLEN : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWLOCK : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWPROT : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWQOS : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWREADY : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWSIZE : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWUSER : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_AWVALID : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_BID : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_BREADY : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_BRESP : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_BVALID : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_RDATA : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_RID : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_RLAST : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_RREADY : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_RRESP : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_RVALID : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_WDATA : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_WLAST : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_WREADY : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_WSTRB : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= s06_couplers_to_s06_couplers_ARADDR;
  M_AXI_arburst <= s06_couplers_to_s06_couplers_ARBURST;
  M_AXI_arcache <= s06_couplers_to_s06_couplers_ARCACHE;
  M_AXI_arid <= s06_couplers_to_s06_couplers_ARID;
  M_AXI_arlen <= s06_couplers_to_s06_couplers_ARLEN;
  M_AXI_arlock <= s06_couplers_to_s06_couplers_ARLOCK;
  M_AXI_arprot <= s06_couplers_to_s06_couplers_ARPROT;
  M_AXI_arqos <= s06_couplers_to_s06_couplers_ARQOS;
  M_AXI_arsize <= s06_couplers_to_s06_couplers_ARSIZE;
  M_AXI_aruser <= s06_couplers_to_s06_couplers_ARUSER;
  M_AXI_arvalid <= s06_couplers_to_s06_couplers_ARVALID;
  M_AXI_awaddr <= s06_couplers_to_s06_couplers_AWADDR;
  M_AXI_awburst <= s06_couplers_to_s06_couplers_AWBURST;
  M_AXI_awcache <= s06_couplers_to_s06_couplers_AWCACHE;
  M_AXI_awid <= s06_couplers_to_s06_couplers_AWID;
  M_AXI_awlen <= s06_couplers_to_s06_couplers_AWLEN;
  M_AXI_awlock <= s06_couplers_to_s06_couplers_AWLOCK;
  M_AXI_awprot <= s06_couplers_to_s06_couplers_AWPROT;
  M_AXI_awqos <= s06_couplers_to_s06_couplers_AWQOS;
  M_AXI_awsize <= s06_couplers_to_s06_couplers_AWSIZE;
  M_AXI_awuser <= s06_couplers_to_s06_couplers_AWUSER;
  M_AXI_awvalid <= s06_couplers_to_s06_couplers_AWVALID;
  M_AXI_bready <= s06_couplers_to_s06_couplers_BREADY;
  M_AXI_rready <= s06_couplers_to_s06_couplers_RREADY;
  M_AXI_wdata <= s06_couplers_to_s06_couplers_WDATA;
  M_AXI_wlast <= s06_couplers_to_s06_couplers_WLAST;
  M_AXI_wstrb <= s06_couplers_to_s06_couplers_WSTRB;
  M_AXI_wvalid <= s06_couplers_to_s06_couplers_WVALID;
  S_AXI_arready <= s06_couplers_to_s06_couplers_ARREADY;
  S_AXI_awready <= s06_couplers_to_s06_couplers_AWREADY;
  S_AXI_bid <= s06_couplers_to_s06_couplers_BID;
  S_AXI_bresp <= s06_couplers_to_s06_couplers_BRESP;
  S_AXI_bvalid <= s06_couplers_to_s06_couplers_BVALID;
  S_AXI_rdata <= s06_couplers_to_s06_couplers_RDATA;
  S_AXI_rid <= s06_couplers_to_s06_couplers_RID;
  S_AXI_rlast <= s06_couplers_to_s06_couplers_RLAST;
  S_AXI_rresp <= s06_couplers_to_s06_couplers_RRESP;
  S_AXI_rvalid <= s06_couplers_to_s06_couplers_RVALID;
  S_AXI_wready <= s06_couplers_to_s06_couplers_WREADY;
  s06_couplers_to_s06_couplers_ARADDR <= S_AXI_araddr;
  s06_couplers_to_s06_couplers_ARBURST <= S_AXI_arburst;
  s06_couplers_to_s06_couplers_ARCACHE <= S_AXI_arcache;
  s06_couplers_to_s06_couplers_ARID <= S_AXI_arid;
  s06_couplers_to_s06_couplers_ARLEN <= S_AXI_arlen;
  s06_couplers_to_s06_couplers_ARLOCK <= S_AXI_arlock;
  s06_couplers_to_s06_couplers_ARPROT <= S_AXI_arprot;
  s06_couplers_to_s06_couplers_ARQOS <= S_AXI_arqos;
  s06_couplers_to_s06_couplers_ARREADY <= M_AXI_arready;
  s06_couplers_to_s06_couplers_ARSIZE <= S_AXI_arsize;
  s06_couplers_to_s06_couplers_ARUSER <= S_AXI_aruser;
  s06_couplers_to_s06_couplers_ARVALID <= S_AXI_arvalid;
  s06_couplers_to_s06_couplers_AWADDR <= S_AXI_awaddr;
  s06_couplers_to_s06_couplers_AWBURST <= S_AXI_awburst;
  s06_couplers_to_s06_couplers_AWCACHE <= S_AXI_awcache;
  s06_couplers_to_s06_couplers_AWID <= S_AXI_awid;
  s06_couplers_to_s06_couplers_AWLEN <= S_AXI_awlen;
  s06_couplers_to_s06_couplers_AWLOCK <= S_AXI_awlock;
  s06_couplers_to_s06_couplers_AWPROT <= S_AXI_awprot;
  s06_couplers_to_s06_couplers_AWQOS <= S_AXI_awqos;
  s06_couplers_to_s06_couplers_AWREADY <= M_AXI_awready;
  s06_couplers_to_s06_couplers_AWSIZE <= S_AXI_awsize;
  s06_couplers_to_s06_couplers_AWUSER <= S_AXI_awuser;
  s06_couplers_to_s06_couplers_AWVALID <= S_AXI_awvalid;
  s06_couplers_to_s06_couplers_BID <= M_AXI_bid;
  s06_couplers_to_s06_couplers_BREADY <= S_AXI_bready;
  s06_couplers_to_s06_couplers_BRESP <= M_AXI_bresp;
  s06_couplers_to_s06_couplers_BVALID <= M_AXI_bvalid;
  s06_couplers_to_s06_couplers_RDATA <= M_AXI_rdata;
  s06_couplers_to_s06_couplers_RID <= M_AXI_rid;
  s06_couplers_to_s06_couplers_RLAST <= M_AXI_rlast;
  s06_couplers_to_s06_couplers_RREADY <= S_AXI_rready;
  s06_couplers_to_s06_couplers_RRESP <= M_AXI_rresp;
  s06_couplers_to_s06_couplers_RVALID <= M_AXI_rvalid;
  s06_couplers_to_s06_couplers_WDATA <= S_AXI_wdata;
  s06_couplers_to_s06_couplers_WLAST <= S_AXI_wlast;
  s06_couplers_to_s06_couplers_WREADY <= M_AXI_wready;
  s06_couplers_to_s06_couplers_WSTRB <= S_AXI_wstrb;
  s06_couplers_to_s06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_axi_interconnect_0_0;

architecture STRUCTURE of design_1_axi_interconnect_0_0 is
  component design_1_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xbar_2;
  signal axi_interconnect_2_ACLK_net : STD_LOGIC;
  signal axi_interconnect_2_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_2_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_2_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_2_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_2_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_2_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_2_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_2_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_2_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_2_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_2_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_2_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_2_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_2_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_2_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_2_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_2_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_2_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_2_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_2_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_2_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_2_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_2_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_2_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_2_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_interconnect_2_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 64 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_2_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_interconnect_2_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_interconnect_2_ARCACHE(3 downto 0);
  M00_AXI_arid(0) <= m00_couplers_to_axi_interconnect_2_ARID(0);
  M00_AXI_arlen(3 downto 0) <= m00_couplers_to_axi_interconnect_2_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= m00_couplers_to_axi_interconnect_2_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_interconnect_2_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_interconnect_2_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_interconnect_2_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_2_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_2_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_interconnect_2_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_interconnect_2_AWCACHE(3 downto 0);
  M00_AXI_awid(0) <= m00_couplers_to_axi_interconnect_2_AWID(0);
  M00_AXI_awlen(3 downto 0) <= m00_couplers_to_axi_interconnect_2_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_couplers_to_axi_interconnect_2_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_interconnect_2_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_interconnect_2_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_interconnect_2_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_2_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_2_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_2_RREADY;
  M00_AXI_wdata(63 downto 0) <= m00_couplers_to_axi_interconnect_2_WDATA(63 downto 0);
  M00_AXI_wid(0) <= m00_couplers_to_axi_interconnect_2_WID(0);
  M00_AXI_wlast <= m00_couplers_to_axi_interconnect_2_WLAST;
  M00_AXI_wstrb(7 downto 0) <= m00_couplers_to_axi_interconnect_2_WSTRB(7 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_2_WVALID;
  S00_AXI_arready(0) <= axi_interconnect_2_to_s00_couplers_ARREADY(0);
  S00_AXI_rdata(63 downto 0) <= axi_interconnect_2_to_s00_couplers_RDATA(63 downto 0);
  S00_AXI_rlast(0) <= axi_interconnect_2_to_s00_couplers_RLAST(0);
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_2_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= axi_interconnect_2_to_s00_couplers_RVALID(0);
  S01_AXI_awready(0) <= axi_interconnect_2_to_s01_couplers_AWREADY(0);
  S01_AXI_bresp(1 downto 0) <= axi_interconnect_2_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid(0) <= axi_interconnect_2_to_s01_couplers_BVALID(0);
  S01_AXI_wready(0) <= axi_interconnect_2_to_s01_couplers_WREADY(0);
  axi_interconnect_2_ACLK_net <= ACLK;
  axi_interconnect_2_ARESETN_net <= ARESETN;
  axi_interconnect_2_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_2_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_2_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_2_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_2_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_2_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_2_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  axi_interconnect_2_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  axi_interconnect_2_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_interconnect_2_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_interconnect_2_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_interconnect_2_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_interconnect_2_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_interconnect_2_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_interconnect_2_to_s01_couplers_AWVALID(0) <= S01_AXI_awvalid(0);
  axi_interconnect_2_to_s01_couplers_BREADY(0) <= S01_AXI_bready(0);
  axi_interconnect_2_to_s01_couplers_WDATA(63 downto 0) <= S01_AXI_wdata(63 downto 0);
  axi_interconnect_2_to_s01_couplers_WLAST(0) <= S01_AXI_wlast(0);
  axi_interconnect_2_to_s01_couplers_WSTRB(7 downto 0) <= S01_AXI_wstrb(7 downto 0);
  axi_interconnect_2_to_s01_couplers_WVALID(0) <= S01_AXI_wvalid(0);
  m00_couplers_to_axi_interconnect_2_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_2_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_2_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  m00_couplers_to_axi_interconnect_2_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_2_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_2_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  m00_couplers_to_axi_interconnect_2_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  m00_couplers_to_axi_interconnect_2_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_interconnect_2_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_2_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_2_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_ZLTC2M
     port map (
      M_ACLK => axi_interconnect_2_ACLK_net,
      M_ARESETN => axi_interconnect_2_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_2_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_interconnect_2_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_interconnect_2_ARCACHE(3 downto 0),
      M_AXI_arid(0) => m00_couplers_to_axi_interconnect_2_ARID(0),
      M_AXI_arlen(3 downto 0) => m00_couplers_to_axi_interconnect_2_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m00_couplers_to_axi_interconnect_2_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_interconnect_2_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_interconnect_2_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_2_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_interconnect_2_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_2_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_2_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_interconnect_2_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_interconnect_2_AWCACHE(3 downto 0),
      M_AXI_awid(0) => m00_couplers_to_axi_interconnect_2_AWID(0),
      M_AXI_awlen(3 downto 0) => m00_couplers_to_axi_interconnect_2_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m00_couplers_to_axi_interconnect_2_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_interconnect_2_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_interconnect_2_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_2_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_interconnect_2_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_2_AWVALID,
      M_AXI_bid(5 downto 0) => m00_couplers_to_axi_interconnect_2_BID(5 downto 0),
      M_AXI_bready => m00_couplers_to_axi_interconnect_2_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_2_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_2_BVALID,
      M_AXI_rdata(63 downto 0) => m00_couplers_to_axi_interconnect_2_RDATA(63 downto 0),
      M_AXI_rid(5 downto 0) => m00_couplers_to_axi_interconnect_2_RID(5 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_interconnect_2_RLAST,
      M_AXI_rready => m00_couplers_to_axi_interconnect_2_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_2_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_2_RVALID,
      M_AXI_wdata(63 downto 0) => m00_couplers_to_axi_interconnect_2_WDATA(63 downto 0),
      M_AXI_wid(0) => m00_couplers_to_axi_interconnect_2_WID(0),
      M_AXI_wlast => m00_couplers_to_axi_interconnect_2_WLAST,
      M_AXI_wready => m00_couplers_to_axi_interconnect_2_WREADY,
      M_AXI_wstrb(7 downto 0) => m00_couplers_to_axi_interconnect_2_WSTRB(7 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_2_WVALID,
      S_ACLK => axi_interconnect_2_ACLK_net,
      S_ARESETN => axi_interconnect_2_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => xbar_to_m00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => xbar_to_m00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(0) => xbar_to_m00_couplers_BID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      S_AXI_rid(0) => xbar_to_m00_couplers_RID(0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_XOWISC
     port map (
      M_ACLK => axi_interconnect_2_ACLK_net,
      M_ARESETN => axi_interconnect_2_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_rdata(63 downto 0) => s00_couplers_to_xbar_RDATA(63 downto 0),
      M_AXI_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      S_ACLK => axi_interconnect_2_ACLK_net,
      S_ARESETN => axi_interconnect_2_ARESETN_net,
      S_AXI_araddr(31 downto 0) => axi_interconnect_2_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_2_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_2_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_2_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_2_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => axi_interconnect_2_to_s00_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => axi_interconnect_2_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => axi_interconnect_2_to_s00_couplers_ARVALID(0),
      S_AXI_rdata(63 downto 0) => axi_interconnect_2_to_s00_couplers_RDATA(63 downto 0),
      S_AXI_rlast(0) => axi_interconnect_2_to_s00_couplers_RLAST(0),
      S_AXI_rready(0) => axi_interconnect_2_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_interconnect_2_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_interconnect_2_to_s00_couplers_RVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_15OSRGD
     port map (
      M_ACLK => axi_interconnect_2_ACLK_net,
      M_ARESETN => axi_interconnect_2_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s01_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s01_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid(0) => s01_couplers_to_xbar_BVALID(1),
      M_AXI_wdata(63 downto 0) => s01_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast(0) => s01_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(7 downto 0) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid(0) => s01_couplers_to_xbar_WVALID(0),
      S_ACLK => axi_interconnect_2_ACLK_net,
      S_ARESETN => axi_interconnect_2_ARESETN_net,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_2_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_2_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_2_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_2_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_2_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => axi_interconnect_2_to_s01_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_2_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => axi_interconnect_2_to_s01_couplers_AWVALID(0),
      S_AXI_bready(0) => axi_interconnect_2_to_s01_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_2_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_2_to_s01_couplers_BVALID(0),
      S_AXI_wdata(63 downto 0) => axi_interconnect_2_to_s01_couplers_WDATA(63 downto 0),
      S_AXI_wlast(0) => axi_interconnect_2_to_s01_couplers_WLAST(0),
      S_AXI_wready(0) => axi_interconnect_2_to_s01_couplers_WREADY(0),
      S_AXI_wstrb(7 downto 0) => axi_interconnect_2_to_s01_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_2_to_s01_couplers_WVALID(0)
    );
xbar: component design_1_xbar_2
     port map (
      aclk => axi_interconnect_2_ACLK_net,
      aresetn => axi_interconnect_2_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => xbar_to_m00_couplers_ARID(0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => xbar_to_m00_couplers_AWID(0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(0) => xbar_to_m00_couplers_BID(0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(0) => xbar_to_m00_couplers_RID(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(3 downto 2) => B"00",
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(7 downto 4) => B"0000",
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => B"00",
      s_axi_arlen(15 downto 8) => B"00000000",
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(5 downto 3) => B"000",
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(7 downto 0) => B"00000000",
      s_axi_arready(1) => NLW_xbar_s_axi_arready_UNCONNECTED(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(5 downto 3) => B"001",
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(1) => '0',
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => B"0011",
      s_axi_awid(1 downto 0) => B"00",
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(7 downto 0) => B"00000000",
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => NLW_xbar_s_axi_awready_UNCONNECTED(0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => B"011",
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(0) => '0',
      s_axi_bid(1 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(1 downto 0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY(0),
      s_axi_bready(0) => '0',
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => NLW_xbar_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => NLW_xbar_s_axi_bvalid_UNCONNECTED(0),
      s_axi_rdata(127 downto 64) => NLW_xbar_s_axi_rdata_UNCONNECTED(127 downto 64),
      s_axi_rdata(63 downto 0) => s00_couplers_to_xbar_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(1 downto 0),
      s_axi_rlast(1) => NLW_xbar_s_axi_rlast_UNCONNECTED(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(1) => '0',
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(3 downto 2) => NLW_xbar_s_axi_rresp_UNCONNECTED(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => NLW_xbar_s_axi_rvalid_UNCONNECTED(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(127 downto 64) => s01_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST(0),
      s_axi_wlast(0) => '0',
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => NLW_xbar_s_axi_wready_UNCONNECTED(0),
      s_axi_wstrb(15 downto 8) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wstrb(7 downto 0) => B"11111111",
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_interconnect_1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_axi_interconnect_1_0;

architecture STRUCTURE of design_1_axi_interconnect_1_0 is
  component design_1_xbar_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xbar_3;
  signal axi_interconnect_3_ACLK_net : STD_LOGIC;
  signal axi_interconnect_3_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_3_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_3_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_3_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_3_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_3_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_3_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_3_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_3_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_3_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_3_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_3_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_3_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_3_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_3_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_3_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_3_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_3_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_3_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_3_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_3_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_3_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_3_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_3_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_3_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_3_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_3_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_3_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_3_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_3_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_3_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_3_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_3_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_3_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_3_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_3_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_3_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_3_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_3_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_3_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_3_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_3_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_3_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_axi_interconnect_3_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_3_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_axi_interconnect_3_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_axi_interconnect_3_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_axi_interconnect_3_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_3_WDATA(31 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_axi_interconnect_3_WVALID(0);
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_axi_interconnect_3_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_axi_interconnect_3_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_axi_interconnect_3_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_axi_interconnect_3_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_axi_interconnect_3_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_axi_interconnect_3_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_interconnect_3_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_axi_interconnect_3_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_axi_interconnect_3_WVALID(0);
  S00_AXI_arready(0) <= axi_interconnect_3_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= axi_interconnect_3_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_3_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= axi_interconnect_3_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_3_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_3_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= axi_interconnect_3_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= axi_interconnect_3_to_s00_couplers_WREADY(0);
  axi_interconnect_3_ACLK_net <= ACLK;
  axi_interconnect_3_ARESETN_net <= ARESETN;
  axi_interconnect_3_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_3_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_3_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  axi_interconnect_3_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_3_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_3_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  axi_interconnect_3_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  axi_interconnect_3_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  axi_interconnect_3_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_3_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_3_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  m00_couplers_to_axi_interconnect_3_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_axi_interconnect_3_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_axi_interconnect_3_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_3_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_axi_interconnect_3_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_3_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_3_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_axi_interconnect_3_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_axi_interconnect_3_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_axi_interconnect_3_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_axi_interconnect_3_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_interconnect_3_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_axi_interconnect_3_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_interconnect_3_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_interconnect_3_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_axi_interconnect_3_WREADY(0) <= M01_AXI_wready(0);
m00_couplers: entity work.m00_couplers_imp_1614QE6
     port map (
      M_ACLK => axi_interconnect_3_ACLK_net,
      M_ARESETN => axi_interconnect_3_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_3_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_axi_interconnect_3_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_axi_interconnect_3_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_3_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_axi_interconnect_3_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_axi_interconnect_3_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_axi_interconnect_3_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_3_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_axi_interconnect_3_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_3_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_axi_interconnect_3_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_3_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_axi_interconnect_3_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_3_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_axi_interconnect_3_WREADY(0),
      M_AXI_wvalid(0) => m00_couplers_to_axi_interconnect_3_WVALID(0),
      S_ACLK => axi_interconnect_3_ACLK_net,
      S_ARESETN => axi_interconnect_3_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_XC9BB3
     port map (
      M_ACLK => axi_interconnect_3_ACLK_net,
      M_ARESETN => axi_interconnect_3_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_axi_interconnect_3_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_axi_interconnect_3_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_axi_interconnect_3_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_axi_interconnect_3_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_axi_interconnect_3_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_axi_interconnect_3_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_axi_interconnect_3_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_interconnect_3_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_axi_interconnect_3_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_interconnect_3_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_axi_interconnect_3_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_interconnect_3_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_axi_interconnect_3_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_interconnect_3_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_axi_interconnect_3_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_axi_interconnect_3_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_axi_interconnect_3_WVALID(0),
      S_ACLK => axi_interconnect_3_ACLK_net,
      S_ARESETN => axi_interconnect_3_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_ULGAU4
     port map (
      M_ACLK => axi_interconnect_3_ACLK_net,
      M_ARESETN => axi_interconnect_3_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => axi_interconnect_3_ACLK_net,
      S_ARESETN => axi_interconnect_3_ARESETN_net,
      S_AXI_araddr(31 downto 0) => axi_interconnect_3_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_3_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => axi_interconnect_3_to_s00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => axi_interconnect_3_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => axi_interconnect_3_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_3_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => axi_interconnect_3_to_s00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => axi_interconnect_3_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => axi_interconnect_3_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_3_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_3_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => axi_interconnect_3_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => axi_interconnect_3_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_interconnect_3_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_interconnect_3_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => axi_interconnect_3_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => axi_interconnect_3_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => axi_interconnect_3_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_3_to_s00_couplers_WVALID(0)
    );
xbar: component design_1_xbar_3
     port map (
      aclk => axi_interconnect_3_ACLK_net,
      aresetn => axi_interconnect_3_ARESETN_net,
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(5 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(5 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(5 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(5 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => NLW_xbar_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mem_intercon_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC;
    S03_ACLK : in STD_LOGIC;
    S03_ARESETN : in STD_LOGIC;
    S03_AXI_araddr : in STD_LOGIC;
    S03_AXI_arburst : in STD_LOGIC;
    S03_AXI_arcache : in STD_LOGIC;
    S03_AXI_arid : in STD_LOGIC;
    S03_AXI_arlen : in STD_LOGIC;
    S03_AXI_arlock : in STD_LOGIC;
    S03_AXI_arprot : in STD_LOGIC;
    S03_AXI_arqos : in STD_LOGIC;
    S03_AXI_arready : out STD_LOGIC;
    S03_AXI_arsize : in STD_LOGIC;
    S03_AXI_aruser : in STD_LOGIC;
    S03_AXI_arvalid : in STD_LOGIC;
    S03_AXI_awaddr : in STD_LOGIC;
    S03_AXI_awburst : in STD_LOGIC;
    S03_AXI_awcache : in STD_LOGIC;
    S03_AXI_awid : in STD_LOGIC;
    S03_AXI_awlen : in STD_LOGIC;
    S03_AXI_awlock : in STD_LOGIC;
    S03_AXI_awprot : in STD_LOGIC;
    S03_AXI_awqos : in STD_LOGIC;
    S03_AXI_awready : out STD_LOGIC;
    S03_AXI_awsize : in STD_LOGIC;
    S03_AXI_awuser : in STD_LOGIC;
    S03_AXI_awvalid : in STD_LOGIC;
    S03_AXI_bid : out STD_LOGIC;
    S03_AXI_bready : in STD_LOGIC;
    S03_AXI_bresp : out STD_LOGIC;
    S03_AXI_bvalid : out STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC;
    S03_AXI_rid : out STD_LOGIC;
    S03_AXI_rlast : out STD_LOGIC;
    S03_AXI_rready : in STD_LOGIC;
    S03_AXI_rresp : out STD_LOGIC;
    S03_AXI_rvalid : out STD_LOGIC;
    S03_AXI_wdata : in STD_LOGIC;
    S03_AXI_wlast : in STD_LOGIC;
    S03_AXI_wready : out STD_LOGIC;
    S03_AXI_wstrb : in STD_LOGIC;
    S03_AXI_wvalid : in STD_LOGIC;
    S04_ACLK : in STD_LOGIC;
    S04_ARESETN : in STD_LOGIC;
    S04_AXI_araddr : in STD_LOGIC;
    S04_AXI_arburst : in STD_LOGIC;
    S04_AXI_arcache : in STD_LOGIC;
    S04_AXI_arid : in STD_LOGIC;
    S04_AXI_arlen : in STD_LOGIC;
    S04_AXI_arlock : in STD_LOGIC;
    S04_AXI_arprot : in STD_LOGIC;
    S04_AXI_arqos : in STD_LOGIC;
    S04_AXI_arready : out STD_LOGIC;
    S04_AXI_arsize : in STD_LOGIC;
    S04_AXI_aruser : in STD_LOGIC;
    S04_AXI_arvalid : in STD_LOGIC;
    S04_AXI_awaddr : in STD_LOGIC;
    S04_AXI_awburst : in STD_LOGIC;
    S04_AXI_awcache : in STD_LOGIC;
    S04_AXI_awid : in STD_LOGIC;
    S04_AXI_awlen : in STD_LOGIC;
    S04_AXI_awlock : in STD_LOGIC;
    S04_AXI_awprot : in STD_LOGIC;
    S04_AXI_awqos : in STD_LOGIC;
    S04_AXI_awready : out STD_LOGIC;
    S04_AXI_awsize : in STD_LOGIC;
    S04_AXI_awuser : in STD_LOGIC;
    S04_AXI_awvalid : in STD_LOGIC;
    S04_AXI_bid : out STD_LOGIC;
    S04_AXI_bready : in STD_LOGIC;
    S04_AXI_bresp : out STD_LOGIC;
    S04_AXI_bvalid : out STD_LOGIC;
    S04_AXI_rdata : out STD_LOGIC;
    S04_AXI_rid : out STD_LOGIC;
    S04_AXI_rlast : out STD_LOGIC;
    S04_AXI_rready : in STD_LOGIC;
    S04_AXI_rresp : out STD_LOGIC;
    S04_AXI_rvalid : out STD_LOGIC;
    S04_AXI_wdata : in STD_LOGIC;
    S04_AXI_wlast : in STD_LOGIC;
    S04_AXI_wready : out STD_LOGIC;
    S04_AXI_wstrb : in STD_LOGIC;
    S04_AXI_wvalid : in STD_LOGIC;
    S05_ACLK : in STD_LOGIC;
    S05_ARESETN : in STD_LOGIC;
    S05_AXI_araddr : in STD_LOGIC;
    S05_AXI_arburst : in STD_LOGIC;
    S05_AXI_arcache : in STD_LOGIC;
    S05_AXI_arid : in STD_LOGIC;
    S05_AXI_arlen : in STD_LOGIC;
    S05_AXI_arlock : in STD_LOGIC;
    S05_AXI_arprot : in STD_LOGIC;
    S05_AXI_arqos : in STD_LOGIC;
    S05_AXI_arready : out STD_LOGIC;
    S05_AXI_arsize : in STD_LOGIC;
    S05_AXI_aruser : in STD_LOGIC;
    S05_AXI_arvalid : in STD_LOGIC;
    S05_AXI_awaddr : in STD_LOGIC;
    S05_AXI_awburst : in STD_LOGIC;
    S05_AXI_awcache : in STD_LOGIC;
    S05_AXI_awid : in STD_LOGIC;
    S05_AXI_awlen : in STD_LOGIC;
    S05_AXI_awlock : in STD_LOGIC;
    S05_AXI_awprot : in STD_LOGIC;
    S05_AXI_awqos : in STD_LOGIC;
    S05_AXI_awready : out STD_LOGIC;
    S05_AXI_awsize : in STD_LOGIC;
    S05_AXI_awuser : in STD_LOGIC;
    S05_AXI_awvalid : in STD_LOGIC;
    S05_AXI_bid : out STD_LOGIC;
    S05_AXI_bready : in STD_LOGIC;
    S05_AXI_bresp : out STD_LOGIC;
    S05_AXI_bvalid : out STD_LOGIC;
    S05_AXI_rdata : out STD_LOGIC;
    S05_AXI_rid : out STD_LOGIC;
    S05_AXI_rlast : out STD_LOGIC;
    S05_AXI_rready : in STD_LOGIC;
    S05_AXI_rresp : out STD_LOGIC;
    S05_AXI_rvalid : out STD_LOGIC;
    S05_AXI_wdata : in STD_LOGIC;
    S05_AXI_wlast : in STD_LOGIC;
    S05_AXI_wready : out STD_LOGIC;
    S05_AXI_wstrb : in STD_LOGIC;
    S05_AXI_wvalid : in STD_LOGIC;
    S06_ACLK : in STD_LOGIC;
    S06_ARESETN : in STD_LOGIC;
    S06_AXI_araddr : in STD_LOGIC;
    S06_AXI_arburst : in STD_LOGIC;
    S06_AXI_arcache : in STD_LOGIC;
    S06_AXI_arid : in STD_LOGIC;
    S06_AXI_arlen : in STD_LOGIC;
    S06_AXI_arlock : in STD_LOGIC;
    S06_AXI_arprot : in STD_LOGIC;
    S06_AXI_arqos : in STD_LOGIC;
    S06_AXI_arready : out STD_LOGIC;
    S06_AXI_arsize : in STD_LOGIC;
    S06_AXI_aruser : in STD_LOGIC;
    S06_AXI_arvalid : in STD_LOGIC;
    S06_AXI_awaddr : in STD_LOGIC;
    S06_AXI_awburst : in STD_LOGIC;
    S06_AXI_awcache : in STD_LOGIC;
    S06_AXI_awid : in STD_LOGIC;
    S06_AXI_awlen : in STD_LOGIC;
    S06_AXI_awlock : in STD_LOGIC;
    S06_AXI_awprot : in STD_LOGIC;
    S06_AXI_awqos : in STD_LOGIC;
    S06_AXI_awready : out STD_LOGIC;
    S06_AXI_awsize : in STD_LOGIC;
    S06_AXI_awuser : in STD_LOGIC;
    S06_AXI_awvalid : in STD_LOGIC;
    S06_AXI_bid : out STD_LOGIC;
    S06_AXI_bready : in STD_LOGIC;
    S06_AXI_bresp : out STD_LOGIC;
    S06_AXI_bvalid : out STD_LOGIC;
    S06_AXI_rdata : out STD_LOGIC;
    S06_AXI_rid : out STD_LOGIC;
    S06_AXI_rlast : out STD_LOGIC;
    S06_AXI_rready : in STD_LOGIC;
    S06_AXI_rresp : out STD_LOGIC;
    S06_AXI_rvalid : out STD_LOGIC;
    S06_AXI_wdata : in STD_LOGIC;
    S06_AXI_wlast : in STD_LOGIC;
    S06_AXI_wready : out STD_LOGIC;
    S06_AXI_wstrb : in STD_LOGIC;
    S06_AXI_wvalid : in STD_LOGIC
  );
end design_1_axi_mem_intercon_0;

architecture STRUCTURE of design_1_axi_mem_intercon_0 is
  component design_1_xbar_1 is
  port (
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
  end component design_1_xbar_1;
  component design_1_s00_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_s00_mmu_0;
  component design_1_s01_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_s01_mmu_0;
  component design_1_s02_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component design_1_s02_mmu_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  signal S00_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S00_AXI_1_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_RLAST : STD_LOGIC;
  signal S00_AXI_1_RREADY : STD_LOGIC;
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S00_AXI_1_WID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal S01_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S01_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_ARREADY : STD_LOGIC;
  signal S01_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_ARVALID : STD_LOGIC;
  signal S01_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_RLAST : STD_LOGIC;
  signal S01_AXI_1_RREADY : STD_LOGIC;
  signal S01_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_RVALID : STD_LOGIC;
  signal S02_ACLK_1 : STD_LOGIC;
  signal S02_ARESETN_1 : STD_LOGIC;
  signal S02_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S02_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S02_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S02_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S02_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S02_AXI_1_AWREADY : STD_LOGIC;
  signal S02_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S02_AXI_1_AWVALID : STD_LOGIC;
  signal S02_AXI_1_BREADY : STD_LOGIC;
  signal S02_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S02_AXI_1_BVALID : STD_LOGIC;
  signal S02_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S02_AXI_1_WLAST : STD_LOGIC;
  signal S02_AXI_1_WREADY : STD_LOGIC;
  signal S02_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S02_AXI_1_WVALID : STD_LOGIC;
  signal S03_ACLK_1 : STD_LOGIC;
  signal S03_ARESETN_1 : STD_LOGIC;
  signal S04_ACLK_1 : STD_LOGIC;
  signal S04_ARESETN_1 : STD_LOGIC;
  signal S05_ACLK_1 : STD_LOGIC;
  signal S05_ARESETN_1 : STD_LOGIC;
  signal S06_ACLK_1 : STD_LOGIC;
  signal S06_ARESETN_1 : STD_LOGIC;
  signal axi_mem_intercon_ACLK_net : STD_LOGIC;
  signal axi_mem_intercon_ARESETN_net : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARADDR : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARBURST : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARCACHE : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARLEN : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARPROT : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARQOS : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARSIZE : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARUSER : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWADDR : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWBURST : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWCACHE : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWLEN : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWPROT : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWQOS : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWSIZE : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWUSER : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_BID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_BRESP : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RDATA : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RRESP : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_WDATA : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_WSTRB : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_WVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARADDR : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARBURST : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARCACHE : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARLEN : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARPROT : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARQOS : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARSIZE : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARUSER : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWADDR : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWBURST : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWCACHE : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWLEN : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWPROT : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWQOS : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWSIZE : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWUSER : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_BID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_BRESP : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_RDATA : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_RID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_RRESP : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_WDATA : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_WSTRB : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_WVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARADDR : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARBURST : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARCACHE : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARID : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARLEN : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARPROT : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARQOS : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARSIZE : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARUSER : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWADDR : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWBURST : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWCACHE : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWID : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWLEN : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWPROT : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWQOS : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWSIZE : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWUSER : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_BID : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_BRESP : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_RDATA : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_RID : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_RRESP : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_WDATA : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_WSTRB : STD_LOGIC;
  signal axi_mem_intercon_to_s05_couplers_WVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARADDR : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARBURST : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARCACHE : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARID : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARLEN : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARPROT : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARQOS : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARSIZE : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARUSER : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWADDR : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWBURST : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWCACHE : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWID : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWLEN : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWPROT : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWQOS : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWSIZE : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWUSER : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_BID : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_BRESP : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_RDATA : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_RID : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_RRESP : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_WDATA : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_WSTRB : STD_LOGIC;
  signal axi_mem_intercon_to_s06_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_ARUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s00_mmu_M_AXI_ARVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s00_mmu_M_AXI_AWVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_BREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_BVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_mmu_M_AXI_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_RLAST : STD_LOGIC;
  signal s00_mmu_M_AXI_RREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_RVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_mmu_M_AXI_WID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_WLAST : STD_LOGIC;
  signal s00_mmu_M_AXI_WREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_mmu_M_AXI_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 64 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_mmu_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_mmu_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_mmu_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_mmu_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_mmu_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_mmu_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_mmu_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_mmu_M_AXI_ARREADY : STD_LOGIC;
  signal s01_mmu_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_mmu_M_AXI_ARVALID : STD_LOGIC;
  signal s01_mmu_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_mmu_M_AXI_RLAST : STD_LOGIC;
  signal s01_mmu_M_AXI_RREADY : STD_LOGIC;
  signal s01_mmu_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_mmu_M_AXI_RVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s02_mmu_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_mmu_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_mmu_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_mmu_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_mmu_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_mmu_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_mmu_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_mmu_M_AXI_AWREADY : STD_LOGIC;
  signal s02_mmu_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_mmu_M_AXI_AWVALID : STD_LOGIC;
  signal s02_mmu_M_AXI_BREADY : STD_LOGIC;
  signal s02_mmu_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_mmu_M_AXI_BVALID : STD_LOGIC;
  signal s02_mmu_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_mmu_M_AXI_WLAST : STD_LOGIC;
  signal s02_mmu_M_AXI_WREADY : STD_LOGIC;
  signal s02_mmu_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_mmu_M_AXI_WVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_ARADDR : STD_LOGIC;
  signal s03_couplers_to_xbar_ARBURST : STD_LOGIC;
  signal s03_couplers_to_xbar_ARCACHE : STD_LOGIC;
  signal s03_couplers_to_xbar_ARID : STD_LOGIC;
  signal s03_couplers_to_xbar_ARLEN : STD_LOGIC;
  signal s03_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s03_couplers_to_xbar_ARPROT : STD_LOGIC;
  signal s03_couplers_to_xbar_ARQOS : STD_LOGIC;
  signal s03_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_ARSIZE : STD_LOGIC;
  signal s03_couplers_to_xbar_ARUSER : STD_LOGIC;
  signal s03_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_AWADDR : STD_LOGIC;
  signal s03_couplers_to_xbar_AWBURST : STD_LOGIC;
  signal s03_couplers_to_xbar_AWCACHE : STD_LOGIC;
  signal s03_couplers_to_xbar_AWID : STD_LOGIC;
  signal s03_couplers_to_xbar_AWLEN : STD_LOGIC;
  signal s03_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s03_couplers_to_xbar_AWPROT : STD_LOGIC;
  signal s03_couplers_to_xbar_AWQOS : STD_LOGIC;
  signal s03_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_AWSIZE : STD_LOGIC;
  signal s03_couplers_to_xbar_AWUSER : STD_LOGIC;
  signal s03_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 23 downto 18 );
  signal s03_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 255 downto 192 );
  signal s03_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 23 downto 18 );
  signal s03_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_WDATA : STD_LOGIC;
  signal s03_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s03_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_WSTRB : STD_LOGIC;
  signal s03_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_ARADDR : STD_LOGIC;
  signal s04_couplers_to_xbar_ARBURST : STD_LOGIC;
  signal s04_couplers_to_xbar_ARCACHE : STD_LOGIC;
  signal s04_couplers_to_xbar_ARID : STD_LOGIC;
  signal s04_couplers_to_xbar_ARLEN : STD_LOGIC;
  signal s04_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s04_couplers_to_xbar_ARPROT : STD_LOGIC;
  signal s04_couplers_to_xbar_ARQOS : STD_LOGIC;
  signal s04_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_ARSIZE : STD_LOGIC;
  signal s04_couplers_to_xbar_ARUSER : STD_LOGIC;
  signal s04_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_AWADDR : STD_LOGIC;
  signal s04_couplers_to_xbar_AWBURST : STD_LOGIC;
  signal s04_couplers_to_xbar_AWCACHE : STD_LOGIC;
  signal s04_couplers_to_xbar_AWID : STD_LOGIC;
  signal s04_couplers_to_xbar_AWLEN : STD_LOGIC;
  signal s04_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s04_couplers_to_xbar_AWPROT : STD_LOGIC;
  signal s04_couplers_to_xbar_AWQOS : STD_LOGIC;
  signal s04_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_AWSIZE : STD_LOGIC;
  signal s04_couplers_to_xbar_AWUSER : STD_LOGIC;
  signal s04_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 29 downto 24 );
  signal s04_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s04_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 319 downto 256 );
  signal s04_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 29 downto 24 );
  signal s04_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s04_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WDATA : STD_LOGIC;
  signal s04_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s04_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WSTRB : STD_LOGIC;
  signal s04_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s05_couplers_to_xbar_ARADDR : STD_LOGIC;
  signal s05_couplers_to_xbar_ARBURST : STD_LOGIC;
  signal s05_couplers_to_xbar_ARCACHE : STD_LOGIC;
  signal s05_couplers_to_xbar_ARID : STD_LOGIC;
  signal s05_couplers_to_xbar_ARLEN : STD_LOGIC;
  signal s05_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s05_couplers_to_xbar_ARPROT : STD_LOGIC;
  signal s05_couplers_to_xbar_ARQOS : STD_LOGIC;
  signal s05_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_ARSIZE : STD_LOGIC;
  signal s05_couplers_to_xbar_ARUSER : STD_LOGIC;
  signal s05_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s05_couplers_to_xbar_AWADDR : STD_LOGIC;
  signal s05_couplers_to_xbar_AWBURST : STD_LOGIC;
  signal s05_couplers_to_xbar_AWCACHE : STD_LOGIC;
  signal s05_couplers_to_xbar_AWID : STD_LOGIC;
  signal s05_couplers_to_xbar_AWLEN : STD_LOGIC;
  signal s05_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s05_couplers_to_xbar_AWPROT : STD_LOGIC;
  signal s05_couplers_to_xbar_AWQOS : STD_LOGIC;
  signal s05_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_AWSIZE : STD_LOGIC;
  signal s05_couplers_to_xbar_AWUSER : STD_LOGIC;
  signal s05_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s05_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 35 downto 30 );
  signal s05_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s05_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal s05_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 383 downto 320 );
  signal s05_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 35 downto 30 );
  signal s05_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s05_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal s05_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_WDATA : STD_LOGIC;
  signal s05_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s05_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_WSTRB : STD_LOGIC;
  signal s05_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s06_couplers_to_xbar_ARADDR : STD_LOGIC;
  signal s06_couplers_to_xbar_ARBURST : STD_LOGIC;
  signal s06_couplers_to_xbar_ARCACHE : STD_LOGIC;
  signal s06_couplers_to_xbar_ARID : STD_LOGIC;
  signal s06_couplers_to_xbar_ARLEN : STD_LOGIC;
  signal s06_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s06_couplers_to_xbar_ARPROT : STD_LOGIC;
  signal s06_couplers_to_xbar_ARQOS : STD_LOGIC;
  signal s06_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_ARSIZE : STD_LOGIC;
  signal s06_couplers_to_xbar_ARUSER : STD_LOGIC;
  signal s06_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s06_couplers_to_xbar_AWADDR : STD_LOGIC;
  signal s06_couplers_to_xbar_AWBURST : STD_LOGIC;
  signal s06_couplers_to_xbar_AWCACHE : STD_LOGIC;
  signal s06_couplers_to_xbar_AWID : STD_LOGIC;
  signal s06_couplers_to_xbar_AWLEN : STD_LOGIC;
  signal s06_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s06_couplers_to_xbar_AWPROT : STD_LOGIC;
  signal s06_couplers_to_xbar_AWQOS : STD_LOGIC;
  signal s06_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_AWSIZE : STD_LOGIC;
  signal s06_couplers_to_xbar_AWUSER : STD_LOGIC;
  signal s06_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s06_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 41 downto 36 );
  signal s06_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s06_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal s06_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 447 downto 384 );
  signal s06_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 41 downto 36 );
  signal s06_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s06_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal s06_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_WDATA : STD_LOGIC;
  signal s06_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s06_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_WSTRB : STD_LOGIC;
  signal s06_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 6 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 191 downto 128 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 6 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0);
  M00_AXI_arid(5 downto 0) <= m00_couplers_to_axi_mem_intercon_ARID(5 downto 0);
  M00_AXI_arlen(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= m00_couplers_to_axi_mem_intercon_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_mem_intercon_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0);
  M00_AXI_awid(5 downto 0) <= m00_couplers_to_axi_mem_intercon_AWID(5 downto 0);
  M00_AXI_awlen(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_couplers_to_axi_mem_intercon_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_mem_intercon_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_mem_intercon_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_mem_intercon_RREADY;
  M00_AXI_wdata(63 downto 0) <= m00_couplers_to_axi_mem_intercon_WDATA(63 downto 0);
  M00_AXI_wid(5 downto 0) <= m00_couplers_to_axi_mem_intercon_WID(5 downto 0);
  M00_AXI_wlast <= m00_couplers_to_axi_mem_intercon_WLAST;
  M00_AXI_wstrb(7 downto 0) <= m00_couplers_to_axi_mem_intercon_WSTRB(7 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_mem_intercon_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  S00_AXI_1_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  S00_AXI_1_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  S00_AXI_1_ARID(2 downto 0) <= S00_AXI_arid(2 downto 0);
  S00_AXI_1_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  S00_AXI_1_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  S00_AXI_1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  S00_AXI_1_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  S00_AXI_1_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  S00_AXI_1_ARUSER(4 downto 0) <= S00_AXI_aruser(4 downto 0);
  S00_AXI_1_ARVALID <= S00_AXI_arvalid;
  S00_AXI_1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  S00_AXI_1_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  S00_AXI_1_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  S00_AXI_1_AWID(2 downto 0) <= S00_AXI_awid(2 downto 0);
  S00_AXI_1_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  S00_AXI_1_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  S00_AXI_1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  S00_AXI_1_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  S00_AXI_1_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  S00_AXI_1_AWUSER(4 downto 0) <= S00_AXI_awuser(4 downto 0);
  S00_AXI_1_AWVALID <= S00_AXI_awvalid;
  S00_AXI_1_BREADY <= S00_AXI_bready;
  S00_AXI_1_RREADY <= S00_AXI_rready;
  S00_AXI_1_WDATA(63 downto 0) <= S00_AXI_wdata(63 downto 0);
  S00_AXI_1_WID(5 downto 0) <= S00_AXI_wid(5 downto 0);
  S00_AXI_1_WLAST <= S00_AXI_wlast;
  S00_AXI_1_WSTRB(7 downto 0) <= S00_AXI_wstrb(7 downto 0);
  S00_AXI_1_WVALID <= S00_AXI_wvalid;
  S00_AXI_arready <= S00_AXI_1_ARREADY;
  S00_AXI_awready <= S00_AXI_1_AWREADY;
  S00_AXI_bid(2 downto 0) <= S00_AXI_1_BID(2 downto 0);
  S00_AXI_bresp(1 downto 0) <= S00_AXI_1_BRESP(1 downto 0);
  S00_AXI_bvalid <= S00_AXI_1_BVALID;
  S00_AXI_rdata(63 downto 0) <= S00_AXI_1_RDATA(63 downto 0);
  S00_AXI_rid(2 downto 0) <= S00_AXI_1_RID(2 downto 0);
  S00_AXI_rlast <= S00_AXI_1_RLAST;
  S00_AXI_rresp(1 downto 0) <= S00_AXI_1_RRESP(1 downto 0);
  S00_AXI_rvalid <= S00_AXI_1_RVALID;
  S00_AXI_wready <= S00_AXI_1_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_1_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  S01_AXI_1_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  S01_AXI_1_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  S01_AXI_1_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  S01_AXI_1_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  S01_AXI_1_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  S01_AXI_1_ARVALID <= S01_AXI_arvalid;
  S01_AXI_1_RREADY <= S01_AXI_rready;
  S01_AXI_arready <= S01_AXI_1_ARREADY;
  S01_AXI_rdata(31 downto 0) <= S01_AXI_1_RDATA(31 downto 0);
  S01_AXI_rlast <= S01_AXI_1_RLAST;
  S01_AXI_rresp(1 downto 0) <= S01_AXI_1_RRESP(1 downto 0);
  S01_AXI_rvalid <= S01_AXI_1_RVALID;
  S02_ACLK_1 <= S02_ACLK;
  S02_ARESETN_1 <= S02_ARESETN;
  S02_AXI_1_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  S02_AXI_1_AWBURST(1 downto 0) <= S02_AXI_awburst(1 downto 0);
  S02_AXI_1_AWCACHE(3 downto 0) <= S02_AXI_awcache(3 downto 0);
  S02_AXI_1_AWLEN(7 downto 0) <= S02_AXI_awlen(7 downto 0);
  S02_AXI_1_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  S02_AXI_1_AWSIZE(2 downto 0) <= S02_AXI_awsize(2 downto 0);
  S02_AXI_1_AWVALID <= S02_AXI_awvalid;
  S02_AXI_1_BREADY <= S02_AXI_bready;
  S02_AXI_1_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  S02_AXI_1_WLAST <= S02_AXI_wlast;
  S02_AXI_1_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  S02_AXI_1_WVALID <= S02_AXI_wvalid;
  S02_AXI_awready <= S02_AXI_1_AWREADY;
  S02_AXI_bresp(1 downto 0) <= S02_AXI_1_BRESP(1 downto 0);
  S02_AXI_bvalid <= S02_AXI_1_BVALID;
  S02_AXI_wready <= S02_AXI_1_WREADY;
  S03_ACLK_1 <= S03_ACLK;
  S03_ARESETN_1 <= S03_ARESETN;
  S03_AXI_arready <= axi_mem_intercon_to_s03_couplers_ARREADY;
  S03_AXI_awready <= axi_mem_intercon_to_s03_couplers_AWREADY;
  S03_AXI_bid <= axi_mem_intercon_to_s03_couplers_BID;
  S03_AXI_bresp <= axi_mem_intercon_to_s03_couplers_BRESP;
  S03_AXI_bvalid <= axi_mem_intercon_to_s03_couplers_BVALID;
  S03_AXI_rdata <= axi_mem_intercon_to_s03_couplers_RDATA;
  S03_AXI_rid <= axi_mem_intercon_to_s03_couplers_RID;
  S03_AXI_rlast <= axi_mem_intercon_to_s03_couplers_RLAST;
  S03_AXI_rresp <= axi_mem_intercon_to_s03_couplers_RRESP;
  S03_AXI_rvalid <= axi_mem_intercon_to_s03_couplers_RVALID;
  S03_AXI_wready <= axi_mem_intercon_to_s03_couplers_WREADY;
  S04_ACLK_1 <= S04_ACLK;
  S04_ARESETN_1 <= S04_ARESETN;
  S04_AXI_arready <= axi_mem_intercon_to_s04_couplers_ARREADY;
  S04_AXI_awready <= axi_mem_intercon_to_s04_couplers_AWREADY;
  S04_AXI_bid <= axi_mem_intercon_to_s04_couplers_BID;
  S04_AXI_bresp <= axi_mem_intercon_to_s04_couplers_BRESP;
  S04_AXI_bvalid <= axi_mem_intercon_to_s04_couplers_BVALID;
  S04_AXI_rdata <= axi_mem_intercon_to_s04_couplers_RDATA;
  S04_AXI_rid <= axi_mem_intercon_to_s04_couplers_RID;
  S04_AXI_rlast <= axi_mem_intercon_to_s04_couplers_RLAST;
  S04_AXI_rresp <= axi_mem_intercon_to_s04_couplers_RRESP;
  S04_AXI_rvalid <= axi_mem_intercon_to_s04_couplers_RVALID;
  S04_AXI_wready <= axi_mem_intercon_to_s04_couplers_WREADY;
  S05_ACLK_1 <= S05_ACLK;
  S05_ARESETN_1 <= S05_ARESETN;
  S05_AXI_arready <= axi_mem_intercon_to_s05_couplers_ARREADY;
  S05_AXI_awready <= axi_mem_intercon_to_s05_couplers_AWREADY;
  S05_AXI_bid <= axi_mem_intercon_to_s05_couplers_BID;
  S05_AXI_bresp <= axi_mem_intercon_to_s05_couplers_BRESP;
  S05_AXI_bvalid <= axi_mem_intercon_to_s05_couplers_BVALID;
  S05_AXI_rdata <= axi_mem_intercon_to_s05_couplers_RDATA;
  S05_AXI_rid <= axi_mem_intercon_to_s05_couplers_RID;
  S05_AXI_rlast <= axi_mem_intercon_to_s05_couplers_RLAST;
  S05_AXI_rresp <= axi_mem_intercon_to_s05_couplers_RRESP;
  S05_AXI_rvalid <= axi_mem_intercon_to_s05_couplers_RVALID;
  S05_AXI_wready <= axi_mem_intercon_to_s05_couplers_WREADY;
  S06_ACLK_1 <= S06_ACLK;
  S06_ARESETN_1 <= S06_ARESETN;
  S06_AXI_arready <= axi_mem_intercon_to_s06_couplers_ARREADY;
  S06_AXI_awready <= axi_mem_intercon_to_s06_couplers_AWREADY;
  S06_AXI_bid <= axi_mem_intercon_to_s06_couplers_BID;
  S06_AXI_bresp <= axi_mem_intercon_to_s06_couplers_BRESP;
  S06_AXI_bvalid <= axi_mem_intercon_to_s06_couplers_BVALID;
  S06_AXI_rdata <= axi_mem_intercon_to_s06_couplers_RDATA;
  S06_AXI_rid <= axi_mem_intercon_to_s06_couplers_RID;
  S06_AXI_rlast <= axi_mem_intercon_to_s06_couplers_RLAST;
  S06_AXI_rresp <= axi_mem_intercon_to_s06_couplers_RRESP;
  S06_AXI_rvalid <= axi_mem_intercon_to_s06_couplers_RVALID;
  S06_AXI_wready <= axi_mem_intercon_to_s06_couplers_WREADY;
  axi_mem_intercon_ACLK_net <= ACLK;
  axi_mem_intercon_ARESETN_net <= ARESETN;
  axi_mem_intercon_to_s03_couplers_ARADDR <= S03_AXI_araddr;
  axi_mem_intercon_to_s03_couplers_ARBURST <= S03_AXI_arburst;
  axi_mem_intercon_to_s03_couplers_ARCACHE <= S03_AXI_arcache;
  axi_mem_intercon_to_s03_couplers_ARID <= S03_AXI_arid;
  axi_mem_intercon_to_s03_couplers_ARLEN <= S03_AXI_arlen;
  axi_mem_intercon_to_s03_couplers_ARLOCK <= S03_AXI_arlock;
  axi_mem_intercon_to_s03_couplers_ARPROT <= S03_AXI_arprot;
  axi_mem_intercon_to_s03_couplers_ARQOS <= S03_AXI_arqos;
  axi_mem_intercon_to_s03_couplers_ARSIZE <= S03_AXI_arsize;
  axi_mem_intercon_to_s03_couplers_ARUSER <= S03_AXI_aruser;
  axi_mem_intercon_to_s03_couplers_ARVALID <= S03_AXI_arvalid;
  axi_mem_intercon_to_s03_couplers_AWADDR <= S03_AXI_awaddr;
  axi_mem_intercon_to_s03_couplers_AWBURST <= S03_AXI_awburst;
  axi_mem_intercon_to_s03_couplers_AWCACHE <= S03_AXI_awcache;
  axi_mem_intercon_to_s03_couplers_AWID <= S03_AXI_awid;
  axi_mem_intercon_to_s03_couplers_AWLEN <= S03_AXI_awlen;
  axi_mem_intercon_to_s03_couplers_AWLOCK <= S03_AXI_awlock;
  axi_mem_intercon_to_s03_couplers_AWPROT <= S03_AXI_awprot;
  axi_mem_intercon_to_s03_couplers_AWQOS <= S03_AXI_awqos;
  axi_mem_intercon_to_s03_couplers_AWSIZE <= S03_AXI_awsize;
  axi_mem_intercon_to_s03_couplers_AWUSER <= S03_AXI_awuser;
  axi_mem_intercon_to_s03_couplers_AWVALID <= S03_AXI_awvalid;
  axi_mem_intercon_to_s03_couplers_BREADY <= S03_AXI_bready;
  axi_mem_intercon_to_s03_couplers_RREADY <= S03_AXI_rready;
  axi_mem_intercon_to_s03_couplers_WDATA <= S03_AXI_wdata;
  axi_mem_intercon_to_s03_couplers_WLAST <= S03_AXI_wlast;
  axi_mem_intercon_to_s03_couplers_WSTRB <= S03_AXI_wstrb;
  axi_mem_intercon_to_s03_couplers_WVALID <= S03_AXI_wvalid;
  axi_mem_intercon_to_s04_couplers_ARADDR <= S04_AXI_araddr;
  axi_mem_intercon_to_s04_couplers_ARBURST <= S04_AXI_arburst;
  axi_mem_intercon_to_s04_couplers_ARCACHE <= S04_AXI_arcache;
  axi_mem_intercon_to_s04_couplers_ARID <= S04_AXI_arid;
  axi_mem_intercon_to_s04_couplers_ARLEN <= S04_AXI_arlen;
  axi_mem_intercon_to_s04_couplers_ARLOCK <= S04_AXI_arlock;
  axi_mem_intercon_to_s04_couplers_ARPROT <= S04_AXI_arprot;
  axi_mem_intercon_to_s04_couplers_ARQOS <= S04_AXI_arqos;
  axi_mem_intercon_to_s04_couplers_ARSIZE <= S04_AXI_arsize;
  axi_mem_intercon_to_s04_couplers_ARUSER <= S04_AXI_aruser;
  axi_mem_intercon_to_s04_couplers_ARVALID <= S04_AXI_arvalid;
  axi_mem_intercon_to_s04_couplers_AWADDR <= S04_AXI_awaddr;
  axi_mem_intercon_to_s04_couplers_AWBURST <= S04_AXI_awburst;
  axi_mem_intercon_to_s04_couplers_AWCACHE <= S04_AXI_awcache;
  axi_mem_intercon_to_s04_couplers_AWID <= S04_AXI_awid;
  axi_mem_intercon_to_s04_couplers_AWLEN <= S04_AXI_awlen;
  axi_mem_intercon_to_s04_couplers_AWLOCK <= S04_AXI_awlock;
  axi_mem_intercon_to_s04_couplers_AWPROT <= S04_AXI_awprot;
  axi_mem_intercon_to_s04_couplers_AWQOS <= S04_AXI_awqos;
  axi_mem_intercon_to_s04_couplers_AWSIZE <= S04_AXI_awsize;
  axi_mem_intercon_to_s04_couplers_AWUSER <= S04_AXI_awuser;
  axi_mem_intercon_to_s04_couplers_AWVALID <= S04_AXI_awvalid;
  axi_mem_intercon_to_s04_couplers_BREADY <= S04_AXI_bready;
  axi_mem_intercon_to_s04_couplers_RREADY <= S04_AXI_rready;
  axi_mem_intercon_to_s04_couplers_WDATA <= S04_AXI_wdata;
  axi_mem_intercon_to_s04_couplers_WLAST <= S04_AXI_wlast;
  axi_mem_intercon_to_s04_couplers_WSTRB <= S04_AXI_wstrb;
  axi_mem_intercon_to_s04_couplers_WVALID <= S04_AXI_wvalid;
  axi_mem_intercon_to_s05_couplers_ARADDR <= S05_AXI_araddr;
  axi_mem_intercon_to_s05_couplers_ARBURST <= S05_AXI_arburst;
  axi_mem_intercon_to_s05_couplers_ARCACHE <= S05_AXI_arcache;
  axi_mem_intercon_to_s05_couplers_ARID <= S05_AXI_arid;
  axi_mem_intercon_to_s05_couplers_ARLEN <= S05_AXI_arlen;
  axi_mem_intercon_to_s05_couplers_ARLOCK <= S05_AXI_arlock;
  axi_mem_intercon_to_s05_couplers_ARPROT <= S05_AXI_arprot;
  axi_mem_intercon_to_s05_couplers_ARQOS <= S05_AXI_arqos;
  axi_mem_intercon_to_s05_couplers_ARSIZE <= S05_AXI_arsize;
  axi_mem_intercon_to_s05_couplers_ARUSER <= S05_AXI_aruser;
  axi_mem_intercon_to_s05_couplers_ARVALID <= S05_AXI_arvalid;
  axi_mem_intercon_to_s05_couplers_AWADDR <= S05_AXI_awaddr;
  axi_mem_intercon_to_s05_couplers_AWBURST <= S05_AXI_awburst;
  axi_mem_intercon_to_s05_couplers_AWCACHE <= S05_AXI_awcache;
  axi_mem_intercon_to_s05_couplers_AWID <= S05_AXI_awid;
  axi_mem_intercon_to_s05_couplers_AWLEN <= S05_AXI_awlen;
  axi_mem_intercon_to_s05_couplers_AWLOCK <= S05_AXI_awlock;
  axi_mem_intercon_to_s05_couplers_AWPROT <= S05_AXI_awprot;
  axi_mem_intercon_to_s05_couplers_AWQOS <= S05_AXI_awqos;
  axi_mem_intercon_to_s05_couplers_AWSIZE <= S05_AXI_awsize;
  axi_mem_intercon_to_s05_couplers_AWUSER <= S05_AXI_awuser;
  axi_mem_intercon_to_s05_couplers_AWVALID <= S05_AXI_awvalid;
  axi_mem_intercon_to_s05_couplers_BREADY <= S05_AXI_bready;
  axi_mem_intercon_to_s05_couplers_RREADY <= S05_AXI_rready;
  axi_mem_intercon_to_s05_couplers_WDATA <= S05_AXI_wdata;
  axi_mem_intercon_to_s05_couplers_WLAST <= S05_AXI_wlast;
  axi_mem_intercon_to_s05_couplers_WSTRB <= S05_AXI_wstrb;
  axi_mem_intercon_to_s05_couplers_WVALID <= S05_AXI_wvalid;
  axi_mem_intercon_to_s06_couplers_ARADDR <= S06_AXI_araddr;
  axi_mem_intercon_to_s06_couplers_ARBURST <= S06_AXI_arburst;
  axi_mem_intercon_to_s06_couplers_ARCACHE <= S06_AXI_arcache;
  axi_mem_intercon_to_s06_couplers_ARID <= S06_AXI_arid;
  axi_mem_intercon_to_s06_couplers_ARLEN <= S06_AXI_arlen;
  axi_mem_intercon_to_s06_couplers_ARLOCK <= S06_AXI_arlock;
  axi_mem_intercon_to_s06_couplers_ARPROT <= S06_AXI_arprot;
  axi_mem_intercon_to_s06_couplers_ARQOS <= S06_AXI_arqos;
  axi_mem_intercon_to_s06_couplers_ARSIZE <= S06_AXI_arsize;
  axi_mem_intercon_to_s06_couplers_ARUSER <= S06_AXI_aruser;
  axi_mem_intercon_to_s06_couplers_ARVALID <= S06_AXI_arvalid;
  axi_mem_intercon_to_s06_couplers_AWADDR <= S06_AXI_awaddr;
  axi_mem_intercon_to_s06_couplers_AWBURST <= S06_AXI_awburst;
  axi_mem_intercon_to_s06_couplers_AWCACHE <= S06_AXI_awcache;
  axi_mem_intercon_to_s06_couplers_AWID <= S06_AXI_awid;
  axi_mem_intercon_to_s06_couplers_AWLEN <= S06_AXI_awlen;
  axi_mem_intercon_to_s06_couplers_AWLOCK <= S06_AXI_awlock;
  axi_mem_intercon_to_s06_couplers_AWPROT <= S06_AXI_awprot;
  axi_mem_intercon_to_s06_couplers_AWQOS <= S06_AXI_awqos;
  axi_mem_intercon_to_s06_couplers_AWSIZE <= S06_AXI_awsize;
  axi_mem_intercon_to_s06_couplers_AWUSER <= S06_AXI_awuser;
  axi_mem_intercon_to_s06_couplers_AWVALID <= S06_AXI_awvalid;
  axi_mem_intercon_to_s06_couplers_BREADY <= S06_AXI_bready;
  axi_mem_intercon_to_s06_couplers_RREADY <= S06_AXI_rready;
  axi_mem_intercon_to_s06_couplers_WDATA <= S06_AXI_wdata;
  axi_mem_intercon_to_s06_couplers_WLAST <= S06_AXI_wlast;
  axi_mem_intercon_to_s06_couplers_WSTRB <= S06_AXI_wstrb;
  axi_mem_intercon_to_s06_couplers_WVALID <= S06_AXI_wvalid;
  m00_couplers_to_axi_mem_intercon_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_mem_intercon_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_mem_intercon_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_mem_intercon_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  m00_couplers_to_axi_mem_intercon_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  m00_couplers_to_axi_mem_intercon_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_mem_intercon_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_mem_intercon_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1R706YB
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0),
      M_AXI_arid(5 downto 0) => m00_couplers_to_axi_mem_intercon_ARID(5 downto 0),
      M_AXI_arlen(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m00_couplers_to_axi_mem_intercon_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_mem_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_mem_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0),
      M_AXI_awid(5 downto 0) => m00_couplers_to_axi_mem_intercon_AWID(5 downto 0),
      M_AXI_awlen(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m00_couplers_to_axi_mem_intercon_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_mem_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_mem_intercon_AWVALID,
      M_AXI_bid(5 downto 0) => m00_couplers_to_axi_mem_intercon_BID(5 downto 0),
      M_AXI_bready => m00_couplers_to_axi_mem_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_mem_intercon_BVALID,
      M_AXI_rdata(63 downto 0) => m00_couplers_to_axi_mem_intercon_RDATA(63 downto 0),
      M_AXI_rid(5 downto 0) => m00_couplers_to_axi_mem_intercon_RID(5 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_mem_intercon_RLAST,
      M_AXI_rready => m00_couplers_to_axi_mem_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_mem_intercon_RVALID,
      M_AXI_wdata(63 downto 0) => m00_couplers_to_axi_mem_intercon_WDATA(63 downto 0),
      M_AXI_wid(5 downto 0) => m00_couplers_to_axi_mem_intercon_WID(5 downto 0),
      M_AXI_wlast => m00_couplers_to_axi_mem_intercon_WLAST,
      M_AXI_wready => m00_couplers_to_axi_mem_intercon_WREADY,
      M_AXI_wstrb(7 downto 0) => m00_couplers_to_axi_mem_intercon_WSTRB(7 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_mem_intercon_WVALID,
      S_ACLK => axi_mem_intercon_ACLK_net,
      S_ARESETN => axi_mem_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(5 downto 0) => xbar_to_m00_couplers_ARID(5 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_aruser(4 downto 0) => xbar_to_m00_couplers_ARUSER(4 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(5 downto 0) => xbar_to_m00_couplers_AWID(5 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(4 downto 0) => xbar_to_m00_couplers_AWUSER(4 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(5 downto 0) => xbar_to_m00_couplers_BID(5 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      S_AXI_rid(5 downto 0) => xbar_to_m00_couplers_RID(5 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_7HNO1D
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(2 downto 0) => s00_couplers_to_xbar_ARID(2 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_aruser(4 downto 0) => s00_couplers_to_xbar_ARUSER(4 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(2 downto 0) => s00_couplers_to_xbar_AWID(2 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awuser(4 downto 0) => s00_couplers_to_xbar_AWUSER(4 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bid(5 downto 0) => s00_couplers_to_xbar_BID(5 downto 0),
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(63 downto 0) => s00_couplers_to_xbar_RDATA(63 downto 0),
      M_AXI_rid(5 downto 0) => s00_couplers_to_xbar_RID(5 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(63 downto 0) => s00_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(7 downto 0) => s00_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => s00_mmu_M_AXI_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => s00_mmu_M_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => s00_mmu_M_AXI_ARCACHE(3 downto 0),
      S_AXI_arid(2 downto 0) => s00_mmu_M_AXI_ARID(2 downto 0),
      S_AXI_arlen(3 downto 0) => s00_mmu_M_AXI_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => s00_mmu_M_AXI_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => s00_mmu_M_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => s00_mmu_M_AXI_ARQOS(3 downto 0),
      S_AXI_arready => s00_mmu_M_AXI_ARREADY,
      S_AXI_arsize(2 downto 0) => s00_mmu_M_AXI_ARSIZE(2 downto 0),
      S_AXI_aruser(4 downto 0) => s00_mmu_M_AXI_ARUSER(4 downto 0),
      S_AXI_arvalid => s00_mmu_M_AXI_ARVALID,
      S_AXI_awaddr(31 downto 0) => s00_mmu_M_AXI_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      S_AXI_awid(2 downto 0) => s00_mmu_M_AXI_AWID(2 downto 0),
      S_AXI_awlen(3 downto 0) => s00_mmu_M_AXI_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => s00_mmu_M_AXI_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      S_AXI_awready => s00_mmu_M_AXI_AWREADY,
      S_AXI_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      S_AXI_awuser(4 downto 0) => s00_mmu_M_AXI_AWUSER(4 downto 0),
      S_AXI_awvalid => s00_mmu_M_AXI_AWVALID,
      S_AXI_bid(2 downto 0) => s00_mmu_M_AXI_BID(2 downto 0),
      S_AXI_bready => s00_mmu_M_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => s00_mmu_M_AXI_BVALID,
      S_AXI_rdata(63 downto 0) => s00_mmu_M_AXI_RDATA(63 downto 0),
      S_AXI_rid(2 downto 0) => s00_mmu_M_AXI_RID(2 downto 0),
      S_AXI_rlast => s00_mmu_M_AXI_RLAST,
      S_AXI_rready => s00_mmu_M_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => s00_mmu_M_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => s00_mmu_M_AXI_RVALID,
      S_AXI_wdata(63 downto 0) => s00_mmu_M_AXI_WDATA(63 downto 0),
      S_AXI_wid(2 downto 0) => s00_mmu_M_AXI_WID(2 downto 0),
      S_AXI_wlast => s00_mmu_M_AXI_WLAST,
      S_AXI_wready => s00_mmu_M_AXI_WREADY,
      S_AXI_wstrb(7 downto 0) => s00_mmu_M_AXI_WSTRB(7 downto 0),
      S_AXI_wvalid => s00_mmu_M_AXI_WVALID
    );
s00_mmu: component design_1_s00_mmu_0
     port map (
      aclk => S00_ACLK_1,
      aresetn => S00_ARESETN_1,
      m_axi_araddr(31 downto 0) => s00_mmu_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_mmu_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_mmu_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(2 downto 0) => s00_mmu_M_AXI_ARID(2 downto 0),
      m_axi_arlen(3 downto 0) => s00_mmu_M_AXI_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => s00_mmu_M_AXI_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => s00_mmu_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_mmu_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => s00_mmu_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => s00_mmu_M_AXI_ARSIZE(2 downto 0),
      m_axi_aruser(4 downto 0) => s00_mmu_M_AXI_ARUSER(4 downto 0),
      m_axi_arvalid => s00_mmu_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_mmu_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(2 downto 0) => s00_mmu_M_AXI_AWID(2 downto 0),
      m_axi_awlen(3 downto 0) => s00_mmu_M_AXI_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => s00_mmu_M_AXI_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s00_mmu_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      m_axi_awuser(4 downto 0) => s00_mmu_M_AXI_AWUSER(4 downto 0),
      m_axi_awvalid => s00_mmu_M_AXI_AWVALID,
      m_axi_bid(2 downto 0) => s00_mmu_M_AXI_BID(2 downto 0),
      m_axi_bready => s00_mmu_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => s00_mmu_M_AXI_BVALID,
      m_axi_rdata(63 downto 0) => s00_mmu_M_AXI_RDATA(63 downto 0),
      m_axi_rid(2 downto 0) => s00_mmu_M_AXI_RID(2 downto 0),
      m_axi_rlast => s00_mmu_M_AXI_RLAST,
      m_axi_rready => s00_mmu_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => s00_mmu_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => s00_mmu_M_AXI_RVALID,
      m_axi_wdata(63 downto 0) => s00_mmu_M_AXI_WDATA(63 downto 0),
      m_axi_wid(2 downto 0) => s00_mmu_M_AXI_WID(2 downto 0),
      m_axi_wlast => s00_mmu_M_AXI_WLAST,
      m_axi_wready => s00_mmu_M_AXI_WREADY,
      m_axi_wstrb(7 downto 0) => s00_mmu_M_AXI_WSTRB(7 downto 0),
      m_axi_wvalid => s00_mmu_M_AXI_WVALID,
      s_axi_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      s_axi_arid(2 downto 0) => S00_AXI_1_ARID(2 downto 0),
      s_axi_arlen(3 downto 0) => S00_AXI_1_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => S00_AXI_1_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      s_axi_arready => S00_AXI_1_ARREADY,
      s_axi_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      s_axi_aruser(4 downto 0) => S00_AXI_1_ARUSER(4 downto 0),
      s_axi_arvalid => S00_AXI_1_ARVALID,
      s_axi_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => S00_AXI_1_AWID(2 downto 0),
      s_axi_awlen(3 downto 0) => S00_AXI_1_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => S00_AXI_1_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      s_axi_awready => S00_AXI_1_AWREADY,
      s_axi_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      s_axi_awuser(4 downto 0) => S00_AXI_1_AWUSER(4 downto 0),
      s_axi_awvalid => S00_AXI_1_AWVALID,
      s_axi_bid(2 downto 0) => S00_AXI_1_BID(2 downto 0),
      s_axi_bready => S00_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S00_AXI_1_BVALID,
      s_axi_rdata(63 downto 0) => S00_AXI_1_RDATA(63 downto 0),
      s_axi_rid(2 downto 0) => S00_AXI_1_RID(2 downto 0),
      s_axi_rlast => S00_AXI_1_RLAST,
      s_axi_rready => S00_AXI_1_RREADY,
      s_axi_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S00_AXI_1_RVALID,
      s_axi_wdata(63 downto 0) => S00_AXI_1_WDATA(63 downto 0),
      s_axi_wid(2 downto 0) => S00_AXI_1_WID(2 downto 0),
      s_axi_wlast => S00_AXI_1_WLAST,
      s_axi_wready => S00_AXI_1_WREADY,
      s_axi_wstrb(7 downto 0) => S00_AXI_1_WSTRB(7 downto 0),
      s_axi_wvalid => S00_AXI_1_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_1W60HW0
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_rdata(63 downto 0) => s01_couplers_to_xbar_RDATA(127 downto 64),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => s01_mmu_M_AXI_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => s01_mmu_M_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => s01_mmu_M_AXI_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => s01_mmu_M_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => s01_mmu_M_AXI_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => s01_mmu_M_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => s01_mmu_M_AXI_ARQOS(3 downto 0),
      S_AXI_arready => s01_mmu_M_AXI_ARREADY,
      S_AXI_arsize(2 downto 0) => s01_mmu_M_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid => s01_mmu_M_AXI_ARVALID,
      S_AXI_rdata(31 downto 0) => s01_mmu_M_AXI_RDATA(31 downto 0),
      S_AXI_rlast => s01_mmu_M_AXI_RLAST,
      S_AXI_rready => s01_mmu_M_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => s01_mmu_M_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => s01_mmu_M_AXI_RVALID
    );
s01_mmu: component design_1_s01_mmu_0
     port map (
      aclk => S01_ACLK_1,
      aresetn => S01_ARESETN_1,
      m_axi_araddr(31 downto 0) => s01_mmu_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s01_mmu_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s01_mmu_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s01_mmu_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => s01_mmu_M_AXI_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s01_mmu_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s01_mmu_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => s01_mmu_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => s01_mmu_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => s01_mmu_M_AXI_ARVALID,
      m_axi_rdata(31 downto 0) => s01_mmu_M_AXI_RDATA(31 downto 0),
      m_axi_rlast => s01_mmu_M_AXI_RLAST,
      m_axi_rready => s01_mmu_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => s01_mmu_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => s01_mmu_M_AXI_RVALID,
      s_axi_araddr(31 downto 0) => S01_AXI_1_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => S01_AXI_1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => S01_AXI_1_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => S01_AXI_1_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => S01_AXI_1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => S01_AXI_1_ARREADY,
      s_axi_arsize(2 downto 0) => S01_AXI_1_ARSIZE(2 downto 0),
      s_axi_arvalid => S01_AXI_1_ARVALID,
      s_axi_rdata(31 downto 0) => S01_AXI_1_RDATA(31 downto 0),
      s_axi_rlast => S01_AXI_1_RLAST,
      s_axi_rready => S01_AXI_1_RREADY,
      s_axi_rresp(1 downto 0) => S01_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S01_AXI_1_RVALID
    );
s02_couplers: entity work.s02_couplers_imp_8NCF02
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s02_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s02_couplers_to_xbar_AWREADY(2),
      M_AXI_awsize(2 downto 0) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s02_couplers_to_xbar_AWVALID,
      M_AXI_bready => s02_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      M_AXI_bvalid => s02_couplers_to_xbar_BVALID(2),
      M_AXI_wdata(63 downto 0) => s02_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast => s02_couplers_to_xbar_WLAST,
      M_AXI_wready => s02_couplers_to_xbar_WREADY(2),
      M_AXI_wstrb(7 downto 0) => s02_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid => s02_couplers_to_xbar_WVALID,
      S_ACLK => S02_ACLK_1,
      S_ARESETN => S02_ARESETN_1,
      S_AXI_awaddr(31 downto 0) => s02_mmu_M_AXI_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => s02_mmu_M_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => s02_mmu_M_AXI_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => s02_mmu_M_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => s02_mmu_M_AXI_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => s02_mmu_M_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => s02_mmu_M_AXI_AWQOS(3 downto 0),
      S_AXI_awready => s02_mmu_M_AXI_AWREADY,
      S_AXI_awsize(2 downto 0) => s02_mmu_M_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid => s02_mmu_M_AXI_AWVALID,
      S_AXI_bready => s02_mmu_M_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => s02_mmu_M_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => s02_mmu_M_AXI_BVALID,
      S_AXI_wdata(31 downto 0) => s02_mmu_M_AXI_WDATA(31 downto 0),
      S_AXI_wlast => s02_mmu_M_AXI_WLAST,
      S_AXI_wready => s02_mmu_M_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => s02_mmu_M_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => s02_mmu_M_AXI_WVALID
    );
s02_mmu: component design_1_s02_mmu_0
     port map (
      aclk => S02_ACLK_1,
      aresetn => S02_ARESETN_1,
      m_axi_awaddr(31 downto 0) => s02_mmu_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s02_mmu_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s02_mmu_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s02_mmu_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => s02_mmu_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s02_mmu_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s02_mmu_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s02_mmu_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => s02_mmu_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => s02_mmu_M_AXI_AWVALID,
      m_axi_bready => s02_mmu_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s02_mmu_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => s02_mmu_M_AXI_BVALID,
      m_axi_wdata(31 downto 0) => s02_mmu_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => s02_mmu_M_AXI_WLAST,
      m_axi_wready => s02_mmu_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => s02_mmu_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => s02_mmu_M_AXI_WVALID,
      s_axi_awaddr(31 downto 0) => S02_AXI_1_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => S02_AXI_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => S02_AXI_1_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => S02_AXI_1_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => S02_AXI_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => S02_AXI_1_AWREADY,
      s_axi_awsize(2 downto 0) => S02_AXI_1_AWSIZE(2 downto 0),
      s_axi_awvalid => S02_AXI_1_AWVALID,
      s_axi_bready => S02_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S02_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S02_AXI_1_BVALID,
      s_axi_wdata(31 downto 0) => S02_AXI_1_WDATA(31 downto 0),
      s_axi_wlast => S02_AXI_1_WLAST,
      s_axi_wready => S02_AXI_1_WREADY,
      s_axi_wstrb(3 downto 0) => S02_AXI_1_WSTRB(3 downto 0),
      s_axi_wvalid => S02_AXI_1_WVALID
    );
s03_couplers: entity work.s03_couplers_imp_1UQ1PUB
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr => s03_couplers_to_xbar_ARADDR,
      M_AXI_arburst => s03_couplers_to_xbar_ARBURST,
      M_AXI_arcache => s03_couplers_to_xbar_ARCACHE,
      M_AXI_arid => s03_couplers_to_xbar_ARID,
      M_AXI_arlen => s03_couplers_to_xbar_ARLEN,
      M_AXI_arlock => s03_couplers_to_xbar_ARLOCK,
      M_AXI_arprot => s03_couplers_to_xbar_ARPROT,
      M_AXI_arqos => s03_couplers_to_xbar_ARQOS,
      M_AXI_arready => s03_couplers_to_xbar_ARREADY(3),
      M_AXI_arsize => s03_couplers_to_xbar_ARSIZE,
      M_AXI_aruser => s03_couplers_to_xbar_ARUSER,
      M_AXI_arvalid => s03_couplers_to_xbar_ARVALID,
      M_AXI_awaddr => s03_couplers_to_xbar_AWADDR,
      M_AXI_awburst => s03_couplers_to_xbar_AWBURST,
      M_AXI_awcache => s03_couplers_to_xbar_AWCACHE,
      M_AXI_awid => s03_couplers_to_xbar_AWID,
      M_AXI_awlen => s03_couplers_to_xbar_AWLEN,
      M_AXI_awlock => s03_couplers_to_xbar_AWLOCK,
      M_AXI_awprot => s03_couplers_to_xbar_AWPROT,
      M_AXI_awqos => s03_couplers_to_xbar_AWQOS,
      M_AXI_awready => s03_couplers_to_xbar_AWREADY(3),
      M_AXI_awsize => s03_couplers_to_xbar_AWSIZE,
      M_AXI_awuser => s03_couplers_to_xbar_AWUSER,
      M_AXI_awvalid => s03_couplers_to_xbar_AWVALID,
      M_AXI_bid => s03_couplers_to_xbar_BID(18),
      M_AXI_bready => s03_couplers_to_xbar_BREADY,
      M_AXI_bresp => s03_couplers_to_xbar_BRESP(6),
      M_AXI_bvalid => s03_couplers_to_xbar_BVALID(3),
      M_AXI_rdata => s03_couplers_to_xbar_RDATA(192),
      M_AXI_rid => s03_couplers_to_xbar_RID(18),
      M_AXI_rlast => s03_couplers_to_xbar_RLAST(3),
      M_AXI_rready => s03_couplers_to_xbar_RREADY,
      M_AXI_rresp => s03_couplers_to_xbar_RRESP(6),
      M_AXI_rvalid => s03_couplers_to_xbar_RVALID(3),
      M_AXI_wdata => s03_couplers_to_xbar_WDATA,
      M_AXI_wlast => s03_couplers_to_xbar_WLAST,
      M_AXI_wready => s03_couplers_to_xbar_WREADY(3),
      M_AXI_wstrb => s03_couplers_to_xbar_WSTRB,
      M_AXI_wvalid => s03_couplers_to_xbar_WVALID,
      S_ACLK => S03_ACLK_1,
      S_ARESETN => S03_ARESETN_1,
      S_AXI_araddr => axi_mem_intercon_to_s03_couplers_ARADDR,
      S_AXI_arburst => axi_mem_intercon_to_s03_couplers_ARBURST,
      S_AXI_arcache => axi_mem_intercon_to_s03_couplers_ARCACHE,
      S_AXI_arid => axi_mem_intercon_to_s03_couplers_ARID,
      S_AXI_arlen => axi_mem_intercon_to_s03_couplers_ARLEN,
      S_AXI_arlock => axi_mem_intercon_to_s03_couplers_ARLOCK,
      S_AXI_arprot => axi_mem_intercon_to_s03_couplers_ARPROT,
      S_AXI_arqos => axi_mem_intercon_to_s03_couplers_ARQOS,
      S_AXI_arready => axi_mem_intercon_to_s03_couplers_ARREADY,
      S_AXI_arsize => axi_mem_intercon_to_s03_couplers_ARSIZE,
      S_AXI_aruser => axi_mem_intercon_to_s03_couplers_ARUSER,
      S_AXI_arvalid => axi_mem_intercon_to_s03_couplers_ARVALID,
      S_AXI_awaddr => axi_mem_intercon_to_s03_couplers_AWADDR,
      S_AXI_awburst => axi_mem_intercon_to_s03_couplers_AWBURST,
      S_AXI_awcache => axi_mem_intercon_to_s03_couplers_AWCACHE,
      S_AXI_awid => axi_mem_intercon_to_s03_couplers_AWID,
      S_AXI_awlen => axi_mem_intercon_to_s03_couplers_AWLEN,
      S_AXI_awlock => axi_mem_intercon_to_s03_couplers_AWLOCK,
      S_AXI_awprot => axi_mem_intercon_to_s03_couplers_AWPROT,
      S_AXI_awqos => axi_mem_intercon_to_s03_couplers_AWQOS,
      S_AXI_awready => axi_mem_intercon_to_s03_couplers_AWREADY,
      S_AXI_awsize => axi_mem_intercon_to_s03_couplers_AWSIZE,
      S_AXI_awuser => axi_mem_intercon_to_s03_couplers_AWUSER,
      S_AXI_awvalid => axi_mem_intercon_to_s03_couplers_AWVALID,
      S_AXI_bid => axi_mem_intercon_to_s03_couplers_BID,
      S_AXI_bready => axi_mem_intercon_to_s03_couplers_BREADY,
      S_AXI_bresp => axi_mem_intercon_to_s03_couplers_BRESP,
      S_AXI_bvalid => axi_mem_intercon_to_s03_couplers_BVALID,
      S_AXI_rdata => axi_mem_intercon_to_s03_couplers_RDATA,
      S_AXI_rid => axi_mem_intercon_to_s03_couplers_RID,
      S_AXI_rlast => axi_mem_intercon_to_s03_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s03_couplers_RREADY,
      S_AXI_rresp => axi_mem_intercon_to_s03_couplers_RRESP,
      S_AXI_rvalid => axi_mem_intercon_to_s03_couplers_RVALID,
      S_AXI_wdata => axi_mem_intercon_to_s03_couplers_WDATA,
      S_AXI_wlast => axi_mem_intercon_to_s03_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s03_couplers_WREADY,
      S_AXI_wstrb => axi_mem_intercon_to_s03_couplers_WSTRB,
      S_AXI_wvalid => axi_mem_intercon_to_s03_couplers_WVALID
    );
s04_couplers: entity work.s04_couplers_imp_4T8GAF
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr => s04_couplers_to_xbar_ARADDR,
      M_AXI_arburst => s04_couplers_to_xbar_ARBURST,
      M_AXI_arcache => s04_couplers_to_xbar_ARCACHE,
      M_AXI_arid => s04_couplers_to_xbar_ARID,
      M_AXI_arlen => s04_couplers_to_xbar_ARLEN,
      M_AXI_arlock => s04_couplers_to_xbar_ARLOCK,
      M_AXI_arprot => s04_couplers_to_xbar_ARPROT,
      M_AXI_arqos => s04_couplers_to_xbar_ARQOS,
      M_AXI_arready => s04_couplers_to_xbar_ARREADY(4),
      M_AXI_arsize => s04_couplers_to_xbar_ARSIZE,
      M_AXI_aruser => s04_couplers_to_xbar_ARUSER,
      M_AXI_arvalid => s04_couplers_to_xbar_ARVALID,
      M_AXI_awaddr => s04_couplers_to_xbar_AWADDR,
      M_AXI_awburst => s04_couplers_to_xbar_AWBURST,
      M_AXI_awcache => s04_couplers_to_xbar_AWCACHE,
      M_AXI_awid => s04_couplers_to_xbar_AWID,
      M_AXI_awlen => s04_couplers_to_xbar_AWLEN,
      M_AXI_awlock => s04_couplers_to_xbar_AWLOCK,
      M_AXI_awprot => s04_couplers_to_xbar_AWPROT,
      M_AXI_awqos => s04_couplers_to_xbar_AWQOS,
      M_AXI_awready => s04_couplers_to_xbar_AWREADY(4),
      M_AXI_awsize => s04_couplers_to_xbar_AWSIZE,
      M_AXI_awuser => s04_couplers_to_xbar_AWUSER,
      M_AXI_awvalid => s04_couplers_to_xbar_AWVALID,
      M_AXI_bid => s04_couplers_to_xbar_BID(24),
      M_AXI_bready => s04_couplers_to_xbar_BREADY,
      M_AXI_bresp => s04_couplers_to_xbar_BRESP(8),
      M_AXI_bvalid => s04_couplers_to_xbar_BVALID(4),
      M_AXI_rdata => s04_couplers_to_xbar_RDATA(256),
      M_AXI_rid => s04_couplers_to_xbar_RID(24),
      M_AXI_rlast => s04_couplers_to_xbar_RLAST(4),
      M_AXI_rready => s04_couplers_to_xbar_RREADY,
      M_AXI_rresp => s04_couplers_to_xbar_RRESP(8),
      M_AXI_rvalid => s04_couplers_to_xbar_RVALID(4),
      M_AXI_wdata => s04_couplers_to_xbar_WDATA,
      M_AXI_wlast => s04_couplers_to_xbar_WLAST,
      M_AXI_wready => s04_couplers_to_xbar_WREADY(4),
      M_AXI_wstrb => s04_couplers_to_xbar_WSTRB,
      M_AXI_wvalid => s04_couplers_to_xbar_WVALID,
      S_ACLK => S04_ACLK_1,
      S_ARESETN => S04_ARESETN_1,
      S_AXI_araddr => axi_mem_intercon_to_s04_couplers_ARADDR,
      S_AXI_arburst => axi_mem_intercon_to_s04_couplers_ARBURST,
      S_AXI_arcache => axi_mem_intercon_to_s04_couplers_ARCACHE,
      S_AXI_arid => axi_mem_intercon_to_s04_couplers_ARID,
      S_AXI_arlen => axi_mem_intercon_to_s04_couplers_ARLEN,
      S_AXI_arlock => axi_mem_intercon_to_s04_couplers_ARLOCK,
      S_AXI_arprot => axi_mem_intercon_to_s04_couplers_ARPROT,
      S_AXI_arqos => axi_mem_intercon_to_s04_couplers_ARQOS,
      S_AXI_arready => axi_mem_intercon_to_s04_couplers_ARREADY,
      S_AXI_arsize => axi_mem_intercon_to_s04_couplers_ARSIZE,
      S_AXI_aruser => axi_mem_intercon_to_s04_couplers_ARUSER,
      S_AXI_arvalid => axi_mem_intercon_to_s04_couplers_ARVALID,
      S_AXI_awaddr => axi_mem_intercon_to_s04_couplers_AWADDR,
      S_AXI_awburst => axi_mem_intercon_to_s04_couplers_AWBURST,
      S_AXI_awcache => axi_mem_intercon_to_s04_couplers_AWCACHE,
      S_AXI_awid => axi_mem_intercon_to_s04_couplers_AWID,
      S_AXI_awlen => axi_mem_intercon_to_s04_couplers_AWLEN,
      S_AXI_awlock => axi_mem_intercon_to_s04_couplers_AWLOCK,
      S_AXI_awprot => axi_mem_intercon_to_s04_couplers_AWPROT,
      S_AXI_awqos => axi_mem_intercon_to_s04_couplers_AWQOS,
      S_AXI_awready => axi_mem_intercon_to_s04_couplers_AWREADY,
      S_AXI_awsize => axi_mem_intercon_to_s04_couplers_AWSIZE,
      S_AXI_awuser => axi_mem_intercon_to_s04_couplers_AWUSER,
      S_AXI_awvalid => axi_mem_intercon_to_s04_couplers_AWVALID,
      S_AXI_bid => axi_mem_intercon_to_s04_couplers_BID,
      S_AXI_bready => axi_mem_intercon_to_s04_couplers_BREADY,
      S_AXI_bresp => axi_mem_intercon_to_s04_couplers_BRESP,
      S_AXI_bvalid => axi_mem_intercon_to_s04_couplers_BVALID,
      S_AXI_rdata => axi_mem_intercon_to_s04_couplers_RDATA,
      S_AXI_rid => axi_mem_intercon_to_s04_couplers_RID,
      S_AXI_rlast => axi_mem_intercon_to_s04_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s04_couplers_RREADY,
      S_AXI_rresp => axi_mem_intercon_to_s04_couplers_RRESP,
      S_AXI_rvalid => axi_mem_intercon_to_s04_couplers_RVALID,
      S_AXI_wdata => axi_mem_intercon_to_s04_couplers_WDATA,
      S_AXI_wlast => axi_mem_intercon_to_s04_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s04_couplers_WREADY,
      S_AXI_wstrb => axi_mem_intercon_to_s04_couplers_WSTRB,
      S_AXI_wvalid => axi_mem_intercon_to_s04_couplers_WVALID
    );
s05_couplers: entity work.s05_couplers_imp_1YHCGIE
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr => s05_couplers_to_xbar_ARADDR,
      M_AXI_arburst => s05_couplers_to_xbar_ARBURST,
      M_AXI_arcache => s05_couplers_to_xbar_ARCACHE,
      M_AXI_arid => s05_couplers_to_xbar_ARID,
      M_AXI_arlen => s05_couplers_to_xbar_ARLEN,
      M_AXI_arlock => s05_couplers_to_xbar_ARLOCK,
      M_AXI_arprot => s05_couplers_to_xbar_ARPROT,
      M_AXI_arqos => s05_couplers_to_xbar_ARQOS,
      M_AXI_arready => s05_couplers_to_xbar_ARREADY(5),
      M_AXI_arsize => s05_couplers_to_xbar_ARSIZE,
      M_AXI_aruser => s05_couplers_to_xbar_ARUSER,
      M_AXI_arvalid => s05_couplers_to_xbar_ARVALID,
      M_AXI_awaddr => s05_couplers_to_xbar_AWADDR,
      M_AXI_awburst => s05_couplers_to_xbar_AWBURST,
      M_AXI_awcache => s05_couplers_to_xbar_AWCACHE,
      M_AXI_awid => s05_couplers_to_xbar_AWID,
      M_AXI_awlen => s05_couplers_to_xbar_AWLEN,
      M_AXI_awlock => s05_couplers_to_xbar_AWLOCK,
      M_AXI_awprot => s05_couplers_to_xbar_AWPROT,
      M_AXI_awqos => s05_couplers_to_xbar_AWQOS,
      M_AXI_awready => s05_couplers_to_xbar_AWREADY(5),
      M_AXI_awsize => s05_couplers_to_xbar_AWSIZE,
      M_AXI_awuser => s05_couplers_to_xbar_AWUSER,
      M_AXI_awvalid => s05_couplers_to_xbar_AWVALID,
      M_AXI_bid => s05_couplers_to_xbar_BID(30),
      M_AXI_bready => s05_couplers_to_xbar_BREADY,
      M_AXI_bresp => s05_couplers_to_xbar_BRESP(10),
      M_AXI_bvalid => s05_couplers_to_xbar_BVALID(5),
      M_AXI_rdata => s05_couplers_to_xbar_RDATA(320),
      M_AXI_rid => s05_couplers_to_xbar_RID(30),
      M_AXI_rlast => s05_couplers_to_xbar_RLAST(5),
      M_AXI_rready => s05_couplers_to_xbar_RREADY,
      M_AXI_rresp => s05_couplers_to_xbar_RRESP(10),
      M_AXI_rvalid => s05_couplers_to_xbar_RVALID(5),
      M_AXI_wdata => s05_couplers_to_xbar_WDATA,
      M_AXI_wlast => s05_couplers_to_xbar_WLAST,
      M_AXI_wready => s05_couplers_to_xbar_WREADY(5),
      M_AXI_wstrb => s05_couplers_to_xbar_WSTRB,
      M_AXI_wvalid => s05_couplers_to_xbar_WVALID,
      S_ACLK => S05_ACLK_1,
      S_ARESETN => S05_ARESETN_1,
      S_AXI_araddr => axi_mem_intercon_to_s05_couplers_ARADDR,
      S_AXI_arburst => axi_mem_intercon_to_s05_couplers_ARBURST,
      S_AXI_arcache => axi_mem_intercon_to_s05_couplers_ARCACHE,
      S_AXI_arid => axi_mem_intercon_to_s05_couplers_ARID,
      S_AXI_arlen => axi_mem_intercon_to_s05_couplers_ARLEN,
      S_AXI_arlock => axi_mem_intercon_to_s05_couplers_ARLOCK,
      S_AXI_arprot => axi_mem_intercon_to_s05_couplers_ARPROT,
      S_AXI_arqos => axi_mem_intercon_to_s05_couplers_ARQOS,
      S_AXI_arready => axi_mem_intercon_to_s05_couplers_ARREADY,
      S_AXI_arsize => axi_mem_intercon_to_s05_couplers_ARSIZE,
      S_AXI_aruser => axi_mem_intercon_to_s05_couplers_ARUSER,
      S_AXI_arvalid => axi_mem_intercon_to_s05_couplers_ARVALID,
      S_AXI_awaddr => axi_mem_intercon_to_s05_couplers_AWADDR,
      S_AXI_awburst => axi_mem_intercon_to_s05_couplers_AWBURST,
      S_AXI_awcache => axi_mem_intercon_to_s05_couplers_AWCACHE,
      S_AXI_awid => axi_mem_intercon_to_s05_couplers_AWID,
      S_AXI_awlen => axi_mem_intercon_to_s05_couplers_AWLEN,
      S_AXI_awlock => axi_mem_intercon_to_s05_couplers_AWLOCK,
      S_AXI_awprot => axi_mem_intercon_to_s05_couplers_AWPROT,
      S_AXI_awqos => axi_mem_intercon_to_s05_couplers_AWQOS,
      S_AXI_awready => axi_mem_intercon_to_s05_couplers_AWREADY,
      S_AXI_awsize => axi_mem_intercon_to_s05_couplers_AWSIZE,
      S_AXI_awuser => axi_mem_intercon_to_s05_couplers_AWUSER,
      S_AXI_awvalid => axi_mem_intercon_to_s05_couplers_AWVALID,
      S_AXI_bid => axi_mem_intercon_to_s05_couplers_BID,
      S_AXI_bready => axi_mem_intercon_to_s05_couplers_BREADY,
      S_AXI_bresp => axi_mem_intercon_to_s05_couplers_BRESP,
      S_AXI_bvalid => axi_mem_intercon_to_s05_couplers_BVALID,
      S_AXI_rdata => axi_mem_intercon_to_s05_couplers_RDATA,
      S_AXI_rid => axi_mem_intercon_to_s05_couplers_RID,
      S_AXI_rlast => axi_mem_intercon_to_s05_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s05_couplers_RREADY,
      S_AXI_rresp => axi_mem_intercon_to_s05_couplers_RRESP,
      S_AXI_rvalid => axi_mem_intercon_to_s05_couplers_RVALID,
      S_AXI_wdata => axi_mem_intercon_to_s05_couplers_WDATA,
      S_AXI_wlast => axi_mem_intercon_to_s05_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s05_couplers_WREADY,
      S_AXI_wstrb => axi_mem_intercon_to_s05_couplers_WSTRB,
      S_AXI_wvalid => axi_mem_intercon_to_s05_couplers_WVALID
    );
s06_couplers: entity work.s06_couplers_imp_5OWWZ8
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr => s06_couplers_to_xbar_ARADDR,
      M_AXI_arburst => s06_couplers_to_xbar_ARBURST,
      M_AXI_arcache => s06_couplers_to_xbar_ARCACHE,
      M_AXI_arid => s06_couplers_to_xbar_ARID,
      M_AXI_arlen => s06_couplers_to_xbar_ARLEN,
      M_AXI_arlock => s06_couplers_to_xbar_ARLOCK,
      M_AXI_arprot => s06_couplers_to_xbar_ARPROT,
      M_AXI_arqos => s06_couplers_to_xbar_ARQOS,
      M_AXI_arready => s06_couplers_to_xbar_ARREADY(6),
      M_AXI_arsize => s06_couplers_to_xbar_ARSIZE,
      M_AXI_aruser => s06_couplers_to_xbar_ARUSER,
      M_AXI_arvalid => s06_couplers_to_xbar_ARVALID,
      M_AXI_awaddr => s06_couplers_to_xbar_AWADDR,
      M_AXI_awburst => s06_couplers_to_xbar_AWBURST,
      M_AXI_awcache => s06_couplers_to_xbar_AWCACHE,
      M_AXI_awid => s06_couplers_to_xbar_AWID,
      M_AXI_awlen => s06_couplers_to_xbar_AWLEN,
      M_AXI_awlock => s06_couplers_to_xbar_AWLOCK,
      M_AXI_awprot => s06_couplers_to_xbar_AWPROT,
      M_AXI_awqos => s06_couplers_to_xbar_AWQOS,
      M_AXI_awready => s06_couplers_to_xbar_AWREADY(6),
      M_AXI_awsize => s06_couplers_to_xbar_AWSIZE,
      M_AXI_awuser => s06_couplers_to_xbar_AWUSER,
      M_AXI_awvalid => s06_couplers_to_xbar_AWVALID,
      M_AXI_bid => s06_couplers_to_xbar_BID(36),
      M_AXI_bready => s06_couplers_to_xbar_BREADY,
      M_AXI_bresp => s06_couplers_to_xbar_BRESP(12),
      M_AXI_bvalid => s06_couplers_to_xbar_BVALID(6),
      M_AXI_rdata => s06_couplers_to_xbar_RDATA(384),
      M_AXI_rid => s06_couplers_to_xbar_RID(36),
      M_AXI_rlast => s06_couplers_to_xbar_RLAST(6),
      M_AXI_rready => s06_couplers_to_xbar_RREADY,
      M_AXI_rresp => s06_couplers_to_xbar_RRESP(12),
      M_AXI_rvalid => s06_couplers_to_xbar_RVALID(6),
      M_AXI_wdata => s06_couplers_to_xbar_WDATA,
      M_AXI_wlast => s06_couplers_to_xbar_WLAST,
      M_AXI_wready => s06_couplers_to_xbar_WREADY(6),
      M_AXI_wstrb => s06_couplers_to_xbar_WSTRB,
      M_AXI_wvalid => s06_couplers_to_xbar_WVALID,
      S_ACLK => S06_ACLK_1,
      S_ARESETN => S06_ARESETN_1,
      S_AXI_araddr => axi_mem_intercon_to_s06_couplers_ARADDR,
      S_AXI_arburst => axi_mem_intercon_to_s06_couplers_ARBURST,
      S_AXI_arcache => axi_mem_intercon_to_s06_couplers_ARCACHE,
      S_AXI_arid => axi_mem_intercon_to_s06_couplers_ARID,
      S_AXI_arlen => axi_mem_intercon_to_s06_couplers_ARLEN,
      S_AXI_arlock => axi_mem_intercon_to_s06_couplers_ARLOCK,
      S_AXI_arprot => axi_mem_intercon_to_s06_couplers_ARPROT,
      S_AXI_arqos => axi_mem_intercon_to_s06_couplers_ARQOS,
      S_AXI_arready => axi_mem_intercon_to_s06_couplers_ARREADY,
      S_AXI_arsize => axi_mem_intercon_to_s06_couplers_ARSIZE,
      S_AXI_aruser => axi_mem_intercon_to_s06_couplers_ARUSER,
      S_AXI_arvalid => axi_mem_intercon_to_s06_couplers_ARVALID,
      S_AXI_awaddr => axi_mem_intercon_to_s06_couplers_AWADDR,
      S_AXI_awburst => axi_mem_intercon_to_s06_couplers_AWBURST,
      S_AXI_awcache => axi_mem_intercon_to_s06_couplers_AWCACHE,
      S_AXI_awid => axi_mem_intercon_to_s06_couplers_AWID,
      S_AXI_awlen => axi_mem_intercon_to_s06_couplers_AWLEN,
      S_AXI_awlock => axi_mem_intercon_to_s06_couplers_AWLOCK,
      S_AXI_awprot => axi_mem_intercon_to_s06_couplers_AWPROT,
      S_AXI_awqos => axi_mem_intercon_to_s06_couplers_AWQOS,
      S_AXI_awready => axi_mem_intercon_to_s06_couplers_AWREADY,
      S_AXI_awsize => axi_mem_intercon_to_s06_couplers_AWSIZE,
      S_AXI_awuser => axi_mem_intercon_to_s06_couplers_AWUSER,
      S_AXI_awvalid => axi_mem_intercon_to_s06_couplers_AWVALID,
      S_AXI_bid => axi_mem_intercon_to_s06_couplers_BID,
      S_AXI_bready => axi_mem_intercon_to_s06_couplers_BREADY,
      S_AXI_bresp => axi_mem_intercon_to_s06_couplers_BRESP,
      S_AXI_bvalid => axi_mem_intercon_to_s06_couplers_BVALID,
      S_AXI_rdata => axi_mem_intercon_to_s06_couplers_RDATA,
      S_AXI_rid => axi_mem_intercon_to_s06_couplers_RID,
      S_AXI_rlast => axi_mem_intercon_to_s06_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s06_couplers_RREADY,
      S_AXI_rresp => axi_mem_intercon_to_s06_couplers_RRESP,
      S_AXI_rvalid => axi_mem_intercon_to_s06_couplers_RVALID,
      S_AXI_wdata => axi_mem_intercon_to_s06_couplers_WDATA,
      S_AXI_wlast => axi_mem_intercon_to_s06_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s06_couplers_WREADY,
      S_AXI_wstrb => axi_mem_intercon_to_s06_couplers_WSTRB,
      S_AXI_wvalid => axi_mem_intercon_to_s06_couplers_WVALID
    );
xbar: component design_1_xbar_1
     port map (
      aclk => axi_mem_intercon_ACLK_net,
      aresetn => axi_mem_intercon_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(5 downto 0) => xbar_to_m00_couplers_ARID(5 downto 0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_aruser(4 downto 0) => xbar_to_m00_couplers_ARUSER(4 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(5 downto 0) => xbar_to_m00_couplers_AWID(5 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awuser(4 downto 0) => xbar_to_m00_couplers_AWUSER(4 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(5 downto 0) => xbar_to_m00_couplers_BID(5 downto 0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(5 downto 0) => xbar_to_m00_couplers_RID(5 downto 0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(223) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(222) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(221) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(220) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(219) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(218) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(217) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(216) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(215) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(214) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(213) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(212) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(211) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(210) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(209) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(208) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(207) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(206) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(205) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(204) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(203) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(202) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(201) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(200) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(199) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(198) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(197) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(196) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(195) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(194) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(193) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(192) => s06_couplers_to_xbar_ARADDR,
      s_axi_araddr(191) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(190) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(189) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(188) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(187) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(186) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(185) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(184) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(183) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(182) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(181) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(180) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(179) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(178) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(177) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(176) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(175) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(174) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(173) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(172) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(171) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(170) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(169) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(168) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(167) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(166) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(165) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(164) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(163) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(162) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(161) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(160) => s05_couplers_to_xbar_ARADDR,
      s_axi_araddr(159) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(158) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(157) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(156) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(155) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(154) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(153) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(152) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(151) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(150) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(149) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(148) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(147) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(146) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(145) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(144) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(143) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(142) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(141) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(140) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(139) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(138) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(137) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(136) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(135) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(134) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(133) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(132) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(131) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(130) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(129) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(128) => s04_couplers_to_xbar_ARADDR,
      s_axi_araddr(127) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(126) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(125) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(124) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(123) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(122) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(121) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(120) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(119) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(118) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(117) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(116) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(115) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(114) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(113) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(112) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(111) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(110) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(109) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(108) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(107) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(106) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(105) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(104) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(103) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(102) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(101) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(100) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(99) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(98) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(97) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(96) => s03_couplers_to_xbar_ARADDR,
      s_axi_araddr(95 downto 64) => B"00000000000000000000000000000000",
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(13) => s06_couplers_to_xbar_ARBURST,
      s_axi_arburst(12) => s06_couplers_to_xbar_ARBURST,
      s_axi_arburst(11) => s05_couplers_to_xbar_ARBURST,
      s_axi_arburst(10) => s05_couplers_to_xbar_ARBURST,
      s_axi_arburst(9) => s04_couplers_to_xbar_ARBURST,
      s_axi_arburst(8) => s04_couplers_to_xbar_ARBURST,
      s_axi_arburst(7) => s03_couplers_to_xbar_ARBURST,
      s_axi_arburst(6) => s03_couplers_to_xbar_ARBURST,
      s_axi_arburst(5 downto 4) => B"00",
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(27) => s06_couplers_to_xbar_ARCACHE,
      s_axi_arcache(26) => s06_couplers_to_xbar_ARCACHE,
      s_axi_arcache(25) => s06_couplers_to_xbar_ARCACHE,
      s_axi_arcache(24) => s06_couplers_to_xbar_ARCACHE,
      s_axi_arcache(23) => s05_couplers_to_xbar_ARCACHE,
      s_axi_arcache(22) => s05_couplers_to_xbar_ARCACHE,
      s_axi_arcache(21) => s05_couplers_to_xbar_ARCACHE,
      s_axi_arcache(20) => s05_couplers_to_xbar_ARCACHE,
      s_axi_arcache(19) => s04_couplers_to_xbar_ARCACHE,
      s_axi_arcache(18) => s04_couplers_to_xbar_ARCACHE,
      s_axi_arcache(17) => s04_couplers_to_xbar_ARCACHE,
      s_axi_arcache(16) => s04_couplers_to_xbar_ARCACHE,
      s_axi_arcache(15) => s03_couplers_to_xbar_ARCACHE,
      s_axi_arcache(14) => s03_couplers_to_xbar_ARCACHE,
      s_axi_arcache(13) => s03_couplers_to_xbar_ARCACHE,
      s_axi_arcache(12) => s03_couplers_to_xbar_ARCACHE,
      s_axi_arcache(11 downto 8) => B"0000",
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(41) => s06_couplers_to_xbar_ARID,
      s_axi_arid(40) => s06_couplers_to_xbar_ARID,
      s_axi_arid(39) => s06_couplers_to_xbar_ARID,
      s_axi_arid(38) => s06_couplers_to_xbar_ARID,
      s_axi_arid(37) => s06_couplers_to_xbar_ARID,
      s_axi_arid(36) => s06_couplers_to_xbar_ARID,
      s_axi_arid(35) => s05_couplers_to_xbar_ARID,
      s_axi_arid(34) => s05_couplers_to_xbar_ARID,
      s_axi_arid(33) => s05_couplers_to_xbar_ARID,
      s_axi_arid(32) => s05_couplers_to_xbar_ARID,
      s_axi_arid(31) => s05_couplers_to_xbar_ARID,
      s_axi_arid(30) => s05_couplers_to_xbar_ARID,
      s_axi_arid(29) => s04_couplers_to_xbar_ARID,
      s_axi_arid(28) => s04_couplers_to_xbar_ARID,
      s_axi_arid(27) => s04_couplers_to_xbar_ARID,
      s_axi_arid(26) => s04_couplers_to_xbar_ARID,
      s_axi_arid(25) => s04_couplers_to_xbar_ARID,
      s_axi_arid(24) => s04_couplers_to_xbar_ARID,
      s_axi_arid(23) => s03_couplers_to_xbar_ARID,
      s_axi_arid(22) => s03_couplers_to_xbar_ARID,
      s_axi_arid(21) => s03_couplers_to_xbar_ARID,
      s_axi_arid(20) => s03_couplers_to_xbar_ARID,
      s_axi_arid(19) => s03_couplers_to_xbar_ARID,
      s_axi_arid(18) => s03_couplers_to_xbar_ARID,
      s_axi_arid(17 downto 3) => B"000000000000000",
      s_axi_arid(2 downto 0) => s00_couplers_to_xbar_ARID(2 downto 0),
      s_axi_arlen(55) => s06_couplers_to_xbar_ARLEN,
      s_axi_arlen(54) => s06_couplers_to_xbar_ARLEN,
      s_axi_arlen(53) => s06_couplers_to_xbar_ARLEN,
      s_axi_arlen(52) => s06_couplers_to_xbar_ARLEN,
      s_axi_arlen(51) => s06_couplers_to_xbar_ARLEN,
      s_axi_arlen(50) => s06_couplers_to_xbar_ARLEN,
      s_axi_arlen(49) => s06_couplers_to_xbar_ARLEN,
      s_axi_arlen(48) => s06_couplers_to_xbar_ARLEN,
      s_axi_arlen(47) => s05_couplers_to_xbar_ARLEN,
      s_axi_arlen(46) => s05_couplers_to_xbar_ARLEN,
      s_axi_arlen(45) => s05_couplers_to_xbar_ARLEN,
      s_axi_arlen(44) => s05_couplers_to_xbar_ARLEN,
      s_axi_arlen(43) => s05_couplers_to_xbar_ARLEN,
      s_axi_arlen(42) => s05_couplers_to_xbar_ARLEN,
      s_axi_arlen(41) => s05_couplers_to_xbar_ARLEN,
      s_axi_arlen(40) => s05_couplers_to_xbar_ARLEN,
      s_axi_arlen(39) => s04_couplers_to_xbar_ARLEN,
      s_axi_arlen(38) => s04_couplers_to_xbar_ARLEN,
      s_axi_arlen(37) => s04_couplers_to_xbar_ARLEN,
      s_axi_arlen(36) => s04_couplers_to_xbar_ARLEN,
      s_axi_arlen(35) => s04_couplers_to_xbar_ARLEN,
      s_axi_arlen(34) => s04_couplers_to_xbar_ARLEN,
      s_axi_arlen(33) => s04_couplers_to_xbar_ARLEN,
      s_axi_arlen(32) => s04_couplers_to_xbar_ARLEN,
      s_axi_arlen(31) => s03_couplers_to_xbar_ARLEN,
      s_axi_arlen(30) => s03_couplers_to_xbar_ARLEN,
      s_axi_arlen(29) => s03_couplers_to_xbar_ARLEN,
      s_axi_arlen(28) => s03_couplers_to_xbar_ARLEN,
      s_axi_arlen(27) => s03_couplers_to_xbar_ARLEN,
      s_axi_arlen(26) => s03_couplers_to_xbar_ARLEN,
      s_axi_arlen(25) => s03_couplers_to_xbar_ARLEN,
      s_axi_arlen(24) => s03_couplers_to_xbar_ARLEN,
      s_axi_arlen(23 downto 16) => B"00000000",
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(6) => s06_couplers_to_xbar_ARLOCK,
      s_axi_arlock(5) => s05_couplers_to_xbar_ARLOCK,
      s_axi_arlock(4) => s04_couplers_to_xbar_ARLOCK,
      s_axi_arlock(3) => s03_couplers_to_xbar_ARLOCK,
      s_axi_arlock(2) => '0',
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(20) => s06_couplers_to_xbar_ARPROT,
      s_axi_arprot(19) => s06_couplers_to_xbar_ARPROT,
      s_axi_arprot(18) => s06_couplers_to_xbar_ARPROT,
      s_axi_arprot(17) => s05_couplers_to_xbar_ARPROT,
      s_axi_arprot(16) => s05_couplers_to_xbar_ARPROT,
      s_axi_arprot(15) => s05_couplers_to_xbar_ARPROT,
      s_axi_arprot(14) => s04_couplers_to_xbar_ARPROT,
      s_axi_arprot(13) => s04_couplers_to_xbar_ARPROT,
      s_axi_arprot(12) => s04_couplers_to_xbar_ARPROT,
      s_axi_arprot(11) => s03_couplers_to_xbar_ARPROT,
      s_axi_arprot(10) => s03_couplers_to_xbar_ARPROT,
      s_axi_arprot(9) => s03_couplers_to_xbar_ARPROT,
      s_axi_arprot(8 downto 6) => B"000",
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(27) => s06_couplers_to_xbar_ARQOS,
      s_axi_arqos(26) => s06_couplers_to_xbar_ARQOS,
      s_axi_arqos(25) => s06_couplers_to_xbar_ARQOS,
      s_axi_arqos(24) => s06_couplers_to_xbar_ARQOS,
      s_axi_arqos(23) => s05_couplers_to_xbar_ARQOS,
      s_axi_arqos(22) => s05_couplers_to_xbar_ARQOS,
      s_axi_arqos(21) => s05_couplers_to_xbar_ARQOS,
      s_axi_arqos(20) => s05_couplers_to_xbar_ARQOS,
      s_axi_arqos(19) => s04_couplers_to_xbar_ARQOS,
      s_axi_arqos(18) => s04_couplers_to_xbar_ARQOS,
      s_axi_arqos(17) => s04_couplers_to_xbar_ARQOS,
      s_axi_arqos(16) => s04_couplers_to_xbar_ARQOS,
      s_axi_arqos(15) => s03_couplers_to_xbar_ARQOS,
      s_axi_arqos(14) => s03_couplers_to_xbar_ARQOS,
      s_axi_arqos(13) => s03_couplers_to_xbar_ARQOS,
      s_axi_arqos(12) => s03_couplers_to_xbar_ARQOS,
      s_axi_arqos(11 downto 8) => B"0000",
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(6) => s06_couplers_to_xbar_ARREADY(6),
      s_axi_arready(5) => s05_couplers_to_xbar_ARREADY(5),
      s_axi_arready(4) => s04_couplers_to_xbar_ARREADY(4),
      s_axi_arready(3) => s03_couplers_to_xbar_ARREADY(3),
      s_axi_arready(2) => NLW_xbar_s_axi_arready_UNCONNECTED(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(20) => s06_couplers_to_xbar_ARSIZE,
      s_axi_arsize(19) => s06_couplers_to_xbar_ARSIZE,
      s_axi_arsize(18) => s06_couplers_to_xbar_ARSIZE,
      s_axi_arsize(17) => s05_couplers_to_xbar_ARSIZE,
      s_axi_arsize(16) => s05_couplers_to_xbar_ARSIZE,
      s_axi_arsize(15) => s05_couplers_to_xbar_ARSIZE,
      s_axi_arsize(14) => s04_couplers_to_xbar_ARSIZE,
      s_axi_arsize(13) => s04_couplers_to_xbar_ARSIZE,
      s_axi_arsize(12) => s04_couplers_to_xbar_ARSIZE,
      s_axi_arsize(11) => s03_couplers_to_xbar_ARSIZE,
      s_axi_arsize(10) => s03_couplers_to_xbar_ARSIZE,
      s_axi_arsize(9) => s03_couplers_to_xbar_ARSIZE,
      s_axi_arsize(8 downto 6) => B"000",
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_aruser(34) => s06_couplers_to_xbar_ARUSER,
      s_axi_aruser(33) => s06_couplers_to_xbar_ARUSER,
      s_axi_aruser(32) => s06_couplers_to_xbar_ARUSER,
      s_axi_aruser(31) => s06_couplers_to_xbar_ARUSER,
      s_axi_aruser(30) => s06_couplers_to_xbar_ARUSER,
      s_axi_aruser(29) => s05_couplers_to_xbar_ARUSER,
      s_axi_aruser(28) => s05_couplers_to_xbar_ARUSER,
      s_axi_aruser(27) => s05_couplers_to_xbar_ARUSER,
      s_axi_aruser(26) => s05_couplers_to_xbar_ARUSER,
      s_axi_aruser(25) => s05_couplers_to_xbar_ARUSER,
      s_axi_aruser(24) => s04_couplers_to_xbar_ARUSER,
      s_axi_aruser(23) => s04_couplers_to_xbar_ARUSER,
      s_axi_aruser(22) => s04_couplers_to_xbar_ARUSER,
      s_axi_aruser(21) => s04_couplers_to_xbar_ARUSER,
      s_axi_aruser(20) => s04_couplers_to_xbar_ARUSER,
      s_axi_aruser(19) => s03_couplers_to_xbar_ARUSER,
      s_axi_aruser(18) => s03_couplers_to_xbar_ARUSER,
      s_axi_aruser(17) => s03_couplers_to_xbar_ARUSER,
      s_axi_aruser(16) => s03_couplers_to_xbar_ARUSER,
      s_axi_aruser(15) => s03_couplers_to_xbar_ARUSER,
      s_axi_aruser(14 downto 5) => B"0000000000",
      s_axi_aruser(4 downto 0) => s00_couplers_to_xbar_ARUSER(4 downto 0),
      s_axi_arvalid(6) => s06_couplers_to_xbar_ARVALID,
      s_axi_arvalid(5) => s05_couplers_to_xbar_ARVALID,
      s_axi_arvalid(4) => s04_couplers_to_xbar_ARVALID,
      s_axi_arvalid(3) => s03_couplers_to_xbar_ARVALID,
      s_axi_arvalid(2) => '0',
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(223) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(222) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(221) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(220) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(219) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(218) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(217) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(216) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(215) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(214) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(213) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(212) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(211) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(210) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(209) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(208) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(207) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(206) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(205) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(204) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(203) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(202) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(201) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(200) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(199) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(198) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(197) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(196) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(195) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(194) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(193) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(192) => s06_couplers_to_xbar_AWADDR,
      s_axi_awaddr(191) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(190) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(189) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(188) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(187) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(186) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(185) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(184) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(183) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(182) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(181) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(180) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(179) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(178) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(177) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(176) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(175) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(174) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(173) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(172) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(171) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(170) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(169) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(168) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(167) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(166) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(165) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(164) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(163) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(162) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(161) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(160) => s05_couplers_to_xbar_AWADDR,
      s_axi_awaddr(159) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(158) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(157) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(156) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(155) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(154) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(153) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(152) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(151) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(150) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(149) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(148) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(147) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(146) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(145) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(144) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(143) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(142) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(141) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(140) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(139) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(138) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(137) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(136) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(135) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(134) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(133) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(132) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(131) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(130) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(129) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(128) => s04_couplers_to_xbar_AWADDR,
      s_axi_awaddr(127) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(126) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(125) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(124) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(123) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(122) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(121) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(120) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(119) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(118) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(117) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(116) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(115) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(114) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(113) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(112) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(111) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(110) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(109) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(108) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(107) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(106) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(105) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(104) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(103) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(102) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(101) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(100) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(99) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(98) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(97) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(96) => s03_couplers_to_xbar_AWADDR,
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(13) => s06_couplers_to_xbar_AWBURST,
      s_axi_awburst(12) => s06_couplers_to_xbar_AWBURST,
      s_axi_awburst(11) => s05_couplers_to_xbar_AWBURST,
      s_axi_awburst(10) => s05_couplers_to_xbar_AWBURST,
      s_axi_awburst(9) => s04_couplers_to_xbar_AWBURST,
      s_axi_awburst(8) => s04_couplers_to_xbar_AWBURST,
      s_axi_awburst(7) => s03_couplers_to_xbar_AWBURST,
      s_axi_awburst(6) => s03_couplers_to_xbar_AWBURST,
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3 downto 2) => B"00",
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(27) => s06_couplers_to_xbar_AWCACHE,
      s_axi_awcache(26) => s06_couplers_to_xbar_AWCACHE,
      s_axi_awcache(25) => s06_couplers_to_xbar_AWCACHE,
      s_axi_awcache(24) => s06_couplers_to_xbar_AWCACHE,
      s_axi_awcache(23) => s05_couplers_to_xbar_AWCACHE,
      s_axi_awcache(22) => s05_couplers_to_xbar_AWCACHE,
      s_axi_awcache(21) => s05_couplers_to_xbar_AWCACHE,
      s_axi_awcache(20) => s05_couplers_to_xbar_AWCACHE,
      s_axi_awcache(19) => s04_couplers_to_xbar_AWCACHE,
      s_axi_awcache(18) => s04_couplers_to_xbar_AWCACHE,
      s_axi_awcache(17) => s04_couplers_to_xbar_AWCACHE,
      s_axi_awcache(16) => s04_couplers_to_xbar_AWCACHE,
      s_axi_awcache(15) => s03_couplers_to_xbar_AWCACHE,
      s_axi_awcache(14) => s03_couplers_to_xbar_AWCACHE,
      s_axi_awcache(13) => s03_couplers_to_xbar_AWCACHE,
      s_axi_awcache(12) => s03_couplers_to_xbar_AWCACHE,
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7 downto 4) => B"0000",
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(41) => s06_couplers_to_xbar_AWID,
      s_axi_awid(40) => s06_couplers_to_xbar_AWID,
      s_axi_awid(39) => s06_couplers_to_xbar_AWID,
      s_axi_awid(38) => s06_couplers_to_xbar_AWID,
      s_axi_awid(37) => s06_couplers_to_xbar_AWID,
      s_axi_awid(36) => s06_couplers_to_xbar_AWID,
      s_axi_awid(35) => s05_couplers_to_xbar_AWID,
      s_axi_awid(34) => s05_couplers_to_xbar_AWID,
      s_axi_awid(33) => s05_couplers_to_xbar_AWID,
      s_axi_awid(32) => s05_couplers_to_xbar_AWID,
      s_axi_awid(31) => s05_couplers_to_xbar_AWID,
      s_axi_awid(30) => s05_couplers_to_xbar_AWID,
      s_axi_awid(29) => s04_couplers_to_xbar_AWID,
      s_axi_awid(28) => s04_couplers_to_xbar_AWID,
      s_axi_awid(27) => s04_couplers_to_xbar_AWID,
      s_axi_awid(26) => s04_couplers_to_xbar_AWID,
      s_axi_awid(25) => s04_couplers_to_xbar_AWID,
      s_axi_awid(24) => s04_couplers_to_xbar_AWID,
      s_axi_awid(23) => s03_couplers_to_xbar_AWID,
      s_axi_awid(22) => s03_couplers_to_xbar_AWID,
      s_axi_awid(21) => s03_couplers_to_xbar_AWID,
      s_axi_awid(20) => s03_couplers_to_xbar_AWID,
      s_axi_awid(19) => s03_couplers_to_xbar_AWID,
      s_axi_awid(18) => s03_couplers_to_xbar_AWID,
      s_axi_awid(17 downto 3) => B"000000000000000",
      s_axi_awid(2 downto 0) => s00_couplers_to_xbar_AWID(2 downto 0),
      s_axi_awlen(55) => s06_couplers_to_xbar_AWLEN,
      s_axi_awlen(54) => s06_couplers_to_xbar_AWLEN,
      s_axi_awlen(53) => s06_couplers_to_xbar_AWLEN,
      s_axi_awlen(52) => s06_couplers_to_xbar_AWLEN,
      s_axi_awlen(51) => s06_couplers_to_xbar_AWLEN,
      s_axi_awlen(50) => s06_couplers_to_xbar_AWLEN,
      s_axi_awlen(49) => s06_couplers_to_xbar_AWLEN,
      s_axi_awlen(48) => s06_couplers_to_xbar_AWLEN,
      s_axi_awlen(47) => s05_couplers_to_xbar_AWLEN,
      s_axi_awlen(46) => s05_couplers_to_xbar_AWLEN,
      s_axi_awlen(45) => s05_couplers_to_xbar_AWLEN,
      s_axi_awlen(44) => s05_couplers_to_xbar_AWLEN,
      s_axi_awlen(43) => s05_couplers_to_xbar_AWLEN,
      s_axi_awlen(42) => s05_couplers_to_xbar_AWLEN,
      s_axi_awlen(41) => s05_couplers_to_xbar_AWLEN,
      s_axi_awlen(40) => s05_couplers_to_xbar_AWLEN,
      s_axi_awlen(39) => s04_couplers_to_xbar_AWLEN,
      s_axi_awlen(38) => s04_couplers_to_xbar_AWLEN,
      s_axi_awlen(37) => s04_couplers_to_xbar_AWLEN,
      s_axi_awlen(36) => s04_couplers_to_xbar_AWLEN,
      s_axi_awlen(35) => s04_couplers_to_xbar_AWLEN,
      s_axi_awlen(34) => s04_couplers_to_xbar_AWLEN,
      s_axi_awlen(33) => s04_couplers_to_xbar_AWLEN,
      s_axi_awlen(32) => s04_couplers_to_xbar_AWLEN,
      s_axi_awlen(31) => s03_couplers_to_xbar_AWLEN,
      s_axi_awlen(30) => s03_couplers_to_xbar_AWLEN,
      s_axi_awlen(29) => s03_couplers_to_xbar_AWLEN,
      s_axi_awlen(28) => s03_couplers_to_xbar_AWLEN,
      s_axi_awlen(27) => s03_couplers_to_xbar_AWLEN,
      s_axi_awlen(26) => s03_couplers_to_xbar_AWLEN,
      s_axi_awlen(25) => s03_couplers_to_xbar_AWLEN,
      s_axi_awlen(24) => s03_couplers_to_xbar_AWLEN,
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15 downto 8) => B"00000000",
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(6) => s06_couplers_to_xbar_AWLOCK,
      s_axi_awlock(5) => s05_couplers_to_xbar_AWLOCK,
      s_axi_awlock(4) => s04_couplers_to_xbar_AWLOCK,
      s_axi_awlock(3) => s03_couplers_to_xbar_AWLOCK,
      s_axi_awlock(2) => s02_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(1) => '0',
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(20) => s06_couplers_to_xbar_AWPROT,
      s_axi_awprot(19) => s06_couplers_to_xbar_AWPROT,
      s_axi_awprot(18) => s06_couplers_to_xbar_AWPROT,
      s_axi_awprot(17) => s05_couplers_to_xbar_AWPROT,
      s_axi_awprot(16) => s05_couplers_to_xbar_AWPROT,
      s_axi_awprot(15) => s05_couplers_to_xbar_AWPROT,
      s_axi_awprot(14) => s04_couplers_to_xbar_AWPROT,
      s_axi_awprot(13) => s04_couplers_to_xbar_AWPROT,
      s_axi_awprot(12) => s04_couplers_to_xbar_AWPROT,
      s_axi_awprot(11) => s03_couplers_to_xbar_AWPROT,
      s_axi_awprot(10) => s03_couplers_to_xbar_AWPROT,
      s_axi_awprot(9) => s03_couplers_to_xbar_AWPROT,
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => B"000",
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(27) => s06_couplers_to_xbar_AWQOS,
      s_axi_awqos(26) => s06_couplers_to_xbar_AWQOS,
      s_axi_awqos(25) => s06_couplers_to_xbar_AWQOS,
      s_axi_awqos(24) => s06_couplers_to_xbar_AWQOS,
      s_axi_awqos(23) => s05_couplers_to_xbar_AWQOS,
      s_axi_awqos(22) => s05_couplers_to_xbar_AWQOS,
      s_axi_awqos(21) => s05_couplers_to_xbar_AWQOS,
      s_axi_awqos(20) => s05_couplers_to_xbar_AWQOS,
      s_axi_awqos(19) => s04_couplers_to_xbar_AWQOS,
      s_axi_awqos(18) => s04_couplers_to_xbar_AWQOS,
      s_axi_awqos(17) => s04_couplers_to_xbar_AWQOS,
      s_axi_awqos(16) => s04_couplers_to_xbar_AWQOS,
      s_axi_awqos(15) => s03_couplers_to_xbar_AWQOS,
      s_axi_awqos(14) => s03_couplers_to_xbar_AWQOS,
      s_axi_awqos(13) => s03_couplers_to_xbar_AWQOS,
      s_axi_awqos(12) => s03_couplers_to_xbar_AWQOS,
      s_axi_awqos(11 downto 8) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(7 downto 4) => B"0000",
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(6) => s06_couplers_to_xbar_AWREADY(6),
      s_axi_awready(5) => s05_couplers_to_xbar_AWREADY(5),
      s_axi_awready(4) => s04_couplers_to_xbar_AWREADY(4),
      s_axi_awready(3) => s03_couplers_to_xbar_AWREADY(3),
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY(2),
      s_axi_awready(1) => NLW_xbar_s_axi_awready_UNCONNECTED(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(20) => s06_couplers_to_xbar_AWSIZE,
      s_axi_awsize(19) => s06_couplers_to_xbar_AWSIZE,
      s_axi_awsize(18) => s06_couplers_to_xbar_AWSIZE,
      s_axi_awsize(17) => s05_couplers_to_xbar_AWSIZE,
      s_axi_awsize(16) => s05_couplers_to_xbar_AWSIZE,
      s_axi_awsize(15) => s05_couplers_to_xbar_AWSIZE,
      s_axi_awsize(14) => s04_couplers_to_xbar_AWSIZE,
      s_axi_awsize(13) => s04_couplers_to_xbar_AWSIZE,
      s_axi_awsize(12) => s04_couplers_to_xbar_AWSIZE,
      s_axi_awsize(11) => s03_couplers_to_xbar_AWSIZE,
      s_axi_awsize(10) => s03_couplers_to_xbar_AWSIZE,
      s_axi_awsize(9) => s03_couplers_to_xbar_AWSIZE,
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5 downto 3) => B"001",
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awuser(34) => s06_couplers_to_xbar_AWUSER,
      s_axi_awuser(33) => s06_couplers_to_xbar_AWUSER,
      s_axi_awuser(32) => s06_couplers_to_xbar_AWUSER,
      s_axi_awuser(31) => s06_couplers_to_xbar_AWUSER,
      s_axi_awuser(30) => s06_couplers_to_xbar_AWUSER,
      s_axi_awuser(29) => s05_couplers_to_xbar_AWUSER,
      s_axi_awuser(28) => s05_couplers_to_xbar_AWUSER,
      s_axi_awuser(27) => s05_couplers_to_xbar_AWUSER,
      s_axi_awuser(26) => s05_couplers_to_xbar_AWUSER,
      s_axi_awuser(25) => s05_couplers_to_xbar_AWUSER,
      s_axi_awuser(24) => s04_couplers_to_xbar_AWUSER,
      s_axi_awuser(23) => s04_couplers_to_xbar_AWUSER,
      s_axi_awuser(22) => s04_couplers_to_xbar_AWUSER,
      s_axi_awuser(21) => s04_couplers_to_xbar_AWUSER,
      s_axi_awuser(20) => s04_couplers_to_xbar_AWUSER,
      s_axi_awuser(19) => s03_couplers_to_xbar_AWUSER,
      s_axi_awuser(18) => s03_couplers_to_xbar_AWUSER,
      s_axi_awuser(17) => s03_couplers_to_xbar_AWUSER,
      s_axi_awuser(16) => s03_couplers_to_xbar_AWUSER,
      s_axi_awuser(15) => s03_couplers_to_xbar_AWUSER,
      s_axi_awuser(14 downto 5) => B"0000000000",
      s_axi_awuser(4 downto 0) => s00_couplers_to_xbar_AWUSER(4 downto 0),
      s_axi_awvalid(6) => s06_couplers_to_xbar_AWVALID,
      s_axi_awvalid(5) => s05_couplers_to_xbar_AWVALID,
      s_axi_awvalid(4) => s04_couplers_to_xbar_AWVALID,
      s_axi_awvalid(3) => s03_couplers_to_xbar_AWVALID,
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => '0',
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(41 downto 36) => s06_couplers_to_xbar_BID(41 downto 36),
      s_axi_bid(35 downto 30) => s05_couplers_to_xbar_BID(35 downto 30),
      s_axi_bid(29 downto 24) => s04_couplers_to_xbar_BID(29 downto 24),
      s_axi_bid(23 downto 18) => s03_couplers_to_xbar_BID(23 downto 18),
      s_axi_bid(17 downto 6) => NLW_xbar_s_axi_bid_UNCONNECTED(17 downto 6),
      s_axi_bid(5 downto 0) => s00_couplers_to_xbar_BID(5 downto 0),
      s_axi_bready(6) => s06_couplers_to_xbar_BREADY,
      s_axi_bready(5) => s05_couplers_to_xbar_BREADY,
      s_axi_bready(4) => s04_couplers_to_xbar_BREADY,
      s_axi_bready(3) => s03_couplers_to_xbar_BREADY,
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => '0',
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(13 downto 12) => s06_couplers_to_xbar_BRESP(13 downto 12),
      s_axi_bresp(11 downto 10) => s05_couplers_to_xbar_BRESP(11 downto 10),
      s_axi_bresp(9 downto 8) => s04_couplers_to_xbar_BRESP(9 downto 8),
      s_axi_bresp(7 downto 6) => s03_couplers_to_xbar_BRESP(7 downto 6),
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => NLW_xbar_s_axi_bresp_UNCONNECTED(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(6) => s06_couplers_to_xbar_BVALID(6),
      s_axi_bvalid(5) => s05_couplers_to_xbar_BVALID(5),
      s_axi_bvalid(4) => s04_couplers_to_xbar_BVALID(4),
      s_axi_bvalid(3) => s03_couplers_to_xbar_BVALID(3),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID(2),
      s_axi_bvalid(1) => NLW_xbar_s_axi_bvalid_UNCONNECTED(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(447 downto 384) => s06_couplers_to_xbar_RDATA(447 downto 384),
      s_axi_rdata(383 downto 320) => s05_couplers_to_xbar_RDATA(383 downto 320),
      s_axi_rdata(319 downto 256) => s04_couplers_to_xbar_RDATA(319 downto 256),
      s_axi_rdata(255 downto 192) => s03_couplers_to_xbar_RDATA(255 downto 192),
      s_axi_rdata(191 downto 128) => NLW_xbar_s_axi_rdata_UNCONNECTED(191 downto 128),
      s_axi_rdata(127 downto 64) => s01_couplers_to_xbar_RDATA(127 downto 64),
      s_axi_rdata(63 downto 0) => s00_couplers_to_xbar_RDATA(63 downto 0),
      s_axi_rid(41 downto 36) => s06_couplers_to_xbar_RID(41 downto 36),
      s_axi_rid(35 downto 30) => s05_couplers_to_xbar_RID(35 downto 30),
      s_axi_rid(29 downto 24) => s04_couplers_to_xbar_RID(29 downto 24),
      s_axi_rid(23 downto 18) => s03_couplers_to_xbar_RID(23 downto 18),
      s_axi_rid(17 downto 6) => NLW_xbar_s_axi_rid_UNCONNECTED(17 downto 6),
      s_axi_rid(5 downto 0) => s00_couplers_to_xbar_RID(5 downto 0),
      s_axi_rlast(6) => s06_couplers_to_xbar_RLAST(6),
      s_axi_rlast(5) => s05_couplers_to_xbar_RLAST(5),
      s_axi_rlast(4) => s04_couplers_to_xbar_RLAST(4),
      s_axi_rlast(3) => s03_couplers_to_xbar_RLAST(3),
      s_axi_rlast(2) => NLW_xbar_s_axi_rlast_UNCONNECTED(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(6) => s06_couplers_to_xbar_RREADY,
      s_axi_rready(5) => s05_couplers_to_xbar_RREADY,
      s_axi_rready(4) => s04_couplers_to_xbar_RREADY,
      s_axi_rready(3) => s03_couplers_to_xbar_RREADY,
      s_axi_rready(2) => '0',
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(13 downto 12) => s06_couplers_to_xbar_RRESP(13 downto 12),
      s_axi_rresp(11 downto 10) => s05_couplers_to_xbar_RRESP(11 downto 10),
      s_axi_rresp(9 downto 8) => s04_couplers_to_xbar_RRESP(9 downto 8),
      s_axi_rresp(7 downto 6) => s03_couplers_to_xbar_RRESP(7 downto 6),
      s_axi_rresp(5 downto 4) => NLW_xbar_s_axi_rresp_UNCONNECTED(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(6) => s06_couplers_to_xbar_RVALID(6),
      s_axi_rvalid(5) => s05_couplers_to_xbar_RVALID(5),
      s_axi_rvalid(4) => s04_couplers_to_xbar_RVALID(4),
      s_axi_rvalid(3) => s03_couplers_to_xbar_RVALID(3),
      s_axi_rvalid(2) => NLW_xbar_s_axi_rvalid_UNCONNECTED(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(447) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(446) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(445) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(444) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(443) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(442) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(441) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(440) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(439) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(438) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(437) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(436) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(435) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(434) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(433) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(432) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(431) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(430) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(429) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(428) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(427) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(426) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(425) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(424) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(423) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(422) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(421) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(420) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(419) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(418) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(417) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(416) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(415) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(414) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(413) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(412) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(411) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(410) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(409) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(408) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(407) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(406) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(405) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(404) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(403) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(402) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(401) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(400) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(399) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(398) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(397) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(396) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(395) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(394) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(393) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(392) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(391) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(390) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(389) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(388) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(387) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(386) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(385) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(384) => s06_couplers_to_xbar_WDATA,
      s_axi_wdata(383) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(382) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(381) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(380) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(379) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(378) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(377) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(376) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(375) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(374) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(373) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(372) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(371) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(370) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(369) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(368) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(367) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(366) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(365) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(364) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(363) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(362) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(361) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(360) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(359) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(358) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(357) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(356) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(355) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(354) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(353) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(352) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(351) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(350) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(349) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(348) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(347) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(346) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(345) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(344) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(343) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(342) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(341) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(340) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(339) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(338) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(337) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(336) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(335) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(334) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(333) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(332) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(331) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(330) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(329) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(328) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(327) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(326) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(325) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(324) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(323) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(322) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(321) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(320) => s05_couplers_to_xbar_WDATA,
      s_axi_wdata(319) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(318) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(317) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(316) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(315) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(314) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(313) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(312) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(311) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(310) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(309) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(308) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(307) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(306) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(305) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(304) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(303) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(302) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(301) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(300) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(299) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(298) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(297) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(296) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(295) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(294) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(293) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(292) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(291) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(290) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(289) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(288) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(287) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(286) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(285) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(284) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(283) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(282) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(281) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(280) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(279) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(278) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(277) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(276) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(275) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(274) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(273) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(272) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(271) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(270) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(269) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(268) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(267) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(266) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(265) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(264) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(263) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(262) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(261) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(260) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(259) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(258) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(257) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(256) => s04_couplers_to_xbar_WDATA,
      s_axi_wdata(255) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(254) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(253) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(252) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(251) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(250) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(249) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(248) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(247) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(246) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(245) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(244) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(243) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(242) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(241) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(240) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(239) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(238) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(237) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(236) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(235) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(234) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(233) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(232) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(231) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(230) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(229) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(228) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(227) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(226) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(225) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(224) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(223) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(222) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(221) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(220) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(219) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(218) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(217) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(216) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(215) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(214) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(213) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(212) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(211) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(210) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(209) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(208) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(207) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(206) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(205) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(204) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(203) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(202) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(201) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(200) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(199) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(198) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(197) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(196) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(195) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(194) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(193) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(192) => s03_couplers_to_xbar_WDATA,
      s_axi_wdata(191 downto 128) => s02_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wdata(127 downto 64) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wdata(63 downto 0) => s00_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wlast(6) => s06_couplers_to_xbar_WLAST,
      s_axi_wlast(5) => s05_couplers_to_xbar_WLAST,
      s_axi_wlast(4) => s04_couplers_to_xbar_WLAST,
      s_axi_wlast(3) => s03_couplers_to_xbar_WLAST,
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => '0',
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(6) => s06_couplers_to_xbar_WREADY(6),
      s_axi_wready(5) => s05_couplers_to_xbar_WREADY(5),
      s_axi_wready(4) => s04_couplers_to_xbar_WREADY(4),
      s_axi_wready(3) => s03_couplers_to_xbar_WREADY(3),
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY(2),
      s_axi_wready(1) => NLW_xbar_s_axi_wready_UNCONNECTED(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(55) => s06_couplers_to_xbar_WSTRB,
      s_axi_wstrb(54) => s06_couplers_to_xbar_WSTRB,
      s_axi_wstrb(53) => s06_couplers_to_xbar_WSTRB,
      s_axi_wstrb(52) => s06_couplers_to_xbar_WSTRB,
      s_axi_wstrb(51) => s06_couplers_to_xbar_WSTRB,
      s_axi_wstrb(50) => s06_couplers_to_xbar_WSTRB,
      s_axi_wstrb(49) => s06_couplers_to_xbar_WSTRB,
      s_axi_wstrb(48) => s06_couplers_to_xbar_WSTRB,
      s_axi_wstrb(47) => s05_couplers_to_xbar_WSTRB,
      s_axi_wstrb(46) => s05_couplers_to_xbar_WSTRB,
      s_axi_wstrb(45) => s05_couplers_to_xbar_WSTRB,
      s_axi_wstrb(44) => s05_couplers_to_xbar_WSTRB,
      s_axi_wstrb(43) => s05_couplers_to_xbar_WSTRB,
      s_axi_wstrb(42) => s05_couplers_to_xbar_WSTRB,
      s_axi_wstrb(41) => s05_couplers_to_xbar_WSTRB,
      s_axi_wstrb(40) => s05_couplers_to_xbar_WSTRB,
      s_axi_wstrb(39) => s04_couplers_to_xbar_WSTRB,
      s_axi_wstrb(38) => s04_couplers_to_xbar_WSTRB,
      s_axi_wstrb(37) => s04_couplers_to_xbar_WSTRB,
      s_axi_wstrb(36) => s04_couplers_to_xbar_WSTRB,
      s_axi_wstrb(35) => s04_couplers_to_xbar_WSTRB,
      s_axi_wstrb(34) => s04_couplers_to_xbar_WSTRB,
      s_axi_wstrb(33) => s04_couplers_to_xbar_WSTRB,
      s_axi_wstrb(32) => s04_couplers_to_xbar_WSTRB,
      s_axi_wstrb(31) => s03_couplers_to_xbar_WSTRB,
      s_axi_wstrb(30) => s03_couplers_to_xbar_WSTRB,
      s_axi_wstrb(29) => s03_couplers_to_xbar_WSTRB,
      s_axi_wstrb(28) => s03_couplers_to_xbar_WSTRB,
      s_axi_wstrb(27) => s03_couplers_to_xbar_WSTRB,
      s_axi_wstrb(26) => s03_couplers_to_xbar_WSTRB,
      s_axi_wstrb(25) => s03_couplers_to_xbar_WSTRB,
      s_axi_wstrb(24) => s03_couplers_to_xbar_WSTRB,
      s_axi_wstrb(23 downto 16) => s02_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wstrb(15 downto 8) => B"11111111",
      s_axi_wstrb(7 downto 0) => s00_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wvalid(6) => s06_couplers_to_xbar_WVALID,
      s_axi_wvalid(5) => s05_couplers_to_xbar_WVALID,
      s_axi_wvalid(4) => s04_couplers_to_xbar_WVALID,
      s_axi_wvalid(3) => s03_couplers_to_xbar_WVALID,
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => '0',
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ps7_0_axi_periph_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 191 downto 0 )
  );
end design_1_ps7_0_axi_periph_1;

architecture STRUCTURE of design_1_ps7_0_axi_periph_1 is
  component design_1_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xbar_0;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 3 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 8 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_ps7_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_ps7_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_ps7_0_axi_periph_WVALID(0);
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps7_0_axi_periph_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps7_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps7_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps7_0_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps7_0_axi_periph_WVALID;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_ps7_0_axi_periph_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_ps7_0_axi_periph_AWVALID;
  M02_AXI_bready <= m02_couplers_to_ps7_0_axi_periph_BREADY;
  M02_AXI_rready <= m02_couplers_to_ps7_0_axi_periph_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_ps7_0_axi_periph_WVALID;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_ps7_0_axi_periph_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_ps7_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_ps7_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_ps7_0_axi_periph_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_ps7_0_axi_periph_WVALID;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_ps7_0_axi_periph_ARVALID;
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_ps7_0_axi_periph_AWVALID;
  M04_AXI_bready <= m04_couplers_to_ps7_0_axi_periph_BREADY;
  M04_AXI_rready <= m04_couplers_to_ps7_0_axi_periph_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_ps7_0_axi_periph_WVALID;
  S00_AXI_arready <= ps7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_ps7_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_ps7_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps7_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps7_0_axi_periph_WREADY <= M01_AXI_wready;
  m02_couplers_to_ps7_0_axi_periph_ARREADY <= M02_AXI_arready;
  m02_couplers_to_ps7_0_axi_periph_AWREADY <= M02_AXI_awready;
  m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_ps7_0_axi_periph_WREADY <= M02_AXI_wready;
  m03_couplers_to_ps7_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_ps7_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_ps7_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_ps7_0_axi_periph_ARREADY <= M04_AXI_arready;
  m04_couplers_to_ps7_0_axi_periph_AWREADY <= M04_AXI_awready;
  m04_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_ps7_0_axi_periph_WREADY <= M04_AXI_wready;
  ps7_0_axi_periph_ACLK_net <= ACLK;
  ps7_0_axi_periph_ARESETN_net <= ARESETN;
  ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m_axi_awaddr(0) <= 'Z';
  m_axi_awaddr(1) <= 'Z';
  m_axi_awaddr(2) <= 'Z';
  m_axi_awaddr(3) <= 'Z';
  m_axi_awaddr(4) <= 'Z';
  m_axi_awaddr(5) <= 'Z';
  m_axi_awaddr(6) <= 'Z';
  m_axi_awaddr(7) <= 'Z';
  m_axi_awaddr(8) <= 'Z';
  m_axi_awaddr(9) <= 'Z';
  m_axi_awaddr(10) <= 'Z';
  m_axi_awaddr(11) <= 'Z';
  m_axi_awaddr(12) <= 'Z';
  m_axi_awaddr(13) <= 'Z';
  m_axi_awaddr(14) <= 'Z';
  m_axi_awaddr(15) <= 'Z';
  m_axi_awaddr(16) <= 'Z';
  m_axi_awaddr(17) <= 'Z';
  m_axi_awaddr(18) <= 'Z';
  m_axi_awaddr(19) <= 'Z';
  m_axi_awaddr(20) <= 'Z';
  m_axi_awaddr(21) <= 'Z';
  m_axi_awaddr(22) <= 'Z';
  m_axi_awaddr(23) <= 'Z';
  m_axi_awaddr(24) <= 'Z';
  m_axi_awaddr(25) <= 'Z';
  m_axi_awaddr(26) <= 'Z';
  m_axi_awaddr(27) <= 'Z';
  m_axi_awaddr(28) <= 'Z';
  m_axi_awaddr(29) <= 'Z';
  m_axi_awaddr(30) <= 'Z';
  m_axi_awaddr(31) <= 'Z';
  m_axi_awaddr(32) <= 'Z';
  m_axi_awaddr(33) <= 'Z';
  m_axi_awaddr(34) <= 'Z';
  m_axi_awaddr(35) <= 'Z';
  m_axi_awaddr(36) <= 'Z';
  m_axi_awaddr(37) <= 'Z';
  m_axi_awaddr(38) <= 'Z';
  m_axi_awaddr(39) <= 'Z';
  m_axi_awaddr(40) <= 'Z';
  m_axi_awaddr(41) <= 'Z';
  m_axi_awaddr(42) <= 'Z';
  m_axi_awaddr(43) <= 'Z';
  m_axi_awaddr(44) <= 'Z';
  m_axi_awaddr(45) <= 'Z';
  m_axi_awaddr(46) <= 'Z';
  m_axi_awaddr(47) <= 'Z';
  m_axi_awaddr(48) <= 'Z';
  m_axi_awaddr(49) <= 'Z';
  m_axi_awaddr(50) <= 'Z';
  m_axi_awaddr(51) <= 'Z';
  m_axi_awaddr(52) <= 'Z';
  m_axi_awaddr(53) <= 'Z';
  m_axi_awaddr(54) <= 'Z';
  m_axi_awaddr(55) <= 'Z';
  m_axi_awaddr(56) <= 'Z';
  m_axi_awaddr(57) <= 'Z';
  m_axi_awaddr(58) <= 'Z';
  m_axi_awaddr(59) <= 'Z';
  m_axi_awaddr(60) <= 'Z';
  m_axi_awaddr(61) <= 'Z';
  m_axi_awaddr(62) <= 'Z';
  m_axi_awaddr(63) <= 'Z';
  m_axi_awaddr(64) <= 'Z';
  m_axi_awaddr(65) <= 'Z';
  m_axi_awaddr(66) <= 'Z';
  m_axi_awaddr(67) <= 'Z';
  m_axi_awaddr(68) <= 'Z';
  m_axi_awaddr(69) <= 'Z';
  m_axi_awaddr(70) <= 'Z';
  m_axi_awaddr(71) <= 'Z';
  m_axi_awaddr(72) <= 'Z';
  m_axi_awaddr(73) <= 'Z';
  m_axi_awaddr(74) <= 'Z';
  m_axi_awaddr(75) <= 'Z';
  m_axi_awaddr(76) <= 'Z';
  m_axi_awaddr(77) <= 'Z';
  m_axi_awaddr(78) <= 'Z';
  m_axi_awaddr(79) <= 'Z';
  m_axi_awaddr(80) <= 'Z';
  m_axi_awaddr(81) <= 'Z';
  m_axi_awaddr(82) <= 'Z';
  m_axi_awaddr(83) <= 'Z';
  m_axi_awaddr(84) <= 'Z';
  m_axi_awaddr(85) <= 'Z';
  m_axi_awaddr(86) <= 'Z';
  m_axi_awaddr(87) <= 'Z';
  m_axi_awaddr(88) <= 'Z';
  m_axi_awaddr(89) <= 'Z';
  m_axi_awaddr(90) <= 'Z';
  m_axi_awaddr(91) <= 'Z';
  m_axi_awaddr(92) <= 'Z';
  m_axi_awaddr(93) <= 'Z';
  m_axi_awaddr(94) <= 'Z';
  m_axi_awaddr(95) <= 'Z';
  m_axi_awaddr(96) <= 'Z';
  m_axi_awaddr(97) <= 'Z';
  m_axi_awaddr(98) <= 'Z';
  m_axi_awaddr(99) <= 'Z';
  m_axi_awaddr(100) <= 'Z';
  m_axi_awaddr(101) <= 'Z';
  m_axi_awaddr(102) <= 'Z';
  m_axi_awaddr(103) <= 'Z';
  m_axi_awaddr(104) <= 'Z';
  m_axi_awaddr(105) <= 'Z';
  m_axi_awaddr(106) <= 'Z';
  m_axi_awaddr(107) <= 'Z';
  m_axi_awaddr(108) <= 'Z';
  m_axi_awaddr(109) <= 'Z';
  m_axi_awaddr(110) <= 'Z';
  m_axi_awaddr(111) <= 'Z';
  m_axi_awaddr(112) <= 'Z';
  m_axi_awaddr(113) <= 'Z';
  m_axi_awaddr(114) <= 'Z';
  m_axi_awaddr(115) <= 'Z';
  m_axi_awaddr(116) <= 'Z';
  m_axi_awaddr(117) <= 'Z';
  m_axi_awaddr(118) <= 'Z';
  m_axi_awaddr(119) <= 'Z';
  m_axi_awaddr(120) <= 'Z';
  m_axi_awaddr(121) <= 'Z';
  m_axi_awaddr(122) <= 'Z';
  m_axi_awaddr(123) <= 'Z';
  m_axi_awaddr(124) <= 'Z';
  m_axi_awaddr(125) <= 'Z';
  m_axi_awaddr(126) <= 'Z';
  m_axi_awaddr(127) <= 'Z';
  m_axi_awaddr(128) <= 'Z';
  m_axi_awaddr(129) <= 'Z';
  m_axi_awaddr(130) <= 'Z';
  m_axi_awaddr(131) <= 'Z';
  m_axi_awaddr(132) <= 'Z';
  m_axi_awaddr(133) <= 'Z';
  m_axi_awaddr(134) <= 'Z';
  m_axi_awaddr(135) <= 'Z';
  m_axi_awaddr(136) <= 'Z';
  m_axi_awaddr(137) <= 'Z';
  m_axi_awaddr(138) <= 'Z';
  m_axi_awaddr(139) <= 'Z';
  m_axi_awaddr(140) <= 'Z';
  m_axi_awaddr(141) <= 'Z';
  m_axi_awaddr(142) <= 'Z';
  m_axi_awaddr(143) <= 'Z';
  m_axi_awaddr(144) <= 'Z';
  m_axi_awaddr(145) <= 'Z';
  m_axi_awaddr(146) <= 'Z';
  m_axi_awaddr(147) <= 'Z';
  m_axi_awaddr(148) <= 'Z';
  m_axi_awaddr(149) <= 'Z';
  m_axi_awaddr(150) <= 'Z';
  m_axi_awaddr(151) <= 'Z';
  m_axi_awaddr(152) <= 'Z';
  m_axi_awaddr(153) <= 'Z';
  m_axi_awaddr(154) <= 'Z';
  m_axi_awaddr(155) <= 'Z';
  m_axi_awaddr(156) <= 'Z';
  m_axi_awaddr(157) <= 'Z';
  m_axi_awaddr(158) <= 'Z';
  m_axi_awaddr(159) <= 'Z';
  m_axi_awaddr(160) <= 'Z';
  m_axi_awaddr(161) <= 'Z';
  m_axi_awaddr(162) <= 'Z';
  m_axi_awaddr(163) <= 'Z';
  m_axi_awaddr(164) <= 'Z';
  m_axi_awaddr(165) <= 'Z';
  m_axi_awaddr(166) <= 'Z';
  m_axi_awaddr(167) <= 'Z';
  m_axi_awaddr(168) <= 'Z';
  m_axi_awaddr(169) <= 'Z';
  m_axi_awaddr(170) <= 'Z';
  m_axi_awaddr(171) <= 'Z';
  m_axi_awaddr(172) <= 'Z';
  m_axi_awaddr(173) <= 'Z';
  m_axi_awaddr(174) <= 'Z';
  m_axi_awaddr(175) <= 'Z';
  m_axi_awaddr(176) <= 'Z';
  m_axi_awaddr(177) <= 'Z';
  m_axi_awaddr(178) <= 'Z';
  m_axi_awaddr(179) <= 'Z';
  m_axi_awaddr(180) <= 'Z';
  m_axi_awaddr(181) <= 'Z';
  m_axi_awaddr(182) <= 'Z';
  m_axi_awaddr(183) <= 'Z';
  m_axi_awaddr(184) <= 'Z';
  m_axi_awaddr(185) <= 'Z';
  m_axi_awaddr(186) <= 'Z';
  m_axi_awaddr(187) <= 'Z';
  m_axi_awaddr(188) <= 'Z';
  m_axi_awaddr(189) <= 'Z';
  m_axi_awaddr(190) <= 'Z';
  m_axi_awaddr(191) <= 'Z';
m00_couplers: entity work.m00_couplers_imp_15SPJYW
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m00_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m00_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_XU9C55
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m01_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m01_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_14WQB4R
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m02_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m02_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m02_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m02_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m02_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wvalid => m02_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_YFYJ3U
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m03_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m03_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m03_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m03_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m03_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_17KQ732
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m04_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m04_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m04_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m04_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m04_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
s00_couplers: entity work.s00_couplers_imp_UYSKKA
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component design_1_xbar_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(14 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(14 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(14 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(14 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => NLW_xbar_m_axi_wstrb_UNCONNECTED(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    BCLK : out STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    GPIO_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GPIO_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    GPIO_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    LRCLK : out STD_LOGIC;
    SDATA_I : in STD_LOGIC;
    SDATA_O : out STD_LOGIC;
    VGA_B_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_HS_0 : out STD_LOGIC;
    VGA_R_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_VS_0 : out STD_LOGIC;
    btns_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sws_8bits_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=55,numReposBlks=31,numNonXlnxBlks=2,numHierBlks=24,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=25,da_board_cnt=6,da_clkrst_cnt=6,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_processing_system7_0_0 is
  port (
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_ARREADY : out STD_LOGIC;
    S_AXI_HP1_AWREADY : out STD_LOGIC;
    S_AXI_HP1_BVALID : out STD_LOGIC;
    S_AXI_HP1_RLAST : out STD_LOGIC;
    S_AXI_HP1_RVALID : out STD_LOGIC;
    S_AXI_HP1_WREADY : out STD_LOGIC;
    S_AXI_HP1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_ACLK : in STD_LOGIC;
    S_AXI_HP1_ARVALID : in STD_LOGIC;
    S_AXI_HP1_AWVALID : in STD_LOGIC;
    S_AXI_HP1_BREADY : in STD_LOGIC;
    S_AXI_HP1_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_RREADY : in STD_LOGIC;
    S_AXI_HP1_WLAST : in STD_LOGIC;
    S_AXI_HP1_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_WVALID : in STD_LOGIC;
    S_AXI_HP1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 2 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component design_1_processing_system7_0_0;
  component design_1_rst_ps7_0_100M_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_ps7_0_100M_1;
  component design_1_zed_audio_ctrl_0_0 is
  port (
    BCLK : out STD_LOGIC;
    LRCLK : out STD_LOGIC;
    SDATA_I : in STD_LOGIC;
    SDATA_O : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC
  );
  end component design_1_zed_audio_ctrl_0_0;
  component design_1_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_axi_gpio_0_0;
  component design_1_axi_gpio_1_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_axi_gpio_1_1;
  component design_1_rst_ps7_0_100M_3 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_ps7_0_100M_3;
  component design_1_vga_controller_0_1 is
  port (
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_HS : out STD_LOGIC;
    VGA_VS : out STD_LOGIC;
    clk : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    pixel_rstn : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    rfifo_count : in STD_LOGIC_VECTOR ( 7 downto 0 );
    switch_buffer : in STD_LOGIC;
    switch_buffer_ack : out STD_LOGIC;
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWUSER : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARUSER : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC
  );
  end component design_1_vga_controller_0_1;
  component design_1_clk_wiz_0_2 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_2;
  component design_1_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component design_1_axi_dma_0_0;
  component design_1_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_0_0;
  component design_1_rand_num_generator_0_2 is
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
  end component design_1_rand_num_generator_0_2;
  component design_1_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1_xlconcat_0_1;
  component design_1_xfft_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC
  );
  end component design_1_xfft_0_0;
  component design_1_axi_dma_0_1 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component design_1_axi_dma_0_1;
  component design_1_edge_detect_0_0 is
  port (
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    edge_detected : out STD_LOGIC
  );
  end component design_1_edge_detect_0_0;
  component design_1_proc_sys_reset_0_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_0_1;
  component design_1_axi_gpio_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_axi_gpio_0_1;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  signal Net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SDATA_I_0_1 : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_1_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_dma_0_M_AXIS_MM2S_1_TLAST : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_1_TREADY : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_1_TVALID : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_MM2S_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_1_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_1_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_1_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_MM2S_1_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_S2MM_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_1_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_1_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_S2MM_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_1_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_S2MM_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_1_WVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_dma_0_mm2s_introut : STD_LOGIC;
  signal axi_dma_0_s2mm_introut : STD_LOGIC;
  signal axi_gpio_0_GPIO2_TRI_I : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_gpio_0_GPIO_TRI_I : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axi_gpio_0_ip2intc_irpt : STD_LOGIC;
  signal axi_gpio_1_GPIO_TRI_I : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_gpio_1_GPIO_TRI_O : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_gpio_1_GPIO_TRI_T : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_mem_intercon_M00_AXI_BREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_BVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_mem_intercon_M00_AXI_RLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_RVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_M00_AXI_WID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_mem_intercon_M00_AXI_WLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_M00_AXI_WVALID : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal edge_detect_0_edge_detected : STD_LOGIC;
  signal fft_core_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fft_core_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fft_core_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fft_core_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fft_core_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fft_core_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fft_core_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fft_core_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fft_core_M00_AXI_ARREADY : STD_LOGIC;
  signal fft_core_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fft_core_M00_AXI_ARVALID : STD_LOGIC;
  signal fft_core_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fft_core_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fft_core_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fft_core_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fft_core_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fft_core_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fft_core_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fft_core_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fft_core_M00_AXI_AWREADY : STD_LOGIC;
  signal fft_core_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fft_core_M00_AXI_AWVALID : STD_LOGIC;
  signal fft_core_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal fft_core_M00_AXI_BREADY : STD_LOGIC;
  signal fft_core_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fft_core_M00_AXI_BVALID : STD_LOGIC;
  signal fft_core_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fft_core_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal fft_core_M00_AXI_RLAST : STD_LOGIC;
  signal fft_core_M00_AXI_RREADY : STD_LOGIC;
  signal fft_core_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fft_core_M00_AXI_RVALID : STD_LOGIC;
  signal fft_core_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fft_core_M00_AXI_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fft_core_M00_AXI_WLAST : STD_LOGIC;
  signal fft_core_M00_AXI_WREADY : STD_LOGIC;
  signal fft_core_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft_core_M00_AXI_WVALID : STD_LOGIC;
  signal fft_core_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal proc_sys_reset_0_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK2 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_T : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_T : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal processing_system7_0_S_AXI_HP0_RCOUNT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_WVALID : STD_LOGIC;
  signal rand_num_generator_0_m_axi_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rand_num_generator_0_m_axi_TREADY : STD_LOGIC;
  signal rand_num_generator_0_m_axi_TVALID : STD_LOGIC;
  signal rst_ps7_0_100M1_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vga_controller_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vga_controller_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vga_controller_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_controller_0_M_AXI_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vga_controller_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_controller_0_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vga_controller_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vga_controller_0_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_controller_0_M_AXI_ARREADY : STD_LOGIC;
  signal vga_controller_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vga_controller_0_M_AXI_ARUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal vga_controller_0_M_AXI_ARVALID : STD_LOGIC;
  signal vga_controller_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vga_controller_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vga_controller_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_controller_0_M_AXI_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vga_controller_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_controller_0_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vga_controller_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vga_controller_0_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_controller_0_M_AXI_AWREADY : STD_LOGIC;
  signal vga_controller_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vga_controller_0_M_AXI_AWUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal vga_controller_0_M_AXI_AWVALID : STD_LOGIC;
  signal vga_controller_0_M_AXI_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vga_controller_0_M_AXI_BREADY : STD_LOGIC;
  signal vga_controller_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vga_controller_0_M_AXI_BVALID : STD_LOGIC;
  signal vga_controller_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal vga_controller_0_M_AXI_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vga_controller_0_M_AXI_RLAST : STD_LOGIC;
  signal vga_controller_0_M_AXI_RREADY : STD_LOGIC;
  signal vga_controller_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vga_controller_0_M_AXI_RVALID : STD_LOGIC;
  signal vga_controller_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal vga_controller_0_M_AXI_WID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal vga_controller_0_M_AXI_WLAST : STD_LOGIC;
  signal vga_controller_0_M_AXI_WREADY : STD_LOGIC;
  signal vga_controller_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vga_controller_0_M_AXI_WVALID : STD_LOGIC;
  signal vga_controller_0_VGA_B : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_controller_0_VGA_G : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_controller_0_VGA_HS : STD_LOGIC;
  signal vga_controller_0_VGA_R : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_controller_0_VGA_VS : STD_LOGIC;
  signal xfft_0_M_AXIS_DATA_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xfft_0_M_AXIS_DATA_TLAST : STD_LOGIC;
  signal xfft_0_M_AXIS_DATA_TREADY : STD_LOGIC;
  signal xfft_0_M_AXIS_DATA_TVALID : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zed_audio_ctrl_0_BCLK : STD_LOGIC;
  signal zed_audio_ctrl_0_LRCLK : STD_LOGIC;
  signal zed_audio_ctrl_0_SDATA_O : STD_LOGIC;
  signal NLW_axi_dma_0_m_axis_mm2s_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_mm2s_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_dma_1_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_1_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_1_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_axi_gpio_2_gpio_io_i_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_axi_gpio_2_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_axi_mem_intercon_S03_AXI_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S03_AXI_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S03_AXI_bid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S03_AXI_bresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S03_AXI_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S03_AXI_rdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S03_AXI_rid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S03_AXI_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S03_AXI_rresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S03_AXI_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S03_AXI_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S04_AXI_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S04_AXI_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S04_AXI_bid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S04_AXI_bresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S04_AXI_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S04_AXI_rdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S04_AXI_rid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S04_AXI_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S04_AXI_rresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S04_AXI_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S04_AXI_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S05_AXI_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S05_AXI_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S05_AXI_bid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S05_AXI_bresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S05_AXI_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S05_AXI_rdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S05_AXI_rid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S05_AXI_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S05_AXI_rresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S05_AXI_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S05_AXI_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S06_AXI_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S06_AXI_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S06_AXI_bid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S06_AXI_bresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S06_AXI_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S06_AXI_rdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S06_AXI_rid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S06_AXI_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S06_AXI_rresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S06_AXI_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mem_intercon_S06_AXI_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ps7_0_axi_periph_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 191 downto 0 );
  signal NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_100M1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_vga_controller_0_switch_buffer_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_data_in_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_data_out_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_frame_started_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_status_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_s_axis_config_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FCLK_CLK1 : signal is "xilinx.com:signal:clock:1.0 CLK.FCLK_CLK1 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FCLK_CLK1 : signal is "XIL_INTERFACENAME CLK.FCLK_CLK1, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of IIC_0_scl_i : signal is "xilinx.com:interface:iic:1.0 IIC_0 SCL_I";
  attribute X_INTERFACE_INFO of IIC_0_scl_o : signal is "xilinx.com:interface:iic:1.0 IIC_0 SCL_O";
  attribute X_INTERFACE_INFO of IIC_0_scl_t : signal is "xilinx.com:interface:iic:1.0 IIC_0 SCL_T";
  attribute X_INTERFACE_INFO of IIC_0_sda_i : signal is "xilinx.com:interface:iic:1.0 IIC_0 SDA_I";
  attribute X_INTERFACE_INFO of IIC_0_sda_o : signal is "xilinx.com:interface:iic:1.0 IIC_0 SDA_O";
  attribute X_INTERFACE_INFO of IIC_0_sda_t : signal is "xilinx.com:interface:iic:1.0 IIC_0 SDA_T";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_INFO of GPIO_tri_i : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_I";
  attribute X_INTERFACE_INFO of GPIO_tri_o : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_O";
  attribute X_INTERFACE_INFO of GPIO_tri_t : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_T";
  attribute X_INTERFACE_INFO of btns_5bits_tri_i : signal is "xilinx.com:interface:gpio:1.0 btns_5bits TRI_I";
  attribute X_INTERFACE_INFO of sws_8bits_tri_i : signal is "xilinx.com:interface:gpio:1.0 sws_8bits TRI_I";
begin
  BCLK <= zed_audio_ctrl_0_BCLK;
  FCLK_CLK1 <= processing_system7_0_FCLK_CLK1;
  GPIO_tri_o(1 downto 0) <= axi_gpio_1_GPIO_TRI_O(1 downto 0);
  GPIO_tri_t(1 downto 0) <= axi_gpio_1_GPIO_TRI_T(1 downto 0);
  IIC_0_scl_o <= processing_system7_0_IIC_0_SCL_O;
  IIC_0_scl_t <= processing_system7_0_IIC_0_SCL_T;
  IIC_0_sda_o <= processing_system7_0_IIC_0_SDA_O;
  IIC_0_sda_t <= processing_system7_0_IIC_0_SDA_T;
  LRCLK <= zed_audio_ctrl_0_LRCLK;
  SDATA_I_0_1 <= SDATA_I;
  SDATA_O <= zed_audio_ctrl_0_SDATA_O;
  VGA_B_0(3 downto 0) <= vga_controller_0_VGA_B(3 downto 0);
  VGA_G_0(3 downto 0) <= vga_controller_0_VGA_G(3 downto 0);
  VGA_HS_0 <= vga_controller_0_VGA_HS;
  VGA_R_0(3 downto 0) <= vga_controller_0_VGA_R(3 downto 0);
  VGA_VS_0 <= vga_controller_0_VGA_VS;
  axi_gpio_0_GPIO2_TRI_I(7 downto 0) <= sws_8bits_tri_i(7 downto 0);
  axi_gpio_0_GPIO_TRI_I(4 downto 0) <= btns_5bits_tri_i(4 downto 0);
  axi_gpio_1_GPIO_TRI_I(1 downto 0) <= GPIO_tri_i(1 downto 0);
  processing_system7_0_IIC_0_SCL_I <= IIC_0_scl_i;
  processing_system7_0_IIC_0_SDA_I <= IIC_0_sda_i;
axi_dma_0: component design_1_axi_dma_0_0
     port map (
      axi_resetn => rst_ps7_0_100M_peripheral_aresetn(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_dma_0_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => NLW_axi_dma_0_m_axis_mm2s_tlast_UNCONNECTED,
      m_axis_mm2s_tready => axi_dma_0_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID,
      mm2s_introut => NLW_axi_dma_0_mm2s_introut_UNCONNECTED,
      mm2s_prmry_reset_out_n => NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_introut => NLW_axi_dma_0_s2mm_introut_UNCONNECTED,
      s2mm_prmry_reset_out_n => NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(9 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      s_axi_lite_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      s_axi_lite_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      s_axi_lite_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      s_axi_lite_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      s_axis_s2mm_tdata(31 downto 0) => rand_num_generator_0_m_axi_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => B"1111",
      s_axis_s2mm_tlast => '0',
      s_axis_s2mm_tready => rand_num_generator_0_m_axi_TREADY,
      s_axis_s2mm_tvalid => rand_num_generator_0_m_axi_TVALID
    );
axi_dma_1: component design_1_axi_dma_0_1
     port map (
      axi_resetn => proc_sys_reset_0_peripheral_aresetn_1(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_0_M_AXI_MM2S_1_ARREADY(0),
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_0_M_AXI_MM2S_1_ARVALID,
      m_axi_mm2s_rdata(63 downto 0) => axi_dma_0_M_AXI_MM2S_1_RDATA(63 downto 0),
      m_axi_mm2s_rlast => axi_dma_0_M_AXI_MM2S_1_RLAST(0),
      m_axi_mm2s_rready => axi_dma_0_M_AXI_MM2S_1_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_1_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_0_M_AXI_MM2S_1_RVALID(0),
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_1_AWREADY(0),
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_1_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_1_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_1_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_1_BVALID(0),
      m_axi_s2mm_wdata(63 downto 0) => axi_dma_0_M_AXI_S2MM_1_WDATA(63 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_1_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_1_WREADY(0),
      m_axi_s2mm_wstrb(7 downto 0) => axi_dma_0_M_AXI_S2MM_1_WSTRB(7 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_1_WVALID,
      m_axis_mm2s_tdata(63 downto 0) => axi_dma_0_M_AXIS_MM2S_1_TDATA(63 downto 0),
      m_axis_mm2s_tkeep(7 downto 0) => NLW_axi_dma_1_m_axis_mm2s_tkeep_UNCONNECTED(7 downto 0),
      m_axis_mm2s_tlast => axi_dma_0_M_AXIS_MM2S_1_TLAST,
      m_axis_mm2s_tready => axi_dma_0_M_AXIS_MM2S_1_TREADY,
      m_axis_mm2s_tvalid => axi_dma_0_M_AXIS_MM2S_1_TVALID,
      mm2s_introut => axi_dma_0_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_1_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_introut => axi_dma_0_s2mm_introut,
      s2mm_prmry_reset_out_n => NLW_axi_dma_1_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(9 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => axi_interconnect_1_M00_AXI_ARREADY,
      s_axi_lite_arvalid => axi_interconnect_1_M00_AXI_ARVALID(0),
      s_axi_lite_awaddr(9 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => axi_interconnect_1_M00_AXI_AWREADY,
      s_axi_lite_awvalid => axi_interconnect_1_M00_AXI_AWVALID(0),
      s_axi_lite_bready => axi_interconnect_1_M00_AXI_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => axi_interconnect_1_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => axi_interconnect_1_M00_AXI_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => axi_interconnect_1_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => axi_interconnect_1_M00_AXI_WREADY,
      s_axi_lite_wvalid => axi_interconnect_1_M00_AXI_WVALID(0),
      s_axis_s2mm_tdata(63 downto 0) => xfft_0_M_AXIS_DATA_TDATA(63 downto 0),
      s_axis_s2mm_tkeep(7 downto 0) => B"11111111",
      s_axis_s2mm_tlast => xfft_0_M_AXIS_DATA_TLAST,
      s_axis_s2mm_tready => xfft_0_M_AXIS_DATA_TREADY,
      s_axis_s2mm_tvalid => xfft_0_M_AXIS_DATA_TVALID
    );
axi_gpio_0: component design_1_axi_gpio_0_0
     port map (
      gpio2_io_i(7 downto 0) => axi_gpio_0_GPIO2_TRI_I(7 downto 0),
      gpio_io_i(4 downto 0) => axi_gpio_0_GPIO_TRI_I(4 downto 0),
      ip2intc_irpt => axi_gpio_0_ip2intc_irpt,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M04_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M04_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M04_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M04_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M04_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M04_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M04_AXI_WVALID
    );
axi_gpio_1: component design_1_axi_gpio_1_1
     port map (
      gpio_io_i(1 downto 0) => axi_gpio_1_GPIO_TRI_I(1 downto 0),
      gpio_io_o(1 downto 0) => axi_gpio_1_GPIO_TRI_O(1 downto 0),
      gpio_io_t(1 downto 0) => axi_gpio_1_GPIO_TRI_T(1 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M01_AXI_WVALID
    );
axi_gpio_2: component design_1_axi_gpio_0_1
     port map (
      gpio_io_i(23 downto 0) => NLW_axi_gpio_2_gpio_io_i_UNCONNECTED(23 downto 0),
      gpio_io_o(23 downto 0) => axi_gpio_0_gpio_io_o(23 downto 0),
      gpio_io_t(23 downto 0) => NLW_axi_gpio_2_gpio_io_t_UNCONNECTED(23 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_1_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn_1(0),
      s_axi_arready => axi_interconnect_1_M01_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_1_M01_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => axi_interconnect_1_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_1_M01_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_1_M01_AXI_AWVALID(0),
      s_axi_bready => axi_interconnect_1_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => axi_interconnect_1_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_1_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_1_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_1_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => axi_interconnect_1_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_1_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_1_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_1_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_1_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_1_M01_AXI_WVALID(0)
    );
axi_interconnect_2: entity work.design_1_axi_interconnect_0_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      M00_AXI_araddr(31 downto 0) => fft_core_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => fft_core_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => fft_core_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(0) => fft_core_M00_AXI_ARID(0),
      M00_AXI_arlen(3 downto 0) => fft_core_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => fft_core_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => fft_core_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => fft_core_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => fft_core_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => fft_core_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => fft_core_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => fft_core_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => fft_core_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => fft_core_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(0) => fft_core_M00_AXI_AWID(0),
      M00_AXI_awlen(3 downto 0) => fft_core_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => fft_core_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => fft_core_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => fft_core_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => fft_core_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => fft_core_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => fft_core_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => fft_core_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => fft_core_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => fft_core_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => fft_core_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => fft_core_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rid(5 downto 0) => fft_core_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => fft_core_M00_AXI_RLAST,
      M00_AXI_rready => fft_core_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => fft_core_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => fft_core_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => fft_core_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wid(0) => fft_core_M00_AXI_WID(0),
      M00_AXI_wlast => fft_core_M00_AXI_WLAST,
      M00_AXI_wready => fft_core_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => fft_core_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => fft_core_M00_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      S00_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARPROT(2 downto 0),
      S00_AXI_arready(0) => axi_dma_0_M_AXI_MM2S_1_ARREADY(0),
      S00_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_1_ARSIZE(2 downto 0),
      S00_AXI_arvalid(0) => axi_dma_0_M_AXI_MM2S_1_ARVALID,
      S00_AXI_rdata(63 downto 0) => axi_dma_0_M_AXI_MM2S_1_RDATA(63 downto 0),
      S00_AXI_rlast(0) => axi_dma_0_M_AXI_MM2S_1_RLAST(0),
      S00_AXI_rready(0) => axi_dma_0_M_AXI_MM2S_1_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_1_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => axi_dma_0_M_AXI_MM2S_1_RVALID(0),
      S01_ACLK => processing_system7_0_FCLK_CLK0,
      S01_ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      S01_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWLEN(7 downto 0),
      S01_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWPROT(2 downto 0),
      S01_AXI_awready(0) => axi_dma_0_M_AXI_S2MM_1_AWREADY(0),
      S01_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_1_AWSIZE(2 downto 0),
      S01_AXI_awvalid(0) => axi_dma_0_M_AXI_S2MM_1_AWVALID,
      S01_AXI_bready(0) => axi_dma_0_M_AXI_S2MM_1_BREADY,
      S01_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_1_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => axi_dma_0_M_AXI_S2MM_1_BVALID(0),
      S01_AXI_wdata(63 downto 0) => axi_dma_0_M_AXI_S2MM_1_WDATA(63 downto 0),
      S01_AXI_wlast(0) => axi_dma_0_M_AXI_S2MM_1_WLAST,
      S01_AXI_wready(0) => axi_dma_0_M_AXI_S2MM_1_WREADY(0),
      S01_AXI_wstrb(7 downto 0) => axi_dma_0_M_AXI_S2MM_1_WSTRB(7 downto 0),
      S01_AXI_wvalid(0) => axi_dma_0_M_AXI_S2MM_1_WVALID
    );
axi_interconnect_3: entity work.design_1_axi_interconnect_1_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => axi_interconnect_1_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => axi_interconnect_1_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => axi_interconnect_1_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => axi_interconnect_1_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => axi_interconnect_1_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => axi_interconnect_1_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => axi_interconnect_1_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => axi_interconnect_1_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => axi_interconnect_1_M00_AXI_WREADY,
      M00_AXI_wvalid(0) => axi_interconnect_1_M00_AXI_WVALID(0),
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      M01_AXI_araddr(31 downto 0) => axi_interconnect_1_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => axi_interconnect_1_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => axi_interconnect_1_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => axi_interconnect_1_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => axi_interconnect_1_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => axi_interconnect_1_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => axi_interconnect_1_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => axi_interconnect_1_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => axi_interconnect_1_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_interconnect_1_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => axi_interconnect_1_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => axi_interconnect_1_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => axi_interconnect_1_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_interconnect_1_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => axi_interconnect_1_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_interconnect_1_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => axi_interconnect_1_M01_AXI_WVALID(0),
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      S00_AXI_arready(0) => S00_AXI_1_ARREADY(0),
      S00_AXI_arvalid(0) => S00_AXI_1_ARVALID(0),
      S00_AXI_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      S00_AXI_awready(0) => S00_AXI_1_AWREADY(0),
      S00_AXI_awvalid(0) => S00_AXI_1_AWVALID(0),
      S00_AXI_bready(0) => S00_AXI_1_BREADY(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => S00_AXI_1_BVALID(0),
      S00_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      S00_AXI_rready(0) => S00_AXI_1_RREADY(0),
      S00_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => S00_AXI_1_RVALID(0),
      S00_AXI_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      S00_AXI_wready(0) => S00_AXI_1_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => S00_AXI_1_WVALID(0)
    );
axi_mem_intercon: entity work.design_1_axi_mem_intercon_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(5 downto 0) => axi_mem_intercon_M00_AXI_ARID(5 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_mem_intercon_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_mem_intercon_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_mem_intercon_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(5 downto 0) => axi_mem_intercon_M00_AXI_AWID(5 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_mem_intercon_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_mem_intercon_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => axi_mem_intercon_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => axi_mem_intercon_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_mem_intercon_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rid(5 downto 0) => axi_mem_intercon_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => axi_mem_intercon_M00_AXI_RLAST,
      M00_AXI_rready => axi_mem_intercon_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_mem_intercon_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_mem_intercon_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wid(5 downto 0) => axi_mem_intercon_M00_AXI_WID(5 downto 0),
      M00_AXI_wlast => axi_mem_intercon_M00_AXI_WLAST,
      M00_AXI_wready => axi_mem_intercon_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_mem_intercon_M00_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => vga_controller_0_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => vga_controller_0_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => vga_controller_0_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(2 downto 0) => vga_controller_0_M_AXI_ARID(2 downto 0),
      S00_AXI_arlen(3 downto 0) => vga_controller_0_M_AXI_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => vga_controller_0_M_AXI_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => vga_controller_0_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => vga_controller_0_M_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => vga_controller_0_M_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => vga_controller_0_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_aruser(4 downto 0) => vga_controller_0_M_AXI_ARUSER(4 downto 0),
      S00_AXI_arvalid => vga_controller_0_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => vga_controller_0_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => vga_controller_0_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => vga_controller_0_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(2 downto 0) => vga_controller_0_M_AXI_AWID(2 downto 0),
      S00_AXI_awlen(3 downto 0) => vga_controller_0_M_AXI_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => vga_controller_0_M_AXI_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => vga_controller_0_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => vga_controller_0_M_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => vga_controller_0_M_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => vga_controller_0_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awuser(4 downto 0) => vga_controller_0_M_AXI_AWUSER(4 downto 0),
      S00_AXI_awvalid => vga_controller_0_M_AXI_AWVALID,
      S00_AXI_bid(2 downto 0) => vga_controller_0_M_AXI_BID(2 downto 0),
      S00_AXI_bready => vga_controller_0_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => vga_controller_0_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => vga_controller_0_M_AXI_BVALID,
      S00_AXI_rdata(63 downto 0) => vga_controller_0_M_AXI_RDATA(63 downto 0),
      S00_AXI_rid(2 downto 0) => vga_controller_0_M_AXI_RID(2 downto 0),
      S00_AXI_rlast => vga_controller_0_M_AXI_RLAST,
      S00_AXI_rready => vga_controller_0_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => vga_controller_0_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => vga_controller_0_M_AXI_RVALID,
      S00_AXI_wdata(63 downto 0) => vga_controller_0_M_AXI_WDATA(63 downto 0),
      S00_AXI_wid(5 downto 0) => vga_controller_0_M_AXI_WID(5 downto 0),
      S00_AXI_wlast => vga_controller_0_M_AXI_WLAST,
      S00_AXI_wready => vga_controller_0_M_AXI_WREADY,
      S00_AXI_wstrb(7 downto 0) => vga_controller_0_M_AXI_WSTRB(7 downto 0),
      S00_AXI_wvalid => vga_controller_0_M_AXI_WVALID,
      S01_ACLK => processing_system7_0_FCLK_CLK0,
      S01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S01_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S01_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S01_AXI_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      S01_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S01_AXI_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      S01_AXI_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      S01_AXI_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      S01_AXI_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      S01_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S01_AXI_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      S02_ACLK => processing_system7_0_FCLK_CLK0,
      S02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S02_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S02_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S02_AXI_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      S02_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S02_AXI_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      S02_AXI_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      S02_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S02_AXI_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      S02_AXI_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      S02_AXI_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      S02_AXI_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      S02_AXI_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      S02_AXI_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      S03_ACLK => processing_system7_0_FCLK_CLK0,
      S03_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S03_AXI_araddr => '0',
      S03_AXI_arburst => '0',
      S03_AXI_arcache => '0',
      S03_AXI_arid => '0',
      S03_AXI_arlen => '0',
      S03_AXI_arlock => '0',
      S03_AXI_arprot => '0',
      S03_AXI_arqos => '0',
      S03_AXI_arready => NLW_axi_mem_intercon_S03_AXI_arready_UNCONNECTED,
      S03_AXI_arsize => '0',
      S03_AXI_aruser => '0',
      S03_AXI_arvalid => '0',
      S03_AXI_awaddr => '0',
      S03_AXI_awburst => '0',
      S03_AXI_awcache => '0',
      S03_AXI_awid => '0',
      S03_AXI_awlen => '0',
      S03_AXI_awlock => '0',
      S03_AXI_awprot => '0',
      S03_AXI_awqos => '0',
      S03_AXI_awready => NLW_axi_mem_intercon_S03_AXI_awready_UNCONNECTED,
      S03_AXI_awsize => '0',
      S03_AXI_awuser => '0',
      S03_AXI_awvalid => '0',
      S03_AXI_bid => NLW_axi_mem_intercon_S03_AXI_bid_UNCONNECTED,
      S03_AXI_bready => '0',
      S03_AXI_bresp => NLW_axi_mem_intercon_S03_AXI_bresp_UNCONNECTED,
      S03_AXI_bvalid => NLW_axi_mem_intercon_S03_AXI_bvalid_UNCONNECTED,
      S03_AXI_rdata => NLW_axi_mem_intercon_S03_AXI_rdata_UNCONNECTED,
      S03_AXI_rid => NLW_axi_mem_intercon_S03_AXI_rid_UNCONNECTED,
      S03_AXI_rlast => NLW_axi_mem_intercon_S03_AXI_rlast_UNCONNECTED,
      S03_AXI_rready => '0',
      S03_AXI_rresp => NLW_axi_mem_intercon_S03_AXI_rresp_UNCONNECTED,
      S03_AXI_rvalid => NLW_axi_mem_intercon_S03_AXI_rvalid_UNCONNECTED,
      S03_AXI_wdata => '0',
      S03_AXI_wlast => '0',
      S03_AXI_wready => NLW_axi_mem_intercon_S03_AXI_wready_UNCONNECTED,
      S03_AXI_wstrb => '0',
      S03_AXI_wvalid => '0',
      S04_ACLK => processing_system7_0_FCLK_CLK0,
      S04_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S04_AXI_araddr => '0',
      S04_AXI_arburst => '0',
      S04_AXI_arcache => '0',
      S04_AXI_arid => '0',
      S04_AXI_arlen => '0',
      S04_AXI_arlock => '0',
      S04_AXI_arprot => '0',
      S04_AXI_arqos => '0',
      S04_AXI_arready => NLW_axi_mem_intercon_S04_AXI_arready_UNCONNECTED,
      S04_AXI_arsize => '0',
      S04_AXI_aruser => '0',
      S04_AXI_arvalid => '0',
      S04_AXI_awaddr => '0',
      S04_AXI_awburst => '0',
      S04_AXI_awcache => '0',
      S04_AXI_awid => '0',
      S04_AXI_awlen => '0',
      S04_AXI_awlock => '0',
      S04_AXI_awprot => '0',
      S04_AXI_awqos => '0',
      S04_AXI_awready => NLW_axi_mem_intercon_S04_AXI_awready_UNCONNECTED,
      S04_AXI_awsize => '0',
      S04_AXI_awuser => '0',
      S04_AXI_awvalid => '0',
      S04_AXI_bid => NLW_axi_mem_intercon_S04_AXI_bid_UNCONNECTED,
      S04_AXI_bready => '0',
      S04_AXI_bresp => NLW_axi_mem_intercon_S04_AXI_bresp_UNCONNECTED,
      S04_AXI_bvalid => NLW_axi_mem_intercon_S04_AXI_bvalid_UNCONNECTED,
      S04_AXI_rdata => NLW_axi_mem_intercon_S04_AXI_rdata_UNCONNECTED,
      S04_AXI_rid => NLW_axi_mem_intercon_S04_AXI_rid_UNCONNECTED,
      S04_AXI_rlast => NLW_axi_mem_intercon_S04_AXI_rlast_UNCONNECTED,
      S04_AXI_rready => '0',
      S04_AXI_rresp => NLW_axi_mem_intercon_S04_AXI_rresp_UNCONNECTED,
      S04_AXI_rvalid => NLW_axi_mem_intercon_S04_AXI_rvalid_UNCONNECTED,
      S04_AXI_wdata => '0',
      S04_AXI_wlast => '0',
      S04_AXI_wready => NLW_axi_mem_intercon_S04_AXI_wready_UNCONNECTED,
      S04_AXI_wstrb => '0',
      S04_AXI_wvalid => '0',
      S05_ACLK => processing_system7_0_FCLK_CLK0,
      S05_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S05_AXI_araddr => '0',
      S05_AXI_arburst => '0',
      S05_AXI_arcache => '0',
      S05_AXI_arid => '0',
      S05_AXI_arlen => '0',
      S05_AXI_arlock => '0',
      S05_AXI_arprot => '0',
      S05_AXI_arqos => '0',
      S05_AXI_arready => NLW_axi_mem_intercon_S05_AXI_arready_UNCONNECTED,
      S05_AXI_arsize => '0',
      S05_AXI_aruser => '0',
      S05_AXI_arvalid => '0',
      S05_AXI_awaddr => '0',
      S05_AXI_awburst => '0',
      S05_AXI_awcache => '0',
      S05_AXI_awid => '0',
      S05_AXI_awlen => '0',
      S05_AXI_awlock => '0',
      S05_AXI_awprot => '0',
      S05_AXI_awqos => '0',
      S05_AXI_awready => NLW_axi_mem_intercon_S05_AXI_awready_UNCONNECTED,
      S05_AXI_awsize => '0',
      S05_AXI_awuser => '0',
      S05_AXI_awvalid => '0',
      S05_AXI_bid => NLW_axi_mem_intercon_S05_AXI_bid_UNCONNECTED,
      S05_AXI_bready => '0',
      S05_AXI_bresp => NLW_axi_mem_intercon_S05_AXI_bresp_UNCONNECTED,
      S05_AXI_bvalid => NLW_axi_mem_intercon_S05_AXI_bvalid_UNCONNECTED,
      S05_AXI_rdata => NLW_axi_mem_intercon_S05_AXI_rdata_UNCONNECTED,
      S05_AXI_rid => NLW_axi_mem_intercon_S05_AXI_rid_UNCONNECTED,
      S05_AXI_rlast => NLW_axi_mem_intercon_S05_AXI_rlast_UNCONNECTED,
      S05_AXI_rready => '0',
      S05_AXI_rresp => NLW_axi_mem_intercon_S05_AXI_rresp_UNCONNECTED,
      S05_AXI_rvalid => NLW_axi_mem_intercon_S05_AXI_rvalid_UNCONNECTED,
      S05_AXI_wdata => '0',
      S05_AXI_wlast => '0',
      S05_AXI_wready => NLW_axi_mem_intercon_S05_AXI_wready_UNCONNECTED,
      S05_AXI_wstrb => '0',
      S05_AXI_wvalid => '0',
      S06_ACLK => processing_system7_0_FCLK_CLK0,
      S06_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S06_AXI_araddr => '0',
      S06_AXI_arburst => '0',
      S06_AXI_arcache => '0',
      S06_AXI_arid => '0',
      S06_AXI_arlen => '0',
      S06_AXI_arlock => '0',
      S06_AXI_arprot => '0',
      S06_AXI_arqos => '0',
      S06_AXI_arready => NLW_axi_mem_intercon_S06_AXI_arready_UNCONNECTED,
      S06_AXI_arsize => '0',
      S06_AXI_aruser => '0',
      S06_AXI_arvalid => '0',
      S06_AXI_awaddr => '0',
      S06_AXI_awburst => '0',
      S06_AXI_awcache => '0',
      S06_AXI_awid => '0',
      S06_AXI_awlen => '0',
      S06_AXI_awlock => '0',
      S06_AXI_awprot => '0',
      S06_AXI_awqos => '0',
      S06_AXI_awready => NLW_axi_mem_intercon_S06_AXI_awready_UNCONNECTED,
      S06_AXI_awsize => '0',
      S06_AXI_awuser => '0',
      S06_AXI_awvalid => '0',
      S06_AXI_bid => NLW_axi_mem_intercon_S06_AXI_bid_UNCONNECTED,
      S06_AXI_bready => '0',
      S06_AXI_bresp => NLW_axi_mem_intercon_S06_AXI_bresp_UNCONNECTED,
      S06_AXI_bvalid => NLW_axi_mem_intercon_S06_AXI_bvalid_UNCONNECTED,
      S06_AXI_rdata => NLW_axi_mem_intercon_S06_AXI_rdata_UNCONNECTED,
      S06_AXI_rid => NLW_axi_mem_intercon_S06_AXI_rid_UNCONNECTED,
      S06_AXI_rlast => NLW_axi_mem_intercon_S06_AXI_rlast_UNCONNECTED,
      S06_AXI_rready => '0',
      S06_AXI_rresp => NLW_axi_mem_intercon_S06_AXI_rresp_UNCONNECTED,
      S06_AXI_rvalid => NLW_axi_mem_intercon_S06_AXI_rvalid_UNCONNECTED,
      S06_AXI_wdata => '0',
      S06_AXI_wlast => '0',
      S06_AXI_wready => NLW_axi_mem_intercon_S06_AXI_wready_UNCONNECTED,
      S06_AXI_wstrb => '0',
      S06_AXI_wvalid => '0'
    );
clk_wiz_0: component design_1_clk_wiz_0_2
     port map (
      clk_in1 => processing_system7_0_FCLK_CLK2,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      resetn => processing_system7_0_FCLK_RESET0_N
    );
edge_detect_0: component design_1_edge_detect_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      din(23 downto 0) => axi_gpio_0_gpio_io_o(23 downto 0),
      edge_detected => edge_detect_0_edge_detected
    );
proc_sys_reset_0: component design_1_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
proc_sys_reset_1: component design_1_proc_sys_reset_0_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => proc_sys_reset_0_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn_1(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
processing_system7_0: component design_1_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_CLK1 => processing_system7_0_FCLK_CLK1,
      FCLK_CLK2 => processing_system7_0_FCLK_CLK2,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      I2C0_SCL_I => processing_system7_0_IIC_0_SCL_I,
      I2C0_SCL_O => processing_system7_0_IIC_0_SCL_O,
      I2C0_SCL_T => processing_system7_0_IIC_0_SCL_T,
      I2C0_SDA_I => processing_system7_0_IIC_0_SDA_I,
      I2C0_SDA_O => processing_system7_0_IIC_0_SDA_O,
      I2C0_SDA_T => processing_system7_0_IIC_0_SDA_T,
      IRQ_F2P(2 downto 0) => xlconcat_0_dout(2 downto 0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 0) => axi_mem_intercon_M00_AXI_ARID(5 downto 0),
      S_AXI_HP0_ARLEN(3 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_mem_intercon_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_mem_intercon_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => axi_mem_intercon_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 0) => axi_mem_intercon_M00_AXI_AWID(5 downto 0),
      S_AXI_HP0_AWLEN(3 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_mem_intercon_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_mem_intercon_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => axi_mem_intercon_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => axi_mem_intercon_M00_AXI_BID(5 downto 0),
      S_AXI_HP0_BREADY => axi_mem_intercon_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => axi_mem_intercon_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => processing_system7_0_S_AXI_HP0_RCOUNT(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => axi_mem_intercon_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => axi_mem_intercon_M00_AXI_RID(5 downto 0),
      S_AXI_HP0_RLAST => axi_mem_intercon_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_mem_intercon_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => axi_mem_intercon_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => axi_mem_intercon_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 0) => axi_mem_intercon_M00_AXI_WID(5 downto 0),
      S_AXI_HP0_WLAST => axi_mem_intercon_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_mem_intercon_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => axi_mem_intercon_M00_AXI_WVALID,
      S_AXI_HP1_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP1_ARADDR(31 downto 0) => fft_core_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP1_ARBURST(1 downto 0) => fft_core_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP1_ARCACHE(3 downto 0) => fft_core_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP1_ARID(5 downto 1) => B"00000",
      S_AXI_HP1_ARID(0) => fft_core_M00_AXI_ARID(0),
      S_AXI_HP1_ARLEN(3 downto 0) => fft_core_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP1_ARLOCK(1 downto 0) => fft_core_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP1_ARPROT(2 downto 0) => fft_core_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP1_ARQOS(3 downto 0) => fft_core_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP1_ARREADY => fft_core_M00_AXI_ARREADY,
      S_AXI_HP1_ARSIZE(2 downto 0) => fft_core_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP1_ARVALID => fft_core_M00_AXI_ARVALID,
      S_AXI_HP1_AWADDR(31 downto 0) => fft_core_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP1_AWBURST(1 downto 0) => fft_core_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP1_AWCACHE(3 downto 0) => fft_core_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP1_AWID(5 downto 1) => B"00000",
      S_AXI_HP1_AWID(0) => fft_core_M00_AXI_AWID(0),
      S_AXI_HP1_AWLEN(3 downto 0) => fft_core_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP1_AWLOCK(1 downto 0) => fft_core_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP1_AWPROT(2 downto 0) => fft_core_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP1_AWQOS(3 downto 0) => fft_core_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP1_AWREADY => fft_core_M00_AXI_AWREADY,
      S_AXI_HP1_AWSIZE(2 downto 0) => fft_core_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP1_AWVALID => fft_core_M00_AXI_AWVALID,
      S_AXI_HP1_BID(5 downto 0) => fft_core_M00_AXI_BID(5 downto 0),
      S_AXI_HP1_BREADY => fft_core_M00_AXI_BREADY,
      S_AXI_HP1_BRESP(1 downto 0) => fft_core_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP1_BVALID => fft_core_M00_AXI_BVALID,
      S_AXI_HP1_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP1_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_RDATA(63 downto 0) => fft_core_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP1_RDISSUECAP1_EN => '0',
      S_AXI_HP1_RID(5 downto 0) => fft_core_M00_AXI_RID(5 downto 0),
      S_AXI_HP1_RLAST => fft_core_M00_AXI_RLAST,
      S_AXI_HP1_RREADY => fft_core_M00_AXI_RREADY,
      S_AXI_HP1_RRESP(1 downto 0) => fft_core_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP1_RVALID => fft_core_M00_AXI_RVALID,
      S_AXI_HP1_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP1_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP1_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP1_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_WDATA(63 downto 0) => fft_core_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP1_WID(5 downto 1) => B"00000",
      S_AXI_HP1_WID(0) => fft_core_M00_AXI_WID(0),
      S_AXI_HP1_WLAST => fft_core_M00_AXI_WLAST,
      S_AXI_HP1_WREADY => fft_core_M00_AXI_WREADY,
      S_AXI_HP1_WRISSUECAP1_EN => '0',
      S_AXI_HP1_WSTRB(7 downto 0) => fft_core_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP1_WVALID => fft_core_M00_AXI_WVALID,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
ps7_0_axi_periph: entity work.design_1_ps7_0_axi_periph_1
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      M00_AXI_arready(0) => S00_AXI_1_ARREADY(0),
      M00_AXI_arvalid(0) => S00_AXI_1_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      M00_AXI_awready(0) => S00_AXI_1_AWREADY(0),
      M00_AXI_awvalid(0) => S00_AXI_1_AWVALID(0),
      M00_AXI_bready(0) => S00_AXI_1_BREADY(0),
      M00_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => S00_AXI_1_BVALID(0),
      M00_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      M00_AXI_rready(0) => S00_AXI_1_RREADY(0),
      M00_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => S00_AXI_1_RVALID(0),
      M00_AXI_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      M00_AXI_wready(0) => S00_AXI_1_WREADY(0),
      M00_AXI_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => S00_AXI_1_WVALID(0),
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      M02_AXI_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => ps7_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready => ps7_0_axi_periph_M04_AXI_ARREADY,
      M04_AXI_arvalid => ps7_0_axi_periph_M04_AXI_ARVALID,
      M04_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready => ps7_0_axi_periph_M04_AXI_AWREADY,
      M04_AXI_awvalid => ps7_0_axi_periph_M04_AXI_AWVALID,
      M04_AXI_bready => ps7_0_axi_periph_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => ps7_0_axi_periph_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => ps7_0_axi_periph_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => ps7_0_axi_periph_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => ps7_0_axi_periph_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => ps7_0_axi_periph_M04_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID,
      m_axi_awaddr(191 downto 0) => NLW_ps7_0_axi_periph_m_axi_awaddr_UNCONNECTED(191 downto 0)
    );
rand_num_generator_0: component design_1_rand_num_generator_0_2
     port map (
      axi_clk => processing_system7_0_FCLK_CLK0,
      axi_reset_n => proc_sys_reset_0_peripheral_aresetn(0),
      m_axis_data(31 downto 0) => rand_num_generator_0_m_axi_TDATA(31 downto 0),
      m_axis_ready => rand_num_generator_0_m_axi_TREADY,
      m_axis_valid => rand_num_generator_0_m_axi_TVALID,
      s_axis_data(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      s_axis_ready => axi_dma_0_M_AXIS_MM2S_TREADY,
      s_axis_valid => axi_dma_0_M_AXIS_MM2S_TVALID
    );
rst_ps7_0_100M: component design_1_rst_ps7_0_100M_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_ps7_0_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
rst_ps7_0_100M1: component design_1_rst_ps7_0_100M_3
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_100M1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_ps7_0_100M1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_100M1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => Net(0),
      peripheral_reset(0) => rst_ps7_0_100M1_peripheral_reset(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
vga_controller_0: component design_1_vga_controller_0_1
     port map (
      M_AXI_ARADDR(31 downto 0) => vga_controller_0_M_AXI_ARADDR(31 downto 0),
      M_AXI_ARBURST(1 downto 0) => vga_controller_0_M_AXI_ARBURST(1 downto 0),
      M_AXI_ARCACHE(3 downto 0) => vga_controller_0_M_AXI_ARCACHE(3 downto 0),
      M_AXI_ARID(2 downto 0) => vga_controller_0_M_AXI_ARID(2 downto 0),
      M_AXI_ARLEN(3 downto 0) => vga_controller_0_M_AXI_ARLEN(3 downto 0),
      M_AXI_ARLOCK(1 downto 0) => vga_controller_0_M_AXI_ARLOCK(1 downto 0),
      M_AXI_ARPROT(2 downto 0) => vga_controller_0_M_AXI_ARPROT(2 downto 0),
      M_AXI_ARQOS(3 downto 0) => vga_controller_0_M_AXI_ARQOS(3 downto 0),
      M_AXI_ARREADY => vga_controller_0_M_AXI_ARREADY,
      M_AXI_ARSIZE(2 downto 0) => vga_controller_0_M_AXI_ARSIZE(2 downto 0),
      M_AXI_ARUSER(4 downto 0) => vga_controller_0_M_AXI_ARUSER(4 downto 0),
      M_AXI_ARVALID => vga_controller_0_M_AXI_ARVALID,
      M_AXI_AWADDR(31 downto 0) => vga_controller_0_M_AXI_AWADDR(31 downto 0),
      M_AXI_AWBURST(1 downto 0) => vga_controller_0_M_AXI_AWBURST(1 downto 0),
      M_AXI_AWCACHE(3 downto 0) => vga_controller_0_M_AXI_AWCACHE(3 downto 0),
      M_AXI_AWID(2 downto 0) => vga_controller_0_M_AXI_AWID(2 downto 0),
      M_AXI_AWLEN(3 downto 0) => vga_controller_0_M_AXI_AWLEN(3 downto 0),
      M_AXI_AWLOCK(1 downto 0) => vga_controller_0_M_AXI_AWLOCK(1 downto 0),
      M_AXI_AWPROT(2 downto 0) => vga_controller_0_M_AXI_AWPROT(2 downto 0),
      M_AXI_AWQOS(3 downto 0) => vga_controller_0_M_AXI_AWQOS(3 downto 0),
      M_AXI_AWREADY => vga_controller_0_M_AXI_AWREADY,
      M_AXI_AWSIZE(2 downto 0) => vga_controller_0_M_AXI_AWSIZE(2 downto 0),
      M_AXI_AWUSER(4 downto 0) => vga_controller_0_M_AXI_AWUSER(4 downto 0),
      M_AXI_AWVALID => vga_controller_0_M_AXI_AWVALID,
      M_AXI_BID(2 downto 0) => vga_controller_0_M_AXI_BID(2 downto 0),
      M_AXI_BREADY => vga_controller_0_M_AXI_BREADY,
      M_AXI_BRESP(1 downto 0) => vga_controller_0_M_AXI_BRESP(1 downto 0),
      M_AXI_BVALID => vga_controller_0_M_AXI_BVALID,
      M_AXI_RDATA(63 downto 0) => vga_controller_0_M_AXI_RDATA(63 downto 0),
      M_AXI_RID(2 downto 0) => vga_controller_0_M_AXI_RID(2 downto 0),
      M_AXI_RLAST => vga_controller_0_M_AXI_RLAST,
      M_AXI_RREADY => vga_controller_0_M_AXI_RREADY,
      M_AXI_RRESP(1 downto 0) => vga_controller_0_M_AXI_RRESP(1 downto 0),
      M_AXI_RVALID => vga_controller_0_M_AXI_RVALID,
      M_AXI_WDATA(63 downto 0) => vga_controller_0_M_AXI_WDATA(63 downto 0),
      M_AXI_WID(5 downto 0) => vga_controller_0_M_AXI_WID(5 downto 0),
      M_AXI_WLAST => vga_controller_0_M_AXI_WLAST,
      M_AXI_WREADY => vga_controller_0_M_AXI_WREADY,
      M_AXI_WSTRB(7 downto 0) => vga_controller_0_M_AXI_WSTRB(7 downto 0),
      M_AXI_WVALID => vga_controller_0_M_AXI_WVALID,
      VGA_B(3 downto 0) => vga_controller_0_VGA_B(3 downto 0),
      VGA_G(3 downto 0) => vga_controller_0_VGA_G(3 downto 0),
      VGA_HS => vga_controller_0_VGA_HS,
      VGA_R(3 downto 0) => vga_controller_0_VGA_R(3 downto 0),
      VGA_VS => vga_controller_0_VGA_VS,
      clk => processing_system7_0_FCLK_CLK0,
      fifo_rst => rst_ps7_0_100M1_peripheral_reset(0),
      pixel_clk => clk_wiz_0_clk_out1,
      pixel_rstn => Net(0),
      rfifo_count(7 downto 0) => processing_system7_0_S_AXI_HP0_RCOUNT(7 downto 0),
      rstn => Net(0),
      switch_buffer => '0',
      switch_buffer_ack => NLW_vga_controller_0_switch_buffer_ack_UNCONNECTED
    );
xfft_0: component design_1_xfft_0_0
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      event_data_in_channel_halt => NLW_xfft_0_event_data_in_channel_halt_UNCONNECTED,
      event_data_out_channel_halt => NLW_xfft_0_event_data_out_channel_halt_UNCONNECTED,
      event_frame_started => NLW_xfft_0_event_frame_started_UNCONNECTED,
      event_status_channel_halt => NLW_xfft_0_event_status_channel_halt_UNCONNECTED,
      event_tlast_missing => NLW_xfft_0_event_tlast_missing_UNCONNECTED,
      event_tlast_unexpected => NLW_xfft_0_event_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(63 downto 0) => xfft_0_M_AXIS_DATA_TDATA(63 downto 0),
      m_axis_data_tlast => xfft_0_M_AXIS_DATA_TLAST,
      m_axis_data_tready => xfft_0_M_AXIS_DATA_TREADY,
      m_axis_data_tvalid => xfft_0_M_AXIS_DATA_TVALID,
      s_axis_config_tdata(23 downto 0) => NLW_xfft_0_s_axis_config_tdata_UNCONNECTED(23 downto 0),
      s_axis_config_tready => NLW_xfft_0_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => edge_detect_0_edge_detected,
      s_axis_data_tdata(63 downto 0) => axi_dma_0_M_AXIS_MM2S_1_TDATA(63 downto 0),
      s_axis_data_tlast => axi_dma_0_M_AXIS_MM2S_1_TLAST,
      s_axis_data_tready => axi_dma_0_M_AXIS_MM2S_1_TREADY,
      s_axis_data_tvalid => axi_dma_0_M_AXIS_MM2S_1_TVALID
    );
xlconcat_0: component design_1_xlconcat_0_1
     port map (
      In0(1 downto 0) => fft_core_dout(1 downto 0),
      In1(0) => axi_gpio_0_ip2intc_irpt,
      dout(2 downto 0) => xlconcat_0_dout(2 downto 0)
    );
xlconcat_1: component design_1_xlconcat_0_0
     port map (
      In0(0) => axi_dma_0_s2mm_introut,
      In1(0) => axi_dma_0_mm2s_introut,
      dout(1 downto 0) => fft_core_dout(1 downto 0)
    );
zed_audio_ctrl_0: component design_1_zed_audio_ctrl_0_0
     port map (
      BCLK => zed_audio_ctrl_0_BCLK,
      LRCLK => zed_audio_ctrl_0_LRCLK,
      SDATA_I => SDATA_I_0_1,
      SDATA_O => zed_audio_ctrl_0_SDATA_O,
      S_AXI_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_ARADDR(31 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      S_AXI_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S_AXI_ARREADY => ps7_0_axi_periph_M03_AXI_ARREADY,
      S_AXI_ARVALID => ps7_0_axi_periph_M03_AXI_ARVALID,
      S_AXI_AWADDR(31 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      S_AXI_AWREADY => ps7_0_axi_periph_M03_AXI_AWREADY,
      S_AXI_AWVALID => ps7_0_axi_periph_M03_AXI_AWVALID,
      S_AXI_BREADY => ps7_0_axi_periph_M03_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => ps7_0_axi_periph_M03_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => ps7_0_axi_periph_M03_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => ps7_0_axi_periph_M03_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => ps7_0_axi_periph_M03_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => ps7_0_axi_periph_M03_AXI_WVALID
    );
end STRUCTURE;
