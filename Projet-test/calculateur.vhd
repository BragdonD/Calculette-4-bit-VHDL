library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity calculateur is 
	port( A, B : in std_logic_vector(3 downto 0);
			CLA, mode, operation, reset : in std_logic;
			resultat : out std_logic_vector(3 downto 0);
			modesOut : out std_logic_vector(3 downto 0);
			error: out std_logic
); end;


architecture archi_calcu of calculateur is
	signal resAdd, resMultiplication, resCLA : std_logic_vector(3 downto 0);
begin
	--temporaire
	resCLA <= "0000";
	resMultiplication <= "0000";
	
	additionneur0 : entity work.add4_bits(archi_add4bits)
		port map
		(
			operande1 => A,
			operande2 => B,
			mode => mode,
			Res => resAdd,
			error => error
		);
	
	MuxAfficheur : entity work.choix_display(archi_choix_display)
		port map
		(
			ResAdd => resAdd,
			ResCLA => resCLA,
			ResMulti => resMultiplication,
			mode => mode,
			CLA => CLA,
			Reset => reset,
			operation => operation,
			Resultat => resultat,
			ModesOut => modesOut
		);
	
end archi_calcu;



