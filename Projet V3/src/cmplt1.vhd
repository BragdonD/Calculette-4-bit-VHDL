library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity complement_1 is
	port( a: in std_logic_vector(3 downto 0);
			cmplt1 : out std_logic_vector(3 downto 0)
		);
end;

architecture archi_complement_1 of complement_1 is 
	signal temp : std_logic_vector(3 downto 0);
begin 
	process(a)
		variable i : integer;
	begin
		i:=0;
		while i<4 loop
			
			temp(i) <= not(a(i));
			i:= i + 1;
		end loop;
	end process;
	cmplt1 <= temp;
end archi_complement_1;