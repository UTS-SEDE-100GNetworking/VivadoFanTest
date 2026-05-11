----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.05.2026 12:35:25
-- Design Name: 
-- Module Name: main - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
  port (
    -- fan_speed : buffer std_logic_vector(7 downto 0);
    -- fan_clk   : out std_logic;

    clk25in : in std_logic;

    fan : out std_logic;

    -- GT reference clocks
    mgtrefclk0p : in std_logic;
    mgtrefclk0n : in std_logic;
    mgtrefclk1p : in std_logic;
    mgtrefclk1n : in std_logic

    -- Transciever Reference Clocks
    -- eth_gt0_txoutclk : in std_logic;
    -- eth_gt0_rxoutclk : in std_logic;
    -- eth_gt1_rxoutclk : in std_logic;
    -- eth_gt2_rxoutclk : in std_logic;
    -- eth_gt3_rxoutclk : in std_logic
  );
end main;

architecture Behavioral of main is
    signal fan_speed : std_logic_vector(7 downto 0);
begin
  fanControl : entity work.fan_control
    port map
    (
      clkin      => clk25in,
      duty_cycle => fan_speed,
      pwm_output => fan
    );
  process (clk25in)
    constant speed: std_logic_vector(7 downto 0) := "01111111";
  begin
    if rising_edge(clk25in) then
      fan_speed <= speed;
    end if;
  end process;
end Behavioral;
