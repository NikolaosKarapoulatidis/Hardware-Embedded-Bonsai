library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 

entity FSM_cnt is
	port (rst: in STD_LOGIC := '0';
	clk : in STD_LOGIC := '0';
	e : in STD_LOGIC := '0';
		q : inout STD_LOGIC_VECTOR (1 downto 0) := "00");
end FSM_cnt;

architecture behavioral of FSM_cnt is
type state is (S0, S1);
signal current_state, next_state: state;
begin

state_memory: process(clk, rst)
begin
	if rst = '1' then
		current_state <= S0;
	elsif (rising_edge(clk)) then
		current_state <= next_state;
	end if;
end process;

input_comb: process(current_state, e)
begin
case current_state is
	when S0 => if rising_edge(e) then
		next_state <= S1;
		else next_state <= S0;
		end if;
	when S1 => if rising_edge(e) then
		next_state <= S0;
		else next_state <= S1;
		end if;
	end case;
end process;

output_comb: process(current_state, clk)
begin
case current_state is
	when S0 => if rising_edge(clk) and unsigned(q) < 3 then
		q <= std_logic_vector (unsigned (q) + 1);
		elsif rising_edge(clk) and unsigned(q) = 3 then
		q <= "00";
		end if;
	when others => if rising_edge(clk) and unsigned(q) > 0 then
		q <= std_logic_vector (unsigned (q) - 1);
		elsif rising_edge(clk) and unsigned (q) = 0 then
		q <= "11";
		end if;
	end case;
end process;

end behavioral;