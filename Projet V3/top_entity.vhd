LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.ALL;

ENTITY top_entity IS
PORT(
		--A,B : out std_logic_vector(3 downto 0);
		rd_data 				: out std_logic;
		-- clock
		clk50					: in std_logic;
		---telecommande input
		data_in 				: in std_logic;
		--modes inputs
		reset 				: in std_logic;
		mode					: in std_logic;
		operation			: in std_logic;
		--LEDS
		HEX0					: out std_logic_vector(6 downto 0);
		HEX1					: out std_logic_vector(6 downto 0);
		HEX2					: out std_logic_vector(6 downto 0);
		HEX3					: out std_logic_vector(6 downto 0);
		HEX4					: out std_logic_vector(6 downto 0);
		HEX5					: out std_logic_vector(6 downto 0);
		----CLA
		CLA			: in std_logic;
		opeACLA		: out std_logic_vector(3 downto 0);
		opeBCLA		: out std_logic_vector(3 downto 0);
		resCLA		: in 	std_logic_vector(3 downto 0);
		coutCLA		: in	std_logic;
		cinCLA		: out std_logic;
		vga_vs		: out std_logic;
		vga_hs		: out std_logic;
		vga_r			: out std_logic_vector(3 downto 0);
		vga_g			: out std_logic_vector(3 downto 0);
		vga_b			: out std_logic_vector(3 downto 0);
		buzzerout 	: out std_logic;
		ModesOut		: out std_logic_vector(3 downto 0)
		);
end entity;

architecture behavioral of top_entity is
	signal tempA, tempB : std_logic_vector(3 downto 0);
	signal enableCalcul : std_logic;
	signal enableAffi : std_logic;
	signal tempRes : std_logic_vector(3 downto 0);
	signal TempHEX10, TempHEX20, TempHEX30, TempHEX40, TempHEX50, TempHEX00 : std_logic_vector(6 downto 0);
	signal TempHEX11, TempHEX21, TempHEX31, TempHEX41, TempHEX51, TempHEX01 : std_logic_vector(6 downto 0);
begin

	IR : entity work.full_ir_receiver
		port map(
				A => tempA,
				B => tempB,
				rd_data => rd_data,
				clk => clk50,
				data_in => data_in,
				reset => reset,
				mode => mode,
				HEX0 => TempHEX00,
				HEX1 => TempHEX10,
				HEX2 => TempHEX20,
				HEX3 => TempHEX30,
				HEX4 => TempHEX40,
				HEX5 => TempHEX50,
				eror => enableCalcul,
				affichage => enableAffi
		);


	calculette : entity work.calculator4bits
		port map( 
			A => tempA,
			B => tempB,
			mode => mode,
			reset => not(reset),
			operation => operation,
			enable => enableCalcul,
			CLA => CLA,
			opeACLA => opeACLA,
			opeBCLA => opeBCLA,
			resCLA => resCLA,
			coutCLA => coutCLA,
			cinCLA => cinCLA,
			HEX0 => TempHEX01,
			HEX1 => TempHEX11,
			HEX2 => TempHEX21,
			HEX3 => TempHEX31,
			HEX4 => TempHEX41,
			HEX5 => TempHEX51,
			modesOut => ModesOut,
			clk_50 => clk50,
			vga_vs => vga_vs,
			vga_hs => vga_hs,
			vga_r	=> vga_r,
			vga_g	=> vga_g,
			vga_b	=> vga_b,
			res => tempRes
		);
		
	process(enableAffi, TempHEX10, TempHEX20, TempHEX30, TempHEX40, TempHEX50, TempHEX00,TempHEX11, TempHEX21, TempHEX31, TempHEX41, TempHEX51, TempHEX01)
	begin
		if(enableAffi = '0')then
			HEX0 <= TempHEX00;
			HEX1 <= TempHEX10;
			HEX2 <= TempHEX20;
			HEX3 <= TempHEX30;
			HEX4 <= TempHEX40;
			HEX5 <= TempHEX50;
		else
			HEX0 <= TempHEX01;
			HEX1 <= TempHEX11;
			HEX2 <= TempHEX21;
			HEX3 <= TempHEX31;
			HEX4 <= TempHEX41;
			HEX5 <= TempHEX51;
		end if;
	end process;
	
	--------------------------------------------buzzer
	buz : entity work.buzzer
	port map
	(
		mode 	=> mode,
		clock => clk50,
		var => buzzerout,
		reset => not(reset),
		res => tempRes
	);

	--A <= tempA;
	--B <= tempB;
end behavioral;