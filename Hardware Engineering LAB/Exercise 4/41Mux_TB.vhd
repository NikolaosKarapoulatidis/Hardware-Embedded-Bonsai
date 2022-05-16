entity MUX is
end entity;

architecture tb of MUX is

	component MUX_Component is 

	 Port( S : in  bit_VECTOR (1 downto 0);  
           I : in  bit_VECTOR (3 downto 0);
           Y : out bit);

end component;

signal S : bit_VECTOR (1 downto 0);
signal I : bit_VECTOR(3 downto 0);
signal Y : bit;

begin 
  mapping : MUX_Component port map(
	S => S,
	I => I,
	Y => Y);

  start : process

begin
	I(0) <= '0';
	I(1) <= '1';
	I(2) <= '0';
	I(3) <= '1';

	S <= "00";wait for 10 ns;
	S <= "01";wait for 10 ns;
	S <= "10";wait for 10 ns;
	S <= "11";wait for 10 ns;
wait;
end process;
end tb;
