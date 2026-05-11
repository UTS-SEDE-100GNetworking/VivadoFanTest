----------------------------------------------------------------------------------
-- Company: UTS
-- Engineer: Jaylen Avtarovski
-- 
-- Create Date: 20.04.2026 16:01:55
-- Design Name: Fan Controller for Virtex7 FPGA
-- Module Name: topLevel - Behavioral
-- Project Name: Fan Controller for Virtex7 FPGA
-- Target Devices: Virtex 7
-- Tool Versions: 2019.1.1
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- PWM code of sequencial logic for fpga.

-- This code applies for chips working with 50MHz; 
-- If you work with another frequency, change the constante prescaler according the equation above
--	clk/(255*frequency)

-- Autor: Rodolfo Cavour Moretti Schiavi

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity fan_control is
  port (
    -- 25 MHz input clock
    clkin : in std_logic;

    -- 8 bits for 0 to 100% of duty cycle
    duty_cycle : in std_logic_vector(7 downto 0);

    -- fan control output
    pwm_output : out std_logic
  );
end fan_control;

architecture modulation of fan_control is
  signal signal_pwm : std_logic := '0';

begin
  process (clkin)

    constant prescaler : integer range 0 to 255 := 98; -- Clock divider for reach  1kHz, change this value 
    -- with the following equation: clk/(255*frequency)
    -- 50MHz Clock is 196, our clock should be 98

    -- constant duty_cycle: std_logic_vector(7 downto 0) := "10000000";

    variable t         : integer range 0 to 32768 := 0; -- Time counter
    variable t_mod     : integer range 0 to 255; -- Time counter for the duty cycle
    constant end_range : integer range 0 to 255 := 255; -- Constante to produce the low signal

  begin
    if (rising_edge(clkin)) then
      t := t + 1;
      if (prescaler = t) then
        t     := 0;
        t_mod := t_mod + 1;
        if (t_mod = 255) then
          t_mod := 0;
        end if;
        if (t_mod  <= to_integer(signed(duty_cycle))) then
          signal_pwm <= '0';
        end if;
        if (t_mod >= end_range - to_integer(signed(duty_cycle))) then
          signal_pwm <= '1';
        end if;
      end if;
    end if;
  end process;
  pwm_output <= signal_pwm;

end modulation;