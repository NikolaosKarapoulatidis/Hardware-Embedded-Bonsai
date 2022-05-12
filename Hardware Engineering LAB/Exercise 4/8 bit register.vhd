library IEEE;
use IEEE.std_logic_1164.all;
use work.all;

entity dff is
	port( 
	d : in std_logic_vector;
	clk: in std_logic_vector;
	q : out std_logic_vector
	);
end entity;

architecture dArch of dff is
begin
	process(clk) begin
	if rising_edge(clk) then 
		q <= d; 
	end if;
  end process;
end;