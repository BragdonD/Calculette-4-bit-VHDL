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

-- DATE "09/21/2021 21:19:04"

-- 
-- Device: Altera 10M08DAF484I7G Package FBGA484
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

ENTITY 	preCLA IS
    PORT (
	OpeA : IN std_logic_vector(3 DOWNTO 0);
	OpeB : IN std_logic_vector(3 DOWNTO 0);
	operation : IN std_logic;
	mode : IN std_logic;
	CLAOpeAOut : OUT std_logic_vector(3 DOWNTO 0);
	CLAOpeBOut : OUT std_logic_vector(3 DOWNTO 0)
	);
END preCLA;

-- Design Ports Information
-- CLAOpeAOut[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLAOpeAOut[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLAOpeAOut[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLAOpeAOut[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLAOpeBOut[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLAOpeBOut[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLAOpeBOut[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLAOpeBOut[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpeA[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpeA[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpeA[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpeA[3]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpeB[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpeB[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpeB[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpeB[3]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF preCLA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OpeA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OpeB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_operation : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_CLAOpeAOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLAOpeBOut : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \CLAOpeAOut[0]~output_o\ : std_logic;
SIGNAL \CLAOpeAOut[1]~output_o\ : std_logic;
SIGNAL \CLAOpeAOut[2]~output_o\ : std_logic;
SIGNAL \CLAOpeAOut[3]~output_o\ : std_logic;
SIGNAL \CLAOpeBOut[0]~output_o\ : std_logic;
SIGNAL \CLAOpeBOut[1]~output_o\ : std_logic;
SIGNAL \CLAOpeBOut[2]~output_o\ : std_logic;
SIGNAL \CLAOpeBOut[3]~output_o\ : std_logic;
SIGNAL \operation~input_o\ : std_logic;
SIGNAL \OpeA[0]~input_o\ : std_logic;
SIGNAL \CLAOpeAOut~0_combout\ : std_logic;
SIGNAL \OpeA[1]~input_o\ : std_logic;
SIGNAL \CLAOpeAOut~1_combout\ : std_logic;
SIGNAL \OpeA[2]~input_o\ : std_logic;
SIGNAL \CLAOpeAOut~2_combout\ : std_logic;
SIGNAL \OpeA[3]~input_o\ : std_logic;
SIGNAL \OpeB[2]~input_o\ : std_logic;
SIGNAL \OpeB[3]~input_o\ : std_logic;
SIGNAL \erorOverflow~1_combout\ : std_logic;
SIGNAL \OpeB[0]~input_o\ : std_logic;
SIGNAL \OpeB[1]~input_o\ : std_logic;
SIGNAL \erorOverflow~0_combout\ : std_logic;
SIGNAL \Tempmulti2[3]~0_combout\ : std_logic;
SIGNAL \add0|Res[3]~0_combout\ : std_logic;
SIGNAL \add0|Res[3]~1\ : std_logic;
SIGNAL \add0|Add0~0_combout\ : std_logic;
SIGNAL \CLAOpeAOut~3_combout\ : std_logic;
SIGNAL \CLAOpeAOut~4_combout\ : std_logic;
SIGNAL \CLAOpeBOut~0_combout\ : std_logic;
SIGNAL \CLAOpeBOut~1_combout\ : std_logic;
SIGNAL \CLAOpeBOut~2_combout\ : std_logic;
SIGNAL \CLAOpeBOut~3_combout\ : std_logic;
SIGNAL Tempmulti1 : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_OpeA <= OpeA;
ww_OpeB <= OpeB;
ww_operation <= operation;
ww_mode <= mode;
CLAOpeAOut <= ww_CLAOpeAOut;
CLAOpeBOut <= ww_CLAOpeBOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y19_N4
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

-- Location: IOOBUF_X10_Y18_N2
\CLAOpeAOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLAOpeAOut~0_combout\,
	devoe => ww_devoe,
	o => \CLAOpeAOut[0]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\CLAOpeAOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLAOpeAOut~1_combout\,
	devoe => ww_devoe,
	o => \CLAOpeAOut[1]~output_o\);

-- Location: IOOBUF_X10_Y18_N9
\CLAOpeAOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLAOpeAOut~2_combout\,
	devoe => ww_devoe,
	o => \CLAOpeAOut[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N9
\CLAOpeAOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLAOpeAOut~4_combout\,
	devoe => ww_devoe,
	o => \CLAOpeAOut[3]~output_o\);

-- Location: IOOBUF_X10_Y20_N2
\CLAOpeBOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLAOpeBOut~0_combout\,
	devoe => ww_devoe,
	o => \CLAOpeBOut[0]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\CLAOpeBOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLAOpeBOut~1_combout\,
	devoe => ww_devoe,
	o => \CLAOpeBOut[1]~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\CLAOpeBOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLAOpeBOut~2_combout\,
	devoe => ww_devoe,
	o => \CLAOpeBOut[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N16
\CLAOpeBOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLAOpeBOut~3_combout\,
	devoe => ww_devoe,
	o => \CLAOpeBOut[3]~output_o\);

-- Location: IOIBUF_X10_Y16_N8
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

-- Location: IOIBUF_X10_Y19_N8
\OpeA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpeA(0),
	o => \OpeA[0]~input_o\);

-- Location: LCCOMB_X11_Y19_N16
\CLAOpeAOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLAOpeAOut~0_combout\ = (!\operation~input_o\ & \OpeA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operation~input_o\,
	datad => \OpeA[0]~input_o\,
	combout => \CLAOpeAOut~0_combout\);

-- Location: IOIBUF_X10_Y15_N22
\OpeA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpeA(1),
	o => \OpeA[1]~input_o\);

-- Location: LCCOMB_X11_Y19_N18
\CLAOpeAOut~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLAOpeAOut~1_combout\ = (!\operation~input_o\ & \OpeA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation~input_o\,
	datac => \OpeA[1]~input_o\,
	combout => \CLAOpeAOut~1_combout\);

-- Location: IOIBUF_X10_Y18_N22
\OpeA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpeA(2),
	o => \OpeA[2]~input_o\);

-- Location: LCCOMB_X11_Y18_N16
\CLAOpeAOut~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLAOpeAOut~2_combout\ = (!\operation~input_o\ & \OpeA[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operation~input_o\,
	datad => \OpeA[2]~input_o\,
	combout => \CLAOpeAOut~2_combout\);

-- Location: IOIBUF_X10_Y19_N22
\OpeA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpeA(3),
	o => \OpeA[3]~input_o\);

-- Location: IOIBUF_X10_Y19_N1
\OpeB[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpeB(2),
	o => \OpeB[2]~input_o\);

-- Location: IOIBUF_X10_Y22_N22
\OpeB[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpeB(3),
	o => \OpeB[3]~input_o\);

-- Location: LCCOMB_X11_Y19_N24
\erorOverflow~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \erorOverflow~1_combout\ = (\OpeA[2]~input_o\ & ((\OpeB[2]~input_o\) # ((\OpeA[1]~input_o\ & \OpeB[3]~input_o\)))) # (!\OpeA[2]~input_o\ & (((\OpeA[1]~input_o\ & \OpeB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpeA[2]~input_o\,
	datab => \OpeB[2]~input_o\,
	datac => \OpeA[1]~input_o\,
	datad => \OpeB[3]~input_o\,
	combout => \erorOverflow~1_combout\);

-- Location: IOIBUF_X10_Y17_N1
\OpeB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpeB(0),
	o => \OpeB[0]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\OpeB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpeB(1),
	o => \OpeB[1]~input_o\);

-- Location: LCCOMB_X11_Y19_N6
\erorOverflow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \erorOverflow~0_combout\ = (\OpeA[3]~input_o\ & ((\OpeB[1]~input_o\) # ((\OpeB[3]~input_o\) # (\OpeB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpeB[1]~input_o\,
	datab => \OpeB[3]~input_o\,
	datac => \OpeB[2]~input_o\,
	datad => \OpeA[3]~input_o\,
	combout => \erorOverflow~0_combout\);

-- Location: LCCOMB_X11_Y19_N26
\Tempmulti1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- Tempmulti1(3) = (\OpeA[3]~input_o\ & (\OpeB[0]~input_o\ & ((\erorOverflow~1_combout\) # (\erorOverflow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpeA[3]~input_o\,
	datab => \erorOverflow~1_combout\,
	datac => \OpeB[0]~input_o\,
	datad => \erorOverflow~0_combout\,
	combout => Tempmulti1(3));

-- Location: LCCOMB_X11_Y19_N28
\Tempmulti2[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tempmulti2[3]~0_combout\ = (\OpeB[1]~input_o\ & \OpeA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpeB[1]~input_o\,
	datad => \OpeA[3]~input_o\,
	combout => \Tempmulti2[3]~0_combout\);

-- Location: LCCOMB_X11_Y19_N20
\add0|Res[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|Res[3]~0_combout\ = (Tempmulti1(3) & (\Tempmulti2[3]~0_combout\ $ (VCC))) # (!Tempmulti1(3) & (\Tempmulti2[3]~0_combout\ & VCC))
-- \add0|Res[3]~1\ = CARRY((Tempmulti1(3) & \Tempmulti2[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Tempmulti1(3),
	datab => \Tempmulti2[3]~0_combout\,
	datad => VCC,
	combout => \add0|Res[3]~0_combout\,
	cout => \add0|Res[3]~1\);

-- Location: LCCOMB_X11_Y19_N22
\add0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|Add0~0_combout\ = \add0|Res[3]~1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \add0|Res[3]~1\,
	combout => \add0|Add0~0_combout\);

-- Location: LCCOMB_X11_Y19_N12
\CLAOpeAOut~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLAOpeAOut~3_combout\ = (\erorOverflow~1_combout\) # ((\add0|Add0~0_combout\) # (\erorOverflow~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \erorOverflow~1_combout\,
	datac => \add0|Add0~0_combout\,
	datad => \erorOverflow~0_combout\,
	combout => \CLAOpeAOut~3_combout\);

-- Location: LCCOMB_X11_Y19_N14
\CLAOpeAOut~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLAOpeAOut~4_combout\ = (\operation~input_o\ & (((\add0|Res[3]~0_combout\ & !\CLAOpeAOut~3_combout\)))) # (!\operation~input_o\ & (\OpeA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpeA[3]~input_o\,
	datab => \add0|Res[3]~0_combout\,
	datac => \operation~input_o\,
	datad => \CLAOpeAOut~3_combout\,
	combout => \CLAOpeAOut~4_combout\);

-- Location: LCCOMB_X11_Y19_N0
\CLAOpeBOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLAOpeBOut~0_combout\ = (\OpeB[0]~input_o\ & !\operation~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OpeB[0]~input_o\,
	datac => \operation~input_o\,
	combout => \CLAOpeBOut~0_combout\);

-- Location: LCCOMB_X11_Y19_N2
\CLAOpeBOut~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLAOpeBOut~1_combout\ = (!\operation~input_o\ & \OpeB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operation~input_o\,
	datad => \OpeB[1]~input_o\,
	combout => \CLAOpeBOut~1_combout\);

-- Location: LCCOMB_X11_Y19_N8
\CLAOpeBOut~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLAOpeBOut~2_combout\ = (\OpeB[2]~input_o\ & !\operation~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OpeB[2]~input_o\,
	datac => \operation~input_o\,
	combout => \CLAOpeBOut~2_combout\);

-- Location: LCCOMB_X11_Y19_N10
\CLAOpeBOut~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLAOpeBOut~3_combout\ = (!\operation~input_o\ & \OpeB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operation~input_o\,
	datad => \OpeB[3]~input_o\,
	combout => \CLAOpeBOut~3_combout\);

-- Location: IOIBUF_X31_Y5_N15
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

-- Location: UNVM_X0_Y11_N40
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_CLAOpeAOut(0) <= \CLAOpeAOut[0]~output_o\;

ww_CLAOpeAOut(1) <= \CLAOpeAOut[1]~output_o\;

ww_CLAOpeAOut(2) <= \CLAOpeAOut[2]~output_o\;

ww_CLAOpeAOut(3) <= \CLAOpeAOut[3]~output_o\;

ww_CLAOpeBOut(0) <= \CLAOpeBOut[0]~output_o\;

ww_CLAOpeBOut(1) <= \CLAOpeBOut[1]~output_o\;

ww_CLAOpeBOut(2) <= \CLAOpeBOut[2]~output_o\;

ww_CLAOpeBOut(3) <= \CLAOpeBOut[3]~output_o\;
END structure;


