library ieee;
use ieee.std_logic_1164.all;

entity verif_add is
	port( ResAdd : in std_logic_vector(3 downto 0);							--Resultat de l'operation sera mis a 0000 si erreur
			operande1, operande2 : std_logic_vector(3 downto 0);
			mode : in std_logic;
			Cin : in std_logic;
			ResVerif : out std_logic_vector(3 downto 0);
			error : out std_logic
); end;


architecture archi_verif_add of verif_add is
	signal tempResMode, tempResOverFlow : std_logic_vector(3 downto 0);
	signal ErrorMode, ErrorOverFlow : std_logic;
begin
	--blindage du signe de sortie 
	--l'addition de deux nb positifs ne peut donner un res negatif et inversement
	process(mode, ResAdd, operande1, operande2)
		variable i : integer;
	begin
		i:= 0;
		--la porte xnor permet de verifier que les deux inputs sont identiques
		ErrorMode <= (ResAdd(3) and (operande1(3) xnor operande2(3)) and mode);
		while i<=3 loop
			tempResMode(i) <= not(ErrorMode) and  ResAdd(i);
			i:= i + 1;
		end loop;
	end process;
	
	
	--blindage de l'overflow
	ErrorOverFlow <= Cin; --si Cin vaut 1 on a un overflow sinon c'est bon
	process(Cin, ErrorOverFlow,  ResAdd)
		variable i : integer;
	begin
		i:= 0;
		--Si Cin4 vaut 1 alors le res recopie not Cin4 sinon Res recopie la valeur de sortie des additionneurs sur 1 bit
		while i<=3 loop
			tempResOverFlow(i) <= not(ErrorOverFlow) and  ResAdd(i);
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
	
end archi_verif_add;