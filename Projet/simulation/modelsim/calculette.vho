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

-- DATE "09/15/2021 07:55:32"

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

ENTITY 	separateur_diz_unit IS
    PORT (
	input : IN std_logic_vector(5 DOWNTO 0);
	dizaine : OUT std_logic_vector(3 DOWNTO 0);
	unite : OUT std_logic_vector(3 DOWNTO 0)
	);
END separateur_diz_unit;

-- Design Ports Information
-- dizaine[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dizaine[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dizaine[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dizaine[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unite[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unite[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unite[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unite[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF separateur_diz_unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_dizaine : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_unite : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \dizaine[0]~output_o\ : std_logic;
SIGNAL \dizaine[1]~output_o\ : std_logic;
SIGNAL \dizaine[2]~output_o\ : std_logic;
SIGNAL \dizaine[3]~output_o\ : std_logic;
SIGNAL \unite[0]~output_o\ : std_logic;
SIGNAL \unite[1]~output_o\ : std_logic;
SIGNAL \unite[2]~output_o\ : std_logic;
SIGNAL \unite[3]~output_o\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[3]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[177]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[177]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[176]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[176]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[175]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[175]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[174]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[174]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[178]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[184]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[184]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[183]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[183]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[182]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[182]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[181]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[181]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[180]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[180]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[3]~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input <= input;
dizaine <= ww_dizaine;
unite <= ww_unite;
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

-- Location: LCCOMB_X44_Y50_N16
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

-- Location: IOOBUF_X66_Y54_N23
\dizaine[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|quotient[0]~0_combout\,
	devoe => ww_devoe,
	o => \dizaine[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\dizaine[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|quotient[1]~1_combout\,
	devoe => ww_devoe,
	o => \dizaine[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\dizaine[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|quotient[2]~2_combout\,
	devoe => ww_devoe,
	o => \dizaine[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\dizaine[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|quotient[3]~3_combout\,
	devoe => ww_devoe,
	o => \dizaine[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\unite[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[0]~input_o\,
	devoe => ww_devoe,
	o => \unite[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\unite[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[1]~input_o\,
	devoe => ww_devoe,
	o => \unite[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\unite[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[2]~input_o\,
	devoe => ww_devoe,
	o => \unite[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\unite[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[3]~input_o\,
	devoe => ww_devoe,
	o => \unite[3]~output_o\);

-- Location: IOIBUF_X18_Y0_N22
\input[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\input[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\input[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\input[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\input[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\input[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X27_Y21_N0
\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ = (!\input[1]~input_o\ & (!\input[0]~input_o\ & (!\input[2]~input_o\ & \input[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[5]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\);

-- Location: LCCOMB_X26_Y20_N8
\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((\input[5]~input_o\ & (!\input[4]~input_o\ & !\input[3]~input_o\)) # (!\input[5]~input_o\ & (\input[4]~input_o\ & 
-- \input[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datab => \input[4]~input_o\,
	datac => \input[3]~input_o\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\);

-- Location: LCCOMB_X26_Y20_N10
\Div0|auto_generated|divider|my_abs_num|cs2a[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\ = \input[4]~input_o\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((\input[3]~input_o\))) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & 
-- (\input[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datab => \input[4]~input_o\,
	datac => \input[3]~input_o\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\);

-- Location: LCCOMB_X26_Y20_N28
\Div0|auto_generated|divider|my_abs_num|cs2a[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[3]~3_combout\ = \input[5]~input_o\ $ (\input[3]~input_o\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datac => \input[3]~input_o\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~3_combout\);

-- Location: LCCOMB_X26_Y20_N14
\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = \Div0|auto_generated|divider|my_abs_num|cs2a[3]~3_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY(\Div0|auto_generated|divider|my_abs_num|cs2a[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~3_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X26_Y20_N16
\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\ & (\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & VCC)) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X26_Y20_N18
\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & (\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ $ (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X26_Y20_N20
\Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\);

-- Location: LCCOMB_X26_Y20_N22
\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\);

-- Location: LCCOMB_X26_Y20_N24
\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\);

-- Location: LCCOMB_X26_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[177]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[177]~21_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[177]~21_combout\);

-- Location: LCCOMB_X26_Y20_N2
\Div0|auto_generated|divider|divider|StageOut[177]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[177]~22_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[177]~22_combout\);

-- Location: LCCOMB_X27_Y20_N10
\Div0|auto_generated|divider|divider|StageOut[176]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[176]~24_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[176]~24_combout\);

-- Location: LCCOMB_X27_Y20_N16
\Div0|auto_generated|divider|divider|StageOut[176]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[176]~23_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[176]~23_combout\);

-- Location: LCCOMB_X26_Y20_N12
\Div0|auto_generated|divider|divider|StageOut[175]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[175]~25_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[175]~25_combout\);

-- Location: LCCOMB_X26_Y20_N26
\Div0|auto_generated|divider|divider|StageOut[175]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[175]~35_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\input[5]~input_o\ $ (\input[3]~input_o\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \input[3]~input_o\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[175]~35_combout\);

-- Location: LCCOMB_X27_Y21_N2
\Div0|auto_generated|divider|my_abs_num|cs2a[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[2]~4_combout\ = \input[2]~input_o\ $ (((\input[5]~input_o\ & ((\input[1]~input_o\) # (\input[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[5]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~4_combout\);

-- Location: LCCOMB_X27_Y20_N4
\Div0|auto_generated|divider|divider|StageOut[174]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[174]~26_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \Div0|auto_generated|divider|my_abs_num|cs2a[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[174]~26_combout\);

-- Location: LCCOMB_X27_Y20_N14
\Div0|auto_generated|divider|divider|StageOut[174]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[174]~27_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \Div0|auto_generated|divider|my_abs_num|cs2a[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[174]~27_combout\);

-- Location: LCCOMB_X27_Y20_N18
\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[174]~26_combout\) # (\Div0|auto_generated|divider|divider|StageOut[174]~27_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[174]~26_combout\) # (\Div0|auto_generated|divider|divider|StageOut[174]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[174]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[174]~27_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X27_Y20_N20
\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[175]~25_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[175]~35_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[175]~25_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[175]~35_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[175]~25_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[175]~35_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[175]~25_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[175]~35_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X27_Y20_N22
\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[176]~24_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[176]~23_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[176]~24_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[176]~23_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[176]~24_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[176]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[176]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[176]~23_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X27_Y20_N24
\Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (((\Div0|auto_generated|divider|divider|StageOut[177]~21_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[177]~22_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (!\Div0|auto_generated|divider|divider|StageOut[177]~21_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[177]~22_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[177]~21_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[177]~22_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[177]~21_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[177]~22_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\);

-- Location: LCCOMB_X26_Y20_N6
\Div0|auto_generated|divider|divider|StageOut[178]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[178]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[178]~20_combout\);

-- Location: LCCOMB_X27_Y20_N26
\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[178]~20_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[178]~20_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\);

-- Location: LCCOMB_X27_Y20_N28
\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\);

-- Location: LCCOMB_X27_Y20_N8
\Div0|auto_generated|divider|divider|StageOut[184]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[184]~28_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[184]~28_combout\);

-- Location: LCCOMB_X26_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[184]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[184]~37_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[184]~37_combout\);

-- Location: LCCOMB_X27_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[183]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[183]~38_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[183]~38_combout\);

-- Location: LCCOMB_X27_Y20_N2
\Div0|auto_generated|divider|divider|StageOut[183]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[183]~29_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[183]~29_combout\);

-- Location: LCCOMB_X26_Y20_N4
\Div0|auto_generated|divider|divider|StageOut[182]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[182]~36_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[175]~35_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[175]~35_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[182]~36_combout\);

-- Location: LCCOMB_X27_Y20_N12
\Div0|auto_generated|divider|divider|StageOut[182]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[182]~30_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[182]~30_combout\);

-- Location: LCCOMB_X27_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[181]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[181]~32_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[181]~32_combout\);

-- Location: LCCOMB_X27_Y20_N6
\Div0|auto_generated|divider|divider|StageOut[181]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[181]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \Div0|auto_generated|divider|my_abs_num|cs2a[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[181]~31_combout\);

-- Location: LCCOMB_X27_Y21_N6
\Div0|auto_generated|divider|divider|StageOut[180]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[180]~34_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & (\input[1]~input_o\ $ (((\input[0]~input_o\ & \input[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \input[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \input[5]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[180]~34_combout\);

-- Location: LCCOMB_X27_Y21_N4
\Div0|auto_generated|divider|divider|StageOut[180]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[180]~33_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & (\input[1]~input_o\ $ (((\input[0]~input_o\ & \input[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \input[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \input[5]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[180]~33_combout\);

-- Location: LCCOMB_X27_Y21_N8
\Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[180]~34_combout\) # (\Div0|auto_generated|divider|divider|StageOut[180]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[180]~34_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[180]~33_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X27_Y21_N10
\Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[181]~32_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[181]~31_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[181]~32_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[181]~31_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X27_Y21_N12
\Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[182]~36_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[182]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[182]~36_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[182]~30_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X27_Y21_N14
\Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[183]~38_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[183]~29_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[183]~38_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[183]~29_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X27_Y21_N16
\Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[184]~28_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[184]~37_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[184]~28_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[184]~37_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X27_Y21_N18
\Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\);

-- Location: LCCOMB_X27_Y21_N24
\Div0|auto_generated|divider|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ $ (VCC)
-- \Div0|auto_generated|divider|op_1~1\ = CARRY(\Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X27_Y21_N20
\Div0|auto_generated|divider|quotient[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[0]~0_combout\ = (\input[5]~input_o\ & ((\Div0|auto_generated|divider|op_1~0_combout\))) # (!\input[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datac => \input[5]~input_o\,
	datad => \Div0|auto_generated|divider|op_1~0_combout\,
	combout => \Div0|auto_generated|divider|quotient[0]~0_combout\);

-- Location: LCCOMB_X27_Y21_N26
\Div0|auto_generated|divider|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & (!\Div0|auto_generated|divider|op_1~1\)) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~1\) # (GND)))
-- \Div0|auto_generated|divider|op_1~3\ = CARRY((!\Div0|auto_generated|divider|op_1~1\) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X26_Y21_N0
\Div0|auto_generated|divider|quotient[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[1]~1_combout\ = (\input[5]~input_o\ & ((\Div0|auto_generated|divider|op_1~2_combout\))) # (!\input[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \input[5]~input_o\,
	datad => \Div0|auto_generated|divider|op_1~2_combout\,
	combout => \Div0|auto_generated|divider|quotient[1]~1_combout\);

-- Location: LCCOMB_X27_Y21_N28
\Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\Div0|auto_generated|divider|op_1~3\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~3\ & VCC))
-- \Div0|auto_generated|divider|op_1~5\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X27_Y21_N22
\Div0|auto_generated|divider|quotient[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[2]~2_combout\ = (\input[5]~input_o\ & ((\Div0|auto_generated|divider|op_1~4_combout\))) # (!\input[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[5]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|op_1~4_combout\,
	combout => \Div0|auto_generated|divider|quotient[2]~2_combout\);

-- Location: LCCOMB_X27_Y21_N30
\Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~6_combout\ = !\Div0|auto_generated|divider|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|op_1~5\,
	combout => \Div0|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X26_Y21_N10
\Div0|auto_generated|divider|quotient[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[3]~3_combout\ = (\input[5]~input_o\ & \Div0|auto_generated|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datac => \Div0|auto_generated|divider|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|quotient[3]~3_combout\);

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

ww_dizaine(0) <= \dizaine[0]~output_o\;

ww_dizaine(1) <= \dizaine[1]~output_o\;

ww_dizaine(2) <= \dizaine[2]~output_o\;

ww_dizaine(3) <= \dizaine[3]~output_o\;

ww_unite(0) <= \unite[0]~output_o\;

ww_unite(1) <= \unite[1]~output_o\;

ww_unite(2) <= \unite[2]~output_o\;

ww_unite(3) <= \unite[3]~output_o\;
END structure;


