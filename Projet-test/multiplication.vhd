library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity multiplicateur_4bits is
	port( input1, input2 : in std_logic_vector(3 downto 0);
			mode : in std_logic;
			resultat : out std_logic_vector(7 downto 0)
); end;

architecture archi_multi4bits of multiplicateur_4bits is
	signal B0, B1, B2, B3 : std_logic_vector(3 downto 0);
	signal tempAdd1, tempAdd2, tempAdd3 : std_logic_vector(3 downto 0);
	signal Cout1, Cout2, Cout3 : std_logic;
	signal temp1,temp2 : std_logic_vector(3 downto 0);
begin
	process(input1, input2)
		variable i: integer;
	begin
		i:=0;
		while i <= 3 loop
			B0(i) <= input1(i) and input2(0);
			B1(i) <= input1(i) and input2(1);
			B2(i) <= input1(i) and input2(2);
			B3(i) <= input1(i) and input2(3);
			i:= i+1;
		end loop;
	end process;
	
	add4bits_0 : entity work.add4_bits(archi_add4bits)
		port map(operande1 => B0, operande2 => B1, Res => tempAdd1, Cout => Cout1);
	
	temp1(2 downto 0) <= tempAdd1(3 downto 1);
	temp1(3) <= Cout1;
	
	add4bits_1 : entity work.add4_bits(archi_add4bits)
		port map(operande1 => temp1, operande2 => B2, Res => tempAdd2, Cout => Cout2);
	
	temp2(2 downto 0) <= tempAdd2(3 downto 1);
	temp2(3) <= Cout2;
	
	add4bits_2 : entity work.add4_bits(archi_add4bits)
		port map(operande1 => temp2, operande2 => B3, Res => tempAdd3, Cout => Cout3);
	
	resultat(0) <= input1(0) and input2(0);
	resultat(1) <= tempAdd1(0);
	resultat(2) <= tempAdd2(0);
	resultat(6 downto 3) <= tempAdd3;
	resultat(7) <= Cout3;
	
end archi_multi4bits;