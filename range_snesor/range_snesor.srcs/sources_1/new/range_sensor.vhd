LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.NUMERIC_STD.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;
USE ieee.STD_LOGIC_ARITH.ALL;
entity range_sensor is
Port ( 	fpgaclk : in STD_LOGIC;
           	echo_in : in STD_LOGIC;
           	out_distance : out std_logic_vector(8 downto 0);
           	pulse : out std_logic);
end range_sensor;
architecture range_sensor_arc of range_sensor is
signal clk_1us: std_logic; 
signal echo_out: STD_LOGIC_VECTOR(15 downto 0);
	
	-- definition of the previous tasks¡¯ modules as components of the top module
-- component 1: clock generator
component clk_gen 
Port ( 	fpgaclk : in STD_LOGIC;
 		clk_1us : out STD_LOGIC);
 		end component;

-- component 2: pulse generator
component pulse_generator is
port(	clk_1us: in std_logic;
pulse: out std_logic);
end component;        

-- component 3: echo analyzer
component echo_analyzer is
Port ( 	echo_in : in STD_LOGIC;
clk_1us : in STD_LOGIC;
echo_out : out STD_LOGIC_VECTOR(15 downto 0));
end component;

-- component 4: factor 58
component factor_58 is
Port ( 	clk_1us : in STD_LOGIC;
echo_out : in STD_LOGIC_VECTOR(15 downto 0);
out_distance : out std_logic_vector(8 downto 0));
end component;

-- definition of the signals occurring in the implementations of the different modules
begin
unit1:clk_gen
port map(   	fpgaclk => fpgaclk,  
clk_1us => clk_1us);
unit2:pulse_generator
port map( 	clk_1us => clk_1us,
pulse => pulse);
unit3:echo_analyzer
port map( 	echo_in => echo_in,
clk_1us => clk_1us,
echo_out => echo_out);
unit4:factor_58
port map( 	clk_1us => clk_1us,
echo_out => echo_out,
out_distance => out_distance);     
end range_sensor_arc;