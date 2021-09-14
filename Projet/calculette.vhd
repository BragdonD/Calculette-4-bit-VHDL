library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity calculette is
	port( opeA, opeB : in std_logic_vector(3 downto 0); ---add to_do later to choose the ope to do
			ledsA0, ledsB0, ledsRes0, ledsA1, ledsB1, ledsRes1 : out std_logic_vector(6 downto 0);
			outputleds : out std_logic_vector(4 downto 0)
		);
end;

architecture behavioral of calculette is
	signal output_add : std_logic_vector(4 downto 0);
	signal dizA, unitA, dizB, unitB, dizRes, unitRes : std_logic_vector(3 downto 0);
begin

	--aditionneur
	add_u0 : entity add_unsigned
		port map
		(
			--inputs
			A => opeA,
			B => opeB,
			--output
			output => output_add
		);
	

	
	--separateur dizaine/unit
	
	--separateur du resultat
	sep0 : entity separateur_diz_unit
		port map
		(
			--input 
			input => output_add,
			--output
			dizaine => dizRes,
			unite => unitRes
		);
		
	--separateur de l'ope A
	sep1 : entity separateur_diz_unit
		port map
		(
			--input 
			input => "0" & opeA,
			--output
			dizaine => dizA,
			unite => unitA
		);
		
	--separateur de l'ope B
	sep2 : entity separateur_diz_unit
		port map
		(
			--input 
			input => "0" & opeB,
			--output
			dizaine => dizB,
			unite => unitB
		);
	
	
	
	--mise en place des operateurs 7 segments
	
	--segment 0 opeA
	seg0 : entity seg7
		port map
		(
			--input
			number => dizA,
			--output
			leds => ledsA0
		);
		
	--segment 1 opeA
	seg1 : entity seg7
		port map
		(
			--input
			number => unitA,
			--output
			leds => ledsA1
		);
		
	--segment 0 opeB
	seg2 : entity seg7
		port map
		(
			--input
			number => dizB,
			--output
			leds => ledsB0
		);
		
	--segment 1 opeB
	seg3 : entity seg7
		port map
		(
			--input
			number => unitB,
			--output
			leds => ledsB1
		);
	
	--segment 0 opeR
	seg4 : entity seg7
		port map
		(
			--input
			number => dizRes,
			--output
			leds => ledsRes0
		);
		
	--segment 1 opeR
	seg5 : entity seg7
		port map
		(
			--input
			number => unitRes,
			--output
			leds => ledsRes1
		);
		
		outputleds <= "0" & dizRes;
end behavioral;
	