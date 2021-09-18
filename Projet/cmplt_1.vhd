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
	i:=4;
	while i>0 loop
		i:= i - 1;
		if(a(i) = '0')then temp(i) <= '1';
		else temp(i) <= '0';
		end if;
	end loop;
	end process;
	cmplt1 <= temp;
end archi_complement_1;
	