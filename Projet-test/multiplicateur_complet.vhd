library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity full_multi_comp is
port( A, B : in std_logic_vector(3 downto 0);	--les deux opérandes
		mode : in std_logic; 												--nous permettra de check le signe des deux opérandes
		Res : out std_logic_vector(3 downto 0);
		error : out std_logic
); end;

architecture archi_full_multi_comp of full_multi_comp is
 signal ResMulti : std_logic_vector(7 downto 0);
 signal Cout : std_logic;
begin

	multiplicateur0 : entity work.multiplicateur_4bits(archi_multi4bits)
		port map
		(
			input1 => A,
			input2 => B,
			mode => mode,
			resultat => ResMulti
		);

	verif0 : entity work.verif_multi(archi_verif_multi)
		port map
		(
			ResMulti => ResMulti,
			operande1 => A,
			operande2 => B,
			mode => mode,
			ResVerif => Res,
			error => error
		);
end archi_full_multi_comp;
