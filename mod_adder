library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mod_adder is

	generic(
		N : natural := 8;
		P : unsigned := "100000001"		
	);
	
	port(
		clk, rst : in std_logic;
		adder_a, adder_b : in unsigned(N-1 downto 0);
		r : out unsigned(N-1 downto 0)
	);
	
end mod_adder;


architecture arch of mod_adder is
	
	signal s1, s2 : unsigned(N downto 0);

begin
	
	s1 <= ('0' & adder_a) + ('0' & adder_b);
	
	process(clk, rst)
	begin
	
		if rst = '1' then 
	
			s2 <= (others => '0');
		
		elsif rising_edge(clk) then
	
			if s1 < p then
				s2 <= s1;
			else
				s2 <= s1 - p;	
			end if;
			
		end if;
			
	end process;
	
	r <= s2(N-1 downto 0) ;
	
end arch;