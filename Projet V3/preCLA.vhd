library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity preCLA is
port( OpeA, OpeB 					: in std_logic_vector(3 downto 0);
		operation, mode			: in std_logic;
		CLAOpeAOut, CLAOpeBOut	: out std_logic_vector(3 downto 0));
end entity;

architecture archi_preCLA of preCLA is
	signal AddtempA, AddtempB, MultitempA, MultitempB : std_logic_vector(3 downto 0);
	signal Tempmulti1, Tempmulti2, Tempmulti3, Tempmulti4 : std_logic_vector(3 downto 0);
	signal multi1, multi2, multi3, multi4 : std_logic_vector(3 downto 0);
	signal erorOverflow, erorMultiA, erorMultiB, totalErorMulti, CoutA, CoutB : std_logic;
begin
	
	AddtempA <= OpeA;
	AddtempB <= OpeB;
	
	--calcul de l'erreur potentielle d'overflow de la multiplication
	process(OpeA, OpeB)
		variable i : integer;
	begin
		--calcul de la 1er ligne
		i := 0;
		while i<4 loop
			multi1(i) <= OpeA(i) and OpeB(0);
			i := i+1;
		end loop;
		--calcul de la 2e ligne
		i := 0;
		while i<4 loop
			multi2(i) <= OpeA(i) and OpeB(1);
			i := i+1;
		end loop;
		--calcul de la 3e ligne
		i := 0;
		while i<4 loop
			multi3(i) <= OpeA(i) and OpeB(2);
			i := i+1;
		end loop;
		--calcul de la 4e ligne
		i := 0;
		while i<4 loop
			multi4(i) <= OpeA(i) and OpeB(3);
			i := i+1;
		end loop;	
		--verification que 
		
	end process;
	
	erorOverflow <= ((multi2(3) or multi3(3) or multi4(3)) or (multi3(2) or multi4(3)) or multi4(1));
	
	--calcul des lignes de la multiplication
	process(OpeA, OpeB, erorOverflow)
		variable i : integer;
	begin
		--calcul de la 1er ligne
		i := 0;
		while i<4 loop
			Tempmulti1(i) <= (OpeA(i) and OpeB(0)) and erorOverflow;
			i := i+1;
		end loop;
		
		--calcul de la 2e ligne
		i := 3;
		while i > 0 loop
			Tempmulti2(i) <= (OpeA(i) and OpeB(1)) and erorOverflow;
			i := i-1;
		end loop;
		Tempmulti2(0) <= '0';
		
		--calcul de la 3e ligne
		i := 3;
		while i>1 loop
			Tempmulti3(i) <= (OpeA(i) and OpeB(2)) and erorOverflow;
			i := i-1;
		end loop;
		Tempmulti2(1 downto 0) <= "00";
		
		--calcul de la 4e ligne
		i := 3;
		while i>2 loop
			Tempmulti4(i) <= (OpeA(i) and OpeB(3)) and erorOverflow;
			i := i-1;
		end loop;
		Tempmulti2(2 downto 0) <= "000";
		
	end process;
		
	--calcul des deux additions temporaires de l'addition
	add0 : entity work.add4bits(archi_add4bits)
		port map(A => Tempmulti1, B => Tempmulti2, mode => '0', Res => MultiTempA, Cout => CoutA);
		
	add1 : entity work.add4bits(archi_add4bits)
		port map(A => Tempmulti3, B => Tempmulti4, mode => '0', Res => MultiTempB, Cout => CoutB);
	
	--control des resultats
	erorControl0 : entity work.ErorControlAdd(archi_errorAdd) 
		port map(ASigned => Tempmulti1(3), BSigned => Tempmulti2(3), ResSigned => MultiTempA(3), CoutAdd => CoutA ,erorTotale => erorMultiA);

	erorControl1 : entity work.ErorControlAdd(archi_errorAdd) 
		port map(ASigned => Tempmulti3(3), BSigned => Tempmulti4(3), ResSigned => MultiTempB(3), CoutAdd => CoutB ,erorTotale => erorMultiB);
	
	--calcul total de l'erreur de multiplication
	process(mode, erorMultiA, erorMultiB, CoutA, CoutB, erorOverflow)
	begin
		case mode is
			when '0' => 
				totalErorMulti <= erorOverflow or CoutA or CoutB;
			when '1' =>
				totalErorMulti <= erorMultiA or erorMultiB or erorOverflow or CoutA or CoutB;
			when others =>
				totalErorMulti <= '1';
		end case;
	end process;
	
	--calcul des composantes en fonctions de l'operation et des erreurs
	process(totalErorMulti, AddtempA, AddtempB, MultiTempA, MultiTempB, operation)
	begin
		case operation is
		
			when '0' =>
				CLAOpeAOut <= AddtempA;
				CLAOpeBOut <= AddtempB;
			when '1' =>
				if(totalErorMulti = '0') then 
					CLAOpeAOut <= MultiTempA;
					CLAOpeBOut <= MultiTempB;
				else
					CLAOpeAOut <= "0000";
					CLAOpeBOut <= "0000";
				end if;
		end case;
	end process;
	
end archi_preCLA;
				
				