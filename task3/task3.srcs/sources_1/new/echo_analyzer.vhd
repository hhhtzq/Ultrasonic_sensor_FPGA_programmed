----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2019/02/17 20:00:26
-- Design Name: 
-- Module Name: echo_analyser - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity echo_analyzer is
port (	echo_in : in std_logic;
           	clk_1us : in std_logic;
           	echo_out : out std_logic_vector(15 downto 0)
           );
end echo_analyzer;
architecture echo_analyzer_arc of echo_analyzer is
begin
Process(clk_1us)
variable counter : integer := 0;
variable counter1 : integer := 0;
variable reset : integer := 0;
begin
if (clk_1us'event and clk_1us = '1') then
if echo_in = '1' then
         			counter := counter +1;
                			counter1 := counter;
else
               			echo_out <= std_logic_vector(to_unsigned(counter1, echo_out'length));
                			counter:=0;
            		end if;
        	end if;
end process;
end echo_analyzer_arc;