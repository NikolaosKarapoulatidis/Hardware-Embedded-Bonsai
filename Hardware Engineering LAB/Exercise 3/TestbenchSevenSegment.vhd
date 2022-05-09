entity SevenSegmentTB is
end SevenSegmentTB;

architecture Behavioral of SevenSegmentTB is
	component SevenSegment
		port(Ain, Bin, Cin, Din : in bit;
			a, b, c, d, e, f, g : out bit);
	end component;
	signal Ain_TB, Bin_TB, Cin_TB, Din_TB : bit;
	signal a_TB, b_TB, c_TB, d_TB, e_TB, f_TB, g_TB : bit;
	begin
	DUT1: SevenSegment port map (Ain_TB, Bin_TB, Cin_TB, Din_TB, a_TB, b_TB, c_TB, d_TB, e_TB, f_TB, g_TB);
	Ain_TB <= '0', '1' after 160 ns;
	Bin_TB <= '0', '1' after 80 ns, '0' after 160 ns;
	Cin_TB <= '0', '1' after 40 ns, '0' after 80 ns, '1' after 120 ns, '0' after 160 ns;
	Din_TB <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns, '0' after 80 ns, '1' after 100 ns, '0' after 120 ns, '1' after 140 ns, '0' after 160 ns, '1' after 180 ns;
end Behavioral;
