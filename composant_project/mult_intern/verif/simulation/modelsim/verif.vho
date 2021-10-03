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

-- DATE "10/03/2021 12:27:54"

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

ENTITY 	ErorControlMulti IS
    PORT (
	ASigne : IN std_logic;
	BSigne : IN std_logic;
	mode : IN std_logic;
	ResMulti : IN std_logic_vector(7 DOWNTO 0);
	ResOut : OUT std_logic_vector(3 DOWNTO 0);
	erorTotale : OUT std_logic
	);
END ErorControlMulti;

-- Design Ports Information
-- ASigne	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSigne	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResOut[0]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResOut[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResOut[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResOut[3]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erorTotale	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResMulti[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResMulti[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResMulti[4]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResMulti[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResMulti[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResMulti[7]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResMulti[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResMulti[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ErorControlMulti IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ASigne : std_logic;
SIGNAL ww_BSigne : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_ResMulti : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ResOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_erorTotale : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ASigne~input_o\ : std_logic;
SIGNAL \BSigne~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ResOut[0]~output_o\ : std_logic;
SIGNAL \ResOut[1]~output_o\ : std_logic;
SIGNAL \ResOut[2]~output_o\ : std_logic;
SIGNAL \ResOut[3]~output_o\ : std_logic;
SIGNAL \erorTotale~output_o\ : std_logic;
SIGNAL \ResMulti[0]~input_o\ : std_logic;
SIGNAL \ResMulti[3]~input_o\ : std_logic;
SIGNAL \ResMulti[5]~input_o\ : std_logic;
SIGNAL \ResMulti[7]~input_o\ : std_logic;
SIGNAL \ResMulti[6]~input_o\ : std_logic;
SIGNAL \ResMulti[4]~input_o\ : std_logic;
SIGNAL \tempEror~0_combout\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \tempEror~1_combout\ : std_logic;
SIGNAL \TempRes~2_combout\ : std_logic;
SIGNAL \ResMulti[1]~input_o\ : std_logic;
SIGNAL \TempRes~3_combout\ : std_logic;
SIGNAL \ResMulti[2]~input_o\ : std_logic;
SIGNAL \TempRes~4_combout\ : std_logic;
SIGNAL \TempRes~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ASigne <= ASigne;
ww_BSigne <= BSigne;
ww_mode <= mode;
ww_ResMulti <= ResMulti;
ResOut <= ww_ResOut;
erorTotale <= ww_erorTotale;
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

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: IOOBUF_X20_Y0_N9
\ResOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TempRes~2_combout\,
	devoe => ww_devoe,
	o => \ResOut[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\ResOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TempRes~3_combout\,
	devoe => ww_devoe,
	o => \ResOut[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\ResOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TempRes~4_combout\,
	devoe => ww_devoe,
	o => \ResOut[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\ResOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TempRes~5_combout\,
	devoe => ww_devoe,
	o => \ResOut[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\erorTotale~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tempEror~1_combout\,
	devoe => ww_devoe,
	o => \erorTotale~output_o\);

-- Location: IOIBUF_X24_Y0_N1
\ResMulti[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResMulti(0),
	o => \ResMulti[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N22
\ResMulti[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResMulti(3),
	o => \ResMulti[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\ResMulti[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResMulti(5),
	o => \ResMulti[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N29
\ResMulti[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResMulti(7),
	o => \ResMulti[7]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\ResMulti[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResMulti(6),
	o => \ResMulti[6]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\ResMulti[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResMulti(4),
	o => \ResMulti[4]~input_o\);

-- Location: LCCOMB_X23_Y1_N24
\tempEror~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempEror~0_combout\ = (\ResMulti[5]~input_o\ & (((\ResMulti[7]~input_o\ & \ResMulti[6]~input_o\)) # (!\ResMulti[4]~input_o\))) # (!\ResMulti[5]~input_o\ & (!\ResMulti[4]~input_o\ & ((\ResMulti[7]~input_o\) # (\ResMulti[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResMulti[5]~input_o\,
	datab => \ResMulti[7]~input_o\,
	datac => \ResMulti[6]~input_o\,
	datad => \ResMulti[4]~input_o\,
	combout => \tempEror~0_combout\);

-- Location: IOIBUF_X24_Y0_N15
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

-- Location: LCCOMB_X23_Y1_N2
\tempEror~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempEror~1_combout\ = (\tempEror~0_combout\ & (((!\ResMulti[4]~input_o\) # (!\mode~input_o\)) # (!\ResMulti[3]~input_o\))) # (!\tempEror~0_combout\ & ((\ResMulti[4]~input_o\) # ((\ResMulti[3]~input_o\ & \mode~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResMulti[3]~input_o\,
	datab => \tempEror~0_combout\,
	datac => \mode~input_o\,
	datad => \ResMulti[4]~input_o\,
	combout => \tempEror~1_combout\);

-- Location: LCCOMB_X23_Y1_N4
\TempRes~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TempRes~2_combout\ = (\ResMulti[0]~input_o\ & !\tempEror~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ResMulti[0]~input_o\,
	datad => \tempEror~1_combout\,
	combout => \TempRes~2_combout\);

-- Location: IOIBUF_X22_Y0_N29
\ResMulti[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResMulti(1),
	o => \ResMulti[1]~input_o\);

-- Location: LCCOMB_X23_Y1_N6
\TempRes~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TempRes~3_combout\ = (\ResMulti[1]~input_o\ & !\tempEror~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResMulti[1]~input_o\,
	datad => \tempEror~1_combout\,
	combout => \TempRes~3_combout\);

-- Location: IOIBUF_X24_Y0_N8
\ResMulti[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResMulti(2),
	o => \ResMulti[2]~input_o\);

-- Location: LCCOMB_X23_Y1_N8
\TempRes~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TempRes~4_combout\ = (!\tempEror~1_combout\ & \ResMulti[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempEror~1_combout\,
	datad => \ResMulti[2]~input_o\,
	combout => \TempRes~4_combout\);

-- Location: LCCOMB_X23_Y1_N26
\TempRes~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TempRes~5_combout\ = (\ResMulti[3]~input_o\ & ((\tempEror~0_combout\ & (\mode~input_o\ & \ResMulti[4]~input_o\)) # (!\tempEror~0_combout\ & (!\mode~input_o\ & !\ResMulti[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResMulti[3]~input_o\,
	datab => \tempEror~0_combout\,
	datac => \mode~input_o\,
	datad => \ResMulti[4]~input_o\,
	combout => \TempRes~5_combout\);

-- Location: IOIBUF_X51_Y54_N1
\ASigne~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASigne,
	o => \ASigne~input_o\);

-- Location: IOIBUF_X78_Y49_N8
\BSigne~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSigne,
	o => \BSigne~input_o\);

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

ww_ResOut(0) <= \ResOut[0]~output_o\;

ww_ResOut(1) <= \ResOut[1]~output_o\;

ww_ResOut(2) <= \ResOut[2]~output_o\;

ww_ResOut(3) <= \ResOut[3]~output_o\;

ww_erorTotale <= \erorTotale~output_o\;
END structure;


