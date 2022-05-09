entity FA_TB is
end FA_TB;

architecture Behavioral of FA_TB is
	component FA
		port(A, B, Cin : in bit;
			S, Cout : out bit);
	end component;
	signal A_TB, B_TB, Cin_TB : bit;
	signal S_TB, Cout_TB : bit;
	begin
	DUT1: FA port map (A=>A_TB, B=>B_TB, Cin=>Cin_TB, S=>S_TB, Cout=>Cout_TB);
	A_TB <= '0', '1' after 80 ns;
	B_TB <= '0', '1' after 40 ns, '0' after 80 ns, '1' after 120 ns;
	Cin_TB <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns, '0' after 80 ns, '1' after 100 ns, '0' after 120 ns, '1' after 140 ns;
end Behavioral;