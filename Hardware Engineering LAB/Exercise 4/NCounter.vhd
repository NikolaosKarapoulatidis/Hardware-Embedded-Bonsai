library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NCounter is
	port (EN, RST, CLK : in STD_LOGIC;
		Q : inout STD_LOGIC_VECTOR (7 downto 0));
end NCounter;

architecture Behavioral of NCounter is
	begin
		countup : process (CLK, RST)
			begin
			if (RST = '1') then
				Q<="00000000";
			elsif (CLK'event and CLK = '1' and EN = '1' and RST = '0')then
				Q<= Q+1;
			end if;
		end process;
end Behavioral;
