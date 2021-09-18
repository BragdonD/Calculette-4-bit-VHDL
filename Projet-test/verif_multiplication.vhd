library ieee;
use ieee.std_logic_1164.all;

entity verif_multi is
	port( ResMulti : in std_logic_vector(7 downto 0);							--Resultat de l'operation sera mis a 0000 si erreur
			operande1, operande2 : std_logic_vector(3 downto 0);
			mode : in std_logic;
			ResVerif : out std_logic_vector(3 downto 0);
			error : out std_logic
); end;


architecture archi_verif_multi of verif_multi is
	signal tempResMode, tempResOverFlow : std_logic_vector(3 downto 0);
	signal ErrorMode, ErrorOverFlow : std_logic;
begin
	--blindage du signe de sortie 
	--l'addition de deux nb positifs ne peut donner un res negatif et inversement
	process(mode, ResMulti, operande1, operande2)
		variable i : integer;
	begin
		i:= 0;
		--la porte xnor permet de verifier que les deux inputs sont identiques
		ErrorMode <= (ResMulti(3) and (operande1(3) xnor operande2(3)) and mode);
		while i<=3 loop
			tempResMode(i) <= not(ErrorMode) and  ResMulti(i);
			i:= i + 1;
		end loop;
	end process;
	
	
	--blindage d'overflow
	ErrorOverFlow <= ResMulti(7) or ResMulti(6) or ResMulti(5) or ResMulti(4);
	process(ErrorOverFlow, ResMulti)
		variable i : integer;
	begin
		i:= 0;
		while i<=3 loop
			tempResOverFlow(i) <= not(ErrorOverFlow) and ResMulti(i);
			i:= i + 1;
		end loop; 
	end process;
	
	process(tempResMode,tempResOverFlow)
		variable i : integer;
	begin
		i:= 0;
		while i<=3 loop
			ResVerif(i) <= tempResMode(i) and tempResOverFlow(i);
			i:= i + 1;
		end loop; 
	end process;
	
	
	error <= ErrorOverFlow or ErrorMode;
	
end archi_verif_multi;