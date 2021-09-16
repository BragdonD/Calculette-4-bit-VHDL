library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity complement_2 is
	port( a: in std_logic_vector(3 downto 0);
			cmplt2 : out std_logic_vector(3 downto 0)
			);
end;

architecture archi_complement_2 of complement_2 is
	signal ajout, out_cmplt1 : std_logic_vector(3 downto 0);
	signal to_ignore : std_logic;
begin
	--composant pour le complement a 1
	cmplt1_0 : entity work.complement_1(archi_complement_1)
		port map(a => a, cmplt1 => out_cmplt1);
	
	--composant pour faire le complement a 2 a partir du complement a 1
	add0: entity work.add_4bit(archi_4bits)
		port map(
			-- inputs add_4bits
			a => out_cmplt1,
			b => "0001",
			output => cmplt2,
			in_restraint => '0',
			-- output add_4bits
			out_restraint => to_ignore
		);	
		
		
end 	archi_complement_2 ;


