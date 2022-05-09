library IEEE;
use IEEE.std_logic_1164.all;
use work.all;

entity parallelAdder is
	port(A,B: in std_logic_vector (3 downto 0);
		 Cin: in std_logic;
		 Cout: out std_logic;
		 S: out std_logic_vector (3 downto 0)
		);
end parallelAdder;

architecture structure of parallelAdder is
component fullAdder port (
				A,B,Cin: in std_logic;
				Cout, S: out std_logic
							);
end component;

signal co0,co1,co2 : std_logic;

begin

FA0: fullAdder port map (A(0),B(0),Cin,Co0, S(0));
FA1: fullAdder port map(A(1), B(1), Co0, Co1, S(1));
FA2: fullAdder port map(A(2), B(2), Co1, Co2, S(2));
FA3: fullAdder port map(A(3), B(3), Co2, Cout, S(3));

	
end structure;

