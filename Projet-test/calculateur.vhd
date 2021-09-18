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
	signal resAdd, resMulti, resCLA : std_logic_vector(3 downto 0);
	signal errorAdd, errorMulti, errorCLA : std_logic;
begin
	--temporaire
	resCLA <= "0000";
	errorCLA <= '0';
	
	additionneur0 : entity work.full_add_comp(archi_full_add_comp)
		port map
		(
			A => A,
			B => B,
			mode => mode,
			Res => resAdd,
			error => errorAdd
		);
		
	multiplicateur0 : entity work.full_multi_comp(archi_full_multi_comp)
		port map
		(
			A => A,
			B => B,
			mode => mode,
			Res => resMulti,
			error => errorMulti
		
		);
	
	MuxAfficheur : entity work.choix_display(archi_choix_display)
		port map
		(
			ResAdd => resAdd,
			ResCLA => resCLA,
			ResMulti => resMulti,
			mode => mode,
			CLA => CLA,
			Reset => reset,
			operation => operation,
			Resultat => resultat,
			ModesOut => modesOut
		);
		
	MuxError : entity work.Mux3vers1(archi_Mux3vers1)
		port map
		(
			IN0 => errorAdd,
			IN1 => errorMulti,
			IN2 => errorCLA,
			SEL0 => mode,
			SEL1 => operation,
			OUTPUT => error
		);
		
end archi_calcu;



