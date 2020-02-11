----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2019/02/11 22:19:48
-- Design Name: 
-- Module Name: clk_gen - Behavioral
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


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.NUMERIC_STD.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;
USE ieee.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_gen is
Port (	fpga_clk : in STD_LOGIC;
clk_1us : out STD_LOGIC
      );
end clk_gen;
architecture clk_gen_arc of clk_gen is
signal cnt: integer:= 0;
signal in_clk: std_logic:= '0';
begin
clk_gen_proc: process(fpga_clk)
begin
if (fpga_clk'event and fpga_clk='1') then
if(cnt<49) then
cnt <= cnt+1;
else
cnt <= 0;
in_clk<=not in_clk;
end if;
clk_1us<=in_clk;
end if;
end process clk_gen_proc;
end clk_gen_arc;
