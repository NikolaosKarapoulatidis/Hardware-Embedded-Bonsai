entity HA is
	port (A, B : in bit;
		S, C : out bit);
end HA;

architecture Behavioral of HA is
	begin
	S <= A xor B;
	C <= A and B;
end Behavioral;
