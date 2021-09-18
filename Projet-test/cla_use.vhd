library ieee;
use ieee.std_logic_1164.all;

entity use_Cla is
	port( CLA : in std_logic;
			OPerande1, OPerande2 : in std_logic_vector(3 downto 0);
			CLA_input1, CLA_input2, OPeration_input1,OPeration_input2 : out std_logic_vector(3 downto 0)
); end;

architecture archi_use_cla of use_cla is
	signal OPA_cla_temp, OPB_cla_temp, ope_in1_temp, ope_in2_temp : std_logic_vector(3 downto 0);
begin
	process(CLA)
	variable i: integer;
	begin
		i:=0;
		while i<=3 loop
		OPA_cla_temp(i) <= OPerande1(i) and CLA;
		OPB_cla_temp(i) <= OPerande2(i) and CLA;
		ope_in1_temp(i) <= OPerande1(i) and not(CLA);
		ope_in2_temp(i) <= OPerande2(i) and not(CLA);
		i:= i+1;
		end loop;
	end process;
	CLA_input1 <= OPA_cla_temp;
	CLA_input2 <= OPB_cla_temp;
	OPeration_input1 <= ope_in1_temp;
	OPeration_input2 <= ope_in2_temp;
end archi_use_cla;
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			--operande1, operande2 : in std_logic_vector(3 downto 0);	--les deux opérandes
			--mode : in std_logic; 												--nous permettra de check le signe des deux opérandes
			--Res : out std_logic_vector(3 downto 0);							--Resultat de l'operation sera mis a 0000 si erreur
			--error : out std_logic												--la sortie error nous permettra d'indiquer un overflow ou une erreur sur le resultat
																						-- exemple addition de deux nombre positif = a un nb negatif
