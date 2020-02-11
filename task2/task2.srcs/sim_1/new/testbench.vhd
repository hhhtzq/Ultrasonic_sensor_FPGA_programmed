----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2019/02/17 16:20:01
-- Design Name: 
-- Module Name: testbench - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testbench is
end testbench;

architecture Behavioral of testbench is

component pulse_generator is
        port ( clk : in STD_LOGIC;
               pulse : out STD_LOGIC);
end component;
 
signal clk : STD_LOGIC := '0';
signal triggOut : STD_LOGIC;
 
begin
 
       uut: pulse_generator port map(clk => clk, pulse => triggOut);
 
       clock_generate: process (clk)
             constant T_pw : time := 500 ns;
             begin
                    if clk = '0' then
                      clk <= '1' after T_pw, '0' after 2*T_pw;
                    end if;
        end process clock_generate;
 
end Behavioral;
