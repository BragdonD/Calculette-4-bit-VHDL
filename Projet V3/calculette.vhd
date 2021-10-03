library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity calculator4bits is 
port( A, B		 	: in std_logic_vector(3 downto 0);
		mode			: in std_logic;
		reset			: in std_logic;
		operation	: in std_logic;
		enable 		: in std_logic;
		----CLA
		CLA			: in std_logic;
		opeACLA		: out std_logic_vector(3 downto 0);
		opeBCLA		: out std_logic_vector(3 downto 0);
		resCLA		: in 	std_logic_vector(3 downto 0);
		coutCLA		: in	std_logic;
		cinCLA		: out std_logic;
		----leds
		HEX0			: out std_logic_vector(6 downto 0);
		HEX1			: out std_logic_vector(6 downto 0);
		HEX2			: out std_logic_vector(6 downto 0);
		HEX3			: out std_logic_vector(6 downto 0);
		HEX4			: out std_logic_vector(6 downto 0);
		HEX5			: out std_logic_vector(6 downto 0);
		modesOut		: out std_logic_vector(3 downto 0);
		---hdmi
		clk_50		: in std_logic;
		vga_vs		: out std_logic;
		vga_hs		: out std_logic;
		vga_r			: out std_logic_vector(3 downto 0);
		vga_g			: out std_logic_vector(3 downto 0);
		vga_b			: out std_logic_vector(3 downto 0);
		Res : out std_logic_vector(3 downto 0)
		);
end calculator4bits;

architecture behavioral of calculator4bits is
	signal ResAdd,TempResAdd : std_logic_vector(3 downto 0);
	signal tempResCLA : std_logic_vector(3 downto 0);
	signal ResMulti : std_logic_vector(7 downto 0);
	signal CoutAdd : std_logic;
	signal tempOpeA, tempOpeB : std_logic_vector(3 downto 0);
	
	signal erorAdd : std_logic;
	signal erorMulti : std_logic;
	signal erorCLA : std_logic;
	signal eror : std_logic;
	
	
	signal FinalResMulti : std_logic_vector(3 downto 0);
	signal FinalRes : std_logic_vector(3 downto 0);
	
	
	signal dizA, dizB, dizRes : std_logic_vector(3 downto 0);
	signal uA, uB, uRes : std_logic_vector(3 downto 0);
	
	signal tempHEX0, tempHEX1, tempHEX2, tempHEX3 , tempHEX4 , tempHEX5 : std_logic_vector(6 downto 0);
	
	signal cmplt2A, cmplt2B : std_logic_vector(3 downto 0);
begin
	---------------------------------------Addition
	add0: entity work.add4bits(archi_add4bits)
		port map
		(
			A => A,
			B => B,
			mode => mode,
			Res => TempResAdd,
			Cout => CoutAdd
		);
		
	controlAdd : entity work.ErorControlAdd 
		port map
		( 
			ASigne => A(3), 
			BSigne => B(3), 
			ResSigne => TempResAdd(3), 
			CoutAdd => CoutAdd,
			mode => mode,
			erorTotale => erorAdd
		);	
		
	process(TempResAdd, erorAdd)
		variable i : integer;
	begin
		i:=0;
		while i<4 loop
			ResAdd(i) <= TempResAdd(i) and not(erorAdd);
			i:=i+1;
		end loop;
	end process;
	-----------------------------------------Multiplication	
	multi0: entity work.multi4bits
		port map
		(
			A => A,
			B => B,
			mode => mode,
			Res => ResMulti
		);
		
	controlMulti: entity  work.ErorControlMulti
		port map
		( 
			ASigne => A(3), 
			BSigne => B(3), 
			mode => mode,
			ResMulti => ResMulti,
			ResOut => FinalResMulti,
			erorTotale => erorMulti
		);
	--------------------------------------------CLA

		
	process(CLA,A,B, mode, cmplt2A, cmplt2B)
	begin
		if(CLA = '1') then
			tempOpeA <= A;
			tempOpeB <= B;
		else
			tempOpeA <= "0000";
			tempOpeB <= "0000";
		end if;
	end process;

	CLA0 : entity work.CLA
		port map
		(
			clk => clk_50,
			A => tempOpeA,
			B => tempOpeB,
			reset => reset,
			mode => mode,
			operation => operation,
			--sortie CLA
			cout => coutCLA,
			outputCLA => ResCLA,
			--entree CLA
			opeACLA => opeACLA,
			opeBCLA => opeBCLA,
			erorCLA => erorCLA,
			result => tempResCLA
		);
	
	
	
	--------------------------------------------eror

	eror <= (not(operation) and not(CLA) and erorAdd) or (operation and not(CLA) and erorMulti) or (CLA and erorCLA) or enable;
	
	--------------------------------------------choix de l'affichage
	choix_d0 : entity work.choix_display
		port map
		(	
			ResAdd => ResAdd, 
			ResCLA => tempResCLA, 
			ResMulti => FinalResMulti,
			mode => mode,
			CLA => CLA, 
			Reset => reset,
			operation => operation,
			Resultat => FinalRes, 
			ModesOut => modesOut
		);
	-------------------------------------------LEDS
	sepA: entity work.separateur_diz_unit
		port map
		(
			input => A,
			mode => mode,
			dizaine => dizA,
			unite =>uA
		);
		
	sepB: entity work.separateur_diz_unit
		port map
		(
			input => B,
			mode => mode,
			dizaine => dizB,
			unite =>uB
		);
		
	sepRes: entity work.separateur_diz_unit
		port map
		(
			input => FinalRes,
			mode => mode,
			dizaine => dizRes,
			unite =>uRes
		);
	----------------------------------OPEA	
	ledA0 : entity work.seg7
		port map
		( 
			number => dizA,
			leds => tempHEX5
		);
		
	ledA1 : entity work.seg7
		port map
		( 
			number => uA,
			leds => tempHEX4
		);
		
		--------------------------------OPEB
		
	ledB0 : entity work.seg7
		port map
		( 
			number => dizB,
			leds => tempHEX3
		);
		
	ledB1 : entity work.seg7
	port map
		( 
			number => uB,
			leds => tempHEX2
		);
		
		
		
	--------------------------------result
	ledRes0 : entity work.seg7
		port map
		( 
			number => dizRes,
			leds => tempHEX1
		);
		
	ledRes1 : entity work.seg7
		port map
		( 
			number => uRes,
			leds => tempHEX0
		);
	
	---gerer les signes '-'
	process(eror, tempHEX1 , tempHEX0, mode, FinalRes)
	begin
		if eror = '1' then
			HEX1 <= "0000110";
			HEX0 <= "0101111";
		elsif mode = '1' and to_integer(signed(FinalRes)) <0 then
			HEX1 <= "0111111";
			HEX0 <= tempHEX0;
		else
			HEX1 <=  tempHEX1;
			HEX0 <=  tempHEX0;
		end if;
	end process;
	
	process(mode, tempHEX5 , tempHEX4, mode, A)
	begin
		if mode = '1' and to_integer(signed(A)) <0 then
			HEX5 <= "0111111";
			HEX4 <=  tempHEX4;
		else
			HEX5 <=  tempHEX5;
			HEX4 <=  tempHEX4;
		end if;
	end process;
	
	process(mode, tempHEX3 , tempHEX2, mode, B)
	begin
		if mode = '1' and to_integer(signed(B)) <0  then
			HEX3 <= "0111111";
			HEX2 <=  tempHEX2;
		else
			HEX3 <=  tempHEX3;
			HEX2 <=  tempHEX2;
		end if;
	end process;
	
	
		
	-------------------------------------------hdmi	
	hdmi_out0: entity work.hdmi_de10
		port map
		(
			clk_50 => clk_50,
			reset	 => reset,
			mode => mode,
			Res => FinalRes,
			eror => eror,
			res_out => open,
			vga_vs => vga_vs,
			vga_hs => vga_hs,
			vga_r	 => vga_r,	
			vga_g	 => vga_g,	
			vga_b => vga_b	
		);
	
	Res <= FinalRes;
	
end behavioral;

		