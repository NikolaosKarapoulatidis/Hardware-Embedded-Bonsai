entity Adder_TB is
end Adder_TB;

architecture Behavioral of Adder_TB is
	component Adder
		port(A1, B1, A2, B2, A3, B3, A4, B4 : in bit;
			S1, S2, S3, S4, C : out bit);
	end component;
	signal A1_TB, B1_TB, A2_TB, B2_TB, A3_TB, B3_TB, A4_TB, B4_TB : bit;
	signal S1_TB, S2_TB, S3_TB, S4_TB, C_TB : bit;
	begin
	DUT1: Adder port map (A1=>A1_TB, B1=>B1_TB, A2=>A2_TB, B2=>B2_TB, A3=>A3_TB, B3=>B3_TB, A4=>A4_TB, B4=>B4_TB, S1=>S1_TB, S2=>S2_TB, S3=>S3_TB, S4=>S4_TB, C=>C_TB);
	A1_TB <= '0', '1' after 20 ns;
	B1_TB <= '0', '1' after 40 ns;
	A2_TB <= '0', '1' after 60 ns;
	B2_TB <= '0', '1' after 80 ns;
	A3_TB <= '0', '1' after 100 ns;
	B3_TB <= '0', '1' after 120 ns;
	A4_TB <= '0', '1' after 140 ns;
	B4_TB <= '0', '1' after 160 ns;
end Behavioral;
