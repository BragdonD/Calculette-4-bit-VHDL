LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.ALL;

ENTITY top_entity IS
PORT(
		A,B : out std_logic_vector(3 downto 0);
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
		vga_b			: out std_logic_vector(3 downto 0)
		);
end entity;

architecture behavioral of top_entity is
	signal tempA, tempB : std_logic_vector(3 downto 0);
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
				HEX0 => HEX0,
				HEX1 => HEX1,
				HEX2 => HEX2,
				HEX3 => HEX3,
				HEX4 => HEX4,
				HEX5 => HEX5
		);


	calculette : entity work.calculator4bits
		port map( 
			A => tempA,
			B => tempB,
			mode => mode,
			reset => not(reset),
			operation => operation,
			CLA => CLA,
			opeACLA => opeACLA,
			opeBCLA => opeBCLA,
			resCLA => resCLA,
			coutCLA => coutCLA,
			cinCLA => cinCLA,
			modesOut => open,
			clk_50 => clk50,
			vga_vs => vga_vs,
			vga_hs => vga_hs,
			vga_r	=> vga_r,
			vga_g	=> vga_g,
			vga_b	=> vga_b
		);
	A <= tempA;
	B <= tempB;
end behavioral;