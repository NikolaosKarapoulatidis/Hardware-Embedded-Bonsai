library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NCounter_TB is
end NCounter_TB;

architecture Behavioral of NCounter_TB is
	component NCounter
		port(EN, RST, CLK : in STD_LOGIC;
		Q : inout STD_LOGIC_VECTOR (7 downto 0));
	end component;
	signal EN_TB, RST_TB, CLK_TB : STD_LOGIC := '0';
	signal Q_TB : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
	begin
	DUT1: NCounter port map (EN=>EN_TB, RST=>RST_TB, CLK=>CLK_TB, Q => Q_TB);
	EN_TB <= '0', '1' after 400 ps;
test : process(CLK_TB)
begin
	if (RST_TB = '1') then
		RST_TB <= '0';
		EN_TB <= '0';
	elsif (Q_TB = "00001111") then
		RST_TB <= '1';
	end if;
end process;

end Behavioral;
