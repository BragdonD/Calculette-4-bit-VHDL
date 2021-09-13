library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity separateur_diz_unit is
	port( input : in std_logic_vector(3 downto 0);
			dizaine, unite : out std_logic_vector(3 downto 0)
			);
end separateur_diz_unit;

architecture archi_sep_diz_unit of separateur_diz_unit is
begin 
	process(input)
		variable transformed_input, diz, n : integer;
	begin
		transformed_input := to_integer(unsigned(input));
		diz := 0;
		n := 0;
		while (transformed_input > 9 and n > 9999) loop
			transformed_input := transformed_input - 10 ;
			diz := diz + 1;
			n := n + 1;
		end loop;
		unite <= std_logic_vector(to_unsigned(transformed_input, 4));
		dizaine <= std_logic_vector(to_unsigned(diz, 4));
	end process;
end archi_sep_diz_unit;
		
