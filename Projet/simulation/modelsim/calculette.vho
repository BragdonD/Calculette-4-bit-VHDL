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

-- DATE "09/16/2021 16:47:29"

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

ENTITY 	add_soustr_4bits IS
    PORT (
	in_A : IN std_logic_vector(3 DOWNTO 0);
	in_B : IN std_logic_vector(3 DOWNTO 0);
	operation : IN std_logic;
	output : OUT std_logic_vector(3 DOWNTO 0);
	out_signs : OUT std_logic
	);
END add_soustr_4bits;

-- Design Ports Information
-- output[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signs	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_A[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_B[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_A[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_B[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_A[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_B[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_A[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_B[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF add_soustr_4bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_in_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_operation : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_signs : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \out_signs~output_o\ : std_logic;
SIGNAL \in_B[0]~input_o\ : std_logic;
SIGNAL \in_A[0]~input_o\ : std_logic;
SIGNAL \add0|f0|res~0_combout\ : std_logic;
SIGNAL \operation~input_o\ : std_logic;
SIGNAL \add0|f0|new_restraint~0_combout\ : std_logic;
SIGNAL \in_A[1]~input_o\ : std_logic;
SIGNAL \in_B[1]~input_o\ : std_logic;
SIGNAL \add0|f0|new_restraint~1_combout\ : std_logic;
SIGNAL \add0|f1|res~combout\ : std_logic;
SIGNAL \in_A[2]~input_o\ : std_logic;
SIGNAL \add0|f1|new_restraint~0_combout\ : std_logic;
SIGNAL \in_B[2]~input_o\ : std_logic;
SIGNAL \add0|f2|res~0_combout\ : std_logic;
SIGNAL \in_B[3]~input_o\ : std_logic;
SIGNAL \add0|f2|new_restraint~0_combout\ : std_logic;
SIGNAL \in_A[3]~input_o\ : std_logic;
SIGNAL \add0|f3|res~0_combout\ : std_logic;
SIGNAL \add0|f3|new_restraint~0_combout\ : std_logic;
SIGNAL new_B_input : std_logic_vector(3 DOWNTO 0);
SIGNAL \add0|f3|ALT_INV_new_restraint~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_in_A <= in_A;
ww_in_B <= in_B;
ww_operation <= operation;
output <= ww_output;
out_signs <= ww_out_signs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\add0|f3|ALT_INV_new_restraint~0_combout\ <= NOT \add0|f3|new_restraint~0_combout\;
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

-- Location: IOOBUF_X46_Y54_N2
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add0|f0|res~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add0|f1|res~combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add0|f2|res~0_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add0|f3|res~0_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\out_signs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add0|f3|ALT_INV_new_restraint~0_combout\,
	devoe => ww_devoe,
	o => \out_signs~output_o\);

-- Location: IOIBUF_X20_Y0_N22
\in_B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_B(0),
	o => \in_B[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\in_A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_A(0),
	o => \in_A[0]~input_o\);

-- Location: LCCOMB_X27_Y2_N8
\add0|f0|res~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|f0|res~0_combout\ = \in_B[0]~input_o\ $ (\in_A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_B[0]~input_o\,
	datad => \in_A[0]~input_o\,
	combout => \add0|f0|res~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
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

-- Location: LCCOMB_X27_Y2_N12
\add0|f0|new_restraint~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|f0|new_restraint~0_combout\ = (\in_A[0]~input_o\ & (\in_B[0]~input_o\ $ (\operation~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_B[0]~input_o\,
	datac => \operation~input_o\,
	datad => \in_A[0]~input_o\,
	combout => \add0|f0|new_restraint~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\in_A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_A(1),
	o => \in_A[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\in_B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_B(1),
	o => \in_B[1]~input_o\);

-- Location: LCCOMB_X27_Y2_N26
\new_B_input[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- new_B_input(1) = \operation~input_o\ $ (\in_B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operation~input_o\,
	datad => \in_B[1]~input_o\,
	combout => new_B_input(1));

-- Location: LCCOMB_X27_Y2_N6
\add0|f0|new_restraint~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|f0|new_restraint~1_combout\ = (\operation~input_o\ & (\in_B[0]~input_o\ $ (!\in_A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_B[0]~input_o\,
	datac => \operation~input_o\,
	datad => \in_A[0]~input_o\,
	combout => \add0|f0|new_restraint~1_combout\);

-- Location: LCCOMB_X27_Y2_N16
\add0|f1|res\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|f1|res~combout\ = \in_A[1]~input_o\ $ (new_B_input(1) $ (((\add0|f0|new_restraint~0_combout\) # (\add0|f0|new_restraint~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|f0|new_restraint~0_combout\,
	datab => \in_A[1]~input_o\,
	datac => new_B_input(1),
	datad => \add0|f0|new_restraint~1_combout\,
	combout => \add0|f1|res~combout\);

-- Location: IOIBUF_X22_Y0_N1
\in_A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_A(2),
	o => \in_A[2]~input_o\);

-- Location: LCCOMB_X27_Y2_N2
\add0|f1|new_restraint~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|f1|new_restraint~0_combout\ = (\in_A[1]~input_o\ & ((\add0|f0|new_restraint~0_combout\) # ((new_B_input(1)) # (\add0|f0|new_restraint~1_combout\)))) # (!\in_A[1]~input_o\ & (new_B_input(1) & ((\add0|f0|new_restraint~0_combout\) # 
-- (\add0|f0|new_restraint~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|f0|new_restraint~0_combout\,
	datab => \in_A[1]~input_o\,
	datac => new_B_input(1),
	datad => \add0|f0|new_restraint~1_combout\,
	combout => \add0|f1|new_restraint~0_combout\);

-- Location: IOIBUF_X31_Y0_N29
\in_B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_B(2),
	o => \in_B[2]~input_o\);

-- Location: LCCOMB_X27_Y2_N20
\add0|f2|res~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|f2|res~0_combout\ = \in_A[2]~input_o\ $ (\add0|f1|new_restraint~0_combout\ $ (\operation~input_o\ $ (\in_B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_A[2]~input_o\,
	datab => \add0|f1|new_restraint~0_combout\,
	datac => \operation~input_o\,
	datad => \in_B[2]~input_o\,
	combout => \add0|f2|res~0_combout\);

-- Location: IOIBUF_X31_Y0_N22
\in_B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_B(3),
	o => \in_B[3]~input_o\);

-- Location: LCCOMB_X27_Y2_N22
\add0|f2|new_restraint~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|f2|new_restraint~0_combout\ = (\in_A[2]~input_o\ & ((\add0|f1|new_restraint~0_combout\) # (\operation~input_o\ $ (\in_B[2]~input_o\)))) # (!\in_A[2]~input_o\ & (\add0|f1|new_restraint~0_combout\ & (\operation~input_o\ $ (\in_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_A[2]~input_o\,
	datab => \add0|f1|new_restraint~0_combout\,
	datac => \operation~input_o\,
	datad => \in_B[2]~input_o\,
	combout => \add0|f2|new_restraint~0_combout\);

-- Location: IOIBUF_X24_Y0_N29
\in_A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_A(3),
	o => \in_A[3]~input_o\);

-- Location: LCCOMB_X27_Y2_N24
\add0|f3|res~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|f3|res~0_combout\ = \operation~input_o\ $ (\in_B[3]~input_o\ $ (\add0|f2|new_restraint~0_combout\ $ (\in_A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation~input_o\,
	datab => \in_B[3]~input_o\,
	datac => \add0|f2|new_restraint~0_combout\,
	datad => \in_A[3]~input_o\,
	combout => \add0|f3|res~0_combout\);

-- Location: LCCOMB_X27_Y2_N10
\add0|f3|new_restraint~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|f3|new_restraint~0_combout\ = (\add0|f2|new_restraint~0_combout\ & ((\in_A[3]~input_o\) # (\operation~input_o\ $ (\in_B[3]~input_o\)))) # (!\add0|f2|new_restraint~0_combout\ & (\in_A[3]~input_o\ & (\operation~input_o\ $ (\in_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation~input_o\,
	datab => \in_B[3]~input_o\,
	datac => \add0|f2|new_restraint~0_combout\,
	datad => \in_A[3]~input_o\,
	combout => \add0|f3|new_restraint~0_combout\);

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

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_out_signs <= \out_signs~output_o\;
END structure;


