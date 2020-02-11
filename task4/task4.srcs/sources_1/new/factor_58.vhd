----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2019/02/17 20:08:30
-- Design Name: 
-- Module Name: factor_58 - Behavioral
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

entity factor_58 is
Port (     clk_1us : in STD_LOGIC;
               echo_out : in STD_LOGIC_VECTOR(15 downto 0);
               out_distance : out std_logic_vector(11 downto 0)
             );
end factor_58;
architecture factor_58_arc of factor_58 is
signal input: integer:= 0;
signal out_distan: integer:= 0;
begin
   	factor_58_proc: process(clk_1us,echo_out)
       	begin
      	if(clk_1us'event and clk_1us='1')then
 		input <= conv_integer(echo_out);
          		out_distan<= input/58;
            		out_distance <= std_logic_vector(to_unsigned(out_distan, out_distance'length));
        	end if;
end process factor_58_proc;
end  factor_58_arc;