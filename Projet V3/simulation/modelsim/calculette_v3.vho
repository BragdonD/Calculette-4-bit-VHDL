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

-- DATE "09/22/2021 22:33:43"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	result_img IS
    PORT (
	clk_25 : IN std_logic;
	reset : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Res : IN std_logic_vector(3 DOWNTO 0);
	eror : IN std_logic;
	vs_out : OUT std_logic;
	hs_out : OUT std_logic;
	de_out : OUT std_logic;
	r_out : OUT std_logic_vector(7 DOWNTO 0);
	g_out : OUT std_logic_vector(7 DOWNTO 0);
	b_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END result_img;

-- Design Ports Information
-- B[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- eror	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vs_out	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hs_out	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- de_out	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[3]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_25	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF result_img IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_25 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Res : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_eror : std_logic;
SIGNAL ww_vs_out : std_logic;
SIGNAL ww_hs_out : std_logic;
SIGNAL ww_de_out : std_logic;
SIGNAL ww_r_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_g_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_25~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Res[0]~input_o\ : std_logic;
SIGNAL \Res[1]~input_o\ : std_logic;
SIGNAL \Res[2]~input_o\ : std_logic;
SIGNAL \Res[3]~input_o\ : std_logic;
SIGNAL \eror~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \vs_out~output_o\ : std_logic;
SIGNAL \hs_out~output_o\ : std_logic;
SIGNAL \de_out~output_o\ : std_logic;
SIGNAL \r_out[0]~output_o\ : std_logic;
SIGNAL \r_out[1]~output_o\ : std_logic;
SIGNAL \r_out[2]~output_o\ : std_logic;
SIGNAL \r_out[3]~output_o\ : std_logic;
SIGNAL \r_out[4]~output_o\ : std_logic;
SIGNAL \r_out[5]~output_o\ : std_logic;
SIGNAL \r_out[6]~output_o\ : std_logic;
SIGNAL \r_out[7]~output_o\ : std_logic;
SIGNAL \g_out[0]~output_o\ : std_logic;
SIGNAL \g_out[1]~output_o\ : std_logic;
SIGNAL \g_out[2]~output_o\ : std_logic;
SIGNAL \g_out[3]~output_o\ : std_logic;
SIGNAL \g_out[4]~output_o\ : std_logic;
SIGNAL \g_out[5]~output_o\ : std_logic;
SIGNAL \g_out[6]~output_o\ : std_logic;
SIGNAL \g_out[7]~output_o\ : std_logic;
SIGNAL \b_out[0]~output_o\ : std_logic;
SIGNAL \b_out[1]~output_o\ : std_logic;
SIGNAL \b_out[2]~output_o\ : std_logic;
SIGNAL \b_out[3]~output_o\ : std_logic;
SIGNAL \b_out[4]~output_o\ : std_logic;
SIGNAL \b_out[5]~output_o\ : std_logic;
SIGNAL \b_out[6]~output_o\ : std_logic;
SIGNAL \b_out[7]~output_o\ : std_logic;
SIGNAL \clk_25~input_o\ : std_logic;
SIGNAL \clk_25~inputclkctrl_outclk\ : std_logic;
SIGNAL \v_count[0]~10_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \v_count[9]~19_combout\ : std_logic;
SIGNAL \v_count[9]~18_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \v_count[9]~20_combout\ : std_logic;
SIGNAL \h_count[0]~10_combout\ : std_logic;
SIGNAL \h_count[0]~11\ : std_logic;
SIGNAL \h_count[1]~12_combout\ : std_logic;
SIGNAL \h_count[1]~13\ : std_logic;
SIGNAL \h_count[2]~14_combout\ : std_logic;
SIGNAL \h_count[2]~15\ : std_logic;
SIGNAL \h_count[3]~16_combout\ : std_logic;
SIGNAL \h_count[3]~17\ : std_logic;
SIGNAL \h_count[4]~18_combout\ : std_logic;
SIGNAL \h_count[4]~19\ : std_logic;
SIGNAL \h_count[5]~20_combout\ : std_logic;
SIGNAL \h_count[5]~21\ : std_logic;
SIGNAL \h_count[6]~22_combout\ : std_logic;
SIGNAL \h_count[6]~23\ : std_logic;
SIGNAL \h_count[7]~24_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \h_count[7]~25\ : std_logic;
SIGNAL \h_count[8]~26_combout\ : std_logic;
SIGNAL \h_count[8]~27\ : std_logic;
SIGNAL \h_count[9]~28_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \v_count[9]~21_combout\ : std_logic;
SIGNAL \v_count[0]~11\ : std_logic;
SIGNAL \v_count[1]~12_combout\ : std_logic;
SIGNAL \v_count[1]~13\ : std_logic;
SIGNAL \v_count[2]~14_combout\ : std_logic;
SIGNAL \v_count[2]~15\ : std_logic;
SIGNAL \v_count[3]~16_combout\ : std_logic;
SIGNAL \v_count[3]~17\ : std_logic;
SIGNAL \v_count[4]~22_combout\ : std_logic;
SIGNAL \v_count[4]~23\ : std_logic;
SIGNAL \v_count[5]~24_combout\ : std_logic;
SIGNAL \v_count[5]~25\ : std_logic;
SIGNAL \v_count[6]~26_combout\ : std_logic;
SIGNAL \v_count[6]~27\ : std_logic;
SIGNAL \v_count[7]~28_combout\ : std_logic;
SIGNAL \v_count[7]~29\ : std_logic;
SIGNAL \v_count[8]~30_combout\ : std_logic;
SIGNAL \v_count[8]~31\ : std_logic;
SIGNAL \v_count[9]~32_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \vs_1~q\ : std_logic;
SIGNAL \vs_2~feeder_combout\ : std_logic;
SIGNAL \vs_2~q\ : std_logic;
SIGNAL \vs_out~reg0feeder_combout\ : std_logic;
SIGNAL \vs_out~reg0_q\ : std_logic;
SIGNAL \rgb2~8_combout\ : std_logic;
SIGNAL \hs_1~q\ : std_logic;
SIGNAL \hs_2~feeder_combout\ : std_logic;
SIGNAL \hs_2~q\ : std_logic;
SIGNAL \hs_out~reg0feeder_combout\ : std_logic;
SIGNAL \hs_out~reg0_q\ : std_logic;
SIGNAL \LessThan28~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \de_1~q\ : std_logic;
SIGNAL \de_2~feeder_combout\ : std_logic;
SIGNAL \de_2~q\ : std_logic;
SIGNAL \de_out~reg0feeder_combout\ : std_logic;
SIGNAL \de_out~reg0_q\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \rgb2~12_combout\ : std_logic;
SIGNAL \rgb2~13_combout\ : std_logic;
SIGNAL \rgb2~11_combout\ : std_logic;
SIGNAL \rgb2~14_combout\ : std_logic;
SIGNAL \rgb2~15_combout\ : std_logic;
SIGNAL \rgb2~9_combout\ : std_logic;
SIGNAL \rgb2~10_combout\ : std_logic;
SIGNAL \rgb2~1_combout\ : std_logic;
SIGNAL \rgb2~0_combout\ : std_logic;
SIGNAL \rgb2~2_combout\ : std_logic;
SIGNAL \rgb2~3_combout\ : std_logic;
SIGNAL \rgb2~4_combout\ : std_logic;
SIGNAL \rgb2~5_combout\ : std_logic;
SIGNAL \rgb2~6_combout\ : std_logic;
SIGNAL \rgb2~7_combout\ : std_logic;
SIGNAL \rgb2~16_combout\ : std_logic;
SIGNAL \r_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out[0]~reg0_q\ : std_logic;
SIGNAL \r_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out[1]~reg0_q\ : std_logic;
SIGNAL \r_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out[2]~reg0_q\ : std_logic;
SIGNAL \r_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out[3]~reg0_q\ : std_logic;
SIGNAL \r_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out[4]~reg0_q\ : std_logic;
SIGNAL \r_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out[5]~reg0_q\ : std_logic;
SIGNAL \r_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out[6]~reg0_q\ : std_logic;
SIGNAL \r_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out[7]~reg0_q\ : std_logic;
SIGNAL \g_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out[0]~reg0_q\ : std_logic;
SIGNAL \g_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out[1]~reg0_q\ : std_logic;
SIGNAL \g_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out[2]~reg0_q\ : std_logic;
SIGNAL \g_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out[3]~reg0_q\ : std_logic;
SIGNAL \g_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out[4]~reg0_q\ : std_logic;
SIGNAL \g_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out[5]~reg0_q\ : std_logic;
SIGNAL \g_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out[6]~reg0_q\ : std_logic;
SIGNAL \g_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out[7]~reg0_q\ : std_logic;
SIGNAL \b_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[0]~reg0_q\ : std_logic;
SIGNAL \b_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[1]~reg0_q\ : std_logic;
SIGNAL \b_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[2]~reg0_q\ : std_logic;
SIGNAL \b_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[3]~reg0_q\ : std_logic;
SIGNAL \b_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[4]~reg0_q\ : std_logic;
SIGNAL \b_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[5]~reg0_q\ : std_logic;
SIGNAL \b_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[6]~reg0_q\ : std_logic;
SIGNAL \b_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[7]~reg0_q\ : std_logic;
SIGNAL v_count : std_logic_vector(9 DOWNTO 0);
SIGNAL h_count : std_logic_vector(9 DOWNTO 0);
SIGNAL rgb2 : std_logic_vector(23 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_25 <= clk_25;
ww_reset <= reset;
ww_A <= A;
ww_B <= B;
ww_Res <= Res;
ww_eror <= eror;
vs_out <= ww_vs_out;
hs_out <= ww_hs_out;
de_out <= ww_de_out;
r_out <= ww_r_out;
g_out <= ww_g_out;
b_out <= ww_b_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_25~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_25~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y17_N20
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

-- Location: IOOBUF_X22_Y25_N2
\vs_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vs_out~reg0_q\,
	devoe => ww_devoe,
	o => \vs_out~output_o\);

-- Location: IOOBUF_X24_Y25_N16
\hs_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs_out~reg0_q\,
	devoe => ww_devoe,
	o => \hs_out~output_o\);

-- Location: IOOBUF_X24_Y25_N9
\de_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \de_out~reg0_q\,
	devoe => ww_devoe,
	o => \de_out~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\r_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[0]~output_o\);

-- Location: IOOBUF_X17_Y25_N9
\r_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[1]~output_o\);

-- Location: IOOBUF_X27_Y25_N2
\r_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[2]~output_o\);

-- Location: IOOBUF_X31_Y21_N23
\r_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[3]~output_o\);

-- Location: IOOBUF_X31_Y20_N16
\r_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[4]~output_o\);

-- Location: IOOBUF_X27_Y25_N30
\r_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[5]~output_o\);

-- Location: IOOBUF_X31_Y22_N16
\r_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[6]~output_o\);

-- Location: IOOBUF_X27_Y25_N9
\r_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[7]~output_o\);

-- Location: IOOBUF_X31_Y21_N9
\g_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[0]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\g_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[1]~output_o\);

-- Location: IOOBUF_X29_Y25_N30
\g_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[2]~output_o\);

-- Location: IOOBUF_X31_Y20_N23
\g_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[3]~output_o\);

-- Location: IOOBUF_X31_Y21_N2
\g_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[4]~output_o\);

-- Location: IOOBUF_X27_Y25_N23
\g_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[5]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\g_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[6]~output_o\);

-- Location: IOOBUF_X13_Y25_N23
\g_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[7]~output_o\);

-- Location: IOOBUF_X17_Y25_N2
\b_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[0]~output_o\);

-- Location: IOOBUF_X31_Y19_N9
\b_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[1]~output_o\);

-- Location: IOOBUF_X27_Y25_N16
\b_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[2]~output_o\);

-- Location: IOOBUF_X15_Y25_N2
\b_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N30
\b_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[4]~output_o\);

-- Location: IOOBUF_X31_Y22_N2
\b_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[5]~output_o\);

-- Location: IOOBUF_X15_Y25_N9
\b_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[6]~output_o\);

-- Location: IOOBUF_X29_Y25_N23
\b_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[7]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk_25~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_25,
	o => \clk_25~input_o\);

-- Location: CLKCTRL_G3
\clk_25~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_25~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_25~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y21_N6
\v_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[0]~10_combout\ = v_count(0) $ (VCC)
-- \v_count[0]~11\ = CARRY(v_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(0),
	datad => VCC,
	combout => \v_count[0]~10_combout\,
	cout => \v_count[0]~11\);

-- Location: IOIBUF_X31_Y21_N15
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

-- Location: LCCOMB_X23_Y21_N28
\v_count[9]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[9]~19_combout\ = ((v_count(1)) # (v_count(0))) # (!v_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(2),
	datac => v_count(1),
	datad => v_count(0),
	combout => \v_count[9]~19_combout\);

-- Location: LCCOMB_X23_Y21_N26
\v_count[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[9]~18_combout\ = ((v_count(5)) # (!v_count(9))) # (!v_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(3),
	datab => v_count(5),
	datad => v_count(9),
	combout => \v_count[9]~18_combout\);

-- Location: LCCOMB_X23_Y21_N30
\LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (!v_count(8) & (!v_count(7) & (!v_count(4) & !v_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(8),
	datab => v_count(7),
	datac => v_count(4),
	datad => v_count(6),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X23_Y21_N2
\v_count[9]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[9]~20_combout\ = (\reset~input_o\) # ((!\v_count[9]~19_combout\ & (!\v_count[9]~18_combout\ & \LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \v_count[9]~19_combout\,
	datac => \v_count[9]~18_combout\,
	datad => \LessThan10~0_combout\,
	combout => \v_count[9]~20_combout\);

-- Location: LCCOMB_X24_Y21_N0
\h_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h_count[0]~10_combout\ = h_count(0) $ (VCC)
-- \h_count[0]~11\ = CARRY(h_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h_count(0),
	datad => VCC,
	combout => \h_count[0]~10_combout\,
	cout => \h_count[0]~11\);

-- Location: FF_X24_Y21_N1
\h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \h_count[0]~10_combout\,
	sclr => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(0));

-- Location: LCCOMB_X24_Y21_N2
\h_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h_count[1]~12_combout\ = (h_count(1) & (!\h_count[0]~11\)) # (!h_count(1) & ((\h_count[0]~11\) # (GND)))
-- \h_count[1]~13\ = CARRY((!\h_count[0]~11\) # (!h_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(1),
	datad => VCC,
	cin => \h_count[0]~11\,
	combout => \h_count[1]~12_combout\,
	cout => \h_count[1]~13\);

-- Location: FF_X24_Y21_N3
\h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \h_count[1]~12_combout\,
	sclr => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(1));

-- Location: LCCOMB_X24_Y21_N4
\h_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h_count[2]~14_combout\ = (h_count(2) & (\h_count[1]~13\ $ (GND))) # (!h_count(2) & (!\h_count[1]~13\ & VCC))
-- \h_count[2]~15\ = CARRY((h_count(2) & !\h_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(2),
	datad => VCC,
	cin => \h_count[1]~13\,
	combout => \h_count[2]~14_combout\,
	cout => \h_count[2]~15\);

-- Location: FF_X24_Y21_N5
\h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \h_count[2]~14_combout\,
	sclr => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(2));

-- Location: LCCOMB_X24_Y21_N6
\h_count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h_count[3]~16_combout\ = (h_count(3) & (!\h_count[2]~15\)) # (!h_count(3) & ((\h_count[2]~15\) # (GND)))
-- \h_count[3]~17\ = CARRY((!\h_count[2]~15\) # (!h_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(3),
	datad => VCC,
	cin => \h_count[2]~15\,
	combout => \h_count[3]~16_combout\,
	cout => \h_count[3]~17\);

-- Location: FF_X24_Y21_N7
\h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \h_count[3]~16_combout\,
	sclr => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(3));

-- Location: LCCOMB_X24_Y21_N8
\h_count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h_count[4]~18_combout\ = (h_count(4) & (\h_count[3]~17\ $ (GND))) # (!h_count(4) & (!\h_count[3]~17\ & VCC))
-- \h_count[4]~19\ = CARRY((h_count(4) & !\h_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(4),
	datad => VCC,
	cin => \h_count[3]~17\,
	combout => \h_count[4]~18_combout\,
	cout => \h_count[4]~19\);

-- Location: FF_X24_Y21_N9
\h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \h_count[4]~18_combout\,
	sclr => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(4));

-- Location: LCCOMB_X24_Y21_N10
\h_count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h_count[5]~20_combout\ = (h_count(5) & (!\h_count[4]~19\)) # (!h_count(5) & ((\h_count[4]~19\) # (GND)))
-- \h_count[5]~21\ = CARRY((!\h_count[4]~19\) # (!h_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(5),
	datad => VCC,
	cin => \h_count[4]~19\,
	combout => \h_count[5]~20_combout\,
	cout => \h_count[5]~21\);

-- Location: FF_X24_Y21_N11
\h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \h_count[5]~20_combout\,
	sclr => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(5));

-- Location: LCCOMB_X24_Y21_N12
\h_count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h_count[6]~22_combout\ = (h_count(6) & (\h_count[5]~21\ $ (GND))) # (!h_count(6) & (!\h_count[5]~21\ & VCC))
-- \h_count[6]~23\ = CARRY((h_count(6) & !\h_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(6),
	datad => VCC,
	cin => \h_count[5]~21\,
	combout => \h_count[6]~22_combout\,
	cout => \h_count[6]~23\);

-- Location: FF_X24_Y21_N13
\h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \h_count[6]~22_combout\,
	sclr => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(6));

-- Location: LCCOMB_X24_Y21_N14
\h_count[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h_count[7]~24_combout\ = (h_count(7) & (!\h_count[6]~23\)) # (!h_count(7) & ((\h_count[6]~23\) # (GND)))
-- \h_count[7]~25\ = CARRY((!\h_count[6]~23\) # (!h_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(7),
	datad => VCC,
	cin => \h_count[6]~23\,
	combout => \h_count[7]~24_combout\,
	cout => \h_count[7]~25\);

-- Location: FF_X24_Y21_N15
\h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \h_count[7]~24_combout\,
	sclr => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(7));

-- Location: LCCOMB_X24_Y21_N24
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (h_count(7)) # (!h_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_count(7),
	datad => h_count(0),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X24_Y21_N16
\h_count[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h_count[8]~26_combout\ = (h_count(8) & (\h_count[7]~25\ $ (GND))) # (!h_count(8) & (!\h_count[7]~25\ & VCC))
-- \h_count[8]~27\ = CARRY((h_count(8) & !\h_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(8),
	datad => VCC,
	cin => \h_count[7]~25\,
	combout => \h_count[8]~26_combout\,
	cout => \h_count[8]~27\);

-- Location: FF_X24_Y21_N17
\h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \h_count[8]~26_combout\,
	sclr => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(8));

-- Location: LCCOMB_X24_Y21_N18
\h_count[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h_count[9]~28_combout\ = \h_count[8]~27\ $ (h_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => h_count(9),
	cin => \h_count[8]~27\,
	combout => \h_count[9]~28_combout\);

-- Location: FF_X24_Y21_N19
\h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \h_count[9]~28_combout\,
	sclr => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(9));

-- Location: LCCOMB_X24_Y21_N26
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (((!h_count(8)) # (!h_count(1))) # (!h_count(9))) # (!h_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(4),
	datab => h_count(9),
	datac => h_count(1),
	datad => h_count(8),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X24_Y21_N28
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (h_count(5)) # (((h_count(6)) # (!h_count(3))) # (!h_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(5),
	datab => h_count(2),
	datac => h_count(6),
	datad => h_count(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y21_N30
\v_count[9]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[9]~21_combout\ = (\reset~input_o\) # ((!\Equal0~2_combout\ & (!\Equal0~1_combout\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \v_count[9]~21_combout\);

-- Location: FF_X23_Y21_N7
\v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \v_count[0]~10_combout\,
	sclr => \v_count[9]~20_combout\,
	ena => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(0));

-- Location: LCCOMB_X23_Y21_N8
\v_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[1]~12_combout\ = (v_count(1) & (!\v_count[0]~11\)) # (!v_count(1) & ((\v_count[0]~11\) # (GND)))
-- \v_count[1]~13\ = CARRY((!\v_count[0]~11\) # (!v_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(1),
	datad => VCC,
	cin => \v_count[0]~11\,
	combout => \v_count[1]~12_combout\,
	cout => \v_count[1]~13\);

-- Location: FF_X23_Y21_N9
\v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \v_count[1]~12_combout\,
	sclr => \v_count[9]~20_combout\,
	ena => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(1));

-- Location: LCCOMB_X23_Y21_N10
\v_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[2]~14_combout\ = (v_count(2) & (\v_count[1]~13\ $ (GND))) # (!v_count(2) & (!\v_count[1]~13\ & VCC))
-- \v_count[2]~15\ = CARRY((v_count(2) & !\v_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(2),
	datad => VCC,
	cin => \v_count[1]~13\,
	combout => \v_count[2]~14_combout\,
	cout => \v_count[2]~15\);

-- Location: FF_X23_Y21_N11
\v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \v_count[2]~14_combout\,
	sclr => \v_count[9]~20_combout\,
	ena => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(2));

-- Location: LCCOMB_X23_Y21_N12
\v_count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[3]~16_combout\ = (v_count(3) & (!\v_count[2]~15\)) # (!v_count(3) & ((\v_count[2]~15\) # (GND)))
-- \v_count[3]~17\ = CARRY((!\v_count[2]~15\) # (!v_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(3),
	datad => VCC,
	cin => \v_count[2]~15\,
	combout => \v_count[3]~16_combout\,
	cout => \v_count[3]~17\);

-- Location: FF_X23_Y21_N13
\v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \v_count[3]~16_combout\,
	sclr => \v_count[9]~20_combout\,
	ena => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(3));

-- Location: LCCOMB_X23_Y21_N14
\v_count[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[4]~22_combout\ = (v_count(4) & (\v_count[3]~17\ $ (GND))) # (!v_count(4) & (!\v_count[3]~17\ & VCC))
-- \v_count[4]~23\ = CARRY((v_count(4) & !\v_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(4),
	datad => VCC,
	cin => \v_count[3]~17\,
	combout => \v_count[4]~22_combout\,
	cout => \v_count[4]~23\);

-- Location: FF_X23_Y21_N15
\v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \v_count[4]~22_combout\,
	sclr => \v_count[9]~20_combout\,
	ena => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(4));

-- Location: LCCOMB_X23_Y21_N16
\v_count[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[5]~24_combout\ = (v_count(5) & (!\v_count[4]~23\)) # (!v_count(5) & ((\v_count[4]~23\) # (GND)))
-- \v_count[5]~25\ = CARRY((!\v_count[4]~23\) # (!v_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(5),
	datad => VCC,
	cin => \v_count[4]~23\,
	combout => \v_count[5]~24_combout\,
	cout => \v_count[5]~25\);

-- Location: FF_X23_Y21_N17
\v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \v_count[5]~24_combout\,
	sclr => \v_count[9]~20_combout\,
	ena => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(5));

-- Location: LCCOMB_X23_Y21_N18
\v_count[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[6]~26_combout\ = (v_count(6) & (\v_count[5]~25\ $ (GND))) # (!v_count(6) & (!\v_count[5]~25\ & VCC))
-- \v_count[6]~27\ = CARRY((v_count(6) & !\v_count[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(6),
	datad => VCC,
	cin => \v_count[5]~25\,
	combout => \v_count[6]~26_combout\,
	cout => \v_count[6]~27\);

-- Location: FF_X23_Y21_N19
\v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \v_count[6]~26_combout\,
	sclr => \v_count[9]~20_combout\,
	ena => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(6));

-- Location: LCCOMB_X23_Y21_N20
\v_count[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[7]~28_combout\ = (v_count(7) & (!\v_count[6]~27\)) # (!v_count(7) & ((\v_count[6]~27\) # (GND)))
-- \v_count[7]~29\ = CARRY((!\v_count[6]~27\) # (!v_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(7),
	datad => VCC,
	cin => \v_count[6]~27\,
	combout => \v_count[7]~28_combout\,
	cout => \v_count[7]~29\);

-- Location: FF_X23_Y21_N21
\v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \v_count[7]~28_combout\,
	sclr => \v_count[9]~20_combout\,
	ena => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(7));

-- Location: LCCOMB_X23_Y21_N22
\v_count[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[8]~30_combout\ = (v_count(8) & (\v_count[7]~29\ $ (GND))) # (!v_count(8) & (!\v_count[7]~29\ & VCC))
-- \v_count[8]~31\ = CARRY((v_count(8) & !\v_count[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(8),
	datad => VCC,
	cin => \v_count[7]~29\,
	combout => \v_count[8]~30_combout\,
	cout => \v_count[8]~31\);

-- Location: FF_X23_Y21_N23
\v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \v_count[8]~30_combout\,
	sclr => \v_count[9]~20_combout\,
	ena => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(8));

-- Location: LCCOMB_X23_Y21_N24
\v_count[9]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v_count[9]~32_combout\ = \v_count[8]~31\ $ (v_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => v_count(9),
	cin => \v_count[8]~31\,
	combout => \v_count[9]~32_combout\);

-- Location: FF_X23_Y21_N25
\v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \v_count[9]~32_combout\,
	sclr => \v_count[9]~20_combout\,
	ena => \v_count[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(9));

-- Location: LCCOMB_X22_Y21_N6
\LessThan10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = (!v_count(2) & (!v_count(3) & (\LessThan10~0_combout\ & !v_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(2),
	datab => v_count(3),
	datac => \LessThan10~0_combout\,
	datad => v_count(5),
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X22_Y21_N30
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!v_count(9) & (!v_count(1) & \LessThan10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_count(9),
	datac => v_count(1),
	datad => \LessThan10~1_combout\,
	combout => \LessThan1~0_combout\);

-- Location: FF_X22_Y21_N31
vs_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vs_1~q\);

-- Location: LCCOMB_X23_Y24_N18
\vs_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vs_2~feeder_combout\ = \vs_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vs_1~q\,
	combout => \vs_2~feeder_combout\);

-- Location: FF_X23_Y24_N19
vs_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \vs_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vs_2~q\);

-- Location: LCCOMB_X23_Y24_N20
\vs_out~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vs_out~reg0feeder_combout\ = \vs_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vs_2~q\,
	combout => \vs_out~reg0feeder_combout\);

-- Location: FF_X23_Y24_N21
\vs_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \vs_out~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vs_out~reg0_q\);

-- Location: LCCOMB_X25_Y21_N20
\rgb2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~8_combout\ = (!h_count(7) & (!h_count(8) & ((!h_count(6)) # (!h_count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(7),
	datab => h_count(5),
	datac => h_count(8),
	datad => h_count(6),
	combout => \rgb2~8_combout\);

-- Location: FF_X25_Y21_N21
hs_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \rgb2~8_combout\,
	sclr => h_count(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs_1~q\);

-- Location: LCCOMB_X25_Y21_N30
\hs_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hs_2~feeder_combout\ = \hs_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hs_1~q\,
	combout => \hs_2~feeder_combout\);

-- Location: FF_X25_Y21_N31
hs_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \hs_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs_2~q\);

-- Location: LCCOMB_X25_Y21_N22
\hs_out~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hs_out~reg0feeder_combout\ = \hs_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hs_2~q\,
	combout => \hs_out~reg0feeder_combout\);

-- Location: FF_X25_Y21_N23
\hs_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \hs_out~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs_out~reg0_q\);

-- Location: LCCOMB_X25_Y21_N18
\LessThan28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan28~0_combout\ = (!h_count(5) & (!h_count(6) & !h_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(5),
	datac => h_count(6),
	datad => h_count(4),
	combout => \LessThan28~0_combout\);

-- Location: LCCOMB_X25_Y21_N12
\process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (h_count(9) & (((!h_count(7) & \LessThan28~0_combout\)) # (!h_count(8)))) # (!h_count(9) & ((h_count(8)) # ((h_count(7) & !\LessThan28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(7),
	datab => h_count(9),
	datac => h_count(8),
	datad => \LessThan28~0_combout\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ((!v_count(2) & (!v_count(4) & !v_count(3)))) # (!v_count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(2),
	datab => v_count(5),
	datac => v_count(4),
	datad => v_count(3),
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X25_Y21_N10
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!v_count(8) & (!v_count(7) & !v_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_count(8),
	datac => v_count(7),
	datad => v_count(6),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X25_Y21_N28
\LessThan4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (!v_count(9) & (\LessThan4~1_combout\ & \LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_count(9),
	datac => \LessThan4~1_combout\,
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X25_Y21_N6
\process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\process_1~0_combout\ & (!\LessThan4~2_combout\ & ((\LessThan10~1_combout\) # (!v_count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => v_count(9),
	datac => \LessThan10~1_combout\,
	datad => \LessThan4~2_combout\,
	combout => \process_1~1_combout\);

-- Location: FF_X25_Y21_N7
de_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de_1~q\);

-- Location: LCCOMB_X25_Y21_N8
\de_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \de_2~feeder_combout\ = \de_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \de_1~q\,
	combout => \de_2~feeder_combout\);

-- Location: FF_X25_Y21_N9
de_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \de_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de_2~q\);

-- Location: LCCOMB_X25_Y21_N16
\de_out~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \de_out~reg0feeder_combout\ = \de_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \de_2~q\,
	combout => \de_out~reg0feeder_combout\);

-- Location: FF_X25_Y21_N17
\de_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \de_out~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de_out~reg0_q\);

-- Location: IOIBUF_X22_Y25_N22
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

-- Location: IOIBUF_X22_Y25_N29
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

-- Location: IOIBUF_X22_Y25_N8
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

-- Location: LCCOMB_X22_Y24_N18
\Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY(\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X22_Y24_N20
\Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\A[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X22_Y24_N22
\Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((\A[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X22_Y24_N24
\Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y24_N26
\Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X22_Y24_N28
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

-- Location: LCCOMB_X22_Y21_N26
\rgb2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~12_combout\ = (v_count(2) & (!v_count(4) & ((v_count(0)) # (v_count(1))))) # (!v_count(2) & (((v_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(0),
	datab => v_count(1),
	datac => v_count(2),
	datad => v_count(4),
	combout => \rgb2~12_combout\);

-- Location: LCCOMB_X22_Y21_N28
\rgb2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~13_combout\ = (!v_count(8) & (!v_count(9) & (v_count(7) & v_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(8),
	datab => v_count(9),
	datac => v_count(7),
	datad => v_count(6),
	combout => \rgb2~13_combout\);

-- Location: LCCOMB_X24_Y21_N22
\rgb2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~11_combout\ = (!v_count(5) & (((!h_count(6)) # (!h_count(2))) # (!h_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(3),
	datab => h_count(2),
	datac => v_count(5),
	datad => h_count(6),
	combout => \rgb2~11_combout\);

-- Location: LCCOMB_X22_Y21_N18
\rgb2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~14_combout\ = (!h_count(9) & (v_count(3) $ (v_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_count(3),
	datac => v_count(4),
	datad => h_count(9),
	combout => \rgb2~14_combout\);

-- Location: LCCOMB_X22_Y21_N4
\rgb2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~15_combout\ = (\rgb2~12_combout\ & (\rgb2~13_combout\ & (\rgb2~11_combout\ & \rgb2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb2~12_combout\,
	datab => \rgb2~13_combout\,
	datac => \rgb2~11_combout\,
	datad => \rgb2~14_combout\,
	combout => \rgb2~15_combout\);

-- Location: LCCOMB_X24_Y21_N20
\rgb2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~9_combout\ = (h_count(5)) # ((h_count(3) & ((h_count(1)) # (h_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(3),
	datab => h_count(1),
	datac => h_count(2),
	datad => h_count(5),
	combout => \rgb2~9_combout\);

-- Location: LCCOMB_X25_Y21_N24
\rgb2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~10_combout\ = (\rgb2~8_combout\ & ((h_count(4) & (!h_count(6))) # (!h_count(4) & ((h_count(6)) # (\rgb2~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(4),
	datab => h_count(6),
	datac => \rgb2~9_combout\,
	datad => \rgb2~8_combout\,
	combout => \rgb2~10_combout\);

-- Location: LCCOMB_X23_Y21_N0
\rgb2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~1_combout\ = (v_count(8) & (!v_count(7) & (v_count(4) & !v_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(8),
	datab => v_count(7),
	datac => v_count(4),
	datad => v_count(6),
	combout => \rgb2~1_combout\);

-- Location: LCCOMB_X22_Y21_N0
\rgb2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~0_combout\ = (v_count(2) & ((v_count(1)) # (v_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_count(1),
	datac => v_count(2),
	datad => v_count(0),
	combout => \rgb2~0_combout\);

-- Location: LCCOMB_X22_Y21_N22
\rgb2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~2_combout\ = (\rgb2~1_combout\ & ((v_count(3) & (!v_count(5))) # (!v_count(3) & ((\rgb2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(5),
	datab => v_count(3),
	datac => \rgb2~1_combout\,
	datad => \rgb2~0_combout\,
	combout => \rgb2~2_combout\);

-- Location: LCCOMB_X22_Y21_N8
\rgb2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~3_combout\ = (v_count(5) & (v_count(7) $ (!v_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_count(5),
	datac => v_count(7),
	datad => v_count(6),
	combout => \rgb2~3_combout\);

-- Location: LCCOMB_X22_Y21_N10
\rgb2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~4_combout\ = (v_count(3) & ((v_count(1)) # (v_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_count(1),
	datac => v_count(3),
	datad => v_count(4),
	combout => \rgb2~4_combout\);

-- Location: LCCOMB_X22_Y21_N20
\rgb2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~5_combout\ = (v_count(2) & (\rgb2~4_combout\ & (v_count(4) $ (v_count(6))))) # (!v_count(2) & (v_count(4) & (v_count(6) & !\rgb2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(4),
	datab => v_count(6),
	datac => v_count(2),
	datad => \rgb2~4_combout\,
	combout => \rgb2~5_combout\);

-- Location: LCCOMB_X22_Y21_N2
\rgb2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~6_combout\ = (\rgb2~3_combout\ & ((v_count(8) & (!v_count(6) & !\rgb2~5_combout\)) # (!v_count(8) & (v_count(6) & \rgb2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(8),
	datab => v_count(6),
	datac => \rgb2~3_combout\,
	datad => \rgb2~5_combout\,
	combout => \rgb2~6_combout\);

-- Location: LCCOMB_X22_Y21_N24
\rgb2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~7_combout\ = (rgb2(0) & (!v_count(9) & ((\rgb2~2_combout\) # (\rgb2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rgb2(0),
	datab => v_count(9),
	datac => \rgb2~2_combout\,
	datad => \rgb2~6_combout\,
	combout => \rgb2~7_combout\);

-- Location: LCCOMB_X22_Y21_N12
\rgb2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb2~16_combout\ = (\rgb2~15_combout\ & ((\rgb2~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\)) # (!\rgb2~10_combout\ & ((\rgb2~7_combout\))))) # (!\rgb2~15_combout\ & (((\rgb2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \rgb2~15_combout\,
	datac => \rgb2~10_combout\,
	datad => \rgb2~7_combout\,
	combout => \rgb2~16_combout\);

-- Location: FF_X22_Y21_N13
\rgb2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \rgb2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb2(0));

-- Location: LCCOMB_X16_Y21_N4
\r_out[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_out[0]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \r_out[0]~reg0feeder_combout\);

-- Location: FF_X16_Y21_N5
\r_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \r_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[0]~reg0_q\);

-- Location: LCCOMB_X16_Y21_N2
\r_out[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_out[1]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \r_out[1]~reg0feeder_combout\);

-- Location: FF_X16_Y21_N3
\r_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \r_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[1]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N24
\r_out[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_out[2]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \r_out[2]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N25
\r_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \r_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[2]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N2
\r_out[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_out[3]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \r_out[3]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N3
\r_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \r_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[3]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N20
\r_out[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_out[4]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \r_out[4]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N21
\r_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \r_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[4]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N6
\r_out[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_out[5]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \r_out[5]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N7
\r_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \r_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[5]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N0
\r_out[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_out[6]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \r_out[6]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N1
\r_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \r_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[6]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N10
\r_out[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_out[7]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \r_out[7]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N11
\r_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \r_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[7]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N12
\g_out[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g_out[0]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \g_out[0]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N13
\g_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \g_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[0]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N22
\g_out[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g_out[1]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \g_out[1]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N23
\g_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \g_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[1]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N8
\g_out[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g_out[2]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \g_out[2]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N9
\g_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \g_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[2]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N30
\g_out[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g_out[3]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \g_out[3]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N31
\g_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \g_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[3]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N4
\g_out[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g_out[4]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \g_out[4]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N5
\g_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \g_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[4]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N14
\g_out[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g_out[5]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \g_out[5]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N15
\g_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \g_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[5]~reg0_q\);

-- Location: LCCOMB_X16_Y21_N28
\g_out[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g_out[6]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \g_out[6]~reg0feeder_combout\);

-- Location: FF_X16_Y21_N29
\g_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \g_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[6]~reg0_q\);

-- Location: LCCOMB_X16_Y21_N26
\g_out[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g_out[7]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \g_out[7]~reg0feeder_combout\);

-- Location: FF_X16_Y21_N27
\g_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \g_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[7]~reg0_q\);

-- Location: LCCOMB_X16_Y21_N12
\b_out[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_out[0]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \b_out[0]~reg0feeder_combout\);

-- Location: FF_X16_Y21_N13
\b_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \b_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[0]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N28
\b_out[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_out[1]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \b_out[1]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N29
\b_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \b_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[1]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N26
\b_out[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_out[2]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \b_out[2]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N27
\b_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \b_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[2]~reg0_q\);

-- Location: LCCOMB_X16_Y21_N10
\b_out[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_out[3]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \b_out[3]~reg0feeder_combout\);

-- Location: FF_X16_Y21_N11
\b_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \b_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[3]~reg0_q\);

-- Location: LCCOMB_X16_Y21_N20
\b_out[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_out[4]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \b_out[4]~reg0feeder_combout\);

-- Location: FF_X16_Y21_N21
\b_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \b_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[4]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N16
\b_out[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_out[5]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \b_out[5]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N17
\b_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \b_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[5]~reg0_q\);

-- Location: LCCOMB_X16_Y21_N22
\b_out[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_out[6]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \b_out[6]~reg0feeder_combout\);

-- Location: FF_X16_Y21_N23
\b_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \b_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[6]~reg0_q\);

-- Location: LCCOMB_X28_Y21_N18
\b_out[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_out[7]~reg0feeder_combout\ = rgb2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rgb2(0),
	combout => \b_out[7]~reg0feeder_combout\);

-- Location: FF_X28_Y21_N19
\b_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~inputclkctrl_outclk\,
	d => \b_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[7]~reg0_q\);

-- Location: IOIBUF_X10_Y20_N1
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

-- Location: IOIBUF_X31_Y5_N8
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

-- Location: IOIBUF_X13_Y0_N1
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

-- Location: IOIBUF_X3_Y0_N15
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

-- Location: IOIBUF_X3_Y0_N1
\Res[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Res(0),
	o => \Res[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\Res[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Res(1),
	o => \Res[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\Res[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Res(2),
	o => \Res[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N15
\Res[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Res(3),
	o => \Res[3]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\eror~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_eror,
	o => \eror~input_o\);

-- Location: IOIBUF_X6_Y0_N15
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

ww_vs_out <= \vs_out~output_o\;

ww_hs_out <= \hs_out~output_o\;

ww_de_out <= \de_out~output_o\;

ww_r_out(0) <= \r_out[0]~output_o\;

ww_r_out(1) <= \r_out[1]~output_o\;

ww_r_out(2) <= \r_out[2]~output_o\;

ww_r_out(3) <= \r_out[3]~output_o\;

ww_r_out(4) <= \r_out[4]~output_o\;

ww_r_out(5) <= \r_out[5]~output_o\;

ww_r_out(6) <= \r_out[6]~output_o\;

ww_r_out(7) <= \r_out[7]~output_o\;

ww_g_out(0) <= \g_out[0]~output_o\;

ww_g_out(1) <= \g_out[1]~output_o\;

ww_g_out(2) <= \g_out[2]~output_o\;

ww_g_out(3) <= \g_out[3]~output_o\;

ww_g_out(4) <= \g_out[4]~output_o\;

ww_g_out(5) <= \g_out[5]~output_o\;

ww_g_out(6) <= \g_out[6]~output_o\;

ww_g_out(7) <= \g_out[7]~output_o\;

ww_b_out(0) <= \b_out[0]~output_o\;

ww_b_out(1) <= \b_out[1]~output_o\;

ww_b_out(2) <= \b_out[2]~output_o\;

ww_b_out(3) <= \b_out[3]~output_o\;

ww_b_out(4) <= \b_out[4]~output_o\;

ww_b_out(5) <= \b_out[5]~output_o\;

ww_b_out(6) <= \b_out[6]~output_o\;

ww_b_out(7) <= \b_out[7]~output_o\;
END structure;


