----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2019/02/13 16:31:43
-- Design Name: 
-- Module Name: tb_clk - Behavioral
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

entity tb_clk is
end tb_clk;

architecture Behavioral of tb_clk is

component clk_gen is
       Port ( fpga_clk : in STD_LOGIC;
   clk_1us : out STD_LOGIC
      );
end component;

signal fpga_clk : STD_LOGIC :='0';
signal clk_1us : STD_LOGIC ;
signal cnt : STD_LOGIC ;
begin
uut : clk_gen port map(fpga_clk=>fpga_clk,clk_1us=>clk_1us);

clk_generate: process (fpga_clk)
             constant T_pw : time := 500 ns;
             begin
                    if fpga_clk = '0' then
                      fpga_clk <= '1' after T_pw, '0' after 2*T_pw;
                    end if;
        end process clk_generate;
 
end Behavioral;