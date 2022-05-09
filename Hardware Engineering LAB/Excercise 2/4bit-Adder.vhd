entity Adder is
	port (A1, B1, A2, B2, A3, B3, A4, B4 : in bit;
		S1, S2, S3, S4, C : out bit);
end Adder;

architecture Behavioral of Adder is
	signal Cout1, Cout2, Cout3 : bit;
	component FA
		port(A, B, Cin : in bit;
			S, Cout : out bit);
	end component;
	begin
U1: FA port map (A=>A1, B=>B1, Cin=>'0', S=>S1, Cout=>Cout1);
U2: FA port map (A=>A2, B=>B2, Cin=>Cout1, S=>S2, Cout=>Cout2);
U3: FA port map (A=>A3, B=>B3, Cin=>Cout2, S=>S3, Cout=>Cout3);
U4: FA port map (A=>A4, B=>B4, Cin=>Cout3, S=>S4, Cout=>C);
end Behavioral;
