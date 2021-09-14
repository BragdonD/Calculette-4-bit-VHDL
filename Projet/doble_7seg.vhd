library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity doble_7segs is
	port( input : in std_logic_vector(3 downto 0)
			);
end doble_7segs;

architecture archi_doble_7segs of doble_7segs is
	signal dizaine, unite : std_logic_vector(3 downto 0);
begin 
	sep1: entity work.separateur_diz_unit(archi_sep_diz_unit)
		port map(input, dizaine, unite);
		
	seg_diz : entity work.seg7(archi_seg7)
		port map(dizaine);

	seg_unit : entity work.seg7(archi_seg7)
		port map(unite);
end archi_doble_7segs;
	
	
	