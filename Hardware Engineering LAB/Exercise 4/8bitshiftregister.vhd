library IEEE;
use IEEE.std_logic_1164.all;
use work.all;

entity reg is 
	port(
	d : in std_logic;
	q0,q1,q2,q3,q4,q5,q6,q7: inout std_logic;
	clk : in std_logic
	);
end entity;

architecture regArch of reg is
begin
	process(clk) begin
		if rising_edge(clk) then
			q1 <= q0;
			q2 <= q1;
			q3 <= q2;
			q4 <= q3;
			q5 <= q6;
			q6 <= q7;
		end if;
	end process;
		
end;