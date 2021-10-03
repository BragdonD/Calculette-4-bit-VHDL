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

-- DATE "10/03/2021 11:51:24"

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

ENTITY 	multi4bits IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	mode : IN std_logic;
	Res : OUT std_logic_vector(7 DOWNTO 0)
	);
END multi4bits;

-- Design Ports Information
-- Res[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multi4bits IS
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
SIGNAL ww_mode : std_logic;
SIGNAL ww_Res : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Res[0]~output_o\ : std_logic;
SIGNAL \Res[1]~output_o\ : std_logic;
SIGNAL \Res[2]~output_o\ : std_logic;
SIGNAL \Res[3]~output_o\ : std_logic;
SIGNAL \Res[4]~output_o\ : std_logic;
SIGNAL \Res[5]~output_o\ : std_logic;
SIGNAL \Res[6]~output_o\ : std_logic;
SIGNAL \Res[7]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \ResTemp~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \ResTemp~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Mult1|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Mult1|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \ResTemp~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mult1|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \Mult1|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \ResTemp~3_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \Mult1|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \ResTemp~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \Mult1|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \ResTemp~5_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \Mult1|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \ResTemp~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \Mult1|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \ResTemp~7_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult1|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult1|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_mode <= mode;
Res <= ww_Res;
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

-- Location: LCCOMB_X44_Y46_N16
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

-- Location: IOOBUF_X51_Y54_N2
\Res[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ResTemp~0_combout\,
	devoe => ww_devoe,
	o => \Res[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Res[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ResTemp~1_combout\,
	devoe => ww_devoe,
	o => \Res[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\Res[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ResTemp~2_combout\,
	devoe => ww_devoe,
	o => \Res[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\Res[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ResTemp~3_combout\,
	devoe => ww_devoe,
	o => \Res[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\Res[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ResTemp~4_combout\,
	devoe => ww_devoe,
	o => \Res[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\Res[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ResTemp~5_combout\,
	devoe => ww_devoe,
	o => \Res[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\Res[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ResTemp~6_combout\,
	devoe => ww_devoe,
	o => \Res[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\Res[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ResTemp~7_combout\,
	devoe => ww_devoe,
	o => \Res[7]~output_o\);

-- Location: IOIBUF_X56_Y54_N15
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

-- Location: IOIBUF_X58_Y54_N15
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

-- Location: IOIBUF_X60_Y54_N8
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

-- Location: LCCOMB_X57_Y50_N24
\Mult1|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(0) = LCELL(\B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mult1|auto_generated|le5a\(0));

-- Location: LCCOMB_X56_Y51_N10
\Mult1|auto_generated|add6_result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add6_result[0]~0_combout\ = (\Mult1|auto_generated|le5a\(0) & (\B[1]~input_o\ $ (VCC))) # (!\Mult1|auto_generated|le5a\(0) & (\B[1]~input_o\ & VCC))
-- \Mult1|auto_generated|add6_result[0]~1\ = CARRY((\Mult1|auto_generated|le5a\(0) & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le5a\(0),
	datab => \B[1]~input_o\,
	datad => VCC,
	combout => \Mult1|auto_generated|add6_result[0]~0_combout\,
	cout => \Mult1|auto_generated|add6_result[0]~1\);

-- Location: LCCOMB_X57_Y50_N8
\Mult0|auto_generated|le3a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(0) = LCELL(\B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X58_Y50_N16
\Mult0|auto_generated|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~0_combout\ = (\Mult0|auto_generated|le3a\(0) & (\B[1]~input_o\ $ (VCC))) # (!\Mult0|auto_generated|le3a\(0) & (\B[1]~input_o\ & VCC))
-- \Mult0|auto_generated|op_3~1\ = CARRY((\Mult0|auto_generated|le3a\(0) & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(0),
	datab => \B[1]~input_o\,
	datad => VCC,
	combout => \Mult0|auto_generated|op_3~0_combout\,
	cout => \Mult0|auto_generated|op_3~1\);

-- Location: IOIBUF_X56_Y54_N29
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

-- Location: LCCOMB_X56_Y51_N8
\ResTemp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ResTemp~0_combout\ = (\mode~input_o\ & (\Mult1|auto_generated|add6_result[0]~0_combout\)) # (!\mode~input_o\ & ((\Mult0|auto_generated|op_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add6_result[0]~0_combout\,
	datac => \Mult0|auto_generated|op_3~0_combout\,
	datad => \mode~input_o\,
	combout => \ResTemp~0_combout\);

-- Location: IOIBUF_X56_Y54_N1
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

-- Location: LCCOMB_X57_Y50_N10
\Mult1|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(1) = LCELL((\B[0]~input_o\ & (\A[1]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mult1|auto_generated|le5a\(1));

-- Location: LCCOMB_X56_Y51_N12
\Mult1|auto_generated|add6_result[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add6_result[1]~2_combout\ = (\Mult1|auto_generated|le5a\(1) & (!\Mult1|auto_generated|add6_result[0]~1\)) # (!\Mult1|auto_generated|le5a\(1) & ((\Mult1|auto_generated|add6_result[0]~1\) # (GND)))
-- \Mult1|auto_generated|add6_result[1]~3\ = CARRY((!\Mult1|auto_generated|add6_result[0]~1\) # (!\Mult1|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le5a\(1),
	datad => VCC,
	cin => \Mult1|auto_generated|add6_result[0]~1\,
	combout => \Mult1|auto_generated|add6_result[1]~2_combout\,
	cout => \Mult1|auto_generated|add6_result[1]~3\);

-- Location: LCCOMB_X57_Y50_N2
\Mult0|auto_generated|le3a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(1) = LCELL((\B[0]~input_o\ & (\A[1]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X58_Y50_N18
\Mult0|auto_generated|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~2_combout\ = (\Mult0|auto_generated|le3a\(1) & (!\Mult0|auto_generated|op_3~1\)) # (!\Mult0|auto_generated|le3a\(1) & ((\Mult0|auto_generated|op_3~1\) # (GND)))
-- \Mult0|auto_generated|op_3~3\ = CARRY((!\Mult0|auto_generated|op_3~1\) # (!\Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~1\,
	combout => \Mult0|auto_generated|op_3~2_combout\,
	cout => \Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X56_Y51_N26
\ResTemp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ResTemp~1_combout\ = (\mode~input_o\ & (\Mult1|auto_generated|add6_result[1]~2_combout\)) # (!\mode~input_o\ & ((\Mult0|auto_generated|op_3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add6_result[1]~2_combout\,
	datac => \Mult0|auto_generated|op_3~2_combout\,
	datad => \mode~input_o\,
	combout => \ResTemp~1_combout\);

-- Location: IOIBUF_X56_Y54_N8
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

-- Location: IOIBUF_X60_Y54_N1
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

-- Location: LCCOMB_X57_Y50_N4
\Mult1|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(2) = LCELL((\B[0]~input_o\ & ((\B[1]~input_o\ $ (\A[2]~input_o\)))) # (!\B[0]~input_o\ & (!\A[1]~input_o\ & (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult1|auto_generated|le5a\(2));

-- Location: LCCOMB_X57_Y51_N10
\Mult1|auto_generated|add10_result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add10_result[0]~0_combout\ = (\B[3]~input_o\ & (\Mult1|auto_generated|le5a\(2) $ (VCC))) # (!\B[3]~input_o\ & (\Mult1|auto_generated|le5a\(2) & VCC))
-- \Mult1|auto_generated|add10_result[0]~1\ = CARRY((\B[3]~input_o\ & \Mult1|auto_generated|le5a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mult1|auto_generated|le5a\(2),
	datad => VCC,
	combout => \Mult1|auto_generated|add10_result[0]~0_combout\,
	cout => \Mult1|auto_generated|add10_result[0]~1\);

-- Location: IOIBUF_X60_Y54_N22
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

-- Location: LCCOMB_X56_Y50_N6
\Mult1|auto_generated|le2a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le2a\(0) = LCELL((\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult1|auto_generated|le2a\(0));

-- Location: LCCOMB_X56_Y50_N2
\Mult1|auto_generated|cs3a[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|cs3a[1]~0_combout\ = \B[1]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult1|auto_generated|cs3a[1]~0_combout\);

-- Location: LCCOMB_X56_Y50_N20
\Mult1|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(0) = LCELL((\Mult1|auto_generated|le2a\(0)) # ((\Mult1|auto_generated|cs3a[1]~0_combout\ & (\A[0]~input_o\ $ (\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le2a\(0),
	datab => \Mult1|auto_generated|cs3a[1]~0_combout\,
	datac => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mult1|auto_generated|le4a\(0));

-- Location: LCCOMB_X56_Y51_N14
\Mult1|auto_generated|add6_result[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add6_result[2]~4_combout\ = ((\Mult1|auto_generated|add10_result[0]~0_combout\ $ (\Mult1|auto_generated|le4a\(0) $ (!\Mult1|auto_generated|add6_result[1]~3\)))) # (GND)
-- \Mult1|auto_generated|add6_result[2]~5\ = CARRY((\Mult1|auto_generated|add10_result[0]~0_combout\ & ((\Mult1|auto_generated|le4a\(0)) # (!\Mult1|auto_generated|add6_result[1]~3\))) # (!\Mult1|auto_generated|add10_result[0]~0_combout\ & 
-- (\Mult1|auto_generated|le4a\(0) & !\Mult1|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add10_result[0]~0_combout\,
	datab => \Mult1|auto_generated|le4a\(0),
	datad => VCC,
	cin => \Mult1|auto_generated|add6_result[1]~3\,
	combout => \Mult1|auto_generated|add6_result[2]~4_combout\,
	cout => \Mult1|auto_generated|add6_result[2]~5\);

-- Location: LCCOMB_X56_Y50_N22
\Mult0|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL(\B[3]~input_o\ $ (((\A[0]~input_o\ & ((\B[1]~input_o\) # (\B[2]~input_o\))) # (!\A[0]~input_o\ & (\B[1]~input_o\ & \B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X56_Y50_N8
\Mult0|auto_generated|le4a[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(5) = LCELL(\B[3]~input_o\ $ (((\B[1]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X57_Y50_N20
\Mult0|auto_generated|le3a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(2) = LCELL((\B[0]~input_o\ & ((\B[1]~input_o\ $ (\A[2]~input_o\)))) # (!\B[0]~input_o\ & (!\A[1]~input_o\ & (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X58_Y50_N0
\Mult0|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|le4a\(5) & (\Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\Mult0|auto_generated|le4a\(5) & (\Mult0|auto_generated|le3a\(2) & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|le4a\(5) & \Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(5),
	datab => \Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X58_Y50_N20
\Mult0|auto_generated|op_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~4_combout\ = ((\Mult0|auto_generated|le4a\(0) $ (\Mult0|auto_generated|op_1~0_combout\ $ (!\Mult0|auto_generated|op_3~3\)))) # (GND)
-- \Mult0|auto_generated|op_3~5\ = CARRY((\Mult0|auto_generated|le4a\(0) & ((\Mult0|auto_generated|op_1~0_combout\) # (!\Mult0|auto_generated|op_3~3\))) # (!\Mult0|auto_generated|le4a\(0) & (\Mult0|auto_generated|op_1~0_combout\ & 
-- !\Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(0),
	datab => \Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~3\,
	combout => \Mult0|auto_generated|op_3~4_combout\,
	cout => \Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X56_Y51_N4
\ResTemp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ResTemp~2_combout\ = (\mode~input_o\ & (\Mult1|auto_generated|add6_result[2]~4_combout\)) # (!\mode~input_o\ & ((\Mult0|auto_generated|op_3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|add6_result[2]~4_combout\,
	datac => \Mult0|auto_generated|op_3~4_combout\,
	datad => \mode~input_o\,
	combout => \ResTemp~2_combout\);

-- Location: LCCOMB_X56_Y50_N24
\Mult1|auto_generated|le2a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le2a\(1) = LCELL((\A[0]~input_o\ & (((\B[1]~input_o\ & \B[2]~input_o\)))) # (!\A[0]~input_o\ & (\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult1|auto_generated|le2a\(1));

-- Location: LCCOMB_X56_Y50_N0
\Mult1|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(1) = LCELL((\Mult1|auto_generated|le2a\(1)) # ((\Mult1|auto_generated|cs3a[1]~0_combout\ & (\A[1]~input_o\ $ (\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le2a\(1),
	datab => \Mult1|auto_generated|cs3a[1]~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mult1|auto_generated|le4a\(1));

-- Location: IOIBUF_X49_Y54_N8
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

-- Location: LCCOMB_X57_Y50_N22
\Mult1|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(3) = LCELL((\B[0]~input_o\ & (\A[3]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult1|auto_generated|le5a\(3));

-- Location: LCCOMB_X57_Y51_N12
\Mult1|auto_generated|add10_result[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add10_result[1]~2_combout\ = (\Mult1|auto_generated|le5a\(3) & (!\Mult1|auto_generated|add10_result[0]~1\)) # (!\Mult1|auto_generated|le5a\(3) & ((\Mult1|auto_generated|add10_result[0]~1\) # (GND)))
-- \Mult1|auto_generated|add10_result[1]~3\ = CARRY((!\Mult1|auto_generated|add10_result[0]~1\) # (!\Mult1|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|le5a\(3),
	datad => VCC,
	cin => \Mult1|auto_generated|add10_result[0]~1\,
	combout => \Mult1|auto_generated|add10_result[1]~2_combout\,
	cout => \Mult1|auto_generated|add10_result[1]~3\);

-- Location: LCCOMB_X56_Y51_N16
\Mult1|auto_generated|add6_result[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add6_result[3]~6_combout\ = (\Mult1|auto_generated|le4a\(1) & ((\Mult1|auto_generated|add10_result[1]~2_combout\ & (\Mult1|auto_generated|add6_result[2]~5\ & VCC)) # (!\Mult1|auto_generated|add10_result[1]~2_combout\ & 
-- (!\Mult1|auto_generated|add6_result[2]~5\)))) # (!\Mult1|auto_generated|le4a\(1) & ((\Mult1|auto_generated|add10_result[1]~2_combout\ & (!\Mult1|auto_generated|add6_result[2]~5\)) # (!\Mult1|auto_generated|add10_result[1]~2_combout\ & 
-- ((\Mult1|auto_generated|add6_result[2]~5\) # (GND)))))
-- \Mult1|auto_generated|add6_result[3]~7\ = CARRY((\Mult1|auto_generated|le4a\(1) & (!\Mult1|auto_generated|add10_result[1]~2_combout\ & !\Mult1|auto_generated|add6_result[2]~5\)) # (!\Mult1|auto_generated|le4a\(1) & 
-- ((!\Mult1|auto_generated|add6_result[2]~5\) # (!\Mult1|auto_generated|add10_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(1),
	datab => \Mult1|auto_generated|add10_result[1]~2_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|add6_result[2]~5\,
	combout => \Mult1|auto_generated|add6_result[3]~6_combout\,
	cout => \Mult1|auto_generated|add6_result[3]~7\);

-- Location: LCCOMB_X56_Y50_N10
\Mult0|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult1|auto_generated|cs3a[1]~0_combout\ & (\A[1]~input_o\ $ (((\Mult0|auto_generated|le4a\(5)))))) # (!\Mult1|auto_generated|cs3a[1]~0_combout\ & (((!\A[0]~input_o\ & \Mult0|auto_generated|le4a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Mult1|auto_generated|cs3a[1]~0_combout\,
	datac => \A[0]~input_o\,
	datad => \Mult0|auto_generated|le4a\(5),
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X57_Y50_N6
\Mult0|auto_generated|le3a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(3) = LCELL((\B[0]~input_o\ & (\A[3]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X58_Y50_N2
\Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|le3a\(3) & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|le3a\(3) & ((\Mult0|auto_generated|op_1~1\) # (GND)))
-- \Mult0|auto_generated|op_1~3\ = CARRY((!\Mult0|auto_generated|op_1~1\) # (!\Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X58_Y50_N22
\Mult0|auto_generated|op_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~6_combout\ = (\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_1~2_combout\ & (\Mult0|auto_generated|op_3~5\ & VCC)) # (!\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|op_3~5\)))) # 
-- (!\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|op_3~5\) # (GND)))))
-- \Mult0|auto_generated|op_3~7\ = CARRY((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|op_1~2_combout\ & !\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|le4a\(1) & ((!\Mult0|auto_generated|op_3~5\) # 
-- (!\Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(1),
	datab => \Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~5\,
	combout => \Mult0|auto_generated|op_3~6_combout\,
	cout => \Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X56_Y51_N6
\ResTemp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ResTemp~3_combout\ = (\mode~input_o\ & (\Mult1|auto_generated|add6_result[3]~6_combout\)) # (!\mode~input_o\ & ((\Mult0|auto_generated|op_3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \Mult1|auto_generated|add6_result[3]~6_combout\,
	datac => \Mult0|auto_generated|op_3~6_combout\,
	combout => \ResTemp~3_combout\);

-- Location: LCCOMB_X57_Y50_N30
\Mult1|auto_generated|le2a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le2a\(2) = LCELL((\A[1]~input_o\ & (\B[2]~input_o\ & ((\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (!\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mult1|auto_generated|le2a\(2));

-- Location: LCCOMB_X57_Y50_N26
\Mult1|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(2) = LCELL((\Mult1|auto_generated|le2a\(2)) # ((\Mult1|auto_generated|cs3a[1]~0_combout\ & (\B[3]~input_o\ $ (\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|cs3a[1]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Mult1|auto_generated|le2a\(2),
	datad => \A[2]~input_o\,
	combout => \Mult1|auto_generated|le4a\(2));

-- Location: LCCOMB_X57_Y50_N0
\Mult1|auto_generated|le5a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(4) = LCELL((\A[3]~input_o\ & (\B[0]~input_o\ & !\B[1]~input_o\)) # (!\A[3]~input_o\ & ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Mult1|auto_generated|le5a\(4));

-- Location: LCCOMB_X57_Y51_N14
\Mult1|auto_generated|add10_result[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add10_result[2]~4_combout\ = (\Mult1|auto_generated|le5a\(4) & (\Mult1|auto_generated|add10_result[1]~3\ $ (GND))) # (!\Mult1|auto_generated|le5a\(4) & ((GND) # (!\Mult1|auto_generated|add10_result[1]~3\)))
-- \Mult1|auto_generated|add10_result[2]~5\ = CARRY((!\Mult1|auto_generated|add10_result[1]~3\) # (!\Mult1|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|le5a\(4),
	datad => VCC,
	cin => \Mult1|auto_generated|add10_result[1]~3\,
	combout => \Mult1|auto_generated|add10_result[2]~4_combout\,
	cout => \Mult1|auto_generated|add10_result[2]~5\);

-- Location: LCCOMB_X56_Y51_N18
\Mult1|auto_generated|add6_result[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add6_result[4]~8_combout\ = ((\Mult1|auto_generated|le4a\(2) $ (\Mult1|auto_generated|add10_result[2]~4_combout\ $ (!\Mult1|auto_generated|add6_result[3]~7\)))) # (GND)
-- \Mult1|auto_generated|add6_result[4]~9\ = CARRY((\Mult1|auto_generated|le4a\(2) & ((\Mult1|auto_generated|add10_result[2]~4_combout\) # (!\Mult1|auto_generated|add6_result[3]~7\))) # (!\Mult1|auto_generated|le4a\(2) & 
-- (\Mult1|auto_generated|add10_result[2]~4_combout\ & !\Mult1|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(2),
	datab => \Mult1|auto_generated|add10_result[2]~4_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|add6_result[3]~7\,
	combout => \Mult1|auto_generated|add6_result[4]~8_combout\,
	cout => \Mult1|auto_generated|add6_result[4]~9\);

-- Location: LCCOMB_X56_Y50_N28
\Mult0|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL((\A[0]~input_o\ & ((\B[3]~input_o\) # ((\B[1]~input_o\ & \B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X57_Y50_N12
\Mult0|auto_generated|le3a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(4) = LCELL((\B[1]~input_o\ & ((\B[0]~input_o\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X57_Y50_N14
\Mult0|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult1|auto_generated|cs3a[1]~0_combout\ & ((\Mult0|auto_generated|le4a\(5) $ (\A[2]~input_o\)))) # (!\Mult1|auto_generated|cs3a[1]~0_combout\ & (!\A[1]~input_o\ & (\Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|cs3a[1]~0_combout\,
	datab => \A[1]~input_o\,
	datac => \Mult0|auto_generated|le4a\(5),
	datad => \A[2]~input_o\,
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X58_Y50_N4
\Mult0|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|le3a\(4) $ (\Mult0|auto_generated|le4a\(2) $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|le3a\(4) & ((\Mult0|auto_generated|le4a\(2)) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|le3a\(4) & (\Mult0|auto_generated|le4a\(2) & !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(4),
	datab => \Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X58_Y50_N24
\Mult0|auto_generated|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~8_combout\ = ((\Mult0|auto_generated|le5a\(0) $ (\Mult0|auto_generated|op_1~4_combout\ $ (!\Mult0|auto_generated|op_3~7\)))) # (GND)
-- \Mult0|auto_generated|op_3~9\ = CARRY((\Mult0|auto_generated|le5a\(0) & ((\Mult0|auto_generated|op_1~4_combout\) # (!\Mult0|auto_generated|op_3~7\))) # (!\Mult0|auto_generated|le5a\(0) & (\Mult0|auto_generated|op_1~4_combout\ & 
-- !\Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(0),
	datab => \Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~7\,
	combout => \Mult0|auto_generated|op_3~8_combout\,
	cout => \Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X56_Y51_N0
\ResTemp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ResTemp~4_combout\ = (\mode~input_o\ & (\Mult1|auto_generated|add6_result[4]~8_combout\)) # (!\mode~input_o\ & ((\Mult0|auto_generated|op_3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|add6_result[4]~8_combout\,
	datac => \Mult0|auto_generated|op_3~8_combout\,
	datad => \mode~input_o\,
	combout => \ResTemp~4_combout\);

-- Location: LCCOMB_X57_Y50_N16
\Mult0|auto_generated|le4a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult1|auto_generated|cs3a[1]~0_combout\ & (\Mult0|auto_generated|le4a\(5) $ ((\A[3]~input_o\)))) # (!\Mult1|auto_generated|cs3a[1]~0_combout\ & (\Mult0|auto_generated|le4a\(5) & ((!\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|cs3a[1]~0_combout\,
	datab => \Mult0|auto_generated|le4a\(5),
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X57_Y50_N18
\Mult0|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\A[1]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X58_Y50_N6
\Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|le4a\(3) & ((\Mult0|auto_generated|le5a\(1) & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|op_1~5\)))) # (!\Mult0|auto_generated|le4a\(3) 
-- & ((\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|le5a\(1) & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le4a\(3) & ((!\Mult0|auto_generated|op_1~5\) # (!\Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(3),
	datab => \Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X57_Y52_N8
\Mult0|auto_generated|le3a[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(5) = LCELL(\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[1]~input_o\,
	combout => \Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X58_Y50_N26
\Mult0|auto_generated|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~10_combout\ = (\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|le3a\(5) & (\Mult0|auto_generated|op_3~9\ & VCC)) # (!\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_3~9\)))) # 
-- (!\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|le3a\(5) & ((\Mult0|auto_generated|op_3~9\) # (GND)))))
-- \Mult0|auto_generated|op_3~11\ = CARRY((\Mult0|auto_generated|op_1~6_combout\ & (!\Mult0|auto_generated|le3a\(5) & !\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|op_1~6_combout\ & ((!\Mult0|auto_generated|op_3~9\) # 
-- (!\Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~6_combout\,
	datab => \Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~9\,
	combout => \Mult0|auto_generated|op_3~10_combout\,
	cout => \Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X56_Y50_N26
\Mult1|auto_generated|le2a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le2a\(3) = LCELL((\A[2]~input_o\ & (((\B[1]~input_o\ & \B[2]~input_o\)))) # (!\A[2]~input_o\ & (\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult1|auto_generated|le2a\(3));

-- Location: LCCOMB_X56_Y50_N30
\Mult1|auto_generated|le4a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(3) = LCELL((\Mult1|auto_generated|le2a\(3)) # ((\Mult1|auto_generated|cs3a[1]~0_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Mult1|auto_generated|cs3a[1]~0_combout\,
	datac => \Mult1|auto_generated|le2a\(3),
	datad => \B[3]~input_o\,
	combout => \Mult1|auto_generated|le4a\(3));

-- Location: LCCOMB_X57_Y51_N16
\Mult1|auto_generated|add10_result[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add10_result[3]~6_combout\ = !\Mult1|auto_generated|add10_result[2]~5\
-- \Mult1|auto_generated|add10_result[3]~7\ = CARRY(!\Mult1|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mult1|auto_generated|add10_result[2]~5\,
	combout => \Mult1|auto_generated|add10_result[3]~6_combout\,
	cout => \Mult1|auto_generated|add10_result[3]~7\);

-- Location: LCCOMB_X56_Y51_N20
\Mult1|auto_generated|add6_result[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add6_result[5]~10_combout\ = (\Mult1|auto_generated|le4a\(3) & ((\Mult1|auto_generated|add10_result[3]~6_combout\ & (\Mult1|auto_generated|add6_result[4]~9\ & VCC)) # (!\Mult1|auto_generated|add10_result[3]~6_combout\ & 
-- (!\Mult1|auto_generated|add6_result[4]~9\)))) # (!\Mult1|auto_generated|le4a\(3) & ((\Mult1|auto_generated|add10_result[3]~6_combout\ & (!\Mult1|auto_generated|add6_result[4]~9\)) # (!\Mult1|auto_generated|add10_result[3]~6_combout\ & 
-- ((\Mult1|auto_generated|add6_result[4]~9\) # (GND)))))
-- \Mult1|auto_generated|add6_result[5]~11\ = CARRY((\Mult1|auto_generated|le4a\(3) & (!\Mult1|auto_generated|add10_result[3]~6_combout\ & !\Mult1|auto_generated|add6_result[4]~9\)) # (!\Mult1|auto_generated|le4a\(3) & 
-- ((!\Mult1|auto_generated|add6_result[4]~9\) # (!\Mult1|auto_generated|add10_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(3),
	datab => \Mult1|auto_generated|add10_result[3]~6_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|add6_result[4]~9\,
	combout => \Mult1|auto_generated|add6_result[5]~10_combout\,
	cout => \Mult1|auto_generated|add6_result[5]~11\);

-- Location: LCCOMB_X56_Y51_N2
\ResTemp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ResTemp~5_combout\ = (\mode~input_o\ & ((\Mult1|auto_generated|add6_result[5]~10_combout\))) # (!\mode~input_o\ & (\Mult0|auto_generated|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~10_combout\,
	datab => \Mult1|auto_generated|add6_result[5]~10_combout\,
	datad => \mode~input_o\,
	combout => \ResTemp~5_combout\);

-- Location: LCCOMB_X56_Y50_N4
\Mult1|auto_generated|le2a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le2a\(4) = LCELL((\A[3]~input_o\ & (((\B[1]~input_o\ & \B[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult1|auto_generated|le2a\(4));

-- Location: LCCOMB_X56_Y50_N16
\Mult1|auto_generated|le4a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(4) = LCELL((\Mult1|auto_generated|le2a\(4)) # ((\Mult1|auto_generated|cs3a[1]~0_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Mult1|auto_generated|cs3a[1]~0_combout\,
	datac => \Mult1|auto_generated|le2a\(4),
	datad => \B[3]~input_o\,
	combout => \Mult1|auto_generated|le4a\(4));

-- Location: LCCOMB_X57_Y51_N18
\Mult1|auto_generated|add10_result[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add10_result[4]~8_combout\ = !\Mult1|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult1|auto_generated|add10_result[3]~7\,
	combout => \Mult1|auto_generated|add10_result[4]~8_combout\);

-- Location: LCCOMB_X56_Y51_N22
\Mult1|auto_generated|add6_result[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add6_result[6]~12_combout\ = ((\Mult1|auto_generated|le4a\(4) $ (\Mult1|auto_generated|add10_result[4]~8_combout\ $ (\Mult1|auto_generated|add6_result[5]~11\)))) # (GND)
-- \Mult1|auto_generated|add6_result[6]~13\ = CARRY((\Mult1|auto_generated|le4a\(4) & (\Mult1|auto_generated|add10_result[4]~8_combout\ & !\Mult1|auto_generated|add6_result[5]~11\)) # (!\Mult1|auto_generated|le4a\(4) & 
-- ((\Mult1|auto_generated|add10_result[4]~8_combout\) # (!\Mult1|auto_generated|add6_result[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(4),
	datab => \Mult1|auto_generated|add10_result[4]~8_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|add6_result[5]~11\,
	combout => \Mult1|auto_generated|add6_result[6]~12_combout\,
	cout => \Mult1|auto_generated|add6_result[6]~13\);

-- Location: LCCOMB_X56_Y50_N18
\Mult0|auto_generated|le4a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\A[3]~input_o\ & (\B[3]~input_o\ & (\B[1]~input_o\ $ (\B[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ $ (((\B[1]~input_o\ & \B[2]~input_o\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X57_Y50_N28
\Mult0|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\A[2]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X58_Y50_N8
\Mult0|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|le4a\(4) $ (\Mult0|auto_generated|le5a\(2) $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|le4a\(4) & ((\Mult0|auto_generated|le5a\(2)) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|le4a\(4) & (\Mult0|auto_generated|le5a\(2) & !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(4),
	datab => \Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X58_Y50_N28
\Mult0|auto_generated|op_3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~12_combout\ = ((\Mult0|auto_generated|le3a\(5) $ (\Mult0|auto_generated|op_1~8_combout\ $ (!\Mult0|auto_generated|op_3~11\)))) # (GND)
-- \Mult0|auto_generated|op_3~13\ = CARRY((\Mult0|auto_generated|le3a\(5) & ((\Mult0|auto_generated|op_1~8_combout\) # (!\Mult0|auto_generated|op_3~11\))) # (!\Mult0|auto_generated|le3a\(5) & (\Mult0|auto_generated|op_1~8_combout\ & 
-- !\Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(5),
	datab => \Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~11\,
	combout => \Mult0|auto_generated|op_3~12_combout\,
	cout => \Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X56_Y51_N28
\ResTemp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ResTemp~6_combout\ = (\mode~input_o\ & (\Mult1|auto_generated|add6_result[6]~12_combout\)) # (!\mode~input_o\ & ((\Mult0|auto_generated|op_3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \Mult1|auto_generated|add6_result[6]~12_combout\,
	datad => \Mult0|auto_generated|op_3~12_combout\,
	combout => \ResTemp~6_combout\);

-- Location: LCCOMB_X56_Y51_N24
\Mult1|auto_generated|add6_result[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add6_result[7]~14_combout\ = !\Mult1|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult1|auto_generated|add6_result[6]~13\,
	combout => \Mult1|auto_generated|add6_result[7]~14_combout\);

-- Location: LCCOMB_X56_Y50_N12
\Mult0|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[1]~input_o\ & \B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X58_Y50_N10
\Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = \Mult0|auto_generated|le4a\(5) $ (\Mult0|auto_generated|op_1~9\ $ (!\Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le4a\(5),
	datad => \Mult0|auto_generated|le5a\(3),
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X58_Y50_N30
\Mult0|auto_generated|op_3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~14_combout\ = \Mult0|auto_generated|le3a\(5) $ (\Mult0|auto_generated|op_3~13\ $ (!\Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(5),
	datad => \Mult0|auto_generated|op_1~10_combout\,
	cin => \Mult0|auto_generated|op_3~13\,
	combout => \Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X56_Y51_N30
\ResTemp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ResTemp~7_combout\ = (\mode~input_o\ & (\Mult1|auto_generated|add6_result[7]~14_combout\)) # (!\mode~input_o\ & ((\Mult0|auto_generated|op_3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \Mult1|auto_generated|add6_result[7]~14_combout\,
	datad => \Mult0|auto_generated|op_3~14_combout\,
	combout => \ResTemp~7_combout\);

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

ww_Res(0) <= \Res[0]~output_o\;

ww_Res(1) <= \Res[1]~output_o\;

ww_Res(2) <= \Res[2]~output_o\;

ww_Res(3) <= \Res[3]~output_o\;

ww_Res(4) <= \Res[4]~output_o\;

ww_Res(5) <= \Res[5]~output_o\;

ww_Res(6) <= \Res[6]~output_o\;

ww_Res(7) <= \Res[7]~output_o\;
END structure;


