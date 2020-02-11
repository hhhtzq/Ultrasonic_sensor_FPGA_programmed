----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2019/02/17 16:16:55
-- Design Name: 
-- Module Name: pulse_generator - Behavioral
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

entity pulse_generator is
    port ( clk : in STD_LOGIC;
           pulse : out STD_LOGIC);
end pulse_generator;

architecture Behavioral of pulse_generator is

constant cnt_bits : integer:=17;
constant period : integer:=100000;
constant pulse_length : integer:=10;
 
signal count : STD_LOGIC_VECTOR(cnt_bits-1 downto 0) :=(others=>'0');

begin

process(clk)
begin
     if clk'event and clk='1' then
     if count < CONV_STD_LOGIC_VECTOR(period-1,cnt_bits) then
       count <= count + '1';
    else
       count <= (others=>'0');
    end if;
    if count < CONV_STD_LOGIC_VECTOR(pulse_length,cnt_bits) then
           pulse <= '1';
    else
           pulse <= '0';
    end if;
    end if;
end process;

end Behavioral;
