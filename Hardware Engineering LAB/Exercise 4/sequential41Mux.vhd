entity MUX is
    Port ( S : in  bit_VECTOR (1 downto 0);  --select 00, 01, 10, 11
           I : in  bit_VECTOR (3 downto 0);  --4 inputs
           Y : out bit);		     --1 output

end MUX;

architecture Behavioral of MUX is

begin

process (S,I)                  --switching the inputs(I) with select(S)

begin

if (S <= "00") then                 
Y <= I(0);
elsif (S <= "01") then
Y <= I(1);
elsif (S <= "10") then
Y <= I(2);
else
Y <= I(3);

end if;
end process;
end Behavioral;
