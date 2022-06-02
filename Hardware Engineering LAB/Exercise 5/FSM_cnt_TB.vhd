library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 

entity FSM_cnt_TB is
end FSM_cnt_TB;

architecture Behavioral of FSM_cnt_TB is
	component FSM_cnt
		port(rst: in STD_LOGIC := '0';
	clk : in STD_LOGIC := '0';
	e : in STD_LOGIC := '0';
		q : inout STD_LOGIC_VECTOR (1 downto 0) := "00");
	end component;
	signal RST_TB, E_TB, CLK_TB : STD_LOGIC := '0';
	signal Q_TB : STD_LOGIC_VECTOR (1 downto 0) := "00";
	begin
	DUT1: FSM_cnt port map (e=>E_TB, rst=>RST_TB, clk=>CLK_TB, q => Q_TB);
	E_TB <= '0', '1' after 500 ps, '0' after 600 ps;
	RST_TB <= '0', '1' after 900 ps, '0' after 1000 ps;

end Behavioral;
