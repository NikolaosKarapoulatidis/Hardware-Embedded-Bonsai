library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all; 

entity ROM is
	port(
		CLK : in STD_LOGIC := '0';
		ADDR : in std_logic_vector(3 downto 0) := "0000";
		DATA_OUT : out std_logic_vector(7 downto 0) := "00000000");
end ROM;

architecture behavioral of ROM is
	type rom_type is array (15 downto 0) of std_logic_vector(7 downto 0);
constant ROMT : rom_type :=
	("00000000",
"00000001",
"00000010",
"00000011",
"00000100",
"00000101",
"00000110",
"00000111",
"00001000",
"00001001",
"00001010",
"00001011",
"00001100",
"00001101",
"00001110",
"00001111");
begin
	process (CLK)
		begin
			if (CLK'event and CLK = '1') then
			DATA_OUT <= ROMT(to_integer(unsigned(ADDR)));
			end if;
	end process;
end behavioral;

