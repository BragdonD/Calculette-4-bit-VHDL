library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity separateur_diz_unit is
	port( input : in std_logic_vector(3 downto 0);
			mode : in std_logic;
			dizaine, unite : out std_logic_vector(3 downto 0)
			);
end;

architecture archi_sep_diz_unit of separateur_diz_unit is
	
begin
	process(input)
		variable int_input, diz,unit : integer;
	begin
		if(mode='0') then
			int_input := to_integer(unsigned(input));
		else
			int_input := to_integer(signed(input));
		end if;
		
		diz 	:= int_input/10;
		if(int_input < 0) then
			unit 	:= - (int_input - diz*10);
		else
			unit 	:= int_input - diz*10;
		end if;
	end process;
	
end archi_sep_diz_unit;