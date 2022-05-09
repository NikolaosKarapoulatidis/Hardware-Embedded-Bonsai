entity FA is
	port (A, B, Cin : in bit;
		S, Cout : out bit);
end FA;

architecture Behavioral of FA is
	component HA
		port(A, B : in bit;
			S, C : out bit);
	end component;
	signal Cout1, Cout2, Sout1 : bit;
	begin
U1: HA port map (A=>A, B=>B, S=>Sout1, C=>Cout1);
U2: HA port map (A=>Sout1, B=>Cin, S=>S, C=>Cout2);
Cout <= Cout1 or Cout2;
end Behavioral;
