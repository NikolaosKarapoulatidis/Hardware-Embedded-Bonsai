entity ShiftRegister is

	port (clk : in bit;
	      D     : in bit;
	      Q     : out bit);
end entity;

architecture ShiftRegister_arch of ShiftRegister is

component Dflipflop is
port (  clk : in bit;
	D     : in bit;
	Q     : out bit);

end component ;

signal s : bit_vector(2 downto 0);
begin

u0 : Dflipflop port map (clk => clk, D => D, Q => s(0));
u1 : Dflipflop port map (clk => clk, D => s(0),  Q => s(1));
u2 : Dflipflop port map (clk => clk, D => s(1),  Q => s(2));
u3 : Dflipflop port map (clk => clk, D => s(2),  Q => Q);

end ShiftRegister_arch;