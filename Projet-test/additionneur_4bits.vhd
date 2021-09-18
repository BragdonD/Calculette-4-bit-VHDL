library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity add4_bits is
	port( operande1, operande2 : in std_logic_vector(3 downto 0);	--les deux opérandes
			mode : in std_logic; 												--nous permettra de check le signe des deux opérandes
			Res : out std_logic_vector(3 downto 0);							--Resultat de l'operation sera mis a 0000 si erreur
			error : out std_logic												--la sortie error nous permettra d'indiquer un overflow ou une erreur sur le resultat
																						-- exemple addition de deux nombre positif = a un nb negatif
); end;

architecture archi_add4bits of add4_bits is
	signal tempRes, tempResMode, tempResOverFlow : std_logic_vector(3 downto 0);
	signal Cin1, Cin2, Cin3, Cin4: std_logic;
	signal ErrorMode, ErrorOverFlow : std_logic;
begin 
	--declaration des additionneurs 1 bits pour faire un additionneur 4 bits
	--l'additionneur pourra faire la somme de nombre positifs ou negatifs car on fera une analyse avant pour envoyer les complements a 2 dans un cas de nombre signés
	add0: entity work.add1_bit(archi_add1bit)
		port map( entry1 => operande1(0), entry2 => operande2(0), Cin => '0', Res => tempRes(0), Cout => Cin1);
		
	add1: entity work.add1_bit(archi_add1bit)
		port map( entry1 => operande1(1), entry2 => operande2(1), Cin => Cin1, Res => tempRes(1), Cout => Cin2);
		
	add2: entity work.add1_bit(archi_add1bit)
		port map( entry1 => operande1(2), entry2 => operande2(2), Cin => Cin2, Res => tempRes(2), Cout => Cin3);
		
	add3: entity work.add1_bit(archi_add1bit)
		port map( entry1 => operande1(3), entry2 => operande2(3), Cin => Cin3, Res => tempRes(3), Cout => Cin4);
	
	--blindage du signe de sortie 
	--l'addition de deux nb positifs ne peut donner un res negatif et inversement
	process(mode,ErrorMode, tempRes, operande1, operande2)
		variable i : integer;
	begin
		i:= 0;
		--la porte xnor permet de verifier que les deux inputs sont identiques
		ErrorMode <= (tempRes(3) and (operande1(3) xnor operande2(3)) and mode);
		while i<=3 loop
			tempResMode(i) <= not(ErrorMode) and tempRes(i);
			i:= i + 1;
		end loop;
	end process;
	
	
	--blindage de l'overflow
	ErrorOverFlow <= Cin4; --si Cin4 vaut 1 on a un overflow sinon c'est bon
	
	
	process(Cin4, ErrorOverFlow, tempRes)
		variable i : integer;
	begin
		i:= 0;
		--Si Cin4 vaut 1 alors le res recopie not Cin4 sinon Res recopie la valeur de sortie des additionneurs sur 1 bit
		while i<=3 loop
			tempResOverFlow(i) <= not(ErrorOverFlow) and tempRes(i);
			i:= i + 1;
		end loop;
	end process;
	
	process(tempResMode,tempResOverFlow, ErrorOverFlow, ErrorMode)
		variable i : integer;
	begin
		i:= 0;
		while i<=3 loop
			Res(i) <= tempResMode(i) and tempResOverFlow(i);
			i:= i + 1;
		end loop; 
	end process;
	error <= ErrorOverFlow or ErrorMode;
end archi_add4bits;
