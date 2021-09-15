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

-- DATE "09/15/2021 11:50:26"

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

ENTITY 	calculette IS
    PORT (
	opeA : IN std_logic_vector(3 DOWNTO 0);
	opeB : IN std_logic_vector(3 DOWNTO 0);
	ledsA0 : OUT std_logic_vector(6 DOWNTO 0);
	ledsB0 : OUT std_logic_vector(6 DOWNTO 0);
	ledsRes0 : OUT std_logic_vector(6 DOWNTO 0);
	ledsA1 : OUT std_logic_vector(6 DOWNTO 0);
	ledsB1 : OUT std_logic_vector(6 DOWNTO 0);
	ledsRes1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END calculette;

-- Design Ports Information
-- ledsA0[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA0[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA0[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA0[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA0[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA0[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA0[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB0[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB0[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB0[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB0[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB0[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB0[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB0[6]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes0[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes0[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes0[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes0[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes0[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes0[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes0[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA1[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA1[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA1[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA1[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA1[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA1[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsA1[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB1[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB1[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB1[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB1[3]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB1[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB1[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsB1[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes1[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes1[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes1[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes1[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes1[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes1[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsRes1[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeA[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeA[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeA[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeB[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeB[2]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeB[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeA[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeB[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF calculette IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opeA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_opeB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledsA0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledsB0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledsRes0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledsA1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledsB1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledsRes1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ledsA0[0]~output_o\ : std_logic;
SIGNAL \ledsA0[1]~output_o\ : std_logic;
SIGNAL \ledsA0[2]~output_o\ : std_logic;
SIGNAL \ledsA0[3]~output_o\ : std_logic;
SIGNAL \ledsA0[4]~output_o\ : std_logic;
SIGNAL \ledsA0[5]~output_o\ : std_logic;
SIGNAL \ledsA0[6]~output_o\ : std_logic;
SIGNAL \ledsB0[0]~output_o\ : std_logic;
SIGNAL \ledsB0[1]~output_o\ : std_logic;
SIGNAL \ledsB0[2]~output_o\ : std_logic;
SIGNAL \ledsB0[3]~output_o\ : std_logic;
SIGNAL \ledsB0[4]~output_o\ : std_logic;
SIGNAL \ledsB0[5]~output_o\ : std_logic;
SIGNAL \ledsB0[6]~output_o\ : std_logic;
SIGNAL \ledsRes0[0]~output_o\ : std_logic;
SIGNAL \ledsRes0[1]~output_o\ : std_logic;
SIGNAL \ledsRes0[2]~output_o\ : std_logic;
SIGNAL \ledsRes0[3]~output_o\ : std_logic;
SIGNAL \ledsRes0[4]~output_o\ : std_logic;
SIGNAL \ledsRes0[5]~output_o\ : std_logic;
SIGNAL \ledsRes0[6]~output_o\ : std_logic;
SIGNAL \ledsA1[0]~output_o\ : std_logic;
SIGNAL \ledsA1[1]~output_o\ : std_logic;
SIGNAL \ledsA1[2]~output_o\ : std_logic;
SIGNAL \ledsA1[3]~output_o\ : std_logic;
SIGNAL \ledsA1[4]~output_o\ : std_logic;
SIGNAL \ledsA1[5]~output_o\ : std_logic;
SIGNAL \ledsA1[6]~output_o\ : std_logic;
SIGNAL \ledsB1[0]~output_o\ : std_logic;
SIGNAL \ledsB1[1]~output_o\ : std_logic;
SIGNAL \ledsB1[2]~output_o\ : std_logic;
SIGNAL \ledsB1[3]~output_o\ : std_logic;
SIGNAL \ledsB1[4]~output_o\ : std_logic;
SIGNAL \ledsB1[5]~output_o\ : std_logic;
SIGNAL \ledsB1[6]~output_o\ : std_logic;
SIGNAL \ledsRes1[0]~output_o\ : std_logic;
SIGNAL \ledsRes1[1]~output_o\ : std_logic;
SIGNAL \ledsRes1[2]~output_o\ : std_logic;
SIGNAL \ledsRes1[3]~output_o\ : std_logic;
SIGNAL \ledsRes1[4]~output_o\ : std_logic;
SIGNAL \ledsRes1[5]~output_o\ : std_logic;
SIGNAL \ledsRes1[6]~output_o\ : std_logic;
SIGNAL \opeA[3]~input_o\ : std_logic;
SIGNAL \opeA[2]~input_o\ : std_logic;
SIGNAL \opeA[1]~input_o\ : std_logic;
SIGNAL \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \opeB[3]~input_o\ : std_logic;
SIGNAL \opeB[2]~input_o\ : std_logic;
SIGNAL \opeB[1]~input_o\ : std_logic;
SIGNAL \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \add_u0|add11|f2|new_restraint~0_combout\ : std_logic;
SIGNAL \add_u0|add11|f3|new_restraint~0_combout\ : std_logic;
SIGNAL \sep1|Add1~1_combout\ : std_logic;
SIGNAL \opeA[0]~input_o\ : std_logic;
SIGNAL \sep1|Add1~0_combout\ : std_logic;
SIGNAL \sep1|Add1~2_combout\ : std_logic;
SIGNAL \seg1|Mux6~0_combout\ : std_logic;
SIGNAL \seg1|Mux5~0_combout\ : std_logic;
SIGNAL \seg1|Mux4~0_combout\ : std_logic;
SIGNAL \seg1|Mux3~0_combout\ : std_logic;
SIGNAL \seg1|Mux2~0_combout\ : std_logic;
SIGNAL \seg1|Mux1~0_combout\ : std_logic;
SIGNAL \seg1|Mux0~0_combout\ : std_logic;
SIGNAL \sep2|Add1~0_combout\ : std_logic;
SIGNAL \opeB[0]~input_o\ : std_logic;
SIGNAL \sep2|Add1~2_combout\ : std_logic;
SIGNAL \sep2|Add1~1_combout\ : std_logic;
SIGNAL \seg3|Mux6~0_combout\ : std_logic;
SIGNAL \seg3|Mux5~0_combout\ : std_logic;
SIGNAL \seg3|Mux4~0_combout\ : std_logic;
SIGNAL \seg3|Mux3~0_combout\ : std_logic;
SIGNAL \seg3|Mux2~0_combout\ : std_logic;
SIGNAL \seg3|Mux1~0_combout\ : std_logic;
SIGNAL \seg3|Mux0~0_combout\ : std_logic;
SIGNAL \seg3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \seg1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \add_u0|add11|f3|ALT_INV_new_restraint~0_combout\ : std_logic;
SIGNAL \sep2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \sep1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_opeA <= opeA;
ww_opeB <= opeB;
ledsA0 <= ww_ledsA0;
ledsB0 <= ww_ledsB0;
ledsRes0 <= ww_ledsRes0;
ledsA1 <= ww_ledsA1;
ledsB1 <= ww_ledsB1;
ledsRes1 <= ww_ledsRes1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\seg3|ALT_INV_Mux0~0_combout\ <= NOT \seg3|Mux0~0_combout\;
\seg1|ALT_INV_Mux0~0_combout\ <= NOT \seg1|Mux0~0_combout\;
\add_u0|add11|f3|ALT_INV_new_restraint~0_combout\ <= NOT \add_u0|add11|f3|new_restraint~0_combout\;
\sep2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
\sep1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
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

-- Location: IOOBUF_X34_Y39_N16
\ledsA0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sep1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \ledsA0[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\ledsA0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsA0[1]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\ledsA0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsA0[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\ledsA0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sep1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \ledsA0[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\ledsA0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sep1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \ledsA0[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\ledsA0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sep1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \ledsA0[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\ledsA0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ledsA0[6]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\ledsB0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sep2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \ledsB0[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\ledsB0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsB0[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\ledsB0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsB0[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\ledsB0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sep2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \ledsB0[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\ledsB0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sep2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \ledsB0[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\ledsB0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sep2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \ledsB0[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\ledsB0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ledsB0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\ledsRes0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_u0|add11|f3|new_restraint~0_combout\,
	devoe => ww_devoe,
	o => \ledsRes0[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\ledsRes0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsRes0[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\ledsRes0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsRes0[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\ledsRes0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_u0|add11|f3|new_restraint~0_combout\,
	devoe => ww_devoe,
	o => \ledsRes0[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\ledsRes0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_u0|add11|f3|new_restraint~0_combout\,
	devoe => ww_devoe,
	o => \ledsRes0[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\ledsRes0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_u0|add11|f3|new_restraint~0_combout\,
	devoe => ww_devoe,
	o => \ledsRes0[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\ledsRes0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ledsRes0[6]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\ledsA1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ledsA1[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\ledsA1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ledsA1[1]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\ledsA1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ledsA1[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\ledsA1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ledsA1[3]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\ledsA1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ledsA1[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\ledsA1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ledsA1[5]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\ledsA1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ledsA1[6]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\ledsB1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ledsB1[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\ledsB1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ledsB1[1]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\ledsB1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ledsB1[2]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\ledsB1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ledsB1[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\ledsB1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ledsB1[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\ledsB1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ledsB1[5]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\ledsB1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ledsB1[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\ledsRes1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsRes1[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\ledsRes1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_u0|add11|f3|new_restraint~0_combout\,
	devoe => ww_devoe,
	o => \ledsRes1[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\ledsRes1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsRes1[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\ledsRes1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsRes1[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\ledsRes1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsRes1[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\ledsRes1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsRes1[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\ledsRes1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_u0|add11|f3|ALT_INV_new_restraint~0_combout\,
	devoe => ww_devoe,
	o => \ledsRes1[6]~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\opeA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opeA(3),
	o => \opeA[3]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\opeA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opeA(2),
	o => \opeA[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\opeA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opeA(1),
	o => \opeA[1]~input_o\);

-- Location: LCCOMB_X29_Y35_N14
\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY(\opeA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opeA[1]~input_o\,
	datad => VCC,
	cout => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X29_Y35_N16
\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\opeA[2]~input_o\ & !\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \opeA[2]~input_o\,
	datad => VCC,
	cin => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X29_Y35_N18
\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((\opeA[3]~input_o\ & !\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \opeA[3]~input_o\,
	datad => VCC,
	cin => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X29_Y35_N20
\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y35_N22
\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: IOIBUF_X14_Y0_N8
\opeB[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opeB(3),
	o => \opeB[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\opeB[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opeB(2),
	o => \opeB[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\opeB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opeB(1),
	o => \opeB[1]~input_o\);

-- Location: LCCOMB_X24_Y35_N18
\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY(\opeB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opeB[1]~input_o\,
	datad => VCC,
	cout => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X24_Y35_N20
\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\opeB[2]~input_o\ & !\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \opeB[2]~input_o\,
	datad => VCC,
	cin => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X24_Y35_N22
\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((\opeB[3]~input_o\ & !\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \opeB[3]~input_o\,
	datad => VCC,
	cin => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X24_Y35_N24
\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y35_N26
\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y35_N8
\add_u0|add11|f2|new_restraint~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_u0|add11|f2|new_restraint~0_combout\ = (\opeB[2]~input_o\ & ((\opeA[2]~input_o\) # ((\opeA[1]~input_o\ & \opeB[1]~input_o\)))) # (!\opeB[2]~input_o\ & (\opeA[1]~input_o\ & (\opeB[1]~input_o\ & \opeA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opeB[2]~input_o\,
	datab => \opeA[1]~input_o\,
	datac => \opeB[1]~input_o\,
	datad => \opeA[2]~input_o\,
	combout => \add_u0|add11|f2|new_restraint~0_combout\);

-- Location: LCCOMB_X25_Y35_N8
\add_u0|add11|f3|new_restraint~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_u0|add11|f3|new_restraint~0_combout\ = (\opeB[3]~input_o\ & ((\opeA[3]~input_o\) # (\add_u0|add11|f2|new_restraint~0_combout\))) # (!\opeB[3]~input_o\ & (\opeA[3]~input_o\ & \add_u0|add11|f2|new_restraint~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opeB[3]~input_o\,
	datac => \opeA[3]~input_o\,
	datad => \add_u0|add11|f2|new_restraint~0_combout\,
	combout => \add_u0|add11|f3|new_restraint~0_combout\);

-- Location: LCCOMB_X29_Y35_N26
\sep1|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep1|Add1~1_combout\ = \opeA[2]~input_o\ $ (((\opeA[1]~input_o\) # (\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opeA[1]~input_o\,
	datac => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \opeA[2]~input_o\,
	combout => \sep1|Add1~1_combout\);

-- Location: IOIBUF_X24_Y0_N29
\opeA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opeA(0),
	o => \opeA[0]~input_o\);

-- Location: LCCOMB_X29_Y35_N8
\sep1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep1|Add1~0_combout\ = \opeA[1]~input_o\ $ (\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opeA[1]~input_o\,
	datac => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sep1|Add1~0_combout\);

-- Location: LCCOMB_X29_Y35_N28
\sep1|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep1|Add1~2_combout\ = \opeA[3]~input_o\ $ (((!\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\opeA[1]~input_o\) # (\opeA[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \opeA[3]~input_o\,
	datac => \opeA[1]~input_o\,
	datad => \opeA[2]~input_o\,
	combout => \sep1|Add1~2_combout\);

-- Location: LCCOMB_X29_Y35_N30
\seg1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg1|Mux6~0_combout\ = (!\sep1|Add1~2_combout\ & ((\sep1|Add1~1_combout\ & (\opeA[0]~input_o\)) # (!\sep1|Add1~1_combout\ & (!\opeA[0]~input_o\ & \sep1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep1|Add1~1_combout\,
	datab => \opeA[0]~input_o\,
	datac => \sep1|Add1~0_combout\,
	datad => \sep1|Add1~2_combout\,
	combout => \seg1|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y35_N0
\seg1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg1|Mux5~0_combout\ = (!\sep1|Add1~2_combout\ & ((\sep1|Add1~1_combout\ & (\opeA[0]~input_o\ & !\sep1|Add1~0_combout\)) # (!\sep1|Add1~1_combout\ & (\opeA[0]~input_o\ $ (!\sep1|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep1|Add1~1_combout\,
	datab => \opeA[0]~input_o\,
	datac => \sep1|Add1~0_combout\,
	datad => \sep1|Add1~2_combout\,
	combout => \seg1|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y35_N10
\seg1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg1|Mux4~0_combout\ = (\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\opeA[3]~input_o\ & (\opeA[1]~input_o\ & !\opeA[2]~input_o\))) # (!\sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\opeA[3]~input_o\ & (!\opeA[1]~input_o\ & \opeA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \opeA[3]~input_o\,
	datac => \opeA[1]~input_o\,
	datad => \opeA[2]~input_o\,
	combout => \seg1|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y35_N4
\seg1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg1|Mux3~0_combout\ = (!\sep1|Add1~2_combout\ & (\opeA[0]~input_o\ $ (((!\sep1|Add1~1_combout\ & \sep1|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep1|Add1~1_combout\,
	datab => \opeA[0]~input_o\,
	datac => \sep1|Add1~0_combout\,
	datad => \sep1|Add1~2_combout\,
	combout => \seg1|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y35_N24
\seg1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg1|Mux2~0_combout\ = (\sep1|Add1~1_combout\ & (\opeA[0]~input_o\ & (\sep1|Add1~0_combout\))) # (!\sep1|Add1~1_combout\ & (!\sep1|Add1~2_combout\ & ((\opeA[0]~input_o\) # (\sep1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep1|Add1~1_combout\,
	datab => \opeA[0]~input_o\,
	datac => \sep1|Add1~0_combout\,
	datad => \sep1|Add1~2_combout\,
	combout => \seg1|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y35_N2
\seg1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg1|Mux1~0_combout\ = (!\sep1|Add1~2_combout\ & ((\sep1|Add1~1_combout\ & (\opeA[0]~input_o\ $ (!\sep1|Add1~0_combout\))) # (!\sep1|Add1~1_combout\ & (\opeA[0]~input_o\ & !\sep1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep1|Add1~1_combout\,
	datab => \opeA[0]~input_o\,
	datac => \sep1|Add1~0_combout\,
	datad => \sep1|Add1~2_combout\,
	combout => \seg1|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y35_N12
\seg1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg1|Mux0~0_combout\ = (\sep1|Add1~2_combout\) # ((\sep1|Add1~0_combout\ & (!\sep1|Add1~1_combout\)) # (!\sep1|Add1~0_combout\ & ((!\opeA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep1|Add1~1_combout\,
	datab => \opeA[0]~input_o\,
	datac => \sep1|Add1~0_combout\,
	datad => \sep1|Add1~2_combout\,
	combout => \seg1|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y35_N10
\sep2|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep2|Add1~0_combout\ = \opeB[1]~input_o\ $ (\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opeB[1]~input_o\,
	datad => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sep2|Add1~0_combout\);

-- Location: IOIBUF_X24_Y0_N8
\opeB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opeB(0),
	o => \opeB[0]~input_o\);

-- Location: LCCOMB_X24_Y35_N6
\sep2|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep2|Add1~2_combout\ = \opeB[3]~input_o\ $ (((!\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\opeB[2]~input_o\) # (\opeB[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opeB[2]~input_o\,
	datab => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \opeB[1]~input_o\,
	datad => \opeB[3]~input_o\,
	combout => \sep2|Add1~2_combout\);

-- Location: LCCOMB_X24_Y35_N28
\sep2|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sep2|Add1~1_combout\ = \opeB[2]~input_o\ $ (((\opeB[1]~input_o\) # (\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opeB[1]~input_o\,
	datab => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \opeB[2]~input_o\,
	combout => \sep2|Add1~1_combout\);

-- Location: LCCOMB_X24_Y35_N16
\seg3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg3|Mux6~0_combout\ = (!\sep2|Add1~2_combout\ & ((\opeB[0]~input_o\ & ((\sep2|Add1~1_combout\))) # (!\opeB[0]~input_o\ & (\sep2|Add1~0_combout\ & !\sep2|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep2|Add1~0_combout\,
	datab => \opeB[0]~input_o\,
	datac => \sep2|Add1~2_combout\,
	datad => \sep2|Add1~1_combout\,
	combout => \seg3|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y35_N2
\seg3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg3|Mux5~0_combout\ = (!\sep2|Add1~2_combout\ & ((\sep2|Add1~0_combout\ & (\opeB[0]~input_o\ & !\sep2|Add1~1_combout\)) # (!\sep2|Add1~0_combout\ & (\opeB[0]~input_o\ $ (!\sep2|Add1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep2|Add1~0_combout\,
	datab => \opeB[0]~input_o\,
	datac => \sep2|Add1~2_combout\,
	datad => \sep2|Add1~1_combout\,
	combout => \seg3|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y35_N4
\seg3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg3|Mux4~0_combout\ = (\opeB[2]~input_o\ & (!\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\opeB[1]~input_o\ & \opeB[3]~input_o\))) # (!\opeB[2]~input_o\ & 
-- (\sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\opeB[1]~input_o\ & !\opeB[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opeB[2]~input_o\,
	datab => \sep2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \opeB[1]~input_o\,
	datad => \opeB[3]~input_o\,
	combout => \seg3|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y35_N30
\seg3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg3|Mux3~0_combout\ = (!\sep2|Add1~2_combout\ & (\opeB[0]~input_o\ $ (((\sep2|Add1~0_combout\ & !\sep2|Add1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep2|Add1~0_combout\,
	datab => \opeB[0]~input_o\,
	datac => \sep2|Add1~2_combout\,
	datad => \sep2|Add1~1_combout\,
	combout => \seg3|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y35_N0
\seg3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg3|Mux2~0_combout\ = (\sep2|Add1~1_combout\ & (\sep2|Add1~0_combout\ & (\opeB[0]~input_o\))) # (!\sep2|Add1~1_combout\ & (!\sep2|Add1~2_combout\ & ((\sep2|Add1~0_combout\) # (\opeB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep2|Add1~0_combout\,
	datab => \opeB[0]~input_o\,
	datac => \sep2|Add1~2_combout\,
	datad => \sep2|Add1~1_combout\,
	combout => \seg3|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y35_N12
\seg3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg3|Mux1~0_combout\ = (!\sep2|Add1~2_combout\ & ((\sep2|Add1~0_combout\ & (\opeB[0]~input_o\ & \sep2|Add1~1_combout\)) # (!\sep2|Add1~0_combout\ & (\opeB[0]~input_o\ $ (\sep2|Add1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep2|Add1~0_combout\,
	datab => \opeB[0]~input_o\,
	datac => \sep2|Add1~2_combout\,
	datad => \sep2|Add1~1_combout\,
	combout => \seg3|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y35_N14
\seg3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg3|Mux0~0_combout\ = (\sep2|Add1~2_combout\) # ((\sep2|Add1~0_combout\ & ((!\sep2|Add1~1_combout\))) # (!\sep2|Add1~0_combout\ & (!\opeB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sep2|Add1~0_combout\,
	datab => \opeB[0]~input_o\,
	datac => \sep2|Add1~2_combout\,
	datad => \sep2|Add1~1_combout\,
	combout => \seg3|Mux0~0_combout\);

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

ww_ledsA0(0) <= \ledsA0[0]~output_o\;

ww_ledsA0(1) <= \ledsA0[1]~output_o\;

ww_ledsA0(2) <= \ledsA0[2]~output_o\;

ww_ledsA0(3) <= \ledsA0[3]~output_o\;

ww_ledsA0(4) <= \ledsA0[4]~output_o\;

ww_ledsA0(5) <= \ledsA0[5]~output_o\;

ww_ledsA0(6) <= \ledsA0[6]~output_o\;

ww_ledsB0(0) <= \ledsB0[0]~output_o\;

ww_ledsB0(1) <= \ledsB0[1]~output_o\;

ww_ledsB0(2) <= \ledsB0[2]~output_o\;

ww_ledsB0(3) <= \ledsB0[3]~output_o\;

ww_ledsB0(4) <= \ledsB0[4]~output_o\;

ww_ledsB0(5) <= \ledsB0[5]~output_o\;

ww_ledsB0(6) <= \ledsB0[6]~output_o\;

ww_ledsRes0(0) <= \ledsRes0[0]~output_o\;

ww_ledsRes0(1) <= \ledsRes0[1]~output_o\;

ww_ledsRes0(2) <= \ledsRes0[2]~output_o\;

ww_ledsRes0(3) <= \ledsRes0[3]~output_o\;

ww_ledsRes0(4) <= \ledsRes0[4]~output_o\;

ww_ledsRes0(5) <= \ledsRes0[5]~output_o\;

ww_ledsRes0(6) <= \ledsRes0[6]~output_o\;

ww_ledsA1(0) <= \ledsA1[0]~output_o\;

ww_ledsA1(1) <= \ledsA1[1]~output_o\;

ww_ledsA1(2) <= \ledsA1[2]~output_o\;

ww_ledsA1(3) <= \ledsA1[3]~output_o\;

ww_ledsA1(4) <= \ledsA1[4]~output_o\;

ww_ledsA1(5) <= \ledsA1[5]~output_o\;

ww_ledsA1(6) <= \ledsA1[6]~output_o\;

ww_ledsB1(0) <= \ledsB1[0]~output_o\;

ww_ledsB1(1) <= \ledsB1[1]~output_o\;

ww_ledsB1(2) <= \ledsB1[2]~output_o\;

ww_ledsB1(3) <= \ledsB1[3]~output_o\;

ww_ledsB1(4) <= \ledsB1[4]~output_o\;

ww_ledsB1(5) <= \ledsB1[5]~output_o\;

ww_ledsB1(6) <= \ledsB1[6]~output_o\;

ww_ledsRes1(0) <= \ledsRes1[0]~output_o\;

ww_ledsRes1(1) <= \ledsRes1[1]~output_o\;

ww_ledsRes1(2) <= \ledsRes1[2]~output_o\;

ww_ledsRes1(3) <= \ledsRes1[3]~output_o\;

ww_ledsRes1(4) <= \ledsRes1[4]~output_o\;

ww_ledsRes1(5) <= \ledsRes1[5]~output_o\;

ww_ledsRes1(6) <= \ledsRes1[6]~output_o\;
END structure;


