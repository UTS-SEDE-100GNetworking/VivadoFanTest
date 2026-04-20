--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
--Date        : Mon Apr 20 15:38:00 2026
--Host        : UTS036357 running 64-bit major release  (build 9200)
--Command     : generate_target mainBlock.bd
--Design      : mainBlock
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBlock is
  port (
    clk25in : in STD_LOGIC;
    fan : out STD_LOGIC;
    mgtrefclk0n : in STD_LOGIC;
    mgtrefclk0p : in STD_LOGIC;
    mgtrefclk1n : in STD_LOGIC;
    mgtrefclk1p : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of mainBlock : entity is "mainBlock,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mainBlock,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=0,numReposBlks=0,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of mainBlock : entity is "mainBlock.hwdef";
end mainBlock;

architecture STRUCTURE of mainBlock is
  signal mgtrefclk0p_1 : STD_LOGIC;
begin
  fan <= mgtrefclk0p_1;
  mgtrefclk0p_1 <= mgtrefclk0p;
end STRUCTURE;
