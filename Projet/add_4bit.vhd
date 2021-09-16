library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity add_4bit is 
	port(	a, b : in std_logic_vector(3 downto 0);
			output : out std_logic_vector(3 downto 0);
			in_restraint : in std_logic;
			out_restraint : out std_logic
			);
end add_4bit;

architecture archi_4bits of add_4bit is
	signal restraint1, restraint2, restraint3 : std_logic;
begin
	f0 : entity work.add_1bit(archi_1bit)
		port map
		(
			a => a(0),
			b => b(0),
			old_restraint => in_restraint,
			res => output(0),
			new_restraint => restraint1
		);
		
	f1 : entity work.add_1bit(archi_1bit)
		port map
		(
			a => a(1),
			b => b(1),
			old_restraint => restraint1,
			res => output(1),
			new_restraint => restraint2
		);
		
	f2 : entity work.add_1bit(archi_1bit)
		port map
		(
			a => a(2),
			b => b(2),
			old_restraint => restraint2,
			res => output(2),
			new_restraint => restraint3
		);
		
	f3 : entity work.add_1bit(archi_1bit)
		port map
		(
			a => a(3),
			b => b(3),
			old_restraint => restraint3,
			res => output(3),
			new_restraint => out_restraint
		);
		
end archi_4bits;
	


