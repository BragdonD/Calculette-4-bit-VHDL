library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity full_add_comp is
port( A, B : in std_logic_vector(3 downto 0);	--les deux opérandes
		mode : in std_logic; 												--nous permettra de check le signe des deux opérandes
		Res : out std_logic_vector(3 downto 0);
		error : out std_logic
); end;

architecture archi_full_add_comp of full_add_comp is
 signal ResAdd : std_logic_vector(3 downto 0);
 signal Cout : std_logic;
begin

	additionneur0 : entity work.add4_bits(archi_add4bits)
		port map
		(
			operande1 => A,
			operande2 => B,
			Res => ResAdd,
			Cout => Cout
		);

	verif0 : entity work.verif_add(archi_verif_add)
		port map
		(
			ResAdd => ResAdd,
			operande1 => A,
			operande2 => B,
			mode => mode,
			Cin => Cout,
			ResVerif => Res,
			error => error
		);
end archi_full_add_comp;
