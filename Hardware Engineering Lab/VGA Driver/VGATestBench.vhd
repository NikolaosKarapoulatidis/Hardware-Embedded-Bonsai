library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity VGA_tb is
end VGA_tb;

architecture rtl of VGA_tb is

component VGA_driver
 Port ( 
        CLK, RST : in STD_LOGIC;           
	HSYNC, VSYNC : out STD_LOGIC;
	RGB : out STD_LOGIC_VECTOR (2 downto 0));
    
end component;

signal clk : std_logic:='0';
signal rst : std_logic:='0';
constant clk_period : time := 10 ns;

begin
	
testunit : VGA_driver
	port map (clk=>clk, rst => RST);  --notice that VGA_driver only depends on rst and clk

clk_gen:process
begin
	wait for clk_period/2;
	clk<='1';
	wait for clk_period/2;
	clk<='0';
end process;

reset_gen:process
begin
	wait for 100 ns;
	rst<='0';
	wait for 100 ns;
	rst<='1';
end process;

end rtl;
