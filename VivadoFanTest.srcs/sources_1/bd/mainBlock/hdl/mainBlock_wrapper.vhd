--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
--Date        : Mon Apr 20 15:38:00 2026
--Host        : UTS036357 running 64-bit major release  (build 9200)
--Command     : generate_target mainBlock_wrapper.bd
--Design      : mainBlock_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBlock_wrapper is
  port (
    clk25in : in STD_LOGIC;
    fan : out STD_LOGIC;
    mgtrefclk0n : in STD_LOGIC;
    mgtrefclk0p : in STD_LOGIC;
    mgtrefclk1n : in STD_LOGIC;
    mgtrefclk1p : in STD_LOGIC
  );
end mainBlock_wrapper;

architecture STRUCTURE of mainBlock_wrapper is
  component mainBlock is
  port (
    fan : out STD_LOGIC;
    mgtrefclk0p : in STD_LOGIC;
    mgtrefclk0n : in STD_LOGIC;
    mgtrefclk1p : in STD_LOGIC;
    mgtrefclk1n : in STD_LOGIC;
    clk25in : in STD_LOGIC
  );
  end component mainBlock;
begin
mainBlock_i: component mainBlock
     port map (
      clk25in => clk25in,
      fan => fan,
      mgtrefclk0n => mgtrefclk0n,
      mgtrefclk0p => mgtrefclk0p,
      mgtrefclk1n => mgtrefclk1n,
      mgtrefclk1p => mgtrefclk1p
    );
end STRUCTURE;
