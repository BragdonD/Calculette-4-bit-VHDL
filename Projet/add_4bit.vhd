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

architecture behavioral of add_4bit is
	signal restraint1, restraint2, restraint3 : std_logic;
begin
	f0 : entity work.add_1bit(archi_1bit)
		port map(a(0),b(0),in_restraint,output(0),restraint1);
		
	f1 : entity work.add_1bit(archi_1bit)
		port map(a(1),b(1),restraint1,output(1),restraint2);
		
	f2 : entity work.add_1bit(archi_1bit)
		port map(a(2),b(2),restraint2,output(2),restraint3);
		
	f3 : entity work.add_1bit(archi_1bit)
		port map(a(3),b(3),restraint3,output(3),out_restraint);
		
end behavioral;
	


