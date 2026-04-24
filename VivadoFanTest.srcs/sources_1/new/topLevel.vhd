----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2026 16:01:55
-- Design Name: 
-- Module Name: topLevel - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_level is
    port (
        -- 25 MHz input clock
        clk25in       : in  std_logic;

        -- fan control output
        fan           : out std_logic;

        -- GT reference clocks
        mgtrefclk0p   : in  std_logic;
        mgtrefclk0n   : in  std_logic;
        mgtrefclk1p   : in  std_logic;
        mgtrefclk1n   : in  std_logic
    );
end entity top_level;
architecture rtl of top_level is

    -- Internal signals for future logic
    signal fan_reg : std_logic := '0';

begin

    --------------------------------------------------------------------
    -- Simple placeholder logic (replace with real control logic)
    --------------------------------------------------------------------
    process(clk25in)
    begin
        if rising_edge(clk25in) then
            fan_reg <= not fan_reg;
        end if;
    end process;

    fan <= fan_reg;

end architecture rtl;