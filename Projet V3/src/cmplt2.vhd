library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity complement_2 is
	port( a: in std_logic_vector(3 downto 0);
			cmplt2 : out std_logic_vector(3 downto 0)
			);
end;

architecture archi_complement_2 of complement_2 is
	signal cmplt1Res : std_logic_vector(3 downto 0);
begin
	cmplt1 : entity work.complement_1
		port map(a => a, cmplt1 => cmplt1Res);
		
	process(cmplt1Res)
		variable temp	: integer;
	begin
		temp := to_integer(unsigned(cmplt1Res)) + 1;
		cmplt2 <= std_logic_vector(to_unsigned(temp, 4));
	end process;
	
end archi_complement_2;