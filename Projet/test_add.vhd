library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity add_unsigned is
	port(	A, B : in std_logic_vector(3 downto 0);
			output : out std_logic_vector(4 downto 0)
			);
end;

architecture archi_affichage_test of add_unsigned is
begin
	add11: entity work.add_4bit(archi_4bits)
		port map
		(
			-- inputs add_4bits
			a => A,
			b => B,
			in_restraint => '0',
			-- output add_4bits
			out_restraint => output(4)
		);		
			
end archi_affichage_test;
