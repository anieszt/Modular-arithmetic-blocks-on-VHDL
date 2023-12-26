library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mod_art is

--(P,N)=(257,8), (1031,10)

	generic(N : integer := 16);
	port(
		clk, rst: in std_logic;
		a, b : in unsigned(N-1 downto 0);
		adder_r, subtr_r: out unsigned(N-1 downto 0);
		mult_r : out unsigned(N downto 0)
		
		--debug:
	--	ii: out integer;
	--	: out unsigned(N downto 0);
	--	ss0,ss, ss1, sstate : out unsigned(2*N-1 downto 0)
	);
	
end mod_art;

architecture arch of mod_art is
	
begin
	
	mod_adder: entity work.mod_adder
		port map(
			clk => clk,
			rst => rst,
			adder_a => a,
			adder_b => b,
			r => adder_r
		);
		
	mod_subtractor: entity work.mod_subtractor
		port map(
			clk => clk,
			rst => rst,
			subtr_a => a,
			subtr_b => b,
			r => subtr_r
		);
		
	mod_multiplier: entity work.mod_multiplier
		port map(
			clk => clk,
			rst => rst,
			mult_a =>a,
			mult_b =>b,
			r => mult_r
			--debug:
		--	ii => ii,
		--	ss => ss,
		--	ss0 => ss0,
		--	ss1 => ss1
	
		);
		
end arch;