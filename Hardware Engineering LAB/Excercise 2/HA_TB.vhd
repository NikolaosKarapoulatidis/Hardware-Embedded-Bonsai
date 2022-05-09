entity HA_TB is
end HA_TB;

architecture Behavioral of HA_TB is
	component HA
		port(A, B : in bit;
			S, C : out bit);
	end component;
	signal A_TB, B_TB : bit;
	signal S_TB, C_TB : bit;
	begin
	DUT1: HA port map (A=>A_TB, B=>B_TB, S=>S_TB, C=>C_TB);
	A_TB <= '0', '1' after 40 ns;
	B_TB <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns;
end Behavioral;
