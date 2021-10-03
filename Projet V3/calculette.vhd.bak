library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity calculator4bits is 
port( A, B		 	: in std_logic_vector(3 downto 0);
		mode			: in std_logic;
		CLA			: in std_logic;
		reset			: in std_logic;
		operation	: in std_logic;
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
		vga_b			: out std_logic_vector(3 downto 0));
end calculator4bits;

architecture behavioral of calculator4bits is
	signal ResAdd,TempResAdd : std_logic_vector(3 downto 0);
	signal ResCLA : std_logic_vector(3 downto 0);
	signal ResMulti : std_logic_vector(7 downto 0);
	signal CoutAdd : std_logic;
	
	
	signal erorAdd : std_logic;
	signal erorMulti : std_logic;
	signal erorCLA : std_logic;
	signal eror : std_logic;
	
	
	signal FinalResMulti : std_logic_vector(3 downto 0);
	signal FinalRes : std_logic_vector(3 downto 0);
	
	
	signal dizA, dizB, dizRes : std_logic_vector(3 downto 0);
	signal uA, uB, uRes : std_logic_vector(3 downto 0);
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
			ASigned => A(3), 
			BSigned => B(3), 
			ResMulti => ResMulti,
			ResOut => FinalResMulti,
			erorTotale => erorMulti
		);
	--------------------------------------------CLA
	
	
	
	
	--------------------------------------------eror
	process(erorMulti,erorCLA,erorAdd, operation,CLA)
	begin
		if(operation ='0' and CLA ='0') then
			eror <= erorAdd;
		elsif(operation ='1' and CLA ='0') then
			eror <= erorMulti;
		elsif(CLA='1')then
			eror <= erorCLA;
		end if;
	end process;
	
	--------------------------------------------choix de l'affichage
	choix_d0 : entity work.choix_display
		port map
		(	
			ResAdd => ResAdd, 
			ResCLA => ResCLA, 
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
		
	ledA0 : entity work.seg7
		port map
		( 
			number => dizA,
			leds => HEX5
		);
		
	ledA1 : entity work.seg7
		port map
		( 
			number => uA,
			leds => HEX4
		);
		
	ledB0 : entity work.seg7
		port map
		( 
			number => dizB,
			leds => HEX3
		);
		
	ledB1 : entity work.seg7
		port map
		( 
			number => uB,
			leds => HEX2
		);
		
	ledRes0 : entity work.seg7
		port map
		( 
			number => dizRes,
			leds => HEX1
		);
		
	ledRes1 : entity work.seg7
		port map
		( 
			number => uRes,
			leds => HEX0
		);
		
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
	
end behavioral;

		