library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all; 

entity ROM_TB is
end ROM_TB;

architecture Behavioral of ROM_TB is
	component ROM
		port(CLK : in STD_LOGIC := '0';
		ADDR : in std_logic_vector(3 downto 0) := "0000";
		DATA_OUT : out std_logic_vector(7 downto 0) := "00000000");
	end component;
	signal CLK_TB : STD_LOGIC := '0';
	signal ADDR_TB : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal DATA_OUT_TB : std_logic_vector(7 downto 0) := "00000000";
	begin
	DUT1: ROM port map (CLK_TB, ADDR_TB, DATA_OUT_TB);

	test : process(CLK_TB)
		begin
			if rising_edge(CLK_TB) and unsigned(ADDR_TB) < 15 then
			ADDR_TB <= std_logic_vector (unsigned (ADDR_TB) + 1);
			elsif rising_edge(CLK_TB) and unsigned(ADDR_TB) = 15 then
			ADDR_TB <= "00";
			end if;
	end process;

end Behavioral;