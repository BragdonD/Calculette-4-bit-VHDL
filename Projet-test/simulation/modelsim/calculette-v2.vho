-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/18/2021 22:38:37"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculateur IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	CLA : IN std_logic;
	mode : IN std_logic;
	operation : IN std_logic;
	reset : IN std_logic;
	resultat : OUT std_logic_vector(3 DOWNTO 0);
	modesOut : OUT std_logic_vector(3 DOWNTO 0);
	error : OUT std_logic
	);
END calculateur;

-- Design Ports Information
-- resultat[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultat[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultat[2]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultat[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modesOut[0]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modesOut[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modesOut[2]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modesOut[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLA	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF calculateur IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLA : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_operation : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_resultat : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_modesOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_error : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \resultat[0]~output_o\ : std_logic;
SIGNAL \resultat[1]~output_o\ : std_logic;
SIGNAL \resultat[2]~output_o\ : std_logic;
SIGNAL \resultat[3]~output_o\ : std_logic;
SIGNAL \modesOut[0]~output_o\ : std_logic;
SIGNAL \modesOut[1]~output_o\ : std_logic;
SIGNAL \modesOut[2]~output_o\ : std_logic;
SIGNAL \modesOut[3]~output_o\ : std_logic;
SIGNAL \error~output_o\ : std_logic;
SIGNAL \CLA~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \operation~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \additionneur0|additionneur0|add1|Cout~0_combout\ : std_logic;
SIGNAL \additionneur0|additionneur0|add2|Cout~0_combout\ : std_logic;
SIGNAL \MuxAfficheur|Mux3~2_combout\ : std_logic;
SIGNAL \MuxAfficheur|Mux3~3_combout\ : std_logic;
SIGNAL \additionneur0|verif0|ErrorMode~0_combout\ : std_logic;
SIGNAL \MuxAfficheur|Mux3~0_combout\ : std_logic;
SIGNAL \multiplicateur0|verif0|ErrorOverFlow~3_combout\ : std_logic;
SIGNAL \multiplicateur0|verif0|ErrorOverFlow~2_combout\ : std_logic;
SIGNAL \multiplicateur0|multiplicateur0|add4bits_0|add2|Res~0_combout\ : std_logic;
SIGNAL \multiplicateur0|multiplicateur0|add4bits_0|add1|Res~0_combout\ : std_logic;
SIGNAL \multiplicateur0|multiplicateur0|add4bits_1|add1|Res~combout\ : std_logic;
SIGNAL \multiplicateur0|multiplicateur0|add4bits_1|add1|Cout~0_combout\ : std_logic;
SIGNAL \multiplicateur0|verif0|ErrorOverFlow~5_combout\ : std_logic;
SIGNAL \multiplicateur0|verif0|ErrorOverFlow~4_combout\ : std_logic;
SIGNAL \multiplicateur0|multiplicateur0|add4bits_2|add0|temp~combout\ : std_logic;
SIGNAL \MuxAfficheur|Mux3~1_combout\ : std_logic;
SIGNAL \MuxAfficheur|Mux3~4_combout\ : std_logic;
SIGNAL \additionneur0|additionneur0|add1|Res~0_combout\ : std_logic;
SIGNAL \multiplicateur0|multiplicateur0|add4bits_0|add0|temp~combout\ : std_logic;
SIGNAL \MuxAfficheur|Mux2~0_combout\ : std_logic;
SIGNAL \MuxAfficheur|Mux1~0_combout\ : std_logic;
SIGNAL \MuxAfficheur|Mux1~1_combout\ : std_logic;
SIGNAL \additionneur0|additionneur0|add3|Res~combout\ : std_logic;
SIGNAL \MuxAfficheur|Mux0~0_combout\ : std_logic;
SIGNAL \additionneur0|additionneur0|add3|Cout~0_combout\ : std_logic;
SIGNAL \MuxError|Mux0~0_combout\ : std_logic;
SIGNAL \multiplicateur0|multiplicateur0|B2\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_CLA <= CLA;
ww_mode <= mode;
ww_operation <= operation;
ww_reset <= reset;
resultat <= ww_resultat;
modesOut <= ww_modesOut;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y28_N9
\resultat[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAfficheur|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \resultat[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\resultat[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAfficheur|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \resultat[1]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\resultat[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAfficheur|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \resultat[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\resultat[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAfficheur|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \resultat[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\modesOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset~input_o\,
	devoe => ww_devoe,
	o => \modesOut[0]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\modesOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA~input_o\,
	devoe => ww_devoe,
	o => \modesOut[1]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\modesOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \operation~input_o\,
	devoe => ww_devoe,
	o => \modesOut[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\modesOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode~input_o\,
	devoe => ww_devoe,
	o => \modesOut[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\error~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxError|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \error~output_o\);

-- Location: IOIBUF_X20_Y39_N1
\CLA~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLA,
	o => \CLA~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\operation~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operation,
	o => \operation~input_o\);

-- Location: IOIBUF_X0_Y29_N8
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\mode~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode,
	o => \mode~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y29_N1
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y30_N22
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y30_N15
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y32_N6
\additionneur0|additionneur0|add1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \additionneur0|additionneur0|add1|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \additionneur0|additionneur0|add1|Cout~0_combout\);

-- Location: LCCOMB_X1_Y32_N8
\additionneur0|additionneur0|add2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \additionneur0|additionneur0|add2|Cout~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\additionneur0|additionneur0|add1|Cout~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \additionneur0|additionneur0|add1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \additionneur0|additionneur0|add1|Cout~0_combout\,
	combout => \additionneur0|additionneur0|add2|Cout~0_combout\);

-- Location: LCCOMB_X2_Y32_N18
\MuxAfficheur|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxAfficheur|Mux3~2_combout\ = (\B[3]~input_o\ & (!\A[3]~input_o\ & ((!\additionneur0|additionneur0|add2|Cout~0_combout\)))) # (!\B[3]~input_o\ & (((!\A[3]~input_o\ & !\mode~input_o\)) # (!\additionneur0|additionneur0|add2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \mode~input_o\,
	datad => \additionneur0|additionneur0|add2|Cout~0_combout\,
	combout => \MuxAfficheur|Mux3~2_combout\);

-- Location: LCCOMB_X2_Y32_N4
\MuxAfficheur|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxAfficheur|Mux3~3_combout\ = (!\CLA~input_o\ & (!\reset~input_o\ & (!\operation~input_o\ & \MuxAfficheur|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \reset~input_o\,
	datac => \operation~input_o\,
	datad => \MuxAfficheur|Mux3~2_combout\,
	combout => \MuxAfficheur|Mux3~3_combout\);

-- Location: LCCOMB_X2_Y32_N10
\additionneur0|verif0|ErrorMode~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \additionneur0|verif0|ErrorMode~0_combout\ = (\mode~input_o\ & (\B[3]~input_o\ $ (!\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \mode~input_o\,
	combout => \additionneur0|verif0|ErrorMode~0_combout\);

-- Location: LCCOMB_X2_Y32_N8
\MuxAfficheur|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxAfficheur|Mux3~0_combout\ = (!\CLA~input_o\ & (!\reset~input_o\ & \operation~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \reset~input_o\,
	datac => \operation~input_o\,
	combout => \MuxAfficheur|Mux3~0_combout\);

-- Location: LCCOMB_X2_Y32_N28
\multiplicateur0|verif0|ErrorOverFlow~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|verif0|ErrorOverFlow~3_combout\ = (\A[2]~input_o\) # ((\A[3]~input_o\) # ((\B[3]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \multiplicateur0|verif0|ErrorOverFlow~3_combout\);

-- Location: LCCOMB_X1_Y32_N4
\multiplicateur0|verif0|ErrorOverFlow~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|verif0|ErrorOverFlow~2_combout\ = (\B[2]~input_o\) # ((\B[0]~input_o\ & ((\A[3]~input_o\) # (\B[1]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \multiplicateur0|verif0|ErrorOverFlow~2_combout\);

-- Location: LCCOMB_X1_Y32_N30
\multiplicateur0|multiplicateur0|add4bits_0|add2|Res~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|multiplicateur0|add4bits_0|add2|Res~0_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[1]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\))))) # (!\B[0]~input_o\ & (((\A[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \multiplicateur0|multiplicateur0|add4bits_0|add2|Res~0_combout\);

-- Location: LCCOMB_X1_Y32_N24
\multiplicateur0|multiplicateur0|B2[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|multiplicateur0|B2\(0) = (\A[0]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \multiplicateur0|multiplicateur0|B2\(0));

-- Location: LCCOMB_X1_Y32_N26
\multiplicateur0|multiplicateur0|add4bits_0|add1|Res~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|multiplicateur0|add4bits_0|add1|Res~0_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (!\A[0]~input_o\)) # (!\B[1]~input_o\ & ((!\A[1]~input_o\))))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \multiplicateur0|multiplicateur0|add4bits_0|add1|Res~0_combout\);

-- Location: LCCOMB_X1_Y32_N20
\multiplicateur0|multiplicateur0|B2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|multiplicateur0|B2\(1) = (\A[1]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \multiplicateur0|multiplicateur0|B2\(1));

-- Location: LCCOMB_X1_Y32_N16
\multiplicateur0|multiplicateur0|add4bits_1|add1|Res\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|multiplicateur0|add4bits_1|add1|Res~combout\ = \multiplicateur0|multiplicateur0|add4bits_0|add2|Res~0_combout\ $ (\multiplicateur0|multiplicateur0|B2\(1) $ (((\multiplicateur0|multiplicateur0|B2\(0) & 
-- !\multiplicateur0|multiplicateur0|add4bits_0|add1|Res~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicateur0|multiplicateur0|add4bits_0|add2|Res~0_combout\,
	datab => \multiplicateur0|multiplicateur0|B2\(0),
	datac => \multiplicateur0|multiplicateur0|add4bits_0|add1|Res~0_combout\,
	datad => \multiplicateur0|multiplicateur0|B2\(1),
	combout => \multiplicateur0|multiplicateur0|add4bits_1|add1|Res~combout\);

-- Location: LCCOMB_X1_Y32_N2
\multiplicateur0|multiplicateur0|add4bits_1|add1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|multiplicateur0|add4bits_1|add1|Cout~0_combout\ = (\multiplicateur0|multiplicateur0|add4bits_0|add2|Res~0_combout\ & ((\multiplicateur0|multiplicateur0|B2\(1)) # ((\multiplicateur0|multiplicateur0|B2\(0) & 
-- !\multiplicateur0|multiplicateur0|add4bits_0|add1|Res~0_combout\)))) # (!\multiplicateur0|multiplicateur0|add4bits_0|add2|Res~0_combout\ & (\multiplicateur0|multiplicateur0|B2\(0) & (!\multiplicateur0|multiplicateur0|add4bits_0|add1|Res~0_combout\ & 
-- \multiplicateur0|multiplicateur0|B2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicateur0|multiplicateur0|add4bits_0|add2|Res~0_combout\,
	datab => \multiplicateur0|multiplicateur0|B2\(0),
	datac => \multiplicateur0|multiplicateur0|add4bits_0|add1|Res~0_combout\,
	datad => \multiplicateur0|multiplicateur0|B2\(1),
	combout => \multiplicateur0|multiplicateur0|add4bits_1|add1|Cout~0_combout\);

-- Location: LCCOMB_X2_Y32_N0
\multiplicateur0|verif0|ErrorOverFlow~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|verif0|ErrorOverFlow~5_combout\ = (\multiplicateur0|multiplicateur0|add4bits_1|add1|Cout~0_combout\) # ((\B[3]~input_o\ & (\A[0]~input_o\ & \multiplicateur0|multiplicateur0|add4bits_1|add1|Res~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[0]~input_o\,
	datac => \multiplicateur0|multiplicateur0|add4bits_1|add1|Res~combout\,
	datad => \multiplicateur0|multiplicateur0|add4bits_1|add1|Cout~0_combout\,
	combout => \multiplicateur0|verif0|ErrorOverFlow~5_combout\);

-- Location: LCCOMB_X2_Y32_N22
\multiplicateur0|verif0|ErrorOverFlow~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|verif0|ErrorOverFlow~4_combout\ = (\multiplicateur0|verif0|ErrorOverFlow~5_combout\) # ((\multiplicateur0|verif0|ErrorOverFlow~3_combout\ & ((\B[3]~input_o\) # (\multiplicateur0|verif0|ErrorOverFlow~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \multiplicateur0|verif0|ErrorOverFlow~3_combout\,
	datac => \multiplicateur0|verif0|ErrorOverFlow~2_combout\,
	datad => \multiplicateur0|verif0|ErrorOverFlow~5_combout\,
	combout => \multiplicateur0|verif0|ErrorOverFlow~4_combout\);

-- Location: LCCOMB_X2_Y32_N6
\multiplicateur0|multiplicateur0|add4bits_2|add0|temp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|multiplicateur0|add4bits_2|add0|temp~combout\ = \multiplicateur0|multiplicateur0|add4bits_1|add1|Res~combout\ $ (((\B[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \multiplicateur0|multiplicateur0|add4bits_1|add1|Res~combout\,
	datad => \A[0]~input_o\,
	combout => \multiplicateur0|multiplicateur0|add4bits_2|add0|temp~combout\);

-- Location: LCCOMB_X2_Y32_N24
\MuxAfficheur|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxAfficheur|Mux3~1_combout\ = (\MuxAfficheur|Mux3~0_combout\ & (!\multiplicateur0|verif0|ErrorOverFlow~4_combout\ & ((!\multiplicateur0|multiplicateur0|add4bits_2|add0|temp~combout\) # (!\additionneur0|verif0|ErrorMode~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \additionneur0|verif0|ErrorMode~0_combout\,
	datab => \MuxAfficheur|Mux3~0_combout\,
	datac => \multiplicateur0|verif0|ErrorOverFlow~4_combout\,
	datad => \multiplicateur0|multiplicateur0|add4bits_2|add0|temp~combout\,
	combout => \MuxAfficheur|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y32_N18
\MuxAfficheur|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxAfficheur|Mux3~4_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\ & ((\MuxAfficheur|Mux3~1_combout\))) # (!\B[0]~input_o\ & (\MuxAfficheur|Mux3~3_combout\)))) # (!\A[0]~input_o\ & (\MuxAfficheur|Mux3~3_combout\ & (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxAfficheur|Mux3~3_combout\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \MuxAfficheur|Mux3~1_combout\,
	combout => \MuxAfficheur|Mux3~4_combout\);

-- Location: LCCOMB_X1_Y32_N28
\additionneur0|additionneur0|add1|Res~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \additionneur0|additionneur0|add1|Res~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \additionneur0|additionneur0|add1|Res~0_combout\);

-- Location: LCCOMB_X1_Y32_N22
\multiplicateur0|multiplicateur0|add4bits_0|add0|temp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicateur0|multiplicateur0|add4bits_0|add0|temp~combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \multiplicateur0|multiplicateur0|add4bits_0|add0|temp~combout\);

-- Location: LCCOMB_X1_Y32_N0
\MuxAfficheur|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxAfficheur|Mux2~0_combout\ = (\MuxAfficheur|Mux3~3_combout\ & ((\additionneur0|additionneur0|add1|Res~0_combout\) # ((\multiplicateur0|multiplicateur0|add4bits_0|add0|temp~combout\ & \MuxAfficheur|Mux3~1_combout\)))) # (!\MuxAfficheur|Mux3~3_combout\ & 
-- (((\multiplicateur0|multiplicateur0|add4bits_0|add0|temp~combout\ & \MuxAfficheur|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxAfficheur|Mux3~3_combout\,
	datab => \additionneur0|additionneur0|add1|Res~0_combout\,
	datac => \multiplicateur0|multiplicateur0|add4bits_0|add0|temp~combout\,
	datad => \MuxAfficheur|Mux3~1_combout\,
	combout => \MuxAfficheur|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y32_N10
\MuxAfficheur|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxAfficheur|Mux1~0_combout\ = (\MuxAfficheur|Mux3~3_combout\ & (\additionneur0|additionneur0|add1|Cout~0_combout\ $ (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \additionneur0|additionneur0|add1|Cout~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \MuxAfficheur|Mux3~3_combout\,
	combout => \MuxAfficheur|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y32_N12
\MuxAfficheur|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxAfficheur|Mux1~1_combout\ = (\MuxAfficheur|Mux1~0_combout\) # ((\MuxAfficheur|Mux3~1_combout\ & (\multiplicateur0|multiplicateur0|B2\(0) $ (!\multiplicateur0|multiplicateur0|add4bits_0|add1|Res~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxAfficheur|Mux1~0_combout\,
	datab => \multiplicateur0|multiplicateur0|B2\(0),
	datac => \multiplicateur0|multiplicateur0|add4bits_0|add1|Res~0_combout\,
	datad => \MuxAfficheur|Mux3~1_combout\,
	combout => \MuxAfficheur|Mux1~1_combout\);

-- Location: LCCOMB_X2_Y32_N30
\additionneur0|additionneur0|add3|Res\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \additionneur0|additionneur0|add3|Res~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (\additionneur0|additionneur0|add2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => \additionneur0|additionneur0|add2|Cout~0_combout\,
	combout => \additionneur0|additionneur0|add3|Res~combout\);

-- Location: LCCOMB_X2_Y32_N16
\MuxAfficheur|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxAfficheur|Mux0~0_combout\ = (\additionneur0|additionneur0|add3|Res~combout\ & ((\MuxAfficheur|Mux3~3_combout\) # ((\MuxAfficheur|Mux3~1_combout\ & \multiplicateur0|multiplicateur0|add4bits_2|add0|temp~combout\)))) # 
-- (!\additionneur0|additionneur0|add3|Res~combout\ & (\MuxAfficheur|Mux3~1_combout\ & ((\multiplicateur0|multiplicateur0|add4bits_2|add0|temp~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \additionneur0|additionneur0|add3|Res~combout\,
	datab => \MuxAfficheur|Mux3~1_combout\,
	datac => \MuxAfficheur|Mux3~3_combout\,
	datad => \multiplicateur0|multiplicateur0|add4bits_2|add0|temp~combout\,
	combout => \MuxAfficheur|Mux0~0_combout\);

-- Location: LCCOMB_X2_Y32_N26
\additionneur0|additionneur0|add3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \additionneur0|additionneur0|add3|Cout~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # (\additionneur0|additionneur0|add2|Cout~0_combout\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & \additionneur0|additionneur0|add2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => \additionneur0|additionneur0|add2|Cout~0_combout\,
	combout => \additionneur0|additionneur0|add3|Cout~0_combout\);

-- Location: LCCOMB_X2_Y32_N20
\MuxError|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxError|Mux0~0_combout\ = (!\mode~input_o\ & ((\operation~input_o\ & ((\multiplicateur0|verif0|ErrorOverFlow~4_combout\))) # (!\operation~input_o\ & (\additionneur0|additionneur0|add3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \additionneur0|additionneur0|add3|Cout~0_combout\,
	datab => \operation~input_o\,
	datac => \multiplicateur0|verif0|ErrorOverFlow~4_combout\,
	datad => \mode~input_o\,
	combout => \MuxError|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_resultat(0) <= \resultat[0]~output_o\;

ww_resultat(1) <= \resultat[1]~output_o\;

ww_resultat(2) <= \resultat[2]~output_o\;

ww_resultat(3) <= \resultat[3]~output_o\;

ww_modesOut(0) <= \modesOut[0]~output_o\;

ww_modesOut(1) <= \modesOut[1]~output_o\;

ww_modesOut(2) <= \modesOut[2]~output_o\;

ww_modesOut(3) <= \modesOut[3]~output_o\;

ww_error <= \error~output_o\;
END structure;


