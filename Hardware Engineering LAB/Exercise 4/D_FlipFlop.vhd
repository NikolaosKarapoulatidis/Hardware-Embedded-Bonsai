entity D_FlipFlop is
	port (D, CLK : in bit;
		Q : out bit);
end D_FlipFlop;

architecture Behavioral of D_FlipFlop is
	begin
	dflipflop : process (CLK)
		begin
			if (CLK'event and CLK='1') then
				Q <= D;
			end if;
		end process;
end Behavioral;