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

-- DATE "09/27/2021 22:55:26"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_ir_receiver IS
    PORT (
	A : OUT std_logic_vector(3 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0);
	rd_data : OUT std_logic;
	clk : IN std_logic;
	data_in : IN std_logic;
	reset : IN std_logic;
	mode : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END full_ir_receiver;

-- Design Ports Information
-- A[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_data	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF full_ir_receiver IS
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
SIGNAL ww_rd_data : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \rd_data~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \irRec|clock_counter[0]~17_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[0]~18_combout\ : std_logic;
SIGNAL \irRec|Equal1~3_combout\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \irRec|data~0_combout\ : std_logic;
SIGNAL \irRec|data~q\ : std_logic;
SIGNAL \irRec|data_follow~0_combout\ : std_logic;
SIGNAL \irRec|data_follow~q\ : std_logic;
SIGNAL \irRec|state~10_combout\ : std_logic;
SIGNAL \irRec|state.check_LC_off_count~q\ : std_logic;
SIGNAL \irRec|state~13_combout\ : std_logic;
SIGNAL \irRec|Add3~0_combout\ : std_logic;
SIGNAL \irRec|Add3~5\ : std_logic;
SIGNAL \irRec|Add3~6_combout\ : std_logic;
SIGNAL \irRec|data_counter[3]~2_combout\ : std_logic;
SIGNAL \irRec|Add3~7\ : std_logic;
SIGNAL \irRec|Add3~8_combout\ : std_logic;
SIGNAL \irRec|data_counter[4]~1_combout\ : std_logic;
SIGNAL \irRec|Add3~9\ : std_logic;
SIGNAL \irRec|Add3~10_combout\ : std_logic;
SIGNAL \irRec|data_counter[5]~3_combout\ : std_logic;
SIGNAL \irRec|Equal5~0_combout\ : std_logic;
SIGNAL \irRec|Add3~11\ : std_logic;
SIGNAL \irRec|Add3~12_combout\ : std_logic;
SIGNAL \irRec|data_counter[6]~31_combout\ : std_logic;
SIGNAL \irRec|Add3~13\ : std_logic;
SIGNAL \irRec|Add3~14_combout\ : std_logic;
SIGNAL \irRec|data_counter[7]~30_combout\ : std_logic;
SIGNAL \irRec|Equal4~7_combout\ : std_logic;
SIGNAL \irRec|Add3~15\ : std_logic;
SIGNAL \irRec|Add3~16_combout\ : std_logic;
SIGNAL \irRec|data_counter[8]~29_combout\ : std_logic;
SIGNAL \irRec|Add3~17\ : std_logic;
SIGNAL \irRec|Add3~18_combout\ : std_logic;
SIGNAL \irRec|data_counter[9]~28_combout\ : std_logic;
SIGNAL \irRec|Add3~19\ : std_logic;
SIGNAL \irRec|Add3~20_combout\ : std_logic;
SIGNAL \irRec|data_counter[10]~27_combout\ : std_logic;
SIGNAL \irRec|Add3~21\ : std_logic;
SIGNAL \irRec|Add3~22_combout\ : std_logic;
SIGNAL \irRec|data_counter[11]~26_combout\ : std_logic;
SIGNAL \irRec|Add3~23\ : std_logic;
SIGNAL \irRec|Add3~24_combout\ : std_logic;
SIGNAL \irRec|data_counter[12]~25_combout\ : std_logic;
SIGNAL \irRec|Add3~25\ : std_logic;
SIGNAL \irRec|Add3~26_combout\ : std_logic;
SIGNAL \irRec|data_counter[13]~24_combout\ : std_logic;
SIGNAL \irRec|Add3~27\ : std_logic;
SIGNAL \irRec|Add3~28_combout\ : std_logic;
SIGNAL \irRec|data_counter[14]~23_combout\ : std_logic;
SIGNAL \irRec|Add3~29\ : std_logic;
SIGNAL \irRec|Add3~30_combout\ : std_logic;
SIGNAL \irRec|data_counter[15]~22_combout\ : std_logic;
SIGNAL \irRec|Equal4~5_combout\ : std_logic;
SIGNAL \irRec|Add3~31\ : std_logic;
SIGNAL \irRec|Add3~32_combout\ : std_logic;
SIGNAL \irRec|data_counter[16]~21_combout\ : std_logic;
SIGNAL \irRec|Add3~33\ : std_logic;
SIGNAL \irRec|Add3~34_combout\ : std_logic;
SIGNAL \irRec|data_counter[17]~20_combout\ : std_logic;
SIGNAL \irRec|Add3~35\ : std_logic;
SIGNAL \irRec|Add3~36_combout\ : std_logic;
SIGNAL \irRec|data_counter[18]~19_combout\ : std_logic;
SIGNAL \irRec|Add3~37\ : std_logic;
SIGNAL \irRec|Add3~38_combout\ : std_logic;
SIGNAL \irRec|data_counter[19]~18_combout\ : std_logic;
SIGNAL \irRec|Add3~39\ : std_logic;
SIGNAL \irRec|Add3~40_combout\ : std_logic;
SIGNAL \irRec|data_counter[20]~17_combout\ : std_logic;
SIGNAL \irRec|Add3~41\ : std_logic;
SIGNAL \irRec|Add3~42_combout\ : std_logic;
SIGNAL \irRec|data_counter[21]~16_combout\ : std_logic;
SIGNAL \irRec|Add3~43\ : std_logic;
SIGNAL \irRec|Add3~44_combout\ : std_logic;
SIGNAL \irRec|data_counter[22]~15_combout\ : std_logic;
SIGNAL \irRec|Add3~45\ : std_logic;
SIGNAL \irRec|Add3~46_combout\ : std_logic;
SIGNAL \irRec|data_counter[23]~14_combout\ : std_logic;
SIGNAL \irRec|Add3~47\ : std_logic;
SIGNAL \irRec|Add3~48_combout\ : std_logic;
SIGNAL \irRec|data_counter[24]~13_combout\ : std_logic;
SIGNAL \irRec|Add3~49\ : std_logic;
SIGNAL \irRec|Add3~50_combout\ : std_logic;
SIGNAL \irRec|data_counter[25]~12_combout\ : std_logic;
SIGNAL \irRec|Add3~51\ : std_logic;
SIGNAL \irRec|Add3~52_combout\ : std_logic;
SIGNAL \irRec|data_counter[26]~11_combout\ : std_logic;
SIGNAL \irRec|Add3~53\ : std_logic;
SIGNAL \irRec|Add3~54_combout\ : std_logic;
SIGNAL \irRec|data_counter[27]~10_combout\ : std_logic;
SIGNAL \irRec|Equal4~1_combout\ : std_logic;
SIGNAL \irRec|Add3~55\ : std_logic;
SIGNAL \irRec|Add3~56_combout\ : std_logic;
SIGNAL \irRec|data_counter[28]~9_combout\ : std_logic;
SIGNAL \irRec|Add3~57\ : std_logic;
SIGNAL \irRec|Add3~58_combout\ : std_logic;
SIGNAL \irRec|data_counter[29]~8_combout\ : std_logic;
SIGNAL \irRec|Add3~59\ : std_logic;
SIGNAL \irRec|Add3~60_combout\ : std_logic;
SIGNAL \irRec|data_counter[30]~7_combout\ : std_logic;
SIGNAL \irRec|Add3~61\ : std_logic;
SIGNAL \irRec|Add3~62_combout\ : std_logic;
SIGNAL \irRec|data_counter[31]~6_combout\ : std_logic;
SIGNAL \irRec|Equal4~0_combout\ : std_logic;
SIGNAL \irRec|Equal4~2_combout\ : std_logic;
SIGNAL \irRec|Equal4~3_combout\ : std_logic;
SIGNAL \irRec|Equal4~4_combout\ : std_logic;
SIGNAL \irRec|Equal4~6_combout\ : std_logic;
SIGNAL \irRec|Equal4~8_combout\ : std_logic;
SIGNAL \irRec|Equal5~1_combout\ : std_logic;
SIGNAL \irRec|data_reg[17]~1_combout\ : std_logic;
SIGNAL \irRec|data_counter[0]~0_combout\ : std_logic;
SIGNAL \irRec|Add3~1\ : std_logic;
SIGNAL \irRec|Add3~2_combout\ : std_logic;
SIGNAL \irRec|data_counter[1]~5_combout\ : std_logic;
SIGNAL \irRec|Add3~3\ : std_logic;
SIGNAL \irRec|Add3~4_combout\ : std_logic;
SIGNAL \irRec|data_counter[2]~4_combout\ : std_logic;
SIGNAL \irRec|Equal4~9_combout\ : std_logic;
SIGNAL \irRec|Equal4~10_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[0]~19_combout\ : std_logic;
SIGNAL \irRec|Equal0~0_combout\ : std_logic;
SIGNAL \irRec|Equal0~1_combout\ : std_logic;
SIGNAL \irRec|Equal0~2_combout\ : std_logic;
SIGNAL \irRec|Equal0~3_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[5]~53_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[14]~48\ : std_logic;
SIGNAL \irRec|LC_on_counter[15]~49_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[15]~50\ : std_logic;
SIGNAL \irRec|LC_on_counter[16]~51_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[16]~52\ : std_logic;
SIGNAL \irRec|LC_on_counter[17]~55_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[17]~56\ : std_logic;
SIGNAL \irRec|LC_on_counter[18]~57_combout\ : std_logic;
SIGNAL \irRec|Equal0~4_combout\ : std_logic;
SIGNAL \irRec|Equal0~5_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[5]~54_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[0]~20\ : std_logic;
SIGNAL \irRec|LC_on_counter[1]~21_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[1]~22\ : std_logic;
SIGNAL \irRec|LC_on_counter[2]~23_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[2]~24\ : std_logic;
SIGNAL \irRec|LC_on_counter[3]~25_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[3]~26\ : std_logic;
SIGNAL \irRec|LC_on_counter[4]~27_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[4]~28\ : std_logic;
SIGNAL \irRec|LC_on_counter[5]~29_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[5]~30\ : std_logic;
SIGNAL \irRec|LC_on_counter[6]~31_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[6]~32\ : std_logic;
SIGNAL \irRec|LC_on_counter[7]~33_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[7]~34\ : std_logic;
SIGNAL \irRec|LC_on_counter[8]~35_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[8]~36\ : std_logic;
SIGNAL \irRec|LC_on_counter[9]~37_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[9]~38\ : std_logic;
SIGNAL \irRec|LC_on_counter[10]~39_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[10]~40\ : std_logic;
SIGNAL \irRec|LC_on_counter[11]~41_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[11]~42\ : std_logic;
SIGNAL \irRec|LC_on_counter[12]~43_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[12]~44\ : std_logic;
SIGNAL \irRec|LC_on_counter[13]~45_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[13]~46\ : std_logic;
SIGNAL \irRec|LC_on_counter[14]~47_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~12_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~10_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~11_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~13_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~14_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~8_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~9_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~15_combout\ : std_logic;
SIGNAL \irRec|state~12_combout\ : std_logic;
SIGNAL \irRec|state~14_combout\ : std_logic;
SIGNAL \irRec|state.init~q\ : std_logic;
SIGNAL \irRec|Selector1~0_combout\ : std_logic;
SIGNAL \irRec|state.read_LC_on~q\ : std_logic;
SIGNAL \irRec|state~11_combout\ : std_logic;
SIGNAL \irRec|state.check_LC_on_count~q\ : std_logic;
SIGNAL \irRec|Selector2~0_combout\ : std_logic;
SIGNAL \irRec|state.read_LC_off~q\ : std_logic;
SIGNAL \irRec|LC_off_counter[5]~44_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[14]~49\ : std_logic;
SIGNAL \irRec|LC_off_counter[15]~50_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[15]~51\ : std_logic;
SIGNAL \irRec|LC_off_counter[16]~52_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[16]~53\ : std_logic;
SIGNAL \irRec|LC_off_counter[17]~54_combout\ : std_logic;
SIGNAL \irRec|Equal1~4_combout\ : std_logic;
SIGNAL \irRec|Equal1~5_combout\ : std_logic;
SIGNAL \irRec|Equal1~2_combout\ : std_logic;
SIGNAL \irRec|Equal1~0_combout\ : std_logic;
SIGNAL \irRec|Equal1~1_combout\ : std_logic;
SIGNAL \irRec|Equal1~6_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[5]~45_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[0]~19\ : std_logic;
SIGNAL \irRec|LC_off_counter[1]~20_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[1]~21\ : std_logic;
SIGNAL \irRec|LC_off_counter[2]~22_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[2]~23\ : std_logic;
SIGNAL \irRec|LC_off_counter[3]~24_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[3]~25\ : std_logic;
SIGNAL \irRec|LC_off_counter[4]~26_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[4]~27\ : std_logic;
SIGNAL \irRec|LC_off_counter[5]~28_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[5]~29\ : std_logic;
SIGNAL \irRec|LC_off_counter[6]~30_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[6]~31\ : std_logic;
SIGNAL \irRec|LC_off_counter[7]~32_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[7]~33\ : std_logic;
SIGNAL \irRec|LC_off_counter[8]~34_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[8]~35\ : std_logic;
SIGNAL \irRec|LC_off_counter[9]~36_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[9]~37\ : std_logic;
SIGNAL \irRec|LC_off_counter[10]~38_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[10]~39\ : std_logic;
SIGNAL \irRec|LC_off_counter[11]~40_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[11]~41\ : std_logic;
SIGNAL \irRec|LC_off_counter[12]~42_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[12]~43\ : std_logic;
SIGNAL \irRec|LC_off_counter[13]~46_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[13]~47\ : std_logic;
SIGNAL \irRec|LC_off_counter[14]~48_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~5_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~6_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~3_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~1_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~0_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~2_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~4_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~7_combout\ : std_logic;
SIGNAL \irRec|Selector3~0_combout\ : std_logic;
SIGNAL \irRec|Selector3~1_combout\ : std_logic;
SIGNAL \irRec|state.read_data~q\ : std_logic;
SIGNAL \irRec|state~9_combout\ : std_logic;
SIGNAL \irRec|state.check_data~q\ : std_logic;
SIGNAL \irRec|clock_counter[15]~48\ : std_logic;
SIGNAL \irRec|clock_counter[16]~49_combout\ : std_logic;
SIGNAL \irRec|Equal2~3_combout\ : std_logic;
SIGNAL \irRec|Equal2~4_combout\ : std_logic;
SIGNAL \irRec|Equal2~0_combout\ : std_logic;
SIGNAL \irRec|Equal2~1_combout\ : std_logic;
SIGNAL \irRec|Equal2~2_combout\ : std_logic;
SIGNAL \irRec|Equal2~5_combout\ : std_logic;
SIGNAL \irRec|Equal2~6_combout\ : std_logic;
SIGNAL \irRec|clock_counter[4]~51_combout\ : std_logic;
SIGNAL \irRec|clock_counter[0]~18\ : std_logic;
SIGNAL \irRec|clock_counter[1]~19_combout\ : std_logic;
SIGNAL \irRec|clock_counter[1]~20\ : std_logic;
SIGNAL \irRec|clock_counter[2]~21_combout\ : std_logic;
SIGNAL \irRec|clock_counter[2]~22\ : std_logic;
SIGNAL \irRec|clock_counter[3]~23_combout\ : std_logic;
SIGNAL \irRec|clock_counter[3]~24\ : std_logic;
SIGNAL \irRec|clock_counter[4]~25_combout\ : std_logic;
SIGNAL \irRec|clock_counter[4]~26\ : std_logic;
SIGNAL \irRec|clock_counter[5]~27_combout\ : std_logic;
SIGNAL \irRec|clock_counter[5]~28\ : std_logic;
SIGNAL \irRec|clock_counter[6]~29_combout\ : std_logic;
SIGNAL \irRec|clock_counter[6]~30\ : std_logic;
SIGNAL \irRec|clock_counter[7]~31_combout\ : std_logic;
SIGNAL \irRec|clock_counter[7]~32\ : std_logic;
SIGNAL \irRec|clock_counter[8]~33_combout\ : std_logic;
SIGNAL \irRec|clock_counter[8]~34\ : std_logic;
SIGNAL \irRec|clock_counter[9]~35_combout\ : std_logic;
SIGNAL \irRec|clock_counter[9]~36\ : std_logic;
SIGNAL \irRec|clock_counter[10]~37_combout\ : std_logic;
SIGNAL \irRec|clock_counter[10]~38\ : std_logic;
SIGNAL \irRec|clock_counter[11]~39_combout\ : std_logic;
SIGNAL \irRec|clock_counter[11]~40\ : std_logic;
SIGNAL \irRec|clock_counter[12]~41_combout\ : std_logic;
SIGNAL \irRec|clock_counter[12]~42\ : std_logic;
SIGNAL \irRec|clock_counter[13]~43_combout\ : std_logic;
SIGNAL \irRec|clock_counter[13]~44\ : std_logic;
SIGNAL \irRec|clock_counter[14]~45_combout\ : std_logic;
SIGNAL \irRec|clock_counter[14]~46\ : std_logic;
SIGNAL \irRec|clock_counter[15]~47_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~5_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~6_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~7_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~8_combout\ : std_logic;
SIGNAL \irRec|data_bit~9_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~0_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~1_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~2_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~3_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~4_combout\ : std_logic;
SIGNAL \irRec|data_bit~5_combout\ : std_logic;
SIGNAL \irRec|data_bit~6_combout\ : std_logic;
SIGNAL \irRec|data_bit~2_combout\ : std_logic;
SIGNAL \irRec|data_bit~0_combout\ : std_logic;
SIGNAL \irRec|data_bit~1_combout\ : std_logic;
SIGNAL \irRec|data_bit~3_combout\ : std_logic;
SIGNAL \irRec|data_bit~4_combout\ : std_logic;
SIGNAL \irRec|data_bit~7_combout\ : std_logic;
SIGNAL \irRec|data_bit~8_combout\ : std_logic;
SIGNAL \irRec|data_bit~10_combout\ : std_logic;
SIGNAL \irRec|data_bit~q\ : std_logic;
SIGNAL \irRec|shift_reg~7_combout\ : std_logic;
SIGNAL \irRec|shift_proc~1_combout\ : std_logic;
SIGNAL \irRec|shift_proc~0_combout\ : std_logic;
SIGNAL \irRec|shift_proc~2_combout\ : std_logic;
SIGNAL \irRec|shift_reg[19]~0_combout\ : std_logic;
SIGNAL \irRec|shift_reg~6_combout\ : std_logic;
SIGNAL \irRec|shift_reg~5_combout\ : std_logic;
SIGNAL \irRec|shift_reg~4_combout\ : std_logic;
SIGNAL \irRec|shift_reg~3_combout\ : std_logic;
SIGNAL \irRec|shift_reg~2_combout\ : std_logic;
SIGNAL \irRec|shift_reg~1_combout\ : std_logic;
SIGNAL \irRec|data_reg~5_combout\ : std_logic;
SIGNAL \irRec|data_reg~2_combout\ : std_logic;
SIGNAL \irRec|data_reg~4_combout\ : std_logic;
SIGNAL \irRec|data_reg~6_combout\ : std_logic;
SIGNAL \irRec|data_reg~8_combout\ : std_logic;
SIGNAL \irRec|data_reg~7_combout\ : std_logic;
SIGNAL \irRec|data_reg~3_combout\ : std_logic;
SIGNAL \irRec|data_reg~0_combout\ : std_logic;
SIGNAL \irRec|Mux2~3_combout\ : std_logic;
SIGNAL \irRec|Mux2~4_combout\ : std_logic;
SIGNAL \irRec|Mux2~6_combout\ : std_logic;
SIGNAL \irRec|Mux2~5_combout\ : std_logic;
SIGNAL \irRec|dt_rdy~q\ : std_logic;
SIGNAL \irRec|Mux3~2_combout\ : std_logic;
SIGNAL \irRec|Mux3~3_combout\ : std_logic;
SIGNAL \irRec|Mux3~4_combout\ : std_logic;
SIGNAL \irRec|Mux3~5_combout\ : std_logic;
SIGNAL \irRec|Mux0~0_combout\ : std_logic;
SIGNAL \irRec|Mux0~1_combout\ : std_logic;
SIGNAL \irRec|Mux0~2_combout\ : std_logic;
SIGNAL \irRec|Mux0~3_combout\ : std_logic;
SIGNAL \irRec|Mux1~1_combout\ : std_logic;
SIGNAL \irRec|Mux1~0_combout\ : std_logic;
SIGNAL \irRec|Mux1~2_combout\ : std_logic;
SIGNAL \irRec|Mux1~3_combout\ : std_logic;
SIGNAL \irRec|Mux1~4_combout\ : std_logic;
SIGNAL \irRec|Mux1~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \A[0]~12_combout\ : std_logic;
SIGNAL \irRec|Mux0~4_combout\ : std_logic;
SIGNAL \analyse_data~0_combout\ : std_logic;
SIGNAL \analyse_data:counter[2]~0_combout\ : std_logic;
SIGNAL \analyse_data:counter[2]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \analyse_data:counter[0]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \analyse_data:counter[1]~q\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \old_data_2[3]~0_combout\ : std_logic;
SIGNAL \old_data_2[3]~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \old_data_3[3]~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \irRec|Mux2~2_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add4~3_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \old_data_1[3]~0_combout\ : std_logic;
SIGNAL \old_data_1[3]~feeder_combout\ : std_logic;
SIGNAL \A[3]~2_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \A[3]~3_combout\ : std_logic;
SIGNAL \A[3]~4_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \A[3]~13_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \A[3]~8_combout\ : std_logic;
SIGNAL \A[3]~9_combout\ : std_logic;
SIGNAL \A[3]~5_combout\ : std_logic;
SIGNAL \A[3]~6_combout\ : std_logic;
SIGNAL \A[3]~7_combout\ : std_logic;
SIGNAL \A[3]~10_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \A[0]~11_combout\ : std_logic;
SIGNAL \A[0]~reg0_q\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \A[1]~reg0_q\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \A[2]~reg0_q\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \A[3]~reg0_q\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \old_data_6[3]~0_combout\ : std_logic;
SIGNAL \old_data_5[3]~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \old_data_6[3]~1_combout\ : std_logic;
SIGNAL \old_data_4[3]~0_combout\ : std_logic;
SIGNAL \old_data_4[3]~feeder_combout\ : std_logic;
SIGNAL \B[1]~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Add6~3_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \B[1]~1_combout\ : std_logic;
SIGNAL \B[1]~2_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add3~1_cout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \B[1]~4_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \B[1]~3_combout\ : std_logic;
SIGNAL \B[1]~5_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \B[0]~reg0_q\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \B[1]~6_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \B[1]~reg0_q\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \B[2]~reg0_q\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \B[3]~reg0_q\ : std_logic;
SIGNAL \hex05|Mux6~0_combout\ : std_logic;
SIGNAL \hex05|Mux5~0_combout\ : std_logic;
SIGNAL \hex05|Mux4~0_combout\ : std_logic;
SIGNAL \hex05|Mux3~0_combout\ : std_logic;
SIGNAL \hex05|Mux2~0_combout\ : std_logic;
SIGNAL \hex05|Mux1~0_combout\ : std_logic;
SIGNAL \hex05|Mux0~0_combout\ : std_logic;
SIGNAL \hex04|Mux6~0_combout\ : std_logic;
SIGNAL \hex04|Mux5~0_combout\ : std_logic;
SIGNAL \hex04|Mux4~0_combout\ : std_logic;
SIGNAL \hex04|Mux3~0_combout\ : std_logic;
SIGNAL \hex04|Mux2~0_combout\ : std_logic;
SIGNAL \hex04|Mux1~0_combout\ : std_logic;
SIGNAL \hex04|Mux0~0_combout\ : std_logic;
SIGNAL \hex03|Mux6~0_combout\ : std_logic;
SIGNAL \hex03|Mux5~0_combout\ : std_logic;
SIGNAL \hex03|Mux3~0_combout\ : std_logic;
SIGNAL \hex02|Mux6~0_combout\ : std_logic;
SIGNAL \hex02|Mux5~0_combout\ : std_logic;
SIGNAL \hex02|Mux4~0_combout\ : std_logic;
SIGNAL \hex02|Mux3~0_combout\ : std_logic;
SIGNAL \hex02|Mux2~0_combout\ : std_logic;
SIGNAL \hex02|Mux1~0_combout\ : std_logic;
SIGNAL \hex02|Mux0~0_combout\ : std_logic;
SIGNAL \hex01|Mux6~0_combout\ : std_logic;
SIGNAL \hex01|Mux5~0_combout\ : std_logic;
SIGNAL \hex01|Mux4~0_combout\ : std_logic;
SIGNAL \hex01|Mux3~0_combout\ : std_logic;
SIGNAL \hex01|Mux2~0_combout\ : std_logic;
SIGNAL \hex01|Mux1~0_combout\ : std_logic;
SIGNAL \hex01|Mux0~0_combout\ : std_logic;
SIGNAL \hex00|Mux6~0_combout\ : std_logic;
SIGNAL \hex00|Mux5~0_combout\ : std_logic;
SIGNAL \hex00|Mux3~0_combout\ : std_logic;
SIGNAL old_data_5 : std_logic_vector(3 DOWNTO 0);
SIGNAL \irRec|clock_counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL old_data_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \irRec|LC_off_counter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL old_data_4 : std_logic_vector(3 DOWNTO 0);
SIGNAL \irRec|LC_on_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL old_data_6 : std_logic_vector(3 DOWNTO 0);
SIGNAL old_data_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL old_data_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \irRec|data_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \irRec|data_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \irRec|shift_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \hex00|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL ALT_INV_old_data_1 : std_logic_vector(3 DOWNTO 3);
SIGNAL \hex01|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex02|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex03|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL ALT_INV_old_data_4 : std_logic_vector(3 DOWNTO 3);
SIGNAL \hex04|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex05|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A <= ww_A;
B <= ww_B;
rd_data <= ww_rd_data;
ww_clk <= clk;
ww_data_in <= data_in;
ww_reset <= reset;
ww_mode <= mode;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\hex00|ALT_INV_Mux5~0_combout\ <= NOT \hex00|Mux5~0_combout\;
ALT_INV_old_data_1(3) <= NOT old_data_1(3);
\hex01|ALT_INV_Mux0~0_combout\ <= NOT \hex01|Mux0~0_combout\;
\hex02|ALT_INV_Mux0~0_combout\ <= NOT \hex02|Mux0~0_combout\;
\hex03|ALT_INV_Mux5~0_combout\ <= NOT \hex03|Mux5~0_combout\;
ALT_INV_old_data_4(3) <= NOT old_data_4(3);
\hex04|ALT_INV_Mux0~0_combout\ <= NOT \hex04|Mux0~0_combout\;
\hex05|ALT_INV_Mux0~0_combout\ <= NOT \hex05|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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
\A[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[0]~reg0_q\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\A[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[1]~reg0_q\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\A[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[2]~reg0_q\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\A[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[3]~reg0_q\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]~reg0_q\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]~reg0_q\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]~reg0_q\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]~reg0_q\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\rd_data~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \irRec|data_bit~q\,
	devoe => ww_devoe,
	o => \rd_data~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex05|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex05|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex05|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex05|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex05|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex05|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex05|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex04|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex04|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex04|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex04|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex04|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex04|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex04|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex03|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex03|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => old_data_4(3),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex03|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex03|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex03|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_old_data_4(3),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex02|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex02|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex02|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex02|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex02|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex02|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex02|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex01|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex01|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex01|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex01|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex01|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex01|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex01|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex00|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex00|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => old_data_1(3),
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex00|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex00|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex00|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_old_data_1(3),
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: LCCOMB_X55_Y50_N16
\irRec|clock_counter[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[0]~17_combout\ = \irRec|clock_counter\(0) $ (VCC)
-- \irRec|clock_counter[0]~18\ = CARRY(\irRec|clock_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|clock_counter\(0),
	datad => VCC,
	combout => \irRec|clock_counter[0]~17_combout\,
	cout => \irRec|clock_counter[0]~18\);

-- Location: LCCOMB_X59_Y51_N14
\irRec|LC_off_counter[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[0]~18_combout\ = \irRec|LC_off_counter\(0) $ (VCC)
-- \irRec|LC_off_counter[0]~19\ = CARRY(\irRec|LC_off_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(0),
	datad => VCC,
	combout => \irRec|LC_off_counter[0]~18_combout\,
	cout => \irRec|LC_off_counter[0]~19\);

-- Location: LCCOMB_X59_Y51_N6
\irRec|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~3_combout\ = (!\irRec|LC_off_counter\(8) & (!\irRec|LC_off_counter\(6) & !\irRec|LC_off_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(8),
	datac => \irRec|LC_off_counter\(6),
	datad => \irRec|LC_off_counter\(7),
	combout => \irRec|Equal1~3_combout\);

-- Location: IOIBUF_X24_Y0_N29
\data_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in,
	o => \data_in~input_o\);

-- Location: LCCOMB_X58_Y50_N2
\irRec|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data~0_combout\ = (\reset~input_o\ & \data_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \data_in~input_o\,
	combout => \irRec|data~0_combout\);

-- Location: FF_X58_Y50_N3
\irRec|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data~q\);

-- Location: LCCOMB_X58_Y50_N28
\irRec|data_follow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_follow~0_combout\ = (\reset~input_o\ & !\irRec|data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \irRec|data~q\,
	combout => \irRec|data_follow~0_combout\);

-- Location: FF_X58_Y50_N29
\irRec|data_follow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_follow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_follow~q\);

-- Location: LCCOMB_X58_Y50_N8
\irRec|state~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~10_combout\ = (\reset~input_o\ & (\irRec|state.read_LC_off~q\ & !\irRec|data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \irRec|state.read_LC_off~q\,
	datad => \irRec|data~q\,
	combout => \irRec|state~10_combout\);

-- Location: FF_X58_Y50_N9
\irRec|state.check_LC_off_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|state.check_LC_off_count~q\);

-- Location: LCCOMB_X58_Y50_N4
\irRec|state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~13_combout\ = ((!\irRec|state.init~q\ & \irRec|data~q\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|state.init~q\,
	datac => \reset~input_o\,
	datad => \irRec|data~q\,
	combout => \irRec|state~13_combout\);

-- Location: LCCOMB_X56_Y48_N0
\irRec|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~0_combout\ = \irRec|data_counter\(0) $ (VCC)
-- \irRec|Add3~1\ = CARRY(\irRec|data_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(0),
	datad => VCC,
	combout => \irRec|Add3~0_combout\,
	cout => \irRec|Add3~1\);

-- Location: LCCOMB_X56_Y48_N4
\irRec|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~4_combout\ = (\irRec|data_counter\(2) & (\irRec|Add3~3\ $ (GND))) # (!\irRec|data_counter\(2) & (!\irRec|Add3~3\ & VCC))
-- \irRec|Add3~5\ = CARRY((\irRec|data_counter\(2) & !\irRec|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(2),
	datad => VCC,
	cin => \irRec|Add3~3\,
	combout => \irRec|Add3~4_combout\,
	cout => \irRec|Add3~5\);

-- Location: LCCOMB_X56_Y48_N6
\irRec|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~6_combout\ = (\irRec|data_counter\(3) & (!\irRec|Add3~5\)) # (!\irRec|data_counter\(3) & ((\irRec|Add3~5\) # (GND)))
-- \irRec|Add3~7\ = CARRY((!\irRec|Add3~5\) # (!\irRec|data_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(3),
	datad => VCC,
	cin => \irRec|Add3~5\,
	combout => \irRec|Add3~6_combout\,
	cout => \irRec|Add3~7\);

-- Location: LCCOMB_X57_Y48_N30
\irRec|data_counter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[3]~2_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~6_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~6_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(3),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[3]~2_combout\);

-- Location: FF_X57_Y48_N31
\irRec|data_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(3));

-- Location: LCCOMB_X56_Y48_N8
\irRec|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~8_combout\ = (\irRec|data_counter\(4) & (\irRec|Add3~7\ $ (GND))) # (!\irRec|data_counter\(4) & (!\irRec|Add3~7\ & VCC))
-- \irRec|Add3~9\ = CARRY((\irRec|data_counter\(4) & !\irRec|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(4),
	datad => VCC,
	cin => \irRec|Add3~7\,
	combout => \irRec|Add3~8_combout\,
	cout => \irRec|Add3~9\);

-- Location: LCCOMB_X57_Y48_N8
\irRec|data_counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[4]~1_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~8_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~8_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(4),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[4]~1_combout\);

-- Location: FF_X57_Y48_N9
\irRec|data_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(4));

-- Location: LCCOMB_X56_Y48_N10
\irRec|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~10_combout\ = (\irRec|data_counter\(5) & (!\irRec|Add3~9\)) # (!\irRec|data_counter\(5) & ((\irRec|Add3~9\) # (GND)))
-- \irRec|Add3~11\ = CARRY((!\irRec|Add3~9\) # (!\irRec|data_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(5),
	datad => VCC,
	cin => \irRec|Add3~9\,
	combout => \irRec|Add3~10_combout\,
	cout => \irRec|Add3~11\);

-- Location: LCCOMB_X58_Y48_N8
\irRec|data_counter[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[5]~3_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~10_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~10_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(5),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[5]~3_combout\);

-- Location: FF_X58_Y48_N9
\irRec|data_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(5));

-- Location: LCCOMB_X58_Y48_N30
\irRec|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~0_combout\ = (\irRec|data_counter\(0)) # ((\irRec|data_counter\(3)) # ((\irRec|data_counter\(4)) # (!\irRec|data_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(0),
	datab => \irRec|data_counter\(3),
	datac => \irRec|data_counter\(5),
	datad => \irRec|data_counter\(4),
	combout => \irRec|Equal5~0_combout\);

-- Location: LCCOMB_X56_Y48_N12
\irRec|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~12_combout\ = (\irRec|data_counter\(6) & (\irRec|Add3~11\ $ (GND))) # (!\irRec|data_counter\(6) & (!\irRec|Add3~11\ & VCC))
-- \irRec|Add3~13\ = CARRY((\irRec|data_counter\(6) & !\irRec|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(6),
	datad => VCC,
	cin => \irRec|Add3~11\,
	combout => \irRec|Add3~12_combout\,
	cout => \irRec|Add3~13\);

-- Location: LCCOMB_X57_Y48_N4
\irRec|data_counter[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[6]~31_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~12_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~12_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(6),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[6]~31_combout\);

-- Location: FF_X57_Y48_N5
\irRec|data_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(6));

-- Location: LCCOMB_X56_Y48_N14
\irRec|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~14_combout\ = (\irRec|data_counter\(7) & (!\irRec|Add3~13\)) # (!\irRec|data_counter\(7) & ((\irRec|Add3~13\) # (GND)))
-- \irRec|Add3~15\ = CARRY((!\irRec|Add3~13\) # (!\irRec|data_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(7),
	datad => VCC,
	cin => \irRec|Add3~13\,
	combout => \irRec|Add3~14_combout\,
	cout => \irRec|Add3~15\);

-- Location: LCCOMB_X58_Y48_N4
\irRec|data_counter[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[7]~30_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~14_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~14_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(7),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[7]~30_combout\);

-- Location: FF_X58_Y48_N5
\irRec|data_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(7));

-- Location: LCCOMB_X57_Y48_N22
\irRec|Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal4~7_combout\ = (!\irRec|data_counter\(6) & !\irRec|data_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|data_counter\(6),
	datad => \irRec|data_counter\(7),
	combout => \irRec|Equal4~7_combout\);

-- Location: LCCOMB_X56_Y48_N16
\irRec|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~16_combout\ = (\irRec|data_counter\(8) & (\irRec|Add3~15\ $ (GND))) # (!\irRec|data_counter\(8) & (!\irRec|Add3~15\ & VCC))
-- \irRec|Add3~17\ = CARRY((\irRec|data_counter\(8) & !\irRec|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(8),
	datad => VCC,
	cin => \irRec|Add3~15\,
	combout => \irRec|Add3~16_combout\,
	cout => \irRec|Add3~17\);

-- Location: LCCOMB_X58_Y48_N12
\irRec|data_counter[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[8]~29_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~16_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~16_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(8),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[8]~29_combout\);

-- Location: FF_X58_Y48_N13
\irRec|data_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(8));

-- Location: LCCOMB_X56_Y48_N18
\irRec|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~18_combout\ = (\irRec|data_counter\(9) & (!\irRec|Add3~17\)) # (!\irRec|data_counter\(9) & ((\irRec|Add3~17\) # (GND)))
-- \irRec|Add3~19\ = CARRY((!\irRec|Add3~17\) # (!\irRec|data_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(9),
	datad => VCC,
	cin => \irRec|Add3~17\,
	combout => \irRec|Add3~18_combout\,
	cout => \irRec|Add3~19\);

-- Location: LCCOMB_X58_Y48_N26
\irRec|data_counter[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[9]~28_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~18_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~18_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(9),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[9]~28_combout\);

-- Location: FF_X58_Y48_N27
\irRec|data_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(9));

-- Location: LCCOMB_X56_Y48_N20
\irRec|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~20_combout\ = (\irRec|data_counter\(10) & (\irRec|Add3~19\ $ (GND))) # (!\irRec|data_counter\(10) & (!\irRec|Add3~19\ & VCC))
-- \irRec|Add3~21\ = CARRY((\irRec|data_counter\(10) & !\irRec|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(10),
	datad => VCC,
	cin => \irRec|Add3~19\,
	combout => \irRec|Add3~20_combout\,
	cout => \irRec|Add3~21\);

-- Location: LCCOMB_X57_Y48_N6
\irRec|data_counter[10]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[10]~27_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~20_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~20_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(10),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[10]~27_combout\);

-- Location: FF_X57_Y48_N7
\irRec|data_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(10));

-- Location: LCCOMB_X56_Y48_N22
\irRec|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~22_combout\ = (\irRec|data_counter\(11) & (!\irRec|Add3~21\)) # (!\irRec|data_counter\(11) & ((\irRec|Add3~21\) # (GND)))
-- \irRec|Add3~23\ = CARRY((!\irRec|Add3~21\) # (!\irRec|data_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(11),
	datad => VCC,
	cin => \irRec|Add3~21\,
	combout => \irRec|Add3~22_combout\,
	cout => \irRec|Add3~23\);

-- Location: LCCOMB_X58_Y48_N28
\irRec|data_counter[11]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[11]~26_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~22_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~22_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(11),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[11]~26_combout\);

-- Location: FF_X58_Y48_N29
\irRec|data_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[11]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(11));

-- Location: LCCOMB_X56_Y48_N24
\irRec|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~24_combout\ = (\irRec|data_counter\(12) & (\irRec|Add3~23\ $ (GND))) # (!\irRec|data_counter\(12) & (!\irRec|Add3~23\ & VCC))
-- \irRec|Add3~25\ = CARRY((\irRec|data_counter\(12) & !\irRec|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(12),
	datad => VCC,
	cin => \irRec|Add3~23\,
	combout => \irRec|Add3~24_combout\,
	cout => \irRec|Add3~25\);

-- Location: LCCOMB_X57_Y48_N10
\irRec|data_counter[12]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[12]~25_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~24_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~24_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(12),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[12]~25_combout\);

-- Location: FF_X57_Y48_N11
\irRec|data_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(12));

-- Location: LCCOMB_X56_Y48_N26
\irRec|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~26_combout\ = (\irRec|data_counter\(13) & (!\irRec|Add3~25\)) # (!\irRec|data_counter\(13) & ((\irRec|Add3~25\) # (GND)))
-- \irRec|Add3~27\ = CARRY((!\irRec|Add3~25\) # (!\irRec|data_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(13),
	datad => VCC,
	cin => \irRec|Add3~25\,
	combout => \irRec|Add3~26_combout\,
	cout => \irRec|Add3~27\);

-- Location: LCCOMB_X57_Y48_N0
\irRec|data_counter[13]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[13]~24_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~26_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~26_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(13),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[13]~24_combout\);

-- Location: FF_X57_Y48_N1
\irRec|data_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(13));

-- Location: LCCOMB_X56_Y48_N28
\irRec|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~28_combout\ = (\irRec|data_counter\(14) & (\irRec|Add3~27\ $ (GND))) # (!\irRec|data_counter\(14) & (!\irRec|Add3~27\ & VCC))
-- \irRec|Add3~29\ = CARRY((\irRec|data_counter\(14) & !\irRec|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(14),
	datad => VCC,
	cin => \irRec|Add3~27\,
	combout => \irRec|Add3~28_combout\,
	cout => \irRec|Add3~29\);

-- Location: LCCOMB_X57_Y48_N26
\irRec|data_counter[14]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[14]~23_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~28_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~28_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(14),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[14]~23_combout\);

-- Location: FF_X57_Y48_N27
\irRec|data_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[14]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(14));

-- Location: LCCOMB_X56_Y48_N30
\irRec|Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~30_combout\ = (\irRec|data_counter\(15) & (!\irRec|Add3~29\)) # (!\irRec|data_counter\(15) & ((\irRec|Add3~29\) # (GND)))
-- \irRec|Add3~31\ = CARRY((!\irRec|Add3~29\) # (!\irRec|data_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(15),
	datad => VCC,
	cin => \irRec|Add3~29\,
	combout => \irRec|Add3~30_combout\,
	cout => \irRec|Add3~31\);

-- Location: LCCOMB_X57_Y48_N20
\irRec|data_counter[15]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[15]~22_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~30_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~30_combout\,
	datac => \irRec|data_counter\(15),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[15]~22_combout\);

-- Location: FF_X57_Y48_N21
\irRec|data_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(15));

-- Location: LCCOMB_X57_Y48_N24
\irRec|Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal4~5_combout\ = (!\irRec|data_counter\(12) & (!\irRec|data_counter\(13) & (!\irRec|data_counter\(14) & !\irRec|data_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(12),
	datab => \irRec|data_counter\(13),
	datac => \irRec|data_counter\(14),
	datad => \irRec|data_counter\(15),
	combout => \irRec|Equal4~5_combout\);

-- Location: LCCOMB_X56_Y47_N0
\irRec|Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~32_combout\ = (\irRec|data_counter\(16) & (\irRec|Add3~31\ $ (GND))) # (!\irRec|data_counter\(16) & (!\irRec|Add3~31\ & VCC))
-- \irRec|Add3~33\ = CARRY((\irRec|data_counter\(16) & !\irRec|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(16),
	datad => VCC,
	cin => \irRec|Add3~31\,
	combout => \irRec|Add3~32_combout\,
	cout => \irRec|Add3~33\);

-- Location: LCCOMB_X58_Y47_N30
\irRec|data_counter[16]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[16]~21_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~32_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~32_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(16),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[16]~21_combout\);

-- Location: FF_X58_Y47_N31
\irRec|data_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[16]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(16));

-- Location: LCCOMB_X56_Y47_N2
\irRec|Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~34_combout\ = (\irRec|data_counter\(17) & (!\irRec|Add3~33\)) # (!\irRec|data_counter\(17) & ((\irRec|Add3~33\) # (GND)))
-- \irRec|Add3~35\ = CARRY((!\irRec|Add3~33\) # (!\irRec|data_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(17),
	datad => VCC,
	cin => \irRec|Add3~33\,
	combout => \irRec|Add3~34_combout\,
	cout => \irRec|Add3~35\);

-- Location: LCCOMB_X58_Y47_N16
\irRec|data_counter[17]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[17]~20_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~34_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~34_combout\,
	datac => \irRec|data_counter\(17),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[17]~20_combout\);

-- Location: FF_X58_Y47_N17
\irRec|data_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(17));

-- Location: LCCOMB_X56_Y47_N4
\irRec|Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~36_combout\ = (\irRec|data_counter\(18) & (\irRec|Add3~35\ $ (GND))) # (!\irRec|data_counter\(18) & (!\irRec|Add3~35\ & VCC))
-- \irRec|Add3~37\ = CARRY((\irRec|data_counter\(18) & !\irRec|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(18),
	datad => VCC,
	cin => \irRec|Add3~35\,
	combout => \irRec|Add3~36_combout\,
	cout => \irRec|Add3~37\);

-- Location: LCCOMB_X58_Y47_N18
\irRec|data_counter[18]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[18]~19_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~36_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~36_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(18),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[18]~19_combout\);

-- Location: FF_X58_Y47_N19
\irRec|data_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(18));

-- Location: LCCOMB_X56_Y47_N6
\irRec|Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~38_combout\ = (\irRec|data_counter\(19) & (!\irRec|Add3~37\)) # (!\irRec|data_counter\(19) & ((\irRec|Add3~37\) # (GND)))
-- \irRec|Add3~39\ = CARRY((!\irRec|Add3~37\) # (!\irRec|data_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(19),
	datad => VCC,
	cin => \irRec|Add3~37\,
	combout => \irRec|Add3~38_combout\,
	cout => \irRec|Add3~39\);

-- Location: LCCOMB_X58_Y47_N4
\irRec|data_counter[19]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[19]~18_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~38_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~38_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(19),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[19]~18_combout\);

-- Location: FF_X58_Y47_N5
\irRec|data_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(19));

-- Location: LCCOMB_X56_Y47_N8
\irRec|Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~40_combout\ = (\irRec|data_counter\(20) & (\irRec|Add3~39\ $ (GND))) # (!\irRec|data_counter\(20) & (!\irRec|Add3~39\ & VCC))
-- \irRec|Add3~41\ = CARRY((\irRec|data_counter\(20) & !\irRec|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(20),
	datad => VCC,
	cin => \irRec|Add3~39\,
	combout => \irRec|Add3~40_combout\,
	cout => \irRec|Add3~41\);

-- Location: LCCOMB_X57_Y47_N2
\irRec|data_counter[20]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[20]~17_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~40_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~40_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(20),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[20]~17_combout\);

-- Location: FF_X57_Y47_N3
\irRec|data_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[20]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(20));

-- Location: LCCOMB_X56_Y47_N10
\irRec|Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~42_combout\ = (\irRec|data_counter\(21) & (!\irRec|Add3~41\)) # (!\irRec|data_counter\(21) & ((\irRec|Add3~41\) # (GND)))
-- \irRec|Add3~43\ = CARRY((!\irRec|Add3~41\) # (!\irRec|data_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(21),
	datad => VCC,
	cin => \irRec|Add3~41\,
	combout => \irRec|Add3~42_combout\,
	cout => \irRec|Add3~43\);

-- Location: LCCOMB_X57_Y47_N28
\irRec|data_counter[21]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[21]~16_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~42_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~42_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(21),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[21]~16_combout\);

-- Location: FF_X57_Y47_N29
\irRec|data_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[21]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(21));

-- Location: LCCOMB_X56_Y47_N12
\irRec|Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~44_combout\ = (\irRec|data_counter\(22) & (\irRec|Add3~43\ $ (GND))) # (!\irRec|data_counter\(22) & (!\irRec|Add3~43\ & VCC))
-- \irRec|Add3~45\ = CARRY((\irRec|data_counter\(22) & !\irRec|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(22),
	datad => VCC,
	cin => \irRec|Add3~43\,
	combout => \irRec|Add3~44_combout\,
	cout => \irRec|Add3~45\);

-- Location: LCCOMB_X57_Y47_N6
\irRec|data_counter[22]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[22]~15_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~44_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~44_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(22),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[22]~15_combout\);

-- Location: FF_X57_Y47_N7
\irRec|data_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[22]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(22));

-- Location: LCCOMB_X56_Y47_N14
\irRec|Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~46_combout\ = (\irRec|data_counter\(23) & (!\irRec|Add3~45\)) # (!\irRec|data_counter\(23) & ((\irRec|Add3~45\) # (GND)))
-- \irRec|Add3~47\ = CARRY((!\irRec|Add3~45\) # (!\irRec|data_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(23),
	datad => VCC,
	cin => \irRec|Add3~45\,
	combout => \irRec|Add3~46_combout\,
	cout => \irRec|Add3~47\);

-- Location: LCCOMB_X57_Y47_N8
\irRec|data_counter[23]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[23]~14_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~46_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~46_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(23),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[23]~14_combout\);

-- Location: FF_X57_Y47_N9
\irRec|data_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[23]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(23));

-- Location: LCCOMB_X56_Y47_N16
\irRec|Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~48_combout\ = (\irRec|data_counter\(24) & (\irRec|Add3~47\ $ (GND))) # (!\irRec|data_counter\(24) & (!\irRec|Add3~47\ & VCC))
-- \irRec|Add3~49\ = CARRY((\irRec|data_counter\(24) & !\irRec|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(24),
	datad => VCC,
	cin => \irRec|Add3~47\,
	combout => \irRec|Add3~48_combout\,
	cout => \irRec|Add3~49\);

-- Location: LCCOMB_X57_Y47_N16
\irRec|data_counter[24]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[24]~13_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~48_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~48_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(24),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[24]~13_combout\);

-- Location: FF_X57_Y47_N17
\irRec|data_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(24));

-- Location: LCCOMB_X56_Y47_N18
\irRec|Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~50_combout\ = (\irRec|data_counter\(25) & (!\irRec|Add3~49\)) # (!\irRec|data_counter\(25) & ((\irRec|Add3~49\) # (GND)))
-- \irRec|Add3~51\ = CARRY((!\irRec|Add3~49\) # (!\irRec|data_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(25),
	datad => VCC,
	cin => \irRec|Add3~49\,
	combout => \irRec|Add3~50_combout\,
	cout => \irRec|Add3~51\);

-- Location: LCCOMB_X57_Y47_N10
\irRec|data_counter[25]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[25]~12_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~50_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~50_combout\,
	datac => \irRec|data_counter\(25),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[25]~12_combout\);

-- Location: FF_X57_Y47_N11
\irRec|data_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[25]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(25));

-- Location: LCCOMB_X56_Y47_N20
\irRec|Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~52_combout\ = (\irRec|data_counter\(26) & (\irRec|Add3~51\ $ (GND))) # (!\irRec|data_counter\(26) & (!\irRec|Add3~51\ & VCC))
-- \irRec|Add3~53\ = CARRY((\irRec|data_counter\(26) & !\irRec|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(26),
	datad => VCC,
	cin => \irRec|Add3~51\,
	combout => \irRec|Add3~52_combout\,
	cout => \irRec|Add3~53\);

-- Location: LCCOMB_X57_Y47_N0
\irRec|data_counter[26]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[26]~11_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~52_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~52_combout\,
	datac => \irRec|data_counter\(26),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[26]~11_combout\);

-- Location: FF_X57_Y47_N1
\irRec|data_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(26));

-- Location: LCCOMB_X56_Y47_N22
\irRec|Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~54_combout\ = (\irRec|data_counter\(27) & (!\irRec|Add3~53\)) # (!\irRec|data_counter\(27) & ((\irRec|Add3~53\) # (GND)))
-- \irRec|Add3~55\ = CARRY((!\irRec|Add3~53\) # (!\irRec|data_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(27),
	datad => VCC,
	cin => \irRec|Add3~53\,
	combout => \irRec|Add3~54_combout\,
	cout => \irRec|Add3~55\);

-- Location: LCCOMB_X57_Y47_N26
\irRec|data_counter[27]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[27]~10_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~54_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~54_combout\,
	datac => \irRec|data_counter\(27),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[27]~10_combout\);

-- Location: FF_X57_Y47_N27
\irRec|data_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[27]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(27));

-- Location: LCCOMB_X57_Y47_N22
\irRec|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal4~1_combout\ = (!\irRec|data_counter\(25) & (!\irRec|data_counter\(24) & (!\irRec|data_counter\(27) & !\irRec|data_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(25),
	datab => \irRec|data_counter\(24),
	datac => \irRec|data_counter\(27),
	datad => \irRec|data_counter\(26),
	combout => \irRec|Equal4~1_combout\);

-- Location: LCCOMB_X56_Y47_N24
\irRec|Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~56_combout\ = (\irRec|data_counter\(28) & (\irRec|Add3~55\ $ (GND))) # (!\irRec|data_counter\(28) & (!\irRec|Add3~55\ & VCC))
-- \irRec|Add3~57\ = CARRY((\irRec|data_counter\(28) & !\irRec|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(28),
	datad => VCC,
	cin => \irRec|Add3~55\,
	combout => \irRec|Add3~56_combout\,
	cout => \irRec|Add3~57\);

-- Location: LCCOMB_X57_Y47_N30
\irRec|data_counter[28]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[28]~9_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~56_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~56_combout\,
	datac => \irRec|data_counter\(28),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[28]~9_combout\);

-- Location: FF_X57_Y47_N31
\irRec|data_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[28]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(28));

-- Location: LCCOMB_X56_Y47_N26
\irRec|Add3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~58_combout\ = (\irRec|data_counter\(29) & (!\irRec|Add3~57\)) # (!\irRec|data_counter\(29) & ((\irRec|Add3~57\) # (GND)))
-- \irRec|Add3~59\ = CARRY((!\irRec|Add3~57\) # (!\irRec|data_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(29),
	datad => VCC,
	cin => \irRec|Add3~57\,
	combout => \irRec|Add3~58_combout\,
	cout => \irRec|Add3~59\);

-- Location: LCCOMB_X57_Y47_N12
\irRec|data_counter[29]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[29]~8_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~58_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~58_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(29),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[29]~8_combout\);

-- Location: FF_X57_Y47_N13
\irRec|data_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[29]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(29));

-- Location: LCCOMB_X56_Y47_N28
\irRec|Add3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~60_combout\ = (\irRec|data_counter\(30) & (\irRec|Add3~59\ $ (GND))) # (!\irRec|data_counter\(30) & (!\irRec|Add3~59\ & VCC))
-- \irRec|Add3~61\ = CARRY((\irRec|data_counter\(30) & !\irRec|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(30),
	datad => VCC,
	cin => \irRec|Add3~59\,
	combout => \irRec|Add3~60_combout\,
	cout => \irRec|Add3~61\);

-- Location: LCCOMB_X57_Y47_N14
\irRec|data_counter[30]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[30]~7_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~60_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~60_combout\,
	datac => \irRec|data_counter\(30),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[30]~7_combout\);

-- Location: FF_X57_Y47_N15
\irRec|data_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[30]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(30));

-- Location: LCCOMB_X56_Y47_N30
\irRec|Add3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~62_combout\ = \irRec|Add3~61\ $ (\irRec|data_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irRec|data_counter\(31),
	cin => \irRec|Add3~61\,
	combout => \irRec|Add3~62_combout\);

-- Location: LCCOMB_X57_Y47_N24
\irRec|data_counter[31]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[31]~6_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~62_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~62_combout\,
	datac => \irRec|data_counter\(31),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[31]~6_combout\);

-- Location: FF_X57_Y47_N25
\irRec|data_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[31]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(31));

-- Location: LCCOMB_X57_Y47_N20
\irRec|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal4~0_combout\ = (!\irRec|data_counter\(28) & (!\irRec|data_counter\(31) & (!\irRec|data_counter\(30) & !\irRec|data_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(28),
	datab => \irRec|data_counter\(31),
	datac => \irRec|data_counter\(30),
	datad => \irRec|data_counter\(29),
	combout => \irRec|Equal4~0_combout\);

-- Location: LCCOMB_X57_Y47_N4
\irRec|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal4~2_combout\ = (!\irRec|data_counter\(22) & (!\irRec|data_counter\(21) & (!\irRec|data_counter\(23) & !\irRec|data_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(22),
	datab => \irRec|data_counter\(21),
	datac => \irRec|data_counter\(23),
	datad => \irRec|data_counter\(20),
	combout => \irRec|Equal4~2_combout\);

-- Location: LCCOMB_X58_Y47_N24
\irRec|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal4~3_combout\ = (!\irRec|data_counter\(16) & (!\irRec|data_counter\(17) & (!\irRec|data_counter\(19) & !\irRec|data_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(16),
	datab => \irRec|data_counter\(17),
	datac => \irRec|data_counter\(19),
	datad => \irRec|data_counter\(18),
	combout => \irRec|Equal4~3_combout\);

-- Location: LCCOMB_X57_Y47_N18
\irRec|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal4~4_combout\ = (\irRec|Equal4~1_combout\ & (\irRec|Equal4~0_combout\ & (\irRec|Equal4~2_combout\ & \irRec|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal4~1_combout\,
	datab => \irRec|Equal4~0_combout\,
	datac => \irRec|Equal4~2_combout\,
	datad => \irRec|Equal4~3_combout\,
	combout => \irRec|Equal4~4_combout\);

-- Location: LCCOMB_X58_Y48_N22
\irRec|Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal4~6_combout\ = (!\irRec|data_counter\(8) & (!\irRec|data_counter\(10) & (!\irRec|data_counter\(9) & !\irRec|data_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(8),
	datab => \irRec|data_counter\(10),
	datac => \irRec|data_counter\(9),
	datad => \irRec|data_counter\(11),
	combout => \irRec|Equal4~6_combout\);

-- Location: LCCOMB_X57_Y48_N28
\irRec|Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal4~8_combout\ = (\irRec|Equal4~7_combout\ & (\irRec|Equal4~5_combout\ & (\irRec|Equal4~4_combout\ & \irRec|Equal4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal4~7_combout\,
	datab => \irRec|Equal4~5_combout\,
	datac => \irRec|Equal4~4_combout\,
	datad => \irRec|Equal4~6_combout\,
	combout => \irRec|Equal4~8_combout\);

-- Location: LCCOMB_X57_Y48_N16
\irRec|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~1_combout\ = (!\irRec|data_counter\(2) & (!\irRec|data_counter\(1) & (!\irRec|Equal5~0_combout\ & \irRec|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(2),
	datab => \irRec|data_counter\(1),
	datac => \irRec|Equal5~0_combout\,
	datad => \irRec|Equal4~8_combout\,
	combout => \irRec|Equal5~1_combout\);

-- Location: LCCOMB_X58_Y51_N28
\irRec|data_reg[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg[17]~1_combout\ = (\irRec|Equal5~1_combout\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \irRec|Equal5~1_combout\,
	combout => \irRec|data_reg[17]~1_combout\);

-- Location: LCCOMB_X57_Y48_N14
\irRec|data_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[0]~0_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~0_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~0_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(0),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[0]~0_combout\);

-- Location: FF_X57_Y48_N15
\irRec|data_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(0));

-- Location: LCCOMB_X56_Y48_N2
\irRec|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~2_combout\ = (\irRec|data_counter\(1) & (!\irRec|Add3~1\)) # (!\irRec|data_counter\(1) & ((\irRec|Add3~1\) # (GND)))
-- \irRec|Add3~3\ = CARRY((!\irRec|Add3~1\) # (!\irRec|data_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(1),
	datad => VCC,
	cin => \irRec|Add3~1\,
	combout => \irRec|Add3~2_combout\,
	cout => \irRec|Add3~3\);

-- Location: LCCOMB_X57_Y48_N18
\irRec|data_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[1]~5_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~2_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~2_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(1),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[1]~5_combout\);

-- Location: FF_X57_Y48_N19
\irRec|data_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(1));

-- Location: LCCOMB_X57_Y48_N12
\irRec|data_counter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[2]~4_combout\ = (!\irRec|data_reg[17]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~4_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~4_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(2),
	datad => \irRec|data_reg[17]~1_combout\,
	combout => \irRec|data_counter[2]~4_combout\);

-- Location: FF_X57_Y48_N13
\irRec|data_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_counter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_counter\(2));

-- Location: LCCOMB_X58_Y48_N10
\irRec|Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal4~9_combout\ = (\irRec|data_counter\(0) & (\irRec|data_counter\(4) & (!\irRec|data_counter\(5) & \irRec|data_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(0),
	datab => \irRec|data_counter\(4),
	datac => \irRec|data_counter\(5),
	datad => \irRec|data_counter\(3),
	combout => \irRec|Equal4~9_combout\);

-- Location: LCCOMB_X57_Y48_N2
\irRec|Equal4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal4~10_combout\ = (\irRec|data_counter\(2) & (\irRec|data_counter\(1) & (\irRec|Equal4~9_combout\ & \irRec|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(2),
	datab => \irRec|data_counter\(1),
	datac => \irRec|Equal4~9_combout\,
	datad => \irRec|Equal4~8_combout\,
	combout => \irRec|Equal4~10_combout\);

-- Location: LCCOMB_X57_Y51_N14
\irRec|LC_on_counter[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[0]~19_combout\ = \irRec|LC_on_counter\(0) $ (VCC)
-- \irRec|LC_on_counter[0]~20\ = CARRY(\irRec|LC_on_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(0),
	datad => VCC,
	combout => \irRec|LC_on_counter[0]~19_combout\,
	cout => \irRec|LC_on_counter[0]~20\);

-- Location: LCCOMB_X57_Y51_N0
\irRec|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal0~0_combout\ = (\irRec|LC_on_counter\(4) & (\irRec|LC_on_counter\(5) & (\irRec|LC_on_counter\(6) & \irRec|LC_on_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(4),
	datab => \irRec|LC_on_counter\(5),
	datac => \irRec|LC_on_counter\(6),
	datad => \irRec|LC_on_counter\(3),
	combout => \irRec|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y51_N6
\irRec|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal0~1_combout\ = (\irRec|LC_on_counter\(7) & \irRec|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(7),
	datad => \irRec|Equal0~0_combout\,
	combout => \irRec|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y50_N22
\irRec|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal0~2_combout\ = (!\irRec|LC_on_counter\(8) & (!\irRec|LC_on_counter\(10) & (!\irRec|LC_on_counter\(11) & !\irRec|LC_on_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(8),
	datab => \irRec|LC_on_counter\(10),
	datac => \irRec|LC_on_counter\(11),
	datad => \irRec|LC_on_counter\(9),
	combout => \irRec|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y50_N28
\irRec|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal0~3_combout\ = (!\irRec|LC_on_counter\(12) & (!\irRec|LC_on_counter\(13) & (\irRec|Equal0~2_combout\ & !\irRec|LC_on_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(12),
	datab => \irRec|LC_on_counter\(13),
	datac => \irRec|Equal0~2_combout\,
	datad => \irRec|LC_on_counter\(14),
	combout => \irRec|Equal0~3_combout\);

-- Location: LCCOMB_X58_Y50_N6
\irRec|LC_on_counter[5]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[5]~53_combout\ = (\reset~input_o\ & \irRec|state.read_LC_on~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \irRec|state.read_LC_on~q\,
	combout => \irRec|LC_on_counter[5]~53_combout\);

-- Location: LCCOMB_X57_Y50_N10
\irRec|LC_on_counter[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[14]~47_combout\ = (\irRec|LC_on_counter\(14) & (\irRec|LC_on_counter[13]~46\ $ (GND))) # (!\irRec|LC_on_counter\(14) & (!\irRec|LC_on_counter[13]~46\ & VCC))
-- \irRec|LC_on_counter[14]~48\ = CARRY((\irRec|LC_on_counter\(14) & !\irRec|LC_on_counter[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(14),
	datad => VCC,
	cin => \irRec|LC_on_counter[13]~46\,
	combout => \irRec|LC_on_counter[14]~47_combout\,
	cout => \irRec|LC_on_counter[14]~48\);

-- Location: LCCOMB_X57_Y50_N12
\irRec|LC_on_counter[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[15]~49_combout\ = (\irRec|LC_on_counter\(15) & (!\irRec|LC_on_counter[14]~48\)) # (!\irRec|LC_on_counter\(15) & ((\irRec|LC_on_counter[14]~48\) # (GND)))
-- \irRec|LC_on_counter[15]~50\ = CARRY((!\irRec|LC_on_counter[14]~48\) # (!\irRec|LC_on_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(15),
	datad => VCC,
	cin => \irRec|LC_on_counter[14]~48\,
	combout => \irRec|LC_on_counter[15]~49_combout\,
	cout => \irRec|LC_on_counter[15]~50\);

-- Location: FF_X57_Y50_N13
\irRec|LC_on_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[15]~49_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(15));

-- Location: LCCOMB_X57_Y50_N14
\irRec|LC_on_counter[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[16]~51_combout\ = (\irRec|LC_on_counter\(16) & (\irRec|LC_on_counter[15]~50\ $ (GND))) # (!\irRec|LC_on_counter\(16) & (!\irRec|LC_on_counter[15]~50\ & VCC))
-- \irRec|LC_on_counter[16]~52\ = CARRY((\irRec|LC_on_counter\(16) & !\irRec|LC_on_counter[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(16),
	datad => VCC,
	cin => \irRec|LC_on_counter[15]~50\,
	combout => \irRec|LC_on_counter[16]~51_combout\,
	cout => \irRec|LC_on_counter[16]~52\);

-- Location: FF_X57_Y50_N15
\irRec|LC_on_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[16]~51_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(16));

-- Location: LCCOMB_X57_Y50_N16
\irRec|LC_on_counter[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[17]~55_combout\ = (\irRec|LC_on_counter\(17) & (!\irRec|LC_on_counter[16]~52\)) # (!\irRec|LC_on_counter\(17) & ((\irRec|LC_on_counter[16]~52\) # (GND)))
-- \irRec|LC_on_counter[17]~56\ = CARRY((!\irRec|LC_on_counter[16]~52\) # (!\irRec|LC_on_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(17),
	datad => VCC,
	cin => \irRec|LC_on_counter[16]~52\,
	combout => \irRec|LC_on_counter[17]~55_combout\,
	cout => \irRec|LC_on_counter[17]~56\);

-- Location: FF_X57_Y50_N17
\irRec|LC_on_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[17]~55_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(17));

-- Location: LCCOMB_X57_Y50_N18
\irRec|LC_on_counter[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[18]~57_combout\ = \irRec|LC_on_counter[17]~56\ $ (!\irRec|LC_on_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irRec|LC_on_counter\(18),
	cin => \irRec|LC_on_counter[17]~56\,
	combout => \irRec|LC_on_counter[18]~57_combout\);

-- Location: FF_X57_Y50_N19
\irRec|LC_on_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[18]~57_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(18));

-- Location: LCCOMB_X56_Y51_N16
\irRec|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal0~4_combout\ = (!\irRec|LC_on_counter\(15) & (!\irRec|LC_on_counter\(2) & (!\irRec|LC_on_counter\(0) & !\irRec|LC_on_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(15),
	datab => \irRec|LC_on_counter\(2),
	datac => \irRec|LC_on_counter\(0),
	datad => \irRec|LC_on_counter\(1),
	combout => \irRec|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y51_N2
\irRec|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal0~5_combout\ = (\irRec|LC_on_counter\(17) & (\irRec|LC_on_counter\(18) & (\irRec|Equal0~4_combout\ & \irRec|LC_on_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(17),
	datab => \irRec|LC_on_counter\(18),
	datac => \irRec|Equal0~4_combout\,
	datad => \irRec|LC_on_counter\(16),
	combout => \irRec|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y51_N12
\irRec|LC_on_counter[5]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[5]~54_combout\ = ((\irRec|Equal0~1_combout\ & (\irRec|Equal0~3_combout\ & \irRec|Equal0~5_combout\))) # (!\irRec|LC_on_counter[5]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal0~1_combout\,
	datab => \irRec|Equal0~3_combout\,
	datac => \irRec|LC_on_counter[5]~53_combout\,
	datad => \irRec|Equal0~5_combout\,
	combout => \irRec|LC_on_counter[5]~54_combout\);

-- Location: FF_X57_Y51_N15
\irRec|LC_on_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[0]~19_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(0));

-- Location: LCCOMB_X57_Y51_N16
\irRec|LC_on_counter[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[1]~21_combout\ = (\irRec|LC_on_counter\(1) & (!\irRec|LC_on_counter[0]~20\)) # (!\irRec|LC_on_counter\(1) & ((\irRec|LC_on_counter[0]~20\) # (GND)))
-- \irRec|LC_on_counter[1]~22\ = CARRY((!\irRec|LC_on_counter[0]~20\) # (!\irRec|LC_on_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(1),
	datad => VCC,
	cin => \irRec|LC_on_counter[0]~20\,
	combout => \irRec|LC_on_counter[1]~21_combout\,
	cout => \irRec|LC_on_counter[1]~22\);

-- Location: FF_X57_Y51_N17
\irRec|LC_on_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[1]~21_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(1));

-- Location: LCCOMB_X57_Y51_N18
\irRec|LC_on_counter[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[2]~23_combout\ = (\irRec|LC_on_counter\(2) & (\irRec|LC_on_counter[1]~22\ $ (GND))) # (!\irRec|LC_on_counter\(2) & (!\irRec|LC_on_counter[1]~22\ & VCC))
-- \irRec|LC_on_counter[2]~24\ = CARRY((\irRec|LC_on_counter\(2) & !\irRec|LC_on_counter[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(2),
	datad => VCC,
	cin => \irRec|LC_on_counter[1]~22\,
	combout => \irRec|LC_on_counter[2]~23_combout\,
	cout => \irRec|LC_on_counter[2]~24\);

-- Location: FF_X57_Y51_N19
\irRec|LC_on_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[2]~23_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(2));

-- Location: LCCOMB_X57_Y51_N20
\irRec|LC_on_counter[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[3]~25_combout\ = (\irRec|LC_on_counter\(3) & (!\irRec|LC_on_counter[2]~24\)) # (!\irRec|LC_on_counter\(3) & ((\irRec|LC_on_counter[2]~24\) # (GND)))
-- \irRec|LC_on_counter[3]~26\ = CARRY((!\irRec|LC_on_counter[2]~24\) # (!\irRec|LC_on_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(3),
	datad => VCC,
	cin => \irRec|LC_on_counter[2]~24\,
	combout => \irRec|LC_on_counter[3]~25_combout\,
	cout => \irRec|LC_on_counter[3]~26\);

-- Location: FF_X57_Y51_N21
\irRec|LC_on_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[3]~25_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(3));

-- Location: LCCOMB_X57_Y51_N22
\irRec|LC_on_counter[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[4]~27_combout\ = (\irRec|LC_on_counter\(4) & (\irRec|LC_on_counter[3]~26\ $ (GND))) # (!\irRec|LC_on_counter\(4) & (!\irRec|LC_on_counter[3]~26\ & VCC))
-- \irRec|LC_on_counter[4]~28\ = CARRY((\irRec|LC_on_counter\(4) & !\irRec|LC_on_counter[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(4),
	datad => VCC,
	cin => \irRec|LC_on_counter[3]~26\,
	combout => \irRec|LC_on_counter[4]~27_combout\,
	cout => \irRec|LC_on_counter[4]~28\);

-- Location: FF_X57_Y51_N23
\irRec|LC_on_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[4]~27_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(4));

-- Location: LCCOMB_X57_Y51_N24
\irRec|LC_on_counter[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[5]~29_combout\ = (\irRec|LC_on_counter\(5) & (!\irRec|LC_on_counter[4]~28\)) # (!\irRec|LC_on_counter\(5) & ((\irRec|LC_on_counter[4]~28\) # (GND)))
-- \irRec|LC_on_counter[5]~30\ = CARRY((!\irRec|LC_on_counter[4]~28\) # (!\irRec|LC_on_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(5),
	datad => VCC,
	cin => \irRec|LC_on_counter[4]~28\,
	combout => \irRec|LC_on_counter[5]~29_combout\,
	cout => \irRec|LC_on_counter[5]~30\);

-- Location: FF_X57_Y51_N25
\irRec|LC_on_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[5]~29_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(5));

-- Location: LCCOMB_X57_Y51_N26
\irRec|LC_on_counter[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[6]~31_combout\ = (\irRec|LC_on_counter\(6) & (\irRec|LC_on_counter[5]~30\ $ (GND))) # (!\irRec|LC_on_counter\(6) & (!\irRec|LC_on_counter[5]~30\ & VCC))
-- \irRec|LC_on_counter[6]~32\ = CARRY((\irRec|LC_on_counter\(6) & !\irRec|LC_on_counter[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(6),
	datad => VCC,
	cin => \irRec|LC_on_counter[5]~30\,
	combout => \irRec|LC_on_counter[6]~31_combout\,
	cout => \irRec|LC_on_counter[6]~32\);

-- Location: FF_X57_Y51_N27
\irRec|LC_on_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[6]~31_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(6));

-- Location: LCCOMB_X57_Y51_N28
\irRec|LC_on_counter[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[7]~33_combout\ = (\irRec|LC_on_counter\(7) & (!\irRec|LC_on_counter[6]~32\)) # (!\irRec|LC_on_counter\(7) & ((\irRec|LC_on_counter[6]~32\) # (GND)))
-- \irRec|LC_on_counter[7]~34\ = CARRY((!\irRec|LC_on_counter[6]~32\) # (!\irRec|LC_on_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(7),
	datad => VCC,
	cin => \irRec|LC_on_counter[6]~32\,
	combout => \irRec|LC_on_counter[7]~33_combout\,
	cout => \irRec|LC_on_counter[7]~34\);

-- Location: FF_X57_Y51_N29
\irRec|LC_on_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[7]~33_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(7));

-- Location: LCCOMB_X57_Y51_N30
\irRec|LC_on_counter[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[8]~35_combout\ = (\irRec|LC_on_counter\(8) & (\irRec|LC_on_counter[7]~34\ $ (GND))) # (!\irRec|LC_on_counter\(8) & (!\irRec|LC_on_counter[7]~34\ & VCC))
-- \irRec|LC_on_counter[8]~36\ = CARRY((\irRec|LC_on_counter\(8) & !\irRec|LC_on_counter[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(8),
	datad => VCC,
	cin => \irRec|LC_on_counter[7]~34\,
	combout => \irRec|LC_on_counter[8]~35_combout\,
	cout => \irRec|LC_on_counter[8]~36\);

-- Location: FF_X57_Y51_N31
\irRec|LC_on_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[8]~35_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(8));

-- Location: LCCOMB_X57_Y50_N0
\irRec|LC_on_counter[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[9]~37_combout\ = (\irRec|LC_on_counter\(9) & (!\irRec|LC_on_counter[8]~36\)) # (!\irRec|LC_on_counter\(9) & ((\irRec|LC_on_counter[8]~36\) # (GND)))
-- \irRec|LC_on_counter[9]~38\ = CARRY((!\irRec|LC_on_counter[8]~36\) # (!\irRec|LC_on_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(9),
	datad => VCC,
	cin => \irRec|LC_on_counter[8]~36\,
	combout => \irRec|LC_on_counter[9]~37_combout\,
	cout => \irRec|LC_on_counter[9]~38\);

-- Location: FF_X57_Y50_N1
\irRec|LC_on_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[9]~37_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(9));

-- Location: LCCOMB_X57_Y50_N2
\irRec|LC_on_counter[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[10]~39_combout\ = (\irRec|LC_on_counter\(10) & (\irRec|LC_on_counter[9]~38\ $ (GND))) # (!\irRec|LC_on_counter\(10) & (!\irRec|LC_on_counter[9]~38\ & VCC))
-- \irRec|LC_on_counter[10]~40\ = CARRY((\irRec|LC_on_counter\(10) & !\irRec|LC_on_counter[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(10),
	datad => VCC,
	cin => \irRec|LC_on_counter[9]~38\,
	combout => \irRec|LC_on_counter[10]~39_combout\,
	cout => \irRec|LC_on_counter[10]~40\);

-- Location: FF_X57_Y50_N3
\irRec|LC_on_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[10]~39_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(10));

-- Location: LCCOMB_X57_Y50_N4
\irRec|LC_on_counter[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[11]~41_combout\ = (\irRec|LC_on_counter\(11) & (!\irRec|LC_on_counter[10]~40\)) # (!\irRec|LC_on_counter\(11) & ((\irRec|LC_on_counter[10]~40\) # (GND)))
-- \irRec|LC_on_counter[11]~42\ = CARRY((!\irRec|LC_on_counter[10]~40\) # (!\irRec|LC_on_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(11),
	datad => VCC,
	cin => \irRec|LC_on_counter[10]~40\,
	combout => \irRec|LC_on_counter[11]~41_combout\,
	cout => \irRec|LC_on_counter[11]~42\);

-- Location: FF_X57_Y50_N5
\irRec|LC_on_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[11]~41_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(11));

-- Location: LCCOMB_X57_Y50_N6
\irRec|LC_on_counter[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[12]~43_combout\ = (\irRec|LC_on_counter\(12) & (\irRec|LC_on_counter[11]~42\ $ (GND))) # (!\irRec|LC_on_counter\(12) & (!\irRec|LC_on_counter[11]~42\ & VCC))
-- \irRec|LC_on_counter[12]~44\ = CARRY((\irRec|LC_on_counter\(12) & !\irRec|LC_on_counter[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(12),
	datad => VCC,
	cin => \irRec|LC_on_counter[11]~42\,
	combout => \irRec|LC_on_counter[12]~43_combout\,
	cout => \irRec|LC_on_counter[12]~44\);

-- Location: FF_X57_Y50_N7
\irRec|LC_on_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[12]~43_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(12));

-- Location: LCCOMB_X57_Y50_N8
\irRec|LC_on_counter[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[13]~45_combout\ = (\irRec|LC_on_counter\(13) & (!\irRec|LC_on_counter[12]~44\)) # (!\irRec|LC_on_counter\(13) & ((\irRec|LC_on_counter[12]~44\) # (GND)))
-- \irRec|LC_on_counter[13]~46\ = CARRY((!\irRec|LC_on_counter[12]~44\) # (!\irRec|LC_on_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(13),
	datad => VCC,
	cin => \irRec|LC_on_counter[12]~44\,
	combout => \irRec|LC_on_counter[13]~45_combout\,
	cout => \irRec|LC_on_counter[13]~46\);

-- Location: FF_X57_Y50_N9
\irRec|LC_on_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[13]~45_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(13));

-- Location: FF_X57_Y50_N11
\irRec|LC_on_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[14]~47_combout\,
	sclr => \irRec|LC_on_counter[5]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(14));

-- Location: LCCOMB_X57_Y51_N4
\irRec|nxt_state_proc~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~12_combout\ = (!\irRec|LC_on_counter\(8) & (((!\irRec|LC_on_counter\(6) & !\irRec|LC_on_counter\(5))) # (!\irRec|LC_on_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(6),
	datab => \irRec|LC_on_counter\(7),
	datac => \irRec|LC_on_counter\(8),
	datad => \irRec|LC_on_counter\(5),
	combout => \irRec|nxt_state_proc~12_combout\);

-- Location: LCCOMB_X57_Y51_N8
\irRec|nxt_state_proc~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~10_combout\ = ((!\irRec|LC_on_counter\(2) & (!\irRec|LC_on_counter\(0) & !\irRec|LC_on_counter\(1)))) # (!\irRec|LC_on_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(3),
	datab => \irRec|LC_on_counter\(2),
	datac => \irRec|LC_on_counter\(0),
	datad => \irRec|LC_on_counter\(1),
	combout => \irRec|nxt_state_proc~10_combout\);

-- Location: LCCOMB_X57_Y51_N10
\irRec|nxt_state_proc~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~11_combout\ = (!\irRec|LC_on_counter\(4) & (\irRec|nxt_state_proc~10_combout\ & (!\irRec|LC_on_counter\(8) & !\irRec|LC_on_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(4),
	datab => \irRec|nxt_state_proc~10_combout\,
	datac => \irRec|LC_on_counter\(8),
	datad => \irRec|LC_on_counter\(6),
	combout => \irRec|nxt_state_proc~11_combout\);

-- Location: LCCOMB_X57_Y50_N20
\irRec|nxt_state_proc~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~13_combout\ = (!\irRec|LC_on_counter\(10) & ((\irRec|nxt_state_proc~12_combout\) # ((\irRec|nxt_state_proc~11_combout\) # (!\irRec|LC_on_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|nxt_state_proc~12_combout\,
	datab => \irRec|LC_on_counter\(9),
	datac => \irRec|nxt_state_proc~11_combout\,
	datad => \irRec|LC_on_counter\(10),
	combout => \irRec|nxt_state_proc~13_combout\);

-- Location: LCCOMB_X57_Y50_N26
\irRec|nxt_state_proc~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~14_combout\ = (((\irRec|nxt_state_proc~13_combout\) # (!\irRec|LC_on_counter\(11))) # (!\irRec|LC_on_counter\(13))) # (!\irRec|LC_on_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(12),
	datab => \irRec|LC_on_counter\(13),
	datac => \irRec|LC_on_counter\(11),
	datad => \irRec|nxt_state_proc~13_combout\,
	combout => \irRec|nxt_state_proc~14_combout\);

-- Location: LCCOMB_X57_Y50_N24
\irRec|nxt_state_proc~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~8_combout\ = (((\irRec|LC_on_counter\(15) & \irRec|LC_on_counter\(16))) # (!\irRec|LC_on_counter\(18))) # (!\irRec|LC_on_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(15),
	datab => \irRec|LC_on_counter\(17),
	datac => \irRec|LC_on_counter\(16),
	datad => \irRec|LC_on_counter\(18),
	combout => \irRec|nxt_state_proc~8_combout\);

-- Location: LCCOMB_X57_Y50_N30
\irRec|nxt_state_proc~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~9_combout\ = (\irRec|nxt_state_proc~8_combout\) # ((!\irRec|LC_on_counter\(15) & ((\irRec|Equal0~1_combout\) # (!\irRec|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(15),
	datab => \irRec|nxt_state_proc~8_combout\,
	datac => \irRec|Equal0~1_combout\,
	datad => \irRec|Equal0~3_combout\,
	combout => \irRec|nxt_state_proc~9_combout\);

-- Location: LCCOMB_X58_Y50_N20
\irRec|nxt_state_proc~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~15_combout\ = (\irRec|nxt_state_proc~9_combout\) # ((!\irRec|LC_on_counter\(14) & (!\irRec|LC_on_counter\(16) & \irRec|nxt_state_proc~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(14),
	datab => \irRec|LC_on_counter\(16),
	datac => \irRec|nxt_state_proc~14_combout\,
	datad => \irRec|nxt_state_proc~9_combout\,
	combout => \irRec|nxt_state_proc~15_combout\);

-- Location: LCCOMB_X58_Y50_N10
\irRec|state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~12_combout\ = (\irRec|state.check_LC_on_count~q\ & ((\irRec|nxt_state_proc~15_combout\) # ((\irRec|state.check_data~q\ & \irRec|Equal4~10_combout\)))) # (!\irRec|state.check_LC_on_count~q\ & (\irRec|state.check_data~q\ & 
-- (\irRec|Equal4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_LC_on_count~q\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|Equal4~10_combout\,
	datad => \irRec|nxt_state_proc~15_combout\,
	combout => \irRec|state~12_combout\);

-- Location: LCCOMB_X58_Y50_N0
\irRec|state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~14_combout\ = (!\irRec|state~13_combout\ & (!\irRec|state~12_combout\ & ((!\irRec|state.check_LC_off_count~q\) # (!\irRec|nxt_state_proc~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|nxt_state_proc~7_combout\,
	datab => \irRec|state.check_LC_off_count~q\,
	datac => \irRec|state~13_combout\,
	datad => \irRec|state~12_combout\,
	combout => \irRec|state~14_combout\);

-- Location: FF_X58_Y50_N1
\irRec|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|state.init~q\);

-- Location: LCCOMB_X58_Y50_N24
\irRec|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Selector1~0_combout\ = (\irRec|state.read_LC_on~q\ & (((!\irRec|data~q\)) # (!\irRec|data_follow~q\))) # (!\irRec|state.read_LC_on~q\ & (((!\irRec|state.init~q\ & !\irRec|data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_follow~q\,
	datab => \irRec|state.init~q\,
	datac => \irRec|state.read_LC_on~q\,
	datad => \irRec|data~q\,
	combout => \irRec|Selector1~0_combout\);

-- Location: FF_X58_Y50_N25
\irRec|state.read_LC_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|Selector1~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|state.read_LC_on~q\);

-- Location: LCCOMB_X58_Y50_N22
\irRec|state~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~11_combout\ = (\irRec|state.read_LC_on~q\ & (\irRec|data_follow~q\ & (\reset~input_o\ & \irRec|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.read_LC_on~q\,
	datab => \irRec|data_follow~q\,
	datac => \reset~input_o\,
	datad => \irRec|data~q\,
	combout => \irRec|state~11_combout\);

-- Location: FF_X58_Y50_N23
\irRec|state.check_LC_on_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|state.check_LC_on_count~q\);

-- Location: LCCOMB_X58_Y50_N14
\irRec|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Selector2~0_combout\ = (\irRec|state.check_LC_on_count~q\ & (((\irRec|data~q\ & \irRec|state.read_LC_off~q\)) # (!\irRec|nxt_state_proc~15_combout\))) # (!\irRec|state.check_LC_on_count~q\ & (\irRec|data~q\ & (\irRec|state.read_LC_off~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_LC_on_count~q\,
	datab => \irRec|data~q\,
	datac => \irRec|state.read_LC_off~q\,
	datad => \irRec|nxt_state_proc~15_combout\,
	combout => \irRec|Selector2~0_combout\);

-- Location: FF_X58_Y50_N15
\irRec|state.read_LC_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|Selector2~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|state.read_LC_off~q\);

-- Location: LCCOMB_X58_Y51_N24
\irRec|LC_off_counter[5]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[5]~44_combout\ = (\reset~input_o\ & \irRec|state.read_LC_off~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \irRec|state.read_LC_off~q\,
	combout => \irRec|LC_off_counter[5]~44_combout\);

-- Location: LCCOMB_X59_Y50_N10
\irRec|LC_off_counter[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[14]~48_combout\ = (\irRec|LC_off_counter\(14) & (\irRec|LC_off_counter[13]~47\ $ (GND))) # (!\irRec|LC_off_counter\(14) & (!\irRec|LC_off_counter[13]~47\ & VCC))
-- \irRec|LC_off_counter[14]~49\ = CARRY((\irRec|LC_off_counter\(14) & !\irRec|LC_off_counter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(14),
	datad => VCC,
	cin => \irRec|LC_off_counter[13]~47\,
	combout => \irRec|LC_off_counter[14]~48_combout\,
	cout => \irRec|LC_off_counter[14]~49\);

-- Location: LCCOMB_X59_Y50_N12
\irRec|LC_off_counter[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[15]~50_combout\ = (\irRec|LC_off_counter\(15) & (!\irRec|LC_off_counter[14]~49\)) # (!\irRec|LC_off_counter\(15) & ((\irRec|LC_off_counter[14]~49\) # (GND)))
-- \irRec|LC_off_counter[15]~51\ = CARRY((!\irRec|LC_off_counter[14]~49\) # (!\irRec|LC_off_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(15),
	datad => VCC,
	cin => \irRec|LC_off_counter[14]~49\,
	combout => \irRec|LC_off_counter[15]~50_combout\,
	cout => \irRec|LC_off_counter[15]~51\);

-- Location: FF_X59_Y50_N13
\irRec|LC_off_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[15]~50_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(15));

-- Location: LCCOMB_X59_Y50_N14
\irRec|LC_off_counter[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[16]~52_combout\ = (\irRec|LC_off_counter\(16) & (\irRec|LC_off_counter[15]~51\ $ (GND))) # (!\irRec|LC_off_counter\(16) & (!\irRec|LC_off_counter[15]~51\ & VCC))
-- \irRec|LC_off_counter[16]~53\ = CARRY((\irRec|LC_off_counter\(16) & !\irRec|LC_off_counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(16),
	datad => VCC,
	cin => \irRec|LC_off_counter[15]~51\,
	combout => \irRec|LC_off_counter[16]~52_combout\,
	cout => \irRec|LC_off_counter[16]~53\);

-- Location: FF_X59_Y50_N15
\irRec|LC_off_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[16]~52_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(16));

-- Location: LCCOMB_X59_Y50_N16
\irRec|LC_off_counter[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[17]~54_combout\ = \irRec|LC_off_counter[16]~53\ $ (\irRec|LC_off_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irRec|LC_off_counter\(17),
	cin => \irRec|LC_off_counter[16]~53\,
	combout => \irRec|LC_off_counter[17]~54_combout\);

-- Location: FF_X59_Y50_N17
\irRec|LC_off_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[17]~54_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(17));

-- Location: LCCOMB_X59_Y50_N24
\irRec|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~4_combout\ = (\irRec|LC_off_counter\(16) & \irRec|LC_off_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|LC_off_counter\(16),
	datad => \irRec|LC_off_counter\(17),
	combout => \irRec|Equal1~4_combout\);

-- Location: LCCOMB_X59_Y50_N18
\irRec|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~5_combout\ = (!\irRec|LC_off_counter\(14) & (!\irRec|LC_off_counter\(13) & (!\irRec|LC_off_counter\(11) & !\irRec|LC_off_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(14),
	datab => \irRec|LC_off_counter\(13),
	datac => \irRec|LC_off_counter\(11),
	datad => \irRec|LC_off_counter\(10),
	combout => \irRec|Equal1~5_combout\);

-- Location: LCCOMB_X59_Y50_N30
\irRec|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~2_combout\ = (\irRec|LC_off_counter\(12) & (\irRec|LC_off_counter\(9) & \irRec|LC_off_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(12),
	datab => \irRec|LC_off_counter\(9),
	datad => \irRec|LC_off_counter\(15),
	combout => \irRec|Equal1~2_combout\);

-- Location: LCCOMB_X59_Y51_N10
\irRec|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~0_combout\ = (!\irRec|LC_off_counter\(3) & (!\irRec|LC_off_counter\(2) & (!\irRec|LC_off_counter\(0) & !\irRec|LC_off_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(3),
	datab => \irRec|LC_off_counter\(2),
	datac => \irRec|LC_off_counter\(0),
	datad => \irRec|LC_off_counter\(1),
	combout => \irRec|Equal1~0_combout\);

-- Location: LCCOMB_X59_Y51_N0
\irRec|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~1_combout\ = (!\irRec|LC_off_counter\(5) & \irRec|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(5),
	datad => \irRec|Equal1~0_combout\,
	combout => \irRec|Equal1~1_combout\);

-- Location: LCCOMB_X59_Y51_N2
\irRec|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~6_combout\ = (\irRec|LC_off_counter\(4) & (\irRec|Equal1~5_combout\ & (\irRec|Equal1~2_combout\ & \irRec|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(4),
	datab => \irRec|Equal1~5_combout\,
	datac => \irRec|Equal1~2_combout\,
	datad => \irRec|Equal1~1_combout\,
	combout => \irRec|Equal1~6_combout\);

-- Location: LCCOMB_X59_Y51_N12
\irRec|LC_off_counter[5]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[5]~45_combout\ = ((\irRec|Equal1~3_combout\ & (\irRec|Equal1~4_combout\ & \irRec|Equal1~6_combout\))) # (!\irRec|LC_off_counter[5]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal1~3_combout\,
	datab => \irRec|LC_off_counter[5]~44_combout\,
	datac => \irRec|Equal1~4_combout\,
	datad => \irRec|Equal1~6_combout\,
	combout => \irRec|LC_off_counter[5]~45_combout\);

-- Location: FF_X59_Y51_N15
\irRec|LC_off_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[0]~18_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(0));

-- Location: LCCOMB_X59_Y51_N16
\irRec|LC_off_counter[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[1]~20_combout\ = (\irRec|LC_off_counter\(1) & (!\irRec|LC_off_counter[0]~19\)) # (!\irRec|LC_off_counter\(1) & ((\irRec|LC_off_counter[0]~19\) # (GND)))
-- \irRec|LC_off_counter[1]~21\ = CARRY((!\irRec|LC_off_counter[0]~19\) # (!\irRec|LC_off_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(1),
	datad => VCC,
	cin => \irRec|LC_off_counter[0]~19\,
	combout => \irRec|LC_off_counter[1]~20_combout\,
	cout => \irRec|LC_off_counter[1]~21\);

-- Location: FF_X59_Y51_N17
\irRec|LC_off_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[1]~20_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(1));

-- Location: LCCOMB_X59_Y51_N18
\irRec|LC_off_counter[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[2]~22_combout\ = (\irRec|LC_off_counter\(2) & (\irRec|LC_off_counter[1]~21\ $ (GND))) # (!\irRec|LC_off_counter\(2) & (!\irRec|LC_off_counter[1]~21\ & VCC))
-- \irRec|LC_off_counter[2]~23\ = CARRY((\irRec|LC_off_counter\(2) & !\irRec|LC_off_counter[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(2),
	datad => VCC,
	cin => \irRec|LC_off_counter[1]~21\,
	combout => \irRec|LC_off_counter[2]~22_combout\,
	cout => \irRec|LC_off_counter[2]~23\);

-- Location: FF_X59_Y51_N19
\irRec|LC_off_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[2]~22_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(2));

-- Location: LCCOMB_X59_Y51_N20
\irRec|LC_off_counter[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[3]~24_combout\ = (\irRec|LC_off_counter\(3) & (!\irRec|LC_off_counter[2]~23\)) # (!\irRec|LC_off_counter\(3) & ((\irRec|LC_off_counter[2]~23\) # (GND)))
-- \irRec|LC_off_counter[3]~25\ = CARRY((!\irRec|LC_off_counter[2]~23\) # (!\irRec|LC_off_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(3),
	datad => VCC,
	cin => \irRec|LC_off_counter[2]~23\,
	combout => \irRec|LC_off_counter[3]~24_combout\,
	cout => \irRec|LC_off_counter[3]~25\);

-- Location: FF_X59_Y51_N21
\irRec|LC_off_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[3]~24_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(3));

-- Location: LCCOMB_X59_Y51_N22
\irRec|LC_off_counter[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[4]~26_combout\ = (\irRec|LC_off_counter\(4) & (\irRec|LC_off_counter[3]~25\ $ (GND))) # (!\irRec|LC_off_counter\(4) & (!\irRec|LC_off_counter[3]~25\ & VCC))
-- \irRec|LC_off_counter[4]~27\ = CARRY((\irRec|LC_off_counter\(4) & !\irRec|LC_off_counter[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(4),
	datad => VCC,
	cin => \irRec|LC_off_counter[3]~25\,
	combout => \irRec|LC_off_counter[4]~26_combout\,
	cout => \irRec|LC_off_counter[4]~27\);

-- Location: FF_X59_Y51_N23
\irRec|LC_off_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[4]~26_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(4));

-- Location: LCCOMB_X59_Y51_N24
\irRec|LC_off_counter[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[5]~28_combout\ = (\irRec|LC_off_counter\(5) & (!\irRec|LC_off_counter[4]~27\)) # (!\irRec|LC_off_counter\(5) & ((\irRec|LC_off_counter[4]~27\) # (GND)))
-- \irRec|LC_off_counter[5]~29\ = CARRY((!\irRec|LC_off_counter[4]~27\) # (!\irRec|LC_off_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(5),
	datad => VCC,
	cin => \irRec|LC_off_counter[4]~27\,
	combout => \irRec|LC_off_counter[5]~28_combout\,
	cout => \irRec|LC_off_counter[5]~29\);

-- Location: FF_X59_Y51_N25
\irRec|LC_off_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[5]~28_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(5));

-- Location: LCCOMB_X59_Y51_N26
\irRec|LC_off_counter[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[6]~30_combout\ = (\irRec|LC_off_counter\(6) & (\irRec|LC_off_counter[5]~29\ $ (GND))) # (!\irRec|LC_off_counter\(6) & (!\irRec|LC_off_counter[5]~29\ & VCC))
-- \irRec|LC_off_counter[6]~31\ = CARRY((\irRec|LC_off_counter\(6) & !\irRec|LC_off_counter[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(6),
	datad => VCC,
	cin => \irRec|LC_off_counter[5]~29\,
	combout => \irRec|LC_off_counter[6]~30_combout\,
	cout => \irRec|LC_off_counter[6]~31\);

-- Location: FF_X59_Y51_N27
\irRec|LC_off_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[6]~30_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(6));

-- Location: LCCOMB_X59_Y51_N28
\irRec|LC_off_counter[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[7]~32_combout\ = (\irRec|LC_off_counter\(7) & (!\irRec|LC_off_counter[6]~31\)) # (!\irRec|LC_off_counter\(7) & ((\irRec|LC_off_counter[6]~31\) # (GND)))
-- \irRec|LC_off_counter[7]~33\ = CARRY((!\irRec|LC_off_counter[6]~31\) # (!\irRec|LC_off_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(7),
	datad => VCC,
	cin => \irRec|LC_off_counter[6]~31\,
	combout => \irRec|LC_off_counter[7]~32_combout\,
	cout => \irRec|LC_off_counter[7]~33\);

-- Location: FF_X59_Y51_N29
\irRec|LC_off_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[7]~32_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(7));

-- Location: LCCOMB_X59_Y51_N30
\irRec|LC_off_counter[8]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[8]~34_combout\ = (\irRec|LC_off_counter\(8) & (\irRec|LC_off_counter[7]~33\ $ (GND))) # (!\irRec|LC_off_counter\(8) & (!\irRec|LC_off_counter[7]~33\ & VCC))
-- \irRec|LC_off_counter[8]~35\ = CARRY((\irRec|LC_off_counter\(8) & !\irRec|LC_off_counter[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(8),
	datad => VCC,
	cin => \irRec|LC_off_counter[7]~33\,
	combout => \irRec|LC_off_counter[8]~34_combout\,
	cout => \irRec|LC_off_counter[8]~35\);

-- Location: FF_X59_Y51_N31
\irRec|LC_off_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[8]~34_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(8));

-- Location: LCCOMB_X59_Y50_N0
\irRec|LC_off_counter[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[9]~36_combout\ = (\irRec|LC_off_counter\(9) & (!\irRec|LC_off_counter[8]~35\)) # (!\irRec|LC_off_counter\(9) & ((\irRec|LC_off_counter[8]~35\) # (GND)))
-- \irRec|LC_off_counter[9]~37\ = CARRY((!\irRec|LC_off_counter[8]~35\) # (!\irRec|LC_off_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(9),
	datad => VCC,
	cin => \irRec|LC_off_counter[8]~35\,
	combout => \irRec|LC_off_counter[9]~36_combout\,
	cout => \irRec|LC_off_counter[9]~37\);

-- Location: FF_X59_Y50_N1
\irRec|LC_off_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[9]~36_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(9));

-- Location: LCCOMB_X59_Y50_N2
\irRec|LC_off_counter[10]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[10]~38_combout\ = (\irRec|LC_off_counter\(10) & (\irRec|LC_off_counter[9]~37\ $ (GND))) # (!\irRec|LC_off_counter\(10) & (!\irRec|LC_off_counter[9]~37\ & VCC))
-- \irRec|LC_off_counter[10]~39\ = CARRY((\irRec|LC_off_counter\(10) & !\irRec|LC_off_counter[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(10),
	datad => VCC,
	cin => \irRec|LC_off_counter[9]~37\,
	combout => \irRec|LC_off_counter[10]~38_combout\,
	cout => \irRec|LC_off_counter[10]~39\);

-- Location: FF_X59_Y50_N3
\irRec|LC_off_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[10]~38_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(10));

-- Location: LCCOMB_X59_Y50_N4
\irRec|LC_off_counter[11]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[11]~40_combout\ = (\irRec|LC_off_counter\(11) & (!\irRec|LC_off_counter[10]~39\)) # (!\irRec|LC_off_counter\(11) & ((\irRec|LC_off_counter[10]~39\) # (GND)))
-- \irRec|LC_off_counter[11]~41\ = CARRY((!\irRec|LC_off_counter[10]~39\) # (!\irRec|LC_off_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(11),
	datad => VCC,
	cin => \irRec|LC_off_counter[10]~39\,
	combout => \irRec|LC_off_counter[11]~40_combout\,
	cout => \irRec|LC_off_counter[11]~41\);

-- Location: FF_X59_Y50_N5
\irRec|LC_off_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[11]~40_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(11));

-- Location: LCCOMB_X59_Y50_N6
\irRec|LC_off_counter[12]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[12]~42_combout\ = (\irRec|LC_off_counter\(12) & (\irRec|LC_off_counter[11]~41\ $ (GND))) # (!\irRec|LC_off_counter\(12) & (!\irRec|LC_off_counter[11]~41\ & VCC))
-- \irRec|LC_off_counter[12]~43\ = CARRY((\irRec|LC_off_counter\(12) & !\irRec|LC_off_counter[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(12),
	datad => VCC,
	cin => \irRec|LC_off_counter[11]~41\,
	combout => \irRec|LC_off_counter[12]~42_combout\,
	cout => \irRec|LC_off_counter[12]~43\);

-- Location: FF_X59_Y50_N7
\irRec|LC_off_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[12]~42_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(12));

-- Location: LCCOMB_X59_Y50_N8
\irRec|LC_off_counter[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[13]~46_combout\ = (\irRec|LC_off_counter\(13) & (!\irRec|LC_off_counter[12]~43\)) # (!\irRec|LC_off_counter\(13) & ((\irRec|LC_off_counter[12]~43\) # (GND)))
-- \irRec|LC_off_counter[13]~47\ = CARRY((!\irRec|LC_off_counter[12]~43\) # (!\irRec|LC_off_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(13),
	datad => VCC,
	cin => \irRec|LC_off_counter[12]~43\,
	combout => \irRec|LC_off_counter[13]~46_combout\,
	cout => \irRec|LC_off_counter[13]~47\);

-- Location: FF_X59_Y50_N9
\irRec|LC_off_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[13]~46_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(13));

-- Location: FF_X59_Y50_N11
\irRec|LC_off_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[14]~48_combout\,
	sclr => \irRec|LC_off_counter[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(14));

-- Location: LCCOMB_X59_Y50_N26
\irRec|nxt_state_proc~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~5_combout\ = (\irRec|LC_off_counter\(13)) # ((\irRec|LC_off_counter\(14) & ((\irRec|LC_off_counter\(11)) # (\irRec|LC_off_counter\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(14),
	datab => \irRec|LC_off_counter\(13),
	datac => \irRec|LC_off_counter\(11),
	datad => \irRec|LC_off_counter\(12),
	combout => \irRec|nxt_state_proc~5_combout\);

-- Location: LCCOMB_X59_Y50_N20
\irRec|nxt_state_proc~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~6_combout\ = ((\irRec|LC_off_counter\(14) & ((\irRec|LC_off_counter\(15)) # (!\irRec|nxt_state_proc~5_combout\))) # (!\irRec|LC_off_counter\(14) & ((\irRec|nxt_state_proc~5_combout\) # (!\irRec|LC_off_counter\(15))))) # 
-- (!\irRec|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(14),
	datab => \irRec|Equal1~4_combout\,
	datac => \irRec|nxt_state_proc~5_combout\,
	datad => \irRec|LC_off_counter\(15),
	combout => \irRec|nxt_state_proc~6_combout\);

-- Location: LCCOMB_X59_Y50_N28
\irRec|nxt_state_proc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~3_combout\ = (\irRec|LC_off_counter\(12) & (\irRec|LC_off_counter\(15) & ((\irRec|LC_off_counter\(10)) # (\irRec|LC_off_counter\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(12),
	datab => \irRec|LC_off_counter\(10),
	datac => \irRec|LC_off_counter\(11),
	datad => \irRec|LC_off_counter\(15),
	combout => \irRec|nxt_state_proc~3_combout\);

-- Location: LCCOMB_X59_Y51_N4
\irRec|nxt_state_proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~1_combout\ = (((!\irRec|LC_off_counter\(7)) # (!\irRec|LC_off_counter\(6))) # (!\irRec|LC_off_counter\(9))) # (!\irRec|LC_off_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(8),
	datab => \irRec|LC_off_counter\(9),
	datac => \irRec|LC_off_counter\(6),
	datad => \irRec|LC_off_counter\(7),
	combout => \irRec|nxt_state_proc~1_combout\);

-- Location: LCCOMB_X59_Y50_N22
\irRec|nxt_state_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~0_combout\ = (!\irRec|LC_off_counter\(12) & (!\irRec|LC_off_counter\(10) & (!\irRec|LC_off_counter\(13) & !\irRec|LC_off_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(12),
	datab => \irRec|LC_off_counter\(10),
	datac => \irRec|LC_off_counter\(13),
	datad => \irRec|LC_off_counter\(15),
	combout => \irRec|nxt_state_proc~0_combout\);

-- Location: LCCOMB_X58_Y51_N30
\irRec|nxt_state_proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~2_combout\ = (\irRec|nxt_state_proc~0_combout\ & ((\irRec|nxt_state_proc~1_combout\) # ((\irRec|Equal1~1_combout\ & !\irRec|LC_off_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|nxt_state_proc~1_combout\,
	datab => \irRec|nxt_state_proc~0_combout\,
	datac => \irRec|Equal1~1_combout\,
	datad => \irRec|LC_off_counter\(4),
	combout => \irRec|nxt_state_proc~2_combout\);

-- Location: LCCOMB_X59_Y51_N8
\irRec|nxt_state_proc~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~4_combout\ = (\irRec|Equal1~2_combout\ & ((\irRec|LC_off_counter\(4)) # ((\irRec|LC_off_counter\(5)) # (!\irRec|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(4),
	datab => \irRec|LC_off_counter\(5),
	datac => \irRec|Equal1~2_combout\,
	datad => \irRec|Equal1~3_combout\,
	combout => \irRec|nxt_state_proc~4_combout\);

-- Location: LCCOMB_X58_Y50_N26
\irRec|nxt_state_proc~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~7_combout\ = (\irRec|nxt_state_proc~6_combout\) # ((\irRec|nxt_state_proc~3_combout\) # ((\irRec|nxt_state_proc~2_combout\) # (\irRec|nxt_state_proc~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|nxt_state_proc~6_combout\,
	datab => \irRec|nxt_state_proc~3_combout\,
	datac => \irRec|nxt_state_proc~2_combout\,
	datad => \irRec|nxt_state_proc~4_combout\,
	combout => \irRec|nxt_state_proc~7_combout\);

-- Location: LCCOMB_X58_Y50_N12
\irRec|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Selector3~0_combout\ = (\irRec|nxt_state_proc~7_combout\ & (((!\irRec|Equal4~10_combout\ & \irRec|state.check_data~q\)))) # (!\irRec|nxt_state_proc~7_combout\ & ((\irRec|state.check_LC_off_count~q\) # ((!\irRec|Equal4~10_combout\ & 
-- \irRec|state.check_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|nxt_state_proc~7_combout\,
	datab => \irRec|state.check_LC_off_count~q\,
	datac => \irRec|Equal4~10_combout\,
	datad => \irRec|state.check_data~q\,
	combout => \irRec|Selector3~0_combout\);

-- Location: LCCOMB_X58_Y50_N16
\irRec|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Selector3~1_combout\ = (\irRec|Selector3~0_combout\) # ((\irRec|state.read_data~q\ & ((!\irRec|data_follow~q\) # (!\irRec|data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Selector3~0_combout\,
	datab => \irRec|data~q\,
	datac => \irRec|state.read_data~q\,
	datad => \irRec|data_follow~q\,
	combout => \irRec|Selector3~1_combout\);

-- Location: FF_X58_Y50_N17
\irRec|state.read_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|Selector3~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|state.read_data~q\);

-- Location: LCCOMB_X58_Y50_N18
\irRec|state~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~9_combout\ = (\irRec|state.read_data~q\ & (\irRec|data~q\ & (\reset~input_o\ & \irRec|data_follow~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.read_data~q\,
	datab => \irRec|data~q\,
	datac => \reset~input_o\,
	datad => \irRec|data_follow~q\,
	combout => \irRec|state~9_combout\);

-- Location: FF_X58_Y50_N19
\irRec|state.check_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|state.check_data~q\);

-- Location: LCCOMB_X55_Y49_N14
\irRec|clock_counter[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[15]~47_combout\ = (\irRec|clock_counter\(15) & (!\irRec|clock_counter[14]~46\)) # (!\irRec|clock_counter\(15) & ((\irRec|clock_counter[14]~46\) # (GND)))
-- \irRec|clock_counter[15]~48\ = CARRY((!\irRec|clock_counter[14]~46\) # (!\irRec|clock_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|clock_counter\(15),
	datad => VCC,
	cin => \irRec|clock_counter[14]~46\,
	combout => \irRec|clock_counter[15]~47_combout\,
	cout => \irRec|clock_counter[15]~48\);

-- Location: LCCOMB_X55_Y49_N16
\irRec|clock_counter[16]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[16]~49_combout\ = \irRec|clock_counter[15]~48\ $ (!\irRec|clock_counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irRec|clock_counter\(16),
	cin => \irRec|clock_counter[15]~48\,
	combout => \irRec|clock_counter[16]~49_combout\);

-- Location: FF_X55_Y49_N17
\irRec|clock_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[16]~49_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(16));

-- Location: LCCOMB_X55_Y50_N12
\irRec|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~3_combout\ = (!\irRec|clock_counter\(1) & (!\irRec|clock_counter\(0) & (!\irRec|clock_counter\(5) & !\irRec|clock_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(1),
	datab => \irRec|clock_counter\(0),
	datac => \irRec|clock_counter\(5),
	datad => \irRec|clock_counter\(6),
	combout => \irRec|Equal2~3_combout\);

-- Location: LCCOMB_X56_Y49_N26
\irRec|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~4_combout\ = (!\irRec|clock_counter\(13) & (!\irRec|clock_counter\(10) & (!\irRec|clock_counter\(8) & \irRec|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(13),
	datab => \irRec|clock_counter\(10),
	datac => \irRec|clock_counter\(8),
	datad => \irRec|Equal2~3_combout\,
	combout => \irRec|Equal2~4_combout\);

-- Location: LCCOMB_X56_Y49_N20
\irRec|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~0_combout\ = (\irRec|clock_counter\(11) & \irRec|clock_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|clock_counter\(11),
	datad => \irRec|clock_counter\(12),
	combout => \irRec|Equal2~0_combout\);

-- Location: LCCOMB_X56_Y49_N4
\irRec|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~1_combout\ = (\irRec|clock_counter\(2) & (\irRec|clock_counter\(4) & \irRec|clock_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(2),
	datac => \irRec|clock_counter\(4),
	datad => \irRec|clock_counter\(3),
	combout => \irRec|Equal2~1_combout\);

-- Location: LCCOMB_X56_Y49_N6
\irRec|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~2_combout\ = (\irRec|clock_counter\(14) & \irRec|clock_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(14),
	datad => \irRec|clock_counter\(9),
	combout => \irRec|Equal2~2_combout\);

-- Location: LCCOMB_X56_Y49_N0
\irRec|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~5_combout\ = (\irRec|clock_counter\(7) & (\irRec|Equal2~0_combout\ & (\irRec|Equal2~1_combout\ & \irRec|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(7),
	datab => \irRec|Equal2~0_combout\,
	datac => \irRec|Equal2~1_combout\,
	datad => \irRec|Equal2~2_combout\,
	combout => \irRec|Equal2~5_combout\);

-- Location: LCCOMB_X56_Y49_N18
\irRec|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~6_combout\ = (\irRec|clock_counter\(16) & (\irRec|clock_counter\(15) & (\irRec|Equal2~4_combout\ & \irRec|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(16),
	datab => \irRec|clock_counter\(15),
	datac => \irRec|Equal2~4_combout\,
	datad => \irRec|Equal2~5_combout\,
	combout => \irRec|Equal2~6_combout\);

-- Location: LCCOMB_X55_Y50_N2
\irRec|clock_counter[4]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[4]~51_combout\ = (\irRec|state.check_data~q\) # (((\irRec|Equal2~6_combout\) # (!\reset~input_o\)) # (!\irRec|state.read_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|state.read_data~q\,
	datac => \reset~input_o\,
	datad => \irRec|Equal2~6_combout\,
	combout => \irRec|clock_counter[4]~51_combout\);

-- Location: FF_X55_Y50_N17
\irRec|clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[0]~17_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(0));

-- Location: LCCOMB_X55_Y50_N18
\irRec|clock_counter[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[1]~19_combout\ = (\irRec|clock_counter\(1) & (!\irRec|clock_counter[0]~18\)) # (!\irRec|clock_counter\(1) & ((\irRec|clock_counter[0]~18\) # (GND)))
-- \irRec|clock_counter[1]~20\ = CARRY((!\irRec|clock_counter[0]~18\) # (!\irRec|clock_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|clock_counter\(1),
	datad => VCC,
	cin => \irRec|clock_counter[0]~18\,
	combout => \irRec|clock_counter[1]~19_combout\,
	cout => \irRec|clock_counter[1]~20\);

-- Location: FF_X55_Y50_N19
\irRec|clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[1]~19_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(1));

-- Location: LCCOMB_X55_Y50_N20
\irRec|clock_counter[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[2]~21_combout\ = (\irRec|clock_counter\(2) & (\irRec|clock_counter[1]~20\ $ (GND))) # (!\irRec|clock_counter\(2) & (!\irRec|clock_counter[1]~20\ & VCC))
-- \irRec|clock_counter[2]~22\ = CARRY((\irRec|clock_counter\(2) & !\irRec|clock_counter[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|clock_counter\(2),
	datad => VCC,
	cin => \irRec|clock_counter[1]~20\,
	combout => \irRec|clock_counter[2]~21_combout\,
	cout => \irRec|clock_counter[2]~22\);

-- Location: FF_X55_Y50_N21
\irRec|clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[2]~21_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(2));

-- Location: LCCOMB_X55_Y50_N22
\irRec|clock_counter[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[3]~23_combout\ = (\irRec|clock_counter\(3) & (!\irRec|clock_counter[2]~22\)) # (!\irRec|clock_counter\(3) & ((\irRec|clock_counter[2]~22\) # (GND)))
-- \irRec|clock_counter[3]~24\ = CARRY((!\irRec|clock_counter[2]~22\) # (!\irRec|clock_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(3),
	datad => VCC,
	cin => \irRec|clock_counter[2]~22\,
	combout => \irRec|clock_counter[3]~23_combout\,
	cout => \irRec|clock_counter[3]~24\);

-- Location: FF_X55_Y50_N23
\irRec|clock_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[3]~23_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(3));

-- Location: LCCOMB_X55_Y50_N24
\irRec|clock_counter[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[4]~25_combout\ = (\irRec|clock_counter\(4) & (\irRec|clock_counter[3]~24\ $ (GND))) # (!\irRec|clock_counter\(4) & (!\irRec|clock_counter[3]~24\ & VCC))
-- \irRec|clock_counter[4]~26\ = CARRY((\irRec|clock_counter\(4) & !\irRec|clock_counter[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|clock_counter\(4),
	datad => VCC,
	cin => \irRec|clock_counter[3]~24\,
	combout => \irRec|clock_counter[4]~25_combout\,
	cout => \irRec|clock_counter[4]~26\);

-- Location: FF_X55_Y50_N25
\irRec|clock_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[4]~25_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(4));

-- Location: LCCOMB_X55_Y50_N26
\irRec|clock_counter[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[5]~27_combout\ = (\irRec|clock_counter\(5) & (!\irRec|clock_counter[4]~26\)) # (!\irRec|clock_counter\(5) & ((\irRec|clock_counter[4]~26\) # (GND)))
-- \irRec|clock_counter[5]~28\ = CARRY((!\irRec|clock_counter[4]~26\) # (!\irRec|clock_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(5),
	datad => VCC,
	cin => \irRec|clock_counter[4]~26\,
	combout => \irRec|clock_counter[5]~27_combout\,
	cout => \irRec|clock_counter[5]~28\);

-- Location: FF_X55_Y50_N27
\irRec|clock_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[5]~27_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(5));

-- Location: LCCOMB_X55_Y50_N28
\irRec|clock_counter[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[6]~29_combout\ = (\irRec|clock_counter\(6) & (\irRec|clock_counter[5]~28\ $ (GND))) # (!\irRec|clock_counter\(6) & (!\irRec|clock_counter[5]~28\ & VCC))
-- \irRec|clock_counter[6]~30\ = CARRY((\irRec|clock_counter\(6) & !\irRec|clock_counter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|clock_counter\(6),
	datad => VCC,
	cin => \irRec|clock_counter[5]~28\,
	combout => \irRec|clock_counter[6]~29_combout\,
	cout => \irRec|clock_counter[6]~30\);

-- Location: FF_X55_Y50_N29
\irRec|clock_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[6]~29_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(6));

-- Location: LCCOMB_X55_Y50_N30
\irRec|clock_counter[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[7]~31_combout\ = (\irRec|clock_counter\(7) & (!\irRec|clock_counter[6]~30\)) # (!\irRec|clock_counter\(7) & ((\irRec|clock_counter[6]~30\) # (GND)))
-- \irRec|clock_counter[7]~32\ = CARRY((!\irRec|clock_counter[6]~30\) # (!\irRec|clock_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(7),
	datad => VCC,
	cin => \irRec|clock_counter[6]~30\,
	combout => \irRec|clock_counter[7]~31_combout\,
	cout => \irRec|clock_counter[7]~32\);

-- Location: FF_X55_Y50_N31
\irRec|clock_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[7]~31_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(7));

-- Location: LCCOMB_X55_Y49_N0
\irRec|clock_counter[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[8]~33_combout\ = (\irRec|clock_counter\(8) & (\irRec|clock_counter[7]~32\ $ (GND))) # (!\irRec|clock_counter\(8) & (!\irRec|clock_counter[7]~32\ & VCC))
-- \irRec|clock_counter[8]~34\ = CARRY((\irRec|clock_counter\(8) & !\irRec|clock_counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|clock_counter\(8),
	datad => VCC,
	cin => \irRec|clock_counter[7]~32\,
	combout => \irRec|clock_counter[8]~33_combout\,
	cout => \irRec|clock_counter[8]~34\);

-- Location: FF_X55_Y49_N1
\irRec|clock_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[8]~33_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(8));

-- Location: LCCOMB_X55_Y49_N2
\irRec|clock_counter[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[9]~35_combout\ = (\irRec|clock_counter\(9) & (!\irRec|clock_counter[8]~34\)) # (!\irRec|clock_counter\(9) & ((\irRec|clock_counter[8]~34\) # (GND)))
-- \irRec|clock_counter[9]~36\ = CARRY((!\irRec|clock_counter[8]~34\) # (!\irRec|clock_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|clock_counter\(9),
	datad => VCC,
	cin => \irRec|clock_counter[8]~34\,
	combout => \irRec|clock_counter[9]~35_combout\,
	cout => \irRec|clock_counter[9]~36\);

-- Location: FF_X55_Y49_N3
\irRec|clock_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[9]~35_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(9));

-- Location: LCCOMB_X55_Y49_N4
\irRec|clock_counter[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[10]~37_combout\ = (\irRec|clock_counter\(10) & (\irRec|clock_counter[9]~36\ $ (GND))) # (!\irRec|clock_counter\(10) & (!\irRec|clock_counter[9]~36\ & VCC))
-- \irRec|clock_counter[10]~38\ = CARRY((\irRec|clock_counter\(10) & !\irRec|clock_counter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|clock_counter\(10),
	datad => VCC,
	cin => \irRec|clock_counter[9]~36\,
	combout => \irRec|clock_counter[10]~37_combout\,
	cout => \irRec|clock_counter[10]~38\);

-- Location: FF_X55_Y49_N5
\irRec|clock_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[10]~37_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(10));

-- Location: LCCOMB_X55_Y49_N6
\irRec|clock_counter[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[11]~39_combout\ = (\irRec|clock_counter\(11) & (!\irRec|clock_counter[10]~38\)) # (!\irRec|clock_counter\(11) & ((\irRec|clock_counter[10]~38\) # (GND)))
-- \irRec|clock_counter[11]~40\ = CARRY((!\irRec|clock_counter[10]~38\) # (!\irRec|clock_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(11),
	datad => VCC,
	cin => \irRec|clock_counter[10]~38\,
	combout => \irRec|clock_counter[11]~39_combout\,
	cout => \irRec|clock_counter[11]~40\);

-- Location: FF_X55_Y49_N7
\irRec|clock_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[11]~39_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(11));

-- Location: LCCOMB_X55_Y49_N8
\irRec|clock_counter[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[12]~41_combout\ = (\irRec|clock_counter\(12) & (\irRec|clock_counter[11]~40\ $ (GND))) # (!\irRec|clock_counter\(12) & (!\irRec|clock_counter[11]~40\ & VCC))
-- \irRec|clock_counter[12]~42\ = CARRY((\irRec|clock_counter\(12) & !\irRec|clock_counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|clock_counter\(12),
	datad => VCC,
	cin => \irRec|clock_counter[11]~40\,
	combout => \irRec|clock_counter[12]~41_combout\,
	cout => \irRec|clock_counter[12]~42\);

-- Location: FF_X55_Y49_N9
\irRec|clock_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[12]~41_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(12));

-- Location: LCCOMB_X55_Y49_N10
\irRec|clock_counter[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[13]~43_combout\ = (\irRec|clock_counter\(13) & (!\irRec|clock_counter[12]~42\)) # (!\irRec|clock_counter\(13) & ((\irRec|clock_counter[12]~42\) # (GND)))
-- \irRec|clock_counter[13]~44\ = CARRY((!\irRec|clock_counter[12]~42\) # (!\irRec|clock_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(13),
	datad => VCC,
	cin => \irRec|clock_counter[12]~42\,
	combout => \irRec|clock_counter[13]~43_combout\,
	cout => \irRec|clock_counter[13]~44\);

-- Location: FF_X55_Y49_N11
\irRec|clock_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[13]~43_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(13));

-- Location: LCCOMB_X55_Y49_N12
\irRec|clock_counter[14]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[14]~45_combout\ = (\irRec|clock_counter\(14) & (\irRec|clock_counter[13]~44\ $ (GND))) # (!\irRec|clock_counter\(14) & (!\irRec|clock_counter[13]~44\ & VCC))
-- \irRec|clock_counter[14]~46\ = CARRY((\irRec|clock_counter\(14) & !\irRec|clock_counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(14),
	datad => VCC,
	cin => \irRec|clock_counter[13]~44\,
	combout => \irRec|clock_counter[14]~45_combout\,
	cout => \irRec|clock_counter[14]~46\);

-- Location: FF_X55_Y49_N13
\irRec|clock_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[14]~45_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(14));

-- Location: FF_X55_Y49_N15
\irRec|clock_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[15]~47_combout\,
	sclr => \irRec|clock_counter[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(15));

-- Location: LCCOMB_X56_Y49_N12
\irRec|data_bit_proc~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~5_combout\ = (\irRec|clock_counter\(13) & (\irRec|clock_counter\(10) & (\irRec|clock_counter\(11) & \irRec|clock_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(13),
	datab => \irRec|clock_counter\(10),
	datac => \irRec|clock_counter\(11),
	datad => \irRec|clock_counter\(12),
	combout => \irRec|data_bit_proc~5_combout\);

-- Location: LCCOMB_X55_Y50_N6
\irRec|data_bit_proc~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~6_combout\ = (\irRec|clock_counter\(1)) # ((\irRec|clock_counter\(2)) # ((\irRec|clock_counter\(3)) # (\irRec|clock_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(1),
	datab => \irRec|clock_counter\(2),
	datac => \irRec|clock_counter\(3),
	datad => \irRec|clock_counter\(4),
	combout => \irRec|data_bit_proc~6_combout\);

-- Location: LCCOMB_X56_Y50_N20
\irRec|data_bit_proc~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~7_combout\ = (\irRec|clock_counter\(5) & (\irRec|clock_counter\(7) & (\irRec|data_bit_proc~6_combout\ & \irRec|clock_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(5),
	datab => \irRec|clock_counter\(7),
	datac => \irRec|data_bit_proc~6_combout\,
	datad => \irRec|clock_counter\(6),
	combout => \irRec|data_bit_proc~7_combout\);

-- Location: LCCOMB_X57_Y49_N12
\irRec|data_bit_proc~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~8_combout\ = (\irRec|data_bit_proc~5_combout\ & (\irRec|Equal2~2_combout\ & ((\irRec|clock_counter\(8)) # (\irRec|data_bit_proc~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_bit_proc~5_combout\,
	datab => \irRec|Equal2~2_combout\,
	datac => \irRec|clock_counter\(8),
	datad => \irRec|data_bit_proc~7_combout\,
	combout => \irRec|data_bit_proc~8_combout\);

-- Location: LCCOMB_X57_Y49_N30
\irRec|data_bit~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~9_combout\ = ((\irRec|clock_counter\(16)) # ((\irRec|data_bit_proc~8_combout\) # (!\irRec|state.check_data~q\))) # (!\irRec|clock_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(15),
	datab => \irRec|clock_counter\(16),
	datac => \irRec|state.check_data~q\,
	datad => \irRec|data_bit_proc~8_combout\,
	combout => \irRec|data_bit~9_combout\);

-- Location: LCCOMB_X55_Y50_N8
\irRec|data_bit_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~0_combout\ = (!\irRec|clock_counter\(5) & !\irRec|clock_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|clock_counter\(5),
	datad => \irRec|clock_counter\(6),
	combout => \irRec|data_bit_proc~0_combout\);

-- Location: LCCOMB_X55_Y50_N10
\irRec|data_bit_proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~1_combout\ = (!\irRec|clock_counter\(3) & (!\irRec|clock_counter\(2) & ((!\irRec|clock_counter\(0)) # (!\irRec|clock_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(1),
	datab => \irRec|clock_counter\(0),
	datac => \irRec|clock_counter\(3),
	datad => \irRec|clock_counter\(2),
	combout => \irRec|data_bit_proc~1_combout\);

-- Location: LCCOMB_X55_Y50_N0
\irRec|data_bit_proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~2_combout\ = ((\irRec|data_bit_proc~0_combout\ & ((\irRec|data_bit_proc~1_combout\) # (!\irRec|clock_counter\(4))))) # (!\irRec|clock_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(7),
	datab => \irRec|clock_counter\(4),
	datac => \irRec|data_bit_proc~0_combout\,
	datad => \irRec|data_bit_proc~1_combout\,
	combout => \irRec|data_bit_proc~2_combout\);

-- Location: LCCOMB_X55_Y49_N26
\irRec|data_bit_proc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~3_combout\ = (!\irRec|clock_counter\(8) & (!\irRec|clock_counter\(9) & (!\irRec|clock_counter\(10) & \irRec|data_bit_proc~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(8),
	datab => \irRec|clock_counter\(9),
	datac => \irRec|clock_counter\(10),
	datad => \irRec|data_bit_proc~2_combout\,
	combout => \irRec|data_bit_proc~3_combout\);

-- Location: LCCOMB_X56_Y49_N28
\irRec|data_bit_proc~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~4_combout\ = (!\irRec|clock_counter\(14) & (((\irRec|data_bit_proc~3_combout\) # (!\irRec|clock_counter\(13))) # (!\irRec|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(14),
	datab => \irRec|Equal2~0_combout\,
	datac => \irRec|data_bit_proc~3_combout\,
	datad => \irRec|clock_counter\(13),
	combout => \irRec|data_bit_proc~4_combout\);

-- Location: LCCOMB_X56_Y49_N10
\irRec|data_bit~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~5_combout\ = (!\irRec|clock_counter\(8) & (((!\irRec|Equal2~1_combout\ & \irRec|data_bit_proc~0_combout\)) # (!\irRec|clock_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(8),
	datab => \irRec|Equal2~1_combout\,
	datac => \irRec|data_bit_proc~0_combout\,
	datad => \irRec|clock_counter\(7),
	combout => \irRec|data_bit~5_combout\);

-- Location: LCCOMB_X56_Y49_N16
\irRec|data_bit~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~6_combout\ = ((!\irRec|clock_counter\(10) & ((\irRec|data_bit~5_combout\) # (!\irRec|clock_counter\(9))))) # (!\irRec|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(9),
	datab => \irRec|Equal2~0_combout\,
	datac => \irRec|clock_counter\(10),
	datad => \irRec|data_bit~5_combout\,
	combout => \irRec|data_bit~6_combout\);

-- Location: LCCOMB_X56_Y49_N22
\irRec|data_bit~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~2_combout\ = (\irRec|clock_counter\(8)) # ((\irRec|clock_counter\(7)) # (\irRec|clock_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(8),
	datac => \irRec|clock_counter\(7),
	datad => \irRec|clock_counter\(9),
	combout => \irRec|data_bit~2_combout\);

-- Location: LCCOMB_X55_Y50_N4
\irRec|data_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~0_combout\ = (\irRec|clock_counter\(3) & (\irRec|clock_counter\(2) & ((\irRec|clock_counter\(1)) # (\irRec|clock_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(3),
	datab => \irRec|clock_counter\(2),
	datac => \irRec|clock_counter\(1),
	datad => \irRec|clock_counter\(0),
	combout => \irRec|data_bit~0_combout\);

-- Location: LCCOMB_X55_Y50_N14
\irRec|data_bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~1_combout\ = (\irRec|clock_counter\(6) & ((\irRec|clock_counter\(5)) # ((\irRec|clock_counter\(4)) # (\irRec|data_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(5),
	datab => \irRec|clock_counter\(4),
	datac => \irRec|data_bit~0_combout\,
	datad => \irRec|clock_counter\(6),
	combout => \irRec|data_bit~1_combout\);

-- Location: LCCOMB_X56_Y49_N8
\irRec|data_bit~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~3_combout\ = (\irRec|clock_counter\(12) & (\irRec|clock_counter\(10) & ((\irRec|data_bit~2_combout\) # (\irRec|data_bit~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(12),
	datab => \irRec|clock_counter\(10),
	datac => \irRec|data_bit~2_combout\,
	datad => \irRec|data_bit~1_combout\,
	combout => \irRec|data_bit~3_combout\);

-- Location: LCCOMB_X56_Y49_N14
\irRec|data_bit~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~4_combout\ = (!\irRec|clock_counter\(14) & ((\irRec|Equal2~0_combout\) # ((\irRec|data_bit~3_combout\) # (\irRec|clock_counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(14),
	datab => \irRec|Equal2~0_combout\,
	datac => \irRec|data_bit~3_combout\,
	datad => \irRec|clock_counter\(13),
	combout => \irRec|data_bit~4_combout\);

-- Location: LCCOMB_X56_Y49_N30
\irRec|data_bit~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~7_combout\ = (\irRec|data_bit~4_combout\) # ((\irRec|clock_counter\(14) & (\irRec|data_bit~6_combout\ & !\irRec|clock_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(14),
	datab => \irRec|data_bit~6_combout\,
	datac => \irRec|data_bit~4_combout\,
	datad => \irRec|clock_counter\(13),
	combout => \irRec|data_bit~7_combout\);

-- Location: LCCOMB_X57_Y49_N6
\irRec|data_bit~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~8_combout\ = (\irRec|clock_counter\(15) & (\irRec|clock_counter\(16) & (\irRec|state.check_data~q\ & \irRec|data_bit~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(15),
	datab => \irRec|clock_counter\(16),
	datac => \irRec|state.check_data~q\,
	datad => \irRec|data_bit~7_combout\,
	combout => \irRec|data_bit~8_combout\);

-- Location: LCCOMB_X57_Y49_N20
\irRec|data_bit~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~10_combout\ = (\irRec|data_bit~8_combout\) # ((\irRec|data_bit~q\ & ((\irRec|data_bit~9_combout\) # (\irRec|data_bit_proc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_bit~9_combout\,
	datab => \irRec|data_bit_proc~4_combout\,
	datac => \irRec|data_bit~q\,
	datad => \irRec|data_bit~8_combout\,
	combout => \irRec|data_bit~10_combout\);

-- Location: FF_X57_Y49_N21
\irRec|data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_bit~10_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_bit~q\);

-- Location: LCCOMB_X57_Y49_N24
\irRec|shift_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~7_combout\ = (\reset~input_o\ & \irRec|data_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \irRec|data_bit~q\,
	combout => \irRec|shift_reg~7_combout\);

-- Location: LCCOMB_X56_Y49_N2
\irRec|shift_proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_proc~1_combout\ = (\irRec|clock_counter\(9)) # ((\irRec|clock_counter\(12)) # ((\irRec|clock_counter\(7)) # (\irRec|clock_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(9),
	datab => \irRec|clock_counter\(12),
	datac => \irRec|clock_counter\(7),
	datad => \irRec|clock_counter\(14),
	combout => \irRec|shift_proc~1_combout\);

-- Location: LCCOMB_X56_Y49_N24
\irRec|shift_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_proc~0_combout\ = (\irRec|clock_counter\(2)) # ((\irRec|clock_counter\(11)) # ((\irRec|clock_counter\(4)) # (\irRec|clock_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(2),
	datab => \irRec|clock_counter\(11),
	datac => \irRec|clock_counter\(4),
	datad => \irRec|clock_counter\(3),
	combout => \irRec|shift_proc~0_combout\);

-- Location: LCCOMB_X57_Y49_N10
\irRec|shift_proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_proc~2_combout\ = (\irRec|shift_proc~1_combout\) # ((\irRec|shift_proc~0_combout\) # ((\irRec|Equal4~10_combout\) # (!\irRec|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|shift_proc~1_combout\,
	datab => \irRec|shift_proc~0_combout\,
	datac => \irRec|Equal2~4_combout\,
	datad => \irRec|Equal4~10_combout\,
	combout => \irRec|shift_proc~2_combout\);

-- Location: LCCOMB_X57_Y49_N4
\irRec|shift_reg[19]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg[19]~0_combout\ = ((!\irRec|clock_counter\(15) & (!\irRec|clock_counter\(16) & !\irRec|shift_proc~2_combout\))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(15),
	datab => \reset~input_o\,
	datac => \irRec|clock_counter\(16),
	datad => \irRec|shift_proc~2_combout\,
	combout => \irRec|shift_reg[19]~0_combout\);

-- Location: FF_X57_Y49_N25
\irRec|shift_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|shift_reg~7_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(31));

-- Location: LCCOMB_X57_Y49_N14
\irRec|shift_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~6_combout\ = (\reset~input_o\ & \irRec|shift_reg\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \irRec|shift_reg\(31),
	combout => \irRec|shift_reg~6_combout\);

-- Location: FF_X57_Y49_N15
\irRec|shift_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|shift_reg~6_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(30));

-- Location: LCCOMB_X57_Y49_N16
\irRec|shift_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~5_combout\ = (\reset~input_o\ & \irRec|shift_reg\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \irRec|shift_reg\(30),
	combout => \irRec|shift_reg~5_combout\);

-- Location: FF_X57_Y49_N17
\irRec|shift_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|shift_reg~5_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(29));

-- Location: LCCOMB_X57_Y49_N26
\irRec|shift_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~4_combout\ = (\reset~input_o\ & \irRec|shift_reg\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \irRec|shift_reg\(29),
	combout => \irRec|shift_reg~4_combout\);

-- Location: FF_X57_Y49_N27
\irRec|shift_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|shift_reg~4_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(28));

-- Location: LCCOMB_X57_Y49_N28
\irRec|shift_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~3_combout\ = (\reset~input_o\ & \irRec|shift_reg\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \irRec|shift_reg\(28),
	combout => \irRec|shift_reg~3_combout\);

-- Location: FF_X57_Y49_N29
\irRec|shift_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|shift_reg~3_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(27));

-- Location: LCCOMB_X57_Y49_N18
\irRec|shift_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~2_combout\ = (\reset~input_o\ & \irRec|shift_reg\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \irRec|shift_reg\(27),
	combout => \irRec|shift_reg~2_combout\);

-- Location: FF_X57_Y49_N19
\irRec|shift_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|shift_reg~2_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(26));

-- Location: LCCOMB_X57_Y49_N0
\irRec|shift_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~1_combout\ = (\reset~input_o\ & \irRec|shift_reg\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \irRec|shift_reg\(26),
	combout => \irRec|shift_reg~1_combout\);

-- Location: FF_X57_Y49_N1
\irRec|shift_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|shift_reg~1_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(25));

-- Location: LCCOMB_X57_Y49_N8
\irRec|data_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~5_combout\ = (\reset~input_o\ & \irRec|shift_reg\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \irRec|shift_reg\(25),
	combout => \irRec|data_reg~5_combout\);

-- Location: FF_X57_Y49_N9
\irRec|shift_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_reg~5_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(24));

-- Location: LCCOMB_X57_Y49_N22
\irRec|data_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~2_combout\ = (\reset~input_o\ & \irRec|shift_reg\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \irRec|shift_reg\(24),
	combout => \irRec|data_reg~2_combout\);

-- Location: FF_X57_Y49_N23
\irRec|shift_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_reg~2_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(23));

-- Location: LCCOMB_X58_Y51_N16
\irRec|data_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~4_combout\ = (\reset~input_o\ & \irRec|shift_reg\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \irRec|shift_reg\(23),
	combout => \irRec|data_reg~4_combout\);

-- Location: FF_X58_Y51_N17
\irRec|shift_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_reg~4_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(22));

-- Location: LCCOMB_X58_Y51_N2
\irRec|data_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~6_combout\ = (\reset~input_o\ & \irRec|shift_reg\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \irRec|shift_reg\(22),
	combout => \irRec|data_reg~6_combout\);

-- Location: FF_X58_Y51_N3
\irRec|shift_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_reg~6_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(21));

-- Location: LCCOMB_X58_Y51_N12
\irRec|data_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~8_combout\ = (\reset~input_o\ & \irRec|shift_reg\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \irRec|shift_reg\(21),
	combout => \irRec|data_reg~8_combout\);

-- Location: FF_X58_Y51_N13
\irRec|shift_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_reg~8_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(20));

-- Location: LCCOMB_X58_Y51_N22
\irRec|data_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~7_combout\ = (\reset~input_o\ & \irRec|shift_reg\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \irRec|shift_reg\(20),
	combout => \irRec|data_reg~7_combout\);

-- Location: FF_X58_Y51_N23
\irRec|shift_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_reg~7_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(19));

-- Location: LCCOMB_X58_Y51_N14
\irRec|data_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~3_combout\ = (\irRec|shift_reg\(19) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|shift_reg\(19),
	datac => \reset~input_o\,
	combout => \irRec|data_reg~3_combout\);

-- Location: FF_X58_Y51_N15
\irRec|shift_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_reg~3_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(18));

-- Location: LCCOMB_X58_Y51_N20
\irRec|data_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~0_combout\ = (\irRec|shift_reg\(18) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|shift_reg\(18),
	datac => \reset~input_o\,
	combout => \irRec|data_reg~0_combout\);

-- Location: FF_X58_Y51_N21
\irRec|data_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_reg~0_combout\,
	ena => \irRec|data_reg[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(16));

-- Location: FF_X63_Y51_N17
\irRec|data_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~4_combout\,
	sload => VCC,
	ena => \irRec|data_reg[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(21));

-- Location: FF_X63_Y51_N25
\irRec|data_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~6_combout\,
	sload => VCC,
	ena => \irRec|data_reg[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(20));

-- Location: FF_X63_Y51_N31
\irRec|data_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~5_combout\,
	sload => VCC,
	ena => \irRec|data_reg[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(23));

-- Location: FF_X63_Y51_N9
\irRec|data_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~8_combout\,
	sload => VCC,
	ena => \irRec|data_reg[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(19));

-- Location: LCCOMB_X63_Y51_N30
\irRec|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux2~3_combout\ = (\irRec|data_reg\(19) & (((\irRec|data_reg\(20) & !\irRec|data_reg\(23))))) # (!\irRec|data_reg\(19) & (!\irRec|data_reg\(21) & (\irRec|data_reg\(20) $ (\irRec|data_reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(21),
	datab => \irRec|data_reg\(20),
	datac => \irRec|data_reg\(23),
	datad => \irRec|data_reg\(19),
	combout => \irRec|Mux2~3_combout\);

-- Location: FF_X63_Y51_N3
\irRec|data_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~7_combout\,
	sload => VCC,
	ena => \irRec|data_reg[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(18));

-- Location: FF_X63_Y51_N21
\irRec|data_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~2_combout\,
	sload => VCC,
	ena => \irRec|data_reg[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(22));

-- Location: FF_X63_Y51_N15
\irRec|data_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~3_combout\,
	sload => VCC,
	ena => \irRec|data_reg[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(17));

-- Location: LCCOMB_X63_Y51_N28
\irRec|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux2~4_combout\ = (\irRec|data_reg\(23) & (!\irRec|data_reg\(19) & (\irRec|data_reg\(21) $ (\irRec|data_reg\(20))))) # (!\irRec|data_reg\(23) & ((\irRec|data_reg\(21) & (\irRec|data_reg\(19))) # (!\irRec|data_reg\(21) & ((\irRec|data_reg\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(19),
	datac => \irRec|data_reg\(21),
	datad => \irRec|data_reg\(20),
	combout => \irRec|Mux2~4_combout\);

-- Location: LCCOMB_X63_Y51_N14
\irRec|Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux2~6_combout\ = (!\irRec|data_reg\(22) & (\irRec|data_reg\(16) & (\irRec|data_reg\(17) $ (\irRec|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(22),
	datab => \irRec|data_reg\(16),
	datac => \irRec|data_reg\(17),
	datad => \irRec|Mux2~4_combout\,
	combout => \irRec|Mux2~6_combout\);

-- Location: LCCOMB_X63_Y51_N6
\irRec|Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux2~5_combout\ = ((\irRec|Mux2~3_combout\ & (\irRec|data_reg\(18) $ (\irRec|data_reg\(17)))) # (!\irRec|Mux2~3_combout\ & ((\irRec|data_reg\(17)) # (!\irRec|data_reg\(18))))) # (!\irRec|Mux2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux2~3_combout\,
	datab => \irRec|data_reg\(18),
	datac => \irRec|Mux2~6_combout\,
	datad => \irRec|data_reg\(17),
	combout => \irRec|Mux2~5_combout\);

-- Location: FF_X57_Y48_N17
\irRec|dt_rdy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|Equal5~1_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|dt_rdy~q\);

-- Location: LCCOMB_X63_Y51_N26
\irRec|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux3~2_combout\ = (!\irRec|data_reg\(19) & (\irRec|data_reg\(20) & (\irRec|data_reg\(23) $ (!\irRec|data_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(18),
	datac => \irRec|data_reg\(19),
	datad => \irRec|data_reg\(20),
	combout => \irRec|Mux3~2_combout\);

-- Location: LCCOMB_X63_Y51_N0
\irRec|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux3~3_combout\ = (\irRec|data_reg\(18) & ((\irRec|data_reg\(23) & (!\irRec|data_reg\(19))) # (!\irRec|data_reg\(23) & (\irRec|data_reg\(19) & !\irRec|data_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(18),
	datac => \irRec|data_reg\(19),
	datad => \irRec|data_reg\(20),
	combout => \irRec|Mux3~3_combout\);

-- Location: LCCOMB_X63_Y51_N18
\irRec|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux3~4_combout\ = (\irRec|data_reg\(17) & (!\irRec|data_reg\(21) & (!\irRec|Mux3~2_combout\ & \irRec|Mux3~3_combout\))) # (!\irRec|data_reg\(17) & ((\irRec|Mux3~3_combout\ & (\irRec|data_reg\(21))) # (!\irRec|Mux3~3_combout\ & 
-- ((\irRec|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(17),
	datab => \irRec|data_reg\(21),
	datac => \irRec|Mux3~2_combout\,
	datad => \irRec|Mux3~3_combout\,
	combout => \irRec|Mux3~4_combout\);

-- Location: LCCOMB_X62_Y51_N10
\irRec|Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux3~5_combout\ = ((\irRec|data_reg\(22)) # (!\irRec|Mux3~4_combout\)) # (!\irRec|data_reg\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(16),
	datac => \irRec|data_reg\(22),
	datad => \irRec|Mux3~4_combout\,
	combout => \irRec|Mux3~5_combout\);

-- Location: LCCOMB_X62_Y51_N2
\irRec|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux0~0_combout\ = (\irRec|data_reg\(20) & (\irRec|data_reg\(18) & ((!\irRec|data_reg\(21)) # (!\irRec|data_reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(20),
	datac => \irRec|data_reg\(18),
	datad => \irRec|data_reg\(21),
	combout => \irRec|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y51_N24
\irRec|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux0~1_combout\ = (\irRec|data_reg\(17)) # ((\irRec|data_reg\(23) & (!\irRec|data_reg\(18) & \irRec|data_reg\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(18),
	datac => \irRec|data_reg\(20),
	datad => \irRec|data_reg\(17),
	combout => \irRec|Mux0~1_combout\);

-- Location: LCCOMB_X63_Y51_N8
\irRec|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux0~2_combout\ = (\irRec|data_reg\(18) & ((\irRec|data_reg\(23) & (!\irRec|data_reg\(19) & !\irRec|data_reg\(21))) # (!\irRec|data_reg\(23) & (\irRec|data_reg\(19) & \irRec|data_reg\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(18),
	datac => \irRec|data_reg\(19),
	datad => \irRec|data_reg\(21),
	combout => \irRec|Mux0~2_combout\);

-- Location: LCCOMB_X63_Y51_N20
\irRec|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux0~3_combout\ = ((\irRec|data_reg\(22)) # ((!\irRec|data_reg\(20) & !\irRec|Mux0~2_combout\))) # (!\irRec|data_reg\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(20),
	datab => \irRec|data_reg\(16),
	datac => \irRec|data_reg\(22),
	datad => \irRec|Mux0~2_combout\,
	combout => \irRec|Mux0~3_combout\);

-- Location: LCCOMB_X63_Y51_N4
\irRec|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux1~1_combout\ = (\irRec|data_reg\(23) & (\irRec|data_reg\(18) & (\irRec|data_reg\(21) $ (\irRec|data_reg\(20))))) # (!\irRec|data_reg\(23) & (!\irRec|data_reg\(18) & (\irRec|data_reg\(21) & \irRec|data_reg\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(18),
	datac => \irRec|data_reg\(21),
	datad => \irRec|data_reg\(20),
	combout => \irRec|Mux1~1_combout\);

-- Location: LCCOMB_X63_Y51_N16
\irRec|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux1~0_combout\ = (!\irRec|data_reg\(23) & (!\irRec|data_reg\(20) & (\irRec|data_reg\(18) $ (\irRec|data_reg\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(18),
	datac => \irRec|data_reg\(21),
	datad => \irRec|data_reg\(20),
	combout => \irRec|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y51_N22
\irRec|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux1~2_combout\ = (\irRec|data_reg\(17) & (\irRec|data_reg\(19) & ((\irRec|Mux1~0_combout\)))) # (!\irRec|data_reg\(17) & ((\irRec|data_reg\(19)) # ((\irRec|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(17),
	datab => \irRec|data_reg\(19),
	datac => \irRec|Mux1~1_combout\,
	datad => \irRec|Mux1~0_combout\,
	combout => \irRec|Mux1~2_combout\);

-- Location: LCCOMB_X63_Y51_N2
\irRec|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux1~3_combout\ = (\irRec|data_reg\(18) & (\irRec|data_reg\(21) & (\irRec|data_reg\(23) $ (!\irRec|data_reg\(20))))) # (!\irRec|data_reg\(18) & (!\irRec|data_reg\(23) & (\irRec|data_reg\(20) & !\irRec|data_reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(20),
	datac => \irRec|data_reg\(18),
	datad => \irRec|data_reg\(21),
	combout => \irRec|Mux1~3_combout\);

-- Location: LCCOMB_X63_Y51_N12
\irRec|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux1~4_combout\ = (!\irRec|data_reg\(17) & (!\irRec|Mux1~3_combout\ & \irRec|data_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(17),
	datac => \irRec|Mux1~3_combout\,
	datad => \irRec|data_reg\(19),
	combout => \irRec|Mux1~4_combout\);

-- Location: LCCOMB_X63_Y51_N10
\irRec|Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux1~5_combout\ = (!\irRec|data_reg\(22) & (\irRec|data_reg\(16) & (\irRec|Mux1~2_combout\ & !\irRec|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(22),
	datab => \irRec|data_reg\(16),
	datac => \irRec|Mux1~2_combout\,
	datad => \irRec|Mux1~4_combout\,
	combout => \irRec|Mux1~5_combout\);

-- Location: LCCOMB_X62_Y51_N16
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\irRec|Mux1~5_combout\ & ((\irRec|Mux0~0_combout\) # ((\irRec|Mux0~1_combout\) # (\irRec|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux0~0_combout\,
	datab => \irRec|Mux0~1_combout\,
	datac => \irRec|Mux0~3_combout\,
	datad => \irRec|Mux1~5_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X62_Y51_N0
\A[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[0]~12_combout\ = (\irRec|dt_rdy~q\ & (((!\Equal0~1_combout\) # (!\irRec|Mux3~5_combout\)) # (!\irRec|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux2~5_combout\,
	datab => \irRec|dt_rdy~q\,
	datac => \irRec|Mux3~5_combout\,
	datad => \Equal0~1_combout\,
	combout => \A[0]~12_combout\);

-- Location: LCCOMB_X62_Y51_N24
\irRec|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux0~4_combout\ = (\irRec|Mux0~0_combout\) # ((\irRec|Mux0~3_combout\) # (\irRec|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|Mux0~0_combout\,
	datac => \irRec|Mux0~3_combout\,
	datad => \irRec|Mux0~1_combout\,
	combout => \irRec|Mux0~4_combout\);

-- Location: LCCOMB_X62_Y51_N28
\analyse_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data~0_combout\ = ((!\irRec|Mux0~4_combout\) # (!\irRec|Mux1~5_combout\)) # (!\irRec|Mux2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux2~5_combout\,
	datac => \irRec|Mux1~5_combout\,
	datad => \irRec|Mux0~4_combout\,
	combout => \analyse_data~0_combout\);

-- Location: LCCOMB_X61_Y51_N30
\analyse_data:counter[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[2]~0_combout\ = (\analyse_data:counter[2]~q\) # ((\analyse_data:counter[1]~q\ & (\A[0]~12_combout\ & !\analyse_data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[1]~q\,
	datab => \A[0]~12_combout\,
	datac => \analyse_data:counter[2]~q\,
	datad => \analyse_data~0_combout\,
	combout => \analyse_data:counter[2]~0_combout\);

-- Location: FF_X61_Y51_N31
\analyse_data:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \analyse_data:counter[2]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[2]~q\);

-- Location: LCCOMB_X62_Y51_N14
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\analyse_data:counter[1]~q\ & (!\analyse_data:counter[2]~q\ & ((\analyse_data~0_combout\)))) # (!\analyse_data:counter[1]~q\ & (!\analyse_data:counter[0]~q\ & ((\analyse_data:counter[2]~q\) # (!\analyse_data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[2]~q\,
	datab => \analyse_data:counter[1]~q\,
	datac => \analyse_data:counter[0]~q\,
	datad => \analyse_data~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: FF_X62_Y51_N15
\analyse_data:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	clrn => \reset~input_o\,
	ena => \A[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[0]~q\);

-- Location: LCCOMB_X62_Y51_N20
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\analyse_data:counter[2]~q\ & ((\analyse_data:counter[0]~q\) # ((\analyse_data:counter[1]~q\)))) # (!\analyse_data:counter[2]~q\ & ((\analyse_data~0_combout\) # ((\analyse_data:counter[0]~q\ & !\analyse_data:counter[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[0]~q\,
	datab => \analyse_data:counter[2]~q\,
	datac => \analyse_data:counter[1]~q\,
	datad => \analyse_data~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X62_Y51_N21
\analyse_data:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	clrn => \reset~input_o\,
	ena => \A[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[1]~q\);

-- Location: LCCOMB_X63_Y50_N4
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (!\analyse_data:counter[1]~q\ & (((\irRec|data_reg\(22)) # (!\irRec|Mux3~4_combout\)) # (!\irRec|data_reg\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(16),
	datab => \analyse_data:counter[1]~q\,
	datac => \irRec|Mux3~4_combout\,
	datad => \irRec|data_reg\(22),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X62_Y51_N30
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\irRec|Mux2~5_combout\ & (\irRec|Mux0~4_combout\ & (\irRec|Mux3~5_combout\ & !\irRec|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux2~5_combout\,
	datab => \irRec|Mux0~4_combout\,
	datac => \irRec|Mux3~5_combout\,
	datad => \irRec|Mux1~5_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X62_Y51_N4
\old_data_2[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_2[3]~0_combout\ = (\analyse_data:counter[0]~q\ & (!\analyse_data:counter[1]~q\)) # (!\analyse_data:counter[0]~q\ & ((\analyse_data:counter[1]~q\ & ((!\analyse_data~0_combout\))) # (!\analyse_data:counter[1]~q\ & (!\Equal0~0_combout\ & 
-- \analyse_data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[0]~q\,
	datab => \analyse_data:counter[1]~q\,
	datac => \Equal0~0_combout\,
	datad => \analyse_data~0_combout\,
	combout => \old_data_2[3]~0_combout\);

-- Location: LCCOMB_X62_Y51_N22
\old_data_2[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_2[3]~1_combout\ = (!\analyse_data:counter[2]~q\ & (\old_data_2[3]~0_combout\ & \A[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[2]~q\,
	datac => \old_data_2[3]~0_combout\,
	datad => \A[0]~12_combout\,
	combout => \old_data_2[3]~1_combout\);

-- Location: FF_X63_Y50_N5
\old_data_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux10~2_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_2(0));

-- Location: LCCOMB_X62_Y50_N4
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\analyse_data~0_combout\ & ((\irRec|Mux3~5_combout\))) # (!\analyse_data~0_combout\ & (old_data_2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(0),
	datac => \irRec|Mux3~5_combout\,
	datad => \analyse_data~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X62_Y51_N6
\old_data_3[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_3[3]~0_combout\ = (!\analyse_data:counter[0]~q\ & (\analyse_data:counter[1]~q\ & (!\analyse_data:counter[2]~q\ & \A[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[0]~q\,
	datab => \analyse_data:counter[1]~q\,
	datac => \analyse_data:counter[2]~q\,
	datad => \A[0]~12_combout\,
	combout => \old_data_3[3]~0_combout\);

-- Location: FF_X62_Y50_N5
\old_data_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux14~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_3(0));

-- Location: LCCOMB_X63_Y50_N22
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\irRec|Mux2~5_combout\ & !\analyse_data:counter[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|Mux2~5_combout\,
	datad => \analyse_data:counter[1]~q\,
	combout => \Mux9~0_combout\);

-- Location: FF_X63_Y50_N23
\old_data_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_2(1));

-- Location: LCCOMB_X65_Y50_N18
\irRec|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux2~2_combout\ = (\irRec|data_reg\(16) & !\irRec|data_reg\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|data_reg\(16),
	datad => \irRec|data_reg\(22),
	combout => \irRec|Mux2~2_combout\);

-- Location: LCCOMB_X63_Y50_N2
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\analyse_data:counter[1]~q\ & (((\irRec|Mux1~4_combout\) # (!\irRec|Mux2~2_combout\)) # (!\irRec|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux1~2_combout\,
	datab => \irRec|Mux2~2_combout\,
	datac => \irRec|Mux1~4_combout\,
	datad => \analyse_data:counter[1]~q\,
	combout => \Mux8~0_combout\);

-- Location: FF_X63_Y50_N3
\old_data_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_2(2));

-- Location: LCCOMB_X63_Y50_N24
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\analyse_data:counter[1]~q\ & ((\irRec|Mux0~0_combout\) # ((\irRec|Mux0~1_combout\) # (\irRec|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[1]~q\,
	datab => \irRec|Mux0~0_combout\,
	datac => \irRec|Mux0~1_combout\,
	datad => \irRec|Mux0~3_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X63_Y50_N25
\old_data_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_2(3));

-- Location: LCCOMB_X63_Y50_N26
\Add4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~3_combout\ = (old_data_2(2) & ((old_data_2(1) & ((old_data_2(0)) # (old_data_2(3)))) # (!old_data_2(1) & (old_data_2(0) & old_data_2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(1),
	datab => old_data_2(2),
	datac => old_data_2(0),
	datad => old_data_2(3),
	combout => \Add4~3_combout\);

-- Location: LCCOMB_X63_Y50_N28
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (old_data_2(1) & ((old_data_2(3)) # ((old_data_2(2) & old_data_2(0))))) # (!old_data_2(1) & (old_data_2(2) & (old_data_2(0) & old_data_2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(1),
	datab => old_data_2(2),
	datac => old_data_2(0),
	datad => old_data_2(3),
	combout => \Add4~2_combout\);

-- Location: LCCOMB_X63_Y50_N6
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = old_data_2(1) $ (old_data_2(3) $ (((old_data_2(2) & old_data_2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(1),
	datab => old_data_2(2),
	datac => old_data_2(0),
	datad => old_data_2(3),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X62_Y50_N6
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\irRec|Mux0~4_combout\ & (((old_data_2(3)) # (!\irRec|Mux2~5_combout\)) # (!\irRec|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux1~5_combout\,
	datab => \irRec|Mux0~4_combout\,
	datac => \irRec|Mux2~5_combout\,
	datad => old_data_2(3),
	combout => \Mux11~0_combout\);

-- Location: FF_X63_Y50_N11
\old_data_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux11~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \old_data_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_3(3));

-- Location: LCCOMB_X63_Y50_N0
\Add4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = old_data_2(0) $ (old_data_2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => old_data_2(0),
	datad => old_data_2(2),
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X63_Y50_N30
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ((\irRec|Mux0~4_combout\ & (old_data_2(2) & \irRec|Mux2~5_combout\))) # (!\irRec|Mux1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux0~4_combout\,
	datab => old_data_2(2),
	datac => \irRec|Mux2~5_combout\,
	datad => \irRec|Mux1~5_combout\,
	combout => \Mux12~0_combout\);

-- Location: FF_X63_Y50_N31
\old_data_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux12~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_3(2));

-- Location: LCCOMB_X62_Y50_N16
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\irRec|Mux2~5_combout\ & (((old_data_2(1)) # (!\irRec|Mux0~4_combout\)) # (!\irRec|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux1~5_combout\,
	datab => old_data_2(1),
	datac => \irRec|Mux2~5_combout\,
	datad => \irRec|Mux0~4_combout\,
	combout => \Mux13~0_combout\);

-- Location: FF_X63_Y50_N1
\old_data_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux13~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \old_data_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_3(1));

-- Location: LCCOMB_X63_Y50_N8
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (old_data_3(1) & (old_data_2(0) $ (VCC))) # (!old_data_3(1) & (old_data_2(0) & VCC))
-- \Add5~1\ = CARRY((old_data_3(1) & old_data_2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_3(1),
	datab => old_data_2(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X63_Y50_N10
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (old_data_3(2) & ((old_data_2(1) & (\Add5~1\ & VCC)) # (!old_data_2(1) & (!\Add5~1\)))) # (!old_data_3(2) & ((old_data_2(1) & (!\Add5~1\)) # (!old_data_2(1) & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((old_data_3(2) & (!old_data_2(1) & !\Add5~1\)) # (!old_data_3(2) & ((!\Add5~1\) # (!old_data_2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => old_data_3(2),
	datab => old_data_2(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X63_Y50_N12
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((old_data_3(3) $ (\Add4~1_combout\ $ (!\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((old_data_3(3) & ((\Add4~1_combout\) # (!\Add5~3\))) # (!old_data_3(3) & (\Add4~1_combout\ & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => old_data_3(3),
	datab => \Add4~1_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X63_Y50_N14
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\Add4~0_combout\ & (!\Add5~5\)) # (!\Add4~0_combout\ & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!\Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X63_Y50_N16
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\Add5~7\ & ((old_data_2(2) $ (\Add4~2_combout\)))) # (!\Add5~7\ & (old_data_2(2) $ (\Add4~2_combout\ $ (VCC))))
-- \Add5~9\ = CARRY((!\Add5~7\ & (old_data_2(2) $ (\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(2),
	datab => \Add4~2_combout\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X63_Y50_N18
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\Add5~9\ & (\Add4~3_combout\ $ ((!old_data_2(3))))) # (!\Add5~9\ & ((\Add4~3_combout\ $ (old_data_2(3))) # (GND)))
-- \Add5~11\ = CARRY((\Add4~3_combout\ $ (!old_data_2(3))) # (!\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~3_combout\,
	datab => old_data_2(3),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: LCCOMB_X62_Y50_N26
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (((\irRec|Mux3~5_combout\) # (!\irRec|Mux2~5_combout\)) # (!\irRec|Mux0~4_combout\)) # (!\irRec|Mux1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux1~5_combout\,
	datab => \irRec|Mux0~4_combout\,
	datac => \irRec|Mux2~5_combout\,
	datad => \irRec|Mux3~5_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X62_Y51_N8
\old_data_1[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_1[3]~0_combout\ = (!\analyse_data:counter[0]~q\ & (!\analyse_data:counter[1]~q\ & (!\analyse_data:counter[2]~q\ & \A[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[0]~q\,
	datab => \analyse_data:counter[1]~q\,
	datac => \analyse_data:counter[2]~q\,
	datad => \A[0]~12_combout\,
	combout => \old_data_1[3]~0_combout\);

-- Location: FF_X62_Y50_N27
\old_data_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_1(0));

-- Location: LCCOMB_X62_Y50_N20
\old_data_1[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_1[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \old_data_1[3]~feeder_combout\);

-- Location: FF_X62_Y50_N21
\old_data_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \old_data_1[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_1(3));

-- Location: LCCOMB_X66_Y50_N26
\A[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[3]~2_combout\ = ((old_data_1(0)) # (!old_data_1(3))) # (!\mode~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~input_o\,
	datac => old_data_1(0),
	datad => old_data_1(3),
	combout => \A[3]~2_combout\);

-- Location: LCCOMB_X63_Y50_N20
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = \Add5~11\ $ (((!\Add4~3_combout\) # (!old_data_2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(3),
	datad => \Add4~3_combout\,
	cin => \Add5~11\,
	combout => \Add5~12_combout\);

-- Location: LCCOMB_X65_Y50_N6
\A[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[3]~3_combout\ = (\Add5~8_combout\) # ((\Add5~6_combout\) # ((\mode~input_o\ & \Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \Add5~4_combout\,
	datac => \Add5~8_combout\,
	datad => \Add5~6_combout\,
	combout => \A[3]~3_combout\);

-- Location: LCCOMB_X65_Y50_N20
\A[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[3]~4_combout\ = (\A[3]~2_combout\ & ((\Add5~10_combout\) # ((\Add5~12_combout\) # (\A[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \A[3]~2_combout\,
	datac => \Add5~12_combout\,
	datad => \A[3]~3_combout\,
	combout => \A[3]~4_combout\);

-- Location: LCCOMB_X64_Y50_N0
\Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY(!old_data_3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_3(0),
	datad => VCC,
	cout => \Add2~1_cout\);

-- Location: LCCOMB_X64_Y50_N2
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add5~0_combout\ & ((\Add2~1_cout\) # (GND))) # (!\Add5~0_combout\ & (!\Add2~1_cout\))
-- \Add2~3\ = CARRY((\Add5~0_combout\) # (!\Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datad => VCC,
	cin => \Add2~1_cout\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X64_Y50_N4
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Add5~2_combout\ & (!\Add2~3\ & VCC)) # (!\Add5~2_combout\ & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((!\Add5~2_combout\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X64_Y50_N6
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add5~4_combout\ & ((\Add2~5\) # (GND))) # (!\Add5~4_combout\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((\Add5~4_combout\) # (!\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X64_Y50_N8
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add5~6_combout\ & (!\Add2~7\ & VCC)) # (!\Add5~6_combout\ & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((!\Add5~6_combout\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X64_Y50_N10
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add5~8_combout\ & ((\Add2~9\) # (GND))) # (!\Add5~8_combout\ & (!\Add2~9\))
-- \Add2~11\ = CARRY((\Add5~8_combout\) # (!\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X64_Y50_N12
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Add5~10_combout\ & (!\Add2~11\ & VCC)) # (!\Add5~10_combout\ & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((!\Add5~10_combout\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~10_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X64_Y50_N14
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add5~12_combout\ & ((\Add2~13\) # (GND))) # (!\Add5~12_combout\ & (!\Add2~13\))
-- \Add2~15\ = CARRY((\Add5~12_combout\) # (!\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~12_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X64_Y50_N16
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = \Add2~15\ $ (GND)
-- \Add2~17\ = CARRY(!\Add2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X64_Y50_N18
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = !\Add2~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~17\,
	combout => \Add2~18_combout\);

-- Location: LCCOMB_X65_Y50_N28
\A[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[3]~13_combout\ = (!old_data_1(0) & (old_data_1(3) & (\mode~input_o\ & !\Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_1(0),
	datab => old_data_1(3),
	datac => \mode~input_o\,
	datad => \Add2~18_combout\,
	combout => \A[3]~13_combout\);

-- Location: LCCOMB_X64_Y50_N24
\A[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[3]~8_combout\ = (\Add2~10_combout\) # ((\Add2~8_combout\) # ((\Add2~6_combout\) # (\Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~8_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~12_combout\,
	combout => \A[3]~8_combout\);

-- Location: LCCOMB_X64_Y50_N26
\A[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[3]~9_combout\ = (\Add2~16_combout\) # ((\Add2~14_combout\) # (\A[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~16_combout\,
	datac => \Add2~14_combout\,
	datad => \A[3]~8_combout\,
	combout => \A[3]~9_combout\);

-- Location: LCCOMB_X64_Y50_N22
\A[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[3]~5_combout\ = (((!\Add2~12_combout\) # (!\Add2~8_combout\)) # (!\Add2~6_combout\)) # (!\Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~12_combout\,
	combout => \A[3]~5_combout\);

-- Location: LCCOMB_X64_Y50_N28
\A[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[3]~6_combout\ = (!\Add2~16_combout\) # (!\Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~14_combout\,
	datad => \Add2~16_combout\,
	combout => \A[3]~6_combout\);

-- Location: LCCOMB_X64_Y50_N30
\A[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[3]~7_combout\ = (!\A[3]~2_combout\ & (\Add2~18_combout\ & ((\A[3]~5_combout\) # (\A[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~2_combout\,
	datab => \Add2~18_combout\,
	datac => \A[3]~5_combout\,
	datad => \A[3]~6_combout\,
	combout => \A[3]~7_combout\);

-- Location: LCCOMB_X66_Y50_N20
\A[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[3]~10_combout\ = (\A[3]~4_combout\) # ((\A[3]~7_combout\) # ((\A[3]~13_combout\ & \A[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~4_combout\,
	datab => \A[3]~13_combout\,
	datac => \A[3]~9_combout\,
	datad => \A[3]~7_combout\,
	combout => \A[3]~10_combout\);

-- Location: LCCOMB_X66_Y50_N24
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (old_data_3(0) & !\A[3]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => old_data_3(0),
	datad => \A[3]~10_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X66_Y50_N22
\A[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[0]~11_combout\ = (\irRec|dt_rdy~q\ & (\analyse_data:counter[2]~q\ & (!\Equal0~0_combout\ & \analyse_data:counter[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|dt_rdy~q\,
	datab => \analyse_data:counter[2]~q\,
	datac => \Equal0~0_combout\,
	datad => \analyse_data:counter[1]~q\,
	combout => \A[0]~11_combout\);

-- Location: FF_X66_Y50_N25
\A[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux30~0_combout\,
	clrn => \reset~input_o\,
	ena => \A[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[0]~reg0_q\);

-- Location: LCCOMB_X66_Y50_N30
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!\A[3]~10_combout\ & ((\A[3]~2_combout\ & (\Add5~0_combout\)) # (!\A[3]~2_combout\ & ((\Add2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \Add2~2_combout\,
	datac => \A[3]~2_combout\,
	datad => \A[3]~10_combout\,
	combout => \Mux29~0_combout\);

-- Location: FF_X66_Y50_N31
\A[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux29~0_combout\,
	clrn => \reset~input_o\,
	ena => \A[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[1]~reg0_q\);

-- Location: LCCOMB_X65_Y50_N24
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (!\A[3]~4_combout\ & ((\A[3]~2_combout\ & (\Add5~2_combout\)) # (!\A[3]~2_combout\ & ((\Add2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \A[3]~2_combout\,
	datac => \Add2~4_combout\,
	datad => \A[3]~4_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X64_Y50_N20
\Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\ & (!\A[3]~7_combout\ & ((!\A[3]~13_combout\) # (!\A[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~9_combout\,
	datab => \Mux28~0_combout\,
	datac => \A[3]~7_combout\,
	datad => \A[3]~13_combout\,
	combout => \Mux28~1_combout\);

-- Location: FF_X64_Y50_N21
\A[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux28~1_combout\,
	clrn => \reset~input_o\,
	ena => \A[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[2]~reg0_q\);

-- Location: LCCOMB_X65_Y50_N26
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\A[3]~4_combout\ & ((\A[3]~2_combout\ & ((\Add5~4_combout\))) # (!\A[3]~2_combout\ & (\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \A[3]~2_combout\,
	datac => \Add5~4_combout\,
	datad => \A[3]~4_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X65_Y50_N12
\Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\ & (!\A[3]~7_combout\ & ((!\A[3]~9_combout\) # (!\A[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \A[3]~13_combout\,
	datac => \A[3]~9_combout\,
	datad => \A[3]~7_combout\,
	combout => \Mux27~1_combout\);

-- Location: FF_X65_Y50_N13
\A[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux27~1_combout\,
	clrn => \reset~input_o\,
	ena => \A[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[3]~reg0_q\);

-- Location: LCCOMB_X65_Y51_N2
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (!\analyse_data:counter[0]~q\ & (((\irRec|data_reg\(22)) # (!\irRec|data_reg\(16))) # (!\irRec|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux3~4_combout\,
	datab => \irRec|data_reg\(16),
	datac => \irRec|data_reg\(22),
	datad => \analyse_data:counter[0]~q\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X62_Y51_N12
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\irRec|Mux2~5_combout\) # (((\irRec|Mux3~5_combout\) # (\irRec|Mux1~5_combout\)) # (!\irRec|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux2~5_combout\,
	datab => \irRec|Mux0~4_combout\,
	datac => \irRec|Mux3~5_combout\,
	datad => \irRec|Mux1~5_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X61_Y51_N24
\old_data_6[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_6[3]~0_combout\ = (\analyse_data:counter[2]~q\ & !\analyse_data:counter[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \analyse_data:counter[2]~q\,
	datad => \analyse_data:counter[1]~q\,
	combout => \old_data_6[3]~0_combout\);

-- Location: LCCOMB_X62_Y51_N18
\old_data_5[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_5[3]~0_combout\ = (\old_data_6[3]~0_combout\ & (\A[0]~12_combout\ & ((!\analyse_data:counter[0]~q\) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \analyse_data:counter[0]~q\,
	datac => \old_data_6[3]~0_combout\,
	datad => \A[0]~12_combout\,
	combout => \old_data_5[3]~0_combout\);

-- Location: FF_X65_Y51_N3
\old_data_5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux22~2_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_5[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_5(0));

-- Location: LCCOMB_X64_Y51_N20
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\irRec|Mux3~5_combout\) # ((!\irRec|Mux2~5_combout\ & (old_data_5(0) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux2~5_combout\,
	datab => old_data_5(0),
	datac => \irRec|Mux3~5_combout\,
	datad => \Equal0~1_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X61_Y51_N6
\old_data_6[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_6[3]~1_combout\ = (\irRec|dt_rdy~q\ & (\old_data_6[3]~0_combout\ & (!\Equal0~0_combout\ & \analyse_data:counter[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|dt_rdy~q\,
	datab => \old_data_6[3]~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \analyse_data:counter[0]~q\,
	combout => \old_data_6[3]~1_combout\);

-- Location: FF_X64_Y51_N21
\old_data_6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux26~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_6(0));

-- Location: LCCOMB_X61_Y51_N28
\old_data_4[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_4[3]~0_combout\ = (!\analyse_data:counter[2]~q\ & (\analyse_data:counter[1]~q\ & (\A[0]~12_combout\ & !\analyse_data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[2]~q\,
	datab => \analyse_data:counter[1]~q\,
	datac => \A[0]~12_combout\,
	datad => \analyse_data~0_combout\,
	combout => \old_data_4[3]~0_combout\);

-- Location: FF_X61_Y51_N19
\old_data_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|Mux3~5_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \old_data_4[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_4(0));

-- Location: LCCOMB_X61_Y51_N16
\old_data_4[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_4[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \old_data_4[3]~feeder_combout\);

-- Location: FF_X61_Y51_N17
\old_data_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \old_data_4[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_4[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_4(3));

-- Location: LCCOMB_X61_Y51_N18
\B[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[1]~0_combout\ = ((old_data_4(0)) # (!old_data_4(3))) # (!\mode~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => old_data_4(0),
	datad => old_data_4(3),
	combout => \B[1]~0_combout\);

-- Location: LCCOMB_X65_Y51_N26
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\analyse_data:counter[0]~q\ & ((\irRec|Mux0~3_combout\) # ((\irRec|Mux0~0_combout\) # (\irRec|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[0]~q\,
	datab => \irRec|Mux0~3_combout\,
	datac => \irRec|Mux0~0_combout\,
	datad => \irRec|Mux0~1_combout\,
	combout => \Mux19~0_combout\);

-- Location: FF_X65_Y51_N27
\old_data_5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux19~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_5[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_5(3));

-- Location: LCCOMB_X65_Y51_N22
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!\analyse_data:counter[0]~q\ & \irRec|Mux2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[0]~q\,
	datad => \irRec|Mux2~5_combout\,
	combout => \Mux21~0_combout\);

-- Location: FF_X65_Y51_N23
\old_data_5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux21~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_5[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_5(1));

-- Location: LCCOMB_X65_Y51_N20
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!\analyse_data:counter[0]~q\ & ((\irRec|Mux1~4_combout\) # ((!\irRec|Mux1~2_combout\) # (!\irRec|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[0]~q\,
	datab => \irRec|Mux1~4_combout\,
	datac => \irRec|Mux2~2_combout\,
	datad => \irRec|Mux1~2_combout\,
	combout => \Mux20~0_combout\);

-- Location: FF_X65_Y51_N21
\old_data_5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux20~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_5[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_5(2));

-- Location: LCCOMB_X65_Y51_N18
\Add6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~3_combout\ = (old_data_5(2) & ((old_data_5(1) & ((old_data_5(3)) # (old_data_5(0)))) # (!old_data_5(1) & (old_data_5(3) & old_data_5(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(1),
	datab => old_data_5(2),
	datac => old_data_5(3),
	datad => old_data_5(0),
	combout => \Add6~3_combout\);

-- Location: LCCOMB_X65_Y51_N30
\Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (old_data_5(1) & ((old_data_5(3)) # ((old_data_5(0) & old_data_5(2))))) # (!old_data_5(1) & (old_data_5(0) & (old_data_5(3) & old_data_5(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(1),
	datab => old_data_5(0),
	datac => old_data_5(3),
	datad => old_data_5(2),
	combout => \Add6~2_combout\);

-- Location: LCCOMB_X65_Y51_N28
\Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = old_data_5(1) $ (old_data_5(3) $ (((old_data_5(0) & old_data_5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(1),
	datab => old_data_5(0),
	datac => old_data_5(3),
	datad => old_data_5(2),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X62_Y51_N26
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Equal3~0_combout\ & (\irRec|Mux0~4_combout\)) # (!\Equal3~0_combout\ & ((old_data_5(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|Mux0~4_combout\,
	datac => old_data_5(3),
	datad => \Equal3~0_combout\,
	combout => \Mux23~0_combout\);

-- Location: FF_X65_Y51_N1
\old_data_6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux23~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \old_data_6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_6(3));

-- Location: LCCOMB_X65_Y51_N0
\Add6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = old_data_5(0) $ (old_data_5(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => old_data_5(0),
	datad => old_data_5(2),
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X64_Y51_N16
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Equal3~0_combout\ & ((!\irRec|Mux1~5_combout\))) # (!\Equal3~0_combout\ & (old_data_5(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(2),
	datac => \Equal3~0_combout\,
	datad => \irRec|Mux1~5_combout\,
	combout => \Mux24~0_combout\);

-- Location: FF_X64_Y51_N17
\old_data_6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux24~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_6(2));

-- Location: LCCOMB_X64_Y51_N14
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\irRec|Mux2~5_combout\) # ((\Equal0~1_combout\ & (!\irRec|Mux3~5_combout\ & old_data_5(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \irRec|Mux3~5_combout\,
	datac => \irRec|Mux2~5_combout\,
	datad => old_data_5(1),
	combout => \Mux25~0_combout\);

-- Location: FF_X64_Y51_N15
\old_data_6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux25~0_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_6(1));

-- Location: LCCOMB_X65_Y51_N4
\Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (old_data_6(1) & (old_data_5(0) $ (VCC))) # (!old_data_6(1) & (old_data_5(0) & VCC))
-- \Add7~1\ = CARRY((old_data_6(1) & old_data_5(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(1),
	datab => old_data_5(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X65_Y51_N6
\Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (old_data_6(2) & ((old_data_5(1) & (\Add7~1\ & VCC)) # (!old_data_5(1) & (!\Add7~1\)))) # (!old_data_6(2) & ((old_data_5(1) & (!\Add7~1\)) # (!old_data_5(1) & ((\Add7~1\) # (GND)))))
-- \Add7~3\ = CARRY((old_data_6(2) & (!old_data_5(1) & !\Add7~1\)) # (!old_data_6(2) & ((!\Add7~1\) # (!old_data_5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(2),
	datab => old_data_5(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X65_Y51_N8
\Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((old_data_6(3) $ (\Add6~1_combout\ $ (!\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((old_data_6(3) & ((\Add6~1_combout\) # (!\Add7~3\))) # (!old_data_6(3) & (\Add6~1_combout\ & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(3),
	datab => \Add6~1_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X65_Y51_N10
\Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add6~0_combout\ & (!\Add7~5\)) # (!\Add6~0_combout\ & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!\Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X65_Y51_N12
\Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\Add7~7\ & ((\Add6~2_combout\ $ (old_data_5(2))))) # (!\Add7~7\ & (\Add6~2_combout\ $ (old_data_5(2) $ (VCC))))
-- \Add7~9\ = CARRY((!\Add7~7\ & (\Add6~2_combout\ $ (old_data_5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => old_data_5(2),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X65_Y51_N14
\Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Add7~9\ & (old_data_5(3) $ ((!\Add6~3_combout\)))) # (!\Add7~9\ & ((old_data_5(3) $ (\Add6~3_combout\)) # (GND)))
-- \Add7~11\ = CARRY((old_data_5(3) $ (!\Add6~3_combout\)) # (!\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(3),
	datab => \Add6~3_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X65_Y51_N16
\Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = \Add7~11\ $ (((!\Add6~3_combout\) # (!old_data_5(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(3),
	datad => \Add6~3_combout\,
	cin => \Add7~11\,
	combout => \Add7~12_combout\);

-- Location: LCCOMB_X65_Y51_N24
\B[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[1]~1_combout\ = (\Add7~6_combout\) # ((\Add7~8_combout\) # ((\mode~input_o\ & \Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \Add7~6_combout\,
	datac => \Add7~4_combout\,
	datad => \Add7~8_combout\,
	combout => \B[1]~1_combout\);

-- Location: LCCOMB_X64_Y51_N26
\B[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[1]~2_combout\ = (\B[1]~0_combout\ & ((\Add7~12_combout\) # ((\Add7~10_combout\) # (\B[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~0_combout\,
	datab => \Add7~12_combout\,
	datac => \Add7~10_combout\,
	datad => \B[1]~1_combout\,
	combout => \B[1]~2_combout\);

-- Location: LCCOMB_X66_Y51_N6
\Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~1_cout\ = CARRY(!old_data_6(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(0),
	datad => VCC,
	cout => \Add3~1_cout\);

-- Location: LCCOMB_X66_Y51_N8
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add7~0_combout\ & ((\Add3~1_cout\) # (GND))) # (!\Add7~0_combout\ & (!\Add3~1_cout\))
-- \Add3~3\ = CARRY((\Add7~0_combout\) # (!\Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~0_combout\,
	datad => VCC,
	cin => \Add3~1_cout\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X66_Y51_N10
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\Add7~2_combout\ & (!\Add3~3\ & VCC)) # (!\Add7~2_combout\ & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((!\Add7~2_combout\ & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~2_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X66_Y51_N12
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Add7~4_combout\ & ((\Add3~5\) # (GND))) # (!\Add7~4_combout\ & (!\Add3~5\))
-- \Add3~7\ = CARRY((\Add7~4_combout\) # (!\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X66_Y51_N14
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Add7~6_combout\ & (!\Add3~7\ & VCC)) # (!\Add7~6_combout\ & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((!\Add7~6_combout\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X66_Y51_N16
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Add7~8_combout\ & ((\Add3~9\) # (GND))) # (!\Add7~8_combout\ & (!\Add3~9\))
-- \Add3~11\ = CARRY((\Add7~8_combout\) # (!\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X66_Y51_N18
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Add7~10_combout\ & (!\Add3~11\ & VCC)) # (!\Add7~10_combout\ & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((!\Add7~10_combout\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X66_Y51_N20
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Add7~12_combout\ & ((\Add3~13\) # (GND))) # (!\Add7~12_combout\ & (!\Add3~13\))
-- \Add3~15\ = CARRY((\Add7~12_combout\) # (!\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X66_Y51_N30
\B[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[1]~4_combout\ = (\Add3~6_combout\ & (\Add3~12_combout\ & (\Add3~8_combout\ & \Add3~14_combout\))) # (!\Add3~6_combout\ & ((\Add3~12_combout\) # ((\Add3~8_combout\) # (\Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~12_combout\,
	datac => \Add3~8_combout\,
	datad => \Add3~14_combout\,
	combout => \B[1]~4_combout\);

-- Location: LCCOMB_X66_Y51_N22
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = \Add3~15\ $ (GND)
-- \Add3~17\ = CARRY(!\Add3~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X66_Y51_N24
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = !\Add3~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add3~17\,
	combout => \Add3~18_combout\);

-- Location: LCCOMB_X66_Y51_N0
\B[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[1]~3_combout\ = (\Add3~8_combout\ & (\Add3~16_combout\ & \Add3~18_combout\)) # (!\Add3~8_combout\ & ((\Add3~16_combout\) # (\Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~8_combout\,
	datac => \Add3~16_combout\,
	datad => \Add3~18_combout\,
	combout => \B[1]~3_combout\);

-- Location: LCCOMB_X66_Y51_N28
\B[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[1]~5_combout\ = (\Add3~6_combout\ & (((!\B[1]~3_combout\) # (!\B[1]~4_combout\)) # (!\Add3~10_combout\))) # (!\Add3~6_combout\ & ((\Add3~10_combout\) # ((\B[1]~4_combout\) # (\B[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~10_combout\,
	datac => \B[1]~4_combout\,
	datad => \B[1]~3_combout\,
	combout => \B[1]~5_combout\);

-- Location: LCCOMB_X66_Y51_N4
\Mux34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (old_data_6(0) & (!\B[1]~2_combout\ & ((\B[1]~0_combout\) # (!\B[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(0),
	datab => \B[1]~0_combout\,
	datac => \B[1]~2_combout\,
	datad => \B[1]~5_combout\,
	combout => \Mux34~2_combout\);

-- Location: FF_X66_Y51_N5
\B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux34~2_combout\,
	clrn => \reset~input_o\,
	ena => \A[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[0]~reg0_q\);

-- Location: LCCOMB_X66_Y51_N2
\B[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[1]~6_combout\ = (\B[1]~2_combout\) # ((!\B[1]~0_combout\ & \B[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~0_combout\,
	datac => \B[1]~2_combout\,
	datad => \B[1]~5_combout\,
	combout => \B[1]~6_combout\);

-- Location: LCCOMB_X67_Y51_N16
\Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (!\B[1]~6_combout\ & ((\B[1]~0_combout\ & ((\Add7~0_combout\))) # (!\B[1]~0_combout\ & (\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add7~0_combout\,
	datac => \B[1]~0_combout\,
	datad => \B[1]~6_combout\,
	combout => \Mux33~0_combout\);

-- Location: FF_X67_Y51_N17
\B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux33~0_combout\,
	clrn => \reset~input_o\,
	ena => \A[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[1]~reg0_q\);

-- Location: LCCOMB_X67_Y51_N18
\Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\B[1]~6_combout\ & ((\B[1]~0_combout\ & ((\Add7~2_combout\))) # (!\B[1]~0_combout\ & (\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add7~2_combout\,
	datac => \B[1]~0_combout\,
	datad => \B[1]~6_combout\,
	combout => \Mux32~0_combout\);

-- Location: FF_X67_Y51_N19
\B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux32~0_combout\,
	clrn => \reset~input_o\,
	ena => \A[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[2]~reg0_q\);

-- Location: LCCOMB_X66_Y51_N26
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!\B[1]~6_combout\ & ((\B[1]~0_combout\ & (\Add7~4_combout\)) # (!\B[1]~0_combout\ & ((\Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Add3~6_combout\,
	datac => \B[1]~0_combout\,
	datad => \B[1]~6_combout\,
	combout => \Mux31~0_combout\);

-- Location: FF_X66_Y51_N27
\B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux31~0_combout\,
	clrn => \reset~input_o\,
	ena => \A[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[3]~reg0_q\);

-- Location: LCCOMB_X67_Y53_N24
\hex05|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex05|Mux6~0_combout\ = (old_data_6(3) & (old_data_6(1) & (!old_data_6(0) & !old_data_6(2)))) # (!old_data_6(3) & (!old_data_6(1) & (old_data_6(0) $ (old_data_6(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(3),
	datab => old_data_6(1),
	datac => old_data_6(0),
	datad => old_data_6(2),
	combout => \hex05|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y53_N10
\hex05|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex05|Mux5~0_combout\ = (old_data_6(3) & (old_data_6(1) & (!old_data_6(0) & !old_data_6(2)))) # (!old_data_6(3) & (old_data_6(2) & (old_data_6(1) $ (old_data_6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(3),
	datab => old_data_6(1),
	datac => old_data_6(0),
	datad => old_data_6(2),
	combout => \hex05|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y53_N12
\hex05|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex05|Mux4~0_combout\ = (old_data_6(1) & (!old_data_6(2) & ((old_data_6(3)) # (!old_data_6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(3),
	datab => old_data_6(1),
	datac => old_data_6(0),
	datad => old_data_6(2),
	combout => \hex05|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y53_N14
\hex05|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex05|Mux3~0_combout\ = (old_data_6(3) & (old_data_6(1) & ((!old_data_6(2))))) # (!old_data_6(3) & ((old_data_6(1) & (old_data_6(0) & old_data_6(2))) # (!old_data_6(1) & (old_data_6(0) $ (old_data_6(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(3),
	datab => old_data_6(1),
	datac => old_data_6(0),
	datad => old_data_6(2),
	combout => \hex05|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y53_N28
\hex05|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex05|Mux2~0_combout\ = (old_data_6(3) & (!old_data_6(2) & (old_data_6(1) $ (old_data_6(0))))) # (!old_data_6(3) & ((old_data_6(0)) # ((!old_data_6(1) & old_data_6(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(3),
	datab => old_data_6(1),
	datac => old_data_6(0),
	datad => old_data_6(2),
	combout => \hex05|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y53_N6
\hex05|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex05|Mux1~0_combout\ = (old_data_6(0) & (!old_data_6(3) & ((old_data_6(1)) # (!old_data_6(2))))) # (!old_data_6(0) & (((old_data_6(1) & !old_data_6(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(3),
	datab => old_data_6(1),
	datac => old_data_6(0),
	datad => old_data_6(2),
	combout => \hex05|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y53_N0
\hex05|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex05|Mux0~0_combout\ = (old_data_6(3)) # ((old_data_6(1) & ((!old_data_6(2)) # (!old_data_6(0)))) # (!old_data_6(1) & ((old_data_6(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_6(3),
	datab => old_data_6(1),
	datac => old_data_6(0),
	datad => old_data_6(2),
	combout => \hex05|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y51_N28
\hex04|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex04|Mux6~0_combout\ = (old_data_5(3) & (old_data_5(1) & (!old_data_5(0) & !old_data_5(2)))) # (!old_data_5(3) & (!old_data_5(1) & (old_data_5(0) $ (old_data_5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(3),
	datab => old_data_5(1),
	datac => old_data_5(0),
	datad => old_data_5(2),
	combout => \hex04|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y51_N6
\hex04|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex04|Mux5~0_combout\ = (old_data_5(3) & (old_data_5(1) & (!old_data_5(0) & !old_data_5(2)))) # (!old_data_5(3) & (old_data_5(2) & (old_data_5(1) $ (old_data_5(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(3),
	datab => old_data_5(1),
	datac => old_data_5(0),
	datad => old_data_5(2),
	combout => \hex04|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y51_N8
\hex04|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex04|Mux4~0_combout\ = (old_data_5(1) & (!old_data_5(2) & ((old_data_5(3)) # (!old_data_5(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(3),
	datab => old_data_5(1),
	datac => old_data_5(0),
	datad => old_data_5(2),
	combout => \hex04|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y51_N22
\hex04|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex04|Mux3~0_combout\ = (old_data_5(3) & (old_data_5(1) & ((!old_data_5(2))))) # (!old_data_5(3) & ((old_data_5(1) & (old_data_5(0) & old_data_5(2))) # (!old_data_5(1) & (old_data_5(0) $ (old_data_5(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(3),
	datab => old_data_5(1),
	datac => old_data_5(0),
	datad => old_data_5(2),
	combout => \hex04|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y51_N0
\hex04|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex04|Mux2~0_combout\ = (old_data_5(3) & (!old_data_5(2) & (old_data_5(1) $ (old_data_5(0))))) # (!old_data_5(3) & ((old_data_5(0)) # ((!old_data_5(1) & old_data_5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(3),
	datab => old_data_5(1),
	datac => old_data_5(0),
	datad => old_data_5(2),
	combout => \hex04|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y51_N26
\hex04|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex04|Mux1~0_combout\ = (old_data_5(0) & (!old_data_5(3) & ((old_data_5(1)) # (!old_data_5(2))))) # (!old_data_5(0) & (((old_data_5(1) & !old_data_5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(3),
	datab => old_data_5(1),
	datac => old_data_5(0),
	datad => old_data_5(2),
	combout => \hex04|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y51_N4
\hex04|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex04|Mux0~0_combout\ = (old_data_5(3)) # ((old_data_5(1) & ((!old_data_5(2)) # (!old_data_5(0)))) # (!old_data_5(1) & ((old_data_5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_5(3),
	datab => old_data_5(1),
	datac => old_data_5(0),
	datad => old_data_5(2),
	combout => \hex04|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y51_N12
\hex03|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex03|Mux6~0_combout\ = old_data_4(3) $ (old_data_4(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => old_data_4(3),
	datad => old_data_4(0),
	combout => \hex03|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y51_N10
\hex03|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex03|Mux5~0_combout\ = (old_data_4(0)) # (!old_data_4(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => old_data_4(3),
	datad => old_data_4(0),
	combout => \hex03|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y51_N0
\hex03|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex03|Mux3~0_combout\ = (old_data_4(3)) # (old_data_4(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => old_data_4(3),
	datad => old_data_4(0),
	combout => \hex03|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y50_N14
\hex02|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex02|Mux6~0_combout\ = (old_data_3(1) & (!old_data_3(0) & (old_data_3(3) & !old_data_3(2)))) # (!old_data_3(1) & (!old_data_3(3) & (old_data_3(0) $ (old_data_3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_3(0),
	datab => old_data_3(1),
	datac => old_data_3(3),
	datad => old_data_3(2),
	combout => \hex02|Mux6~0_combout\);

-- Location: LCCOMB_X62_Y50_N24
\hex02|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex02|Mux5~0_combout\ = (old_data_3(0) & (!old_data_3(1) & (!old_data_3(3) & old_data_3(2)))) # (!old_data_3(0) & (old_data_3(1) & (old_data_3(3) $ (old_data_3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_3(0),
	datab => old_data_3(1),
	datac => old_data_3(3),
	datad => old_data_3(2),
	combout => \hex02|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y50_N22
\hex02|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex02|Mux4~0_combout\ = (old_data_3(1) & (!old_data_3(2) & ((old_data_3(3)) # (!old_data_3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_3(0),
	datab => old_data_3(1),
	datac => old_data_3(3),
	datad => old_data_3(2),
	combout => \hex02|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y50_N28
\hex02|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex02|Mux3~0_combout\ = (old_data_3(1) & ((old_data_3(3) & ((!old_data_3(2)))) # (!old_data_3(3) & (old_data_3(0) & old_data_3(2))))) # (!old_data_3(1) & (!old_data_3(3) & (old_data_3(0) $ (old_data_3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_3(0),
	datab => old_data_3(1),
	datac => old_data_3(3),
	datad => old_data_3(2),
	combout => \hex02|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y50_N18
\hex02|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex02|Mux2~0_combout\ = (old_data_3(3) & (!old_data_3(2) & (old_data_3(0) $ (old_data_3(1))))) # (!old_data_3(3) & ((old_data_3(0)) # ((!old_data_3(1) & old_data_3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_3(0),
	datab => old_data_3(1),
	datac => old_data_3(3),
	datad => old_data_3(2),
	combout => \hex02|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y50_N12
\hex02|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex02|Mux1~0_combout\ = (old_data_3(0) & (!old_data_3(3) & ((old_data_3(1)) # (!old_data_3(2))))) # (!old_data_3(0) & (old_data_3(1) & ((!old_data_3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_3(0),
	datab => old_data_3(1),
	datac => old_data_3(3),
	datad => old_data_3(2),
	combout => \hex02|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y50_N2
\hex02|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex02|Mux0~0_combout\ = (old_data_3(3)) # ((old_data_3(1) & ((!old_data_3(2)) # (!old_data_3(0)))) # (!old_data_3(1) & ((old_data_3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_3(0),
	datab => old_data_3(1),
	datac => old_data_3(3),
	datad => old_data_3(2),
	combout => \hex02|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y42_N24
\hex01|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex01|Mux6~0_combout\ = (old_data_2(3) & (!old_data_2(2) & (!old_data_2(0) & old_data_2(1)))) # (!old_data_2(3) & (!old_data_2(1) & (old_data_2(2) $ (old_data_2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(3),
	datab => old_data_2(2),
	datac => old_data_2(0),
	datad => old_data_2(1),
	combout => \hex01|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y42_N6
\hex01|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex01|Mux5~0_combout\ = (old_data_2(3) & (!old_data_2(2) & (!old_data_2(0) & old_data_2(1)))) # (!old_data_2(3) & (old_data_2(2) & (old_data_2(0) $ (old_data_2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(3),
	datab => old_data_2(2),
	datac => old_data_2(0),
	datad => old_data_2(1),
	combout => \hex01|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y42_N20
\hex01|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex01|Mux4~0_combout\ = (!old_data_2(2) & (old_data_2(1) & ((old_data_2(3)) # (!old_data_2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(3),
	datab => old_data_2(2),
	datac => old_data_2(0),
	datad => old_data_2(1),
	combout => \hex01|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y42_N10
\hex01|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex01|Mux3~0_combout\ = (old_data_2(3) & (!old_data_2(2) & ((old_data_2(1))))) # (!old_data_2(3) & ((old_data_2(2) & (old_data_2(0) $ (!old_data_2(1)))) # (!old_data_2(2) & (old_data_2(0) & !old_data_2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(3),
	datab => old_data_2(2),
	datac => old_data_2(0),
	datad => old_data_2(1),
	combout => \hex01|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y42_N4
\hex01|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex01|Mux2~0_combout\ = (old_data_2(3) & (!old_data_2(2) & (old_data_2(0) $ (old_data_2(1))))) # (!old_data_2(3) & ((old_data_2(0)) # ((old_data_2(2) & !old_data_2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(3),
	datab => old_data_2(2),
	datac => old_data_2(0),
	datad => old_data_2(1),
	combout => \hex01|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y42_N18
\hex01|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex01|Mux1~0_combout\ = (old_data_2(0) & (!old_data_2(3) & ((old_data_2(1)) # (!old_data_2(2))))) # (!old_data_2(0) & (((!old_data_2(2) & old_data_2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(3),
	datab => old_data_2(2),
	datac => old_data_2(0),
	datad => old_data_2(1),
	combout => \hex01|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y42_N12
\hex01|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex01|Mux0~0_combout\ = (old_data_2(3)) # ((old_data_2(2) & ((!old_data_2(1)) # (!old_data_2(0)))) # (!old_data_2(2) & ((old_data_2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => old_data_2(3),
	datab => old_data_2(2),
	datac => old_data_2(0),
	datad => old_data_2(1),
	combout => \hex01|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y50_N16
\hex00|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex00|Mux6~0_combout\ = old_data_1(3) $ (old_data_1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => old_data_1(3),
	datac => old_data_1(0),
	combout => \hex00|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y50_N18
\hex00|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex00|Mux5~0_combout\ = (old_data_1(0)) # (!old_data_1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => old_data_1(3),
	datac => old_data_1(0),
	combout => \hex00|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y50_N28
\hex00|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex00|Mux3~0_combout\ = (old_data_1(3)) # (old_data_1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => old_data_1(3),
	datac => old_data_1(0),
	combout => \hex00|Mux3~0_combout\);

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

ww_A(0) <= \A[0]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_rd_data <= \rd_data~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


