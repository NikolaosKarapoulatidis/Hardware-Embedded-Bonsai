entity D_FlipFlop_TB is
end D_FlipFlop_TB;

architecture Behavioral of D_FlipFlop_TB is
	component D_FlipFlop
		port(D, CLK : in bit;
			Q : out bit);
	end component;
	signal D_TB, CLK_TB : bit;
	signal Q_TB : bit;
	begin
	DUT1: D_FlipFlop port map (D=>D_TB, CLK=>CLK_TB, Q=>Q_TB);
	D_TB <= '0', '1' after 40 ns;
	CLK_TB <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns;
end Behavioral;
