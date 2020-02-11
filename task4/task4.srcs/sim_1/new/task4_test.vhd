library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity task4_test is
end task4_test;

architecture Behavioral of task4_test is

component factor_58 is
Port (     clk_1us : in STD_LOGIC;
               echo_out : in STD_LOGIC_VECTOR(15 downto 0);
               out_distance : out std_logic_vector(11 downto 0)
             );
end component;

signal clk_1us : STD_LOGIC := '0';
signal echo_out :  STD_LOGIC_VECTOR(15 downto 0);
signal out_distance :  std_logic_vector(11 downto 0);

begin

uut: factor_58 port map(clk_1us=>clk_1us, echo_out=>echo_out, out_distance=>out_distance);

clock_factor_58 : process(clk_1us)
constant T_1 : time :=500 ns;
begin 
     clk_1us <= '1';
             
        end process clock_factor_58;
echo_out_factor_58 : process(echo_out)
begin 
--STD_LOGIC_VECTOR echo_out: :="0000000000000000";
--if echo_out<="0000000000000000" then
echo_out <="0000000011110000";
             --end if;
        end process echo_out_factor_58;

end Behavioral;