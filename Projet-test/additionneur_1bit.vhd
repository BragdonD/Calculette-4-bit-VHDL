library ieee;
use ieee.std_logic_1164.all;

entity add1_bit is
	port( entry1, entry2 : in std_logic; 	--deux bits d'entree
			Cin : in std_logic;					--retenu d'entrée
			Res, Cout : out std_logic			--resultat et retenu de sortie
); end;

architecture archi_add1bit of add1_bit is
	signal temp : std_logic;					--permet de voir plus facilement le sens des portes
begin 
	temp <= entry1 xor entry2; 
	Res <= temp xor Cin;
	Cout <= (entry1 and entry2) or (Cin and temp);
end archi_add1bit;