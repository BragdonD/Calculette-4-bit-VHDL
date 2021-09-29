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

-- DATE "09/29/2021 17:21:07"

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

ENTITY 	top_entity IS
    PORT (
	A : OUT std_logic_vector(3 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0);
	rd_data : OUT std_logic;
	clk50 : IN std_logic;
	data_in : IN std_logic;
	reset : IN std_logic;
	mode : IN std_logic;
	operation : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	CLA : IN std_logic;
	opeACLA : OUT std_logic_vector(3 DOWNTO 0);
	opeBCLA : OUT std_logic_vector(3 DOWNTO 0);
	resCLA : IN std_logic_vector(3 DOWNTO 0);
	coutCLA : IN std_logic;
	cinCLA : OUT std_logic;
	vga_vs : OUT std_logic;
	vga_hs : OUT std_logic;
	vga_r : OUT std_logic_vector(3 DOWNTO 0);
	vga_g : OUT std_logic_vector(3 DOWNTO 0);
	vga_b : OUT std_logic_vector(3 DOWNTO 0)
	);
END top_entity;

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
-- opeACLA[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeACLA[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeACLA[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeACLA[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeBCLA[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeBCLA[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeBCLA[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeBCLA[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resCLA[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resCLA[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resCLA[2]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resCLA[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coutCLA	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cinCLA	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_vs	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_hs	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLA	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_entity IS
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
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_operation : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLA : std_logic;
SIGNAL ww_opeACLA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_opeBCLA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_resCLA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_coutCLA : std_logic;
SIGNAL ww_cinCLA : std_logic;
SIGNAL ww_vga_vs : std_logic;
SIGNAL ww_vga_hs : std_logic;
SIGNAL ww_vga_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \calculette|hdmi_out0|clk_25~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \resCLA[0]~input_o\ : std_logic;
SIGNAL \resCLA[1]~input_o\ : std_logic;
SIGNAL \resCLA[2]~input_o\ : std_logic;
SIGNAL \resCLA[3]~input_o\ : std_logic;
SIGNAL \coutCLA~input_o\ : std_logic;
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
SIGNAL \opeACLA[0]~output_o\ : std_logic;
SIGNAL \opeACLA[1]~output_o\ : std_logic;
SIGNAL \opeACLA[2]~output_o\ : std_logic;
SIGNAL \opeACLA[3]~output_o\ : std_logic;
SIGNAL \opeBCLA[0]~output_o\ : std_logic;
SIGNAL \opeBCLA[1]~output_o\ : std_logic;
SIGNAL \opeBCLA[2]~output_o\ : std_logic;
SIGNAL \opeBCLA[3]~output_o\ : std_logic;
SIGNAL \cinCLA~output_o\ : std_logic;
SIGNAL \vga_vs~output_o\ : std_logic;
SIGNAL \vga_hs~output_o\ : std_logic;
SIGNAL \vga_r[0]~output_o\ : std_logic;
SIGNAL \vga_r[1]~output_o\ : std_logic;
SIGNAL \vga_r[2]~output_o\ : std_logic;
SIGNAL \vga_r[3]~output_o\ : std_logic;
SIGNAL \vga_g[0]~output_o\ : std_logic;
SIGNAL \vga_g[1]~output_o\ : std_logic;
SIGNAL \vga_g[2]~output_o\ : std_logic;
SIGNAL \vga_g[3]~output_o\ : std_logic;
SIGNAL \vga_b[0]~output_o\ : std_logic;
SIGNAL \vga_b[1]~output_o\ : std_logic;
SIGNAL \vga_b[2]~output_o\ : std_logic;
SIGNAL \vga_b[3]~output_o\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \IR|irRec|clock_counter[0]~17_combout\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \IR|irRec|data~0_combout\ : std_logic;
SIGNAL \IR|irRec|data~q\ : std_logic;
SIGNAL \IR|irRec|data_follow~0_combout\ : std_logic;
SIGNAL \IR|irRec|data_follow~q\ : std_logic;
SIGNAL \IR|irRec|state~12_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~0_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~3\ : std_logic;
SIGNAL \IR|irRec|Add3~4_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[2]~4_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~5\ : std_logic;
SIGNAL \IR|irRec|Add3~6_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[3]~2_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~7\ : std_logic;
SIGNAL \IR|irRec|Add3~8_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[4]~1_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~9\ : std_logic;
SIGNAL \IR|irRec|Add3~10_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[5]~3_combout\ : std_logic;
SIGNAL \IR|irRec|Equal5~0_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~11\ : std_logic;
SIGNAL \IR|irRec|Add3~12_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[6]~31_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~13\ : std_logic;
SIGNAL \IR|irRec|Add3~14_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[7]~30_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~15\ : std_logic;
SIGNAL \IR|irRec|Add3~16_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[8]~29_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~17\ : std_logic;
SIGNAL \IR|irRec|Add3~18_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[9]~28_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~19\ : std_logic;
SIGNAL \IR|irRec|Add3~20_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[10]~27_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~21\ : std_logic;
SIGNAL \IR|irRec|Add3~22_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[11]~26_combout\ : std_logic;
SIGNAL \IR|irRec|Equal4~6_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~23\ : std_logic;
SIGNAL \IR|irRec|Add3~24_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[12]~25_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~25\ : std_logic;
SIGNAL \IR|irRec|Add3~26_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[13]~24_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~27\ : std_logic;
SIGNAL \IR|irRec|Add3~28_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[14]~23_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~29\ : std_logic;
SIGNAL \IR|irRec|Add3~30_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[15]~22_combout\ : std_logic;
SIGNAL \IR|irRec|Equal4~5_combout\ : std_logic;
SIGNAL \IR|irRec|Equal4~7_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~31\ : std_logic;
SIGNAL \IR|irRec|Add3~32_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[16]~21_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~33\ : std_logic;
SIGNAL \IR|irRec|Add3~34_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[17]~20_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~35\ : std_logic;
SIGNAL \IR|irRec|Add3~36_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[18]~19_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~37\ : std_logic;
SIGNAL \IR|irRec|Add3~38_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[19]~18_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~39\ : std_logic;
SIGNAL \IR|irRec|Add3~40_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[20]~17_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~41\ : std_logic;
SIGNAL \IR|irRec|Add3~42_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[21]~16_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~43\ : std_logic;
SIGNAL \IR|irRec|Add3~44_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[22]~15_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~45\ : std_logic;
SIGNAL \IR|irRec|Add3~46_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[23]~14_combout\ : std_logic;
SIGNAL \IR|irRec|Equal4~2_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~47\ : std_logic;
SIGNAL \IR|irRec|Add3~48_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[24]~13_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~49\ : std_logic;
SIGNAL \IR|irRec|Add3~50_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[25]~12_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~51\ : std_logic;
SIGNAL \IR|irRec|Add3~52_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[26]~11_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~53\ : std_logic;
SIGNAL \IR|irRec|Add3~54_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[27]~10_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~55\ : std_logic;
SIGNAL \IR|irRec|Add3~56_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[28]~9_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~57\ : std_logic;
SIGNAL \IR|irRec|Add3~58_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[29]~8_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~59\ : std_logic;
SIGNAL \IR|irRec|Add3~60_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[30]~7_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~61\ : std_logic;
SIGNAL \IR|irRec|Add3~62_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[31]~6_combout\ : std_logic;
SIGNAL \IR|irRec|Equal4~0_combout\ : std_logic;
SIGNAL \IR|irRec|Equal4~3_combout\ : std_logic;
SIGNAL \IR|irRec|Equal4~1_combout\ : std_logic;
SIGNAL \IR|irRec|Equal4~4_combout\ : std_logic;
SIGNAL \IR|irRec|Equal4~8_combout\ : std_logic;
SIGNAL \IR|irRec|Equal5~1_combout\ : std_logic;
SIGNAL \IR|irRec|data_reg[19]~1_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[0]~0_combout\ : std_logic;
SIGNAL \IR|irRec|Add3~1\ : std_logic;
SIGNAL \IR|irRec|Add3~2_combout\ : std_logic;
SIGNAL \IR|irRec|data_counter[1]~5_combout\ : std_logic;
SIGNAL \IR|irRec|Equal4~9_combout\ : std_logic;
SIGNAL \IR|irRec|Equal4~10_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[0]~19_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[14]~48\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[15]~50_combout\ : std_logic;
SIGNAL \IR|irRec|Equal0~4_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[15]~51\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[16]~52_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[16]~53\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[17]~54_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[17]~55\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[18]~56_combout\ : std_logic;
SIGNAL \IR|irRec|Equal0~5_combout\ : std_logic;
SIGNAL \IR|irRec|Equal0~0_combout\ : std_logic;
SIGNAL \IR|irRec|Equal0~1_combout\ : std_logic;
SIGNAL \IR|irRec|Equal0~2_combout\ : std_logic;
SIGNAL \IR|irRec|Equal0~3_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[14]~49_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[0]~20\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[1]~21_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[1]~22\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[2]~23_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[2]~24\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[3]~25_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[3]~26\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[4]~27_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[4]~28\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[5]~29_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[5]~30\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[6]~31_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[6]~32\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[7]~33_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[7]~34\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[8]~35_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[8]~36\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[9]~37_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[9]~38\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[10]~39_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[10]~40\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[11]~41_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[11]~42\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[12]~43_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[12]~44\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[13]~45_combout\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[13]~46\ : std_logic;
SIGNAL \IR|irRec|LC_on_counter[14]~47_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~9_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~8_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~11_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~12_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~13_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~10_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~14_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~15_combout\ : std_logic;
SIGNAL \IR|irRec|state~13_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[0]~18_combout\ : std_logic;
SIGNAL \IR|irRec|Equal1~5_combout\ : std_logic;
SIGNAL \IR|irRec|Equal1~0_combout\ : std_logic;
SIGNAL \IR|irRec|Equal1~3_combout\ : std_logic;
SIGNAL \IR|irRec|Equal1~1_combout\ : std_logic;
SIGNAL \IR|irRec|Equal1~2_combout\ : std_logic;
SIGNAL \IR|irRec|Equal1~4_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[8]~46_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[8]~47_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[0]~19\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[1]~20_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[1]~21\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[2]~22_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[2]~23\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[3]~24_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[3]~25\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[4]~26_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[4]~27\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[5]~28_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[5]~29\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[6]~30_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[6]~31\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[7]~32_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[7]~33\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[8]~34_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[8]~35\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[9]~36_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[9]~37\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[10]~38_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[10]~39\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[11]~40_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[11]~41\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[12]~42_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[12]~43\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[13]~44_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[13]~45\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[14]~48_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[14]~49\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[15]~50_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[15]~51\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[16]~52_combout\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[16]~53\ : std_logic;
SIGNAL \IR|irRec|LC_off_counter[17]~54_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~2_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~3_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~16_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~4_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~5_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~6_combout\ : std_logic;
SIGNAL \IR|irRec|nxt_state_proc~7_combout\ : std_logic;
SIGNAL \IR|irRec|state~14_combout\ : std_logic;
SIGNAL \IR|irRec|state.init~q\ : std_logic;
SIGNAL \IR|irRec|Selector1~0_combout\ : std_logic;
SIGNAL \IR|irRec|state.read_LC_on~q\ : std_logic;
SIGNAL \IR|irRec|state~11_combout\ : std_logic;
SIGNAL \IR|irRec|state.check_LC_on_count~q\ : std_logic;
SIGNAL \IR|irRec|Selector2~0_combout\ : std_logic;
SIGNAL \IR|irRec|state.read_LC_off~q\ : std_logic;
SIGNAL \IR|irRec|state~10_combout\ : std_logic;
SIGNAL \IR|irRec|state.check_LC_off_count~q\ : std_logic;
SIGNAL \IR|irRec|Selector3~0_combout\ : std_logic;
SIGNAL \IR|irRec|Selector3~1_combout\ : std_logic;
SIGNAL \IR|irRec|state.read_data~q\ : std_logic;
SIGNAL \IR|irRec|state~9_combout\ : std_logic;
SIGNAL \IR|irRec|state.check_data~q\ : std_logic;
SIGNAL \IR|irRec|Equal2~3_combout\ : std_logic;
SIGNAL \IR|irRec|Equal2~4_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[13]~44\ : std_logic;
SIGNAL \IR|irRec|clock_counter[14]~45_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[14]~46\ : std_logic;
SIGNAL \IR|irRec|clock_counter[15]~47_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[15]~48\ : std_logic;
SIGNAL \IR|irRec|clock_counter[16]~49_combout\ : std_logic;
SIGNAL \IR|irRec|Equal2~2_combout\ : std_logic;
SIGNAL \IR|irRec|Equal2~1_combout\ : std_logic;
SIGNAL \IR|irRec|Equal2~0_combout\ : std_logic;
SIGNAL \IR|irRec|Equal2~5_combout\ : std_logic;
SIGNAL \IR|irRec|Equal2~6_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[8]~51_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[0]~18\ : std_logic;
SIGNAL \IR|irRec|clock_counter[1]~19_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[1]~20\ : std_logic;
SIGNAL \IR|irRec|clock_counter[2]~21_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[2]~22\ : std_logic;
SIGNAL \IR|irRec|clock_counter[3]~23_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[3]~24\ : std_logic;
SIGNAL \IR|irRec|clock_counter[4]~25_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[4]~26\ : std_logic;
SIGNAL \IR|irRec|clock_counter[5]~27_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[5]~28\ : std_logic;
SIGNAL \IR|irRec|clock_counter[6]~29_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[6]~30\ : std_logic;
SIGNAL \IR|irRec|clock_counter[7]~31_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[7]~32\ : std_logic;
SIGNAL \IR|irRec|clock_counter[8]~33_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[8]~34\ : std_logic;
SIGNAL \IR|irRec|clock_counter[9]~35_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[9]~36\ : std_logic;
SIGNAL \IR|irRec|clock_counter[10]~37_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[10]~38\ : std_logic;
SIGNAL \IR|irRec|clock_counter[11]~39_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[11]~40\ : std_logic;
SIGNAL \IR|irRec|clock_counter[12]~41_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter[12]~42\ : std_logic;
SIGNAL \IR|irRec|clock_counter[13]~43_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit_proc~0_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit_proc~1_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit_proc~2_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit_proc~3_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit_proc~4_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit_proc~5_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit_proc~6_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit_proc~7_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit_proc~8_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit~8_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit~2_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit~3_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit~4_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit~5_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit~0_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit~1_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit~6_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit~7_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit~9_combout\ : std_logic;
SIGNAL \IR|irRec|data_bit~q\ : std_logic;
SIGNAL \IR|irRec|shift_reg~7_combout\ : std_logic;
SIGNAL \IR|irRec|shift_proc~1_combout\ : std_logic;
SIGNAL \IR|irRec|shift_proc~0_combout\ : std_logic;
SIGNAL \IR|irRec|shift_proc~2_combout\ : std_logic;
SIGNAL \IR|irRec|shift_reg[29]~0_combout\ : std_logic;
SIGNAL \IR|irRec|shift_reg~6_combout\ : std_logic;
SIGNAL \IR|irRec|shift_reg~5_combout\ : std_logic;
SIGNAL \IR|irRec|shift_reg~4_combout\ : std_logic;
SIGNAL \IR|irRec|shift_reg~3_combout\ : std_logic;
SIGNAL \IR|irRec|shift_reg~2_combout\ : std_logic;
SIGNAL \IR|irRec|shift_reg~1_combout\ : std_logic;
SIGNAL \IR|irRec|data_reg~5_combout\ : std_logic;
SIGNAL \IR|irRec|data_reg~2_combout\ : std_logic;
SIGNAL \IR|irRec|data_reg~4_combout\ : std_logic;
SIGNAL \IR|irRec|data_reg~6_combout\ : std_logic;
SIGNAL \IR|irRec|data_reg~8_combout\ : std_logic;
SIGNAL \IR|irRec|data_reg~7_combout\ : std_logic;
SIGNAL \IR|irRec|Mux1~2_combout\ : std_logic;
SIGNAL \IR|irRec|data_reg~3_combout\ : std_logic;
SIGNAL \IR|irRec|Mux1~3_combout\ : std_logic;
SIGNAL \IR|irRec|Mux1~4_combout\ : std_logic;
SIGNAL \IR|irRec|data_reg~0_combout\ : std_logic;
SIGNAL \IR|irRec|Mux1~5_combout\ : std_logic;
SIGNAL \IR|irRec|Mux1~6_combout\ : std_logic;
SIGNAL \IR|irRec|Mux1~7_combout\ : std_logic;
SIGNAL \IR|irRec|Mux0~1_combout\ : std_logic;
SIGNAL \IR|irRec|Mux0~2_combout\ : std_logic;
SIGNAL \IR|irRec|Mux0~0_combout\ : std_logic;
SIGNAL \IR|irRec|Mux0~3_combout\ : std_logic;
SIGNAL \IR|irRec|Mux2~2_combout\ : std_logic;
SIGNAL \IR|irRec|Mux2~3_combout\ : std_logic;
SIGNAL \IR|irRec|Mux2~5_combout\ : std_logic;
SIGNAL \IR|irRec|Mux2~4_combout\ : std_logic;
SIGNAL \IR|analyse_data~6_combout\ : std_logic;
SIGNAL \IR|irRec|Mux3~2_combout\ : std_logic;
SIGNAL \IR|irRec|Mux3~3_combout\ : std_logic;
SIGNAL \IR|irRec|Mux3~4_combout\ : std_logic;
SIGNAL \IR|Equal0~0_combout\ : std_logic;
SIGNAL \IR|irRec|dt_rdy~q\ : std_logic;
SIGNAL \IR|irRec|Mux3~5_combout\ : std_logic;
SIGNAL \IR|A[0]~1_combout\ : std_logic;
SIGNAL \IR|analyse_data:counter[2]~0_combout\ : std_logic;
SIGNAL \IR|analyse_data:counter[2]~q\ : std_logic;
SIGNAL \IR|Mux6~0_combout\ : std_logic;
SIGNAL \IR|analyse_data:counter[0]~q\ : std_logic;
SIGNAL \IR|Mux5~0_combout\ : std_logic;
SIGNAL \IR|analyse_data:counter[1]~q\ : std_logic;
SIGNAL \IR|Mux10~2_combout\ : std_logic;
SIGNAL \IR|old_data_2[3]~0_combout\ : std_logic;
SIGNAL \IR|old_data_2[3]~1_combout\ : std_logic;
SIGNAL \IR|old_data_2[3]~2_combout\ : std_logic;
SIGNAL \IR|Mux14~0_combout\ : std_logic;
SIGNAL \IR|old_data_3[3]~0_combout\ : std_logic;
SIGNAL \IR|Mux3~2_combout\ : std_logic;
SIGNAL \IR|old_data_1[3]~0_combout\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \IR|old_data_1[3]~feeder_combout\ : std_logic;
SIGNAL \IR|A[1]~0_combout\ : std_logic;
SIGNAL \IR|Mux7~0_combout\ : std_logic;
SIGNAL \IR|Mux11~0_combout\ : std_logic;
SIGNAL \IR|Mux8~0_combout\ : std_logic;
SIGNAL \IR|Add4~0_combout\ : std_logic;
SIGNAL \IR|Mux12~0_combout\ : std_logic;
SIGNAL \IR|Mux9~0_combout\ : std_logic;
SIGNAL \IR|Mux13~0_combout\ : std_logic;
SIGNAL \IR|Add5~1\ : std_logic;
SIGNAL \IR|Add5~3\ : std_logic;
SIGNAL \IR|Add5~4_combout\ : std_logic;
SIGNAL \IR|Mux30~0_combout\ : std_logic;
SIGNAL \IR|Add4~2_combout\ : std_logic;
SIGNAL \IR|Add4~3_combout\ : std_logic;
SIGNAL \IR|Add4~1_combout\ : std_logic;
SIGNAL \IR|Add5~5\ : std_logic;
SIGNAL \IR|Add5~7\ : std_logic;
SIGNAL \IR|Add5~9\ : std_logic;
SIGNAL \IR|Add5~10_combout\ : std_logic;
SIGNAL \IR|Add5~8_combout\ : std_logic;
SIGNAL \IR|Add5~11\ : std_logic;
SIGNAL \IR|Add5~12_combout\ : std_logic;
SIGNAL \IR|Add5~6_combout\ : std_logic;
SIGNAL \IR|LessThan2~0_combout\ : std_logic;
SIGNAL \IR|Add5~2_combout\ : std_logic;
SIGNAL \IR|Add5~0_combout\ : std_logic;
SIGNAL \IR|Add2~1_cout\ : std_logic;
SIGNAL \IR|Add2~3\ : std_logic;
SIGNAL \IR|Add2~5\ : std_logic;
SIGNAL \IR|Add2~7\ : std_logic;
SIGNAL \IR|Add2~9\ : std_logic;
SIGNAL \IR|Add2~10_combout\ : std_logic;
SIGNAL \IR|Add2~6_combout\ : std_logic;
SIGNAL \IR|Add2~11\ : std_logic;
SIGNAL \IR|Add2~13\ : std_logic;
SIGNAL \IR|Add2~14_combout\ : std_logic;
SIGNAL \IR|Add2~8_combout\ : std_logic;
SIGNAL \IR|Add2~15\ : std_logic;
SIGNAL \IR|Add2~16_combout\ : std_logic;
SIGNAL \IR|analyse_data~0_combout\ : std_logic;
SIGNAL \IR|Add2~17\ : std_logic;
SIGNAL \IR|Add2~18_combout\ : std_logic;
SIGNAL \IR|Add2~12_combout\ : std_logic;
SIGNAL \IR|analyse_data~1_combout\ : std_logic;
SIGNAL \IR|analyse_data~2_combout\ : std_logic;
SIGNAL \IR|Mux30~1_combout\ : std_logic;
SIGNAL \IR|Mux30~2_combout\ : std_logic;
SIGNAL \IR|A[0]~2_combout\ : std_logic;
SIGNAL \IR|Add2~2_combout\ : std_logic;
SIGNAL \IR|Mux29~0_combout\ : std_logic;
SIGNAL \IR|Add2~4_combout\ : std_logic;
SIGNAL \IR|Mux28~0_combout\ : std_logic;
SIGNAL \IR|Mux27~0_combout\ : std_logic;
SIGNAL \IR|Mux22~2_combout\ : std_logic;
SIGNAL \IR|old_data_5[3]~0_combout\ : std_logic;
SIGNAL \IR|old_data_5[3]~1_combout\ : std_logic;
SIGNAL \IR|Mux26~0_combout\ : std_logic;
SIGNAL \IR|old_data_6[3]~0_combout\ : std_logic;
SIGNAL \IR|Mux20~0_combout\ : std_logic;
SIGNAL \IR|Add6~0_combout\ : std_logic;
SIGNAL \IR|Mux19~0_combout\ : std_logic;
SIGNAL \IR|Equal3~0_combout\ : std_logic;
SIGNAL \IR|Mux23~0_combout\ : std_logic;
SIGNAL \IR|Mux21~0_combout\ : std_logic;
SIGNAL \IR|Mux24~0_combout\ : std_logic;
SIGNAL \IR|Mux25~0_combout\ : std_logic;
SIGNAL \IR|Add7~1\ : std_logic;
SIGNAL \IR|Add7~3\ : std_logic;
SIGNAL \IR|Add7~4_combout\ : std_logic;
SIGNAL \IR|Mux34~0_combout\ : std_logic;
SIGNAL \IR|Add6~3_combout\ : std_logic;
SIGNAL \IR|Add6~1_combout\ : std_logic;
SIGNAL \IR|Add7~5\ : std_logic;
SIGNAL \IR|Add7~7\ : std_logic;
SIGNAL \IR|Add7~8_combout\ : std_logic;
SIGNAL \IR|Add6~2_combout\ : std_logic;
SIGNAL \IR|Add7~9\ : std_logic;
SIGNAL \IR|Add7~11\ : std_logic;
SIGNAL \IR|Add7~12_combout\ : std_logic;
SIGNAL \IR|Add7~10_combout\ : std_logic;
SIGNAL \IR|Add7~6_combout\ : std_logic;
SIGNAL \IR|LessThan5~0_combout\ : std_logic;
SIGNAL \IR|old_data_4[0]~feeder_combout\ : std_logic;
SIGNAL \IR|old_data_4[3]~0_combout\ : std_logic;
SIGNAL \IR|old_data_4[3]~feeder_combout\ : std_logic;
SIGNAL \IR|B[3]~0_combout\ : std_logic;
SIGNAL \IR|Add7~2_combout\ : std_logic;
SIGNAL \IR|Add7~0_combout\ : std_logic;
SIGNAL \IR|Add3~1_cout\ : std_logic;
SIGNAL \IR|Add3~3\ : std_logic;
SIGNAL \IR|Add3~5\ : std_logic;
SIGNAL \IR|Add3~6_combout\ : std_logic;
SIGNAL \IR|Add3~7\ : std_logic;
SIGNAL \IR|Add3~9\ : std_logic;
SIGNAL \IR|Add3~10_combout\ : std_logic;
SIGNAL \IR|Add3~8_combout\ : std_logic;
SIGNAL \IR|Add3~11\ : std_logic;
SIGNAL \IR|Add3~13\ : std_logic;
SIGNAL \IR|Add3~14_combout\ : std_logic;
SIGNAL \IR|Add3~15\ : std_logic;
SIGNAL \IR|Add3~16_combout\ : std_logic;
SIGNAL \IR|analyse_data~3_combout\ : std_logic;
SIGNAL \IR|Add3~12_combout\ : std_logic;
SIGNAL \IR|Add3~17\ : std_logic;
SIGNAL \IR|Add3~18_combout\ : std_logic;
SIGNAL \IR|analyse_data~4_combout\ : std_logic;
SIGNAL \IR|analyse_data~5_combout\ : std_logic;
SIGNAL \IR|Mux34~1_combout\ : std_logic;
SIGNAL \IR|Mux34~2_combout\ : std_logic;
SIGNAL \IR|Add3~2_combout\ : std_logic;
SIGNAL \IR|Mux33~0_combout\ : std_logic;
SIGNAL \IR|Add3~4_combout\ : std_logic;
SIGNAL \IR|Mux32~0_combout\ : std_logic;
SIGNAL \IR|Mux31~0_combout\ : std_logic;
SIGNAL \calculette|add0|Res[0]~1\ : std_logic;
SIGNAL \calculette|add0|Res[1]~3\ : std_logic;
SIGNAL \calculette|add0|Res[2]~5\ : std_logic;
SIGNAL \calculette|add0|Res[3]~6_combout\ : std_logic;
SIGNAL \operation~input_o\ : std_logic;
SIGNAL \calculette|add0|Res[3]~7\ : std_logic;
SIGNAL \calculette|add0|Add0~0_combout\ : std_logic;
SIGNAL \calculette|ResAdd[1]~0_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux0~4_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux0~5_combout\ : std_logic;
SIGNAL \CLA~input_o\ : std_logic;
SIGNAL \calculette|choix_d0|Mux2~0_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_2~1\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_2~3\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_2~5\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_2~7\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux0~6_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux0~7_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \calculette|controlMulti|erorTotale~0_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux0~8_combout\ : std_logic;
SIGNAL \calculette|sepRes|int_input[31]~0_combout\ : std_logic;
SIGNAL \calculette|add0|Res[1]~2_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux2~1_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux3~9_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux3~5_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux3~6_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux3~8_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux2~2_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux0~9_combout\ : std_logic;
SIGNAL \calculette|add0|Res[2]~4_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux1~0_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux1~1_combout\ : std_logic;
SIGNAL \calculette|add0|Res[0]~0_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \calculette|multi0|Mult1|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux3~4_combout\ : std_logic;
SIGNAL \calculette|choix_d0|Mux3~7_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~1_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~2_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add5~0_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add2~0_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add5~2_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add2~1_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add5~1\ : std_logic;
SIGNAL \calculette|sepRes|Add5~3_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add3~0_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add5~5_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add3~4_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add3~2_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add5~4\ : std_logic;
SIGNAL \calculette|sepRes|Add5~6_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add2~2_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add3~1_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add5~8_combout\ : std_logic;
SIGNAL \calculette|ledRes1|Mux6~0_combout\ : std_logic;
SIGNAL \IR|enableAffichage~feeder_combout\ : std_logic;
SIGNAL \IR|enableAffichage~q\ : std_logic;
SIGNAL \IR|eror~1_combout\ : std_logic;
SIGNAL \IR|eror~0_combout\ : std_logic;
SIGNAL \HEX5~2_combout\ : std_logic;
SIGNAL \IR|eror~3_combout\ : std_logic;
SIGNAL \HEX2~3_combout\ : std_logic;
SIGNAL \IR|eror~2_combout\ : std_logic;
SIGNAL \IR|eror~4_combout\ : std_logic;
SIGNAL \IR|eror~5_combout\ : std_logic;
SIGNAL \IR|eror~q\ : std_logic;
SIGNAL \calculette|eror~0_combout\ : std_logic;
SIGNAL \calculette|controlMulti|erorTotale~1_combout\ : std_logic;
SIGNAL \calculette|eror~1_combout\ : std_logic;
SIGNAL \calculette|eror~2_combout\ : std_logic;
SIGNAL \IR|hex05|Mux6~0_combout\ : std_logic;
SIGNAL \HEX0~0_combout\ : std_logic;
SIGNAL \calculette|ledRes1|Mux5~0_combout\ : std_logic;
SIGNAL \IR|hex05|Mux5~0_combout\ : std_logic;
SIGNAL \HEX0~1_combout\ : std_logic;
SIGNAL \calculette|ledRes1|Mux4~0_combout\ : std_logic;
SIGNAL \IR|hex05|Mux4~0_combout\ : std_logic;
SIGNAL \HEX0~2_combout\ : std_logic;
SIGNAL \IR|hex05|Mux3~0_combout\ : std_logic;
SIGNAL \calculette|ledRes1|Mux3~0_combout\ : std_logic;
SIGNAL \HEX0~3_combout\ : std_logic;
SIGNAL \calculette|ledRes1|Mux2~0_combout\ : std_logic;
SIGNAL \IR|hex05|Mux2~0_combout\ : std_logic;
SIGNAL \HEX0~4_combout\ : std_logic;
SIGNAL \calculette|ledRes1|Mux1~0_combout\ : std_logic;
SIGNAL \IR|hex05|Mux1~0_combout\ : std_logic;
SIGNAL \HEX0~5_combout\ : std_logic;
SIGNAL \calculette|ledRes1|Mux0~0_combout\ : std_logic;
SIGNAL \IR|hex05|Mux0~0_combout\ : std_logic;
SIGNAL \HEX0~6_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add0~0_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add0~2\ : std_logic;
SIGNAL \calculette|sepRes|Add0~4\ : std_logic;
SIGNAL \calculette|sepRes|Add0~5_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add0~6\ : std_logic;
SIGNAL \calculette|sepRes|Add0~7_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add0~1_combout\ : std_logic;
SIGNAL \calculette|sepRes|Add0~3_combout\ : std_logic;
SIGNAL \calculette|ledRes0|Mux6~0_combout\ : std_logic;
SIGNAL \HEX1~16_combout\ : std_logic;
SIGNAL \IR|hex04|Mux6~0_combout\ : std_logic;
SIGNAL \HEX1~9_combout\ : std_logic;
SIGNAL \calculette|ledRes0|Mux5~0_combout\ : std_logic;
SIGNAL \IR|hex04|Mux5~0_combout\ : std_logic;
SIGNAL \HEX1~8_combout\ : std_logic;
SIGNAL \HEX1~10_combout\ : std_logic;
SIGNAL \calculette|ledRes0|Mux4~0_combout\ : std_logic;
SIGNAL \IR|hex04|Mux4~0_combout\ : std_logic;
SIGNAL \HEX1~11_combout\ : std_logic;
SIGNAL \calculette|ledRes0|Mux3~0_combout\ : std_logic;
SIGNAL \HEX1~17_combout\ : std_logic;
SIGNAL \IR|hex04|Mux3~0_combout\ : std_logic;
SIGNAL \HEX1~12_combout\ : std_logic;
SIGNAL \IR|hex04|Mux2~0_combout\ : std_logic;
SIGNAL \calculette|ledRes0|Mux2~0_combout\ : std_logic;
SIGNAL \HEX1~18_combout\ : std_logic;
SIGNAL \HEX1~13_combout\ : std_logic;
SIGNAL \calculette|ledRes0|Mux1~0_combout\ : std_logic;
SIGNAL \HEX1~19_combout\ : std_logic;
SIGNAL \IR|hex04|Mux1~0_combout\ : std_logic;
SIGNAL \HEX1~14_combout\ : std_logic;
SIGNAL \calculette|ledRes0|Mux0~0_combout\ : std_logic;
SIGNAL \IR|hex04|Mux0~0_combout\ : std_logic;
SIGNAL \HEX1~15_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ : std_logic;
SIGNAL \calculette|sepB|int_input[31]~0_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ : std_logic;
SIGNAL \calculette|sepB|Add2~0_combout\ : std_logic;
SIGNAL \calculette|sepB|Add3~1_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \calculette|sepB|Add4~0_combout\ : std_logic;
SIGNAL \calculette|sepB|Add3~2_combout\ : std_logic;
SIGNAL \calculette|sepB|Add3~3_combout\ : std_logic;
SIGNAL \calculette|sepB|Add5~4\ : std_logic;
SIGNAL \calculette|sepB|Add5~6\ : std_logic;
SIGNAL \calculette|sepB|Add5~8_combout\ : std_logic;
SIGNAL \calculette|sepB|Add5~10_combout\ : std_logic;
SIGNAL \calculette|sepB|Add5~3_combout\ : std_logic;
SIGNAL \calculette|sepB|Add5~2_combout\ : std_logic;
SIGNAL \calculette|sepB|Add5~11_combout\ : std_logic;
SIGNAL \calculette|sepB|Add3~0_combout\ : std_logic;
SIGNAL \calculette|sepB|Add5~5_combout\ : std_logic;
SIGNAL \calculette|sepB|Add5~7_combout\ : std_logic;
SIGNAL \calculette|ledB1|Mux6~0_combout\ : std_logic;
SIGNAL \HEX2~2_combout\ : std_logic;
SIGNAL \calculette|ledB1|Mux5~0_combout\ : std_logic;
SIGNAL \HEX2~9_combout\ : std_logic;
SIGNAL \calculette|ledB1|Mux4~0_combout\ : std_logic;
SIGNAL \HEX2~4_combout\ : std_logic;
SIGNAL \calculette|ledB1|Mux3~0_combout\ : std_logic;
SIGNAL \HEX2~5_combout\ : std_logic;
SIGNAL \calculette|ledB1|Mux2~0_combout\ : std_logic;
SIGNAL \HEX2~6_combout\ : std_logic;
SIGNAL \calculette|ledB1|Mux1~0_combout\ : std_logic;
SIGNAL \HEX2~7_combout\ : std_logic;
SIGNAL \calculette|ledB1|Mux0~0_combout\ : std_logic;
SIGNAL \HEX2~8_combout\ : std_logic;
SIGNAL \IR|hex02|Mux6~0_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \calculette|sepB|Add0~10_combout\ : std_logic;
SIGNAL \calculette|sepB|Add0~3\ : std_logic;
SIGNAL \calculette|sepB|Add0~5\ : std_logic;
SIGNAL \calculette|sepB|Add0~6_combout\ : std_logic;
SIGNAL \calculette|sepB|Add0~4_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \calculette|sepB|Div0|auto_generated|divider|op_1~13_combout\ : std_logic;
SIGNAL \calculette|sepB|Add0~7\ : std_logic;
SIGNAL \calculette|sepB|Add0~8_combout\ : std_logic;
SIGNAL \calculette|sepB|Add0~2_combout\ : std_logic;
SIGNAL \calculette|ledB0|Mux6~0_combout\ : std_logic;
SIGNAL \HEX3~0_combout\ : std_logic;
SIGNAL \calculette|ledB0|Mux5~0_combout\ : std_logic;
SIGNAL \IR|hex02|Mux5~0_combout\ : std_logic;
SIGNAL \HEX3~1_combout\ : std_logic;
SIGNAL \calculette|ledB0|Mux4~0_combout\ : std_logic;
SIGNAL \IR|hex02|Mux4~0_combout\ : std_logic;
SIGNAL \HEX3~2_combout\ : std_logic;
SIGNAL \calculette|ledB0|Mux3~0_combout\ : std_logic;
SIGNAL \IR|hex02|Mux3~0_combout\ : std_logic;
SIGNAL \HEX3~3_combout\ : std_logic;
SIGNAL \IR|hex02|Mux2~0_combout\ : std_logic;
SIGNAL \calculette|ledB0|Mux2~0_combout\ : std_logic;
SIGNAL \HEX3~4_combout\ : std_logic;
SIGNAL \IR|hex02|Mux1~0_combout\ : std_logic;
SIGNAL \calculette|ledB0|Mux1~0_combout\ : std_logic;
SIGNAL \HEX3~5_combout\ : std_logic;
SIGNAL \calculette|ledB0|Mux0~0_combout\ : std_logic;
SIGNAL \IR|hex02|Mux0~0_combout\ : std_logic;
SIGNAL \HEX3~6_combout\ : std_logic;
SIGNAL \IR|hex01|Mux6~0_combout\ : std_logic;
SIGNAL \calculette|sepA|int_input[31]~0_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ : std_logic;
SIGNAL \calculette|sepA|Add2~0_combout\ : std_logic;
SIGNAL \calculette|sepA|Add3~0_combout\ : std_logic;
SIGNAL \calculette|sepA|Add5~6\ : std_logic;
SIGNAL \calculette|sepA|Add5~7_combout\ : std_logic;
SIGNAL \calculette|sepA|Add5~9_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \calculette|sepA|Add4~0_combout\ : std_logic;
SIGNAL \calculette|sepA|Add5~8\ : std_logic;
SIGNAL \calculette|sepA|Add5~10_combout\ : std_logic;
SIGNAL \calculette|sepA|Add3~2_combout\ : std_logic;
SIGNAL \calculette|sepA|Add3~1_combout\ : std_logic;
SIGNAL \calculette|sepA|Add3~3_combout\ : std_logic;
SIGNAL \calculette|sepA|Add5~13_combout\ : std_logic;
SIGNAL \calculette|sepA|Add5~4_combout\ : std_logic;
SIGNAL \calculette|sepA|Add5~5_combout\ : std_logic;
SIGNAL \calculette|sepA|Add5~12_combout\ : std_logic;
SIGNAL \calculette|ledA1|Mux6~0_combout\ : std_logic;
SIGNAL \HEX4~0_combout\ : std_logic;
SIGNAL \IR|hex01|Mux5~0_combout\ : std_logic;
SIGNAL \calculette|ledA1|Mux5~0_combout\ : std_logic;
SIGNAL \HEX4~1_combout\ : std_logic;
SIGNAL \calculette|ledA1|Mux4~0_combout\ : std_logic;
SIGNAL \IR|hex01|Mux4~0_combout\ : std_logic;
SIGNAL \HEX4~2_combout\ : std_logic;
SIGNAL \IR|hex01|Mux3~0_combout\ : std_logic;
SIGNAL \calculette|ledA1|Mux3~0_combout\ : std_logic;
SIGNAL \HEX4~3_combout\ : std_logic;
SIGNAL \IR|hex01|Mux2~0_combout\ : std_logic;
SIGNAL \calculette|ledA1|Mux2~0_combout\ : std_logic;
SIGNAL \HEX4~4_combout\ : std_logic;
SIGNAL \IR|hex01|Mux1~0_combout\ : std_logic;
SIGNAL \calculette|ledA1|Mux1~0_combout\ : std_logic;
SIGNAL \HEX4~5_combout\ : std_logic;
SIGNAL \IR|hex01|Mux0~0_combout\ : std_logic;
SIGNAL \calculette|ledA1|Mux0~0_combout\ : std_logic;
SIGNAL \HEX4~6_combout\ : std_logic;
SIGNAL \HEX5~0_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \calculette|sepA|Add0~10_combout\ : std_logic;
SIGNAL \calculette|sepA|Add0~3\ : std_logic;
SIGNAL \calculette|sepA|Add0~5\ : std_logic;
SIGNAL \calculette|sepA|Add0~6_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \calculette|sepA|Div0|auto_generated|divider|op_1~13_combout\ : std_logic;
SIGNAL \calculette|sepA|Add0~7\ : std_logic;
SIGNAL \calculette|sepA|Add0~8_combout\ : std_logic;
SIGNAL \calculette|sepA|Add0~2_combout\ : std_logic;
SIGNAL \calculette|sepA|Add0~4_combout\ : std_logic;
SIGNAL \calculette|ledA0|Mux6~0_combout\ : std_logic;
SIGNAL \HEX5~1_combout\ : std_logic;
SIGNAL \calculette|ledA0|Mux5~0_combout\ : std_logic;
SIGNAL \HEX5~3_combout\ : std_logic;
SIGNAL \calculette|ledA0|Mux4~0_combout\ : std_logic;
SIGNAL \HEX5~4_combout\ : std_logic;
SIGNAL \calculette|ledA0|Mux3~0_combout\ : std_logic;
SIGNAL \HEX5~5_combout\ : std_logic;
SIGNAL \HEX5~6_combout\ : std_logic;
SIGNAL \calculette|ledA0|Mux2~0_combout\ : std_logic;
SIGNAL \HEX5~7_combout\ : std_logic;
SIGNAL \calculette|ledA0|Mux1~0_combout\ : std_logic;
SIGNAL \HEX5~8_combout\ : std_logic;
SIGNAL \calculette|ledA0|Mux0~0_combout\ : std_logic;
SIGNAL \HEX5~9_combout\ : std_logic;
SIGNAL \calculette|CLA0|OPeACLA[0]~0_combout\ : std_logic;
SIGNAL \calculette|CLA0|OPeACLA[0]~1_combout\ : std_logic;
SIGNAL \calculette|CLA0|OPeACLA[0]~2_combout\ : std_logic;
SIGNAL \calculette|CLA0|OPeACLA~3_combout\ : std_logic;
SIGNAL \calculette|CLA0|OPeACLA~4_combout\ : std_logic;
SIGNAL \calculette|CLA0|OPeACLA~5_combout\ : std_logic;
SIGNAL \calculette|CLA0|OPeBCLA~0_combout\ : std_logic;
SIGNAL \calculette|CLA0|OPeBCLA~1_combout\ : std_logic;
SIGNAL \calculette|CLA0|OPeBCLA~2_combout\ : std_logic;
SIGNAL \calculette|CLA0|OPeBCLA~3_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|clk_25~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|clk_25~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|clk_25~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|clk_25~clkctrl_outclk\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[0]~10_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[1]~13\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[2]~14_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[0]~10_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[0]~11\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[1]~12_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[1]~13\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[2]~14_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[2]~15\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[3]~16_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[3]~17\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[4]~18_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal0~2_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[4]~19\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[5]~20_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[5]~21\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[6]~22_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[6]~23\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[7]~24_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal0~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[7]~25\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[8]~26_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[8]~27\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|h_count[9]~28_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal0~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|reset_a~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|reset_a~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|reset_b~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|reset_b~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|reset_c~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|reset_c~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|reset_d~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|reset_d~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|reset_e~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|reset_e~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[2]~17_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[2]~15\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[3]~18_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[3]~19\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[4]~20_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[4]~21\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[5]~22_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[5]~23\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[6]~24_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[6]~25\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[7]~26_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[7]~27\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[8]~28_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[8]~29\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[9]~30_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal1~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan2~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan28~7_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[2]~16_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[0]~11\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|v_count[1]~12_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan28~4_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~8_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan28~6_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan1~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|vs_1~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|vs_2~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|vs_2~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|vs_out~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|vs_out~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan0~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|hs_1~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|hs_2~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|hs_2~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|hs_out~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|hs_out~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan26~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan26~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~44_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~58_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~59_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan28~5_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~22_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~23_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~24_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~60_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan29~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan17~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~62_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan34~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan20~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan0~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~61_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~63_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan11~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan9~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan7~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan9~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~11_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan29~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~2_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~9_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan34~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~3_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~4_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~5_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~13_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~10_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~12_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~14_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~10_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~13_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan29~2_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~11_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~12_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~8_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan29~3_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan32~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~34_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~35_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~1\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~2_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~2\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~4\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~5_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~3_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add3~7_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add3~9_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add3~6_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add3~8_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add3~5_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~3\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~5\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~7\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~9\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~11\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~12_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~10_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~8_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~6_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~4_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~6\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~8\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~10\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~12\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~14\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~15_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~11_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~9_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~13_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal11~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~13\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~15\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~16_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add4~14_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~16\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~18\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~20\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~21_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~7_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~17_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal11~2_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Add2~19_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal11~3_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal13~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~15_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~14_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~16_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~17_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal11~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~18_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~54_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~55_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~48_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~49_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~50_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~85_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~56_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~57_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~37_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~38_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~51_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~45_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~46_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~47_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~19_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~20_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~52_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~53_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan23~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan23~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~33_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~36_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~30_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~31_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~32_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~40_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~41_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~39_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~42_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~26_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~27_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~84_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~28_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal16~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~25_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~21_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~29_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~43_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~9_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~81_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan7~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~82_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan2~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|LessThan2~2_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~83_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|de_1~q\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~6_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~6_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~7_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~7_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~71_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~72_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal5~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~78_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~77_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~64_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~65_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~79_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~70_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~73_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal2~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal2~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal5~1_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~75_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~74_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~76_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~67_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~86_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|Equal9~0_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~68_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~66_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~69_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|process_1~80_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~15_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~16_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~19_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~20_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~17_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~18_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2[13]~21_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|r_out[4]~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~22_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~23_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~24_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|r_out[5]~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|r_out[6]~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~25_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~26_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~27_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|rgb2~28_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|r_out[7]~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|g_out[4]~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|g_out[5]~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|g_out[6]~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|g_out[7]~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|b_out[4]~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|b_out[5]~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|b_out[6]~feeder_combout\ : std_logic;
SIGNAL \calculette|hdmi_out0|res_img|b_out[7]~feeder_combout\ : std_logic;
SIGNAL \IR|irRec|clock_counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \calculette|multi0|Mult1|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IR|A\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \calculette|hdmi_out0|res_img|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \IR|old_data_4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \calculette|hdmi_out0|res_img|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \IR|irRec|LC_off_counter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \IR|irRec|LC_on_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \calculette|multi0|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \calculette|multi0|Mult1|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IR|B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \calculette|hdmi_out0|res_img|rgb2\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \IR|old_data_6\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \calculette|hdmi_out0|res_img|r_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR|old_data_5\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \calculette|hdmi_out0|res_img|g_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR|old_data_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \calculette|hdmi_out0|res_img|b_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR|old_data_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IR|old_data_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \calculette|CLA0|OPeACLA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \calculette|CLA0|OPeBCLA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IR|irRec|data_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \calculette|multi0|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \calculette|multi0|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IR|irRec|data_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IR|irRec|shift_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \calculette|multi0|Mult1|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_HEX5~9_combout\ : std_logic;
SIGNAL \ALT_INV_HEX4~6_combout\ : std_logic;
SIGNAL \ALT_INV_HEX3~6_combout\ : std_logic;
SIGNAL \ALT_INV_HEX2~8_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

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
ww_clk50 <= clk50;
ww_data_in <= data_in;
ww_reset <= reset;
ww_mode <= mode;
ww_operation <= operation;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_CLA <= CLA;
opeACLA <= ww_opeACLA;
opeBCLA <= ww_opeBCLA;
ww_resCLA <= resCLA;
ww_coutCLA <= coutCLA;
cinCLA <= ww_cinCLA;
vga_vs <= ww_vga_vs;
vga_hs <= ww_vga_hs;
vga_r <= ww_vga_r;
vga_g <= ww_vga_g;
vga_b <= ww_vga_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\calculette|hdmi_out0|clk_25~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \calculette|hdmi_out0|clk_25~q\);

\clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50~input_o\);
\ALT_INV_HEX5~9_combout\ <= NOT \HEX5~9_combout\;
\ALT_INV_HEX4~6_combout\ <= NOT \HEX4~6_combout\;
\ALT_INV_HEX3~6_combout\ <= NOT \HEX3~6_combout\;
\ALT_INV_HEX2~8_combout\ <= NOT \HEX2~8_combout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
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
	i => \IR|A\(0),
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
	i => \IR|A\(1),
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
	i => \IR|A\(2),
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
	i => \IR|A\(3),
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
	i => \IR|B\(0),
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
	i => \IR|B\(1),
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
	i => \IR|B\(2),
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
	i => \IR|B\(3),
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
	i => \IR|irRec|data_bit~q\,
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
	i => \HEX0~0_combout\,
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
	i => \HEX0~1_combout\,
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
	i => \HEX0~2_combout\,
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
	i => \HEX0~3_combout\,
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
	i => \HEX0~4_combout\,
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
	i => \HEX0~5_combout\,
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
	i => \HEX0~6_combout\,
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
	i => \HEX1~9_combout\,
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
	i => \HEX1~10_combout\,
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
	i => \HEX1~11_combout\,
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
	i => \HEX1~12_combout\,
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
	i => \HEX1~13_combout\,
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
	i => \HEX1~14_combout\,
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
	i => \HEX1~15_combout\,
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
	i => \HEX2~2_combout\,
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
	i => \HEX2~9_combout\,
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
	i => \HEX2~4_combout\,
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
	i => \HEX2~5_combout\,
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
	i => \HEX2~6_combout\,
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
	i => \HEX2~7_combout\,
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
	i => \ALT_INV_HEX2~8_combout\,
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
	i => \HEX3~0_combout\,
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
	i => \HEX3~1_combout\,
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
	i => \HEX3~2_combout\,
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
	i => \HEX3~3_combout\,
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
	i => \HEX3~4_combout\,
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
	i => \HEX3~5_combout\,
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
	i => \ALT_INV_HEX3~6_combout\,
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
	i => \HEX4~0_combout\,
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
	i => \HEX4~1_combout\,
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
	i => \HEX4~2_combout\,
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
	i => \HEX4~3_combout\,
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
	i => \HEX4~4_combout\,
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
	i => \HEX4~5_combout\,
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
	i => \ALT_INV_HEX4~6_combout\,
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
	i => \HEX5~1_combout\,
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
	i => \HEX5~3_combout\,
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
	i => \HEX5~4_combout\,
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
	i => \HEX5~6_combout\,
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
	i => \HEX5~7_combout\,
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
	i => \HEX5~8_combout\,
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
	i => \ALT_INV_HEX5~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\opeACLA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|CLA0|OPeACLA\(0),
	devoe => ww_devoe,
	o => \opeACLA[0]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\opeACLA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|CLA0|OPeACLA\(1),
	devoe => ww_devoe,
	o => \opeACLA[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\opeACLA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|CLA0|OPeACLA\(2),
	devoe => ww_devoe,
	o => \opeACLA[2]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\opeACLA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|CLA0|OPeACLA\(3),
	devoe => ww_devoe,
	o => \opeACLA[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\opeBCLA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|CLA0|OPeBCLA\(0),
	devoe => ww_devoe,
	o => \opeBCLA[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\opeBCLA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|CLA0|OPeBCLA\(1),
	devoe => ww_devoe,
	o => \opeBCLA[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\opeBCLA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|CLA0|OPeBCLA\(2),
	devoe => ww_devoe,
	o => \opeBCLA[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\opeBCLA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|CLA0|OPeBCLA\(3),
	devoe => ww_devoe,
	o => \opeBCLA[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\cinCLA~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cinCLA~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\vga_vs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|vs_out~q\,
	devoe => ww_devoe,
	o => \vga_vs~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\vga_hs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|hs_out~q\,
	devoe => ww_devoe,
	o => \vga_hs~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\vga_r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|r_out\(4),
	devoe => ww_devoe,
	o => \vga_r[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\vga_r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|r_out\(5),
	devoe => ww_devoe,
	o => \vga_r[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\vga_r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|r_out\(6),
	devoe => ww_devoe,
	o => \vga_r[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\vga_r[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|r_out\(7),
	devoe => ww_devoe,
	o => \vga_r[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\vga_g[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|g_out\(4),
	devoe => ww_devoe,
	o => \vga_g[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\vga_g[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|g_out\(5),
	devoe => ww_devoe,
	o => \vga_g[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\vga_g[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|g_out\(6),
	devoe => ww_devoe,
	o => \vga_g[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\vga_g[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|g_out\(7),
	devoe => ww_devoe,
	o => \vga_g[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\vga_b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|b_out\(4),
	devoe => ww_devoe,
	o => \vga_b[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\vga_b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|b_out\(5),
	devoe => ww_devoe,
	o => \vga_b[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\vga_b[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|b_out\(6),
	devoe => ww_devoe,
	o => \vga_b[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\vga_b[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \calculette|hdmi_out0|res_img|b_out\(7),
	devoe => ww_devoe,
	o => \vga_b[3]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: CLKCTRL_G19
\clk50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50~inputclkctrl_outclk\);

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

-- Location: LCCOMB_X51_Y51_N16
\IR|irRec|clock_counter[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[0]~17_combout\ = \IR|irRec|clock_counter\(0) $ (VCC)
-- \IR|irRec|clock_counter[0]~18\ = CARRY(\IR|irRec|clock_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|clock_counter\(0),
	datad => VCC,
	combout => \IR|irRec|clock_counter[0]~17_combout\,
	cout => \IR|irRec|clock_counter[0]~18\);

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

-- Location: LCCOMB_X50_Y50_N2
\IR|irRec|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data~0_combout\ = (\reset~input_o\ & \data_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \data_in~input_o\,
	combout => \IR|irRec|data~0_combout\);

-- Location: FF_X50_Y50_N3
\IR|irRec|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data~q\);

-- Location: LCCOMB_X50_Y50_N28
\IR|irRec|data_follow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_follow~0_combout\ = (\reset~input_o\ & !\IR|irRec|data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \IR|irRec|data~q\,
	combout => \IR|irRec|data_follow~0_combout\);

-- Location: FF_X50_Y50_N29
\IR|irRec|data_follow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_follow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_follow~q\);

-- Location: LCCOMB_X50_Y50_N22
\IR|irRec|state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|state~12_combout\ = (\reset~input_o\ & ((\IR|irRec|state.init~q\) # (!\IR|irRec|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.init~q\,
	datac => \reset~input_o\,
	datad => \IR|irRec|data~q\,
	combout => \IR|irRec|state~12_combout\);

-- Location: LCCOMB_X55_Y50_N0
\IR|irRec|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~0_combout\ = \IR|irRec|data_counter\(0) $ (VCC)
-- \IR|irRec|Add3~1\ = CARRY(\IR|irRec|data_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(0),
	datad => VCC,
	combout => \IR|irRec|Add3~0_combout\,
	cout => \IR|irRec|Add3~1\);

-- Location: LCCOMB_X55_Y50_N2
\IR|irRec|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~2_combout\ = (\IR|irRec|data_counter\(1) & (!\IR|irRec|Add3~1\)) # (!\IR|irRec|data_counter\(1) & ((\IR|irRec|Add3~1\) # (GND)))
-- \IR|irRec|Add3~3\ = CARRY((!\IR|irRec|Add3~1\) # (!\IR|irRec|data_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(1),
	datad => VCC,
	cin => \IR|irRec|Add3~1\,
	combout => \IR|irRec|Add3~2_combout\,
	cout => \IR|irRec|Add3~3\);

-- Location: LCCOMB_X55_Y50_N4
\IR|irRec|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~4_combout\ = (\IR|irRec|data_counter\(2) & (\IR|irRec|Add3~3\ $ (GND))) # (!\IR|irRec|data_counter\(2) & (!\IR|irRec|Add3~3\ & VCC))
-- \IR|irRec|Add3~5\ = CARRY((\IR|irRec|data_counter\(2) & !\IR|irRec|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(2),
	datad => VCC,
	cin => \IR|irRec|Add3~3\,
	combout => \IR|irRec|Add3~4_combout\,
	cout => \IR|irRec|Add3~5\);

-- Location: LCCOMB_X54_Y50_N8
\IR|irRec|data_counter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[2]~4_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~4_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~4_combout\,
	datac => \IR|irRec|data_counter\(2),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[2]~4_combout\);

-- Location: FF_X54_Y50_N9
\IR|irRec|data_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(2));

-- Location: LCCOMB_X55_Y50_N6
\IR|irRec|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~6_combout\ = (\IR|irRec|data_counter\(3) & (!\IR|irRec|Add3~5\)) # (!\IR|irRec|data_counter\(3) & ((\IR|irRec|Add3~5\) # (GND)))
-- \IR|irRec|Add3~7\ = CARRY((!\IR|irRec|Add3~5\) # (!\IR|irRec|data_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(3),
	datad => VCC,
	cin => \IR|irRec|Add3~5\,
	combout => \IR|irRec|Add3~6_combout\,
	cout => \IR|irRec|Add3~7\);

-- Location: LCCOMB_X56_Y50_N28
\IR|irRec|data_counter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[3]~2_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~6_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~6_combout\,
	datac => \IR|irRec|data_counter\(3),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[3]~2_combout\);

-- Location: FF_X56_Y50_N29
\IR|irRec|data_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(3));

-- Location: LCCOMB_X55_Y50_N8
\IR|irRec|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~8_combout\ = (\IR|irRec|data_counter\(4) & (\IR|irRec|Add3~7\ $ (GND))) # (!\IR|irRec|data_counter\(4) & (!\IR|irRec|Add3~7\ & VCC))
-- \IR|irRec|Add3~9\ = CARRY((\IR|irRec|data_counter\(4) & !\IR|irRec|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(4),
	datad => VCC,
	cin => \IR|irRec|Add3~7\,
	combout => \IR|irRec|Add3~8_combout\,
	cout => \IR|irRec|Add3~9\);

-- Location: LCCOMB_X56_Y50_N14
\IR|irRec|data_counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[4]~1_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~8_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Add3~8_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(4),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[4]~1_combout\);

-- Location: FF_X56_Y50_N15
\IR|irRec|data_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(4));

-- Location: LCCOMB_X55_Y50_N10
\IR|irRec|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~10_combout\ = (\IR|irRec|data_counter\(5) & (!\IR|irRec|Add3~9\)) # (!\IR|irRec|data_counter\(5) & ((\IR|irRec|Add3~9\) # (GND)))
-- \IR|irRec|Add3~11\ = CARRY((!\IR|irRec|Add3~9\) # (!\IR|irRec|data_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(5),
	datad => VCC,
	cin => \IR|irRec|Add3~9\,
	combout => \IR|irRec|Add3~10_combout\,
	cout => \IR|irRec|Add3~11\);

-- Location: LCCOMB_X56_Y50_N10
\IR|irRec|data_counter[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[5]~3_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~10_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Add3~10_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(5),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[5]~3_combout\);

-- Location: FF_X56_Y50_N11
\IR|irRec|data_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(5));

-- Location: LCCOMB_X56_Y50_N24
\IR|irRec|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal5~0_combout\ = ((\IR|irRec|data_counter\(3)) # ((\IR|irRec|data_counter\(0)) # (\IR|irRec|data_counter\(4)))) # (!\IR|irRec|data_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(5),
	datab => \IR|irRec|data_counter\(3),
	datac => \IR|irRec|data_counter\(0),
	datad => \IR|irRec|data_counter\(4),
	combout => \IR|irRec|Equal5~0_combout\);

-- Location: LCCOMB_X55_Y50_N12
\IR|irRec|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~12_combout\ = (\IR|irRec|data_counter\(6) & (\IR|irRec|Add3~11\ $ (GND))) # (!\IR|irRec|data_counter\(6) & (!\IR|irRec|Add3~11\ & VCC))
-- \IR|irRec|Add3~13\ = CARRY((\IR|irRec|data_counter\(6) & !\IR|irRec|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(6),
	datad => VCC,
	cin => \IR|irRec|Add3~11\,
	combout => \IR|irRec|Add3~12_combout\,
	cout => \IR|irRec|Add3~13\);

-- Location: LCCOMB_X54_Y50_N10
\IR|irRec|data_counter[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[6]~31_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~12_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~12_combout\,
	datac => \IR|irRec|data_counter\(6),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[6]~31_combout\);

-- Location: FF_X54_Y50_N11
\IR|irRec|data_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(6));

-- Location: LCCOMB_X55_Y50_N14
\IR|irRec|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~14_combout\ = (\IR|irRec|data_counter\(7) & (!\IR|irRec|Add3~13\)) # (!\IR|irRec|data_counter\(7) & ((\IR|irRec|Add3~13\) # (GND)))
-- \IR|irRec|Add3~15\ = CARRY((!\IR|irRec|Add3~13\) # (!\IR|irRec|data_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(7),
	datad => VCC,
	cin => \IR|irRec|Add3~13\,
	combout => \IR|irRec|Add3~14_combout\,
	cout => \IR|irRec|Add3~15\);

-- Location: LCCOMB_X54_Y50_N24
\IR|irRec|data_counter[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[7]~30_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~14_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~14_combout\,
	datac => \IR|irRec|data_counter\(7),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[7]~30_combout\);

-- Location: FF_X54_Y50_N25
\IR|irRec|data_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(7));

-- Location: LCCOMB_X55_Y50_N16
\IR|irRec|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~16_combout\ = (\IR|irRec|data_counter\(8) & (\IR|irRec|Add3~15\ $ (GND))) # (!\IR|irRec|data_counter\(8) & (!\IR|irRec|Add3~15\ & VCC))
-- \IR|irRec|Add3~17\ = CARRY((\IR|irRec|data_counter\(8) & !\IR|irRec|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(8),
	datad => VCC,
	cin => \IR|irRec|Add3~15\,
	combout => \IR|irRec|Add3~16_combout\,
	cout => \IR|irRec|Add3~17\);

-- Location: LCCOMB_X56_Y50_N22
\IR|irRec|data_counter[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[8]~29_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~16_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Add3~16_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(8),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[8]~29_combout\);

-- Location: FF_X56_Y50_N23
\IR|irRec|data_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(8));

-- Location: LCCOMB_X55_Y50_N18
\IR|irRec|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~18_combout\ = (\IR|irRec|data_counter\(9) & (!\IR|irRec|Add3~17\)) # (!\IR|irRec|data_counter\(9) & ((\IR|irRec|Add3~17\) # (GND)))
-- \IR|irRec|Add3~19\ = CARRY((!\IR|irRec|Add3~17\) # (!\IR|irRec|data_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(9),
	datad => VCC,
	cin => \IR|irRec|Add3~17\,
	combout => \IR|irRec|Add3~18_combout\,
	cout => \IR|irRec|Add3~19\);

-- Location: LCCOMB_X56_Y50_N8
\IR|irRec|data_counter[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[9]~28_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~18_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~18_combout\,
	datac => \IR|irRec|data_counter\(9),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[9]~28_combout\);

-- Location: FF_X56_Y50_N9
\IR|irRec|data_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(9));

-- Location: LCCOMB_X55_Y50_N20
\IR|irRec|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~20_combout\ = (\IR|irRec|data_counter\(10) & (\IR|irRec|Add3~19\ $ (GND))) # (!\IR|irRec|data_counter\(10) & (!\IR|irRec|Add3~19\ & VCC))
-- \IR|irRec|Add3~21\ = CARRY((\IR|irRec|data_counter\(10) & !\IR|irRec|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(10),
	datad => VCC,
	cin => \IR|irRec|Add3~19\,
	combout => \IR|irRec|Add3~20_combout\,
	cout => \IR|irRec|Add3~21\);

-- Location: LCCOMB_X56_Y50_N26
\IR|irRec|data_counter[10]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[10]~27_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~20_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~20_combout\,
	datac => \IR|irRec|data_counter\(10),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[10]~27_combout\);

-- Location: FF_X56_Y50_N27
\IR|irRec|data_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(10));

-- Location: LCCOMB_X55_Y50_N22
\IR|irRec|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~22_combout\ = (\IR|irRec|data_counter\(11) & (!\IR|irRec|Add3~21\)) # (!\IR|irRec|data_counter\(11) & ((\IR|irRec|Add3~21\) # (GND)))
-- \IR|irRec|Add3~23\ = CARRY((!\IR|irRec|Add3~21\) # (!\IR|irRec|data_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(11),
	datad => VCC,
	cin => \IR|irRec|Add3~21\,
	combout => \IR|irRec|Add3~22_combout\,
	cout => \IR|irRec|Add3~23\);

-- Location: LCCOMB_X56_Y50_N20
\IR|irRec|data_counter[11]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[11]~26_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~22_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~22_combout\,
	datac => \IR|irRec|data_counter\(11),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[11]~26_combout\);

-- Location: FF_X56_Y50_N21
\IR|irRec|data_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[11]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(11));

-- Location: LCCOMB_X56_Y50_N12
\IR|irRec|Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal4~6_combout\ = (!\IR|irRec|data_counter\(8) & (!\IR|irRec|data_counter\(9) & (!\IR|irRec|data_counter\(10) & !\IR|irRec|data_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(8),
	datab => \IR|irRec|data_counter\(9),
	datac => \IR|irRec|data_counter\(10),
	datad => \IR|irRec|data_counter\(11),
	combout => \IR|irRec|Equal4~6_combout\);

-- Location: LCCOMB_X55_Y50_N24
\IR|irRec|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~24_combout\ = (\IR|irRec|data_counter\(12) & (\IR|irRec|Add3~23\ $ (GND))) # (!\IR|irRec|data_counter\(12) & (!\IR|irRec|Add3~23\ & VCC))
-- \IR|irRec|Add3~25\ = CARRY((\IR|irRec|data_counter\(12) & !\IR|irRec|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(12),
	datad => VCC,
	cin => \IR|irRec|Add3~23\,
	combout => \IR|irRec|Add3~24_combout\,
	cout => \IR|irRec|Add3~25\);

-- Location: LCCOMB_X54_Y50_N16
\IR|irRec|data_counter[12]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[12]~25_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~24_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~24_combout\,
	datac => \IR|irRec|data_counter\(12),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[12]~25_combout\);

-- Location: FF_X54_Y50_N17
\IR|irRec|data_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(12));

-- Location: LCCOMB_X55_Y50_N26
\IR|irRec|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~26_combout\ = (\IR|irRec|data_counter\(13) & (!\IR|irRec|Add3~25\)) # (!\IR|irRec|data_counter\(13) & ((\IR|irRec|Add3~25\) # (GND)))
-- \IR|irRec|Add3~27\ = CARRY((!\IR|irRec|Add3~25\) # (!\IR|irRec|data_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(13),
	datad => VCC,
	cin => \IR|irRec|Add3~25\,
	combout => \IR|irRec|Add3~26_combout\,
	cout => \IR|irRec|Add3~27\);

-- Location: LCCOMB_X54_Y50_N18
\IR|irRec|data_counter[13]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[13]~24_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~26_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~26_combout\,
	datac => \IR|irRec|data_counter\(13),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[13]~24_combout\);

-- Location: FF_X54_Y50_N19
\IR|irRec|data_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(13));

-- Location: LCCOMB_X55_Y50_N28
\IR|irRec|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~28_combout\ = (\IR|irRec|data_counter\(14) & (\IR|irRec|Add3~27\ $ (GND))) # (!\IR|irRec|data_counter\(14) & (!\IR|irRec|Add3~27\ & VCC))
-- \IR|irRec|Add3~29\ = CARRY((\IR|irRec|data_counter\(14) & !\IR|irRec|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(14),
	datad => VCC,
	cin => \IR|irRec|Add3~27\,
	combout => \IR|irRec|Add3~28_combout\,
	cout => \IR|irRec|Add3~29\);

-- Location: LCCOMB_X54_Y50_N12
\IR|irRec|data_counter[14]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[14]~23_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~28_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~28_combout\,
	datac => \IR|irRec|data_counter\(14),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[14]~23_combout\);

-- Location: FF_X54_Y50_N13
\IR|irRec|data_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[14]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(14));

-- Location: LCCOMB_X55_Y50_N30
\IR|irRec|Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~30_combout\ = (\IR|irRec|data_counter\(15) & (!\IR|irRec|Add3~29\)) # (!\IR|irRec|data_counter\(15) & ((\IR|irRec|Add3~29\) # (GND)))
-- \IR|irRec|Add3~31\ = CARRY((!\IR|irRec|Add3~29\) # (!\IR|irRec|data_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(15),
	datad => VCC,
	cin => \IR|irRec|Add3~29\,
	combout => \IR|irRec|Add3~30_combout\,
	cout => \IR|irRec|Add3~31\);

-- Location: LCCOMB_X54_Y50_N26
\IR|irRec|data_counter[15]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[15]~22_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~30_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~30_combout\,
	datac => \IR|irRec|data_counter\(15),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[15]~22_combout\);

-- Location: FF_X54_Y50_N27
\IR|irRec|data_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(15));

-- Location: LCCOMB_X54_Y50_N22
\IR|irRec|Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal4~5_combout\ = (!\IR|irRec|data_counter\(14) & (!\IR|irRec|data_counter\(13) & (!\IR|irRec|data_counter\(15) & !\IR|irRec|data_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(14),
	datab => \IR|irRec|data_counter\(13),
	datac => \IR|irRec|data_counter\(15),
	datad => \IR|irRec|data_counter\(12),
	combout => \IR|irRec|Equal4~5_combout\);

-- Location: LCCOMB_X54_Y50_N20
\IR|irRec|Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal4~7_combout\ = (!\IR|irRec|data_counter\(7) & !\IR|irRec|data_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(7),
	datad => \IR|irRec|data_counter\(6),
	combout => \IR|irRec|Equal4~7_combout\);

-- Location: LCCOMB_X55_Y49_N0
\IR|irRec|Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~32_combout\ = (\IR|irRec|data_counter\(16) & (\IR|irRec|Add3~31\ $ (GND))) # (!\IR|irRec|data_counter\(16) & (!\IR|irRec|Add3~31\ & VCC))
-- \IR|irRec|Add3~33\ = CARRY((\IR|irRec|data_counter\(16) & !\IR|irRec|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(16),
	datad => VCC,
	cin => \IR|irRec|Add3~31\,
	combout => \IR|irRec|Add3~32_combout\,
	cout => \IR|irRec|Add3~33\);

-- Location: LCCOMB_X54_Y49_N6
\IR|irRec|data_counter[16]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[16]~21_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~32_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~32_combout\,
	datac => \IR|irRec|data_counter\(16),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[16]~21_combout\);

-- Location: FF_X54_Y49_N7
\IR|irRec|data_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[16]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(16));

-- Location: LCCOMB_X55_Y49_N2
\IR|irRec|Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~34_combout\ = (\IR|irRec|data_counter\(17) & (!\IR|irRec|Add3~33\)) # (!\IR|irRec|data_counter\(17) & ((\IR|irRec|Add3~33\) # (GND)))
-- \IR|irRec|Add3~35\ = CARRY((!\IR|irRec|Add3~33\) # (!\IR|irRec|data_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(17),
	datad => VCC,
	cin => \IR|irRec|Add3~33\,
	combout => \IR|irRec|Add3~34_combout\,
	cout => \IR|irRec|Add3~35\);

-- Location: LCCOMB_X54_Y49_N16
\IR|irRec|data_counter[17]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[17]~20_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~34_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Add3~34_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(17),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[17]~20_combout\);

-- Location: FF_X54_Y49_N17
\IR|irRec|data_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(17));

-- Location: LCCOMB_X55_Y49_N4
\IR|irRec|Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~36_combout\ = (\IR|irRec|data_counter\(18) & (\IR|irRec|Add3~35\ $ (GND))) # (!\IR|irRec|data_counter\(18) & (!\IR|irRec|Add3~35\ & VCC))
-- \IR|irRec|Add3~37\ = CARRY((\IR|irRec|data_counter\(18) & !\IR|irRec|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(18),
	datad => VCC,
	cin => \IR|irRec|Add3~35\,
	combout => \IR|irRec|Add3~36_combout\,
	cout => \IR|irRec|Add3~37\);

-- Location: LCCOMB_X54_Y49_N2
\IR|irRec|data_counter[18]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[18]~19_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~36_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Add3~36_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(18),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[18]~19_combout\);

-- Location: FF_X54_Y49_N3
\IR|irRec|data_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(18));

-- Location: LCCOMB_X55_Y49_N6
\IR|irRec|Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~38_combout\ = (\IR|irRec|data_counter\(19) & (!\IR|irRec|Add3~37\)) # (!\IR|irRec|data_counter\(19) & ((\IR|irRec|Add3~37\) # (GND)))
-- \IR|irRec|Add3~39\ = CARRY((!\IR|irRec|Add3~37\) # (!\IR|irRec|data_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(19),
	datad => VCC,
	cin => \IR|irRec|Add3~37\,
	combout => \IR|irRec|Add3~38_combout\,
	cout => \IR|irRec|Add3~39\);

-- Location: LCCOMB_X54_Y49_N4
\IR|irRec|data_counter[19]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[19]~18_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~38_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Add3~38_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(19),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[19]~18_combout\);

-- Location: FF_X54_Y49_N5
\IR|irRec|data_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(19));

-- Location: LCCOMB_X55_Y49_N8
\IR|irRec|Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~40_combout\ = (\IR|irRec|data_counter\(20) & (\IR|irRec|Add3~39\ $ (GND))) # (!\IR|irRec|data_counter\(20) & (!\IR|irRec|Add3~39\ & VCC))
-- \IR|irRec|Add3~41\ = CARRY((\IR|irRec|data_counter\(20) & !\IR|irRec|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(20),
	datad => VCC,
	cin => \IR|irRec|Add3~39\,
	combout => \IR|irRec|Add3~40_combout\,
	cout => \IR|irRec|Add3~41\);

-- Location: LCCOMB_X54_Y49_N28
\IR|irRec|data_counter[20]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[20]~17_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~40_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~40_combout\,
	datac => \IR|irRec|data_counter\(20),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[20]~17_combout\);

-- Location: FF_X54_Y49_N29
\IR|irRec|data_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[20]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(20));

-- Location: LCCOMB_X55_Y49_N10
\IR|irRec|Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~42_combout\ = (\IR|irRec|data_counter\(21) & (!\IR|irRec|Add3~41\)) # (!\IR|irRec|data_counter\(21) & ((\IR|irRec|Add3~41\) # (GND)))
-- \IR|irRec|Add3~43\ = CARRY((!\IR|irRec|Add3~41\) # (!\IR|irRec|data_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(21),
	datad => VCC,
	cin => \IR|irRec|Add3~41\,
	combout => \IR|irRec|Add3~42_combout\,
	cout => \IR|irRec|Add3~43\);

-- Location: LCCOMB_X54_Y49_N26
\IR|irRec|data_counter[21]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[21]~16_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~42_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~42_combout\,
	datac => \IR|irRec|data_counter\(21),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[21]~16_combout\);

-- Location: FF_X54_Y49_N27
\IR|irRec|data_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[21]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(21));

-- Location: LCCOMB_X55_Y49_N12
\IR|irRec|Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~44_combout\ = (\IR|irRec|data_counter\(22) & (\IR|irRec|Add3~43\ $ (GND))) # (!\IR|irRec|data_counter\(22) & (!\IR|irRec|Add3~43\ & VCC))
-- \IR|irRec|Add3~45\ = CARRY((\IR|irRec|data_counter\(22) & !\IR|irRec|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(22),
	datad => VCC,
	cin => \IR|irRec|Add3~43\,
	combout => \IR|irRec|Add3~44_combout\,
	cout => \IR|irRec|Add3~45\);

-- Location: LCCOMB_X54_Y49_N0
\IR|irRec|data_counter[22]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[22]~15_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~44_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~44_combout\,
	datac => \IR|irRec|data_counter\(22),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[22]~15_combout\);

-- Location: FF_X54_Y49_N1
\IR|irRec|data_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[22]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(22));

-- Location: LCCOMB_X55_Y49_N14
\IR|irRec|Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~46_combout\ = (\IR|irRec|data_counter\(23) & (!\IR|irRec|Add3~45\)) # (!\IR|irRec|data_counter\(23) & ((\IR|irRec|Add3~45\) # (GND)))
-- \IR|irRec|Add3~47\ = CARRY((!\IR|irRec|Add3~45\) # (!\IR|irRec|data_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(23),
	datad => VCC,
	cin => \IR|irRec|Add3~45\,
	combout => \IR|irRec|Add3~46_combout\,
	cout => \IR|irRec|Add3~47\);

-- Location: LCCOMB_X54_Y49_N14
\IR|irRec|data_counter[23]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[23]~14_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~46_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~46_combout\,
	datac => \IR|irRec|data_counter\(23),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[23]~14_combout\);

-- Location: FF_X54_Y49_N15
\IR|irRec|data_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[23]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(23));

-- Location: LCCOMB_X54_Y49_N10
\IR|irRec|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal4~2_combout\ = (!\IR|irRec|data_counter\(21) & (!\IR|irRec|data_counter\(22) & (!\IR|irRec|data_counter\(23) & !\IR|irRec|data_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(21),
	datab => \IR|irRec|data_counter\(22),
	datac => \IR|irRec|data_counter\(23),
	datad => \IR|irRec|data_counter\(20),
	combout => \IR|irRec|Equal4~2_combout\);

-- Location: LCCOMB_X55_Y49_N16
\IR|irRec|Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~48_combout\ = (\IR|irRec|data_counter\(24) & (\IR|irRec|Add3~47\ $ (GND))) # (!\IR|irRec|data_counter\(24) & (!\IR|irRec|Add3~47\ & VCC))
-- \IR|irRec|Add3~49\ = CARRY((\IR|irRec|data_counter\(24) & !\IR|irRec|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(24),
	datad => VCC,
	cin => \IR|irRec|Add3~47\,
	combout => \IR|irRec|Add3~48_combout\,
	cout => \IR|irRec|Add3~49\);

-- Location: LCCOMB_X56_Y49_N26
\IR|irRec|data_counter[24]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[24]~13_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~48_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Add3~48_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(24),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[24]~13_combout\);

-- Location: FF_X56_Y49_N27
\IR|irRec|data_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(24));

-- Location: LCCOMB_X55_Y49_N18
\IR|irRec|Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~50_combout\ = (\IR|irRec|data_counter\(25) & (!\IR|irRec|Add3~49\)) # (!\IR|irRec|data_counter\(25) & ((\IR|irRec|Add3~49\) # (GND)))
-- \IR|irRec|Add3~51\ = CARRY((!\IR|irRec|Add3~49\) # (!\IR|irRec|data_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(25),
	datad => VCC,
	cin => \IR|irRec|Add3~49\,
	combout => \IR|irRec|Add3~50_combout\,
	cout => \IR|irRec|Add3~51\);

-- Location: LCCOMB_X56_Y49_N8
\IR|irRec|data_counter[25]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[25]~12_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & ((\IR|irRec|Add3~50_combout\))) # (!\IR|irRec|state.check_data~q\ & (\IR|irRec|data_counter\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg[19]~1_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(25),
	datad => \IR|irRec|Add3~50_combout\,
	combout => \IR|irRec|data_counter[25]~12_combout\);

-- Location: FF_X56_Y49_N9
\IR|irRec|data_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[25]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(25));

-- Location: LCCOMB_X55_Y49_N20
\IR|irRec|Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~52_combout\ = (\IR|irRec|data_counter\(26) & (\IR|irRec|Add3~51\ $ (GND))) # (!\IR|irRec|data_counter\(26) & (!\IR|irRec|Add3~51\ & VCC))
-- \IR|irRec|Add3~53\ = CARRY((\IR|irRec|data_counter\(26) & !\IR|irRec|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(26),
	datad => VCC,
	cin => \IR|irRec|Add3~51\,
	combout => \IR|irRec|Add3~52_combout\,
	cout => \IR|irRec|Add3~53\);

-- Location: LCCOMB_X56_Y49_N18
\IR|irRec|data_counter[26]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[26]~11_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & ((\IR|irRec|Add3~52_combout\))) # (!\IR|irRec|state.check_data~q\ & (\IR|irRec|data_counter\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg[19]~1_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(26),
	datad => \IR|irRec|Add3~52_combout\,
	combout => \IR|irRec|data_counter[26]~11_combout\);

-- Location: FF_X56_Y49_N19
\IR|irRec|data_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(26));

-- Location: LCCOMB_X55_Y49_N22
\IR|irRec|Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~54_combout\ = (\IR|irRec|data_counter\(27) & (!\IR|irRec|Add3~53\)) # (!\IR|irRec|data_counter\(27) & ((\IR|irRec|Add3~53\) # (GND)))
-- \IR|irRec|Add3~55\ = CARRY((!\IR|irRec|Add3~53\) # (!\IR|irRec|data_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(27),
	datad => VCC,
	cin => \IR|irRec|Add3~53\,
	combout => \IR|irRec|Add3~54_combout\,
	cout => \IR|irRec|Add3~55\);

-- Location: LCCOMB_X56_Y49_N12
\IR|irRec|data_counter[27]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[27]~10_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & ((\IR|irRec|Add3~54_combout\))) # (!\IR|irRec|state.check_data~q\ & (\IR|irRec|data_counter\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg[19]~1_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(27),
	datad => \IR|irRec|Add3~54_combout\,
	combout => \IR|irRec|data_counter[27]~10_combout\);

-- Location: FF_X56_Y49_N13
\IR|irRec|data_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[27]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(27));

-- Location: LCCOMB_X55_Y49_N24
\IR|irRec|Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~56_combout\ = (\IR|irRec|data_counter\(28) & (\IR|irRec|Add3~55\ $ (GND))) # (!\IR|irRec|data_counter\(28) & (!\IR|irRec|Add3~55\ & VCC))
-- \IR|irRec|Add3~57\ = CARRY((\IR|irRec|data_counter\(28) & !\IR|irRec|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(28),
	datad => VCC,
	cin => \IR|irRec|Add3~55\,
	combout => \IR|irRec|Add3~56_combout\,
	cout => \IR|irRec|Add3~57\);

-- Location: LCCOMB_X54_Y49_N22
\IR|irRec|data_counter[28]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[28]~9_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~56_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~56_combout\,
	datac => \IR|irRec|data_counter\(28),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[28]~9_combout\);

-- Location: FF_X54_Y49_N23
\IR|irRec|data_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[28]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(28));

-- Location: LCCOMB_X55_Y49_N26
\IR|irRec|Add3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~58_combout\ = (\IR|irRec|data_counter\(29) & (!\IR|irRec|Add3~57\)) # (!\IR|irRec|data_counter\(29) & ((\IR|irRec|Add3~57\) # (GND)))
-- \IR|irRec|Add3~59\ = CARRY((!\IR|irRec|Add3~57\) # (!\IR|irRec|data_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(29),
	datad => VCC,
	cin => \IR|irRec|Add3~57\,
	combout => \IR|irRec|Add3~58_combout\,
	cout => \IR|irRec|Add3~59\);

-- Location: LCCOMB_X54_Y49_N12
\IR|irRec|data_counter[29]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[29]~8_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~58_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Add3~58_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(29),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[29]~8_combout\);

-- Location: FF_X54_Y49_N13
\IR|irRec|data_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[29]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(29));

-- Location: LCCOMB_X55_Y49_N28
\IR|irRec|Add3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~60_combout\ = (\IR|irRec|data_counter\(30) & (\IR|irRec|Add3~59\ $ (GND))) # (!\IR|irRec|data_counter\(30) & (!\IR|irRec|Add3~59\ & VCC))
-- \IR|irRec|Add3~61\ = CARRY((\IR|irRec|data_counter\(30) & !\IR|irRec|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_counter\(30),
	datad => VCC,
	cin => \IR|irRec|Add3~59\,
	combout => \IR|irRec|Add3~60_combout\,
	cout => \IR|irRec|Add3~61\);

-- Location: LCCOMB_X54_Y49_N30
\IR|irRec|data_counter[30]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[30]~7_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~60_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|Add3~60_combout\,
	datac => \IR|irRec|data_counter\(30),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[30]~7_combout\);

-- Location: FF_X54_Y49_N31
\IR|irRec|data_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[30]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(30));

-- Location: LCCOMB_X55_Y49_N30
\IR|irRec|Add3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Add3~62_combout\ = \IR|irRec|Add3~61\ $ (\IR|irRec|data_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \IR|irRec|data_counter\(31),
	cin => \IR|irRec|Add3~61\,
	combout => \IR|irRec|Add3~62_combout\);

-- Location: LCCOMB_X54_Y49_N24
\IR|irRec|data_counter[31]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[31]~6_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~62_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Add3~62_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(31),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[31]~6_combout\);

-- Location: FF_X54_Y49_N25
\IR|irRec|data_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[31]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(31));

-- Location: LCCOMB_X54_Y49_N20
\IR|irRec|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal4~0_combout\ = (!\IR|irRec|data_counter\(30) & (!\IR|irRec|data_counter\(31) & (!\IR|irRec|data_counter\(28) & !\IR|irRec|data_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(30),
	datab => \IR|irRec|data_counter\(31),
	datac => \IR|irRec|data_counter\(28),
	datad => \IR|irRec|data_counter\(29),
	combout => \IR|irRec|Equal4~0_combout\);

-- Location: LCCOMB_X54_Y49_N8
\IR|irRec|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal4~3_combout\ = (!\IR|irRec|data_counter\(16) & (!\IR|irRec|data_counter\(18) & (!\IR|irRec|data_counter\(19) & !\IR|irRec|data_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(16),
	datab => \IR|irRec|data_counter\(18),
	datac => \IR|irRec|data_counter\(19),
	datad => \IR|irRec|data_counter\(17),
	combout => \IR|irRec|Equal4~3_combout\);

-- Location: LCCOMB_X56_Y49_N16
\IR|irRec|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal4~1_combout\ = (!\IR|irRec|data_counter\(24) & (!\IR|irRec|data_counter\(26) & (!\IR|irRec|data_counter\(25) & !\IR|irRec|data_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(24),
	datab => \IR|irRec|data_counter\(26),
	datac => \IR|irRec|data_counter\(25),
	datad => \IR|irRec|data_counter\(27),
	combout => \IR|irRec|Equal4~1_combout\);

-- Location: LCCOMB_X54_Y49_N18
\IR|irRec|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal4~4_combout\ = (\IR|irRec|Equal4~2_combout\ & (\IR|irRec|Equal4~0_combout\ & (\IR|irRec|Equal4~3_combout\ & \IR|irRec|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Equal4~2_combout\,
	datab => \IR|irRec|Equal4~0_combout\,
	datac => \IR|irRec|Equal4~3_combout\,
	datad => \IR|irRec|Equal4~1_combout\,
	combout => \IR|irRec|Equal4~4_combout\);

-- Location: LCCOMB_X56_Y50_N18
\IR|irRec|Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal4~8_combout\ = (\IR|irRec|Equal4~6_combout\ & (\IR|irRec|Equal4~5_combout\ & (\IR|irRec|Equal4~7_combout\ & \IR|irRec|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Equal4~6_combout\,
	datab => \IR|irRec|Equal4~5_combout\,
	datac => \IR|irRec|Equal4~7_combout\,
	datad => \IR|irRec|Equal4~4_combout\,
	combout => \IR|irRec|Equal4~8_combout\);

-- Location: LCCOMB_X56_Y50_N30
\IR|irRec|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal5~1_combout\ = (!\IR|irRec|data_counter\(1) & (!\IR|irRec|Equal5~0_combout\ & (!\IR|irRec|data_counter\(2) & \IR|irRec|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(1),
	datab => \IR|irRec|Equal5~0_combout\,
	datac => \IR|irRec|data_counter\(2),
	datad => \IR|irRec|Equal4~8_combout\,
	combout => \IR|irRec|Equal5~1_combout\);

-- Location: LCCOMB_X56_Y49_N10
\IR|irRec|data_reg[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_reg[19]~1_combout\ = (\IR|irRec|Equal5~1_combout\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|irRec|Equal5~1_combout\,
	datad => \reset~input_o\,
	combout => \IR|irRec|data_reg[19]~1_combout\);

-- Location: LCCOMB_X56_Y50_N4
\IR|irRec|data_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[0]~0_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~0_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Add3~0_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(0),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[0]~0_combout\);

-- Location: FF_X56_Y50_N5
\IR|irRec|data_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(0));

-- Location: LCCOMB_X56_Y50_N6
\IR|irRec|data_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_counter[1]~5_combout\ = (!\IR|irRec|data_reg[19]~1_combout\ & ((\IR|irRec|state.check_data~q\ & (\IR|irRec|Add3~2_combout\)) # (!\IR|irRec|state.check_data~q\ & ((\IR|irRec|data_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Add3~2_combout\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|data_counter\(1),
	datad => \IR|irRec|data_reg[19]~1_combout\,
	combout => \IR|irRec|data_counter[1]~5_combout\);

-- Location: FF_X56_Y50_N7
\IR|irRec|data_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_counter[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_counter\(1));

-- Location: LCCOMB_X56_Y50_N16
\IR|irRec|Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal4~9_combout\ = (!\IR|irRec|data_counter\(5) & (\IR|irRec|data_counter\(3) & (\IR|irRec|data_counter\(0) & \IR|irRec|data_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(5),
	datab => \IR|irRec|data_counter\(3),
	datac => \IR|irRec|data_counter\(0),
	datad => \IR|irRec|data_counter\(4),
	combout => \IR|irRec|Equal4~9_combout\);

-- Location: LCCOMB_X56_Y50_N2
\IR|irRec|Equal4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal4~10_combout\ = (\IR|irRec|data_counter\(1) & (\IR|irRec|Equal4~9_combout\ & (\IR|irRec|data_counter\(2) & \IR|irRec|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_counter\(1),
	datab => \IR|irRec|Equal4~9_combout\,
	datac => \IR|irRec|data_counter\(2),
	datad => \IR|irRec|Equal4~8_combout\,
	combout => \IR|irRec|Equal4~10_combout\);

-- Location: LCCOMB_X46_Y51_N14
\IR|irRec|LC_on_counter[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[0]~19_combout\ = \IR|irRec|LC_on_counter\(0) $ (VCC)
-- \IR|irRec|LC_on_counter[0]~20\ = CARRY(\IR|irRec|LC_on_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(0),
	datad => VCC,
	combout => \IR|irRec|LC_on_counter[0]~19_combout\,
	cout => \IR|irRec|LC_on_counter[0]~20\);

-- Location: LCCOMB_X46_Y50_N10
\IR|irRec|LC_on_counter[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[14]~47_combout\ = (\IR|irRec|LC_on_counter\(14) & (\IR|irRec|LC_on_counter[13]~46\ $ (GND))) # (!\IR|irRec|LC_on_counter\(14) & (!\IR|irRec|LC_on_counter[13]~46\ & VCC))
-- \IR|irRec|LC_on_counter[14]~48\ = CARRY((\IR|irRec|LC_on_counter\(14) & !\IR|irRec|LC_on_counter[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(14),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[13]~46\,
	combout => \IR|irRec|LC_on_counter[14]~47_combout\,
	cout => \IR|irRec|LC_on_counter[14]~48\);

-- Location: LCCOMB_X46_Y50_N12
\IR|irRec|LC_on_counter[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[15]~50_combout\ = (\IR|irRec|LC_on_counter\(15) & (!\IR|irRec|LC_on_counter[14]~48\)) # (!\IR|irRec|LC_on_counter\(15) & ((\IR|irRec|LC_on_counter[14]~48\) # (GND)))
-- \IR|irRec|LC_on_counter[15]~51\ = CARRY((!\IR|irRec|LC_on_counter[14]~48\) # (!\IR|irRec|LC_on_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(15),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[14]~48\,
	combout => \IR|irRec|LC_on_counter[15]~50_combout\,
	cout => \IR|irRec|LC_on_counter[15]~51\);

-- Location: FF_X46_Y50_N13
\IR|irRec|LC_on_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[15]~50_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(15));

-- Location: LCCOMB_X46_Y51_N4
\IR|irRec|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal0~4_combout\ = (!\IR|irRec|LC_on_counter\(15) & (!\IR|irRec|LC_on_counter\(1) & (!\IR|irRec|LC_on_counter\(0) & !\IR|irRec|LC_on_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(15),
	datab => \IR|irRec|LC_on_counter\(1),
	datac => \IR|irRec|LC_on_counter\(0),
	datad => \IR|irRec|LC_on_counter\(2),
	combout => \IR|irRec|Equal0~4_combout\);

-- Location: LCCOMB_X46_Y50_N14
\IR|irRec|LC_on_counter[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[16]~52_combout\ = (\IR|irRec|LC_on_counter\(16) & (\IR|irRec|LC_on_counter[15]~51\ $ (GND))) # (!\IR|irRec|LC_on_counter\(16) & (!\IR|irRec|LC_on_counter[15]~51\ & VCC))
-- \IR|irRec|LC_on_counter[16]~53\ = CARRY((\IR|irRec|LC_on_counter\(16) & !\IR|irRec|LC_on_counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(16),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[15]~51\,
	combout => \IR|irRec|LC_on_counter[16]~52_combout\,
	cout => \IR|irRec|LC_on_counter[16]~53\);

-- Location: FF_X46_Y50_N15
\IR|irRec|LC_on_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[16]~52_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(16));

-- Location: LCCOMB_X46_Y50_N16
\IR|irRec|LC_on_counter[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[17]~54_combout\ = (\IR|irRec|LC_on_counter\(17) & (!\IR|irRec|LC_on_counter[16]~53\)) # (!\IR|irRec|LC_on_counter\(17) & ((\IR|irRec|LC_on_counter[16]~53\) # (GND)))
-- \IR|irRec|LC_on_counter[17]~55\ = CARRY((!\IR|irRec|LC_on_counter[16]~53\) # (!\IR|irRec|LC_on_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(17),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[16]~53\,
	combout => \IR|irRec|LC_on_counter[17]~54_combout\,
	cout => \IR|irRec|LC_on_counter[17]~55\);

-- Location: FF_X46_Y50_N17
\IR|irRec|LC_on_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[17]~54_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(17));

-- Location: LCCOMB_X46_Y50_N18
\IR|irRec|LC_on_counter[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[18]~56_combout\ = \IR|irRec|LC_on_counter[17]~55\ $ (!\IR|irRec|LC_on_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \IR|irRec|LC_on_counter\(18),
	cin => \IR|irRec|LC_on_counter[17]~55\,
	combout => \IR|irRec|LC_on_counter[18]~56_combout\);

-- Location: FF_X46_Y50_N19
\IR|irRec|LC_on_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[18]~56_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(18));

-- Location: LCCOMB_X46_Y50_N22
\IR|irRec|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal0~5_combout\ = (\IR|irRec|Equal0~4_combout\ & (\IR|irRec|LC_on_counter\(17) & (\IR|irRec|LC_on_counter\(16) & \IR|irRec|LC_on_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Equal0~4_combout\,
	datab => \IR|irRec|LC_on_counter\(17),
	datac => \IR|irRec|LC_on_counter\(16),
	datad => \IR|irRec|LC_on_counter\(18),
	combout => \IR|irRec|Equal0~5_combout\);

-- Location: LCCOMB_X46_Y51_N8
\IR|irRec|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal0~0_combout\ = (\IR|irRec|LC_on_counter\(4) & (\IR|irRec|LC_on_counter\(5) & (\IR|irRec|LC_on_counter\(6) & \IR|irRec|LC_on_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(4),
	datab => \IR|irRec|LC_on_counter\(5),
	datac => \IR|irRec|LC_on_counter\(6),
	datad => \IR|irRec|LC_on_counter\(3),
	combout => \IR|irRec|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y50_N20
\IR|irRec|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal0~1_combout\ = (!\IR|irRec|LC_on_counter\(9) & (!\IR|irRec|LC_on_counter\(11) & (!\IR|irRec|LC_on_counter\(8) & !\IR|irRec|LC_on_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(9),
	datab => \IR|irRec|LC_on_counter\(11),
	datac => \IR|irRec|LC_on_counter\(8),
	datad => \IR|irRec|LC_on_counter\(10),
	combout => \IR|irRec|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y50_N30
\IR|irRec|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal0~2_combout\ = (!\IR|irRec|LC_on_counter\(14) & (\IR|irRec|Equal0~1_combout\ & (!\IR|irRec|LC_on_counter\(13) & !\IR|irRec|LC_on_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(14),
	datab => \IR|irRec|Equal0~1_combout\,
	datac => \IR|irRec|LC_on_counter\(13),
	datad => \IR|irRec|LC_on_counter\(12),
	combout => \IR|irRec|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y51_N2
\IR|irRec|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal0~3_combout\ = (\IR|irRec|LC_on_counter\(7) & (\IR|irRec|Equal0~0_combout\ & \IR|irRec|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(7),
	datac => \IR|irRec|Equal0~0_combout\,
	datad => \IR|irRec|Equal0~2_combout\,
	combout => \IR|irRec|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y51_N6
\IR|irRec|LC_on_counter[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[14]~49_combout\ = (((\IR|irRec|Equal0~5_combout\ & \IR|irRec|Equal0~3_combout\)) # (!\IR|irRec|state.read_LC_on~q\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \IR|irRec|state.read_LC_on~q\,
	datac => \IR|irRec|Equal0~5_combout\,
	datad => \IR|irRec|Equal0~3_combout\,
	combout => \IR|irRec|LC_on_counter[14]~49_combout\);

-- Location: FF_X46_Y51_N15
\IR|irRec|LC_on_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[0]~19_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(0));

-- Location: LCCOMB_X46_Y51_N16
\IR|irRec|LC_on_counter[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[1]~21_combout\ = (\IR|irRec|LC_on_counter\(1) & (!\IR|irRec|LC_on_counter[0]~20\)) # (!\IR|irRec|LC_on_counter\(1) & ((\IR|irRec|LC_on_counter[0]~20\) # (GND)))
-- \IR|irRec|LC_on_counter[1]~22\ = CARRY((!\IR|irRec|LC_on_counter[0]~20\) # (!\IR|irRec|LC_on_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(1),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[0]~20\,
	combout => \IR|irRec|LC_on_counter[1]~21_combout\,
	cout => \IR|irRec|LC_on_counter[1]~22\);

-- Location: FF_X46_Y51_N17
\IR|irRec|LC_on_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[1]~21_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(1));

-- Location: LCCOMB_X46_Y51_N18
\IR|irRec|LC_on_counter[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[2]~23_combout\ = (\IR|irRec|LC_on_counter\(2) & (\IR|irRec|LC_on_counter[1]~22\ $ (GND))) # (!\IR|irRec|LC_on_counter\(2) & (!\IR|irRec|LC_on_counter[1]~22\ & VCC))
-- \IR|irRec|LC_on_counter[2]~24\ = CARRY((\IR|irRec|LC_on_counter\(2) & !\IR|irRec|LC_on_counter[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(2),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[1]~22\,
	combout => \IR|irRec|LC_on_counter[2]~23_combout\,
	cout => \IR|irRec|LC_on_counter[2]~24\);

-- Location: FF_X46_Y51_N19
\IR|irRec|LC_on_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[2]~23_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(2));

-- Location: LCCOMB_X46_Y51_N20
\IR|irRec|LC_on_counter[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[3]~25_combout\ = (\IR|irRec|LC_on_counter\(3) & (!\IR|irRec|LC_on_counter[2]~24\)) # (!\IR|irRec|LC_on_counter\(3) & ((\IR|irRec|LC_on_counter[2]~24\) # (GND)))
-- \IR|irRec|LC_on_counter[3]~26\ = CARRY((!\IR|irRec|LC_on_counter[2]~24\) # (!\IR|irRec|LC_on_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(3),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[2]~24\,
	combout => \IR|irRec|LC_on_counter[3]~25_combout\,
	cout => \IR|irRec|LC_on_counter[3]~26\);

-- Location: FF_X46_Y51_N21
\IR|irRec|LC_on_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[3]~25_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(3));

-- Location: LCCOMB_X46_Y51_N22
\IR|irRec|LC_on_counter[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[4]~27_combout\ = (\IR|irRec|LC_on_counter\(4) & (\IR|irRec|LC_on_counter[3]~26\ $ (GND))) # (!\IR|irRec|LC_on_counter\(4) & (!\IR|irRec|LC_on_counter[3]~26\ & VCC))
-- \IR|irRec|LC_on_counter[4]~28\ = CARRY((\IR|irRec|LC_on_counter\(4) & !\IR|irRec|LC_on_counter[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(4),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[3]~26\,
	combout => \IR|irRec|LC_on_counter[4]~27_combout\,
	cout => \IR|irRec|LC_on_counter[4]~28\);

-- Location: FF_X46_Y51_N23
\IR|irRec|LC_on_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[4]~27_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(4));

-- Location: LCCOMB_X46_Y51_N24
\IR|irRec|LC_on_counter[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[5]~29_combout\ = (\IR|irRec|LC_on_counter\(5) & (!\IR|irRec|LC_on_counter[4]~28\)) # (!\IR|irRec|LC_on_counter\(5) & ((\IR|irRec|LC_on_counter[4]~28\) # (GND)))
-- \IR|irRec|LC_on_counter[5]~30\ = CARRY((!\IR|irRec|LC_on_counter[4]~28\) # (!\IR|irRec|LC_on_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(5),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[4]~28\,
	combout => \IR|irRec|LC_on_counter[5]~29_combout\,
	cout => \IR|irRec|LC_on_counter[5]~30\);

-- Location: FF_X46_Y51_N25
\IR|irRec|LC_on_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[5]~29_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(5));

-- Location: LCCOMB_X46_Y51_N26
\IR|irRec|LC_on_counter[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[6]~31_combout\ = (\IR|irRec|LC_on_counter\(6) & (\IR|irRec|LC_on_counter[5]~30\ $ (GND))) # (!\IR|irRec|LC_on_counter\(6) & (!\IR|irRec|LC_on_counter[5]~30\ & VCC))
-- \IR|irRec|LC_on_counter[6]~32\ = CARRY((\IR|irRec|LC_on_counter\(6) & !\IR|irRec|LC_on_counter[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(6),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[5]~30\,
	combout => \IR|irRec|LC_on_counter[6]~31_combout\,
	cout => \IR|irRec|LC_on_counter[6]~32\);

-- Location: FF_X46_Y51_N27
\IR|irRec|LC_on_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[6]~31_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(6));

-- Location: LCCOMB_X46_Y51_N28
\IR|irRec|LC_on_counter[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[7]~33_combout\ = (\IR|irRec|LC_on_counter\(7) & (!\IR|irRec|LC_on_counter[6]~32\)) # (!\IR|irRec|LC_on_counter\(7) & ((\IR|irRec|LC_on_counter[6]~32\) # (GND)))
-- \IR|irRec|LC_on_counter[7]~34\ = CARRY((!\IR|irRec|LC_on_counter[6]~32\) # (!\IR|irRec|LC_on_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(7),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[6]~32\,
	combout => \IR|irRec|LC_on_counter[7]~33_combout\,
	cout => \IR|irRec|LC_on_counter[7]~34\);

-- Location: FF_X46_Y51_N29
\IR|irRec|LC_on_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[7]~33_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(7));

-- Location: LCCOMB_X46_Y51_N30
\IR|irRec|LC_on_counter[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[8]~35_combout\ = (\IR|irRec|LC_on_counter\(8) & (\IR|irRec|LC_on_counter[7]~34\ $ (GND))) # (!\IR|irRec|LC_on_counter\(8) & (!\IR|irRec|LC_on_counter[7]~34\ & VCC))
-- \IR|irRec|LC_on_counter[8]~36\ = CARRY((\IR|irRec|LC_on_counter\(8) & !\IR|irRec|LC_on_counter[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(8),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[7]~34\,
	combout => \IR|irRec|LC_on_counter[8]~35_combout\,
	cout => \IR|irRec|LC_on_counter[8]~36\);

-- Location: FF_X46_Y51_N31
\IR|irRec|LC_on_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[8]~35_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(8));

-- Location: LCCOMB_X46_Y50_N0
\IR|irRec|LC_on_counter[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[9]~37_combout\ = (\IR|irRec|LC_on_counter\(9) & (!\IR|irRec|LC_on_counter[8]~36\)) # (!\IR|irRec|LC_on_counter\(9) & ((\IR|irRec|LC_on_counter[8]~36\) # (GND)))
-- \IR|irRec|LC_on_counter[9]~38\ = CARRY((!\IR|irRec|LC_on_counter[8]~36\) # (!\IR|irRec|LC_on_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(9),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[8]~36\,
	combout => \IR|irRec|LC_on_counter[9]~37_combout\,
	cout => \IR|irRec|LC_on_counter[9]~38\);

-- Location: FF_X46_Y50_N1
\IR|irRec|LC_on_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[9]~37_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(9));

-- Location: LCCOMB_X46_Y50_N2
\IR|irRec|LC_on_counter[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[10]~39_combout\ = (\IR|irRec|LC_on_counter\(10) & (\IR|irRec|LC_on_counter[9]~38\ $ (GND))) # (!\IR|irRec|LC_on_counter\(10) & (!\IR|irRec|LC_on_counter[9]~38\ & VCC))
-- \IR|irRec|LC_on_counter[10]~40\ = CARRY((\IR|irRec|LC_on_counter\(10) & !\IR|irRec|LC_on_counter[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(10),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[9]~38\,
	combout => \IR|irRec|LC_on_counter[10]~39_combout\,
	cout => \IR|irRec|LC_on_counter[10]~40\);

-- Location: FF_X46_Y50_N3
\IR|irRec|LC_on_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[10]~39_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(10));

-- Location: LCCOMB_X46_Y50_N4
\IR|irRec|LC_on_counter[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[11]~41_combout\ = (\IR|irRec|LC_on_counter\(11) & (!\IR|irRec|LC_on_counter[10]~40\)) # (!\IR|irRec|LC_on_counter\(11) & ((\IR|irRec|LC_on_counter[10]~40\) # (GND)))
-- \IR|irRec|LC_on_counter[11]~42\ = CARRY((!\IR|irRec|LC_on_counter[10]~40\) # (!\IR|irRec|LC_on_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(11),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[10]~40\,
	combout => \IR|irRec|LC_on_counter[11]~41_combout\,
	cout => \IR|irRec|LC_on_counter[11]~42\);

-- Location: FF_X46_Y50_N5
\IR|irRec|LC_on_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[11]~41_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(11));

-- Location: LCCOMB_X46_Y50_N6
\IR|irRec|LC_on_counter[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[12]~43_combout\ = (\IR|irRec|LC_on_counter\(12) & (\IR|irRec|LC_on_counter[11]~42\ $ (GND))) # (!\IR|irRec|LC_on_counter\(12) & (!\IR|irRec|LC_on_counter[11]~42\ & VCC))
-- \IR|irRec|LC_on_counter[12]~44\ = CARRY((\IR|irRec|LC_on_counter\(12) & !\IR|irRec|LC_on_counter[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(12),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[11]~42\,
	combout => \IR|irRec|LC_on_counter[12]~43_combout\,
	cout => \IR|irRec|LC_on_counter[12]~44\);

-- Location: FF_X46_Y50_N7
\IR|irRec|LC_on_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[12]~43_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(12));

-- Location: LCCOMB_X46_Y50_N8
\IR|irRec|LC_on_counter[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_on_counter[13]~45_combout\ = (\IR|irRec|LC_on_counter\(13) & (!\IR|irRec|LC_on_counter[12]~44\)) # (!\IR|irRec|LC_on_counter\(13) & ((\IR|irRec|LC_on_counter[12]~44\) # (GND)))
-- \IR|irRec|LC_on_counter[13]~46\ = CARRY((!\IR|irRec|LC_on_counter[12]~44\) # (!\IR|irRec|LC_on_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_on_counter\(13),
	datad => VCC,
	cin => \IR|irRec|LC_on_counter[12]~44\,
	combout => \IR|irRec|LC_on_counter[13]~45_combout\,
	cout => \IR|irRec|LC_on_counter[13]~46\);

-- Location: FF_X46_Y50_N9
\IR|irRec|LC_on_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[13]~45_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(13));

-- Location: FF_X46_Y50_N11
\IR|irRec|LC_on_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_on_counter[14]~47_combout\,
	sclr => \IR|irRec|LC_on_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_on_counter\(14));

-- Location: LCCOMB_X46_Y50_N28
\IR|irRec|nxt_state_proc~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~9_combout\ = (((\IR|irRec|LC_on_counter\(15) & \IR|irRec|LC_on_counter\(16))) # (!\IR|irRec|LC_on_counter\(18))) # (!\IR|irRec|LC_on_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(15),
	datab => \IR|irRec|LC_on_counter\(17),
	datac => \IR|irRec|LC_on_counter\(16),
	datad => \IR|irRec|LC_on_counter\(18),
	combout => \IR|irRec|nxt_state_proc~9_combout\);

-- Location: LCCOMB_X47_Y50_N8
\IR|irRec|nxt_state_proc~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~8_combout\ = (!\IR|irRec|LC_on_counter\(15) & (((\IR|irRec|LC_on_counter\(7) & \IR|irRec|Equal0~0_combout\)) # (!\IR|irRec|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(15),
	datab => \IR|irRec|Equal0~2_combout\,
	datac => \IR|irRec|LC_on_counter\(7),
	datad => \IR|irRec|Equal0~0_combout\,
	combout => \IR|irRec|nxt_state_proc~8_combout\);

-- Location: LCCOMB_X46_Y51_N10
\IR|irRec|nxt_state_proc~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~11_combout\ = ((!\IR|irRec|LC_on_counter\(1) & (!\IR|irRec|LC_on_counter\(0) & !\IR|irRec|LC_on_counter\(2)))) # (!\IR|irRec|LC_on_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(3),
	datab => \IR|irRec|LC_on_counter\(1),
	datac => \IR|irRec|LC_on_counter\(0),
	datad => \IR|irRec|LC_on_counter\(2),
	combout => \IR|irRec|nxt_state_proc~11_combout\);

-- Location: LCCOMB_X46_Y51_N12
\IR|irRec|nxt_state_proc~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~12_combout\ = (!\IR|irRec|LC_on_counter\(6) & (((!\IR|irRec|LC_on_counter\(4) & \IR|irRec|nxt_state_proc~11_combout\)) # (!\IR|irRec|LC_on_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(4),
	datab => \IR|irRec|LC_on_counter\(5),
	datac => \IR|irRec|LC_on_counter\(6),
	datad => \IR|irRec|nxt_state_proc~11_combout\,
	combout => \IR|irRec|nxt_state_proc~12_combout\);

-- Location: LCCOMB_X46_Y50_N26
\IR|irRec|nxt_state_proc~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~13_combout\ = ((!\IR|irRec|LC_on_counter\(8) & ((\IR|irRec|nxt_state_proc~12_combout\) # (!\IR|irRec|LC_on_counter\(7))))) # (!\IR|irRec|LC_on_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(7),
	datab => \IR|irRec|LC_on_counter\(9),
	datac => \IR|irRec|LC_on_counter\(8),
	datad => \IR|irRec|nxt_state_proc~12_combout\,
	combout => \IR|irRec|nxt_state_proc~13_combout\);

-- Location: LCCOMB_X45_Y50_N24
\IR|irRec|nxt_state_proc~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~10_combout\ = ((!\IR|irRec|LC_on_counter\(11)) # (!\IR|irRec|LC_on_counter\(13))) # (!\IR|irRec|LC_on_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(12),
	datac => \IR|irRec|LC_on_counter\(13),
	datad => \IR|irRec|LC_on_counter\(11),
	combout => \IR|irRec|nxt_state_proc~10_combout\);

-- Location: LCCOMB_X46_Y50_N24
\IR|irRec|nxt_state_proc~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~14_combout\ = (!\IR|irRec|LC_on_counter\(16) & ((\IR|irRec|nxt_state_proc~10_combout\) # ((\IR|irRec|nxt_state_proc~13_combout\ & !\IR|irRec|LC_on_counter\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|nxt_state_proc~13_combout\,
	datab => \IR|irRec|LC_on_counter\(10),
	datac => \IR|irRec|LC_on_counter\(16),
	datad => \IR|irRec|nxt_state_proc~10_combout\,
	combout => \IR|irRec|nxt_state_proc~14_combout\);

-- Location: LCCOMB_X47_Y50_N30
\IR|irRec|nxt_state_proc~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~15_combout\ = (\IR|irRec|nxt_state_proc~9_combout\) # ((\IR|irRec|nxt_state_proc~8_combout\) # ((!\IR|irRec|LC_on_counter\(14) & \IR|irRec|nxt_state_proc~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_on_counter\(14),
	datab => \IR|irRec|nxt_state_proc~9_combout\,
	datac => \IR|irRec|nxt_state_proc~8_combout\,
	datad => \IR|irRec|nxt_state_proc~14_combout\,
	combout => \IR|irRec|nxt_state_proc~15_combout\);

-- Location: LCCOMB_X50_Y50_N8
\IR|irRec|state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|state~13_combout\ = (\IR|irRec|state.check_LC_on_count~q\ & ((\IR|irRec|nxt_state_proc~15_combout\) # ((\IR|irRec|state.check_data~q\ & \IR|irRec|Equal4~10_combout\)))) # (!\IR|irRec|state.check_LC_on_count~q\ & (\IR|irRec|state.check_data~q\ & 
-- (\IR|irRec|Equal4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_LC_on_count~q\,
	datab => \IR|irRec|state.check_data~q\,
	datac => \IR|irRec|Equal4~10_combout\,
	datad => \IR|irRec|nxt_state_proc~15_combout\,
	combout => \IR|irRec|state~13_combout\);

-- Location: LCCOMB_X49_Y51_N14
\IR|irRec|LC_off_counter[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[0]~18_combout\ = \IR|irRec|LC_off_counter\(0) $ (VCC)
-- \IR|irRec|LC_off_counter[0]~19\ = CARRY(\IR|irRec|LC_off_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(0),
	datad => VCC,
	combout => \IR|irRec|LC_off_counter[0]~18_combout\,
	cout => \IR|irRec|LC_off_counter[0]~19\);

-- Location: LCCOMB_X49_Y50_N28
\IR|irRec|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal1~5_combout\ = (\IR|irRec|LC_off_counter\(12) & (\IR|irRec|LC_off_counter\(17) & (\IR|irRec|LC_off_counter\(16) & \IR|irRec|LC_off_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(12),
	datab => \IR|irRec|LC_off_counter\(17),
	datac => \IR|irRec|LC_off_counter\(16),
	datad => \IR|irRec|LC_off_counter\(9),
	combout => \IR|irRec|Equal1~5_combout\);

-- Location: LCCOMB_X49_Y51_N8
\IR|irRec|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal1~0_combout\ = (!\IR|irRec|LC_off_counter\(8) & (!\IR|irRec|LC_off_counter\(6) & !\IR|irRec|LC_off_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(8),
	datac => \IR|irRec|LC_off_counter\(6),
	datad => \IR|irRec|LC_off_counter\(7),
	combout => \IR|irRec|Equal1~0_combout\);

-- Location: LCCOMB_X49_Y50_N22
\IR|irRec|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal1~3_combout\ = (!\IR|irRec|LC_off_counter\(14) & (!\IR|irRec|LC_off_counter\(13) & (!\IR|irRec|LC_off_counter\(11) & !\IR|irRec|LC_off_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(14),
	datab => \IR|irRec|LC_off_counter\(13),
	datac => \IR|irRec|LC_off_counter\(11),
	datad => \IR|irRec|LC_off_counter\(10),
	combout => \IR|irRec|Equal1~3_combout\);

-- Location: LCCOMB_X49_Y51_N2
\IR|irRec|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal1~1_combout\ = (!\IR|irRec|LC_off_counter\(3) & (!\IR|irRec|LC_off_counter\(2) & (!\IR|irRec|LC_off_counter\(0) & !\IR|irRec|LC_off_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(3),
	datab => \IR|irRec|LC_off_counter\(2),
	datac => \IR|irRec|LC_off_counter\(0),
	datad => \IR|irRec|LC_off_counter\(1),
	combout => \IR|irRec|Equal1~1_combout\);

-- Location: LCCOMB_X49_Y51_N12
\IR|irRec|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal1~2_combout\ = (!\IR|irRec|LC_off_counter\(5) & \IR|irRec|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(5),
	datad => \IR|irRec|Equal1~1_combout\,
	combout => \IR|irRec|Equal1~2_combout\);

-- Location: LCCOMB_X49_Y51_N10
\IR|irRec|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal1~4_combout\ = (\IR|irRec|LC_off_counter\(4) & (\IR|irRec|Equal1~0_combout\ & (\IR|irRec|Equal1~3_combout\ & \IR|irRec|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(4),
	datab => \IR|irRec|Equal1~0_combout\,
	datac => \IR|irRec|Equal1~3_combout\,
	datad => \IR|irRec|Equal1~2_combout\,
	combout => \IR|irRec|Equal1~4_combout\);

-- Location: LCCOMB_X50_Y50_N4
\IR|irRec|LC_off_counter[8]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[8]~46_combout\ = (\reset~input_o\ & \IR|irRec|state.read_LC_off~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \IR|irRec|state.read_LC_off~q\,
	combout => \IR|irRec|LC_off_counter[8]~46_combout\);

-- Location: LCCOMB_X49_Y50_N30
\IR|irRec|LC_off_counter[8]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[8]~47_combout\ = ((\IR|irRec|LC_off_counter\(15) & (\IR|irRec|Equal1~5_combout\ & \IR|irRec|Equal1~4_combout\))) # (!\IR|irRec|LC_off_counter[8]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(15),
	datab => \IR|irRec|Equal1~5_combout\,
	datac => \IR|irRec|Equal1~4_combout\,
	datad => \IR|irRec|LC_off_counter[8]~46_combout\,
	combout => \IR|irRec|LC_off_counter[8]~47_combout\);

-- Location: FF_X49_Y51_N15
\IR|irRec|LC_off_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[0]~18_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(0));

-- Location: LCCOMB_X49_Y51_N16
\IR|irRec|LC_off_counter[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[1]~20_combout\ = (\IR|irRec|LC_off_counter\(1) & (!\IR|irRec|LC_off_counter[0]~19\)) # (!\IR|irRec|LC_off_counter\(1) & ((\IR|irRec|LC_off_counter[0]~19\) # (GND)))
-- \IR|irRec|LC_off_counter[1]~21\ = CARRY((!\IR|irRec|LC_off_counter[0]~19\) # (!\IR|irRec|LC_off_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(1),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[0]~19\,
	combout => \IR|irRec|LC_off_counter[1]~20_combout\,
	cout => \IR|irRec|LC_off_counter[1]~21\);

-- Location: FF_X49_Y51_N17
\IR|irRec|LC_off_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[1]~20_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(1));

-- Location: LCCOMB_X49_Y51_N18
\IR|irRec|LC_off_counter[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[2]~22_combout\ = (\IR|irRec|LC_off_counter\(2) & (\IR|irRec|LC_off_counter[1]~21\ $ (GND))) # (!\IR|irRec|LC_off_counter\(2) & (!\IR|irRec|LC_off_counter[1]~21\ & VCC))
-- \IR|irRec|LC_off_counter[2]~23\ = CARRY((\IR|irRec|LC_off_counter\(2) & !\IR|irRec|LC_off_counter[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(2),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[1]~21\,
	combout => \IR|irRec|LC_off_counter[2]~22_combout\,
	cout => \IR|irRec|LC_off_counter[2]~23\);

-- Location: FF_X49_Y51_N19
\IR|irRec|LC_off_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[2]~22_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(2));

-- Location: LCCOMB_X49_Y51_N20
\IR|irRec|LC_off_counter[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[3]~24_combout\ = (\IR|irRec|LC_off_counter\(3) & (!\IR|irRec|LC_off_counter[2]~23\)) # (!\IR|irRec|LC_off_counter\(3) & ((\IR|irRec|LC_off_counter[2]~23\) # (GND)))
-- \IR|irRec|LC_off_counter[3]~25\ = CARRY((!\IR|irRec|LC_off_counter[2]~23\) # (!\IR|irRec|LC_off_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(3),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[2]~23\,
	combout => \IR|irRec|LC_off_counter[3]~24_combout\,
	cout => \IR|irRec|LC_off_counter[3]~25\);

-- Location: FF_X49_Y51_N21
\IR|irRec|LC_off_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[3]~24_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(3));

-- Location: LCCOMB_X49_Y51_N22
\IR|irRec|LC_off_counter[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[4]~26_combout\ = (\IR|irRec|LC_off_counter\(4) & (\IR|irRec|LC_off_counter[3]~25\ $ (GND))) # (!\IR|irRec|LC_off_counter\(4) & (!\IR|irRec|LC_off_counter[3]~25\ & VCC))
-- \IR|irRec|LC_off_counter[4]~27\ = CARRY((\IR|irRec|LC_off_counter\(4) & !\IR|irRec|LC_off_counter[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(4),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[3]~25\,
	combout => \IR|irRec|LC_off_counter[4]~26_combout\,
	cout => \IR|irRec|LC_off_counter[4]~27\);

-- Location: FF_X49_Y51_N23
\IR|irRec|LC_off_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[4]~26_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(4));

-- Location: LCCOMB_X49_Y51_N24
\IR|irRec|LC_off_counter[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[5]~28_combout\ = (\IR|irRec|LC_off_counter\(5) & (!\IR|irRec|LC_off_counter[4]~27\)) # (!\IR|irRec|LC_off_counter\(5) & ((\IR|irRec|LC_off_counter[4]~27\) # (GND)))
-- \IR|irRec|LC_off_counter[5]~29\ = CARRY((!\IR|irRec|LC_off_counter[4]~27\) # (!\IR|irRec|LC_off_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(5),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[4]~27\,
	combout => \IR|irRec|LC_off_counter[5]~28_combout\,
	cout => \IR|irRec|LC_off_counter[5]~29\);

-- Location: FF_X49_Y51_N25
\IR|irRec|LC_off_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[5]~28_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(5));

-- Location: LCCOMB_X49_Y51_N26
\IR|irRec|LC_off_counter[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[6]~30_combout\ = (\IR|irRec|LC_off_counter\(6) & (\IR|irRec|LC_off_counter[5]~29\ $ (GND))) # (!\IR|irRec|LC_off_counter\(6) & (!\IR|irRec|LC_off_counter[5]~29\ & VCC))
-- \IR|irRec|LC_off_counter[6]~31\ = CARRY((\IR|irRec|LC_off_counter\(6) & !\IR|irRec|LC_off_counter[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(6),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[5]~29\,
	combout => \IR|irRec|LC_off_counter[6]~30_combout\,
	cout => \IR|irRec|LC_off_counter[6]~31\);

-- Location: FF_X49_Y51_N27
\IR|irRec|LC_off_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[6]~30_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(6));

-- Location: LCCOMB_X49_Y51_N28
\IR|irRec|LC_off_counter[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[7]~32_combout\ = (\IR|irRec|LC_off_counter\(7) & (!\IR|irRec|LC_off_counter[6]~31\)) # (!\IR|irRec|LC_off_counter\(7) & ((\IR|irRec|LC_off_counter[6]~31\) # (GND)))
-- \IR|irRec|LC_off_counter[7]~33\ = CARRY((!\IR|irRec|LC_off_counter[6]~31\) # (!\IR|irRec|LC_off_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(7),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[6]~31\,
	combout => \IR|irRec|LC_off_counter[7]~32_combout\,
	cout => \IR|irRec|LC_off_counter[7]~33\);

-- Location: FF_X49_Y51_N29
\IR|irRec|LC_off_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[7]~32_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(7));

-- Location: LCCOMB_X49_Y51_N30
\IR|irRec|LC_off_counter[8]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[8]~34_combout\ = (\IR|irRec|LC_off_counter\(8) & (\IR|irRec|LC_off_counter[7]~33\ $ (GND))) # (!\IR|irRec|LC_off_counter\(8) & (!\IR|irRec|LC_off_counter[7]~33\ & VCC))
-- \IR|irRec|LC_off_counter[8]~35\ = CARRY((\IR|irRec|LC_off_counter\(8) & !\IR|irRec|LC_off_counter[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(8),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[7]~33\,
	combout => \IR|irRec|LC_off_counter[8]~34_combout\,
	cout => \IR|irRec|LC_off_counter[8]~35\);

-- Location: FF_X49_Y51_N31
\IR|irRec|LC_off_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[8]~34_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(8));

-- Location: LCCOMB_X49_Y50_N0
\IR|irRec|LC_off_counter[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[9]~36_combout\ = (\IR|irRec|LC_off_counter\(9) & (!\IR|irRec|LC_off_counter[8]~35\)) # (!\IR|irRec|LC_off_counter\(9) & ((\IR|irRec|LC_off_counter[8]~35\) # (GND)))
-- \IR|irRec|LC_off_counter[9]~37\ = CARRY((!\IR|irRec|LC_off_counter[8]~35\) # (!\IR|irRec|LC_off_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(9),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[8]~35\,
	combout => \IR|irRec|LC_off_counter[9]~36_combout\,
	cout => \IR|irRec|LC_off_counter[9]~37\);

-- Location: FF_X49_Y50_N1
\IR|irRec|LC_off_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[9]~36_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(9));

-- Location: LCCOMB_X49_Y50_N2
\IR|irRec|LC_off_counter[10]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[10]~38_combout\ = (\IR|irRec|LC_off_counter\(10) & (\IR|irRec|LC_off_counter[9]~37\ $ (GND))) # (!\IR|irRec|LC_off_counter\(10) & (!\IR|irRec|LC_off_counter[9]~37\ & VCC))
-- \IR|irRec|LC_off_counter[10]~39\ = CARRY((\IR|irRec|LC_off_counter\(10) & !\IR|irRec|LC_off_counter[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(10),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[9]~37\,
	combout => \IR|irRec|LC_off_counter[10]~38_combout\,
	cout => \IR|irRec|LC_off_counter[10]~39\);

-- Location: FF_X49_Y50_N3
\IR|irRec|LC_off_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[10]~38_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(10));

-- Location: LCCOMB_X49_Y50_N4
\IR|irRec|LC_off_counter[11]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[11]~40_combout\ = (\IR|irRec|LC_off_counter\(11) & (!\IR|irRec|LC_off_counter[10]~39\)) # (!\IR|irRec|LC_off_counter\(11) & ((\IR|irRec|LC_off_counter[10]~39\) # (GND)))
-- \IR|irRec|LC_off_counter[11]~41\ = CARRY((!\IR|irRec|LC_off_counter[10]~39\) # (!\IR|irRec|LC_off_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(11),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[10]~39\,
	combout => \IR|irRec|LC_off_counter[11]~40_combout\,
	cout => \IR|irRec|LC_off_counter[11]~41\);

-- Location: FF_X49_Y50_N5
\IR|irRec|LC_off_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[11]~40_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(11));

-- Location: LCCOMB_X49_Y50_N6
\IR|irRec|LC_off_counter[12]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[12]~42_combout\ = (\IR|irRec|LC_off_counter\(12) & (\IR|irRec|LC_off_counter[11]~41\ $ (GND))) # (!\IR|irRec|LC_off_counter\(12) & (!\IR|irRec|LC_off_counter[11]~41\ & VCC))
-- \IR|irRec|LC_off_counter[12]~43\ = CARRY((\IR|irRec|LC_off_counter\(12) & !\IR|irRec|LC_off_counter[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(12),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[11]~41\,
	combout => \IR|irRec|LC_off_counter[12]~42_combout\,
	cout => \IR|irRec|LC_off_counter[12]~43\);

-- Location: FF_X49_Y50_N7
\IR|irRec|LC_off_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[12]~42_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(12));

-- Location: LCCOMB_X49_Y50_N8
\IR|irRec|LC_off_counter[13]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[13]~44_combout\ = (\IR|irRec|LC_off_counter\(13) & (!\IR|irRec|LC_off_counter[12]~43\)) # (!\IR|irRec|LC_off_counter\(13) & ((\IR|irRec|LC_off_counter[12]~43\) # (GND)))
-- \IR|irRec|LC_off_counter[13]~45\ = CARRY((!\IR|irRec|LC_off_counter[12]~43\) # (!\IR|irRec|LC_off_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(13),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[12]~43\,
	combout => \IR|irRec|LC_off_counter[13]~44_combout\,
	cout => \IR|irRec|LC_off_counter[13]~45\);

-- Location: FF_X49_Y50_N9
\IR|irRec|LC_off_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[13]~44_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(13));

-- Location: LCCOMB_X49_Y50_N10
\IR|irRec|LC_off_counter[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[14]~48_combout\ = (\IR|irRec|LC_off_counter\(14) & (\IR|irRec|LC_off_counter[13]~45\ $ (GND))) # (!\IR|irRec|LC_off_counter\(14) & (!\IR|irRec|LC_off_counter[13]~45\ & VCC))
-- \IR|irRec|LC_off_counter[14]~49\ = CARRY((\IR|irRec|LC_off_counter\(14) & !\IR|irRec|LC_off_counter[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(14),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[13]~45\,
	combout => \IR|irRec|LC_off_counter[14]~48_combout\,
	cout => \IR|irRec|LC_off_counter[14]~49\);

-- Location: FF_X49_Y50_N11
\IR|irRec|LC_off_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[14]~48_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(14));

-- Location: LCCOMB_X49_Y50_N12
\IR|irRec|LC_off_counter[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[15]~50_combout\ = (\IR|irRec|LC_off_counter\(15) & (!\IR|irRec|LC_off_counter[14]~49\)) # (!\IR|irRec|LC_off_counter\(15) & ((\IR|irRec|LC_off_counter[14]~49\) # (GND)))
-- \IR|irRec|LC_off_counter[15]~51\ = CARRY((!\IR|irRec|LC_off_counter[14]~49\) # (!\IR|irRec|LC_off_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(15),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[14]~49\,
	combout => \IR|irRec|LC_off_counter[15]~50_combout\,
	cout => \IR|irRec|LC_off_counter[15]~51\);

-- Location: FF_X49_Y50_N13
\IR|irRec|LC_off_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[15]~50_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(15));

-- Location: LCCOMB_X49_Y50_N14
\IR|irRec|LC_off_counter[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[16]~52_combout\ = (\IR|irRec|LC_off_counter\(16) & (\IR|irRec|LC_off_counter[15]~51\ $ (GND))) # (!\IR|irRec|LC_off_counter\(16) & (!\IR|irRec|LC_off_counter[15]~51\ & VCC))
-- \IR|irRec|LC_off_counter[16]~53\ = CARRY((\IR|irRec|LC_off_counter\(16) & !\IR|irRec|LC_off_counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(16),
	datad => VCC,
	cin => \IR|irRec|LC_off_counter[15]~51\,
	combout => \IR|irRec|LC_off_counter[16]~52_combout\,
	cout => \IR|irRec|LC_off_counter[16]~53\);

-- Location: FF_X49_Y50_N15
\IR|irRec|LC_off_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[16]~52_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(16));

-- Location: LCCOMB_X49_Y50_N16
\IR|irRec|LC_off_counter[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|LC_off_counter[17]~54_combout\ = \IR|irRec|LC_off_counter[16]~53\ $ (\IR|irRec|LC_off_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \IR|irRec|LC_off_counter\(17),
	cin => \IR|irRec|LC_off_counter[16]~53\,
	combout => \IR|irRec|LC_off_counter[17]~54_combout\);

-- Location: FF_X49_Y50_N17
\IR|irRec|LC_off_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|LC_off_counter[17]~54_combout\,
	sclr => \IR|irRec|LC_off_counter[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|LC_off_counter\(17));

-- Location: LCCOMB_X49_Y51_N6
\IR|irRec|nxt_state_proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~2_combout\ = (\IR|irRec|LC_off_counter\(9) & ((\IR|irRec|LC_off_counter\(4)) # ((\IR|irRec|LC_off_counter\(5)) # (!\IR|irRec|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(4),
	datab => \IR|irRec|LC_off_counter\(9),
	datac => \IR|irRec|Equal1~0_combout\,
	datad => \IR|irRec|LC_off_counter\(5),
	combout => \IR|irRec|nxt_state_proc~2_combout\);

-- Location: LCCOMB_X49_Y51_N4
\IR|irRec|nxt_state_proc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~3_combout\ = (((!\IR|irRec|LC_off_counter\(7)) # (!\IR|irRec|LC_off_counter\(6))) # (!\IR|irRec|LC_off_counter\(9))) # (!\IR|irRec|LC_off_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(8),
	datab => \IR|irRec|LC_off_counter\(9),
	datac => \IR|irRec|LC_off_counter\(6),
	datad => \IR|irRec|LC_off_counter\(7),
	combout => \IR|irRec|nxt_state_proc~3_combout\);

-- Location: LCCOMB_X49_Y51_N0
\IR|irRec|nxt_state_proc~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~16_combout\ = (\IR|irRec|nxt_state_proc~3_combout\) # ((!\IR|irRec|LC_off_counter\(4) & (!\IR|irRec|LC_off_counter\(5) & \IR|irRec|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(4),
	datab => \IR|irRec|LC_off_counter\(5),
	datac => \IR|irRec|nxt_state_proc~3_combout\,
	datad => \IR|irRec|Equal1~1_combout\,
	combout => \IR|irRec|nxt_state_proc~16_combout\);

-- Location: LCCOMB_X49_Y50_N26
\IR|irRec|nxt_state_proc~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~4_combout\ = (\IR|irRec|LC_off_counter\(15) & ((\IR|irRec|LC_off_counter\(10)) # ((\IR|irRec|LC_off_counter\(11))))) # (!\IR|irRec|LC_off_counter\(15) & (\IR|irRec|LC_off_counter\(11) & ((\IR|irRec|LC_off_counter\(10)) # 
-- (!\IR|irRec|nxt_state_proc~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(15),
	datab => \IR|irRec|LC_off_counter\(10),
	datac => \IR|irRec|LC_off_counter\(11),
	datad => \IR|irRec|nxt_state_proc~16_combout\,
	combout => \IR|irRec|nxt_state_proc~4_combout\);

-- Location: LCCOMB_X49_Y50_N20
\IR|irRec|nxt_state_proc~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~5_combout\ = (\IR|irRec|LC_off_counter\(14) & (((\IR|irRec|nxt_state_proc~4_combout\) # (\IR|irRec|LC_off_counter\(12))))) # (!\IR|irRec|LC_off_counter\(14) & (\IR|irRec|LC_off_counter\(12) & ((\IR|irRec|nxt_state_proc~2_combout\) 
-- # (\IR|irRec|nxt_state_proc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(14),
	datab => \IR|irRec|nxt_state_proc~2_combout\,
	datac => \IR|irRec|nxt_state_proc~4_combout\,
	datad => \IR|irRec|LC_off_counter\(12),
	combout => \IR|irRec|nxt_state_proc~5_combout\);

-- Location: LCCOMB_X49_Y50_N18
\IR|irRec|nxt_state_proc~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~6_combout\ = (\IR|irRec|LC_off_counter\(14) & ((\IR|irRec|LC_off_counter\(15)) # ((!\IR|irRec|nxt_state_proc~5_combout\ & !\IR|irRec|LC_off_counter\(13))))) # (!\IR|irRec|LC_off_counter\(14) & 
-- ((\IR|irRec|nxt_state_proc~5_combout\) # ((\IR|irRec|LC_off_counter\(13)) # (!\IR|irRec|LC_off_counter\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|LC_off_counter\(14),
	datab => \IR|irRec|nxt_state_proc~5_combout\,
	datac => \IR|irRec|LC_off_counter\(13),
	datad => \IR|irRec|LC_off_counter\(15),
	combout => \IR|irRec|nxt_state_proc~6_combout\);

-- Location: LCCOMB_X49_Y50_N24
\IR|irRec|nxt_state_proc~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|nxt_state_proc~7_combout\ = ((\IR|irRec|nxt_state_proc~6_combout\) # (!\IR|irRec|LC_off_counter\(16))) # (!\IR|irRec|LC_off_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|LC_off_counter\(17),
	datac => \IR|irRec|LC_off_counter\(16),
	datad => \IR|irRec|nxt_state_proc~6_combout\,
	combout => \IR|irRec|nxt_state_proc~7_combout\);

-- Location: LCCOMB_X50_Y50_N12
\IR|irRec|state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|state~14_combout\ = (\IR|irRec|state~12_combout\ & (!\IR|irRec|state~13_combout\ & ((!\IR|irRec|nxt_state_proc~7_combout\) # (!\IR|irRec|state.check_LC_off_count~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state~12_combout\,
	datab => \IR|irRec|state.check_LC_off_count~q\,
	datac => \IR|irRec|state~13_combout\,
	datad => \IR|irRec|nxt_state_proc~7_combout\,
	combout => \IR|irRec|state~14_combout\);

-- Location: FF_X50_Y50_N13
\IR|irRec|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|state.init~q\);

-- Location: LCCOMB_X50_Y50_N0
\IR|irRec|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Selector1~0_combout\ = (\IR|irRec|data~q\ & (((\IR|irRec|state.read_LC_on~q\ & !\IR|irRec|data_follow~q\)))) # (!\IR|irRec|data~q\ & (((\IR|irRec|state.read_LC_on~q\)) # (!\IR|irRec|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.init~q\,
	datab => \IR|irRec|data~q\,
	datac => \IR|irRec|state.read_LC_on~q\,
	datad => \IR|irRec|data_follow~q\,
	combout => \IR|irRec|Selector1~0_combout\);

-- Location: FF_X50_Y50_N1
\IR|irRec|state.read_LC_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|Selector1~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|state.read_LC_on~q\);

-- Location: LCCOMB_X50_Y50_N26
\IR|irRec|state~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|state~11_combout\ = (\IR|irRec|data~q\ & (\IR|irRec|data_follow~q\ & (\reset~input_o\ & \IR|irRec|state.read_LC_on~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data~q\,
	datab => \IR|irRec|data_follow~q\,
	datac => \reset~input_o\,
	datad => \IR|irRec|state.read_LC_on~q\,
	combout => \IR|irRec|state~11_combout\);

-- Location: FF_X50_Y50_N27
\IR|irRec|state.check_LC_on_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|state.check_LC_on_count~q\);

-- Location: LCCOMB_X50_Y50_N18
\IR|irRec|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Selector2~0_combout\ = (\IR|irRec|state.check_LC_on_count~q\ & (((\IR|irRec|data~q\ & \IR|irRec|state.read_LC_off~q\)) # (!\IR|irRec|nxt_state_proc~15_combout\))) # (!\IR|irRec|state.check_LC_on_count~q\ & (\IR|irRec|data~q\ & 
-- (\IR|irRec|state.read_LC_off~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_LC_on_count~q\,
	datab => \IR|irRec|data~q\,
	datac => \IR|irRec|state.read_LC_off~q\,
	datad => \IR|irRec|nxt_state_proc~15_combout\,
	combout => \IR|irRec|Selector2~0_combout\);

-- Location: FF_X50_Y50_N19
\IR|irRec|state.read_LC_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|Selector2~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|state.read_LC_off~q\);

-- Location: LCCOMB_X50_Y50_N20
\IR|irRec|state~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|state~10_combout\ = (!\IR|irRec|data~q\ & (\reset~input_o\ & \IR|irRec|state.read_LC_off~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data~q\,
	datac => \reset~input_o\,
	datad => \IR|irRec|state.read_LC_off~q\,
	combout => \IR|irRec|state~10_combout\);

-- Location: FF_X50_Y50_N21
\IR|irRec|state.check_LC_off_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|state.check_LC_off_count~q\);

-- Location: LCCOMB_X50_Y50_N10
\IR|irRec|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Selector3~0_combout\ = (\IR|irRec|state.check_data~q\ & (((\IR|irRec|state.check_LC_off_count~q\ & !\IR|irRec|nxt_state_proc~7_combout\)) # (!\IR|irRec|Equal4~10_combout\))) # (!\IR|irRec|state.check_data~q\ & 
-- (\IR|irRec|state.check_LC_off_count~q\ & ((!\IR|irRec|nxt_state_proc~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \IR|irRec|state.check_LC_off_count~q\,
	datac => \IR|irRec|Equal4~10_combout\,
	datad => \IR|irRec|nxt_state_proc~7_combout\,
	combout => \IR|irRec|Selector3~0_combout\);

-- Location: LCCOMB_X50_Y50_N16
\IR|irRec|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Selector3~1_combout\ = (\IR|irRec|Selector3~0_combout\) # ((\IR|irRec|state.read_data~q\ & ((!\IR|irRec|data_follow~q\) # (!\IR|irRec|data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data~q\,
	datab => \IR|irRec|data_follow~q\,
	datac => \IR|irRec|state.read_data~q\,
	datad => \IR|irRec|Selector3~0_combout\,
	combout => \IR|irRec|Selector3~1_combout\);

-- Location: FF_X50_Y50_N17
\IR|irRec|state.read_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|Selector3~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|state.read_data~q\);

-- Location: LCCOMB_X50_Y50_N14
\IR|irRec|state~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|state~9_combout\ = (\IR|irRec|data~q\ & (\IR|irRec|data_follow~q\ & (\reset~input_o\ & \IR|irRec|state.read_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data~q\,
	datab => \IR|irRec|data_follow~q\,
	datac => \reset~input_o\,
	datad => \IR|irRec|state.read_data~q\,
	combout => \IR|irRec|state~9_combout\);

-- Location: FF_X50_Y50_N15
\IR|irRec|state.check_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|state.check_data~q\);

-- Location: LCCOMB_X51_Y51_N14
\IR|irRec|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal2~3_combout\ = (!\IR|irRec|clock_counter\(1) & (!\IR|irRec|clock_counter\(0) & (!\IR|irRec|clock_counter\(5) & !\IR|irRec|clock_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(1),
	datab => \IR|irRec|clock_counter\(0),
	datac => \IR|irRec|clock_counter\(5),
	datad => \IR|irRec|clock_counter\(6),
	combout => \IR|irRec|Equal2~3_combout\);

-- Location: LCCOMB_X51_Y50_N26
\IR|irRec|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal2~4_combout\ = (!\IR|irRec|clock_counter\(13) & (!\IR|irRec|clock_counter\(10) & (\IR|irRec|Equal2~3_combout\ & !\IR|irRec|clock_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(13),
	datab => \IR|irRec|clock_counter\(10),
	datac => \IR|irRec|Equal2~3_combout\,
	datad => \IR|irRec|clock_counter\(8),
	combout => \IR|irRec|Equal2~4_combout\);

-- Location: LCCOMB_X51_Y50_N10
\IR|irRec|clock_counter[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[13]~43_combout\ = (\IR|irRec|clock_counter\(13) & (!\IR|irRec|clock_counter[12]~42\)) # (!\IR|irRec|clock_counter\(13) & ((\IR|irRec|clock_counter[12]~42\) # (GND)))
-- \IR|irRec|clock_counter[13]~44\ = CARRY((!\IR|irRec|clock_counter[12]~42\) # (!\IR|irRec|clock_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(13),
	datad => VCC,
	cin => \IR|irRec|clock_counter[12]~42\,
	combout => \IR|irRec|clock_counter[13]~43_combout\,
	cout => \IR|irRec|clock_counter[13]~44\);

-- Location: LCCOMB_X51_Y50_N12
\IR|irRec|clock_counter[14]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[14]~45_combout\ = (\IR|irRec|clock_counter\(14) & (\IR|irRec|clock_counter[13]~44\ $ (GND))) # (!\IR|irRec|clock_counter\(14) & (!\IR|irRec|clock_counter[13]~44\ & VCC))
-- \IR|irRec|clock_counter[14]~46\ = CARRY((\IR|irRec|clock_counter\(14) & !\IR|irRec|clock_counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(14),
	datad => VCC,
	cin => \IR|irRec|clock_counter[13]~44\,
	combout => \IR|irRec|clock_counter[14]~45_combout\,
	cout => \IR|irRec|clock_counter[14]~46\);

-- Location: FF_X51_Y50_N13
\IR|irRec|clock_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[14]~45_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(14));

-- Location: LCCOMB_X51_Y50_N14
\IR|irRec|clock_counter[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[15]~47_combout\ = (\IR|irRec|clock_counter\(15) & (!\IR|irRec|clock_counter[14]~46\)) # (!\IR|irRec|clock_counter\(15) & ((\IR|irRec|clock_counter[14]~46\) # (GND)))
-- \IR|irRec|clock_counter[15]~48\ = CARRY((!\IR|irRec|clock_counter[14]~46\) # (!\IR|irRec|clock_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|clock_counter\(15),
	datad => VCC,
	cin => \IR|irRec|clock_counter[14]~46\,
	combout => \IR|irRec|clock_counter[15]~47_combout\,
	cout => \IR|irRec|clock_counter[15]~48\);

-- Location: FF_X51_Y50_N15
\IR|irRec|clock_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[15]~47_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(15));

-- Location: LCCOMB_X51_Y50_N16
\IR|irRec|clock_counter[16]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[16]~49_combout\ = \IR|irRec|clock_counter[15]~48\ $ (!\IR|irRec|clock_counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \IR|irRec|clock_counter\(16),
	cin => \IR|irRec|clock_counter[15]~48\,
	combout => \IR|irRec|clock_counter[16]~49_combout\);

-- Location: FF_X51_Y50_N17
\IR|irRec|clock_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[16]~49_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(16));

-- Location: LCCOMB_X52_Y50_N2
\IR|irRec|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal2~2_combout\ = (\IR|irRec|clock_counter\(14) & \IR|irRec|clock_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(14),
	datad => \IR|irRec|clock_counter\(9),
	combout => \IR|irRec|Equal2~2_combout\);

-- Location: LCCOMB_X52_Y50_N14
\IR|irRec|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal2~1_combout\ = (\IR|irRec|clock_counter\(11) & \IR|irRec|clock_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|irRec|clock_counter\(11),
	datad => \IR|irRec|clock_counter\(12),
	combout => \IR|irRec|Equal2~1_combout\);

-- Location: LCCOMB_X51_Y51_N10
\IR|irRec|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal2~0_combout\ = (\IR|irRec|clock_counter\(4) & (\IR|irRec|clock_counter\(3) & \IR|irRec|clock_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|clock_counter\(4),
	datac => \IR|irRec|clock_counter\(3),
	datad => \IR|irRec|clock_counter\(2),
	combout => \IR|irRec|Equal2~0_combout\);

-- Location: LCCOMB_X52_Y50_N16
\IR|irRec|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal2~5_combout\ = (\IR|irRec|clock_counter\(7) & (\IR|irRec|Equal2~2_combout\ & (\IR|irRec|Equal2~1_combout\ & \IR|irRec|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(7),
	datab => \IR|irRec|Equal2~2_combout\,
	datac => \IR|irRec|Equal2~1_combout\,
	datad => \IR|irRec|Equal2~0_combout\,
	combout => \IR|irRec|Equal2~5_combout\);

-- Location: LCCOMB_X51_Y50_N20
\IR|irRec|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Equal2~6_combout\ = (\IR|irRec|Equal2~4_combout\ & (\IR|irRec|clock_counter\(16) & (\IR|irRec|clock_counter\(15) & \IR|irRec|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Equal2~4_combout\,
	datab => \IR|irRec|clock_counter\(16),
	datac => \IR|irRec|clock_counter\(15),
	datad => \IR|irRec|Equal2~5_combout\,
	combout => \IR|irRec|Equal2~6_combout\);

-- Location: LCCOMB_X51_Y50_N22
\IR|irRec|clock_counter[8]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[8]~51_combout\ = (\IR|irRec|state.check_data~q\) # (((\IR|irRec|Equal2~6_combout\) # (!\IR|irRec|state.read_data~q\)) # (!\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|state.check_data~q\,
	datab => \reset~input_o\,
	datac => \IR|irRec|state.read_data~q\,
	datad => \IR|irRec|Equal2~6_combout\,
	combout => \IR|irRec|clock_counter[8]~51_combout\);

-- Location: FF_X51_Y51_N17
\IR|irRec|clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[0]~17_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(0));

-- Location: LCCOMB_X51_Y51_N18
\IR|irRec|clock_counter[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[1]~19_combout\ = (\IR|irRec|clock_counter\(1) & (!\IR|irRec|clock_counter[0]~18\)) # (!\IR|irRec|clock_counter\(1) & ((\IR|irRec|clock_counter[0]~18\) # (GND)))
-- \IR|irRec|clock_counter[1]~20\ = CARRY((!\IR|irRec|clock_counter[0]~18\) # (!\IR|irRec|clock_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|clock_counter\(1),
	datad => VCC,
	cin => \IR|irRec|clock_counter[0]~18\,
	combout => \IR|irRec|clock_counter[1]~19_combout\,
	cout => \IR|irRec|clock_counter[1]~20\);

-- Location: FF_X51_Y51_N19
\IR|irRec|clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[1]~19_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(1));

-- Location: LCCOMB_X51_Y51_N20
\IR|irRec|clock_counter[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[2]~21_combout\ = (\IR|irRec|clock_counter\(2) & (\IR|irRec|clock_counter[1]~20\ $ (GND))) # (!\IR|irRec|clock_counter\(2) & (!\IR|irRec|clock_counter[1]~20\ & VCC))
-- \IR|irRec|clock_counter[2]~22\ = CARRY((\IR|irRec|clock_counter\(2) & !\IR|irRec|clock_counter[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|clock_counter\(2),
	datad => VCC,
	cin => \IR|irRec|clock_counter[1]~20\,
	combout => \IR|irRec|clock_counter[2]~21_combout\,
	cout => \IR|irRec|clock_counter[2]~22\);

-- Location: FF_X51_Y51_N21
\IR|irRec|clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[2]~21_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(2));

-- Location: LCCOMB_X51_Y51_N22
\IR|irRec|clock_counter[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[3]~23_combout\ = (\IR|irRec|clock_counter\(3) & (!\IR|irRec|clock_counter[2]~22\)) # (!\IR|irRec|clock_counter\(3) & ((\IR|irRec|clock_counter[2]~22\) # (GND)))
-- \IR|irRec|clock_counter[3]~24\ = CARRY((!\IR|irRec|clock_counter[2]~22\) # (!\IR|irRec|clock_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(3),
	datad => VCC,
	cin => \IR|irRec|clock_counter[2]~22\,
	combout => \IR|irRec|clock_counter[3]~23_combout\,
	cout => \IR|irRec|clock_counter[3]~24\);

-- Location: FF_X51_Y51_N23
\IR|irRec|clock_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[3]~23_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(3));

-- Location: LCCOMB_X51_Y51_N24
\IR|irRec|clock_counter[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[4]~25_combout\ = (\IR|irRec|clock_counter\(4) & (\IR|irRec|clock_counter[3]~24\ $ (GND))) # (!\IR|irRec|clock_counter\(4) & (!\IR|irRec|clock_counter[3]~24\ & VCC))
-- \IR|irRec|clock_counter[4]~26\ = CARRY((\IR|irRec|clock_counter\(4) & !\IR|irRec|clock_counter[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|clock_counter\(4),
	datad => VCC,
	cin => \IR|irRec|clock_counter[3]~24\,
	combout => \IR|irRec|clock_counter[4]~25_combout\,
	cout => \IR|irRec|clock_counter[4]~26\);

-- Location: FF_X51_Y51_N25
\IR|irRec|clock_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[4]~25_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(4));

-- Location: LCCOMB_X51_Y51_N26
\IR|irRec|clock_counter[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[5]~27_combout\ = (\IR|irRec|clock_counter\(5) & (!\IR|irRec|clock_counter[4]~26\)) # (!\IR|irRec|clock_counter\(5) & ((\IR|irRec|clock_counter[4]~26\) # (GND)))
-- \IR|irRec|clock_counter[5]~28\ = CARRY((!\IR|irRec|clock_counter[4]~26\) # (!\IR|irRec|clock_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(5),
	datad => VCC,
	cin => \IR|irRec|clock_counter[4]~26\,
	combout => \IR|irRec|clock_counter[5]~27_combout\,
	cout => \IR|irRec|clock_counter[5]~28\);

-- Location: FF_X51_Y51_N27
\IR|irRec|clock_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[5]~27_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(5));

-- Location: LCCOMB_X51_Y51_N28
\IR|irRec|clock_counter[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[6]~29_combout\ = (\IR|irRec|clock_counter\(6) & (\IR|irRec|clock_counter[5]~28\ $ (GND))) # (!\IR|irRec|clock_counter\(6) & (!\IR|irRec|clock_counter[5]~28\ & VCC))
-- \IR|irRec|clock_counter[6]~30\ = CARRY((\IR|irRec|clock_counter\(6) & !\IR|irRec|clock_counter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|clock_counter\(6),
	datad => VCC,
	cin => \IR|irRec|clock_counter[5]~28\,
	combout => \IR|irRec|clock_counter[6]~29_combout\,
	cout => \IR|irRec|clock_counter[6]~30\);

-- Location: FF_X51_Y51_N29
\IR|irRec|clock_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[6]~29_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(6));

-- Location: LCCOMB_X51_Y51_N30
\IR|irRec|clock_counter[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[7]~31_combout\ = (\IR|irRec|clock_counter\(7) & (!\IR|irRec|clock_counter[6]~30\)) # (!\IR|irRec|clock_counter\(7) & ((\IR|irRec|clock_counter[6]~30\) # (GND)))
-- \IR|irRec|clock_counter[7]~32\ = CARRY((!\IR|irRec|clock_counter[6]~30\) # (!\IR|irRec|clock_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(7),
	datad => VCC,
	cin => \IR|irRec|clock_counter[6]~30\,
	combout => \IR|irRec|clock_counter[7]~31_combout\,
	cout => \IR|irRec|clock_counter[7]~32\);

-- Location: FF_X51_Y51_N31
\IR|irRec|clock_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[7]~31_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(7));

-- Location: LCCOMB_X51_Y50_N0
\IR|irRec|clock_counter[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[8]~33_combout\ = (\IR|irRec|clock_counter\(8) & (\IR|irRec|clock_counter[7]~32\ $ (GND))) # (!\IR|irRec|clock_counter\(8) & (!\IR|irRec|clock_counter[7]~32\ & VCC))
-- \IR|irRec|clock_counter[8]~34\ = CARRY((\IR|irRec|clock_counter\(8) & !\IR|irRec|clock_counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|clock_counter\(8),
	datad => VCC,
	cin => \IR|irRec|clock_counter[7]~32\,
	combout => \IR|irRec|clock_counter[8]~33_combout\,
	cout => \IR|irRec|clock_counter[8]~34\);

-- Location: FF_X51_Y50_N1
\IR|irRec|clock_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[8]~33_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(8));

-- Location: LCCOMB_X51_Y50_N2
\IR|irRec|clock_counter[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[9]~35_combout\ = (\IR|irRec|clock_counter\(9) & (!\IR|irRec|clock_counter[8]~34\)) # (!\IR|irRec|clock_counter\(9) & ((\IR|irRec|clock_counter[8]~34\) # (GND)))
-- \IR|irRec|clock_counter[9]~36\ = CARRY((!\IR|irRec|clock_counter[8]~34\) # (!\IR|irRec|clock_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|clock_counter\(9),
	datad => VCC,
	cin => \IR|irRec|clock_counter[8]~34\,
	combout => \IR|irRec|clock_counter[9]~35_combout\,
	cout => \IR|irRec|clock_counter[9]~36\);

-- Location: FF_X51_Y50_N3
\IR|irRec|clock_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[9]~35_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(9));

-- Location: LCCOMB_X51_Y50_N4
\IR|irRec|clock_counter[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[10]~37_combout\ = (\IR|irRec|clock_counter\(10) & (\IR|irRec|clock_counter[9]~36\ $ (GND))) # (!\IR|irRec|clock_counter\(10) & (!\IR|irRec|clock_counter[9]~36\ & VCC))
-- \IR|irRec|clock_counter[10]~38\ = CARRY((\IR|irRec|clock_counter\(10) & !\IR|irRec|clock_counter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|clock_counter\(10),
	datad => VCC,
	cin => \IR|irRec|clock_counter[9]~36\,
	combout => \IR|irRec|clock_counter[10]~37_combout\,
	cout => \IR|irRec|clock_counter[10]~38\);

-- Location: FF_X51_Y50_N5
\IR|irRec|clock_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[10]~37_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(10));

-- Location: LCCOMB_X51_Y50_N6
\IR|irRec|clock_counter[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[11]~39_combout\ = (\IR|irRec|clock_counter\(11) & (!\IR|irRec|clock_counter[10]~38\)) # (!\IR|irRec|clock_counter\(11) & ((\IR|irRec|clock_counter[10]~38\) # (GND)))
-- \IR|irRec|clock_counter[11]~40\ = CARRY((!\IR|irRec|clock_counter[10]~38\) # (!\IR|irRec|clock_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(11),
	datad => VCC,
	cin => \IR|irRec|clock_counter[10]~38\,
	combout => \IR|irRec|clock_counter[11]~39_combout\,
	cout => \IR|irRec|clock_counter[11]~40\);

-- Location: FF_X51_Y50_N7
\IR|irRec|clock_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[11]~39_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(11));

-- Location: LCCOMB_X51_Y50_N8
\IR|irRec|clock_counter[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|clock_counter[12]~41_combout\ = (\IR|irRec|clock_counter\(12) & (\IR|irRec|clock_counter[11]~40\ $ (GND))) # (!\IR|irRec|clock_counter\(12) & (!\IR|irRec|clock_counter[11]~40\ & VCC))
-- \IR|irRec|clock_counter[12]~42\ = CARRY((\IR|irRec|clock_counter\(12) & !\IR|irRec|clock_counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|clock_counter\(12),
	datad => VCC,
	cin => \IR|irRec|clock_counter[11]~40\,
	combout => \IR|irRec|clock_counter[12]~41_combout\,
	cout => \IR|irRec|clock_counter[12]~42\);

-- Location: FF_X51_Y50_N9
\IR|irRec|clock_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[12]~41_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(12));

-- Location: FF_X51_Y50_N11
\IR|irRec|clock_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|clock_counter[13]~43_combout\,
	sclr => \IR|irRec|clock_counter[8]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|clock_counter\(13));

-- Location: LCCOMB_X51_Y51_N8
\IR|irRec|data_bit_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit_proc~0_combout\ = (!\IR|irRec|clock_counter\(5) & !\IR|irRec|clock_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|irRec|clock_counter\(5),
	datad => \IR|irRec|clock_counter\(6),
	combout => \IR|irRec|data_bit_proc~0_combout\);

-- Location: LCCOMB_X51_Y51_N0
\IR|irRec|data_bit_proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit_proc~1_combout\ = (!\IR|irRec|clock_counter\(3) & (!\IR|irRec|clock_counter\(2) & ((!\IR|irRec|clock_counter\(0)) # (!\IR|irRec|clock_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(1),
	datab => \IR|irRec|clock_counter\(0),
	datac => \IR|irRec|clock_counter\(3),
	datad => \IR|irRec|clock_counter\(2),
	combout => \IR|irRec|data_bit_proc~1_combout\);

-- Location: LCCOMB_X52_Y50_N12
\IR|irRec|data_bit_proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit_proc~2_combout\ = ((\IR|irRec|data_bit_proc~0_combout\ & ((\IR|irRec|data_bit_proc~1_combout\) # (!\IR|irRec|clock_counter\(4))))) # (!\IR|irRec|clock_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_bit_proc~0_combout\,
	datab => \IR|irRec|clock_counter\(7),
	datac => \IR|irRec|data_bit_proc~1_combout\,
	datad => \IR|irRec|clock_counter\(4),
	combout => \IR|irRec|data_bit_proc~2_combout\);

-- Location: LCCOMB_X52_Y50_N18
\IR|irRec|data_bit_proc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit_proc~3_combout\ = (!\IR|irRec|clock_counter\(9) & (!\IR|irRec|clock_counter\(10) & (!\IR|irRec|clock_counter\(8) & \IR|irRec|data_bit_proc~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(9),
	datab => \IR|irRec|clock_counter\(10),
	datac => \IR|irRec|clock_counter\(8),
	datad => \IR|irRec|data_bit_proc~2_combout\,
	combout => \IR|irRec|data_bit_proc~3_combout\);

-- Location: LCCOMB_X52_Y50_N28
\IR|irRec|data_bit_proc~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit_proc~4_combout\ = (!\IR|irRec|clock_counter\(14) & (((\IR|irRec|data_bit_proc~3_combout\) # (!\IR|irRec|Equal2~1_combout\)) # (!\IR|irRec|clock_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(13),
	datab => \IR|irRec|data_bit_proc~3_combout\,
	datac => \IR|irRec|Equal2~1_combout\,
	datad => \IR|irRec|clock_counter\(14),
	combout => \IR|irRec|data_bit_proc~4_combout\);

-- Location: LCCOMB_X52_Y50_N24
\IR|irRec|data_bit_proc~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit_proc~5_combout\ = (\IR|irRec|clock_counter\(13) & (\IR|irRec|clock_counter\(11) & (\IR|irRec|clock_counter\(10) & \IR|irRec|clock_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(13),
	datab => \IR|irRec|clock_counter\(11),
	datac => \IR|irRec|clock_counter\(10),
	datad => \IR|irRec|clock_counter\(12),
	combout => \IR|irRec|data_bit_proc~5_combout\);

-- Location: LCCOMB_X51_Y51_N6
\IR|irRec|data_bit_proc~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit_proc~6_combout\ = (\IR|irRec|clock_counter\(1)) # ((\IR|irRec|clock_counter\(4)) # ((\IR|irRec|clock_counter\(3)) # (\IR|irRec|clock_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(1),
	datab => \IR|irRec|clock_counter\(4),
	datac => \IR|irRec|clock_counter\(3),
	datad => \IR|irRec|clock_counter\(2),
	combout => \IR|irRec|data_bit_proc~6_combout\);

-- Location: LCCOMB_X51_Y51_N12
\IR|irRec|data_bit_proc~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit_proc~7_combout\ = (\IR|irRec|clock_counter\(5) & (\IR|irRec|clock_counter\(6) & (\IR|irRec|clock_counter\(7) & \IR|irRec|data_bit_proc~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(5),
	datab => \IR|irRec|clock_counter\(6),
	datac => \IR|irRec|clock_counter\(7),
	datad => \IR|irRec|data_bit_proc~6_combout\,
	combout => \IR|irRec|data_bit_proc~7_combout\);

-- Location: LCCOMB_X52_Y50_N22
\IR|irRec|data_bit_proc~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit_proc~8_combout\ = (\IR|irRec|data_bit_proc~5_combout\ & (\IR|irRec|Equal2~2_combout\ & ((\IR|irRec|clock_counter\(8)) # (\IR|irRec|data_bit_proc~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(8),
	datab => \IR|irRec|data_bit_proc~5_combout\,
	datac => \IR|irRec|data_bit_proc~7_combout\,
	datad => \IR|irRec|Equal2~2_combout\,
	combout => \IR|irRec|data_bit_proc~8_combout\);

-- Location: LCCOMB_X54_Y50_N6
\IR|irRec|data_bit~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit~8_combout\ = (\IR|irRec|clock_counter\(16)) # (((\IR|irRec|data_bit_proc~8_combout\) # (!\IR|irRec|state.check_data~q\)) # (!\IR|irRec|clock_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(16),
	datab => \IR|irRec|clock_counter\(15),
	datac => \IR|irRec|data_bit_proc~8_combout\,
	datad => \IR|irRec|state.check_data~q\,
	combout => \IR|irRec|data_bit~8_combout\);

-- Location: LCCOMB_X51_Y51_N4
\IR|irRec|data_bit~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit~2_combout\ = (\IR|irRec|clock_counter\(3) & (\IR|irRec|clock_counter\(2) & ((\IR|irRec|clock_counter\(1)) # (\IR|irRec|clock_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(3),
	datab => \IR|irRec|clock_counter\(2),
	datac => \IR|irRec|clock_counter\(1),
	datad => \IR|irRec|clock_counter\(0),
	combout => \IR|irRec|data_bit~2_combout\);

-- Location: LCCOMB_X51_Y51_N2
\IR|irRec|data_bit~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit~3_combout\ = (\IR|irRec|clock_counter\(6) & ((\IR|irRec|clock_counter\(5)) # ((\IR|irRec|clock_counter\(4)) # (\IR|irRec|data_bit~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(5),
	datab => \IR|irRec|clock_counter\(4),
	datac => \IR|irRec|data_bit~2_combout\,
	datad => \IR|irRec|clock_counter\(6),
	combout => \IR|irRec|data_bit~3_combout\);

-- Location: LCCOMB_X52_Y50_N10
\IR|irRec|data_bit~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit~4_combout\ = (\IR|irRec|clock_counter\(7)) # ((\IR|irRec|data_bit~3_combout\) # ((\IR|irRec|clock_counter\(8)) # (\IR|irRec|clock_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(7),
	datab => \IR|irRec|data_bit~3_combout\,
	datac => \IR|irRec|clock_counter\(8),
	datad => \IR|irRec|clock_counter\(9),
	combout => \IR|irRec|data_bit~4_combout\);

-- Location: LCCOMB_X52_Y50_N0
\IR|irRec|data_bit~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit~5_combout\ = (\IR|irRec|clock_counter\(12) & ((\IR|irRec|clock_counter\(11)) # ((\IR|irRec|clock_counter\(10) & \IR|irRec|data_bit~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(12),
	datab => \IR|irRec|clock_counter\(11),
	datac => \IR|irRec|clock_counter\(10),
	datad => \IR|irRec|data_bit~4_combout\,
	combout => \IR|irRec|data_bit~5_combout\);

-- Location: LCCOMB_X52_Y50_N20
\IR|irRec|data_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit~0_combout\ = (!\IR|irRec|clock_counter\(8) & (((!\IR|irRec|Equal2~0_combout\ & \IR|irRec|data_bit_proc~0_combout\)) # (!\IR|irRec|clock_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(8),
	datab => \IR|irRec|Equal2~0_combout\,
	datac => \IR|irRec|clock_counter\(7),
	datad => \IR|irRec|data_bit_proc~0_combout\,
	combout => \IR|irRec|data_bit~0_combout\);

-- Location: LCCOMB_X52_Y50_N4
\IR|irRec|data_bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit~1_combout\ = ((!\IR|irRec|clock_counter\(10) & ((\IR|irRec|data_bit~0_combout\) # (!\IR|irRec|clock_counter\(9))))) # (!\IR|irRec|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(9),
	datab => \IR|irRec|clock_counter\(10),
	datac => \IR|irRec|Equal2~1_combout\,
	datad => \IR|irRec|data_bit~0_combout\,
	combout => \IR|irRec|data_bit~1_combout\);

-- Location: LCCOMB_X52_Y50_N6
\IR|irRec|data_bit~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit~6_combout\ = (\IR|irRec|clock_counter\(13) & (((!\IR|irRec|clock_counter\(14))))) # (!\IR|irRec|clock_counter\(13) & ((\IR|irRec|clock_counter\(14) & ((\IR|irRec|data_bit~1_combout\))) # (!\IR|irRec|clock_counter\(14) & 
-- (\IR|irRec|data_bit~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(13),
	datab => \IR|irRec|data_bit~5_combout\,
	datac => \IR|irRec|data_bit~1_combout\,
	datad => \IR|irRec|clock_counter\(14),
	combout => \IR|irRec|data_bit~6_combout\);

-- Location: LCCOMB_X54_Y50_N4
\IR|irRec|data_bit~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit~7_combout\ = (\IR|irRec|clock_counter\(16) & (\IR|irRec|clock_counter\(15) & (\IR|irRec|data_bit~6_combout\ & \IR|irRec|state.check_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(16),
	datab => \IR|irRec|clock_counter\(15),
	datac => \IR|irRec|data_bit~6_combout\,
	datad => \IR|irRec|state.check_data~q\,
	combout => \IR|irRec|data_bit~7_combout\);

-- Location: LCCOMB_X56_Y50_N0
\IR|irRec|data_bit~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_bit~9_combout\ = (\IR|irRec|data_bit~7_combout\) # ((\IR|irRec|data_bit~q\ & ((\IR|irRec|data_bit_proc~4_combout\) # (\IR|irRec|data_bit~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_bit_proc~4_combout\,
	datab => \IR|irRec|data_bit~8_combout\,
	datac => \IR|irRec|data_bit~q\,
	datad => \IR|irRec|data_bit~7_combout\,
	combout => \IR|irRec|data_bit~9_combout\);

-- Location: FF_X56_Y50_N1
\IR|irRec|data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_bit~9_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_bit~q\);

-- Location: LCCOMB_X51_Y50_N30
\IR|irRec|shift_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|shift_reg~7_combout\ = (\reset~input_o\ & \IR|irRec|data_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \IR|irRec|data_bit~q\,
	combout => \IR|irRec|shift_reg~7_combout\);

-- Location: LCCOMB_X52_Y50_N30
\IR|irRec|shift_proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|shift_proc~1_combout\ = (\IR|irRec|clock_counter\(14)) # ((\IR|irRec|clock_counter\(12)) # ((\IR|irRec|clock_counter\(7)) # (\IR|irRec|clock_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(14),
	datab => \IR|irRec|clock_counter\(12),
	datac => \IR|irRec|clock_counter\(7),
	datad => \IR|irRec|clock_counter\(9),
	combout => \IR|irRec|shift_proc~1_combout\);

-- Location: LCCOMB_X51_Y50_N28
\IR|irRec|shift_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|shift_proc~0_combout\ = (\IR|irRec|clock_counter\(11)) # ((\IR|irRec|clock_counter\(4)) # ((\IR|irRec|clock_counter\(2)) # (\IR|irRec|clock_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|clock_counter\(11),
	datab => \IR|irRec|clock_counter\(4),
	datac => \IR|irRec|clock_counter\(2),
	datad => \IR|irRec|clock_counter\(3),
	combout => \IR|irRec|shift_proc~0_combout\);

-- Location: LCCOMB_X51_Y50_N18
\IR|irRec|shift_proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|shift_proc~2_combout\ = (\IR|irRec|shift_proc~1_combout\) # ((\IR|irRec|shift_proc~0_combout\) # ((\IR|irRec|Equal4~10_combout\) # (!\IR|irRec|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|shift_proc~1_combout\,
	datab => \IR|irRec|shift_proc~0_combout\,
	datac => \IR|irRec|Equal2~4_combout\,
	datad => \IR|irRec|Equal4~10_combout\,
	combout => \IR|irRec|shift_proc~2_combout\);

-- Location: LCCOMB_X51_Y50_N24
\IR|irRec|shift_reg[29]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|shift_reg[29]~0_combout\ = ((!\IR|irRec|clock_counter\(16) & (!\IR|irRec|clock_counter\(15) & !\IR|irRec|shift_proc~2_combout\))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \IR|irRec|clock_counter\(16),
	datac => \IR|irRec|clock_counter\(15),
	datad => \IR|irRec|shift_proc~2_combout\,
	combout => \IR|irRec|shift_reg[29]~0_combout\);

-- Location: FF_X51_Y50_N31
\IR|irRec|shift_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|shift_reg~7_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(31));

-- Location: LCCOMB_X52_Y49_N22
\IR|irRec|shift_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|shift_reg~6_combout\ = (\reset~input_o\ & \IR|irRec|shift_reg\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \IR|irRec|shift_reg\(31),
	combout => \IR|irRec|shift_reg~6_combout\);

-- Location: FF_X52_Y49_N23
\IR|irRec|shift_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|shift_reg~6_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(30));

-- Location: LCCOMB_X52_Y49_N8
\IR|irRec|shift_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|shift_reg~5_combout\ = (\IR|irRec|shift_reg\(30) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|irRec|shift_reg\(30),
	datad => \reset~input_o\,
	combout => \IR|irRec|shift_reg~5_combout\);

-- Location: FF_X52_Y49_N9
\IR|irRec|shift_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|shift_reg~5_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(29));

-- Location: LCCOMB_X52_Y49_N10
\IR|irRec|shift_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|shift_reg~4_combout\ = (\IR|irRec|shift_reg\(29) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|irRec|shift_reg\(29),
	datad => \reset~input_o\,
	combout => \IR|irRec|shift_reg~4_combout\);

-- Location: FF_X52_Y49_N11
\IR|irRec|shift_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|shift_reg~4_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(28));

-- Location: LCCOMB_X52_Y49_N20
\IR|irRec|shift_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|shift_reg~3_combout\ = (\IR|irRec|shift_reg\(28) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|shift_reg\(28),
	datad => \reset~input_o\,
	combout => \IR|irRec|shift_reg~3_combout\);

-- Location: FF_X52_Y49_N21
\IR|irRec|shift_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|shift_reg~3_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(27));

-- Location: LCCOMB_X52_Y49_N18
\IR|irRec|shift_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|shift_reg~2_combout\ = (\reset~input_o\ & \IR|irRec|shift_reg\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \IR|irRec|shift_reg\(27),
	combout => \IR|irRec|shift_reg~2_combout\);

-- Location: FF_X52_Y49_N19
\IR|irRec|shift_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|shift_reg~2_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(26));

-- Location: LCCOMB_X52_Y49_N28
\IR|irRec|shift_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|shift_reg~1_combout\ = (\reset~input_o\ & \IR|irRec|shift_reg\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \IR|irRec|shift_reg\(26),
	combout => \IR|irRec|shift_reg~1_combout\);

-- Location: FF_X52_Y49_N29
\IR|irRec|shift_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|shift_reg~1_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(25));

-- Location: LCCOMB_X52_Y49_N12
\IR|irRec|data_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_reg~5_combout\ = (\IR|irRec|shift_reg\(25) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|irRec|shift_reg\(25),
	datad => \reset~input_o\,
	combout => \IR|irRec|data_reg~5_combout\);

-- Location: FF_X52_Y49_N13
\IR|irRec|shift_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_reg~5_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(24));

-- Location: LCCOMB_X52_Y49_N6
\IR|irRec|data_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_reg~2_combout\ = (\IR|irRec|shift_reg\(24) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|shift_reg\(24),
	datad => \reset~input_o\,
	combout => \IR|irRec|data_reg~2_combout\);

-- Location: FF_X52_Y49_N7
\IR|irRec|shift_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_reg~2_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(23));

-- Location: LCCOMB_X52_Y49_N30
\IR|irRec|data_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_reg~4_combout\ = (\reset~input_o\ & \IR|irRec|shift_reg\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \IR|irRec|shift_reg\(23),
	combout => \IR|irRec|data_reg~4_combout\);

-- Location: FF_X52_Y49_N31
\IR|irRec|shift_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_reg~4_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(22));

-- Location: LCCOMB_X52_Y49_N14
\IR|irRec|data_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_reg~6_combout\ = (\IR|irRec|shift_reg\(22) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|irRec|shift_reg\(22),
	datad => \reset~input_o\,
	combout => \IR|irRec|data_reg~6_combout\);

-- Location: FF_X57_Y49_N23
\IR|irRec|data_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \IR|irRec|data_reg~6_combout\,
	sload => VCC,
	ena => \IR|irRec|data_reg[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_reg\(20));

-- Location: FF_X57_Y49_N29
\IR|irRec|data_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \IR|irRec|data_reg~4_combout\,
	sload => VCC,
	ena => \IR|irRec|data_reg[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_reg\(21));

-- Location: FF_X52_Y49_N15
\IR|irRec|shift_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_reg~6_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(21));

-- Location: LCCOMB_X52_Y49_N16
\IR|irRec|data_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_reg~8_combout\ = (\IR|irRec|shift_reg\(21) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|irRec|shift_reg\(21),
	datad => \reset~input_o\,
	combout => \IR|irRec|data_reg~8_combout\);

-- Location: FF_X52_Y49_N17
\IR|irRec|shift_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_reg~8_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(20));

-- Location: LCCOMB_X52_Y49_N0
\IR|irRec|data_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_reg~7_combout\ = (\reset~input_o\ & \IR|irRec|shift_reg\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \IR|irRec|shift_reg\(20),
	combout => \IR|irRec|data_reg~7_combout\);

-- Location: FF_X57_Y49_N5
\IR|irRec|data_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \IR|irRec|data_reg~7_combout\,
	sload => VCC,
	ena => \IR|irRec|data_reg[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_reg\(18));

-- Location: FF_X57_Y49_N25
\IR|irRec|data_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \IR|irRec|data_reg~5_combout\,
	sload => VCC,
	ena => \IR|irRec|data_reg[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_reg\(23));

-- Location: LCCOMB_X57_Y49_N10
\IR|irRec|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux1~2_combout\ = (!\IR|irRec|data_reg\(20) & (!\IR|irRec|data_reg\(23) & (\IR|irRec|data_reg\(21) $ (\IR|irRec|data_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(20),
	datab => \IR|irRec|data_reg\(21),
	datac => \IR|irRec|data_reg\(18),
	datad => \IR|irRec|data_reg\(23),
	combout => \IR|irRec|Mux1~2_combout\);

-- Location: FF_X57_Y49_N3
\IR|irRec|data_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \IR|irRec|data_reg~8_combout\,
	sload => VCC,
	ena => \IR|irRec|data_reg[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_reg\(19));

-- Location: FF_X52_Y49_N1
\IR|irRec|shift_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_reg~7_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(19));

-- Location: LCCOMB_X52_Y49_N24
\IR|irRec|data_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_reg~3_combout\ = (\reset~input_o\ & \IR|irRec|shift_reg\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \IR|irRec|shift_reg\(19),
	combout => \IR|irRec|data_reg~3_combout\);

-- Location: FF_X57_Y49_N27
\IR|irRec|data_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \IR|irRec|data_reg~3_combout\,
	sload => VCC,
	ena => \IR|irRec|data_reg[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_reg\(17));

-- Location: LCCOMB_X57_Y49_N4
\IR|irRec|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux1~3_combout\ = (\IR|irRec|data_reg\(18) & (\IR|irRec|data_reg\(23) & (\IR|irRec|data_reg\(20) $ (\IR|irRec|data_reg\(21))))) # (!\IR|irRec|data_reg\(18) & (\IR|irRec|data_reg\(20) & (\IR|irRec|data_reg\(21) & !\IR|irRec|data_reg\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(20),
	datab => \IR|irRec|data_reg\(21),
	datac => \IR|irRec|data_reg\(18),
	datad => \IR|irRec|data_reg\(23),
	combout => \IR|irRec|Mux1~3_combout\);

-- Location: LCCOMB_X57_Y49_N12
\IR|irRec|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux1~4_combout\ = (\IR|irRec|data_reg\(19) & ((\IR|irRec|Mux1~2_combout\) # ((!\IR|irRec|data_reg\(17))))) # (!\IR|irRec|data_reg\(19) & (((!\IR|irRec|data_reg\(17) & \IR|irRec|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Mux1~2_combout\,
	datab => \IR|irRec|data_reg\(19),
	datac => \IR|irRec|data_reg\(17),
	datad => \IR|irRec|Mux1~3_combout\,
	combout => \IR|irRec|Mux1~4_combout\);

-- Location: FF_X52_Y49_N25
\IR|irRec|shift_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|data_reg~3_combout\,
	ena => \IR|irRec|shift_reg[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|shift_reg\(18));

-- Location: LCCOMB_X52_Y49_N26
\IR|irRec|data_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|data_reg~0_combout\ = (\IR|irRec|shift_reg\(18) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|shift_reg\(18),
	datad => \reset~input_o\,
	combout => \IR|irRec|data_reg~0_combout\);

-- Location: FF_X57_Y49_N9
\IR|irRec|data_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \IR|irRec|data_reg~0_combout\,
	sload => VCC,
	ena => \IR|irRec|data_reg[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_reg\(16));

-- Location: FF_X57_Y49_N15
\IR|irRec|data_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \IR|irRec|data_reg~2_combout\,
	sload => VCC,
	ena => \IR|irRec|data_reg[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|data_reg\(22));

-- Location: LCCOMB_X57_Y49_N18
\IR|irRec|Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux1~5_combout\ = (\IR|irRec|data_reg\(21) & (\IR|irRec|data_reg\(18) & (\IR|irRec|data_reg\(20) $ (!\IR|irRec|data_reg\(23))))) # (!\IR|irRec|data_reg\(21) & (\IR|irRec|data_reg\(20) & (!\IR|irRec|data_reg\(18) & !\IR|irRec|data_reg\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(20),
	datab => \IR|irRec|data_reg\(21),
	datac => \IR|irRec|data_reg\(18),
	datad => \IR|irRec|data_reg\(23),
	combout => \IR|irRec|Mux1~5_combout\);

-- Location: LCCOMB_X57_Y49_N14
\IR|irRec|Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux1~6_combout\ = (!\IR|irRec|data_reg\(17) & (\IR|irRec|data_reg\(19) & !\IR|irRec|Mux1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(17),
	datab => \IR|irRec|data_reg\(19),
	datad => \IR|irRec|Mux1~5_combout\,
	combout => \IR|irRec|Mux1~6_combout\);

-- Location: LCCOMB_X57_Y49_N30
\IR|irRec|Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux1~7_combout\ = (\IR|irRec|Mux1~4_combout\ & (\IR|irRec|data_reg\(16) & (!\IR|irRec|data_reg\(22) & !\IR|irRec|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Mux1~4_combout\,
	datab => \IR|irRec|data_reg\(16),
	datac => \IR|irRec|data_reg\(22),
	datad => \IR|irRec|Mux1~6_combout\,
	combout => \IR|irRec|Mux1~7_combout\);

-- Location: LCCOMB_X58_Y49_N28
\IR|irRec|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux0~1_combout\ = (\IR|irRec|data_reg\(20) & ((\IR|irRec|data_reg\(23) & ((!\IR|irRec|data_reg\(21)) # (!\IR|irRec|data_reg\(18)))) # (!\IR|irRec|data_reg\(23) & (\IR|irRec|data_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(23),
	datab => \IR|irRec|data_reg\(18),
	datac => \IR|irRec|data_reg\(21),
	datad => \IR|irRec|data_reg\(20),
	combout => \IR|irRec|Mux0~1_combout\);

-- Location: LCCOMB_X57_Y49_N2
\IR|irRec|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux0~2_combout\ = (\IR|irRec|data_reg\(18) & ((\IR|irRec|data_reg\(23) & (!\IR|irRec|data_reg\(19) & !\IR|irRec|data_reg\(21))) # (!\IR|irRec|data_reg\(23) & (\IR|irRec|data_reg\(19) & \IR|irRec|data_reg\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(23),
	datab => \IR|irRec|data_reg\(18),
	datac => \IR|irRec|data_reg\(19),
	datad => \IR|irRec|data_reg\(21),
	combout => \IR|irRec|Mux0~2_combout\);

-- Location: LCCOMB_X57_Y49_N28
\IR|irRec|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux0~0_combout\ = (!\IR|irRec|data_reg\(22) & \IR|irRec|data_reg\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|data_reg\(22),
	datad => \IR|irRec|data_reg\(16),
	combout => \IR|irRec|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y49_N26
\IR|irRec|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux0~3_combout\ = (\IR|irRec|data_reg\(17)) # (((!\IR|irRec|data_reg\(20) & !\IR|irRec|Mux0~2_combout\)) # (!\IR|irRec|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(20),
	datab => \IR|irRec|Mux0~2_combout\,
	datac => \IR|irRec|data_reg\(17),
	datad => \IR|irRec|Mux0~0_combout\,
	combout => \IR|irRec|Mux0~3_combout\);

-- Location: LCCOMB_X57_Y49_N16
\IR|irRec|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux2~2_combout\ = (\IR|irRec|data_reg\(19) & (!\IR|irRec|data_reg\(23) & ((\IR|irRec|data_reg\(20))))) # (!\IR|irRec|data_reg\(19) & (!\IR|irRec|data_reg\(21) & (\IR|irRec|data_reg\(23) $ (\IR|irRec|data_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(23),
	datab => \IR|irRec|data_reg\(21),
	datac => \IR|irRec|data_reg\(20),
	datad => \IR|irRec|data_reg\(19),
	combout => \IR|irRec|Mux2~2_combout\);

-- Location: LCCOMB_X57_Y49_N6
\IR|irRec|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux2~3_combout\ = (\IR|irRec|data_reg\(20) & ((\IR|irRec|data_reg\(19) & ((!\IR|irRec|data_reg\(23)))) # (!\IR|irRec|data_reg\(19) & (!\IR|irRec|data_reg\(21))))) # (!\IR|irRec|data_reg\(20) & (\IR|irRec|data_reg\(21) & (\IR|irRec|data_reg\(19) 
-- $ (\IR|irRec|data_reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(20),
	datab => \IR|irRec|data_reg\(19),
	datac => \IR|irRec|data_reg\(21),
	datad => \IR|irRec|data_reg\(23),
	combout => \IR|irRec|Mux2~3_combout\);

-- Location: LCCOMB_X57_Y49_N8
\IR|irRec|Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux2~5_combout\ = (!\IR|irRec|data_reg\(22) & (\IR|irRec|data_reg\(16) & (\IR|irRec|data_reg\(17) $ (\IR|irRec|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(17),
	datab => \IR|irRec|data_reg\(22),
	datac => \IR|irRec|data_reg\(16),
	datad => \IR|irRec|Mux2~3_combout\,
	combout => \IR|irRec|Mux2~5_combout\);

-- Location: LCCOMB_X57_Y49_N0
\IR|irRec|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux2~4_combout\ = ((\IR|irRec|data_reg\(17) & ((!\IR|irRec|data_reg\(18)) # (!\IR|irRec|Mux2~2_combout\))) # (!\IR|irRec|data_reg\(17) & (\IR|irRec|Mux2~2_combout\ $ (!\IR|irRec|data_reg\(18))))) # (!\IR|irRec|Mux2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(17),
	datab => \IR|irRec|Mux2~2_combout\,
	datac => \IR|irRec|data_reg\(18),
	datad => \IR|irRec|Mux2~5_combout\,
	combout => \IR|irRec|Mux2~4_combout\);

-- Location: LCCOMB_X58_Y47_N12
\IR|analyse_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|analyse_data~6_combout\ = (((!\IR|irRec|Mux0~1_combout\ & !\IR|irRec|Mux0~3_combout\)) # (!\IR|irRec|Mux2~4_combout\)) # (!\IR|irRec|Mux1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Mux1~7_combout\,
	datab => \IR|irRec|Mux0~1_combout\,
	datac => \IR|irRec|Mux0~3_combout\,
	datad => \IR|irRec|Mux2~4_combout\,
	combout => \IR|analyse_data~6_combout\);

-- Location: LCCOMB_X57_Y49_N24
\IR|irRec|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux3~2_combout\ = (\IR|irRec|data_reg\(20) & (!\IR|irRec|data_reg\(19) & (\IR|irRec|data_reg\(18) $ (!\IR|irRec|data_reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(20),
	datab => \IR|irRec|data_reg\(18),
	datac => \IR|irRec|data_reg\(23),
	datad => \IR|irRec|data_reg\(19),
	combout => \IR|irRec|Mux3~2_combout\);

-- Location: LCCOMB_X57_Y49_N22
\IR|irRec|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux3~3_combout\ = (\IR|irRec|data_reg\(18) & ((\IR|irRec|data_reg\(23) & ((!\IR|irRec|data_reg\(19)))) # (!\IR|irRec|data_reg\(23) & (!\IR|irRec|data_reg\(20) & \IR|irRec|data_reg\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(23),
	datab => \IR|irRec|data_reg\(18),
	datac => \IR|irRec|data_reg\(20),
	datad => \IR|irRec|data_reg\(19),
	combout => \IR|irRec|Mux3~3_combout\);

-- Location: LCCOMB_X57_Y49_N20
\IR|irRec|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux3~4_combout\ = (\IR|irRec|data_reg\(17) & (!\IR|irRec|Mux3~2_combout\ & (!\IR|irRec|data_reg\(21) & \IR|irRec|Mux3~3_combout\))) # (!\IR|irRec|data_reg\(17) & ((\IR|irRec|Mux3~3_combout\ & ((\IR|irRec|data_reg\(21)))) # 
-- (!\IR|irRec|Mux3~3_combout\ & (\IR|irRec|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(17),
	datab => \IR|irRec|Mux3~2_combout\,
	datac => \IR|irRec|data_reg\(21),
	datad => \IR|irRec|Mux3~3_combout\,
	combout => \IR|irRec|Mux3~4_combout\);

-- Location: LCCOMB_X58_Y47_N6
\IR|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Equal0~0_combout\ = (!\IR|irRec|Mux1~7_combout\ & ((\IR|irRec|Mux0~1_combout\) # (\IR|irRec|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Mux1~7_combout\,
	datab => \IR|irRec|Mux0~1_combout\,
	datac => \IR|irRec|Mux0~3_combout\,
	combout => \IR|Equal0~0_combout\);

-- Location: FF_X56_Y50_N31
\IR|irRec|dt_rdy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|irRec|Equal5~1_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|irRec|dt_rdy~q\);

-- Location: LCCOMB_X58_Y49_N10
\IR|irRec|Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|irRec|Mux3~5_combout\ = (\IR|irRec|data_reg\(22)) # ((!\IR|irRec|data_reg\(16)) # (!\IR|irRec|Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(22),
	datab => \IR|irRec|Mux3~4_combout\,
	datad => \IR|irRec|data_reg\(16),
	combout => \IR|irRec|Mux3~5_combout\);

-- Location: LCCOMB_X58_Y47_N16
\IR|A[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|A[0]~1_combout\ = (\IR|irRec|dt_rdy~q\ & (((!\IR|irRec|Mux3~5_combout\) # (!\IR|irRec|Mux2~4_combout\)) # (!\IR|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Equal0~0_combout\,
	datab => \IR|irRec|Mux2~4_combout\,
	datac => \IR|irRec|dt_rdy~q\,
	datad => \IR|irRec|Mux3~5_combout\,
	combout => \IR|A[0]~1_combout\);

-- Location: LCCOMB_X59_Y47_N24
\IR|analyse_data:counter[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|analyse_data:counter[2]~0_combout\ = (\IR|analyse_data:counter[2]~q\) # ((\IR|A[0]~1_combout\ & (\IR|analyse_data:counter[1]~q\ & !\IR|analyse_data~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A[0]~1_combout\,
	datab => \IR|analyse_data:counter[1]~q\,
	datac => \IR|analyse_data:counter[2]~q\,
	datad => \IR|analyse_data~6_combout\,
	combout => \IR|analyse_data:counter[2]~0_combout\);

-- Location: FF_X59_Y47_N25
\IR|analyse_data:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|analyse_data:counter[2]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|analyse_data:counter[2]~q\);

-- Location: LCCOMB_X59_Y47_N16
\IR|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux6~0_combout\ = (\IR|analyse_data:counter[1]~q\ & (\IR|analyse_data~6_combout\ & (!\IR|analyse_data:counter[2]~q\))) # (!\IR|analyse_data:counter[1]~q\ & (!\IR|analyse_data:counter[0]~q\ & ((\IR|analyse_data:counter[2]~q\) # 
-- (!\IR|analyse_data~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|analyse_data~6_combout\,
	datab => \IR|analyse_data:counter[2]~q\,
	datac => \IR|analyse_data:counter[0]~q\,
	datad => \IR|analyse_data:counter[1]~q\,
	combout => \IR|Mux6~0_combout\);

-- Location: FF_X59_Y47_N17
\IR|analyse_data:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux6~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|A[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|analyse_data:counter[0]~q\);

-- Location: LCCOMB_X59_Y47_N30
\IR|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux5~0_combout\ = (\IR|analyse_data:counter[1]~q\ & ((\IR|analyse_data~6_combout\) # ((\IR|analyse_data:counter[2]~q\)))) # (!\IR|analyse_data:counter[1]~q\ & ((\IR|analyse_data:counter[0]~q\) # ((\IR|analyse_data~6_combout\ & 
-- !\IR|analyse_data:counter[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|analyse_data~6_combout\,
	datab => \IR|analyse_data:counter[0]~q\,
	datac => \IR|analyse_data:counter[1]~q\,
	datad => \IR|analyse_data:counter[2]~q\,
	combout => \IR|Mux5~0_combout\);

-- Location: FF_X59_Y47_N31
\IR|analyse_data:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux5~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|A[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|analyse_data:counter[1]~q\);

-- Location: LCCOMB_X54_Y47_N18
\IR|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux10~2_combout\ = (!\IR|analyse_data:counter[1]~q\ & ((\IR|irRec|data_reg\(22)) # ((!\IR|irRec|data_reg\(16)) # (!\IR|irRec|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(22),
	datab => \IR|irRec|Mux3~4_combout\,
	datac => \IR|irRec|data_reg\(16),
	datad => \IR|analyse_data:counter[1]~q\,
	combout => \IR|Mux10~2_combout\);

-- Location: LCCOMB_X59_Y47_N28
\IR|old_data_2[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_2[3]~0_combout\ = (\IR|analyse_data~6_combout\ & (((!\IR|Equal0~0_combout\) # (!\IR|irRec|Mux3~5_combout\)) # (!\IR|irRec|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Mux2~4_combout\,
	datab => \IR|irRec|Mux3~5_combout\,
	datac => \IR|Equal0~0_combout\,
	datad => \IR|analyse_data~6_combout\,
	combout => \IR|old_data_2[3]~0_combout\);

-- Location: LCCOMB_X59_Y47_N10
\IR|old_data_2[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_2[3]~1_combout\ = (\IR|analyse_data:counter[0]~q\ & (((!\IR|analyse_data:counter[1]~q\)))) # (!\IR|analyse_data:counter[0]~q\ & ((\IR|analyse_data:counter[1]~q\ & (!\IR|analyse_data~6_combout\)) # (!\IR|analyse_data:counter[1]~q\ & 
-- ((\IR|old_data_2[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|analyse_data~6_combout\,
	datab => \IR|analyse_data:counter[0]~q\,
	datac => \IR|analyse_data:counter[1]~q\,
	datad => \IR|old_data_2[3]~0_combout\,
	combout => \IR|old_data_2[3]~1_combout\);

-- Location: LCCOMB_X59_Y47_N12
\IR|old_data_2[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_2[3]~2_combout\ = (!\IR|analyse_data:counter[2]~q\ & (\IR|A[0]~1_combout\ & \IR|old_data_2[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|analyse_data:counter[2]~q\,
	datac => \IR|A[0]~1_combout\,
	datad => \IR|old_data_2[3]~1_combout\,
	combout => \IR|old_data_2[3]~2_combout\);

-- Location: FF_X54_Y47_N19
\IR|old_data_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux10~2_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_2\(0));

-- Location: LCCOMB_X58_Y47_N20
\IR|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux14~0_combout\ = (\IR|analyse_data~6_combout\ & ((\IR|irRec|Mux3~5_combout\))) # (!\IR|analyse_data~6_combout\ & (\IR|old_data_2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|analyse_data~6_combout\,
	datab => \IR|old_data_2\(0),
	datad => \IR|irRec|Mux3~5_combout\,
	combout => \IR|Mux14~0_combout\);

-- Location: LCCOMB_X59_Y47_N6
\IR|old_data_3[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_3[3]~0_combout\ = (\IR|analyse_data:counter[1]~q\ & (!\IR|analyse_data:counter[2]~q\ & (\IR|A[0]~1_combout\ & !\IR|analyse_data:counter[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|analyse_data:counter[1]~q\,
	datab => \IR|analyse_data:counter[2]~q\,
	datac => \IR|A[0]~1_combout\,
	datad => \IR|analyse_data:counter[0]~q\,
	combout => \IR|old_data_3[3]~0_combout\);

-- Location: FF_X58_Y47_N21
\IR|old_data_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux14~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_3\(0));

-- Location: LCCOMB_X55_Y47_N10
\IR|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux3~2_combout\ = ((\IR|analyse_data~6_combout\) # ((\IR|irRec|data_reg\(22)) # (!\IR|irRec|Mux3~4_combout\))) # (!\IR|irRec|data_reg\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(16),
	datab => \IR|analyse_data~6_combout\,
	datac => \IR|irRec|data_reg\(22),
	datad => \IR|irRec|Mux3~4_combout\,
	combout => \IR|Mux3~2_combout\);

-- Location: LCCOMB_X58_Y47_N30
\IR|old_data_1[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_1[3]~0_combout\ = (!\IR|analyse_data:counter[0]~q\ & (!\IR|analyse_data:counter[2]~q\ & (!\IR|analyse_data:counter[1]~q\ & \IR|A[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|analyse_data:counter[0]~q\,
	datab => \IR|analyse_data:counter[2]~q\,
	datac => \IR|analyse_data:counter[1]~q\,
	datad => \IR|A[0]~1_combout\,
	combout => \IR|old_data_1[3]~0_combout\);

-- Location: FF_X55_Y47_N11
\IR|old_data_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux3~2_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_1\(0));

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

-- Location: LCCOMB_X57_Y45_N22
\IR|old_data_1[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_1[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \IR|old_data_1[3]~feeder_combout\);

-- Location: FF_X57_Y45_N23
\IR|old_data_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|old_data_1[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_1\(3));

-- Location: LCCOMB_X56_Y45_N4
\IR|A[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|A[1]~0_combout\ = (\IR|old_data_1\(0)) # ((!\IR|old_data_1\(3)) # (!\mode~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_1\(0),
	datac => \mode~input_o\,
	datad => \IR|old_data_1\(3),
	combout => \IR|A[1]~0_combout\);

-- Location: LCCOMB_X54_Y47_N20
\IR|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux7~0_combout\ = (!\IR|analyse_data:counter[1]~q\ & ((\IR|irRec|Mux0~1_combout\) # (\IR|irRec|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Mux0~1_combout\,
	datab => \IR|analyse_data:counter[1]~q\,
	datad => \IR|irRec|Mux0~3_combout\,
	combout => \IR|Mux7~0_combout\);

-- Location: FF_X54_Y47_N21
\IR|old_data_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux7~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_2\(3));

-- Location: LCCOMB_X58_Y47_N0
\IR|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux11~0_combout\ = (\IR|analyse_data~6_combout\ & (((\IR|irRec|Mux0~3_combout\) # (\IR|irRec|Mux0~1_combout\)))) # (!\IR|analyse_data~6_combout\ & (\IR|old_data_2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|analyse_data~6_combout\,
	datab => \IR|old_data_2\(3),
	datac => \IR|irRec|Mux0~3_combout\,
	datad => \IR|irRec|Mux0~1_combout\,
	combout => \IR|Mux11~0_combout\);

-- Location: FF_X54_Y47_N25
\IR|old_data_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \IR|Mux11~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \IR|old_data_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_3\(3));

-- Location: LCCOMB_X54_Y47_N26
\IR|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux8~0_combout\ = (!\IR|analyse_data:counter[1]~q\ & ((\IR|irRec|Mux1~6_combout\) # ((!\IR|irRec|Mux1~4_combout\) # (!\IR|irRec|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Mux1~6_combout\,
	datab => \IR|analyse_data:counter[1]~q\,
	datac => \IR|irRec|Mux0~0_combout\,
	datad => \IR|irRec|Mux1~4_combout\,
	combout => \IR|Mux8~0_combout\);

-- Location: FF_X54_Y47_N27
\IR|old_data_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux8~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_2\(2));

-- Location: LCCOMB_X54_Y47_N24
\IR|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add4~0_combout\ = \IR|old_data_2\(2) $ (\IR|old_data_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(2),
	datad => \IR|old_data_2\(0),
	combout => \IR|Add4~0_combout\);

-- Location: LCCOMB_X58_Y47_N18
\IR|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux12~0_combout\ = (\IR|analyse_data~6_combout\ & (!\IR|irRec|Mux1~7_combout\)) # (!\IR|analyse_data~6_combout\ & ((\IR|old_data_2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Mux1~7_combout\,
	datac => \IR|old_data_2\(2),
	datad => \IR|analyse_data~6_combout\,
	combout => \IR|Mux12~0_combout\);

-- Location: FF_X55_Y47_N5
\IR|old_data_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \IR|Mux12~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \IR|old_data_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_3\(2));

-- Location: LCCOMB_X54_Y47_N16
\IR|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux9~0_combout\ = (!\IR|analyse_data:counter[1]~q\ & \IR|irRec|Mux2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|analyse_data:counter[1]~q\,
	datad => \IR|irRec|Mux2~4_combout\,
	combout => \IR|Mux9~0_combout\);

-- Location: FF_X54_Y47_N17
\IR|old_data_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux9~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_2\(1));

-- Location: LCCOMB_X54_Y47_N0
\IR|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux13~0_combout\ = (\IR|analyse_data~6_combout\ & ((\IR|irRec|Mux2~4_combout\))) # (!\IR|analyse_data~6_combout\ & (\IR|old_data_2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(1),
	datac => \IR|analyse_data~6_combout\,
	datad => \IR|irRec|Mux2~4_combout\,
	combout => \IR|Mux13~0_combout\);

-- Location: FF_X54_Y47_N1
\IR|old_data_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux13~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_3\(1));

-- Location: LCCOMB_X54_Y47_N2
\IR|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add5~0_combout\ = (\IR|old_data_3\(1) & (\IR|old_data_2\(0) $ (VCC))) # (!\IR|old_data_3\(1) & (\IR|old_data_2\(0) & VCC))
-- \IR|Add5~1\ = CARRY((\IR|old_data_3\(1) & \IR|old_data_2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_3\(1),
	datab => \IR|old_data_2\(0),
	datad => VCC,
	combout => \IR|Add5~0_combout\,
	cout => \IR|Add5~1\);

-- Location: LCCOMB_X54_Y47_N4
\IR|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add5~2_combout\ = (\IR|old_data_3\(2) & ((\IR|old_data_2\(1) & (\IR|Add5~1\ & VCC)) # (!\IR|old_data_2\(1) & (!\IR|Add5~1\)))) # (!\IR|old_data_3\(2) & ((\IR|old_data_2\(1) & (!\IR|Add5~1\)) # (!\IR|old_data_2\(1) & ((\IR|Add5~1\) # (GND)))))
-- \IR|Add5~3\ = CARRY((\IR|old_data_3\(2) & (!\IR|old_data_2\(1) & !\IR|Add5~1\)) # (!\IR|old_data_3\(2) & ((!\IR|Add5~1\) # (!\IR|old_data_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_3\(2),
	datab => \IR|old_data_2\(1),
	datad => VCC,
	cin => \IR|Add5~1\,
	combout => \IR|Add5~2_combout\,
	cout => \IR|Add5~3\);

-- Location: LCCOMB_X54_Y47_N6
\IR|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add5~4_combout\ = ((\IR|old_data_3\(3) $ (\IR|Add4~0_combout\ $ (!\IR|Add5~3\)))) # (GND)
-- \IR|Add5~5\ = CARRY((\IR|old_data_3\(3) & ((\IR|Add4~0_combout\) # (!\IR|Add5~3\))) # (!\IR|old_data_3\(3) & (\IR|Add4~0_combout\ & !\IR|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_3\(3),
	datab => \IR|Add4~0_combout\,
	datad => VCC,
	cin => \IR|Add5~3\,
	combout => \IR|Add5~4_combout\,
	cout => \IR|Add5~5\);

-- Location: LCCOMB_X55_Y46_N0
\IR|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux30~0_combout\ = (\mode~input_o\ & \IR|Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~input_o\,
	datad => \IR|Add5~4_combout\,
	combout => \IR|Mux30~0_combout\);

-- Location: LCCOMB_X54_Y47_N28
\IR|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add4~2_combout\ = (\IR|old_data_2\(2) & ((\IR|old_data_2\(0) & ((\IR|old_data_2\(3)) # (\IR|old_data_2\(1)))) # (!\IR|old_data_2\(0) & (\IR|old_data_2\(3) & \IR|old_data_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(2),
	datab => \IR|old_data_2\(0),
	datac => \IR|old_data_2\(3),
	datad => \IR|old_data_2\(1),
	combout => \IR|Add4~2_combout\);

-- Location: LCCOMB_X54_Y47_N30
\IR|Add4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add4~3_combout\ = (\IR|old_data_2\(3) & ((\IR|old_data_2\(1)) # ((\IR|old_data_2\(2) & \IR|old_data_2\(0))))) # (!\IR|old_data_2\(3) & (\IR|old_data_2\(1) & (\IR|old_data_2\(2) & \IR|old_data_2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(3),
	datab => \IR|old_data_2\(1),
	datac => \IR|old_data_2\(2),
	datad => \IR|old_data_2\(0),
	combout => \IR|Add4~3_combout\);

-- Location: LCCOMB_X54_Y47_N22
\IR|Add4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add4~1_combout\ = \IR|old_data_2\(3) $ (\IR|old_data_2\(1) $ (((\IR|old_data_2\(0) & \IR|old_data_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(0),
	datab => \IR|old_data_2\(3),
	datac => \IR|old_data_2\(2),
	datad => \IR|old_data_2\(1),
	combout => \IR|Add4~1_combout\);

-- Location: LCCOMB_X54_Y47_N8
\IR|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add5~6_combout\ = (\IR|Add4~1_combout\ & (!\IR|Add5~5\)) # (!\IR|Add4~1_combout\ & ((\IR|Add5~5\) # (GND)))
-- \IR|Add5~7\ = CARRY((!\IR|Add5~5\) # (!\IR|Add4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add4~1_combout\,
	datad => VCC,
	cin => \IR|Add5~5\,
	combout => \IR|Add5~6_combout\,
	cout => \IR|Add5~7\);

-- Location: LCCOMB_X54_Y47_N10
\IR|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add5~8_combout\ = (\IR|Add5~7\ & ((\IR|Add4~3_combout\ $ (\IR|old_data_2\(2))))) # (!\IR|Add5~7\ & (\IR|Add4~3_combout\ $ (\IR|old_data_2\(2) $ (VCC))))
-- \IR|Add5~9\ = CARRY((!\IR|Add5~7\ & (\IR|Add4~3_combout\ $ (\IR|old_data_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add4~3_combout\,
	datab => \IR|old_data_2\(2),
	datad => VCC,
	cin => \IR|Add5~7\,
	combout => \IR|Add5~8_combout\,
	cout => \IR|Add5~9\);

-- Location: LCCOMB_X54_Y47_N12
\IR|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add5~10_combout\ = (\IR|Add5~9\ & (\IR|old_data_2\(3) $ ((!\IR|Add4~2_combout\)))) # (!\IR|Add5~9\ & ((\IR|old_data_2\(3) $ (\IR|Add4~2_combout\)) # (GND)))
-- \IR|Add5~11\ = CARRY((\IR|old_data_2\(3) $ (!\IR|Add4~2_combout\)) # (!\IR|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(3),
	datab => \IR|Add4~2_combout\,
	datad => VCC,
	cin => \IR|Add5~9\,
	combout => \IR|Add5~10_combout\,
	cout => \IR|Add5~11\);

-- Location: LCCOMB_X54_Y47_N14
\IR|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add5~12_combout\ = \IR|Add5~11\ $ (((!\IR|Add4~2_combout\) # (!\IR|old_data_2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(3),
	datad => \IR|Add4~2_combout\,
	cin => \IR|Add5~11\,
	combout => \IR|Add5~12_combout\);

-- Location: LCCOMB_X60_Y47_N4
\IR|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|LessThan2~0_combout\ = (!\IR|Add5~10_combout\ & (!\IR|Add5~8_combout\ & (!\IR|Add5~12_combout\ & !\IR|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add5~10_combout\,
	datab => \IR|Add5~8_combout\,
	datac => \IR|Add5~12_combout\,
	datad => \IR|Add5~6_combout\,
	combout => \IR|LessThan2~0_combout\);

-- Location: LCCOMB_X55_Y47_N12
\IR|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add2~1_cout\ = CARRY(!\IR|old_data_3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_3\(0),
	datad => VCC,
	cout => \IR|Add2~1_cout\);

-- Location: LCCOMB_X55_Y47_N14
\IR|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add2~2_combout\ = (\IR|Add5~0_combout\ & ((\IR|Add2~1_cout\) # (GND))) # (!\IR|Add5~0_combout\ & (!\IR|Add2~1_cout\))
-- \IR|Add2~3\ = CARRY((\IR|Add5~0_combout\) # (!\IR|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add5~0_combout\,
	datad => VCC,
	cin => \IR|Add2~1_cout\,
	combout => \IR|Add2~2_combout\,
	cout => \IR|Add2~3\);

-- Location: LCCOMB_X55_Y47_N16
\IR|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add2~4_combout\ = (\IR|Add5~2_combout\ & (!\IR|Add2~3\ & VCC)) # (!\IR|Add5~2_combout\ & (\IR|Add2~3\ $ (GND)))
-- \IR|Add2~5\ = CARRY((!\IR|Add5~2_combout\ & !\IR|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|Add5~2_combout\,
	datad => VCC,
	cin => \IR|Add2~3\,
	combout => \IR|Add2~4_combout\,
	cout => \IR|Add2~5\);

-- Location: LCCOMB_X55_Y47_N18
\IR|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add2~6_combout\ = (\IR|Add5~4_combout\ & ((\IR|Add2~5\) # (GND))) # (!\IR|Add5~4_combout\ & (!\IR|Add2~5\))
-- \IR|Add2~7\ = CARRY((\IR|Add5~4_combout\) # (!\IR|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|Add5~4_combout\,
	datad => VCC,
	cin => \IR|Add2~5\,
	combout => \IR|Add2~6_combout\,
	cout => \IR|Add2~7\);

-- Location: LCCOMB_X55_Y47_N20
\IR|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add2~8_combout\ = (\IR|Add5~6_combout\ & (!\IR|Add2~7\ & VCC)) # (!\IR|Add5~6_combout\ & (\IR|Add2~7\ $ (GND)))
-- \IR|Add2~9\ = CARRY((!\IR|Add5~6_combout\ & !\IR|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add5~6_combout\,
	datad => VCC,
	cin => \IR|Add2~7\,
	combout => \IR|Add2~8_combout\,
	cout => \IR|Add2~9\);

-- Location: LCCOMB_X55_Y47_N22
\IR|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add2~10_combout\ = (\IR|Add5~8_combout\ & ((\IR|Add2~9\) # (GND))) # (!\IR|Add5~8_combout\ & (!\IR|Add2~9\))
-- \IR|Add2~11\ = CARRY((\IR|Add5~8_combout\) # (!\IR|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add5~8_combout\,
	datad => VCC,
	cin => \IR|Add2~9\,
	combout => \IR|Add2~10_combout\,
	cout => \IR|Add2~11\);

-- Location: LCCOMB_X55_Y47_N24
\IR|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add2~12_combout\ = (\IR|Add5~10_combout\ & (!\IR|Add2~11\ & VCC)) # (!\IR|Add5~10_combout\ & (\IR|Add2~11\ $ (GND)))
-- \IR|Add2~13\ = CARRY((!\IR|Add5~10_combout\ & !\IR|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add5~10_combout\,
	datad => VCC,
	cin => \IR|Add2~11\,
	combout => \IR|Add2~12_combout\,
	cout => \IR|Add2~13\);

-- Location: LCCOMB_X55_Y47_N26
\IR|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add2~14_combout\ = (\IR|Add5~12_combout\ & ((\IR|Add2~13\) # (GND))) # (!\IR|Add5~12_combout\ & (!\IR|Add2~13\))
-- \IR|Add2~15\ = CARRY((\IR|Add5~12_combout\) # (!\IR|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add5~12_combout\,
	datad => VCC,
	cin => \IR|Add2~13\,
	combout => \IR|Add2~14_combout\,
	cout => \IR|Add2~15\);

-- Location: LCCOMB_X55_Y47_N28
\IR|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add2~16_combout\ = \IR|Add2~15\ $ (GND)
-- \IR|Add2~17\ = CARRY(!\IR|Add2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \IR|Add2~15\,
	combout => \IR|Add2~16_combout\,
	cout => \IR|Add2~17\);

-- Location: LCCOMB_X55_Y47_N4
\IR|analyse_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|analyse_data~0_combout\ = (\IR|Add2~14_combout\ & ((\IR|Add2~16_combout\) # (!\IR|Add2~8_combout\))) # (!\IR|Add2~14_combout\ & (!\IR|Add2~8_combout\ & \IR|Add2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add2~14_combout\,
	datab => \IR|Add2~8_combout\,
	datad => \IR|Add2~16_combout\,
	combout => \IR|analyse_data~0_combout\);

-- Location: LCCOMB_X55_Y47_N30
\IR|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add2~18_combout\ = !\IR|Add2~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IR|Add2~17\,
	combout => \IR|Add2~18_combout\);

-- Location: LCCOMB_X55_Y47_N0
\IR|analyse_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|analyse_data~1_combout\ = (\IR|Add2~10_combout\ & (\IR|Add2~8_combout\ & (\IR|Add2~18_combout\ & \IR|Add2~12_combout\))) # (!\IR|Add2~10_combout\ & ((\IR|Add2~8_combout\) # ((\IR|Add2~18_combout\) # (\IR|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add2~10_combout\,
	datab => \IR|Add2~8_combout\,
	datac => \IR|Add2~18_combout\,
	datad => \IR|Add2~12_combout\,
	combout => \IR|analyse_data~1_combout\);

-- Location: LCCOMB_X55_Y47_N2
\IR|analyse_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|analyse_data~2_combout\ = (\IR|Add2~10_combout\ & (((!\IR|analyse_data~1_combout\) # (!\IR|analyse_data~0_combout\)) # (!\IR|Add2~6_combout\))) # (!\IR|Add2~10_combout\ & ((\IR|Add2~6_combout\) # ((\IR|analyse_data~0_combout\) # 
-- (\IR|analyse_data~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add2~10_combout\,
	datab => \IR|Add2~6_combout\,
	datac => \IR|analyse_data~0_combout\,
	datad => \IR|analyse_data~1_combout\,
	combout => \IR|analyse_data~2_combout\);

-- Location: LCCOMB_X55_Y47_N8
\IR|Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux30~1_combout\ = (\IR|A[1]~0_combout\ & ((\IR|Mux30~0_combout\) # ((!\IR|LessThan2~0_combout\)))) # (!\IR|A[1]~0_combout\ & (((\IR|analyse_data~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A[1]~0_combout\,
	datab => \IR|Mux30~0_combout\,
	datac => \IR|LessThan2~0_combout\,
	datad => \IR|analyse_data~2_combout\,
	combout => \IR|Mux30~1_combout\);

-- Location: LCCOMB_X57_Y45_N8
\IR|Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux30~2_combout\ = (\IR|old_data_3\(0) & !\IR|Mux30~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|old_data_3\(0),
	datad => \IR|Mux30~1_combout\,
	combout => \IR|Mux30~2_combout\);

-- Location: LCCOMB_X58_Y47_N2
\IR|A[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|A[0]~2_combout\ = (\IR|analyse_data:counter[2]~q\ & (\IR|analyse_data:counter[1]~q\ & \IR|A[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|analyse_data:counter[2]~q\,
	datac => \IR|analyse_data:counter[1]~q\,
	datad => \IR|A[0]~1_combout\,
	combout => \IR|A[0]~2_combout\);

-- Location: FF_X57_Y45_N9
\IR|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux30~2_combout\,
	clrn => \reset~input_o\,
	ena => \IR|A[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|A\(0));

-- Location: LCCOMB_X56_Y45_N24
\IR|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux29~0_combout\ = (!\IR|Mux30~1_combout\ & ((\IR|A[1]~0_combout\ & (\IR|Add5~0_combout\)) # (!\IR|A[1]~0_combout\ & ((\IR|Add2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add5~0_combout\,
	datab => \IR|Add2~2_combout\,
	datac => \IR|A[1]~0_combout\,
	datad => \IR|Mux30~1_combout\,
	combout => \IR|Mux29~0_combout\);

-- Location: FF_X56_Y45_N25
\IR|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux29~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|A[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|A\(1));

-- Location: LCCOMB_X56_Y45_N14
\IR|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux28~0_combout\ = (!\IR|Mux30~1_combout\ & ((\IR|A[1]~0_combout\ & (\IR|Add5~2_combout\)) # (!\IR|A[1]~0_combout\ & ((\IR|Add2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add5~2_combout\,
	datab => \IR|Add2~4_combout\,
	datac => \IR|A[1]~0_combout\,
	datad => \IR|Mux30~1_combout\,
	combout => \IR|Mux28~0_combout\);

-- Location: FF_X56_Y45_N15
\IR|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux28~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|A[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|A\(2));

-- Location: LCCOMB_X57_Y45_N6
\IR|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux27~0_combout\ = (!\IR|Mux30~1_combout\ & ((\IR|A[1]~0_combout\ & (\IR|Add5~4_combout\)) # (!\IR|A[1]~0_combout\ & ((\IR|Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A[1]~0_combout\,
	datab => \IR|Add5~4_combout\,
	datac => \IR|Add2~6_combout\,
	datad => \IR|Mux30~1_combout\,
	combout => \IR|Mux27~0_combout\);

-- Location: FF_X57_Y45_N7
\IR|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux27~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|A[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|A\(3));

-- Location: LCCOMB_X57_Y47_N24
\IR|Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux22~2_combout\ = (!\IR|analyse_data:counter[0]~q\ & ((\IR|irRec|data_reg\(22)) # ((!\IR|irRec|Mux3~4_combout\) # (!\IR|irRec|data_reg\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|data_reg\(22),
	datab => \IR|irRec|data_reg\(16),
	datac => \IR|irRec|Mux3~4_combout\,
	datad => \IR|analyse_data:counter[0]~q\,
	combout => \IR|Mux22~2_combout\);

-- Location: LCCOMB_X59_Y47_N0
\IR|old_data_5[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_5[3]~0_combout\ = ((!\IR|irRec|Mux2~4_combout\ & (\IR|Equal0~0_combout\ & !\IR|irRec|Mux3~5_combout\))) # (!\IR|analyse_data:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Mux2~4_combout\,
	datab => \IR|analyse_data:counter[0]~q\,
	datac => \IR|Equal0~0_combout\,
	datad => \IR|irRec|Mux3~5_combout\,
	combout => \IR|old_data_5[3]~0_combout\);

-- Location: LCCOMB_X59_Y47_N26
\IR|old_data_5[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_5[3]~1_combout\ = (!\IR|analyse_data:counter[1]~q\ & (\IR|analyse_data:counter[2]~q\ & (\IR|A[0]~1_combout\ & \IR|old_data_5[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|analyse_data:counter[1]~q\,
	datab => \IR|analyse_data:counter[2]~q\,
	datac => \IR|A[0]~1_combout\,
	datad => \IR|old_data_5[3]~0_combout\,
	combout => \IR|old_data_5[3]~1_combout\);

-- Location: FF_X57_Y47_N25
\IR|old_data_5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux22~2_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_5\(0));

-- Location: LCCOMB_X58_Y47_N8
\IR|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux26~0_combout\ = (\IR|irRec|Mux3~5_combout\) # ((\IR|Equal0~0_combout\ & (!\IR|irRec|Mux2~4_combout\ & \IR|old_data_5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Equal0~0_combout\,
	datab => \IR|irRec|Mux2~4_combout\,
	datac => \IR|old_data_5\(0),
	datad => \IR|irRec|Mux3~5_combout\,
	combout => \IR|Mux26~0_combout\);

-- Location: LCCOMB_X58_Y47_N22
\IR|old_data_6[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_6[3]~0_combout\ = (\IR|analyse_data:counter[0]~q\ & (\IR|analyse_data:counter[2]~q\ & (!\IR|analyse_data:counter[1]~q\ & \IR|A[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|analyse_data:counter[0]~q\,
	datab => \IR|analyse_data:counter[2]~q\,
	datac => \IR|analyse_data:counter[1]~q\,
	datad => \IR|A[0]~1_combout\,
	combout => \IR|old_data_6[3]~0_combout\);

-- Location: FF_X58_Y47_N9
\IR|old_data_6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux26~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_6[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_6\(0));

-- Location: LCCOMB_X57_Y47_N26
\IR|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux20~0_combout\ = (!\IR|analyse_data:counter[0]~q\ & (((\IR|irRec|Mux1~6_combout\) # (!\IR|irRec|Mux0~0_combout\)) # (!\IR|irRec|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|irRec|Mux1~4_combout\,
	datab => \IR|irRec|Mux0~0_combout\,
	datac => \IR|irRec|Mux1~6_combout\,
	datad => \IR|analyse_data:counter[0]~q\,
	combout => \IR|Mux20~0_combout\);

-- Location: FF_X57_Y47_N27
\IR|old_data_5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux20~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_5\(2));

-- Location: LCCOMB_X57_Y47_N22
\IR|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add6~0_combout\ = \IR|old_data_5\(2) $ (\IR|old_data_5\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(2),
	datad => \IR|old_data_5\(0),
	combout => \IR|Add6~0_combout\);

-- Location: LCCOMB_X57_Y47_N4
\IR|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux19~0_combout\ = (!\IR|analyse_data:counter[0]~q\ & ((\IR|irRec|Mux0~1_combout\) # (\IR|irRec|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|irRec|Mux0~1_combout\,
	datac => \IR|irRec|Mux0~3_combout\,
	datad => \IR|analyse_data:counter[0]~q\,
	combout => \IR|Mux19~0_combout\);

-- Location: FF_X57_Y47_N5
\IR|old_data_5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux19~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_5\(3));

-- Location: LCCOMB_X58_Y47_N28
\IR|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Equal3~0_combout\ = ((\IR|irRec|Mux2~4_combout\) # (\IR|irRec|Mux3~5_combout\)) # (!\IR|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Equal0~0_combout\,
	datab => \IR|irRec|Mux2~4_combout\,
	datad => \IR|irRec|Mux3~5_combout\,
	combout => \IR|Equal3~0_combout\);

-- Location: LCCOMB_X58_Y47_N26
\IR|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux23~0_combout\ = (\IR|Equal3~0_combout\ & (((\IR|irRec|Mux0~1_combout\) # (\IR|irRec|Mux0~3_combout\)))) # (!\IR|Equal3~0_combout\ & (\IR|old_data_5\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(3),
	datab => \IR|irRec|Mux0~1_combout\,
	datac => \IR|irRec|Mux0~3_combout\,
	datad => \IR|Equal3~0_combout\,
	combout => \IR|Mux23~0_combout\);

-- Location: FF_X58_Y47_N27
\IR|old_data_6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux23~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_6[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_6\(3));

-- Location: LCCOMB_X57_Y47_N28
\IR|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux21~0_combout\ = (\IR|irRec|Mux2~4_combout\ & !\IR|analyse_data:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|irRec|Mux2~4_combout\,
	datad => \IR|analyse_data:counter[0]~q\,
	combout => \IR|Mux21~0_combout\);

-- Location: FF_X57_Y47_N29
\IR|old_data_5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux21~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_5\(1));

-- Location: LCCOMB_X58_Y47_N14
\IR|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux24~0_combout\ = (\IR|Equal3~0_combout\ & ((!\IR|irRec|Mux1~7_combout\))) # (!\IR|Equal3~0_combout\ & (\IR|old_data_5\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|old_data_5\(2),
	datac => \IR|irRec|Mux1~7_combout\,
	datad => \IR|Equal3~0_combout\,
	combout => \IR|Mux24~0_combout\);

-- Location: FF_X57_Y47_N23
\IR|old_data_6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \IR|Mux24~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \IR|old_data_6[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_6\(2));

-- Location: LCCOMB_X57_Y47_N0
\IR|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux25~0_combout\ = (\IR|irRec|Mux2~4_combout\) # ((\IR|Equal0~0_combout\ & (\IR|old_data_5\(1) & !\IR|irRec|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Equal0~0_combout\,
	datab => \IR|old_data_5\(1),
	datac => \IR|irRec|Mux2~4_combout\,
	datad => \IR|irRec|Mux3~5_combout\,
	combout => \IR|Mux25~0_combout\);

-- Location: FF_X57_Y47_N1
\IR|old_data_6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux25~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_6[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_6\(1));

-- Location: LCCOMB_X57_Y47_N6
\IR|Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add7~0_combout\ = (\IR|old_data_6\(1) & (\IR|old_data_5\(0) $ (VCC))) # (!\IR|old_data_6\(1) & (\IR|old_data_5\(0) & VCC))
-- \IR|Add7~1\ = CARRY((\IR|old_data_6\(1) & \IR|old_data_5\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_6\(1),
	datab => \IR|old_data_5\(0),
	datad => VCC,
	combout => \IR|Add7~0_combout\,
	cout => \IR|Add7~1\);

-- Location: LCCOMB_X57_Y47_N8
\IR|Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add7~2_combout\ = (\IR|old_data_5\(1) & ((\IR|old_data_6\(2) & (\IR|Add7~1\ & VCC)) # (!\IR|old_data_6\(2) & (!\IR|Add7~1\)))) # (!\IR|old_data_5\(1) & ((\IR|old_data_6\(2) & (!\IR|Add7~1\)) # (!\IR|old_data_6\(2) & ((\IR|Add7~1\) # (GND)))))
-- \IR|Add7~3\ = CARRY((\IR|old_data_5\(1) & (!\IR|old_data_6\(2) & !\IR|Add7~1\)) # (!\IR|old_data_5\(1) & ((!\IR|Add7~1\) # (!\IR|old_data_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(1),
	datab => \IR|old_data_6\(2),
	datad => VCC,
	cin => \IR|Add7~1\,
	combout => \IR|Add7~2_combout\,
	cout => \IR|Add7~3\);

-- Location: LCCOMB_X57_Y47_N10
\IR|Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add7~4_combout\ = ((\IR|Add6~0_combout\ $ (\IR|old_data_6\(3) $ (!\IR|Add7~3\)))) # (GND)
-- \IR|Add7~5\ = CARRY((\IR|Add6~0_combout\ & ((\IR|old_data_6\(3)) # (!\IR|Add7~3\))) # (!\IR|Add6~0_combout\ & (\IR|old_data_6\(3) & !\IR|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add6~0_combout\,
	datab => \IR|old_data_6\(3),
	datad => VCC,
	cin => \IR|Add7~3\,
	combout => \IR|Add7~4_combout\,
	cout => \IR|Add7~5\);

-- Location: LCCOMB_X56_Y45_N26
\IR|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux34~0_combout\ = (\mode~input_o\ & \IR|Add7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~input_o\,
	datad => \IR|Add7~4_combout\,
	combout => \IR|Mux34~0_combout\);

-- Location: LCCOMB_X57_Y47_N2
\IR|Add6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add6~3_combout\ = (\IR|old_data_5\(3) & ((\IR|old_data_5\(1)) # ((\IR|old_data_5\(2) & \IR|old_data_5\(0))))) # (!\IR|old_data_5\(3) & (\IR|old_data_5\(1) & (\IR|old_data_5\(2) & \IR|old_data_5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(3),
	datab => \IR|old_data_5\(1),
	datac => \IR|old_data_5\(2),
	datad => \IR|old_data_5\(0),
	combout => \IR|Add6~3_combout\);

-- Location: LCCOMB_X57_Y47_N30
\IR|Add6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add6~1_combout\ = \IR|old_data_5\(3) $ (\IR|old_data_5\(1) $ (((\IR|old_data_5\(2) & \IR|old_data_5\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(2),
	datab => \IR|old_data_5\(0),
	datac => \IR|old_data_5\(3),
	datad => \IR|old_data_5\(1),
	combout => \IR|Add6~1_combout\);

-- Location: LCCOMB_X57_Y47_N12
\IR|Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add7~6_combout\ = (\IR|Add6~1_combout\ & (!\IR|Add7~5\)) # (!\IR|Add6~1_combout\ & ((\IR|Add7~5\) # (GND)))
-- \IR|Add7~7\ = CARRY((!\IR|Add7~5\) # (!\IR|Add6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add6~1_combout\,
	datad => VCC,
	cin => \IR|Add7~5\,
	combout => \IR|Add7~6_combout\,
	cout => \IR|Add7~7\);

-- Location: LCCOMB_X57_Y47_N14
\IR|Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add7~8_combout\ = (\IR|Add7~7\ & ((\IR|old_data_5\(2) $ (\IR|Add6~3_combout\)))) # (!\IR|Add7~7\ & (\IR|old_data_5\(2) $ (\IR|Add6~3_combout\ $ (VCC))))
-- \IR|Add7~9\ = CARRY((!\IR|Add7~7\ & (\IR|old_data_5\(2) $ (\IR|Add6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(2),
	datab => \IR|Add6~3_combout\,
	datad => VCC,
	cin => \IR|Add7~7\,
	combout => \IR|Add7~8_combout\,
	cout => \IR|Add7~9\);

-- Location: LCCOMB_X57_Y47_N20
\IR|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add6~2_combout\ = (\IR|old_data_5\(2) & ((\IR|old_data_5\(0) & ((\IR|old_data_5\(3)) # (\IR|old_data_5\(1)))) # (!\IR|old_data_5\(0) & (\IR|old_data_5\(3) & \IR|old_data_5\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(2),
	datab => \IR|old_data_5\(0),
	datac => \IR|old_data_5\(3),
	datad => \IR|old_data_5\(1),
	combout => \IR|Add6~2_combout\);

-- Location: LCCOMB_X57_Y47_N16
\IR|Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add7~10_combout\ = (\IR|Add7~9\ & (\IR|old_data_5\(3) $ ((!\IR|Add6~2_combout\)))) # (!\IR|Add7~9\ & ((\IR|old_data_5\(3) $ (\IR|Add6~2_combout\)) # (GND)))
-- \IR|Add7~11\ = CARRY((\IR|old_data_5\(3) $ (!\IR|Add6~2_combout\)) # (!\IR|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(3),
	datab => \IR|Add6~2_combout\,
	datad => VCC,
	cin => \IR|Add7~9\,
	combout => \IR|Add7~10_combout\,
	cout => \IR|Add7~11\);

-- Location: LCCOMB_X57_Y47_N18
\IR|Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add7~12_combout\ = \IR|Add7~11\ $ (((!\IR|Add6~2_combout\) # (!\IR|old_data_5\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(3),
	datad => \IR|Add6~2_combout\,
	cin => \IR|Add7~11\,
	combout => \IR|Add7~12_combout\);

-- Location: LCCOMB_X58_Y47_N24
\IR|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|LessThan5~0_combout\ = (!\IR|Add7~8_combout\ & (!\IR|Add7~12_combout\ & (!\IR|Add7~10_combout\ & !\IR|Add7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add7~8_combout\,
	datab => \IR|Add7~12_combout\,
	datac => \IR|Add7~10_combout\,
	datad => \IR|Add7~6_combout\,
	combout => \IR|LessThan5~0_combout\);

-- Location: LCCOMB_X59_Y49_N30
\IR|old_data_4[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_4[0]~feeder_combout\ = \IR|irRec|Mux3~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IR|irRec|Mux3~5_combout\,
	combout => \IR|old_data_4[0]~feeder_combout\);

-- Location: LCCOMB_X59_Y47_N20
\IR|old_data_4[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_4[3]~0_combout\ = (\IR|analyse_data:counter[1]~q\ & (!\IR|analyse_data:counter[2]~q\ & (\IR|A[0]~1_combout\ & !\IR|analyse_data~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|analyse_data:counter[1]~q\,
	datab => \IR|analyse_data:counter[2]~q\,
	datac => \IR|A[0]~1_combout\,
	datad => \IR|analyse_data~6_combout\,
	combout => \IR|old_data_4[3]~0_combout\);

-- Location: FF_X59_Y49_N31
\IR|old_data_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|old_data_4[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_4[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_4\(0));

-- Location: LCCOMB_X59_Y49_N0
\IR|old_data_4[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|old_data_4[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \IR|old_data_4[3]~feeder_combout\);

-- Location: FF_X59_Y49_N1
\IR|old_data_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|old_data_4[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \IR|old_data_4[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|old_data_4\(3));

-- Location: LCCOMB_X59_Y49_N6
\IR|B[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|B[3]~0_combout\ = (\IR|old_data_4\(0)) # ((!\IR|old_data_4\(3)) # (!\mode~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_4\(0),
	datac => \mode~input_o\,
	datad => \IR|old_data_4\(3),
	combout => \IR|B[3]~0_combout\);

-- Location: LCCOMB_X56_Y47_N0
\IR|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add3~1_cout\ = CARRY(!\IR|old_data_6\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_6\(0),
	datad => VCC,
	cout => \IR|Add3~1_cout\);

-- Location: LCCOMB_X56_Y47_N2
\IR|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add3~2_combout\ = (\IR|Add7~0_combout\ & ((\IR|Add3~1_cout\) # (GND))) # (!\IR|Add7~0_combout\ & (!\IR|Add3~1_cout\))
-- \IR|Add3~3\ = CARRY((\IR|Add7~0_combout\) # (!\IR|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add7~0_combout\,
	datad => VCC,
	cin => \IR|Add3~1_cout\,
	combout => \IR|Add3~2_combout\,
	cout => \IR|Add3~3\);

-- Location: LCCOMB_X56_Y47_N4
\IR|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add3~4_combout\ = (\IR|Add7~2_combout\ & (!\IR|Add3~3\ & VCC)) # (!\IR|Add7~2_combout\ & (\IR|Add3~3\ $ (GND)))
-- \IR|Add3~5\ = CARRY((!\IR|Add7~2_combout\ & !\IR|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|Add7~2_combout\,
	datad => VCC,
	cin => \IR|Add3~3\,
	combout => \IR|Add3~4_combout\,
	cout => \IR|Add3~5\);

-- Location: LCCOMB_X56_Y47_N6
\IR|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add3~6_combout\ = (\IR|Add7~4_combout\ & ((\IR|Add3~5\) # (GND))) # (!\IR|Add7~4_combout\ & (!\IR|Add3~5\))
-- \IR|Add3~7\ = CARRY((\IR|Add7~4_combout\) # (!\IR|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|Add7~4_combout\,
	datad => VCC,
	cin => \IR|Add3~5\,
	combout => \IR|Add3~6_combout\,
	cout => \IR|Add3~7\);

-- Location: LCCOMB_X56_Y47_N8
\IR|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add3~8_combout\ = (\IR|Add7~6_combout\ & (!\IR|Add3~7\ & VCC)) # (!\IR|Add7~6_combout\ & (\IR|Add3~7\ $ (GND)))
-- \IR|Add3~9\ = CARRY((!\IR|Add7~6_combout\ & !\IR|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|Add7~6_combout\,
	datad => VCC,
	cin => \IR|Add3~7\,
	combout => \IR|Add3~8_combout\,
	cout => \IR|Add3~9\);

-- Location: LCCOMB_X56_Y47_N10
\IR|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add3~10_combout\ = (\IR|Add7~8_combout\ & ((\IR|Add3~9\) # (GND))) # (!\IR|Add7~8_combout\ & (!\IR|Add3~9\))
-- \IR|Add3~11\ = CARRY((\IR|Add7~8_combout\) # (!\IR|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|Add7~8_combout\,
	datad => VCC,
	cin => \IR|Add3~9\,
	combout => \IR|Add3~10_combout\,
	cout => \IR|Add3~11\);

-- Location: LCCOMB_X56_Y47_N12
\IR|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add3~12_combout\ = (\IR|Add7~10_combout\ & (!\IR|Add3~11\ & VCC)) # (!\IR|Add7~10_combout\ & (\IR|Add3~11\ $ (GND)))
-- \IR|Add3~13\ = CARRY((!\IR|Add7~10_combout\ & !\IR|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|Add7~10_combout\,
	datad => VCC,
	cin => \IR|Add3~11\,
	combout => \IR|Add3~12_combout\,
	cout => \IR|Add3~13\);

-- Location: LCCOMB_X56_Y47_N14
\IR|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add3~14_combout\ = (\IR|Add7~12_combout\ & ((\IR|Add3~13\) # (GND))) # (!\IR|Add7~12_combout\ & (!\IR|Add3~13\))
-- \IR|Add3~15\ = CARRY((\IR|Add7~12_combout\) # (!\IR|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|Add7~12_combout\,
	datad => VCC,
	cin => \IR|Add3~13\,
	combout => \IR|Add3~14_combout\,
	cout => \IR|Add3~15\);

-- Location: LCCOMB_X56_Y47_N16
\IR|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add3~16_combout\ = \IR|Add3~15\ $ (GND)
-- \IR|Add3~17\ = CARRY(!\IR|Add3~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \IR|Add3~15\,
	combout => \IR|Add3~16_combout\,
	cout => \IR|Add3~17\);

-- Location: LCCOMB_X56_Y47_N22
\IR|analyse_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|analyse_data~3_combout\ = (\IR|Add3~8_combout\ & (\IR|Add3~14_combout\ & \IR|Add3~16_combout\)) # (!\IR|Add3~8_combout\ & ((\IR|Add3~14_combout\) # (\IR|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Add3~8_combout\,
	datac => \IR|Add3~14_combout\,
	datad => \IR|Add3~16_combout\,
	combout => \IR|analyse_data~3_combout\);

-- Location: LCCOMB_X56_Y47_N18
\IR|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Add3~18_combout\ = !\IR|Add3~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IR|Add3~17\,
	combout => \IR|Add3~18_combout\);

-- Location: LCCOMB_X56_Y47_N28
\IR|analyse_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|analyse_data~4_combout\ = (\IR|Add3~12_combout\ & (((\IR|Add3~8_combout\ & \IR|Add3~18_combout\)) # (!\IR|Add3~10_combout\))) # (!\IR|Add3~12_combout\ & (!\IR|Add3~10_combout\ & ((\IR|Add3~8_combout\) # (\IR|Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add3~12_combout\,
	datab => \IR|Add3~8_combout\,
	datac => \IR|Add3~10_combout\,
	datad => \IR|Add3~18_combout\,
	combout => \IR|analyse_data~4_combout\);

-- Location: LCCOMB_X56_Y47_N30
\IR|analyse_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|analyse_data~5_combout\ = (\IR|Add3~6_combout\ & (((!\IR|analyse_data~4_combout\) # (!\IR|analyse_data~3_combout\)) # (!\IR|Add3~10_combout\))) # (!\IR|Add3~6_combout\ & ((\IR|Add3~10_combout\) # ((\IR|analyse_data~3_combout\) # 
-- (\IR|analyse_data~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add3~6_combout\,
	datab => \IR|Add3~10_combout\,
	datac => \IR|analyse_data~3_combout\,
	datad => \IR|analyse_data~4_combout\,
	combout => \IR|analyse_data~5_combout\);

-- Location: LCCOMB_X57_Y45_N12
\IR|Mux34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux34~1_combout\ = (\IR|B[3]~0_combout\ & ((\IR|Mux34~0_combout\) # ((!\IR|LessThan5~0_combout\)))) # (!\IR|B[3]~0_combout\ & (((\IR|analyse_data~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Mux34~0_combout\,
	datab => \IR|LessThan5~0_combout\,
	datac => \IR|B[3]~0_combout\,
	datad => \IR|analyse_data~5_combout\,
	combout => \IR|Mux34~1_combout\);

-- Location: LCCOMB_X57_Y45_N0
\IR|Mux34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux34~2_combout\ = (\IR|old_data_6\(0) & !\IR|Mux34~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|old_data_6\(0),
	datad => \IR|Mux34~1_combout\,
	combout => \IR|Mux34~2_combout\);

-- Location: FF_X57_Y45_N1
\IR|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux34~2_combout\,
	clrn => \reset~input_o\,
	ena => \IR|A[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|B\(0));

-- Location: LCCOMB_X58_Y45_N8
\IR|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux33~0_combout\ = (!\IR|Mux34~1_combout\ & ((\IR|B[3]~0_combout\ & (\IR|Add7~0_combout\)) # (!\IR|B[3]~0_combout\ & ((\IR|Add3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B[3]~0_combout\,
	datab => \IR|Add7~0_combout\,
	datac => \IR|Add3~2_combout\,
	datad => \IR|Mux34~1_combout\,
	combout => \IR|Mux33~0_combout\);

-- Location: FF_X58_Y45_N9
\IR|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux33~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|A[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|B\(1));

-- Location: LCCOMB_X58_Y45_N2
\IR|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux32~0_combout\ = (!\IR|Mux34~1_combout\ & ((\IR|B[3]~0_combout\ & (\IR|Add7~2_combout\)) # (!\IR|B[3]~0_combout\ & ((\IR|Add3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B[3]~0_combout\,
	datab => \IR|Add7~2_combout\,
	datac => \IR|Add3~4_combout\,
	datad => \IR|Mux34~1_combout\,
	combout => \IR|Mux32~0_combout\);

-- Location: FF_X58_Y45_N3
\IR|B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux32~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|A[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|B\(2));

-- Location: LCCOMB_X57_Y45_N14
\IR|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|Mux31~0_combout\ = (!\IR|Mux34~1_combout\ & ((\IR|B[3]~0_combout\ & ((\IR|Add7~4_combout\))) # (!\IR|B[3]~0_combout\ & (\IR|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Add3~6_combout\,
	datab => \IR|Add7~4_combout\,
	datac => \IR|B[3]~0_combout\,
	datad => \IR|Mux34~1_combout\,
	combout => \IR|Mux31~0_combout\);

-- Location: FF_X57_Y45_N15
\IR|B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|Mux31~0_combout\,
	clrn => \reset~input_o\,
	ena => \IR|A[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|B\(3));

-- Location: LCCOMB_X59_Y41_N0
\calculette|add0|Res[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|add0|Res[0]~0_combout\ = (\IR|A\(0) & (\IR|B\(0) $ (VCC))) # (!\IR|A\(0) & (\IR|B\(0) & VCC))
-- \calculette|add0|Res[0]~1\ = CARRY((\IR|A\(0) & \IR|B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(0),
	datab => \IR|B\(0),
	datad => VCC,
	combout => \calculette|add0|Res[0]~0_combout\,
	cout => \calculette|add0|Res[0]~1\);

-- Location: LCCOMB_X59_Y41_N2
\calculette|add0|Res[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|add0|Res[1]~2_combout\ = (\IR|B\(1) & ((\IR|A\(1) & (\calculette|add0|Res[0]~1\ & VCC)) # (!\IR|A\(1) & (!\calculette|add0|Res[0]~1\)))) # (!\IR|B\(1) & ((\IR|A\(1) & (!\calculette|add0|Res[0]~1\)) # (!\IR|A\(1) & ((\calculette|add0|Res[0]~1\) 
-- # (GND)))))
-- \calculette|add0|Res[1]~3\ = CARRY((\IR|B\(1) & (!\IR|A\(1) & !\calculette|add0|Res[0]~1\)) # (!\IR|B\(1) & ((!\calculette|add0|Res[0]~1\) # (!\IR|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(1),
	datab => \IR|A\(1),
	datad => VCC,
	cin => \calculette|add0|Res[0]~1\,
	combout => \calculette|add0|Res[1]~2_combout\,
	cout => \calculette|add0|Res[1]~3\);

-- Location: LCCOMB_X59_Y41_N4
\calculette|add0|Res[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|add0|Res[2]~4_combout\ = ((\IR|B\(2) $ (\IR|A\(2) $ (!\calculette|add0|Res[1]~3\)))) # (GND)
-- \calculette|add0|Res[2]~5\ = CARRY((\IR|B\(2) & ((\IR|A\(2)) # (!\calculette|add0|Res[1]~3\))) # (!\IR|B\(2) & (\IR|A\(2) & !\calculette|add0|Res[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(2),
	datab => \IR|A\(2),
	datad => VCC,
	cin => \calculette|add0|Res[1]~3\,
	combout => \calculette|add0|Res[2]~4_combout\,
	cout => \calculette|add0|Res[2]~5\);

-- Location: LCCOMB_X59_Y41_N6
\calculette|add0|Res[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|add0|Res[3]~6_combout\ = (\IR|A\(3) & ((\IR|B\(3) & (\calculette|add0|Res[2]~5\ & VCC)) # (!\IR|B\(3) & (!\calculette|add0|Res[2]~5\)))) # (!\IR|A\(3) & ((\IR|B\(3) & (!\calculette|add0|Res[2]~5\)) # (!\IR|B\(3) & ((\calculette|add0|Res[2]~5\) 
-- # (GND)))))
-- \calculette|add0|Res[3]~7\ = CARRY((\IR|A\(3) & (!\IR|B\(3) & !\calculette|add0|Res[2]~5\)) # (!\IR|A\(3) & ((!\calculette|add0|Res[2]~5\) # (!\IR|B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datab => \IR|B\(3),
	datad => VCC,
	cin => \calculette|add0|Res[2]~5\,
	combout => \calculette|add0|Res[3]~6_combout\,
	cout => \calculette|add0|Res[3]~7\);

-- Location: IOIBUF_X54_Y54_N22
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

-- Location: LCCOMB_X59_Y41_N8
\calculette|add0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|add0|Add0~0_combout\ = !\calculette|add0|Res[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \calculette|add0|Res[3]~7\,
	combout => \calculette|add0|Add0~0_combout\);

-- Location: LCCOMB_X59_Y41_N24
\calculette|ResAdd[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ResAdd[1]~0_combout\ = (\mode~input_o\ & ((\IR|A\(3) & (\IR|B\(3) & !\calculette|add0|Res[3]~6_combout\)) # (!\IR|A\(3) & (!\IR|B\(3) & \calculette|add0|Res[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datab => \mode~input_o\,
	datac => \IR|B\(3),
	datad => \calculette|add0|Res[3]~6_combout\,
	combout => \calculette|ResAdd[1]~0_combout\);

-- Location: LCCOMB_X59_Y41_N18
\calculette|choix_d0|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux0~4_combout\ = (!\operation~input_o\ & (!\calculette|ResAdd[1]~0_combout\ & ((\mode~input_o\) # (!\calculette|add0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation~input_o\,
	datab => \mode~input_o\,
	datac => \calculette|add0|Add0~0_combout\,
	datad => \calculette|ResAdd[1]~0_combout\,
	combout => \calculette|choix_d0|Mux0~4_combout\);

-- Location: LCCOMB_X59_Y41_N12
\calculette|choix_d0|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux0~5_combout\ = (\calculette|add0|Res[3]~6_combout\ & \calculette|choix_d0|Mux0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|add0|Res[3]~6_combout\,
	datad => \calculette|choix_d0|Mux0~4_combout\,
	combout => \calculette|choix_d0|Mux0~5_combout\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: LCCOMB_X59_Y41_N26
\calculette|choix_d0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux2~0_combout\ = (\reset~input_o\ & !\CLA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \CLA~input_o\,
	combout => \calculette|choix_d0|Mux2~0_combout\);

-- Location: LCCOMB_X58_Y45_N16
\calculette|multi0|Mult0|auto_generated|le4a[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le4a\(5) = \IR|B\(3) $ (((\IR|B\(2) & \IR|B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|B\(2),
	datac => \IR|B\(1),
	datad => \IR|B\(3),
	combout => \calculette|multi0|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X57_Y45_N30
\calculette|multi0|Mult0|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le5a\(3) = (\IR|A\(3) & ((\IR|B\(3)) # ((\IR|B\(2) & \IR|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(2),
	datab => \IR|A\(3),
	datac => \IR|B\(1),
	datad => \IR|B\(3),
	combout => \calculette|multi0|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X57_Y45_N2
\calculette|multi0|Mult0|auto_generated|le4a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le4a\(4) = (\IR|A\(3) & (\IR|B\(3) & (\IR|B\(1) $ (\IR|B\(2))))) # (!\IR|A\(3) & (\IR|B\(3) $ (((\IR|B\(1) & \IR|B\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datab => \IR|B\(3),
	datac => \IR|B\(1),
	datad => \IR|B\(2),
	combout => \calculette|multi0|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X57_Y45_N4
\calculette|multi0|Mult0|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le5a\(2) = (\IR|A\(2) & ((\IR|B\(3)) # ((\IR|B\(1) & \IR|B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(2),
	datab => \IR|B\(3),
	datac => \IR|B\(1),
	datad => \IR|B\(2),
	combout => \calculette|multi0|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X58_Y45_N10
\calculette|multi0|Mult0|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le5a\(1) = (\IR|A\(1) & ((\IR|B\(3)) # ((\IR|B\(1) & \IR|B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(1),
	datab => \IR|B\(2),
	datac => \IR|A\(1),
	datad => \IR|B\(3),
	combout => \calculette|multi0|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X58_Y45_N14
\calculette|multi0|Mult1|auto_generated|cs3a[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\ = \IR|B\(1) $ (\IR|B\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|B\(1),
	datad => \IR|B\(2),
	combout => \calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\);

-- Location: LCCOMB_X58_Y45_N4
\calculette|multi0|Mult0|auto_generated|le4a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le4a\(3) = (\calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & ((\IR|A\(3) $ (\calculette|multi0|Mult0|auto_generated|le4a\(5))))) # (!\calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & 
-- (!\IR|A\(2) & ((\calculette|multi0|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(2),
	datab => \IR|A\(3),
	datac => \calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	datad => \calculette|multi0|Mult0|auto_generated|le4a\(5),
	combout => \calculette|multi0|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X58_Y45_N30
\calculette|multi0|Mult0|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le4a\(2) = (\calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & ((\IR|A\(2) $ (\calculette|multi0|Mult0|auto_generated|le4a\(5))))) # (!\calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & 
-- (!\IR|A\(1) & ((\calculette|multi0|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(1),
	datab => \IR|A\(2),
	datac => \calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	datad => \calculette|multi0|Mult0|auto_generated|le4a\(5),
	combout => \calculette|multi0|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X58_Y45_N0
\calculette|multi0|Mult0|auto_generated|le3a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le3a\(4) = (\IR|B\(1) & ((\IR|B\(0)) # (!\IR|A\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(0),
	datab => \IR|A\(3),
	datac => \IR|B\(1),
	combout => \calculette|multi0|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X58_Y45_N12
\calculette|multi0|Mult0|auto_generated|le3a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le3a\(3) = (\IR|B\(0) & (\IR|A\(3) $ ((\IR|B\(1))))) # (!\IR|B\(0) & (((\IR|B\(1) & !\IR|A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(0),
	datab => \IR|A\(3),
	datac => \IR|B\(1),
	datad => \IR|A\(2),
	combout => \calculette|multi0|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X58_Y45_N6
\calculette|multi0|Mult0|auto_generated|le3a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le3a\(2) = (\IR|B\(0) & (\IR|B\(1) $ (((\IR|A\(2)))))) # (!\IR|B\(0) & (\IR|B\(1) & (!\IR|A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(0),
	datab => \IR|B\(1),
	datac => \IR|A\(1),
	datad => \IR|A\(2),
	combout => \calculette|multi0|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X58_Y45_N18
\calculette|multi0|Mult0|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_1~0_combout\ = (\calculette|multi0|Mult0|auto_generated|le3a\(2) & (\calculette|multi0|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\calculette|multi0|Mult0|auto_generated|le3a\(2) & 
-- (\calculette|multi0|Mult0|auto_generated|le4a\(5) & VCC))
-- \calculette|multi0|Mult0|auto_generated|op_1~1\ = CARRY((\calculette|multi0|Mult0|auto_generated|le3a\(2) & \calculette|multi0|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|le3a\(2),
	datab => \calculette|multi0|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \calculette|multi0|Mult0|auto_generated|op_1~0_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X58_Y45_N20
\calculette|multi0|Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_1~2_combout\ = (\calculette|multi0|Mult0|auto_generated|le3a\(3) & (!\calculette|multi0|Mult0|auto_generated|op_1~1\)) # (!\calculette|multi0|Mult0|auto_generated|le3a\(3) & 
-- ((\calculette|multi0|Mult0|auto_generated|op_1~1\) # (GND)))
-- \calculette|multi0|Mult0|auto_generated|op_1~3\ = CARRY((!\calculette|multi0|Mult0|auto_generated|op_1~1\) # (!\calculette|multi0|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \calculette|multi0|Mult0|auto_generated|op_1~1\,
	combout => \calculette|multi0|Mult0|auto_generated|op_1~2_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X58_Y45_N22
\calculette|multi0|Mult0|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_1~4_combout\ = ((\calculette|multi0|Mult0|auto_generated|le4a\(2) $ (\calculette|multi0|Mult0|auto_generated|le3a\(4) $ (!\calculette|multi0|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \calculette|multi0|Mult0|auto_generated|op_1~5\ = CARRY((\calculette|multi0|Mult0|auto_generated|le4a\(2) & ((\calculette|multi0|Mult0|auto_generated|le3a\(4)) # (!\calculette|multi0|Mult0|auto_generated|op_1~3\))) # 
-- (!\calculette|multi0|Mult0|auto_generated|le4a\(2) & (\calculette|multi0|Mult0|auto_generated|le3a\(4) & !\calculette|multi0|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|le4a\(2),
	datab => \calculette|multi0|Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \calculette|multi0|Mult0|auto_generated|op_1~3\,
	combout => \calculette|multi0|Mult0|auto_generated|op_1~4_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X58_Y45_N24
\calculette|multi0|Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_1~6_combout\ = (\calculette|multi0|Mult0|auto_generated|le5a\(1) & ((\calculette|multi0|Mult0|auto_generated|le4a\(3) & (\calculette|multi0|Mult0|auto_generated|op_1~5\ & VCC)) # 
-- (!\calculette|multi0|Mult0|auto_generated|le4a\(3) & (!\calculette|multi0|Mult0|auto_generated|op_1~5\)))) # (!\calculette|multi0|Mult0|auto_generated|le5a\(1) & ((\calculette|multi0|Mult0|auto_generated|le4a\(3) & 
-- (!\calculette|multi0|Mult0|auto_generated|op_1~5\)) # (!\calculette|multi0|Mult0|auto_generated|le4a\(3) & ((\calculette|multi0|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \calculette|multi0|Mult0|auto_generated|op_1~7\ = CARRY((\calculette|multi0|Mult0|auto_generated|le5a\(1) & (!\calculette|multi0|Mult0|auto_generated|le4a\(3) & !\calculette|multi0|Mult0|auto_generated|op_1~5\)) # 
-- (!\calculette|multi0|Mult0|auto_generated|le5a\(1) & ((!\calculette|multi0|Mult0|auto_generated|op_1~5\) # (!\calculette|multi0|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|le5a\(1),
	datab => \calculette|multi0|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \calculette|multi0|Mult0|auto_generated|op_1~5\,
	combout => \calculette|multi0|Mult0|auto_generated|op_1~6_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X58_Y45_N26
\calculette|multi0|Mult0|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_1~8_combout\ = ((\calculette|multi0|Mult0|auto_generated|le4a\(4) $ (\calculette|multi0|Mult0|auto_generated|le5a\(2) $ (!\calculette|multi0|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \calculette|multi0|Mult0|auto_generated|op_1~9\ = CARRY((\calculette|multi0|Mult0|auto_generated|le4a\(4) & ((\calculette|multi0|Mult0|auto_generated|le5a\(2)) # (!\calculette|multi0|Mult0|auto_generated|op_1~7\))) # 
-- (!\calculette|multi0|Mult0|auto_generated|le4a\(4) & (\calculette|multi0|Mult0|auto_generated|le5a\(2) & !\calculette|multi0|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|le4a\(4),
	datab => \calculette|multi0|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \calculette|multi0|Mult0|auto_generated|op_1~7\,
	combout => \calculette|multi0|Mult0|auto_generated|op_1~8_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X58_Y45_N28
\calculette|multi0|Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_1~10_combout\ = \calculette|multi0|Mult0|auto_generated|le4a\(5) $ (\calculette|multi0|Mult0|auto_generated|op_1~9\ $ (!\calculette|multi0|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|multi0|Mult0|auto_generated|le4a\(5),
	datad => \calculette|multi0|Mult0|auto_generated|le5a\(3),
	cin => \calculette|multi0|Mult0|auto_generated|op_1~9\,
	combout => \calculette|multi0|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X57_Y45_N18
\calculette|multi0|Mult0|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le5a\(0) = (\IR|A\(0) & ((\IR|B\(3)) # ((\IR|B\(1) & \IR|B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(3),
	datab => \IR|A\(0),
	datac => \IR|B\(1),
	datad => \IR|B\(2),
	combout => \calculette|multi0|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X59_Y45_N4
\calculette|multi0|Mult0|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le4a\(1) = (\calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & ((\calculette|multi0|Mult0|auto_generated|le4a\(5) $ (\IR|A\(1))))) # (!\calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & 
-- (!\IR|A\(0) & (\calculette|multi0|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	datab => \IR|A\(0),
	datac => \calculette|multi0|Mult0|auto_generated|le4a\(5),
	datad => \IR|A\(1),
	combout => \calculette|multi0|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X57_Y45_N16
\calculette|multi0|Mult0|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le4a\(0) = \IR|B\(3) $ (((\IR|A\(0) & ((\IR|B\(1)) # (\IR|B\(2)))) # (!\IR|A\(0) & (\IR|B\(1) & \IR|B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(3),
	datab => \IR|A\(0),
	datac => \IR|B\(1),
	datad => \IR|B\(2),
	combout => \calculette|multi0|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X59_Y45_N30
\calculette|multi0|Mult0|auto_generated|le3a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le3a\(1) = (\IR|B\(0) & ((\IR|A\(1) $ (\IR|B\(1))))) # (!\IR|B\(0) & (!\IR|A\(0) & ((\IR|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(0),
	datab => \IR|B\(0),
	datac => \IR|A\(1),
	datad => \IR|B\(1),
	combout => \calculette|multi0|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X59_Y45_N0
\calculette|multi0|Mult0|auto_generated|le3a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|le3a\(0) = \IR|B\(1) $ (((\IR|A\(0) & \IR|B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(1),
	datab => \IR|A\(0),
	datac => \IR|B\(0),
	combout => \calculette|multi0|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X59_Y45_N8
\calculette|multi0|Mult0|auto_generated|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_3~0_combout\ = (\IR|B\(1) & (\calculette|multi0|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\IR|B\(1) & (\calculette|multi0|Mult0|auto_generated|le3a\(0) & VCC))
-- \calculette|multi0|Mult0|auto_generated|op_3~1\ = CARRY((\IR|B\(1) & \calculette|multi0|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(1),
	datab => \calculette|multi0|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \calculette|multi0|Mult0|auto_generated|op_3~0_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X59_Y45_N10
\calculette|multi0|Mult0|auto_generated|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_3~2_combout\ = (\calculette|multi0|Mult0|auto_generated|le3a\(1) & (!\calculette|multi0|Mult0|auto_generated|op_3~1\)) # (!\calculette|multi0|Mult0|auto_generated|le3a\(1) & 
-- ((\calculette|multi0|Mult0|auto_generated|op_3~1\) # (GND)))
-- \calculette|multi0|Mult0|auto_generated|op_3~3\ = CARRY((!\calculette|multi0|Mult0|auto_generated|op_3~1\) # (!\calculette|multi0|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \calculette|multi0|Mult0|auto_generated|op_3~1\,
	combout => \calculette|multi0|Mult0|auto_generated|op_3~2_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X59_Y45_N12
\calculette|multi0|Mult0|auto_generated|op_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_3~4_combout\ = ((\calculette|multi0|Mult0|auto_generated|le4a\(0) $ (\calculette|multi0|Mult0|auto_generated|op_1~0_combout\ $ (!\calculette|multi0|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \calculette|multi0|Mult0|auto_generated|op_3~5\ = CARRY((\calculette|multi0|Mult0|auto_generated|le4a\(0) & ((\calculette|multi0|Mult0|auto_generated|op_1~0_combout\) # (!\calculette|multi0|Mult0|auto_generated|op_3~3\))) # 
-- (!\calculette|multi0|Mult0|auto_generated|le4a\(0) & (\calculette|multi0|Mult0|auto_generated|op_1~0_combout\ & !\calculette|multi0|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|le4a\(0),
	datab => \calculette|multi0|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \calculette|multi0|Mult0|auto_generated|op_3~3\,
	combout => \calculette|multi0|Mult0|auto_generated|op_3~4_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X59_Y45_N14
\calculette|multi0|Mult0|auto_generated|op_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_3~6_combout\ = (\calculette|multi0|Mult0|auto_generated|le4a\(1) & ((\calculette|multi0|Mult0|auto_generated|op_1~2_combout\ & (\calculette|multi0|Mult0|auto_generated|op_3~5\ & VCC)) # 
-- (!\calculette|multi0|Mult0|auto_generated|op_1~2_combout\ & (!\calculette|multi0|Mult0|auto_generated|op_3~5\)))) # (!\calculette|multi0|Mult0|auto_generated|le4a\(1) & ((\calculette|multi0|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\calculette|multi0|Mult0|auto_generated|op_3~5\)) # (!\calculette|multi0|Mult0|auto_generated|op_1~2_combout\ & ((\calculette|multi0|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \calculette|multi0|Mult0|auto_generated|op_3~7\ = CARRY((\calculette|multi0|Mult0|auto_generated|le4a\(1) & (!\calculette|multi0|Mult0|auto_generated|op_1~2_combout\ & !\calculette|multi0|Mult0|auto_generated|op_3~5\)) # 
-- (!\calculette|multi0|Mult0|auto_generated|le4a\(1) & ((!\calculette|multi0|Mult0|auto_generated|op_3~5\) # (!\calculette|multi0|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|le4a\(1),
	datab => \calculette|multi0|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \calculette|multi0|Mult0|auto_generated|op_3~5\,
	combout => \calculette|multi0|Mult0|auto_generated|op_3~6_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X59_Y45_N16
\calculette|multi0|Mult0|auto_generated|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_3~8_combout\ = ((\calculette|multi0|Mult0|auto_generated|le5a\(0) $ (\calculette|multi0|Mult0|auto_generated|op_1~4_combout\ $ (!\calculette|multi0|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \calculette|multi0|Mult0|auto_generated|op_3~9\ = CARRY((\calculette|multi0|Mult0|auto_generated|le5a\(0) & ((\calculette|multi0|Mult0|auto_generated|op_1~4_combout\) # (!\calculette|multi0|Mult0|auto_generated|op_3~7\))) # 
-- (!\calculette|multi0|Mult0|auto_generated|le5a\(0) & (\calculette|multi0|Mult0|auto_generated|op_1~4_combout\ & !\calculette|multi0|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|le5a\(0),
	datab => \calculette|multi0|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \calculette|multi0|Mult0|auto_generated|op_3~7\,
	combout => \calculette|multi0|Mult0|auto_generated|op_3~8_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X59_Y45_N18
\calculette|multi0|Mult0|auto_generated|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_3~10_combout\ = (\IR|B\(1) & ((\calculette|multi0|Mult0|auto_generated|op_1~6_combout\ & (\calculette|multi0|Mult0|auto_generated|op_3~9\ & VCC)) # (!\calculette|multi0|Mult0|auto_generated|op_1~6_combout\ & 
-- (!\calculette|multi0|Mult0|auto_generated|op_3~9\)))) # (!\IR|B\(1) & ((\calculette|multi0|Mult0|auto_generated|op_1~6_combout\ & (!\calculette|multi0|Mult0|auto_generated|op_3~9\)) # (!\calculette|multi0|Mult0|auto_generated|op_1~6_combout\ & 
-- ((\calculette|multi0|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \calculette|multi0|Mult0|auto_generated|op_3~11\ = CARRY((\IR|B\(1) & (!\calculette|multi0|Mult0|auto_generated|op_1~6_combout\ & !\calculette|multi0|Mult0|auto_generated|op_3~9\)) # (!\IR|B\(1) & ((!\calculette|multi0|Mult0|auto_generated|op_3~9\) # 
-- (!\calculette|multi0|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(1),
	datab => \calculette|multi0|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \calculette|multi0|Mult0|auto_generated|op_3~9\,
	combout => \calculette|multi0|Mult0|auto_generated|op_3~10_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X59_Y45_N20
\calculette|multi0|Mult0|auto_generated|op_3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_3~12_combout\ = ((\calculette|multi0|Mult0|auto_generated|op_1~8_combout\ $ (\IR|B\(1) $ (!\calculette|multi0|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \calculette|multi0|Mult0|auto_generated|op_3~13\ = CARRY((\calculette|multi0|Mult0|auto_generated|op_1~8_combout\ & ((\IR|B\(1)) # (!\calculette|multi0|Mult0|auto_generated|op_3~11\))) # (!\calculette|multi0|Mult0|auto_generated|op_1~8_combout\ & 
-- (\IR|B\(1) & !\calculette|multi0|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|op_1~8_combout\,
	datab => \IR|B\(1),
	datad => VCC,
	cin => \calculette|multi0|Mult0|auto_generated|op_3~11\,
	combout => \calculette|multi0|Mult0|auto_generated|op_3~12_combout\,
	cout => \calculette|multi0|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X59_Y45_N22
\calculette|multi0|Mult0|auto_generated|op_3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult0|auto_generated|op_3~14_combout\ = \IR|B\(1) $ (\calculette|multi0|Mult0|auto_generated|op_3~13\ $ (!\calculette|multi0|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(1),
	datad => \calculette|multi0|Mult0|auto_generated|op_1~10_combout\,
	cin => \calculette|multi0|Mult0|auto_generated|op_3~13\,
	combout => \calculette|multi0|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X57_Y45_N28
\calculette|multi0|Mult1|auto_generated|le5a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|le5a\(4) = (\IR|A\(3) & (!\IR|B\(1) & \IR|B\(0))) # (!\IR|A\(3) & (\IR|B\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datac => \IR|B\(1),
	datad => \IR|B\(0),
	combout => \calculette|multi0|Mult1|auto_generated|le5a\(4));

-- Location: LCCOMB_X60_Y45_N0
\calculette|multi0|Mult1|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|le5a\(3) = (\IR|B\(0) & ((\IR|A\(3) $ (\IR|B\(1))))) # (!\IR|B\(0) & (!\IR|A\(2) & ((\IR|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(2),
	datab => \IR|A\(3),
	datac => \IR|B\(0),
	datad => \IR|B\(1),
	combout => \calculette|multi0|Mult1|auto_generated|le5a\(3));

-- Location: LCCOMB_X60_Y45_N30
\calculette|multi0|Mult1|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|le5a\(2) = (\IR|B\(0) & ((\IR|A\(2) $ (\IR|B\(1))))) # (!\IR|B\(0) & (!\IR|A\(1) & ((\IR|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(1),
	datab => \IR|A\(2),
	datac => \IR|B\(0),
	datad => \IR|B\(1),
	combout => \calculette|multi0|Mult1|auto_generated|le5a\(2));

-- Location: LCCOMB_X60_Y45_N18
\calculette|multi0|Mult1|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|op_1~0_combout\ = (\calculette|multi0|Mult1|auto_generated|le5a\(2) & (\IR|B\(3) $ (VCC))) # (!\calculette|multi0|Mult1|auto_generated|le5a\(2) & (\IR|B\(3) & VCC))
-- \calculette|multi0|Mult1|auto_generated|op_1~1\ = CARRY((\calculette|multi0|Mult1|auto_generated|le5a\(2) & \IR|B\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult1|auto_generated|le5a\(2),
	datab => \IR|B\(3),
	datad => VCC,
	combout => \calculette|multi0|Mult1|auto_generated|op_1~0_combout\,
	cout => \calculette|multi0|Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X60_Y45_N20
\calculette|multi0|Mult1|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|op_1~2_combout\ = (\calculette|multi0|Mult1|auto_generated|le5a\(3) & (!\calculette|multi0|Mult1|auto_generated|op_1~1\)) # (!\calculette|multi0|Mult1|auto_generated|le5a\(3) & 
-- ((\calculette|multi0|Mult1|auto_generated|op_1~1\) # (GND)))
-- \calculette|multi0|Mult1|auto_generated|op_1~3\ = CARRY((!\calculette|multi0|Mult1|auto_generated|op_1~1\) # (!\calculette|multi0|Mult1|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|multi0|Mult1|auto_generated|le5a\(3),
	datad => VCC,
	cin => \calculette|multi0|Mult1|auto_generated|op_1~1\,
	combout => \calculette|multi0|Mult1|auto_generated|op_1~2_combout\,
	cout => \calculette|multi0|Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X60_Y45_N22
\calculette|multi0|Mult1|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|op_1~4_combout\ = \calculette|multi0|Mult1|auto_generated|op_1~3\ $ (!\calculette|multi0|Mult1|auto_generated|le5a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \calculette|multi0|Mult1|auto_generated|le5a\(4),
	cin => \calculette|multi0|Mult1|auto_generated|op_1~3\,
	combout => \calculette|multi0|Mult1|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X60_Y45_N26
\calculette|multi0|Mult1|auto_generated|le2a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|le2a\(2) = (\IR|A\(1) & (\IR|B\(2) & ((\IR|B\(1))))) # (!\IR|A\(1) & (\IR|B\(3) & (\IR|B\(2) $ (!\IR|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(2),
	datab => \IR|B\(3),
	datac => \IR|A\(1),
	datad => \IR|B\(1),
	combout => \calculette|multi0|Mult1|auto_generated|le2a\(2));

-- Location: LCCOMB_X60_Y45_N2
\calculette|multi0|Mult1|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|le4a\(2) = (\calculette|multi0|Mult1|auto_generated|le2a\(2)) # ((\calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (\IR|B\(3) $ (\IR|A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	datab => \IR|B\(3),
	datac => \calculette|multi0|Mult1|auto_generated|le2a\(2),
	datad => \IR|A\(2),
	combout => \calculette|multi0|Mult1|auto_generated|le4a\(2));

-- Location: LCCOMB_X57_Y45_N24
\calculette|multi0|Mult1|auto_generated|le2a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|le2a\(1) = (\IR|A\(0) & (((\IR|B\(1) & \IR|B\(2))))) # (!\IR|A\(0) & (\IR|B\(3) & (\IR|B\(1) $ (!\IR|B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(0),
	datab => \IR|B\(3),
	datac => \IR|B\(1),
	datad => \IR|B\(2),
	combout => \calculette|multi0|Mult1|auto_generated|le2a\(1));

-- Location: LCCOMB_X60_Y45_N16
\calculette|multi0|Mult1|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|le4a\(1) = (\calculette|multi0|Mult1|auto_generated|le2a\(1)) # ((\calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (\IR|A\(1) $ (\IR|B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(1),
	datab => \IR|B\(3),
	datac => \calculette|multi0|Mult1|auto_generated|le2a\(1),
	datad => \calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	combout => \calculette|multi0|Mult1|auto_generated|le4a\(1));

-- Location: LCCOMB_X60_Y45_N28
\calculette|multi0|Mult1|auto_generated|le2a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|le2a\(0) = (\IR|B\(3) & (\IR|B\(1) $ (!\IR|B\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|B\(3),
	datac => \IR|B\(1),
	datad => \IR|B\(2),
	combout => \calculette|multi0|Mult1|auto_generated|le2a\(0));

-- Location: LCCOMB_X60_Y45_N4
\calculette|multi0|Mult1|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|le4a\(0) = (\calculette|multi0|Mult1|auto_generated|le2a\(0)) # ((\calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (\IR|A\(0) $ (\IR|B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(0),
	datab => \IR|B\(3),
	datac => \calculette|multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	datad => \calculette|multi0|Mult1|auto_generated|le2a\(0),
	combout => \calculette|multi0|Mult1|auto_generated|le4a\(0));

-- Location: LCCOMB_X60_Y45_N24
\calculette|multi0|Mult1|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|le5a\(1) = (\IR|B\(0) & ((\IR|A\(1) $ (\IR|B\(1))))) # (!\IR|B\(0) & (!\IR|A\(0) & ((\IR|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(0),
	datab => \IR|B\(0),
	datac => \IR|A\(1),
	datad => \IR|B\(1),
	combout => \calculette|multi0|Mult1|auto_generated|le5a\(1));

-- Location: LCCOMB_X57_Y45_N10
\calculette|multi0|Mult1|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|le5a\(0) = \IR|B\(1) $ (((\IR|B\(0) & \IR|A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|B\(0),
	datac => \IR|A\(0),
	datad => \IR|B\(1),
	combout => \calculette|multi0|Mult1|auto_generated|le5a\(0));

-- Location: LCCOMB_X60_Y45_N6
\calculette|multi0|Mult1|auto_generated|op_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|op_2~0_combout\ = (\calculette|multi0|Mult1|auto_generated|le5a\(0) & (\IR|B\(1) $ (VCC))) # (!\calculette|multi0|Mult1|auto_generated|le5a\(0) & (\IR|B\(1) & VCC))
-- \calculette|multi0|Mult1|auto_generated|op_2~1\ = CARRY((\calculette|multi0|Mult1|auto_generated|le5a\(0) & \IR|B\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult1|auto_generated|le5a\(0),
	datab => \IR|B\(1),
	datad => VCC,
	combout => \calculette|multi0|Mult1|auto_generated|op_2~0_combout\,
	cout => \calculette|multi0|Mult1|auto_generated|op_2~1\);

-- Location: LCCOMB_X60_Y45_N8
\calculette|multi0|Mult1|auto_generated|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|op_2~2_combout\ = (\calculette|multi0|Mult1|auto_generated|le5a\(1) & (!\calculette|multi0|Mult1|auto_generated|op_2~1\)) # (!\calculette|multi0|Mult1|auto_generated|le5a\(1) & 
-- ((\calculette|multi0|Mult1|auto_generated|op_2~1\) # (GND)))
-- \calculette|multi0|Mult1|auto_generated|op_2~3\ = CARRY((!\calculette|multi0|Mult1|auto_generated|op_2~1\) # (!\calculette|multi0|Mult1|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|multi0|Mult1|auto_generated|le5a\(1),
	datad => VCC,
	cin => \calculette|multi0|Mult1|auto_generated|op_2~1\,
	combout => \calculette|multi0|Mult1|auto_generated|op_2~2_combout\,
	cout => \calculette|multi0|Mult1|auto_generated|op_2~3\);

-- Location: LCCOMB_X60_Y45_N10
\calculette|multi0|Mult1|auto_generated|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|op_2~4_combout\ = ((\calculette|multi0|Mult1|auto_generated|le4a\(0) $ (\calculette|multi0|Mult1|auto_generated|op_1~0_combout\ $ (!\calculette|multi0|Mult1|auto_generated|op_2~3\)))) # (GND)
-- \calculette|multi0|Mult1|auto_generated|op_2~5\ = CARRY((\calculette|multi0|Mult1|auto_generated|le4a\(0) & ((\calculette|multi0|Mult1|auto_generated|op_1~0_combout\) # (!\calculette|multi0|Mult1|auto_generated|op_2~3\))) # 
-- (!\calculette|multi0|Mult1|auto_generated|le4a\(0) & (\calculette|multi0|Mult1|auto_generated|op_1~0_combout\ & !\calculette|multi0|Mult1|auto_generated|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult1|auto_generated|le4a\(0),
	datab => \calculette|multi0|Mult1|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \calculette|multi0|Mult1|auto_generated|op_2~3\,
	combout => \calculette|multi0|Mult1|auto_generated|op_2~4_combout\,
	cout => \calculette|multi0|Mult1|auto_generated|op_2~5\);

-- Location: LCCOMB_X60_Y45_N12
\calculette|multi0|Mult1|auto_generated|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|op_2~6_combout\ = (\calculette|multi0|Mult1|auto_generated|le4a\(1) & ((\calculette|multi0|Mult1|auto_generated|op_1~2_combout\ & (\calculette|multi0|Mult1|auto_generated|op_2~5\ & VCC)) # 
-- (!\calculette|multi0|Mult1|auto_generated|op_1~2_combout\ & (!\calculette|multi0|Mult1|auto_generated|op_2~5\)))) # (!\calculette|multi0|Mult1|auto_generated|le4a\(1) & ((\calculette|multi0|Mult1|auto_generated|op_1~2_combout\ & 
-- (!\calculette|multi0|Mult1|auto_generated|op_2~5\)) # (!\calculette|multi0|Mult1|auto_generated|op_1~2_combout\ & ((\calculette|multi0|Mult1|auto_generated|op_2~5\) # (GND)))))
-- \calculette|multi0|Mult1|auto_generated|op_2~7\ = CARRY((\calculette|multi0|Mult1|auto_generated|le4a\(1) & (!\calculette|multi0|Mult1|auto_generated|op_1~2_combout\ & !\calculette|multi0|Mult1|auto_generated|op_2~5\)) # 
-- (!\calculette|multi0|Mult1|auto_generated|le4a\(1) & ((!\calculette|multi0|Mult1|auto_generated|op_2~5\) # (!\calculette|multi0|Mult1|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult1|auto_generated|le4a\(1),
	datab => \calculette|multi0|Mult1|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \calculette|multi0|Mult1|auto_generated|op_2~5\,
	combout => \calculette|multi0|Mult1|auto_generated|op_2~6_combout\,
	cout => \calculette|multi0|Mult1|auto_generated|op_2~7\);

-- Location: LCCOMB_X60_Y45_N14
\calculette|multi0|Mult1|auto_generated|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|multi0|Mult1|auto_generated|op_2~8_combout\ = \calculette|multi0|Mult1|auto_generated|op_1~4_combout\ $ (\calculette|multi0|Mult1|auto_generated|op_2~7\ $ (!\calculette|multi0|Mult1|auto_generated|le4a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult1|auto_generated|op_1~4_combout\,
	datad => \calculette|multi0|Mult1|auto_generated|le4a\(2),
	cin => \calculette|multi0|Mult1|auto_generated|op_2~7\,
	combout => \calculette|multi0|Mult1|auto_generated|op_2~8_combout\);

-- Location: LCCOMB_X59_Y41_N16
\calculette|choix_d0|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux0~6_combout\ = (\operation~input_o\ & ((\mode~input_o\ & (\calculette|multi0|Mult1|auto_generated|op_2~6_combout\)) # (!\mode~input_o\ & ((\calculette|multi0|Mult0|auto_generated|op_3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation~input_o\,
	datab => \mode~input_o\,
	datac => \calculette|multi0|Mult1|auto_generated|op_2~6_combout\,
	datad => \calculette|multi0|Mult0|auto_generated|op_3~6_combout\,
	combout => \calculette|choix_d0|Mux0~6_combout\);

-- Location: LCCOMB_X59_Y41_N22
\calculette|choix_d0|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux0~7_combout\ = (\calculette|choix_d0|Mux0~6_combout\ & ((\calculette|multi0|Mult1|auto_generated|op_2~8_combout\) # (!\mode~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~input_o\,
	datac => \calculette|multi0|Mult1|auto_generated|op_2~8_combout\,
	datad => \calculette|choix_d0|Mux0~6_combout\,
	combout => \calculette|choix_d0|Mux0~7_combout\);

-- Location: LCCOMB_X59_Y41_N10
\calculette|controlMulti|erorTotale~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|controlMulti|erorTotale~0_combout\ = (!\mode~input_o\ & ((\calculette|multi0|Mult0|auto_generated|op_3~8_combout\) # ((\calculette|multi0|Mult0|auto_generated|op_3~10_combout\) # (\calculette|multi0|Mult0|auto_generated|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \calculette|multi0|Mult0|auto_generated|op_3~8_combout\,
	datac => \calculette|multi0|Mult0|auto_generated|op_3~10_combout\,
	datad => \calculette|multi0|Mult0|auto_generated|op_3~12_combout\,
	combout => \calculette|controlMulti|erorTotale~0_combout\);

-- Location: LCCOMB_X59_Y41_N28
\calculette|choix_d0|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux0~8_combout\ = (\calculette|choix_d0|Mux0~7_combout\ & (!\calculette|controlMulti|erorTotale~0_combout\ & ((\mode~input_o\) # (!\calculette|multi0|Mult0|auto_generated|op_3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|op_3~14_combout\,
	datab => \mode~input_o\,
	datac => \calculette|choix_d0|Mux0~7_combout\,
	datad => \calculette|controlMulti|erorTotale~0_combout\,
	combout => \calculette|choix_d0|Mux0~8_combout\);

-- Location: LCCOMB_X59_Y41_N30
\calculette|sepRes|int_input[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|int_input[31]~0_combout\ = (\mode~input_o\ & (\calculette|choix_d0|Mux2~0_combout\ & ((\calculette|choix_d0|Mux0~5_combout\) # (\calculette|choix_d0|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|choix_d0|Mux0~5_combout\,
	datab => \mode~input_o\,
	datac => \calculette|choix_d0|Mux2~0_combout\,
	datad => \calculette|choix_d0|Mux0~8_combout\,
	combout => \calculette|sepRes|int_input[31]~0_combout\);

-- Location: LCCOMB_X59_Y45_N24
\calculette|choix_d0|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux2~1_combout\ = (\mode~input_o\ & (\calculette|multi0|Mult1|auto_generated|op_2~2_combout\)) # (!\mode~input_o\ & ((\calculette|multi0|Mult0|auto_generated|op_3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \calculette|multi0|Mult1|auto_generated|op_2~2_combout\,
	datad => \calculette|multi0|Mult0|auto_generated|op_3~2_combout\,
	combout => \calculette|choix_d0|Mux2~1_combout\);

-- Location: LCCOMB_X59_Y41_N20
\calculette|choix_d0|Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux3~9_combout\ = (!\CLA~input_o\ & (\reset~input_o\ & \calculette|choix_d0|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA~input_o\,
	datac => \reset~input_o\,
	datad => \calculette|choix_d0|Mux0~4_combout\,
	combout => \calculette|choix_d0|Mux3~9_combout\);

-- Location: LCCOMB_X59_Y45_N28
\calculette|choix_d0|Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux3~5_combout\ = (\calculette|multi0|Mult0|auto_generated|op_3~8_combout\) # ((\calculette|multi0|Mult0|auto_generated|op_3~10_combout\) # ((\calculette|multi0|Mult0|auto_generated|op_3~14_combout\) # 
-- (\calculette|multi0|Mult0|auto_generated|op_3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|multi0|Mult0|auto_generated|op_3~8_combout\,
	datab => \calculette|multi0|Mult0|auto_generated|op_3~10_combout\,
	datac => \calculette|multi0|Mult0|auto_generated|op_3~14_combout\,
	datad => \calculette|multi0|Mult0|auto_generated|op_3~12_combout\,
	combout => \calculette|choix_d0|Mux3~5_combout\);

-- Location: LCCOMB_X59_Y45_N2
\calculette|choix_d0|Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux3~6_combout\ = (\mode~input_o\ & (\calculette|multi0|Mult1|auto_generated|op_2~6_combout\ $ ((\calculette|multi0|Mult1|auto_generated|op_2~8_combout\)))) # (!\mode~input_o\ & (((\calculette|choix_d0|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \calculette|multi0|Mult1|auto_generated|op_2~6_combout\,
	datac => \calculette|multi0|Mult1|auto_generated|op_2~8_combout\,
	datad => \calculette|choix_d0|Mux3~5_combout\,
	combout => \calculette|choix_d0|Mux3~6_combout\);

-- Location: LCCOMB_X59_Y45_N6
\calculette|choix_d0|Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux3~8_combout\ = (!\CLA~input_o\ & (\operation~input_o\ & (\reset~input_o\ & !\calculette|choix_d0|Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \operation~input_o\,
	datac => \reset~input_o\,
	datad => \calculette|choix_d0|Mux3~6_combout\,
	combout => \calculette|choix_d0|Mux3~8_combout\);

-- Location: LCCOMB_X58_Y41_N14
\calculette|choix_d0|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux2~2_combout\ = (\calculette|add0|Res[1]~2_combout\ & ((\calculette|choix_d0|Mux3~9_combout\) # ((\calculette|choix_d0|Mux2~1_combout\ & \calculette|choix_d0|Mux3~8_combout\)))) # (!\calculette|add0|Res[1]~2_combout\ & 
-- (\calculette|choix_d0|Mux2~1_combout\ & ((\calculette|choix_d0|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|add0|Res[1]~2_combout\,
	datab => \calculette|choix_d0|Mux2~1_combout\,
	datac => \calculette|choix_d0|Mux3~9_combout\,
	datad => \calculette|choix_d0|Mux3~8_combout\,
	combout => \calculette|choix_d0|Mux2~2_combout\);

-- Location: LCCOMB_X59_Y41_N14
\calculette|choix_d0|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux0~9_combout\ = (!\CLA~input_o\ & (\reset~input_o\ & ((\calculette|choix_d0|Mux0~5_combout\) # (\calculette|choix_d0|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|choix_d0|Mux0~5_combout\,
	datab => \CLA~input_o\,
	datac => \reset~input_o\,
	datad => \calculette|choix_d0|Mux0~8_combout\,
	combout => \calculette|choix_d0|Mux0~9_combout\);

-- Location: LCCOMB_X59_Y45_N26
\calculette|choix_d0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux1~0_combout\ = (\mode~input_o\ & (\calculette|multi0|Mult1|auto_generated|op_2~4_combout\)) # (!\mode~input_o\ & ((\calculette|multi0|Mult0|auto_generated|op_3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \calculette|multi0|Mult1|auto_generated|op_2~4_combout\,
	datad => \calculette|multi0|Mult0|auto_generated|op_3~4_combout\,
	combout => \calculette|choix_d0|Mux1~0_combout\);

-- Location: LCCOMB_X58_Y41_N8
\calculette|choix_d0|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux1~1_combout\ = (\calculette|add0|Res[2]~4_combout\ & ((\calculette|choix_d0|Mux3~9_combout\) # ((\calculette|choix_d0|Mux1~0_combout\ & \calculette|choix_d0|Mux3~8_combout\)))) # (!\calculette|add0|Res[2]~4_combout\ & 
-- (\calculette|choix_d0|Mux1~0_combout\ & ((\calculette|choix_d0|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|add0|Res[2]~4_combout\,
	datab => \calculette|choix_d0|Mux1~0_combout\,
	datac => \calculette|choix_d0|Mux3~9_combout\,
	datad => \calculette|choix_d0|Mux3~8_combout\,
	combout => \calculette|choix_d0|Mux1~1_combout\);

-- Location: LCCOMB_X57_Y45_N20
\calculette|choix_d0|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux3~4_combout\ = (\mode~input_o\ & ((\calculette|multi0|Mult1|auto_generated|op_2~0_combout\))) # (!\mode~input_o\ & (\calculette|multi0|Mult0|auto_generated|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~input_o\,
	datac => \calculette|multi0|Mult0|auto_generated|op_3~0_combout\,
	datad => \calculette|multi0|Mult1|auto_generated|op_2~0_combout\,
	combout => \calculette|choix_d0|Mux3~4_combout\);

-- Location: LCCOMB_X58_Y41_N28
\calculette|choix_d0|Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|choix_d0|Mux3~7_combout\ = (\calculette|choix_d0|Mux3~9_combout\ & ((\calculette|add0|Res[0]~0_combout\) # ((\calculette|choix_d0|Mux3~4_combout\ & \calculette|choix_d0|Mux3~8_combout\)))) # (!\calculette|choix_d0|Mux3~9_combout\ & 
-- (((\calculette|choix_d0|Mux3~4_combout\ & \calculette|choix_d0|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|choix_d0|Mux3~9_combout\,
	datab => \calculette|add0|Res[0]~0_combout\,
	datac => \calculette|choix_d0|Mux3~4_combout\,
	datad => \calculette|choix_d0|Mux3~8_combout\,
	combout => \calculette|choix_d0|Mux3~7_combout\);

-- Location: LCCOMB_X58_Y41_N6
\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & (!\calculette|choix_d0|Mux1~1_combout\ & (!\calculette|choix_d0|Mux2~2_combout\ & !\calculette|choix_d0|Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|choix_d0|Mux1~1_combout\,
	datac => \calculette|choix_d0|Mux2~2_combout\,
	datad => \calculette|choix_d0|Mux3~7_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\);

-- Location: LCCOMB_X58_Y41_N12
\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~1_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & (\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|choix_d0|Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datac => \calculette|choix_d0|Mux0~9_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~1_combout\);

-- Location: LCCOMB_X58_Y41_N30
\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~2_combout\ = \calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|choix_d0|Mux0~9_combout\ $ (\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datac => \calculette|choix_d0|Mux0~9_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~2_combout\);

-- Location: LCCOMB_X58_Y41_N16
\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ = \calculette|choix_d0|Mux1~1_combout\ $ (((\calculette|sepRes|int_input[31]~0_combout\ & ((\calculette|choix_d0|Mux3~7_combout\) # (\calculette|choix_d0|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|choix_d0|Mux3~7_combout\,
	datac => \calculette|choix_d0|Mux2~2_combout\,
	datad => \calculette|choix_d0|Mux1~1_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\);

-- Location: LCCOMB_X58_Y41_N18
\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ $ (VCC)
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\,
	datad => VCC,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X58_Y41_N20
\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~2_combout\ & (\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ 
-- & VCC)) # (!\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~2_combout\ & (!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~2_combout\ & !\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~2_combout\,
	datad => VCC,
	cin => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X58_Y41_N22
\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~1_combout\ & (\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ 
-- $ (GND))) # (!\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~1_combout\ & (!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~1_combout\ & !\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~1_combout\,
	datad => VCC,
	cin => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X58_Y41_N24
\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X58_Y41_N2
\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\);

-- Location: LCCOMB_X57_Y41_N28
\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & (\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|choix_d0|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|choix_d0|Mux0~9_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10_combout\);

-- Location: LCCOMB_X57_Y41_N22
\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\calculette|sepRes|int_input[31]~0_combout\ $ 
-- (\calculette|choix_d0|Mux0~9_combout\ $ (\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|choix_d0|Mux0~9_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\);

-- Location: LCCOMB_X57_Y41_N20
\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X58_Y41_N4
\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LCCOMB_X57_Y41_N24
\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ & \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X57_Y41_N26
\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\calculette|choix_d0|Mux2~2_combout\ $ (((\calculette|choix_d0|Mux3~7_combout\ & 
-- \calculette|sepRes|int_input[31]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|choix_d0|Mux3~7_combout\,
	datab => \calculette|choix_d0|Mux2~2_combout\,
	datac => \calculette|sepRes|int_input[31]~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8_combout\);

-- Location: LCCOMB_X58_Y41_N10
\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ = (!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\calculette|choix_d0|Mux2~2_combout\ $ 
-- (((\calculette|sepRes|int_input[31]~0_combout\ & \calculette|choix_d0|Mux3~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|choix_d0|Mux3~7_combout\,
	datac => \calculette|choix_d0|Mux2~2_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\);

-- Location: LCCOMB_X57_Y41_N10
\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8_combout\) # 
-- (\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\,
	datad => VCC,
	cout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X57_Y41_N12
\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ & 
-- (!\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & !\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X57_Y41_N14
\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & 
-- ((\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\) # (\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => VCC,
	cin => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X57_Y41_N16
\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & 
-- (!\calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10_combout\ & !\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10_combout\,
	datad => VCC,
	cin => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y41_N18
\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X57_Y41_N0
\calculette|sepRes|Div0|auto_generated|divider|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\ = \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (VCC)
-- \calculette|sepRes|Div0|auto_generated|divider|op_1~1\ = CARRY(\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	combout => \calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \calculette|sepRes|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X57_Y41_N8
\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\))) # (!\calculette|sepRes|int_input[31]~0_combout\ & 
-- (!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \calculette|sepRes|int_input[31]~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\);

-- Location: LCCOMB_X60_Y41_N20
\calculette|sepRes|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add5~0_combout\ = (\calculette|choix_d0|Mux2~2_combout\ & ((GND) # (!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\))) # (!\calculette|choix_d0|Mux2~2_combout\ & 
-- (\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ $ (GND)))
-- \calculette|sepRes|Add5~1\ = CARRY((\calculette|choix_d0|Mux2~2_combout\) # (!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|choix_d0|Mux2~2_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datad => VCC,
	combout => \calculette|sepRes|Add5~0_combout\,
	cout => \calculette|sepRes|Add5~1\);

-- Location: LCCOMB_X60_Y41_N16
\calculette|sepRes|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add2~0_combout\ = \calculette|choix_d0|Mux2~2_combout\ $ (((\calculette|sepRes|int_input[31]~0_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\))) # (!\calculette|sepRes|int_input[31]~0_combout\ & 
-- (!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \calculette|choix_d0|Mux2~2_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \calculette|sepRes|int_input[31]~0_combout\,
	combout => \calculette|sepRes|Add2~0_combout\);

-- Location: LCCOMB_X60_Y41_N10
\calculette|sepRes|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add5~2_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & ((\calculette|choix_d0|Mux3~7_combout\ $ (\calculette|sepRes|Add2~0_combout\)))) # (!\calculette|sepRes|int_input[31]~0_combout\ & (\calculette|sepRes|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|sepRes|Add5~0_combout\,
	datac => \calculette|choix_d0|Mux3~7_combout\,
	datad => \calculette|sepRes|Add2~0_combout\,
	combout => \calculette|sepRes|Add5~2_combout\);

-- Location: LCCOMB_X57_Y41_N2
\calculette|sepRes|Div0|auto_generated|divider|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|op_1~2_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\calculette|sepRes|Div0|auto_generated|divider|op_1~1\)) # 
-- (!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|op_1~1\) # (GND)))
-- \calculette|sepRes|Div0|auto_generated|divider|op_1~3\ = CARRY((!\calculette|sepRes|Div0|auto_generated|divider|op_1~1\) # (!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \calculette|sepRes|Div0|auto_generated|divider|op_1~1\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \calculette|sepRes|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X57_Y41_N30
\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|op_1~2_combout\))) # (!\calculette|sepRes|int_input[31]~0_combout\ & 
-- (!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \calculette|sepRes|int_input[31]~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|op_1~2_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\);

-- Location: LCCOMB_X60_Y41_N18
\calculette|sepRes|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add2~1_combout\ = \calculette|choix_d0|Mux1~1_combout\ $ (\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ $ (((!\calculette|choix_d0|Mux2~2_combout\) # 
-- (!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|choix_d0|Mux1~1_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datac => \calculette|choix_d0|Mux2~2_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	combout => \calculette|sepRes|Add2~1_combout\);

-- Location: LCCOMB_X60_Y41_N22
\calculette|sepRes|Add5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add5~3_combout\ = (\calculette|choix_d0|Mux1~1_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & (!\calculette|sepRes|Add5~1\)) # (!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ 
-- & (\calculette|sepRes|Add5~1\ & VCC)))) # (!\calculette|choix_d0|Mux1~1_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & ((\calculette|sepRes|Add5~1\) # (GND))) # 
-- (!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & (!\calculette|sepRes|Add5~1\))))
-- \calculette|sepRes|Add5~4\ = CARRY((\calculette|choix_d0|Mux1~1_combout\ & (\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & !\calculette|sepRes|Add5~1\)) # (!\calculette|choix_d0|Mux1~1_combout\ & 
-- ((\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\) # (!\calculette|sepRes|Add5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|choix_d0|Mux1~1_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datad => VCC,
	cin => \calculette|sepRes|Add5~1\,
	combout => \calculette|sepRes|Add5~3_combout\,
	cout => \calculette|sepRes|Add5~4\);

-- Location: LCCOMB_X60_Y41_N28
\calculette|sepRes|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add3~0_combout\ = (\calculette|choix_d0|Mux3~7_combout\) # (\calculette|choix_d0|Mux2~2_combout\ $ (\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|choix_d0|Mux2~2_combout\,
	datac => \calculette|choix_d0|Mux3~7_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	combout => \calculette|sepRes|Add3~0_combout\);

-- Location: LCCOMB_X60_Y41_N8
\calculette|sepRes|Add5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add5~5_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & (\calculette|sepRes|Add2~1_combout\ $ (((!\calculette|sepRes|Add3~0_combout\))))) # (!\calculette|sepRes|int_input[31]~0_combout\ & 
-- (((\calculette|sepRes|Add5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|sepRes|Add2~1_combout\,
	datac => \calculette|sepRes|Add5~3_combout\,
	datad => \calculette|sepRes|Add3~0_combout\,
	combout => \calculette|sepRes|Add5~5_combout\);

-- Location: LCCOMB_X57_Y41_N4
\calculette|sepRes|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\ = \calculette|sepRes|Div0|auto_generated|divider|op_1~3\ $ (GND)
-- \calculette|sepRes|Div0|auto_generated|divider|op_1~5\ = CARRY(!\calculette|sepRes|Div0|auto_generated|divider|op_1~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \calculette|sepRes|Div0|auto_generated|divider|op_1~3\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \calculette|sepRes|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X56_Y41_N8
\calculette|hdmi_out0|res_img|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add3~4_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\ $ (\calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\)))) # 
-- (!\calculette|sepRes|int_input[31]~0_combout\ & (!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \calculette|hdmi_out0|res_img|Add3~4_combout\);

-- Location: LCCOMB_X60_Y41_N26
\calculette|sepRes|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add3~2_combout\ = \calculette|choix_d0|Mux0~9_combout\ $ (\calculette|hdmi_out0|res_img|Add3~4_combout\ $ (((\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\) # 
-- (\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|choix_d0|Mux0~9_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datad => \calculette|hdmi_out0|res_img|Add3~4_combout\,
	combout => \calculette|sepRes|Add3~2_combout\);

-- Location: LCCOMB_X60_Y41_N24
\calculette|sepRes|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add5~6_combout\ = \calculette|hdmi_out0|res_img|Add3~4_combout\ $ (\calculette|sepRes|Add5~4\ $ (\calculette|choix_d0|Mux0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add3~4_combout\,
	datad => \calculette|choix_d0|Mux0~9_combout\,
	cin => \calculette|sepRes|Add5~4\,
	combout => \calculette|sepRes|Add5~6_combout\);

-- Location: LCCOMB_X60_Y41_N30
\calculette|sepRes|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add2~2_combout\ = (\calculette|choix_d0|Mux2~2_combout\ & ((\calculette|choix_d0|Mux1~1_combout\) # (\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ $ 
-- (!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\)))) # (!\calculette|choix_d0|Mux2~2_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & (\calculette|choix_d0|Mux1~1_combout\)) # 
-- (!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & ((!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|choix_d0|Mux1~1_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datac => \calculette|choix_d0|Mux2~2_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	combout => \calculette|sepRes|Add2~2_combout\);

-- Location: LCCOMB_X60_Y41_N12
\calculette|sepRes|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add3~1_combout\ = \calculette|sepRes|Add2~2_combout\ $ (((!\calculette|sepRes|Add2~0_combout\ & (!\calculette|choix_d0|Mux3~7_combout\ & \calculette|sepRes|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add2~2_combout\,
	datab => \calculette|sepRes|Add2~0_combout\,
	datac => \calculette|choix_d0|Mux3~7_combout\,
	datad => \calculette|sepRes|Add2~1_combout\,
	combout => \calculette|sepRes|Add3~1_combout\);

-- Location: LCCOMB_X60_Y41_N4
\calculette|sepRes|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add5~8_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & (\calculette|sepRes|Add3~2_combout\ $ (((\calculette|sepRes|Add3~1_combout\))))) # (!\calculette|sepRes|int_input[31]~0_combout\ & 
-- (((\calculette|sepRes|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add3~2_combout\,
	datab => \calculette|sepRes|Add5~6_combout\,
	datac => \calculette|sepRes|int_input[31]~0_combout\,
	datad => \calculette|sepRes|Add3~1_combout\,
	combout => \calculette|sepRes|Add5~8_combout\);

-- Location: LCCOMB_X61_Y49_N16
\calculette|ledRes1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes1|Mux6~0_combout\ = (\calculette|sepRes|Add5~2_combout\ & (!\calculette|sepRes|Add5~5_combout\ & (!\calculette|choix_d0|Mux3~7_combout\ & \calculette|sepRes|Add5~8_combout\))) # (!\calculette|sepRes|Add5~2_combout\ & 
-- (!\calculette|sepRes|Add5~8_combout\ & (\calculette|sepRes|Add5~5_combout\ $ (\calculette|choix_d0|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add5~2_combout\,
	datab => \calculette|sepRes|Add5~5_combout\,
	datac => \calculette|choix_d0|Mux3~7_combout\,
	datad => \calculette|sepRes|Add5~8_combout\,
	combout => \calculette|ledRes1|Mux6~0_combout\);

-- Location: LCCOMB_X56_Y45_N20
\IR|enableAffichage~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|enableAffichage~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \IR|enableAffichage~feeder_combout\);

-- Location: FF_X56_Y45_N21
\IR|enableAffichage\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|enableAffichage~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \IR|A[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|enableAffichage~q\);

-- Location: LCCOMB_X60_Y47_N30
\IR|eror~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|eror~1_combout\ = (!\mode~input_o\ & ((!\IR|LessThan2~0_combout\) # (!\IR|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \IR|LessThan5~0_combout\,
	datad => \IR|LessThan2~0_combout\,
	combout => \IR|eror~1_combout\);

-- Location: LCCOMB_X59_Y47_N14
\IR|eror~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|eror~0_combout\ = (\reset~input_o\ & (\IR|analyse_data:counter[2]~q\ & (\IR|A[0]~1_combout\ & \IR|analyse_data:counter[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \IR|analyse_data:counter[2]~q\,
	datac => \IR|A[0]~1_combout\,
	datad => \IR|analyse_data:counter[1]~q\,
	combout => \IR|eror~0_combout\);

-- Location: LCCOMB_X56_Y45_N12
\HEX5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5~2_combout\ = (!\IR|old_data_1\(0) & \IR|old_data_1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_1\(0),
	datad => \IR|old_data_1\(3),
	combout => \HEX5~2_combout\);

-- Location: LCCOMB_X55_Y47_N6
\IR|eror~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|eror~3_combout\ = (\HEX5~2_combout\ & (((\IR|analyse_data~2_combout\)))) # (!\HEX5~2_combout\ & ((\IR|Add5~4_combout\) # ((!\IR|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5~2_combout\,
	datab => \IR|Add5~4_combout\,
	datac => \IR|LessThan2~0_combout\,
	datad => \IR|analyse_data~2_combout\,
	combout => \IR|eror~3_combout\);

-- Location: LCCOMB_X59_Y49_N4
\HEX2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2~3_combout\ = (!\IR|old_data_4\(0) & \IR|old_data_4\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|old_data_4\(0),
	datad => \IR|old_data_4\(3),
	combout => \HEX2~3_combout\);

-- Location: LCCOMB_X56_Y47_N20
\IR|eror~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|eror~2_combout\ = (\HEX2~3_combout\ & (((\IR|analyse_data~5_combout\)))) # (!\HEX2~3_combout\ & (((\IR|Add7~4_combout\)) # (!\IR|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|LessThan5~0_combout\,
	datab => \IR|Add7~4_combout\,
	datac => \IR|analyse_data~5_combout\,
	datad => \HEX2~3_combout\,
	combout => \IR|eror~2_combout\);

-- Location: LCCOMB_X56_Y47_N26
\IR|eror~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|eror~4_combout\ = (\mode~input_o\ & ((\IR|eror~3_combout\) # (\IR|eror~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \IR|eror~3_combout\,
	datad => \IR|eror~2_combout\,
	combout => \IR|eror~4_combout\);

-- Location: LCCOMB_X56_Y47_N24
\IR|eror~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|eror~5_combout\ = (\IR|eror~0_combout\ & ((\IR|eror~1_combout\) # ((\IR|eror~4_combout\)))) # (!\IR|eror~0_combout\ & (((\IR|eror~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|eror~1_combout\,
	datab => \IR|eror~0_combout\,
	datac => \IR|eror~q\,
	datad => \IR|eror~4_combout\,
	combout => \IR|eror~5_combout\);

-- Location: FF_X56_Y47_N25
\IR|eror\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \IR|eror~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|eror~q\);

-- Location: LCCOMB_X59_Y42_N28
\calculette|eror~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|eror~0_combout\ = (\operation~input_o\) # ((!\calculette|ResAdd[1]~0_combout\ & ((\mode~input_o\) # (!\calculette|add0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \operation~input_o\,
	datac => \calculette|add0|Add0~0_combout\,
	datad => \calculette|ResAdd[1]~0_combout\,
	combout => \calculette|eror~0_combout\);

-- Location: LCCOMB_X59_Y42_N10
\calculette|controlMulti|erorTotale~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|controlMulti|erorTotale~1_combout\ = (\mode~input_o\ & ((\calculette|multi0|Mult1|auto_generated|op_2~6_combout\ $ (\calculette|multi0|Mult1|auto_generated|op_2~8_combout\)))) # (!\mode~input_o\ & 
-- (\calculette|multi0|Mult0|auto_generated|op_3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \calculette|multi0|Mult0|auto_generated|op_3~14_combout\,
	datac => \calculette|multi0|Mult1|auto_generated|op_2~6_combout\,
	datad => \calculette|multi0|Mult1|auto_generated|op_2~8_combout\,
	combout => \calculette|controlMulti|erorTotale~1_combout\);

-- Location: LCCOMB_X59_Y42_N16
\calculette|eror~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|eror~1_combout\ = (\operation~input_o\ & ((\calculette|controlMulti|erorTotale~1_combout\) # (\calculette|controlMulti|erorTotale~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|controlMulti|erorTotale~1_combout\,
	datab => \operation~input_o\,
	datad => \calculette|controlMulti|erorTotale~0_combout\,
	combout => \calculette|eror~1_combout\);

-- Location: LCCOMB_X59_Y42_N2
\calculette|eror~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|eror~2_combout\ = (!\IR|eror~q\ & (\calculette|eror~0_combout\ & (!\CLA~input_o\ & !\calculette|eror~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|eror~q\,
	datab => \calculette|eror~0_combout\,
	datac => \CLA~input_o\,
	datad => \calculette|eror~1_combout\,
	combout => \calculette|eror~2_combout\);

-- Location: LCCOMB_X62_Y49_N16
\IR|hex05|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex05|Mux6~0_combout\ = (\IR|old_data_6\(3) & (!\IR|old_data_6\(0) & (\IR|old_data_6\(1) & !\IR|old_data_6\(2)))) # (!\IR|old_data_6\(3) & (!\IR|old_data_6\(1) & (\IR|old_data_6\(0) $ (\IR|old_data_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_6\(3),
	datab => \IR|old_data_6\(0),
	datac => \IR|old_data_6\(1),
	datad => \IR|old_data_6\(2),
	combout => \IR|hex05|Mux6~0_combout\);

-- Location: LCCOMB_X62_Y49_N18
\HEX0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~0_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledRes1|Mux6~0_combout\) # ((!\calculette|eror~2_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|hex05|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledRes1|Mux6~0_combout\,
	datab => \IR|enableAffichage~q\,
	datac => \calculette|eror~2_combout\,
	datad => \IR|hex05|Mux6~0_combout\,
	combout => \HEX0~0_combout\);

-- Location: LCCOMB_X61_Y49_N14
\calculette|ledRes1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes1|Mux5~0_combout\ = (\calculette|sepRes|Add5~2_combout\ & (!\calculette|choix_d0|Mux3~7_combout\ & (\calculette|sepRes|Add5~5_combout\ $ (\calculette|sepRes|Add5~8_combout\)))) # (!\calculette|sepRes|Add5~2_combout\ & 
-- (\calculette|sepRes|Add5~5_combout\ & (\calculette|choix_d0|Mux3~7_combout\ & !\calculette|sepRes|Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add5~2_combout\,
	datab => \calculette|sepRes|Add5~5_combout\,
	datac => \calculette|choix_d0|Mux3~7_combout\,
	datad => \calculette|sepRes|Add5~8_combout\,
	combout => \calculette|ledRes1|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y49_N24
\IR|hex05|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex05|Mux5~0_combout\ = (\IR|old_data_6\(3) & (!\IR|old_data_6\(0) & (\IR|old_data_6\(1) & !\IR|old_data_6\(2)))) # (!\IR|old_data_6\(3) & (\IR|old_data_6\(2) & (\IR|old_data_6\(0) $ (\IR|old_data_6\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_6\(3),
	datab => \IR|old_data_6\(0),
	datac => \IR|old_data_6\(1),
	datad => \IR|old_data_6\(2),
	combout => \IR|hex05|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y49_N10
\HEX0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~1_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledRes1|Mux5~0_combout\) # ((!\calculette|eror~2_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|hex05|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledRes1|Mux5~0_combout\,
	datab => \IR|hex05|Mux5~0_combout\,
	datac => \calculette|eror~2_combout\,
	datad => \IR|enableAffichage~q\,
	combout => \HEX0~1_combout\);

-- Location: LCCOMB_X61_Y49_N0
\calculette|ledRes1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes1|Mux4~0_combout\ = (\calculette|sepRes|Add5~2_combout\ & (!\calculette|sepRes|Add5~5_combout\ & ((\calculette|sepRes|Add5~8_combout\) # (!\calculette|choix_d0|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add5~2_combout\,
	datab => \calculette|sepRes|Add5~5_combout\,
	datac => \calculette|choix_d0|Mux3~7_combout\,
	datad => \calculette|sepRes|Add5~8_combout\,
	combout => \calculette|ledRes1|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y49_N4
\IR|hex05|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex05|Mux4~0_combout\ = (\IR|old_data_6\(1) & (!\IR|old_data_6\(2) & ((\IR|old_data_6\(3)) # (!\IR|old_data_6\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_6\(3),
	datab => \IR|old_data_6\(0),
	datac => \IR|old_data_6\(1),
	datad => \IR|old_data_6\(2),
	combout => \IR|hex05|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y49_N14
\HEX0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~2_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledRes1|Mux4~0_combout\) # ((!\calculette|eror~2_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|hex05|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledRes1|Mux4~0_combout\,
	datab => \calculette|eror~2_combout\,
	datac => \IR|hex05|Mux4~0_combout\,
	datad => \IR|enableAffichage~q\,
	combout => \HEX0~2_combout\);

-- Location: LCCOMB_X62_Y49_N12
\IR|hex05|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex05|Mux3~0_combout\ = (\IR|old_data_6\(3) & (((\IR|old_data_6\(1) & !\IR|old_data_6\(2))))) # (!\IR|old_data_6\(3) & ((\IR|old_data_6\(0) & (\IR|old_data_6\(1) $ (!\IR|old_data_6\(2)))) # (!\IR|old_data_6\(0) & (!\IR|old_data_6\(1) & 
-- \IR|old_data_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_6\(3),
	datab => \IR|old_data_6\(0),
	datac => \IR|old_data_6\(1),
	datad => \IR|old_data_6\(2),
	combout => \IR|hex05|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y49_N18
\calculette|ledRes1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes1|Mux3~0_combout\ = (\calculette|sepRes|Add5~2_combout\ & ((\calculette|sepRes|Add5~5_combout\ & (\calculette|choix_d0|Mux3~7_combout\ & !\calculette|sepRes|Add5~8_combout\)) # (!\calculette|sepRes|Add5~5_combout\ & 
-- ((\calculette|sepRes|Add5~8_combout\))))) # (!\calculette|sepRes|Add5~2_combout\ & (!\calculette|sepRes|Add5~8_combout\ & (\calculette|sepRes|Add5~5_combout\ $ (\calculette|choix_d0|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add5~2_combout\,
	datab => \calculette|sepRes|Add5~5_combout\,
	datac => \calculette|choix_d0|Mux3~7_combout\,
	datad => \calculette|sepRes|Add5~8_combout\,
	combout => \calculette|ledRes1|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y49_N22
\HEX0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~3_combout\ = (\IR|enableAffichage~q\ & (((\calculette|ledRes1|Mux3~0_combout\) # (!\calculette|eror~2_combout\)))) # (!\IR|enableAffichage~q\ & (\IR|hex05|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|hex05|Mux3~0_combout\,
	datab => \calculette|ledRes1|Mux3~0_combout\,
	datac => \calculette|eror~2_combout\,
	datad => \IR|enableAffichage~q\,
	combout => \HEX0~3_combout\);

-- Location: LCCOMB_X61_Y49_N12
\calculette|ledRes1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes1|Mux2~0_combout\ = (\calculette|sepRes|Add5~5_combout\ & (!\calculette|sepRes|Add5~8_combout\ & ((\calculette|choix_d0|Mux3~7_combout\) # (!\calculette|sepRes|Add5~2_combout\)))) # (!\calculette|sepRes|Add5~5_combout\ & 
-- (\calculette|choix_d0|Mux3~7_combout\ $ (((\calculette|sepRes|Add5~2_combout\ & \calculette|sepRes|Add5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add5~2_combout\,
	datab => \calculette|sepRes|Add5~5_combout\,
	datac => \calculette|choix_d0|Mux3~7_combout\,
	datad => \calculette|sepRes|Add5~8_combout\,
	combout => \calculette|ledRes1|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y49_N28
\IR|hex05|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex05|Mux2~0_combout\ = (\IR|old_data_6\(3) & (!\IR|old_data_6\(2) & (\IR|old_data_6\(0) $ (\IR|old_data_6\(1))))) # (!\IR|old_data_6\(3) & ((\IR|old_data_6\(0)) # ((!\IR|old_data_6\(1) & \IR|old_data_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_6\(3),
	datab => \IR|old_data_6\(0),
	datac => \IR|old_data_6\(1),
	datad => \IR|old_data_6\(2),
	combout => \IR|hex05|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y49_N6
\HEX0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~4_combout\ = (\IR|enableAffichage~q\ & (\calculette|ledRes1|Mux2~0_combout\ & (\calculette|eror~2_combout\))) # (!\IR|enableAffichage~q\ & (((\IR|hex05|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledRes1|Mux2~0_combout\,
	datab => \calculette|eror~2_combout\,
	datac => \IR|hex05|Mux2~0_combout\,
	datad => \IR|enableAffichage~q\,
	combout => \HEX0~4_combout\);

-- Location: LCCOMB_X61_Y49_N10
\calculette|ledRes1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes1|Mux1~0_combout\ = (\calculette|choix_d0|Mux3~7_combout\ & (!\calculette|sepRes|Add5~8_combout\ & ((\calculette|sepRes|Add5~2_combout\) # (!\calculette|sepRes|Add5~5_combout\)))) # (!\calculette|choix_d0|Mux3~7_combout\ & 
-- (\calculette|sepRes|Add5~2_combout\ & (!\calculette|sepRes|Add5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add5~2_combout\,
	datab => \calculette|sepRes|Add5~5_combout\,
	datac => \calculette|choix_d0|Mux3~7_combout\,
	datad => \calculette|sepRes|Add5~8_combout\,
	combout => \calculette|ledRes1|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y49_N8
\IR|hex05|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex05|Mux1~0_combout\ = (\IR|old_data_6\(0) & (!\IR|old_data_6\(3) & ((\IR|old_data_6\(1)) # (!\IR|old_data_6\(2))))) # (!\IR|old_data_6\(0) & (((\IR|old_data_6\(1) & !\IR|old_data_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_6\(3),
	datab => \IR|old_data_6\(0),
	datac => \IR|old_data_6\(1),
	datad => \IR|old_data_6\(2),
	combout => \IR|hex05|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y49_N30
\HEX0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~5_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledRes1|Mux1~0_combout\) # ((!\calculette|eror~2_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|hex05|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledRes1|Mux1~0_combout\,
	datab => \calculette|eror~2_combout\,
	datac => \IR|hex05|Mux1~0_combout\,
	datad => \IR|enableAffichage~q\,
	combout => \HEX0~5_combout\);

-- Location: LCCOMB_X61_Y49_N8
\calculette|ledRes1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes1|Mux0~0_combout\ = (\calculette|sepRes|Add5~8_combout\) # ((\calculette|sepRes|Add5~2_combout\ & ((!\calculette|choix_d0|Mux3~7_combout\) # (!\calculette|sepRes|Add5~5_combout\))) # (!\calculette|sepRes|Add5~2_combout\ & 
-- (\calculette|sepRes|Add5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add5~2_combout\,
	datab => \calculette|sepRes|Add5~5_combout\,
	datac => \calculette|choix_d0|Mux3~7_combout\,
	datad => \calculette|sepRes|Add5~8_combout\,
	combout => \calculette|ledRes1|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y49_N20
\IR|hex05|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex05|Mux0~0_combout\ = (\IR|old_data_6\(3)) # ((\IR|old_data_6\(1) & ((!\IR|old_data_6\(2)) # (!\IR|old_data_6\(0)))) # (!\IR|old_data_6\(1) & ((\IR|old_data_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_6\(3),
	datab => \IR|old_data_6\(0),
	datac => \IR|old_data_6\(1),
	datad => \IR|old_data_6\(2),
	combout => \IR|hex05|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y49_N26
\HEX0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~6_combout\ = (\IR|enableAffichage~q\ & (!\calculette|ledRes1|Mux0~0_combout\ & (\calculette|eror~2_combout\))) # (!\IR|enableAffichage~q\ & (((!\IR|hex05|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledRes1|Mux0~0_combout\,
	datab => \calculette|eror~2_combout\,
	datac => \IR|hex05|Mux0~0_combout\,
	datad => \IR|enableAffichage~q\,
	combout => \HEX0~6_combout\);

-- Location: LCCOMB_X55_Y41_N12
\calculette|sepRes|Div0|auto_generated|divider|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\ & \calculette|sepRes|int_input[31]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \calculette|sepRes|int_input[31]~0_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\);

-- Location: LCCOMB_X60_Y41_N6
\calculette|sepRes|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add0~0_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & ((!\calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\))) # (!\calculette|sepRes|int_input[31]~0_combout\ & 
-- (!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \calculette|sepRes|int_input[31]~0_combout\,
	combout => \calculette|sepRes|Add0~0_combout\);

-- Location: LCCOMB_X55_Y41_N14
\calculette|sepRes|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add0~1_combout\ = (\calculette|sepRes|Add0~0_combout\ & (\calculette|sepRes|int_input[31]~0_combout\ $ (VCC))) # (!\calculette|sepRes|Add0~0_combout\ & (\calculette|sepRes|int_input[31]~0_combout\ & VCC))
-- \calculette|sepRes|Add0~2\ = CARRY((\calculette|sepRes|Add0~0_combout\ & \calculette|sepRes|int_input[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add0~0_combout\,
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datad => VCC,
	combout => \calculette|sepRes|Add0~1_combout\,
	cout => \calculette|sepRes|Add0~2\);

-- Location: LCCOMB_X55_Y41_N16
\calculette|sepRes|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add0~3_combout\ = (\calculette|sepRes|Add0~2\ & (\calculette|sepRes|int_input[31]~0_combout\ $ ((!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\)))) # (!\calculette|sepRes|Add0~2\ & 
-- ((\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\)) # (GND)))
-- \calculette|sepRes|Add0~4\ = CARRY((\calculette|sepRes|int_input[31]~0_combout\ $ (!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\)) # (!\calculette|sepRes|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datad => VCC,
	cin => \calculette|sepRes|Add0~2\,
	combout => \calculette|sepRes|Add0~3_combout\,
	cout => \calculette|sepRes|Add0~4\);

-- Location: LCCOMB_X55_Y41_N18
\calculette|sepRes|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add0~5_combout\ = (\calculette|sepRes|Add0~4\ & ((\calculette|sepRes|Div0|auto_generated|divider|_~0_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\)))) # (!\calculette|sepRes|Add0~4\ & 
-- (\calculette|sepRes|Div0|auto_generated|divider|_~0_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\ $ (VCC))))
-- \calculette|sepRes|Add0~6\ = CARRY((!\calculette|sepRes|Add0~4\ & (\calculette|sepRes|Div0|auto_generated|divider|_~0_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\,
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \calculette|sepRes|Add0~4\,
	combout => \calculette|sepRes|Add0~5_combout\,
	cout => \calculette|sepRes|Add0~6\);

-- Location: LCCOMB_X57_Y41_N6
\calculette|sepRes|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\ = !\calculette|sepRes|Div0|auto_generated|divider|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \calculette|sepRes|Div0|auto_generated|divider|op_1~5\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X56_Y41_N30
\calculette|sepRes|Div0|auto_generated|divider|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & \calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|sepRes|int_input[31]~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\,
	combout => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\);

-- Location: LCCOMB_X55_Y41_N20
\calculette|sepRes|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepRes|Add0~7_combout\ = \calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|sepRes|Add0~6\ $ (\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\,
	cin => \calculette|sepRes|Add0~6\,
	combout => \calculette|sepRes|Add0~7_combout\);

-- Location: LCCOMB_X55_Y41_N26
\calculette|ledRes0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes0|Mux6~0_combout\ = (\calculette|sepRes|Add0~7_combout\ & (!\calculette|sepRes|Add0~5_combout\ & (!\calculette|sepRes|Add0~1_combout\ & \calculette|sepRes|Add0~3_combout\))) # (!\calculette|sepRes|Add0~7_combout\ & 
-- (!\calculette|sepRes|Add0~3_combout\ & (\calculette|sepRes|Add0~5_combout\ $ (\calculette|sepRes|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add0~5_combout\,
	datab => \calculette|sepRes|Add0~7_combout\,
	datac => \calculette|sepRes|Add0~1_combout\,
	datad => \calculette|sepRes|Add0~3_combout\,
	combout => \calculette|ledRes0|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y44_N4
\HEX1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~16_combout\ = (\IR|enableAffichage~q\ & (\calculette|eror~2_combout\ & ((\calculette|sepRes|int_input[31]~0_combout\) # (\calculette|ledRes0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \IR|enableAffichage~q\,
	datac => \calculette|eror~2_combout\,
	datad => \calculette|ledRes0|Mux6~0_combout\,
	combout => \HEX1~16_combout\);

-- Location: LCCOMB_X62_Y44_N30
\IR|hex04|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex04|Mux6~0_combout\ = (\IR|old_data_5\(1) & (\IR|old_data_5\(3) & (!\IR|old_data_5\(0) & !\IR|old_data_5\(2)))) # (!\IR|old_data_5\(1) & (!\IR|old_data_5\(3) & (\IR|old_data_5\(0) $ (\IR|old_data_5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(1),
	datab => \IR|old_data_5\(3),
	datac => \IR|old_data_5\(0),
	datad => \IR|old_data_5\(2),
	combout => \IR|hex04|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y44_N24
\HEX1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~9_combout\ = (\HEX1~16_combout\) # ((!\IR|enableAffichage~q\ & \IR|hex04|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX1~16_combout\,
	datac => \IR|enableAffichage~q\,
	datad => \IR|hex04|Mux6~0_combout\,
	combout => \HEX1~9_combout\);

-- Location: LCCOMB_X55_Y41_N4
\calculette|ledRes0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes0|Mux5~0_combout\ = (\calculette|sepRes|Add0~5_combout\ & (!\calculette|sepRes|Add0~7_combout\ & (\calculette|sepRes|Add0~1_combout\ $ (\calculette|sepRes|Add0~3_combout\)))) # (!\calculette|sepRes|Add0~5_combout\ & 
-- (\calculette|sepRes|Add0~7_combout\ & (!\calculette|sepRes|Add0~1_combout\ & \calculette|sepRes|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add0~5_combout\,
	datab => \calculette|sepRes|Add0~7_combout\,
	datac => \calculette|sepRes|Add0~1_combout\,
	datad => \calculette|sepRes|Add0~3_combout\,
	combout => \calculette|ledRes0|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y44_N24
\IR|hex04|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex04|Mux5~0_combout\ = (\IR|old_data_5\(1) & (!\IR|old_data_5\(0) & (\IR|old_data_5\(3) $ (\IR|old_data_5\(2))))) # (!\IR|old_data_5\(1) & (!\IR|old_data_5\(3) & (\IR|old_data_5\(0) & \IR|old_data_5\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(1),
	datab => \IR|old_data_5\(3),
	datac => \IR|old_data_5\(0),
	datad => \IR|old_data_5\(2),
	combout => \IR|hex04|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y44_N28
\HEX1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~8_combout\ = (\calculette|eror~2_combout\ & !\calculette|sepRes|int_input[31]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|eror~2_combout\,
	datad => \calculette|sepRes|int_input[31]~0_combout\,
	combout => \HEX1~8_combout\);

-- Location: LCCOMB_X62_Y44_N6
\HEX1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~10_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledRes0|Mux5~0_combout\) # ((!\HEX1~8_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|hex04|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledRes0|Mux5~0_combout\,
	datab => \IR|hex04|Mux5~0_combout\,
	datac => \IR|enableAffichage~q\,
	datad => \HEX1~8_combout\,
	combout => \HEX1~10_combout\);

-- Location: LCCOMB_X55_Y41_N10
\calculette|ledRes0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes0|Mux4~0_combout\ = (!\calculette|sepRes|Add0~5_combout\ & (\calculette|sepRes|Add0~3_combout\ & ((\calculette|sepRes|Add0~7_combout\) # (!\calculette|sepRes|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add0~5_combout\,
	datab => \calculette|sepRes|Add0~7_combout\,
	datac => \calculette|sepRes|Add0~1_combout\,
	datad => \calculette|sepRes|Add0~3_combout\,
	combout => \calculette|ledRes0|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y44_N20
\IR|hex04|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex04|Mux4~0_combout\ = (\IR|old_data_5\(1) & (!\IR|old_data_5\(2) & ((\IR|old_data_5\(3)) # (!\IR|old_data_5\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(1),
	datab => \IR|old_data_5\(3),
	datac => \IR|old_data_5\(0),
	datad => \IR|old_data_5\(2),
	combout => \IR|hex04|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y44_N26
\HEX1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~11_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledRes0|Mux4~0_combout\) # ((!\HEX1~8_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|hex04|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledRes0|Mux4~0_combout\,
	datab => \IR|hex04|Mux4~0_combout\,
	datac => \IR|enableAffichage~q\,
	datad => \HEX1~8_combout\,
	combout => \HEX1~11_combout\);

-- Location: LCCOMB_X55_Y41_N24
\calculette|ledRes0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes0|Mux3~0_combout\ = (\calculette|sepRes|Add0~5_combout\ & (!\calculette|sepRes|Add0~7_combout\ & (\calculette|sepRes|Add0~1_combout\ $ (!\calculette|sepRes|Add0~3_combout\)))) # (!\calculette|sepRes|Add0~5_combout\ & 
-- ((\calculette|sepRes|Add0~7_combout\ & ((\calculette|sepRes|Add0~3_combout\))) # (!\calculette|sepRes|Add0~7_combout\ & (\calculette|sepRes|Add0~1_combout\ & !\calculette|sepRes|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add0~5_combout\,
	datab => \calculette|sepRes|Add0~7_combout\,
	datac => \calculette|sepRes|Add0~1_combout\,
	datad => \calculette|sepRes|Add0~3_combout\,
	combout => \calculette|ledRes0|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y44_N22
\HEX1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~17_combout\ = (\calculette|eror~2_combout\ & (\IR|enableAffichage~q\ & ((\calculette|ledRes0|Mux3~0_combout\) # (\calculette|sepRes|int_input[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledRes0|Mux3~0_combout\,
	datab => \calculette|eror~2_combout\,
	datac => \IR|enableAffichage~q\,
	datad => \calculette|sepRes|int_input[31]~0_combout\,
	combout => \HEX1~17_combout\);

-- Location: LCCOMB_X62_Y44_N16
\IR|hex04|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex04|Mux3~0_combout\ = (\IR|old_data_5\(1) & ((\IR|old_data_5\(3) & ((!\IR|old_data_5\(2)))) # (!\IR|old_data_5\(3) & (\IR|old_data_5\(0) & \IR|old_data_5\(2))))) # (!\IR|old_data_5\(1) & (!\IR|old_data_5\(3) & (\IR|old_data_5\(0) $ 
-- (\IR|old_data_5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(1),
	datab => \IR|old_data_5\(3),
	datac => \IR|old_data_5\(0),
	datad => \IR|old_data_5\(2),
	combout => \IR|hex04|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y44_N2
\HEX1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~12_combout\ = (\HEX1~17_combout\) # ((!\IR|enableAffichage~q\ & \IR|hex04|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1~17_combout\,
	datac => \IR|enableAffichage~q\,
	datad => \IR|hex04|Mux3~0_combout\,
	combout => \HEX1~12_combout\);

-- Location: LCCOMB_X62_Y44_N0
\IR|hex04|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex04|Mux2~0_combout\ = (\IR|old_data_5\(3) & (!\IR|old_data_5\(2) & (\IR|old_data_5\(1) $ (\IR|old_data_5\(0))))) # (!\IR|old_data_5\(3) & ((\IR|old_data_5\(0)) # ((!\IR|old_data_5\(1) & \IR|old_data_5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(1),
	datab => \IR|old_data_5\(3),
	datac => \IR|old_data_5\(0),
	datad => \IR|old_data_5\(2),
	combout => \IR|hex04|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y41_N30
\calculette|ledRes0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes0|Mux2~0_combout\ = (\calculette|sepRes|Add0~5_combout\ & (!\calculette|sepRes|Add0~7_combout\ & ((\calculette|sepRes|Add0~1_combout\) # (!\calculette|sepRes|Add0~3_combout\)))) # (!\calculette|sepRes|Add0~5_combout\ & 
-- (\calculette|sepRes|Add0~1_combout\ $ (((\calculette|sepRes|Add0~7_combout\ & \calculette|sepRes|Add0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add0~5_combout\,
	datab => \calculette|sepRes|Add0~7_combout\,
	datac => \calculette|sepRes|Add0~1_combout\,
	datad => \calculette|sepRes|Add0~3_combout\,
	combout => \calculette|ledRes0|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y44_N18
\HEX1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~18_combout\ = (\IR|enableAffichage~q\ & (\calculette|eror~2_combout\ & ((\calculette|sepRes|int_input[31]~0_combout\) # (\calculette|ledRes0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \IR|enableAffichage~q\,
	datac => \calculette|eror~2_combout\,
	datad => \calculette|ledRes0|Mux2~0_combout\,
	combout => \HEX1~18_combout\);

-- Location: LCCOMB_X64_Y44_N16
\HEX1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~13_combout\ = (\HEX1~18_combout\) # ((!\IR|enableAffichage~q\ & \IR|hex04|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|enableAffichage~q\,
	datac => \IR|hex04|Mux2~0_combout\,
	datad => \HEX1~18_combout\,
	combout => \HEX1~13_combout\);

-- Location: LCCOMB_X55_Y41_N28
\calculette|ledRes0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes0|Mux1~0_combout\ = (\calculette|sepRes|Add0~1_combout\ & (!\calculette|sepRes|Add0~7_combout\ & ((\calculette|sepRes|Add0~3_combout\) # (!\calculette|sepRes|Add0~5_combout\)))) # (!\calculette|sepRes|Add0~1_combout\ & 
-- (!\calculette|sepRes|Add0~5_combout\ & ((\calculette|sepRes|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add0~5_combout\,
	datab => \calculette|sepRes|Add0~7_combout\,
	datac => \calculette|sepRes|Add0~1_combout\,
	datad => \calculette|sepRes|Add0~3_combout\,
	combout => \calculette|ledRes0|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y44_N12
\HEX1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~19_combout\ = (\IR|enableAffichage~q\ & (\calculette|eror~2_combout\ & ((\calculette|ledRes0|Mux1~0_combout\) # (\calculette|sepRes|int_input[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|enableAffichage~q\,
	datab => \calculette|ledRes0|Mux1~0_combout\,
	datac => \calculette|eror~2_combout\,
	datad => \calculette|sepRes|int_input[31]~0_combout\,
	combout => \HEX1~19_combout\);

-- Location: LCCOMB_X62_Y44_N18
\IR|hex04|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex04|Mux1~0_combout\ = (\IR|old_data_5\(0) & (!\IR|old_data_5\(3) & ((\IR|old_data_5\(1)) # (!\IR|old_data_5\(2))))) # (!\IR|old_data_5\(0) & (\IR|old_data_5\(1) & ((!\IR|old_data_5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(1),
	datab => \IR|old_data_5\(3),
	datac => \IR|old_data_5\(0),
	datad => \IR|old_data_5\(2),
	combout => \IR|hex04|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y44_N4
\HEX1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~14_combout\ = (\HEX1~19_combout\) # ((!\IR|enableAffichage~q\ & \IR|hex04|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1~19_combout\,
	datac => \IR|enableAffichage~q\,
	datad => \IR|hex04|Mux1~0_combout\,
	combout => \HEX1~14_combout\);

-- Location: LCCOMB_X55_Y41_N22
\calculette|ledRes0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledRes0|Mux0~0_combout\ = (\calculette|sepRes|Add0~7_combout\) # ((\calculette|sepRes|Add0~5_combout\ & ((!\calculette|sepRes|Add0~3_combout\) # (!\calculette|sepRes|Add0~1_combout\))) # (!\calculette|sepRes|Add0~5_combout\ & 
-- ((\calculette|sepRes|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Add0~5_combout\,
	datab => \calculette|sepRes|Add0~7_combout\,
	datac => \calculette|sepRes|Add0~1_combout\,
	datad => \calculette|sepRes|Add0~3_combout\,
	combout => \calculette|ledRes0|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y44_N14
\IR|hex04|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex04|Mux0~0_combout\ = (\IR|old_data_5\(3)) # ((\IR|old_data_5\(1) & ((!\IR|old_data_5\(2)) # (!\IR|old_data_5\(0)))) # (!\IR|old_data_5\(1) & ((\IR|old_data_5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_5\(1),
	datab => \IR|old_data_5\(3),
	datac => \IR|old_data_5\(0),
	datad => \IR|old_data_5\(2),
	combout => \IR|hex04|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y44_N8
\HEX1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~15_combout\ = (\IR|enableAffichage~q\ & (!\calculette|ledRes0|Mux0~0_combout\ & ((\HEX1~8_combout\)))) # (!\IR|enableAffichage~q\ & (((!\IR|hex04|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledRes0|Mux0~0_combout\,
	datab => \IR|hex04|Mux0~0_combout\,
	datac => \IR|enableAffichage~q\,
	datad => \HEX1~8_combout\,
	combout => \HEX1~15_combout\);

-- Location: LCCOMB_X64_Y48_N18
\calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ = (!\IR|B\(1) & (!\IR|B\(0) & (\IR|B\(3) & \mode~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(1),
	datab => \IR|B\(0),
	datac => \IR|B\(3),
	datad => \mode~input_o\,
	combout => \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\);

-- Location: LCCOMB_X64_Y48_N16
\calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ = (\calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ & ((\IR|B\(3) $ (\IR|B\(2))))) # 
-- (!\calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ & (!\mode~input_o\ & (\IR|B\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \IR|B\(3),
	datac => \IR|B\(2),
	datad => \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\,
	combout => \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\);

-- Location: LCCOMB_X65_Y48_N20
\calculette|sepB|int_input[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|int_input[31]~0_combout\ = (\IR|B\(3) & \mode~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|B\(3),
	datad => \mode~input_o\,
	combout => \calculette|sepB|int_input[31]~0_combout\);

-- Location: LCCOMB_X65_Y48_N2
\calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ = \IR|B\(2) $ (((\calculette|sepB|int_input[31]~0_combout\ & ((\IR|B\(0)) # (\IR|B\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(0),
	datab => \IR|B\(2),
	datac => \IR|B\(1),
	datad => \calculette|sepB|int_input[31]~0_combout\,
	combout => \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\);

-- Location: LCCOMB_X64_Y48_N12
\calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ = \IR|B\(1) $ (((\IR|B\(0) & (\IR|B\(3) & \mode~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(1),
	datab => \IR|B\(0),
	datac => \IR|B\(3),
	datad => \mode~input_o\,
	combout => \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\);

-- Location: LCCOMB_X64_Y48_N0
\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY(\calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\,
	datad => VCC,
	cout => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X64_Y48_N2
\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ & 
-- !\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\,
	datad => VCC,
	cin => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X64_Y48_N4
\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((\calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ & 
-- !\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\,
	datad => VCC,
	cin => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X64_Y48_N6
\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X64_Y48_N8
\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X64_Y48_N22
\calculette|sepB|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|op_1~4_combout\ = \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (VCC)
-- \calculette|sepB|Div0|auto_generated|divider|op_1~5\ = CARRY(\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	combout => \calculette|sepB|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \calculette|sepB|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X64_Y48_N14
\calculette|sepB|Div0|auto_generated|divider|quotient[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\ = (\IR|B\(3) & ((\mode~input_o\ & (\calculette|sepB|Div0|auto_generated|divider|op_1~4_combout\)) # (!\mode~input_o\ & 
-- ((!\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\IR|B\(3) & (((!\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Div0|auto_generated|divider|op_1~4_combout\,
	datab => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \IR|B\(3),
	datad => \mode~input_o\,
	combout => \calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\);

-- Location: LCCOMB_X64_Y48_N24
\calculette|sepB|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|op_1~6_combout\ = !\calculette|sepB|Div0|auto_generated|divider|op_1~5\
-- \calculette|sepB|Div0|auto_generated|divider|op_1~7\ = CARRY(!\calculette|sepB|Div0|auto_generated|divider|op_1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \calculette|sepB|Div0|auto_generated|divider|op_1~5\,
	combout => \calculette|sepB|Div0|auto_generated|divider|op_1~6_combout\,
	cout => \calculette|sepB|Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X65_Y48_N4
\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ = (\mode~input_o\ & (\calculette|sepB|Div0|auto_generated|divider|op_1~6_combout\ & \IR|B\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \calculette|sepB|Div0|auto_generated|divider|op_1~6_combout\,
	datad => \IR|B\(3),
	combout => \calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\);

-- Location: LCCOMB_X65_Y48_N28
\calculette|sepB|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add2~0_combout\ = \calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ $ (\IR|B\(2) $ (((!\IR|B\(1)) # (!\calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datac => \IR|B\(1),
	datad => \IR|B\(2),
	combout => \calculette|sepB|Add2~0_combout\);

-- Location: LCCOMB_X65_Y48_N10
\calculette|sepB|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add3~1_combout\ = (!\IR|B\(0) & (\calculette|sepB|Add2~0_combout\ & (\calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (!\IR|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \IR|B\(0),
	datac => \IR|B\(1),
	datad => \calculette|sepB|Add2~0_combout\,
	combout => \calculette|sepB|Add3~1_combout\);

-- Location: LCCOMB_X64_Y48_N26
\calculette|sepB|Div0|auto_generated|divider|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|op_1~8_combout\ = \calculette|sepB|Div0|auto_generated|divider|op_1~7\ $ (GND)
-- \calculette|sepB|Div0|auto_generated|divider|op_1~9\ = CARRY(!\calculette|sepB|Div0|auto_generated|divider|op_1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \calculette|sepB|Div0|auto_generated|divider|op_1~7\,
	combout => \calculette|sepB|Div0|auto_generated|divider|op_1~8_combout\,
	cout => \calculette|sepB|Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X64_Y48_N30
\calculette|sepB|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add4~0_combout\ = (\calculette|sepB|int_input[31]~0_combout\ & ((\calculette|sepB|Div0|auto_generated|divider|op_1~4_combout\ $ (\calculette|sepB|Div0|auto_generated|divider|op_1~8_combout\)))) # 
-- (!\calculette|sepB|int_input[31]~0_combout\ & (!\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|int_input[31]~0_combout\,
	datab => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \calculette|sepB|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \calculette|sepB|Div0|auto_generated|divider|op_1~8_combout\,
	combout => \calculette|sepB|Add4~0_combout\);

-- Location: LCCOMB_X65_Y48_N0
\calculette|sepB|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add3~2_combout\ = (\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\IR|B\(2) & ((!\IR|B\(1)) # (!\calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\)))) # 
-- (!\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & (((!\IR|B\(2)) # (!\IR|B\(1))) # (!\calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datac => \IR|B\(1),
	datad => \IR|B\(2),
	combout => \calculette|sepB|Add3~2_combout\);

-- Location: LCCOMB_X65_Y48_N26
\calculette|sepB|Add3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add3~3_combout\ = \calculette|sepB|Add4~0_combout\ $ (\IR|B\(3) $ (\calculette|sepB|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepB|Add4~0_combout\,
	datac => \IR|B\(3),
	datad => \calculette|sepB|Add3~2_combout\,
	combout => \calculette|sepB|Add3~3_combout\);

-- Location: LCCOMB_X65_Y48_N12
\calculette|sepB|Add5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add5~3_combout\ = (\calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\ & (\IR|B\(1) $ (VCC))) # (!\calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\ & ((\IR|B\(1)) # (GND)))
-- \calculette|sepB|Add5~4\ = CARRY((\IR|B\(1)) # (!\calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \IR|B\(1),
	datad => VCC,
	combout => \calculette|sepB|Add5~3_combout\,
	cout => \calculette|sepB|Add5~4\);

-- Location: LCCOMB_X65_Y48_N14
\calculette|sepB|Add5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add5~5_combout\ = (\IR|B\(2) & ((\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\calculette|sepB|Add5~4\)) # (!\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & (\calculette|sepB|Add5~4\ & 
-- VCC)))) # (!\IR|B\(2) & ((\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\calculette|sepB|Add5~4\) # (GND))) # (!\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\calculette|sepB|Add5~4\))))
-- \calculette|sepB|Add5~6\ = CARRY((\IR|B\(2) & (\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & !\calculette|sepB|Add5~4\)) # (!\IR|B\(2) & ((\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\) # 
-- (!\calculette|sepB|Add5~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(2),
	datab => \calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datad => VCC,
	cin => \calculette|sepB|Add5~4\,
	combout => \calculette|sepB|Add5~5_combout\,
	cout => \calculette|sepB|Add5~6\);

-- Location: LCCOMB_X65_Y48_N16
\calculette|sepB|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add5~8_combout\ = \IR|B\(3) $ (\calculette|sepB|Add5~6\ $ (\calculette|sepB|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IR|B\(3),
	datad => \calculette|sepB|Add4~0_combout\,
	cin => \calculette|sepB|Add5~6\,
	combout => \calculette|sepB|Add5~8_combout\);

-- Location: LCCOMB_X65_Y48_N8
\calculette|sepB|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add5~10_combout\ = (\calculette|sepB|int_input[31]~0_combout\ & (\calculette|sepB|Add3~1_combout\ $ ((\calculette|sepB|Add3~3_combout\)))) # (!\calculette|sepB|int_input[31]~0_combout\ & (((\calculette|sepB|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add3~1_combout\,
	datab => \calculette|sepB|int_input[31]~0_combout\,
	datac => \calculette|sepB|Add3~3_combout\,
	datad => \calculette|sepB|Add5~8_combout\,
	combout => \calculette|sepB|Add5~10_combout\);

-- Location: LCCOMB_X65_Y48_N24
\calculette|sepB|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add5~2_combout\ = (\calculette|sepB|int_input[31]~0_combout\ & (\calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (\IR|B\(0) $ (\IR|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \IR|B\(0),
	datac => \IR|B\(1),
	datad => \calculette|sepB|int_input[31]~0_combout\,
	combout => \calculette|sepB|Add5~2_combout\);

-- Location: LCCOMB_X65_Y48_N18
\calculette|sepB|Add5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add5~11_combout\ = (\calculette|sepB|Add5~2_combout\) # ((\calculette|sepB|Add5~3_combout\ & ((!\IR|B\(3)) # (!\mode~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add5~3_combout\,
	datab => \calculette|sepB|Add5~2_combout\,
	datac => \mode~input_o\,
	datad => \IR|B\(3),
	combout => \calculette|sepB|Add5~11_combout\);

-- Location: LCCOMB_X65_Y48_N22
\calculette|sepB|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add3~0_combout\ = (\IR|B\(0)) # (\IR|B\(1) $ (\calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|B\(0),
	datac => \IR|B\(1),
	datad => \calculette|sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \calculette|sepB|Add3~0_combout\);

-- Location: LCCOMB_X65_Y48_N30
\calculette|sepB|Add5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add5~7_combout\ = (\calculette|sepB|int_input[31]~0_combout\ & (\calculette|sepB|Add3~0_combout\ $ (((!\calculette|sepB|Add2~0_combout\))))) # (!\calculette|sepB|int_input[31]~0_combout\ & (((\calculette|sepB|Add5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add3~0_combout\,
	datab => \calculette|sepB|int_input[31]~0_combout\,
	datac => \calculette|sepB|Add5~5_combout\,
	datad => \calculette|sepB|Add2~0_combout\,
	combout => \calculette|sepB|Add5~7_combout\);

-- Location: LCCOMB_X66_Y47_N28
\calculette|ledB1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB1|Mux6~0_combout\ = (\calculette|sepB|Add5~10_combout\ & (\calculette|sepB|Add5~11_combout\ & (!\IR|B\(0) & !\calculette|sepB|Add5~7_combout\))) # (!\calculette|sepB|Add5~10_combout\ & (!\calculette|sepB|Add5~11_combout\ & (\IR|B\(0) $ 
-- (\calculette|sepB|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add5~10_combout\,
	datab => \calculette|sepB|Add5~11_combout\,
	datac => \IR|B\(0),
	datad => \calculette|sepB|Add5~7_combout\,
	combout => \calculette|ledB1|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y47_N6
\HEX2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2~2_combout\ = (\IR|enableAffichage~q\ & (((\calculette|ledB1|Mux6~0_combout\)))) # (!\IR|enableAffichage~q\ & (\IR|old_data_4\(0) $ ((\IR|old_data_4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_4\(0),
	datab => \IR|old_data_4\(3),
	datac => \IR|enableAffichage~q\,
	datad => \calculette|ledB1|Mux6~0_combout\,
	combout => \HEX2~2_combout\);

-- Location: LCCOMB_X66_Y47_N8
\calculette|ledB1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB1|Mux5~0_combout\ = (\calculette|sepB|Add5~10_combout\ & (\calculette|sepB|Add5~11_combout\ & (!\IR|B\(0) & !\calculette|sepB|Add5~7_combout\))) # (!\calculette|sepB|Add5~10_combout\ & (\calculette|sepB|Add5~7_combout\ & 
-- (\calculette|sepB|Add5~11_combout\ $ (\IR|B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add5~10_combout\,
	datab => \calculette|sepB|Add5~11_combout\,
	datac => \IR|B\(0),
	datad => \calculette|sepB|Add5~7_combout\,
	combout => \calculette|ledB1|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y47_N14
\HEX2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2~9_combout\ = (\IR|enableAffichage~q\ & (((\calculette|ledB1|Mux5~0_combout\)))) # (!\IR|enableAffichage~q\ & (!\IR|old_data_4\(0) & ((\IR|old_data_4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_4\(0),
	datab => \IR|enableAffichage~q\,
	datac => \calculette|ledB1|Mux5~0_combout\,
	datad => \IR|old_data_4\(3),
	combout => \HEX2~9_combout\);

-- Location: LCCOMB_X66_Y47_N18
\calculette|ledB1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB1|Mux4~0_combout\ = (\calculette|sepB|Add5~11_combout\ & (!\calculette|sepB|Add5~7_combout\ & ((\calculette|sepB|Add5~10_combout\) # (!\IR|B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add5~10_combout\,
	datab => \calculette|sepB|Add5~11_combout\,
	datac => \IR|B\(0),
	datad => \calculette|sepB|Add5~7_combout\,
	combout => \calculette|ledB1|Mux4~0_combout\);

-- Location: LCCOMB_X66_Y47_N0
\HEX2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2~4_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledB1|Mux4~0_combout\))) # (!\IR|enableAffichage~q\ & (\IR|old_data_4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|old_data_4\(3),
	datac => \IR|enableAffichage~q\,
	datad => \calculette|ledB1|Mux4~0_combout\,
	combout => \HEX2~4_combout\);

-- Location: LCCOMB_X66_Y47_N30
\calculette|ledB1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB1|Mux3~0_combout\ = (\calculette|sepB|Add5~10_combout\ & (\calculette|sepB|Add5~11_combout\ & ((!\calculette|sepB|Add5~7_combout\)))) # (!\calculette|sepB|Add5~10_combout\ & ((\calculette|sepB|Add5~11_combout\ & (\IR|B\(0) & 
-- \calculette|sepB|Add5~7_combout\)) # (!\calculette|sepB|Add5~11_combout\ & (\IR|B\(0) $ (\calculette|sepB|Add5~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add5~10_combout\,
	datab => \calculette|sepB|Add5~11_combout\,
	datac => \IR|B\(0),
	datad => \calculette|sepB|Add5~7_combout\,
	combout => \calculette|ledB1|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y47_N12
\HEX2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2~5_combout\ = (\IR|enableAffichage~q\ & (((\calculette|ledB1|Mux3~0_combout\)))) # (!\IR|enableAffichage~q\ & ((\IR|old_data_4\(0)) # ((\IR|old_data_4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_4\(0),
	datab => \IR|enableAffichage~q\,
	datac => \calculette|ledB1|Mux3~0_combout\,
	datad => \IR|old_data_4\(3),
	combout => \HEX2~5_combout\);

-- Location: LCCOMB_X66_Y47_N22
\calculette|ledB1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB1|Mux2~0_combout\ = (\calculette|sepB|Add5~10_combout\ & (!\calculette|sepB|Add5~7_combout\ & (\calculette|sepB|Add5~11_combout\ $ (\IR|B\(0))))) # (!\calculette|sepB|Add5~10_combout\ & ((\IR|B\(0)) # ((!\calculette|sepB|Add5~11_combout\ & 
-- \calculette|sepB|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add5~10_combout\,
	datab => \calculette|sepB|Add5~11_combout\,
	datac => \IR|B\(0),
	datad => \calculette|sepB|Add5~7_combout\,
	combout => \calculette|ledB1|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y47_N24
\HEX2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2~6_combout\ = (\IR|enableAffichage~q\ & (((\calculette|ledB1|Mux2~0_combout\)))) # (!\IR|enableAffichage~q\ & (\IR|old_data_4\(0) $ (((\IR|old_data_4\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_4\(0),
	datab => \IR|enableAffichage~q\,
	datac => \calculette|ledB1|Mux2~0_combout\,
	datad => \IR|old_data_4\(3),
	combout => \HEX2~6_combout\);

-- Location: LCCOMB_X66_Y47_N26
\calculette|ledB1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB1|Mux1~0_combout\ = (\IR|B\(0) & (!\calculette|sepB|Add5~10_combout\ & ((\calculette|sepB|Add5~11_combout\) # (!\calculette|sepB|Add5~7_combout\)))) # (!\IR|B\(0) & (((\calculette|sepB|Add5~11_combout\ & 
-- !\calculette|sepB|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add5~10_combout\,
	datab => \calculette|sepB|Add5~11_combout\,
	datac => \IR|B\(0),
	datad => \calculette|sepB|Add5~7_combout\,
	combout => \calculette|ledB1|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y47_N20
\HEX2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2~7_combout\ = (\IR|enableAffichage~q\ & (((\calculette|ledB1|Mux1~0_combout\)))) # (!\IR|enableAffichage~q\ & (\IR|old_data_4\(0) $ (((\IR|old_data_4\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_4\(0),
	datab => \IR|enableAffichage~q\,
	datac => \calculette|ledB1|Mux1~0_combout\,
	datad => \IR|old_data_4\(3),
	combout => \HEX2~7_combout\);

-- Location: LCCOMB_X66_Y47_N10
\calculette|ledB1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB1|Mux0~0_combout\ = (\calculette|sepB|Add5~10_combout\) # ((\calculette|sepB|Add5~11_combout\ & ((!\calculette|sepB|Add5~7_combout\) # (!\IR|B\(0)))) # (!\calculette|sepB|Add5~11_combout\ & ((\calculette|sepB|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add5~10_combout\,
	datab => \calculette|sepB|Add5~11_combout\,
	datac => \IR|B\(0),
	datad => \calculette|sepB|Add5~7_combout\,
	combout => \calculette|ledB1|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y47_N4
\HEX2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2~8_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledB1|Mux0~0_combout\))) # (!\IR|enableAffichage~q\ & (\IR|old_data_4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|old_data_4\(3),
	datac => \IR|enableAffichage~q\,
	datad => \calculette|ledB1|Mux0~0_combout\,
	combout => \HEX2~8_combout\);

-- Location: LCCOMB_X64_Y44_N22
\IR|hex02|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex02|Mux6~0_combout\ = (\IR|old_data_3\(3) & (!\IR|old_data_3\(2) & (\IR|old_data_3\(1) & !\IR|old_data_3\(0)))) # (!\IR|old_data_3\(3) & (!\IR|old_data_3\(1) & (\IR|old_data_3\(2) $ (\IR|old_data_3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_3\(2),
	datab => \IR|old_data_3\(3),
	datac => \IR|old_data_3\(1),
	datad => \IR|old_data_3\(0),
	combout => \IR|hex02|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y48_N10
\calculette|sepB|Div0|auto_generated|divider|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|op_1~12_combout\ = (\IR|B\(3) & (\calculette|sepB|Div0|auto_generated|divider|op_1~8_combout\ & \mode~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|B\(3),
	datac => \calculette|sepB|Div0|auto_generated|divider|op_1~8_combout\,
	datad => \mode~input_o\,
	combout => \calculette|sepB|Div0|auto_generated|divider|op_1~12_combout\);

-- Location: LCCOMB_X64_Y48_N20
\calculette|sepB|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add0~10_combout\ = (\IR|B\(3) & ((\mode~input_o\ & (!\calculette|sepB|Div0|auto_generated|divider|op_1~4_combout\)) # (!\mode~input_o\ & ((!\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # 
-- (!\IR|B\(3) & (((!\calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Div0|auto_generated|divider|op_1~4_combout\,
	datab => \calculette|sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \IR|B\(3),
	datad => \mode~input_o\,
	combout => \calculette|sepB|Add0~10_combout\);

-- Location: LCCOMB_X64_Y44_N8
\calculette|sepB|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add0~2_combout\ = (\calculette|sepB|int_input[31]~0_combout\ & (\calculette|sepB|Add0~10_combout\ $ (VCC))) # (!\calculette|sepB|int_input[31]~0_combout\ & (\calculette|sepB|Add0~10_combout\ & VCC))
-- \calculette|sepB|Add0~3\ = CARRY((\calculette|sepB|int_input[31]~0_combout\ & \calculette|sepB|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|int_input[31]~0_combout\,
	datab => \calculette|sepB|Add0~10_combout\,
	datad => VCC,
	combout => \calculette|sepB|Add0~2_combout\,
	cout => \calculette|sepB|Add0~3\);

-- Location: LCCOMB_X64_Y44_N10
\calculette|sepB|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add0~4_combout\ = (\calculette|sepB|Add0~3\ & (\calculette|sepB|int_input[31]~0_combout\ $ ((!\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\)))) # (!\calculette|sepB|Add0~3\ & 
-- ((\calculette|sepB|int_input[31]~0_combout\ $ (\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\)) # (GND)))
-- \calculette|sepB|Add0~5\ = CARRY((\calculette|sepB|int_input[31]~0_combout\ $ (!\calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\)) # (!\calculette|sepB|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|int_input[31]~0_combout\,
	datab => \calculette|sepB|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datad => VCC,
	cin => \calculette|sepB|Add0~3\,
	combout => \calculette|sepB|Add0~4_combout\,
	cout => \calculette|sepB|Add0~5\);

-- Location: LCCOMB_X64_Y44_N12
\calculette|sepB|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add0~6_combout\ = (\calculette|sepB|Add0~5\ & ((\calculette|sepB|int_input[31]~0_combout\ $ (\calculette|sepB|Div0|auto_generated|divider|op_1~12_combout\)))) # (!\calculette|sepB|Add0~5\ & (\calculette|sepB|int_input[31]~0_combout\ $ 
-- (\calculette|sepB|Div0|auto_generated|divider|op_1~12_combout\ $ (VCC))))
-- \calculette|sepB|Add0~7\ = CARRY((!\calculette|sepB|Add0~5\ & (\calculette|sepB|int_input[31]~0_combout\ $ (\calculette|sepB|Div0|auto_generated|divider|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|int_input[31]~0_combout\,
	datab => \calculette|sepB|Div0|auto_generated|divider|op_1~12_combout\,
	datad => VCC,
	cin => \calculette|sepB|Add0~5\,
	combout => \calculette|sepB|Add0~6_combout\,
	cout => \calculette|sepB|Add0~7\);

-- Location: LCCOMB_X64_Y48_N28
\calculette|sepB|Div0|auto_generated|divider|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|op_1~10_combout\ = !\calculette|sepB|Div0|auto_generated|divider|op_1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \calculette|sepB|Div0|auto_generated|divider|op_1~9\,
	combout => \calculette|sepB|Div0|auto_generated|divider|op_1~10_combout\);

-- Location: LCCOMB_X63_Y48_N16
\calculette|sepB|Div0|auto_generated|divider|op_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Div0|auto_generated|divider|op_1~13_combout\ = (\IR|B\(3) & (\mode~input_o\ & \calculette|sepB|Div0|auto_generated|divider|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(3),
	datac => \mode~input_o\,
	datad => \calculette|sepB|Div0|auto_generated|divider|op_1~10_combout\,
	combout => \calculette|sepB|Div0|auto_generated|divider|op_1~13_combout\);

-- Location: LCCOMB_X64_Y44_N14
\calculette|sepB|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepB|Add0~8_combout\ = \calculette|sepB|int_input[31]~0_combout\ $ (\calculette|sepB|Div0|auto_generated|divider|op_1~13_combout\ $ (\calculette|sepB|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|int_input[31]~0_combout\,
	datab => \calculette|sepB|Div0|auto_generated|divider|op_1~13_combout\,
	cin => \calculette|sepB|Add0~7\,
	combout => \calculette|sepB|Add0~8_combout\);

-- Location: LCCOMB_X65_Y44_N6
\calculette|ledB0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB0|Mux6~0_combout\ = (\calculette|sepB|Add0~4_combout\ & (!\calculette|sepB|Add0~6_combout\ & (\calculette|sepB|Add0~8_combout\ & !\calculette|sepB|Add0~2_combout\))) # (!\calculette|sepB|Add0~4_combout\ & (!\calculette|sepB|Add0~8_combout\ 
-- & (\calculette|sepB|Add0~6_combout\ $ (\calculette|sepB|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add0~6_combout\,
	datab => \calculette|sepB|Add0~4_combout\,
	datac => \calculette|sepB|Add0~8_combout\,
	datad => \calculette|sepB|Add0~2_combout\,
	combout => \calculette|ledB0|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y44_N28
\HEX3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3~0_combout\ = (\IR|enableAffichage~q\ & (((\calculette|sepB|int_input[31]~0_combout\) # (\calculette|ledB0|Mux6~0_combout\)))) # (!\IR|enableAffichage~q\ & (\IR|hex02|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|hex02|Mux6~0_combout\,
	datab => \IR|enableAffichage~q\,
	datac => \calculette|sepB|int_input[31]~0_combout\,
	datad => \calculette|ledB0|Mux6~0_combout\,
	combout => \HEX3~0_combout\);

-- Location: LCCOMB_X65_Y44_N12
\calculette|ledB0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB0|Mux5~0_combout\ = (\calculette|sepB|Add0~6_combout\ & (!\calculette|sepB|Add0~8_combout\ & (\calculette|sepB|Add0~4_combout\ $ (\calculette|sepB|Add0~2_combout\)))) # (!\calculette|sepB|Add0~6_combout\ & (\calculette|sepB|Add0~4_combout\ 
-- & (\calculette|sepB|Add0~8_combout\ & !\calculette|sepB|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add0~6_combout\,
	datab => \calculette|sepB|Add0~4_combout\,
	datac => \calculette|sepB|Add0~8_combout\,
	datad => \calculette|sepB|Add0~2_combout\,
	combout => \calculette|ledB0|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y44_N26
\IR|hex02|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex02|Mux5~0_combout\ = (\IR|old_data_3\(2) & (!\IR|old_data_3\(3) & (\IR|old_data_3\(1) $ (\IR|old_data_3\(0))))) # (!\IR|old_data_3\(2) & (\IR|old_data_3\(3) & (\IR|old_data_3\(1) & !\IR|old_data_3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_3\(2),
	datab => \IR|old_data_3\(3),
	datac => \IR|old_data_3\(1),
	datad => \IR|old_data_3\(0),
	combout => \IR|hex02|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y44_N18
\HEX3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3~1_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledB0|Mux5~0_combout\) # ((\calculette|sepB|int_input[31]~0_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|hex02|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledB0|Mux5~0_combout\,
	datab => \IR|enableAffichage~q\,
	datac => \IR|hex02|Mux5~0_combout\,
	datad => \calculette|sepB|int_input[31]~0_combout\,
	combout => \HEX3~1_combout\);

-- Location: LCCOMB_X65_Y44_N4
\calculette|ledB0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB0|Mux4~0_combout\ = (!\calculette|sepB|Add0~6_combout\ & (\calculette|sepB|Add0~4_combout\ & ((\calculette|sepB|Add0~8_combout\) # (!\calculette|sepB|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add0~6_combout\,
	datab => \calculette|sepB|Add0~4_combout\,
	datac => \calculette|sepB|Add0~8_combout\,
	datad => \calculette|sepB|Add0~2_combout\,
	combout => \calculette|ledB0|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y44_N20
\IR|hex02|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex02|Mux4~0_combout\ = (!\IR|old_data_3\(2) & (\IR|old_data_3\(1) & ((\IR|old_data_3\(3)) # (!\IR|old_data_3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_3\(2),
	datab => \IR|old_data_3\(3),
	datac => \IR|old_data_3\(1),
	datad => \IR|old_data_3\(0),
	combout => \IR|hex02|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y44_N30
\HEX3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3~2_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledB0|Mux4~0_combout\) # ((\calculette|sepB|int_input[31]~0_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|hex02|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledB0|Mux4~0_combout\,
	datab => \IR|enableAffichage~q\,
	datac => \calculette|sepB|int_input[31]~0_combout\,
	datad => \IR|hex02|Mux4~0_combout\,
	combout => \HEX3~2_combout\);

-- Location: LCCOMB_X65_Y44_N30
\calculette|ledB0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB0|Mux3~0_combout\ = (\calculette|sepB|Add0~6_combout\ & (!\calculette|sepB|Add0~8_combout\ & (\calculette|sepB|Add0~4_combout\ $ (!\calculette|sepB|Add0~2_combout\)))) # (!\calculette|sepB|Add0~6_combout\ & 
-- ((\calculette|sepB|Add0~4_combout\ & (\calculette|sepB|Add0~8_combout\)) # (!\calculette|sepB|Add0~4_combout\ & (!\calculette|sepB|Add0~8_combout\ & \calculette|sepB|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add0~6_combout\,
	datab => \calculette|sepB|Add0~4_combout\,
	datac => \calculette|sepB|Add0~8_combout\,
	datad => \calculette|sepB|Add0~2_combout\,
	combout => \calculette|ledB0|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y44_N24
\IR|hex02|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex02|Mux3~0_combout\ = (\IR|old_data_3\(2) & (!\IR|old_data_3\(3) & (\IR|old_data_3\(1) $ (!\IR|old_data_3\(0))))) # (!\IR|old_data_3\(2) & ((\IR|old_data_3\(3) & (\IR|old_data_3\(1))) # (!\IR|old_data_3\(3) & (!\IR|old_data_3\(1) & 
-- \IR|old_data_3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_3\(2),
	datab => \IR|old_data_3\(3),
	datac => \IR|old_data_3\(1),
	datad => \IR|old_data_3\(0),
	combout => \IR|hex02|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y44_N20
\HEX3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3~3_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledB0|Mux3~0_combout\) # ((\calculette|sepB|int_input[31]~0_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|hex02|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledB0|Mux3~0_combout\,
	datab => \IR|enableAffichage~q\,
	datac => \IR|hex02|Mux3~0_combout\,
	datad => \calculette|sepB|int_input[31]~0_combout\,
	combout => \HEX3~3_combout\);

-- Location: LCCOMB_X64_Y44_N2
\IR|hex02|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex02|Mux2~0_combout\ = (\IR|old_data_3\(2) & (!\IR|old_data_3\(3) & ((\IR|old_data_3\(0)) # (!\IR|old_data_3\(1))))) # (!\IR|old_data_3\(2) & (\IR|old_data_3\(0) $ (((\IR|old_data_3\(3) & \IR|old_data_3\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_3\(2),
	datab => \IR|old_data_3\(3),
	datac => \IR|old_data_3\(1),
	datad => \IR|old_data_3\(0),
	combout => \IR|hex02|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y44_N22
\calculette|ledB0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB0|Mux2~0_combout\ = (\calculette|sepB|Add0~6_combout\ & (!\calculette|sepB|Add0~8_combout\ & ((\calculette|sepB|Add0~2_combout\) # (!\calculette|sepB|Add0~4_combout\)))) # (!\calculette|sepB|Add0~6_combout\ & 
-- (\calculette|sepB|Add0~2_combout\ $ (((\calculette|sepB|Add0~4_combout\ & \calculette|sepB|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add0~6_combout\,
	datab => \calculette|sepB|Add0~4_combout\,
	datac => \calculette|sepB|Add0~8_combout\,
	datad => \calculette|sepB|Add0~2_combout\,
	combout => \calculette|ledB0|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y44_N28
\HEX3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3~4_combout\ = (\IR|enableAffichage~q\ & (((\calculette|ledB0|Mux2~0_combout\) # (\calculette|sepB|int_input[31]~0_combout\)))) # (!\IR|enableAffichage~q\ & (\IR|hex02|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|hex02|Mux2~0_combout\,
	datab => \IR|enableAffichage~q\,
	datac => \calculette|ledB0|Mux2~0_combout\,
	datad => \calculette|sepB|int_input[31]~0_combout\,
	combout => \HEX3~4_combout\);

-- Location: LCCOMB_X64_Y44_N0
\IR|hex02|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex02|Mux1~0_combout\ = (\IR|old_data_3\(0) & (!\IR|old_data_3\(3) & ((\IR|old_data_3\(1)) # (!\IR|old_data_3\(2))))) # (!\IR|old_data_3\(0) & (!\IR|old_data_3\(2) & ((\IR|old_data_3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_3\(2),
	datab => \IR|old_data_3\(3),
	datac => \IR|old_data_3\(1),
	datad => \IR|old_data_3\(0),
	combout => \IR|hex02|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y44_N26
\calculette|ledB0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB0|Mux1~0_combout\ = (\calculette|sepB|Add0~2_combout\ & (!\calculette|sepB|Add0~8_combout\ & ((\calculette|sepB|Add0~4_combout\) # (!\calculette|sepB|Add0~6_combout\)))) # (!\calculette|sepB|Add0~2_combout\ & 
-- (!\calculette|sepB|Add0~6_combout\ & (\calculette|sepB|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add0~6_combout\,
	datab => \calculette|sepB|Add0~4_combout\,
	datac => \calculette|sepB|Add0~8_combout\,
	datad => \calculette|sepB|Add0~2_combout\,
	combout => \calculette|ledB0|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y44_N8
\HEX3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3~5_combout\ = (\IR|enableAffichage~q\ & (((\calculette|ledB0|Mux1~0_combout\) # (\calculette|sepB|int_input[31]~0_combout\)))) # (!\IR|enableAffichage~q\ & (\IR|hex02|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|hex02|Mux1~0_combout\,
	datab => \IR|enableAffichage~q\,
	datac => \calculette|ledB0|Mux1~0_combout\,
	datad => \calculette|sepB|int_input[31]~0_combout\,
	combout => \HEX3~5_combout\);

-- Location: LCCOMB_X65_Y44_N10
\calculette|ledB0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledB0|Mux0~0_combout\ = (\calculette|sepB|Add0~8_combout\) # ((\calculette|sepB|Add0~6_combout\ & ((!\calculette|sepB|Add0~2_combout\) # (!\calculette|sepB|Add0~4_combout\))) # (!\calculette|sepB|Add0~6_combout\ & 
-- (\calculette|sepB|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepB|Add0~6_combout\,
	datab => \calculette|sepB|Add0~4_combout\,
	datac => \calculette|sepB|Add0~8_combout\,
	datad => \calculette|sepB|Add0~2_combout\,
	combout => \calculette|ledB0|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y44_N6
\IR|hex02|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex02|Mux0~0_combout\ = (\IR|old_data_3\(3)) # ((\IR|old_data_3\(2) & ((!\IR|old_data_3\(0)) # (!\IR|old_data_3\(1)))) # (!\IR|old_data_3\(2) & (\IR|old_data_3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_3\(2),
	datab => \IR|old_data_3\(3),
	datac => \IR|old_data_3\(1),
	datad => \IR|old_data_3\(0),
	combout => \IR|hex02|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y44_N16
\HEX3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3~6_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledB0|Mux0~0_combout\) # ((\calculette|sepB|int_input[31]~0_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|hex02|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledB0|Mux0~0_combout\,
	datab => \IR|enableAffichage~q\,
	datac => \IR|hex02|Mux0~0_combout\,
	datad => \calculette|sepB|int_input[31]~0_combout\,
	combout => \HEX3~6_combout\);

-- Location: LCCOMB_X59_Y47_N8
\IR|hex01|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex01|Mux6~0_combout\ = (\IR|old_data_2\(1) & (!\IR|old_data_2\(2) & (!\IR|old_data_2\(0) & \IR|old_data_2\(3)))) # (!\IR|old_data_2\(1) & (!\IR|old_data_2\(3) & (\IR|old_data_2\(2) $ (\IR|old_data_2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(2),
	datab => \IR|old_data_2\(0),
	datac => \IR|old_data_2\(1),
	datad => \IR|old_data_2\(3),
	combout => \IR|hex01|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y46_N4
\calculette|sepA|int_input[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|int_input[31]~0_combout\ = (\IR|A\(3) & \mode~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datac => \mode~input_o\,
	combout => \calculette|sepA|int_input[31]~0_combout\);

-- Location: LCCOMB_X61_Y46_N10
\calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ = (\IR|A\(3) & (!\IR|A\(1) & (\mode~input_o\ & !\IR|A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datab => \IR|A\(1),
	datac => \mode~input_o\,
	datad => \IR|A\(0),
	combout => \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\);

-- Location: LCCOMB_X61_Y46_N12
\calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ = (\calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ & (\IR|A\(3) $ (((\IR|A\(2)))))) # 
-- (!\calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ & (\IR|A\(3) & (!\mode~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datab => \mode~input_o\,
	datac => \IR|A\(2),
	datad => \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\,
	combout => \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\);

-- Location: LCCOMB_X60_Y46_N16
\calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ = \IR|A\(2) $ (((\calculette|sepA|int_input[31]~0_combout\ & ((\IR|A\(0)) # (\IR|A\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(2),
	datab => \IR|A\(0),
	datac => \IR|A\(1),
	datad => \calculette|sepA|int_input[31]~0_combout\,
	combout => \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\);

-- Location: LCCOMB_X61_Y46_N0
\calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ = \IR|A\(1) $ (((\IR|A\(3) & (\mode~input_o\ & \IR|A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datab => \IR|A\(1),
	datac => \mode~input_o\,
	datad => \IR|A\(0),
	combout => \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\);

-- Location: LCCOMB_X61_Y46_N16
\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY(\calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\,
	datad => VCC,
	cout => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X61_Y46_N18
\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ & 
-- !\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\,
	datad => VCC,
	cin => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X61_Y46_N20
\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((\calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ & 
-- !\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\,
	datad => VCC,
	cin => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X61_Y46_N22
\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y46_N24
\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X62_Y46_N20
\calculette|sepA|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|op_1~4_combout\ = \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (VCC)
-- \calculette|sepA|Div0|auto_generated|divider|op_1~5\ = CARRY(\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	combout => \calculette|sepA|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \calculette|sepA|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X61_Y46_N30
\calculette|sepA|Div0|auto_generated|divider|quotient[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ = (\IR|A\(3) & ((\mode~input_o\ & (\calculette|sepA|Div0|auto_generated|divider|op_1~4_combout\)) # (!\mode~input_o\ & 
-- ((!\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\IR|A\(3) & (((!\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datab => \mode~input_o\,
	datac => \calculette|sepA|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\);

-- Location: LCCOMB_X62_Y46_N22
\calculette|sepA|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|op_1~6_combout\ = !\calculette|sepA|Div0|auto_generated|divider|op_1~5\
-- \calculette|sepA|Div0|auto_generated|divider|op_1~7\ = CARRY(!\calculette|sepA|Div0|auto_generated|divider|op_1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \calculette|sepA|Div0|auto_generated|divider|op_1~5\,
	combout => \calculette|sepA|Div0|auto_generated|divider|op_1~6_combout\,
	cout => \calculette|sepA|Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X60_Y46_N30
\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ = (\mode~input_o\ & (\IR|A\(3) & \calculette|sepA|Div0|auto_generated|divider|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \IR|A\(3),
	datad => \calculette|sepA|Div0|auto_generated|divider|op_1~6_combout\,
	combout => \calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\);

-- Location: LCCOMB_X60_Y46_N2
\calculette|sepA|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add2~0_combout\ = \IR|A\(2) $ (\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ $ (((!\calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\) # (!\IR|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(2),
	datab => \IR|A\(1),
	datac => \calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datad => \calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\,
	combout => \calculette|sepA|Add2~0_combout\);

-- Location: LCCOMB_X60_Y46_N4
\calculette|sepA|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add3~0_combout\ = (\IR|A\(0)) # (\calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (\IR|A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \IR|A\(0),
	datac => \IR|A\(1),
	combout => \calculette|sepA|Add3~0_combout\);

-- Location: LCCOMB_X60_Y46_N10
\calculette|sepA|Add5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add5~5_combout\ = (\calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ & (\IR|A\(1) $ (VCC))) # (!\calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ & ((\IR|A\(1)) # (GND)))
-- \calculette|sepA|Add5~6\ = CARRY((\IR|A\(1)) # (!\calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \IR|A\(1),
	datad => VCC,
	combout => \calculette|sepA|Add5~5_combout\,
	cout => \calculette|sepA|Add5~6\);

-- Location: LCCOMB_X60_Y46_N12
\calculette|sepA|Add5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add5~7_combout\ = (\IR|A\(2) & ((\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\calculette|sepA|Add5~6\)) # (!\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & (\calculette|sepA|Add5~6\ & 
-- VCC)))) # (!\IR|A\(2) & ((\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\calculette|sepA|Add5~6\) # (GND))) # (!\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\calculette|sepA|Add5~6\))))
-- \calculette|sepA|Add5~8\ = CARRY((\IR|A\(2) & (\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & !\calculette|sepA|Add5~6\)) # (!\IR|A\(2) & ((\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\) # 
-- (!\calculette|sepA|Add5~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(2),
	datab => \calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datad => VCC,
	cin => \calculette|sepA|Add5~6\,
	combout => \calculette|sepA|Add5~7_combout\,
	cout => \calculette|sepA|Add5~8\);

-- Location: LCCOMB_X60_Y46_N24
\calculette|sepA|Add5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add5~9_combout\ = (\calculette|sepA|int_input[31]~0_combout\ & (\calculette|sepA|Add2~0_combout\ $ ((!\calculette|sepA|Add3~0_combout\)))) # (!\calculette|sepA|int_input[31]~0_combout\ & (((\calculette|sepA|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|int_input[31]~0_combout\,
	datab => \calculette|sepA|Add2~0_combout\,
	datac => \calculette|sepA|Add3~0_combout\,
	datad => \calculette|sepA|Add5~7_combout\,
	combout => \calculette|sepA|Add5~9_combout\);

-- Location: LCCOMB_X62_Y46_N24
\calculette|sepA|Div0|auto_generated|divider|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|op_1~8_combout\ = \calculette|sepA|Div0|auto_generated|divider|op_1~7\ $ (GND)
-- \calculette|sepA|Div0|auto_generated|divider|op_1~9\ = CARRY(!\calculette|sepA|Div0|auto_generated|divider|op_1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \calculette|sepA|Div0|auto_generated|divider|op_1~7\,
	combout => \calculette|sepA|Div0|auto_generated|divider|op_1~8_combout\,
	cout => \calculette|sepA|Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X61_Y46_N26
\calculette|sepA|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add4~0_combout\ = (\calculette|sepA|int_input[31]~0_combout\ & (\calculette|sepA|Div0|auto_generated|divider|op_1~4_combout\ $ (((\calculette|sepA|Div0|auto_generated|divider|op_1~8_combout\))))) # 
-- (!\calculette|sepA|int_input[31]~0_combout\ & (((!\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Div0|auto_generated|divider|op_1~4_combout\,
	datab => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \calculette|sepA|int_input[31]~0_combout\,
	datad => \calculette|sepA|Div0|auto_generated|divider|op_1~8_combout\,
	combout => \calculette|sepA|Add4~0_combout\);

-- Location: LCCOMB_X60_Y46_N14
\calculette|sepA|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add5~10_combout\ = \IR|A\(3) $ (\calculette|sepA|Add5~8\ $ (\calculette|sepA|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datad => \calculette|sepA|Add4~0_combout\,
	cin => \calculette|sepA|Add5~8\,
	combout => \calculette|sepA|Add5~10_combout\);

-- Location: LCCOMB_X60_Y46_N22
\calculette|sepA|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add3~2_combout\ = (\IR|A\(2) & (!\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((!\calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\) # (!\IR|A\(1))))) # (!\IR|A\(2) & 
-- (((!\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\) # (!\calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\)) # (!\IR|A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(2),
	datab => \IR|A\(1),
	datac => \calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datad => \calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\,
	combout => \calculette|sepA|Add3~2_combout\);

-- Location: LCCOMB_X60_Y46_N28
\calculette|sepA|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add3~1_combout\ = (!\IR|A\(0) & (\calculette|sepA|Add2~0_combout\ & (\calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (!\IR|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \IR|A\(0),
	datac => \IR|A\(1),
	datad => \calculette|sepA|Add2~0_combout\,
	combout => \calculette|sepA|Add3~1_combout\);

-- Location: LCCOMB_X60_Y46_N0
\calculette|sepA|Add3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add3~3_combout\ = \calculette|sepA|Add3~2_combout\ $ (\calculette|sepA|Add3~1_combout\ $ (\IR|A\(3) $ (\calculette|sepA|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add3~2_combout\,
	datab => \calculette|sepA|Add3~1_combout\,
	datac => \IR|A\(3),
	datad => \calculette|sepA|Add4~0_combout\,
	combout => \calculette|sepA|Add3~3_combout\);

-- Location: LCCOMB_X60_Y46_N8
\calculette|sepA|Add5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add5~13_combout\ = (\mode~input_o\ & ((\IR|A\(3) & ((\calculette|sepA|Add3~3_combout\))) # (!\IR|A\(3) & (\calculette|sepA|Add5~10_combout\)))) # (!\mode~input_o\ & (\calculette|sepA|Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \calculette|sepA|Add5~10_combout\,
	datac => \IR|A\(3),
	datad => \calculette|sepA|Add3~3_combout\,
	combout => \calculette|sepA|Add5~13_combout\);

-- Location: LCCOMB_X60_Y46_N26
\calculette|sepA|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add5~4_combout\ = (\calculette|sepA|int_input[31]~0_combout\ & (\calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (\IR|A\(0) $ (\IR|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \IR|A\(0),
	datac => \IR|A\(1),
	datad => \calculette|sepA|int_input[31]~0_combout\,
	combout => \calculette|sepA|Add5~4_combout\);

-- Location: LCCOMB_X60_Y46_N20
\calculette|sepA|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add5~12_combout\ = (\calculette|sepA|Add5~4_combout\) # ((\calculette|sepA|Add5~5_combout\ & ((!\mode~input_o\) # (!\IR|A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add5~4_combout\,
	datab => \calculette|sepA|Add5~5_combout\,
	datac => \IR|A\(3),
	datad => \mode~input_o\,
	combout => \calculette|sepA|Add5~12_combout\);

-- Location: LCCOMB_X60_Y46_N18
\calculette|ledA1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA1|Mux6~0_combout\ = (\calculette|sepA|Add5~13_combout\ & (!\calculette|sepA|Add5~9_combout\ & (!\IR|A\(0) & \calculette|sepA|Add5~12_combout\))) # (!\calculette|sepA|Add5~13_combout\ & (!\calculette|sepA|Add5~12_combout\ & 
-- (\calculette|sepA|Add5~9_combout\ $ (\IR|A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add5~9_combout\,
	datab => \IR|A\(0),
	datac => \calculette|sepA|Add5~13_combout\,
	datad => \calculette|sepA|Add5~12_combout\,
	combout => \calculette|ledA1|Mux6~0_combout\);

-- Location: LCCOMB_X58_Y47_N10
\HEX4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4~0_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledA1|Mux6~0_combout\))) # (!\IR|enableAffichage~q\ & (\IR|hex01|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|enableAffichage~q\,
	datac => \IR|hex01|Mux6~0_combout\,
	datad => \calculette|ledA1|Mux6~0_combout\,
	combout => \HEX4~0_combout\);

-- Location: LCCOMB_X59_Y47_N2
\IR|hex01|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex01|Mux5~0_combout\ = (\IR|old_data_2\(2) & (!\IR|old_data_2\(3) & (\IR|old_data_2\(0) $ (\IR|old_data_2\(1))))) # (!\IR|old_data_2\(2) & (!\IR|old_data_2\(0) & (\IR|old_data_2\(1) & \IR|old_data_2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(2),
	datab => \IR|old_data_2\(0),
	datac => \IR|old_data_2\(1),
	datad => \IR|old_data_2\(3),
	combout => \IR|hex01|Mux5~0_combout\);

-- Location: LCCOMB_X60_Y43_N8
\calculette|ledA1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA1|Mux5~0_combout\ = (\calculette|sepA|Add5~9_combout\ & (!\calculette|sepA|Add5~13_combout\ & (\IR|A\(0) $ (\calculette|sepA|Add5~12_combout\)))) # (!\calculette|sepA|Add5~9_combout\ & (\calculette|sepA|Add5~13_combout\ & (!\IR|A\(0) & 
-- \calculette|sepA|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add5~9_combout\,
	datab => \calculette|sepA|Add5~13_combout\,
	datac => \IR|A\(0),
	datad => \calculette|sepA|Add5~12_combout\,
	combout => \calculette|ledA1|Mux5~0_combout\);

-- Location: LCCOMB_X58_Y47_N4
\HEX4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4~1_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledA1|Mux5~0_combout\))) # (!\IR|enableAffichage~q\ & (\IR|hex01|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|hex01|Mux5~0_combout\,
	datac => \calculette|ledA1|Mux5~0_combout\,
	datad => \IR|enableAffichage~q\,
	combout => \HEX4~1_combout\);

-- Location: LCCOMB_X60_Y43_N26
\calculette|ledA1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA1|Mux4~0_combout\ = (!\calculette|sepA|Add5~9_combout\ & (\calculette|sepA|Add5~12_combout\ & ((\calculette|sepA|Add5~13_combout\) # (!\IR|A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add5~9_combout\,
	datab => \calculette|sepA|Add5~13_combout\,
	datac => \IR|A\(0),
	datad => \calculette|sepA|Add5~12_combout\,
	combout => \calculette|ledA1|Mux4~0_combout\);

-- Location: LCCOMB_X60_Y43_N24
\IR|hex01|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex01|Mux4~0_combout\ = (!\IR|old_data_2\(2) & (\IR|old_data_2\(1) & ((\IR|old_data_2\(3)) # (!\IR|old_data_2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(3),
	datab => \IR|old_data_2\(2),
	datac => \IR|old_data_2\(1),
	datad => \IR|old_data_2\(0),
	combout => \IR|hex01|Mux4~0_combout\);

-- Location: LCCOMB_X60_Y43_N18
\HEX4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4~2_combout\ = (\IR|enableAffichage~q\ & (\calculette|ledA1|Mux4~0_combout\)) # (!\IR|enableAffichage~q\ & ((\IR|hex01|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|enableAffichage~q\,
	datac => \calculette|ledA1|Mux4~0_combout\,
	datad => \IR|hex01|Mux4~0_combout\,
	combout => \HEX4~2_combout\);

-- Location: LCCOMB_X60_Y43_N14
\IR|hex01|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex01|Mux3~0_combout\ = (\IR|old_data_2\(3) & (!\IR|old_data_2\(2) & (\IR|old_data_2\(1)))) # (!\IR|old_data_2\(3) & ((\IR|old_data_2\(2) & (\IR|old_data_2\(1) $ (!\IR|old_data_2\(0)))) # (!\IR|old_data_2\(2) & (!\IR|old_data_2\(1) & 
-- \IR|old_data_2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(3),
	datab => \IR|old_data_2\(2),
	datac => \IR|old_data_2\(1),
	datad => \IR|old_data_2\(0),
	combout => \IR|hex01|Mux3~0_combout\);

-- Location: LCCOMB_X60_Y43_N28
\calculette|ledA1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA1|Mux3~0_combout\ = (\calculette|sepA|Add5~9_combout\ & (!\calculette|sepA|Add5~13_combout\ & (\IR|A\(0) $ (!\calculette|sepA|Add5~12_combout\)))) # (!\calculette|sepA|Add5~9_combout\ & ((\calculette|sepA|Add5~13_combout\ & 
-- ((\calculette|sepA|Add5~12_combout\))) # (!\calculette|sepA|Add5~13_combout\ & (\IR|A\(0) & !\calculette|sepA|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add5~9_combout\,
	datab => \calculette|sepA|Add5~13_combout\,
	datac => \IR|A\(0),
	datad => \calculette|sepA|Add5~12_combout\,
	combout => \calculette|ledA1|Mux3~0_combout\);

-- Location: LCCOMB_X60_Y43_N0
\HEX4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4~3_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledA1|Mux3~0_combout\))) # (!\IR|enableAffichage~q\ & (\IR|hex01|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|enableAffichage~q\,
	datac => \IR|hex01|Mux3~0_combout\,
	datad => \calculette|ledA1|Mux3~0_combout\,
	combout => \HEX4~3_combout\);

-- Location: LCCOMB_X60_Y43_N12
\IR|hex01|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex01|Mux2~0_combout\ = (\IR|old_data_2\(3) & (!\IR|old_data_2\(2) & (\IR|old_data_2\(1) $ (\IR|old_data_2\(0))))) # (!\IR|old_data_2\(3) & ((\IR|old_data_2\(0)) # ((\IR|old_data_2\(2) & !\IR|old_data_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(3),
	datab => \IR|old_data_2\(2),
	datac => \IR|old_data_2\(1),
	datad => \IR|old_data_2\(0),
	combout => \IR|hex01|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y43_N6
\calculette|ledA1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA1|Mux2~0_combout\ = (\calculette|sepA|Add5~9_combout\ & (!\calculette|sepA|Add5~13_combout\ & ((\IR|A\(0)) # (!\calculette|sepA|Add5~12_combout\)))) # (!\calculette|sepA|Add5~9_combout\ & (\IR|A\(0) $ (((\calculette|sepA|Add5~13_combout\ & 
-- \calculette|sepA|Add5~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add5~9_combout\,
	datab => \calculette|sepA|Add5~13_combout\,
	datac => \IR|A\(0),
	datad => \calculette|sepA|Add5~12_combout\,
	combout => \calculette|ledA1|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y43_N10
\HEX4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4~4_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledA1|Mux2~0_combout\))) # (!\IR|enableAffichage~q\ & (\IR|hex01|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|enableAffichage~q\,
	datac => \IR|hex01|Mux2~0_combout\,
	datad => \calculette|ledA1|Mux2~0_combout\,
	combout => \HEX4~4_combout\);

-- Location: LCCOMB_X60_Y43_N30
\IR|hex01|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex01|Mux1~0_combout\ = (\IR|old_data_2\(0) & (!\IR|old_data_2\(3) & ((\IR|old_data_2\(1)) # (!\IR|old_data_2\(2))))) # (!\IR|old_data_2\(0) & (((!\IR|old_data_2\(2) & \IR|old_data_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(3),
	datab => \IR|old_data_2\(2),
	datac => \IR|old_data_2\(1),
	datad => \IR|old_data_2\(0),
	combout => \IR|hex01|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y43_N16
\calculette|ledA1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA1|Mux1~0_combout\ = (\IR|A\(0) & (!\calculette|sepA|Add5~13_combout\ & ((\calculette|sepA|Add5~12_combout\) # (!\calculette|sepA|Add5~9_combout\)))) # (!\IR|A\(0) & (!\calculette|sepA|Add5~9_combout\ & 
-- ((\calculette|sepA|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add5~9_combout\,
	datab => \calculette|sepA|Add5~13_combout\,
	datac => \IR|A\(0),
	datad => \calculette|sepA|Add5~12_combout\,
	combout => \calculette|ledA1|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y43_N20
\HEX4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4~5_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledA1|Mux1~0_combout\))) # (!\IR|enableAffichage~q\ & (\IR|hex01|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|enableAffichage~q\,
	datac => \IR|hex01|Mux1~0_combout\,
	datad => \calculette|ledA1|Mux1~0_combout\,
	combout => \HEX4~5_combout\);

-- Location: LCCOMB_X60_Y43_N4
\IR|hex01|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|hex01|Mux0~0_combout\ = (\IR|old_data_2\(3)) # ((\IR|old_data_2\(2) & ((!\IR|old_data_2\(0)) # (!\IR|old_data_2\(1)))) # (!\IR|old_data_2\(2) & (\IR|old_data_2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_2\(3),
	datab => \IR|old_data_2\(2),
	datac => \IR|old_data_2\(1),
	datad => \IR|old_data_2\(0),
	combout => \IR|hex01|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y43_N2
\calculette|ledA1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA1|Mux0~0_combout\ = (\calculette|sepA|Add5~13_combout\) # ((\calculette|sepA|Add5~9_combout\ & ((!\calculette|sepA|Add5~12_combout\) # (!\IR|A\(0)))) # (!\calculette|sepA|Add5~9_combout\ & ((\calculette|sepA|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add5~9_combout\,
	datab => \calculette|sepA|Add5~13_combout\,
	datac => \IR|A\(0),
	datad => \calculette|sepA|Add5~12_combout\,
	combout => \calculette|ledA1|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y43_N22
\HEX4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4~6_combout\ = (\IR|enableAffichage~q\ & ((\calculette|ledA1|Mux0~0_combout\))) # (!\IR|enableAffichage~q\ & (\IR|hex01|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|enableAffichage~q\,
	datac => \IR|hex01|Mux0~0_combout\,
	datad => \calculette|ledA1|Mux0~0_combout\,
	combout => \HEX4~6_combout\);

-- Location: LCCOMB_X56_Y45_N18
\HEX5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5~0_combout\ = (!\IR|enableAffichage~q\ & (\IR|old_data_1\(0) $ (\IR|old_data_1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_1\(0),
	datac => \IR|old_data_1\(3),
	datad => \IR|enableAffichage~q\,
	combout => \HEX5~0_combout\);

-- Location: LCCOMB_X61_Y46_N14
\calculette|sepA|Div0|auto_generated|divider|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|op_1~12_combout\ = (\IR|A\(3) & (\mode~input_o\ & \calculette|sepA|Div0|auto_generated|divider|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datac => \mode~input_o\,
	datad => \calculette|sepA|Div0|auto_generated|divider|op_1~8_combout\,
	combout => \calculette|sepA|Div0|auto_generated|divider|op_1~12_combout\);

-- Location: LCCOMB_X61_Y46_N8
\calculette|sepA|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add0~10_combout\ = (\IR|A\(3) & ((\mode~input_o\ & (!\calculette|sepA|Div0|auto_generated|divider|op_1~4_combout\)) # (!\mode~input_o\ & ((!\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # 
-- (!\IR|A\(3) & (((!\calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datab => \mode~input_o\,
	datac => \calculette|sepA|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \calculette|sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \calculette|sepA|Add0~10_combout\);

-- Location: LCCOMB_X62_Y45_N6
\calculette|sepA|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add0~2_combout\ = (\calculette|sepA|int_input[31]~0_combout\ & (\calculette|sepA|Add0~10_combout\ $ (VCC))) # (!\calculette|sepA|int_input[31]~0_combout\ & (\calculette|sepA|Add0~10_combout\ & VCC))
-- \calculette|sepA|Add0~3\ = CARRY((\calculette|sepA|int_input[31]~0_combout\ & \calculette|sepA|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|int_input[31]~0_combout\,
	datab => \calculette|sepA|Add0~10_combout\,
	datad => VCC,
	combout => \calculette|sepA|Add0~2_combout\,
	cout => \calculette|sepA|Add0~3\);

-- Location: LCCOMB_X62_Y45_N8
\calculette|sepA|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add0~4_combout\ = (\calculette|sepA|Add0~3\ & (\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ $ ((!\calculette|sepA|int_input[31]~0_combout\)))) # (!\calculette|sepA|Add0~3\ & 
-- ((\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ $ (\calculette|sepA|int_input[31]~0_combout\)) # (GND)))
-- \calculette|sepA|Add0~5\ = CARRY((\calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ $ (!\calculette|sepA|int_input[31]~0_combout\)) # (!\calculette|sepA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \calculette|sepA|int_input[31]~0_combout\,
	datad => VCC,
	cin => \calculette|sepA|Add0~3\,
	combout => \calculette|sepA|Add0~4_combout\,
	cout => \calculette|sepA|Add0~5\);

-- Location: LCCOMB_X62_Y45_N10
\calculette|sepA|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add0~6_combout\ = (\calculette|sepA|Add0~5\ & ((\calculette|sepA|int_input[31]~0_combout\ $ (\calculette|sepA|Div0|auto_generated|divider|op_1~12_combout\)))) # (!\calculette|sepA|Add0~5\ & (\calculette|sepA|int_input[31]~0_combout\ $ 
-- (\calculette|sepA|Div0|auto_generated|divider|op_1~12_combout\ $ (VCC))))
-- \calculette|sepA|Add0~7\ = CARRY((!\calculette|sepA|Add0~5\ & (\calculette|sepA|int_input[31]~0_combout\ $ (\calculette|sepA|Div0|auto_generated|divider|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|int_input[31]~0_combout\,
	datab => \calculette|sepA|Div0|auto_generated|divider|op_1~12_combout\,
	datad => VCC,
	cin => \calculette|sepA|Add0~5\,
	combout => \calculette|sepA|Add0~6_combout\,
	cout => \calculette|sepA|Add0~7\);

-- Location: LCCOMB_X62_Y46_N26
\calculette|sepA|Div0|auto_generated|divider|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|op_1~10_combout\ = !\calculette|sepA|Div0|auto_generated|divider|op_1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \calculette|sepA|Div0|auto_generated|divider|op_1~9\,
	combout => \calculette|sepA|Div0|auto_generated|divider|op_1~10_combout\);

-- Location: LCCOMB_X61_Y46_N2
\calculette|sepA|Div0|auto_generated|divider|op_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Div0|auto_generated|divider|op_1~13_combout\ = (\IR|A\(3) & (\mode~input_o\ & \calculette|sepA|Div0|auto_generated|divider|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(3),
	datac => \mode~input_o\,
	datad => \calculette|sepA|Div0|auto_generated|divider|op_1~10_combout\,
	combout => \calculette|sepA|Div0|auto_generated|divider|op_1~13_combout\);

-- Location: LCCOMB_X62_Y45_N12
\calculette|sepA|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|sepA|Add0~8_combout\ = \calculette|sepA|int_input[31]~0_combout\ $ (\calculette|sepA|Add0~7\ $ (\calculette|sepA|Div0|auto_generated|divider|op_1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|int_input[31]~0_combout\,
	datad => \calculette|sepA|Div0|auto_generated|divider|op_1~13_combout\,
	cin => \calculette|sepA|Add0~7\,
	combout => \calculette|sepA|Add0~8_combout\);

-- Location: LCCOMB_X63_Y45_N20
\calculette|ledA0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA0|Mux6~0_combout\ = (\calculette|sepA|Add0~8_combout\ & (!\calculette|sepA|Add0~6_combout\ & (!\calculette|sepA|Add0~2_combout\ & \calculette|sepA|Add0~4_combout\))) # (!\calculette|sepA|Add0~8_combout\ & (!\calculette|sepA|Add0~4_combout\ 
-- & (\calculette|sepA|Add0~6_combout\ $ (\calculette|sepA|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add0~6_combout\,
	datab => \calculette|sepA|Add0~8_combout\,
	datac => \calculette|sepA|Add0~2_combout\,
	datad => \calculette|sepA|Add0~4_combout\,
	combout => \calculette|ledA0|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y45_N2
\HEX5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5~1_combout\ = (\HEX5~0_combout\) # ((\IR|enableAffichage~q\ & ((\calculette|sepA|int_input[31]~0_combout\) # (\calculette|ledA0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|int_input[31]~0_combout\,
	datab => \HEX5~0_combout\,
	datac => \IR|enableAffichage~q\,
	datad => \calculette|ledA0|Mux6~0_combout\,
	combout => \HEX5~1_combout\);

-- Location: LCCOMB_X63_Y45_N16
\calculette|ledA0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA0|Mux5~0_combout\ = (\calculette|sepA|Add0~6_combout\ & (!\calculette|sepA|Add0~8_combout\ & (\calculette|sepA|Add0~2_combout\ $ (\calculette|sepA|Add0~4_combout\)))) # (!\calculette|sepA|Add0~6_combout\ & (\calculette|sepA|Add0~8_combout\ 
-- & (!\calculette|sepA|Add0~2_combout\ & \calculette|sepA|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add0~6_combout\,
	datab => \calculette|sepA|Add0~8_combout\,
	datac => \calculette|sepA|Add0~2_combout\,
	datad => \calculette|sepA|Add0~4_combout\,
	combout => \calculette|ledA0|Mux5~0_combout\);

-- Location: LCCOMB_X56_Y45_N22
\HEX5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5~3_combout\ = (\IR|enableAffichage~q\ & (((\calculette|sepA|int_input[31]~0_combout\) # (\calculette|ledA0|Mux5~0_combout\)))) # (!\IR|enableAffichage~q\ & (\HEX5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5~2_combout\,
	datab => \calculette|sepA|int_input[31]~0_combout\,
	datac => \calculette|ledA0|Mux5~0_combout\,
	datad => \IR|enableAffichage~q\,
	combout => \HEX5~3_combout\);

-- Location: LCCOMB_X63_Y45_N6
\calculette|ledA0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA0|Mux4~0_combout\ = (!\calculette|sepA|Add0~6_combout\ & (\calculette|sepA|Add0~4_combout\ & ((\calculette|sepA|Add0~8_combout\) # (!\calculette|sepA|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add0~6_combout\,
	datab => \calculette|sepA|Add0~8_combout\,
	datac => \calculette|sepA|Add0~2_combout\,
	datad => \calculette|sepA|Add0~4_combout\,
	combout => \calculette|ledA0|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y45_N4
\HEX5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5~4_combout\ = (\IR|enableAffichage~q\ & ((\calculette|sepA|int_input[31]~0_combout\) # ((\calculette|ledA0|Mux4~0_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|old_data_1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|int_input[31]~0_combout\,
	datab => \IR|old_data_1\(3),
	datac => \IR|enableAffichage~q\,
	datad => \calculette|ledA0|Mux4~0_combout\,
	combout => \HEX5~4_combout\);

-- Location: LCCOMB_X63_Y45_N18
\calculette|ledA0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA0|Mux3~0_combout\ = (\calculette|sepA|Add0~6_combout\ & (!\calculette|sepA|Add0~8_combout\ & (\calculette|sepA|Add0~2_combout\ $ (!\calculette|sepA|Add0~4_combout\)))) # (!\calculette|sepA|Add0~6_combout\ & 
-- ((\calculette|sepA|Add0~8_combout\ & ((\calculette|sepA|Add0~4_combout\))) # (!\calculette|sepA|Add0~8_combout\ & (\calculette|sepA|Add0~2_combout\ & !\calculette|sepA|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add0~6_combout\,
	datab => \calculette|sepA|Add0~8_combout\,
	datac => \calculette|sepA|Add0~2_combout\,
	datad => \calculette|sepA|Add0~4_combout\,
	combout => \calculette|ledA0|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y45_N16
\HEX5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5~5_combout\ = (!\IR|enableAffichage~q\ & ((\IR|old_data_1\(0)) # (\IR|old_data_1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|old_data_1\(0),
	datac => \IR|old_data_1\(3),
	datad => \IR|enableAffichage~q\,
	combout => \HEX5~5_combout\);

-- Location: LCCOMB_X56_Y45_N30
\HEX5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5~6_combout\ = (\HEX5~5_combout\) # ((\IR|enableAffichage~q\ & ((\calculette|ledA0|Mux3~0_combout\) # (\calculette|sepA|int_input[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|ledA0|Mux3~0_combout\,
	datab => \IR|enableAffichage~q\,
	datac => \HEX5~5_combout\,
	datad => \calculette|sepA|int_input[31]~0_combout\,
	combout => \HEX5~6_combout\);

-- Location: LCCOMB_X63_Y45_N12
\calculette|ledA0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA0|Mux2~0_combout\ = (\calculette|sepA|Add0~6_combout\ & (!\calculette|sepA|Add0~8_combout\ & ((\calculette|sepA|Add0~2_combout\) # (!\calculette|sepA|Add0~4_combout\)))) # (!\calculette|sepA|Add0~6_combout\ & 
-- (\calculette|sepA|Add0~2_combout\ $ (((\calculette|sepA|Add0~8_combout\ & \calculette|sepA|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add0~6_combout\,
	datab => \calculette|sepA|Add0~8_combout\,
	datac => \calculette|sepA|Add0~2_combout\,
	datad => \calculette|sepA|Add0~4_combout\,
	combout => \calculette|ledA0|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y45_N22
\HEX5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5~7_combout\ = (\HEX5~0_combout\) # ((\IR|enableAffichage~q\ & ((\calculette|sepA|int_input[31]~0_combout\) # (\calculette|ledA0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|int_input[31]~0_combout\,
	datab => \HEX5~0_combout\,
	datac => \IR|enableAffichage~q\,
	datad => \calculette|ledA0|Mux2~0_combout\,
	combout => \HEX5~7_combout\);

-- Location: LCCOMB_X63_Y45_N0
\calculette|ledA0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA0|Mux1~0_combout\ = (\calculette|sepA|Add0~2_combout\ & (!\calculette|sepA|Add0~8_combout\ & ((\calculette|sepA|Add0~4_combout\) # (!\calculette|sepA|Add0~6_combout\)))) # (!\calculette|sepA|Add0~2_combout\ & 
-- (!\calculette|sepA|Add0~6_combout\ & ((\calculette|sepA|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add0~6_combout\,
	datab => \calculette|sepA|Add0~8_combout\,
	datac => \calculette|sepA|Add0~2_combout\,
	datad => \calculette|sepA|Add0~4_combout\,
	combout => \calculette|ledA0|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y45_N26
\HEX5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5~8_combout\ = (\HEX5~0_combout\) # ((\IR|enableAffichage~q\ & ((\calculette|sepA|int_input[31]~0_combout\) # (\calculette|ledA0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|int_input[31]~0_combout\,
	datab => \HEX5~0_combout\,
	datac => \IR|enableAffichage~q\,
	datad => \calculette|ledA0|Mux1~0_combout\,
	combout => \HEX5~8_combout\);

-- Location: LCCOMB_X63_Y45_N24
\calculette|ledA0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|ledA0|Mux0~0_combout\ = (\calculette|sepA|Add0~8_combout\) # ((\calculette|sepA|Add0~6_combout\ & ((!\calculette|sepA|Add0~4_combout\) # (!\calculette|sepA|Add0~2_combout\))) # (!\calculette|sepA|Add0~6_combout\ & 
-- ((\calculette|sepA|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|Add0~6_combout\,
	datab => \calculette|sepA|Add0~8_combout\,
	datac => \calculette|sepA|Add0~2_combout\,
	datad => \calculette|sepA|Add0~4_combout\,
	combout => \calculette|ledA0|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y45_N10
\HEX5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5~9_combout\ = (\IR|enableAffichage~q\ & ((\calculette|sepA|int_input[31]~0_combout\) # ((\calculette|ledA0|Mux0~0_combout\)))) # (!\IR|enableAffichage~q\ & (((\IR|old_data_1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepA|int_input[31]~0_combout\,
	datab => \IR|old_data_1\(3),
	datac => \IR|enableAffichage~q\,
	datad => \calculette|ledA0|Mux0~0_combout\,
	combout => \HEX5~9_combout\);

-- Location: LCCOMB_X59_Y42_N20
\calculette|CLA0|OPeACLA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|CLA0|OPeACLA[0]~0_combout\ = (\IR|B\(3)) # ((\IR|B\(2)) # ((\IR|B\(1)) # (\IR|B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|B\(3),
	datab => \IR|B\(2),
	datac => \IR|B\(1),
	datad => \IR|B\(0),
	combout => \calculette|CLA0|OPeACLA[0]~0_combout\);

-- Location: LCCOMB_X59_Y42_N18
\calculette|CLA0|OPeACLA[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|CLA0|OPeACLA[0]~1_combout\ = (\reset~input_o\ & (((\CLA~input_o\ & \calculette|CLA0|OPeACLA[0]~0_combout\)) # (!\operation~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \operation~input_o\,
	datac => \CLA~input_o\,
	datad => \calculette|CLA0|OPeACLA[0]~0_combout\,
	combout => \calculette|CLA0|OPeACLA[0]~1_combout\);

-- Location: LCCOMB_X59_Y42_N0
\calculette|CLA0|OPeACLA[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|CLA0|OPeACLA[0]~2_combout\ = (\calculette|CLA0|OPeACLA[0]~1_combout\ & (\CLA~input_o\ & (\IR|A\(0)))) # (!\calculette|CLA0|OPeACLA[0]~1_combout\ & (((\calculette|CLA0|OPeACLA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \IR|A\(0),
	datac => \calculette|CLA0|OPeACLA\(0),
	datad => \calculette|CLA0|OPeACLA[0]~1_combout\,
	combout => \calculette|CLA0|OPeACLA[0]~2_combout\);

-- Location: FF_X59_Y42_N1
\calculette|CLA0|OPeACLA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|CLA0|OPeACLA[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|CLA0|OPeACLA\(0));

-- Location: LCCOMB_X59_Y42_N14
\calculette|CLA0|OPeACLA~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|CLA0|OPeACLA~3_combout\ = (\CLA~input_o\ & \IR|A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA~input_o\,
	datad => \IR|A\(1),
	combout => \calculette|CLA0|OPeACLA~3_combout\);

-- Location: FF_X59_Y42_N15
\calculette|CLA0|OPeACLA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|CLA0|OPeACLA~3_combout\,
	ena => \calculette|CLA0|OPeACLA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|CLA0|OPeACLA\(1));

-- Location: LCCOMB_X59_Y42_N8
\calculette|CLA0|OPeACLA~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|CLA0|OPeACLA~4_combout\ = (\IR|A\(2) & \CLA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|A\(2),
	datac => \CLA~input_o\,
	combout => \calculette|CLA0|OPeACLA~4_combout\);

-- Location: FF_X59_Y42_N9
\calculette|CLA0|OPeACLA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|CLA0|OPeACLA~4_combout\,
	ena => \calculette|CLA0|OPeACLA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|CLA0|OPeACLA\(2));

-- Location: LCCOMB_X59_Y42_N22
\calculette|CLA0|OPeACLA~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|CLA0|OPeACLA~5_combout\ = (\CLA~input_o\ & \IR|A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA~input_o\,
	datad => \IR|A\(3),
	combout => \calculette|CLA0|OPeACLA~5_combout\);

-- Location: FF_X59_Y42_N23
\calculette|CLA0|OPeACLA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|CLA0|OPeACLA~5_combout\,
	ena => \calculette|CLA0|OPeACLA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|CLA0|OPeACLA\(3));

-- Location: LCCOMB_X59_Y42_N12
\calculette|CLA0|OPeBCLA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|CLA0|OPeBCLA~0_combout\ = (\IR|B\(0) & (\CLA~input_o\ & !\operation~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|B\(0),
	datac => \CLA~input_o\,
	datad => \operation~input_o\,
	combout => \calculette|CLA0|OPeBCLA~0_combout\);

-- Location: FF_X59_Y42_N13
\calculette|CLA0|OPeBCLA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|CLA0|OPeBCLA~0_combout\,
	ena => \calculette|CLA0|OPeACLA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|CLA0|OPeBCLA\(0));

-- Location: LCCOMB_X59_Y42_N30
\calculette|CLA0|OPeBCLA~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|CLA0|OPeBCLA~1_combout\ = (\CLA~input_o\ & (!\operation~input_o\ & \IR|B\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \operation~input_o\,
	datac => \IR|B\(1),
	combout => \calculette|CLA0|OPeBCLA~1_combout\);

-- Location: FF_X59_Y42_N31
\calculette|CLA0|OPeBCLA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|CLA0|OPeBCLA~1_combout\,
	ena => \calculette|CLA0|OPeACLA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|CLA0|OPeBCLA\(1));

-- Location: LCCOMB_X59_Y42_N24
\calculette|CLA0|OPeBCLA~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|CLA0|OPeBCLA~2_combout\ = (\IR|B\(2) & (\CLA~input_o\ & !\operation~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|B\(2),
	datac => \CLA~input_o\,
	datad => \operation~input_o\,
	combout => \calculette|CLA0|OPeBCLA~2_combout\);

-- Location: FF_X59_Y42_N25
\calculette|CLA0|OPeBCLA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|CLA0|OPeBCLA~2_combout\,
	ena => \calculette|CLA0|OPeACLA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|CLA0|OPeBCLA\(2));

-- Location: LCCOMB_X59_Y42_N26
\calculette|CLA0|OPeBCLA~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|CLA0|OPeBCLA~3_combout\ = (\CLA~input_o\ & (!\operation~input_o\ & \IR|B\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \operation~input_o\,
	datad => \IR|B\(3),
	combout => \calculette|CLA0|OPeBCLA~3_combout\);

-- Location: FF_X59_Y42_N27
\calculette|CLA0|OPeBCLA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|CLA0|OPeBCLA~3_combout\,
	ena => \calculette|CLA0|OPeACLA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|CLA0|OPeBCLA\(3));

-- Location: LCCOMB_X71_Y39_N28
\calculette|hdmi_out0|clk_25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|clk_25~0_combout\ = (\reset~input_o\ & !\calculette|hdmi_out0|clk_25~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \calculette|hdmi_out0|clk_25~q\,
	combout => \calculette|hdmi_out0|clk_25~0_combout\);

-- Location: LCCOMB_X77_Y39_N8
\calculette|hdmi_out0|clk_25~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|clk_25~feeder_combout\ = \calculette|hdmi_out0|clk_25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|clk_25~0_combout\,
	combout => \calculette|hdmi_out0|clk_25~feeder_combout\);

-- Location: FF_X77_Y39_N9
\calculette|hdmi_out0|clk_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|hdmi_out0|clk_25~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|clk_25~q\);

-- Location: CLKCTRL_G6
\calculette|hdmi_out0|clk_25~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \calculette|hdmi_out0|clk_25~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\);

-- Location: LCCOMB_X50_Y39_N8
\calculette|hdmi_out0|res_img|v_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[0]~10_combout\ = \calculette|hdmi_out0|res_img|v_count\(0) $ (VCC)
-- \calculette|hdmi_out0|res_img|v_count[0]~11\ = CARRY(\calculette|hdmi_out0|res_img|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(0),
	datad => VCC,
	combout => \calculette|hdmi_out0|res_img|v_count[0]~10_combout\,
	cout => \calculette|hdmi_out0|res_img|v_count[0]~11\);

-- Location: LCCOMB_X50_Y39_N10
\calculette|hdmi_out0|res_img|v_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[1]~12_combout\ = (\calculette|hdmi_out0|res_img|v_count\(1) & (!\calculette|hdmi_out0|res_img|v_count[0]~11\)) # (!\calculette|hdmi_out0|res_img|v_count\(1) & ((\calculette|hdmi_out0|res_img|v_count[0]~11\) # (GND)))
-- \calculette|hdmi_out0|res_img|v_count[1]~13\ = CARRY((!\calculette|hdmi_out0|res_img|v_count[0]~11\) # (!\calculette|hdmi_out0|res_img|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(1),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|v_count[0]~11\,
	combout => \calculette|hdmi_out0|res_img|v_count[1]~12_combout\,
	cout => \calculette|hdmi_out0|res_img|v_count[1]~13\);

-- Location: LCCOMB_X50_Y39_N12
\calculette|hdmi_out0|res_img|v_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[2]~14_combout\ = (\calculette|hdmi_out0|res_img|v_count\(2) & (\calculette|hdmi_out0|res_img|v_count[1]~13\ $ (GND))) # (!\calculette|hdmi_out0|res_img|v_count\(2) & (!\calculette|hdmi_out0|res_img|v_count[1]~13\ & 
-- VCC))
-- \calculette|hdmi_out0|res_img|v_count[2]~15\ = CARRY((\calculette|hdmi_out0|res_img|v_count\(2) & !\calculette|hdmi_out0|res_img|v_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(2),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|v_count[1]~13\,
	combout => \calculette|hdmi_out0|res_img|v_count[2]~14_combout\,
	cout => \calculette|hdmi_out0|res_img|v_count[2]~15\);

-- Location: LCCOMB_X57_Y39_N6
\calculette|hdmi_out0|res_img|h_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|h_count[0]~10_combout\ = \calculette|hdmi_out0|res_img|h_count\(0) $ (VCC)
-- \calculette|hdmi_out0|res_img|h_count[0]~11\ = CARRY(\calculette|hdmi_out0|res_img|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(0),
	datad => VCC,
	combout => \calculette|hdmi_out0|res_img|h_count[0]~10_combout\,
	cout => \calculette|hdmi_out0|res_img|h_count[0]~11\);

-- Location: FF_X57_Y39_N7
\calculette|hdmi_out0|res_img|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|h_count[0]~10_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|h_count\(0));

-- Location: LCCOMB_X57_Y39_N8
\calculette|hdmi_out0|res_img|h_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|h_count[1]~12_combout\ = (\calculette|hdmi_out0|res_img|h_count\(1) & (!\calculette|hdmi_out0|res_img|h_count[0]~11\)) # (!\calculette|hdmi_out0|res_img|h_count\(1) & ((\calculette|hdmi_out0|res_img|h_count[0]~11\) # (GND)))
-- \calculette|hdmi_out0|res_img|h_count[1]~13\ = CARRY((!\calculette|hdmi_out0|res_img|h_count[0]~11\) # (!\calculette|hdmi_out0|res_img|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(1),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|h_count[0]~11\,
	combout => \calculette|hdmi_out0|res_img|h_count[1]~12_combout\,
	cout => \calculette|hdmi_out0|res_img|h_count[1]~13\);

-- Location: FF_X57_Y39_N9
\calculette|hdmi_out0|res_img|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|h_count[1]~12_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|h_count\(1));

-- Location: LCCOMB_X57_Y39_N10
\calculette|hdmi_out0|res_img|h_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|h_count[2]~14_combout\ = (\calculette|hdmi_out0|res_img|h_count\(2) & (\calculette|hdmi_out0|res_img|h_count[1]~13\ $ (GND))) # (!\calculette|hdmi_out0|res_img|h_count\(2) & (!\calculette|hdmi_out0|res_img|h_count[1]~13\ & 
-- VCC))
-- \calculette|hdmi_out0|res_img|h_count[2]~15\ = CARRY((\calculette|hdmi_out0|res_img|h_count\(2) & !\calculette|hdmi_out0|res_img|h_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(2),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|h_count[1]~13\,
	combout => \calculette|hdmi_out0|res_img|h_count[2]~14_combout\,
	cout => \calculette|hdmi_out0|res_img|h_count[2]~15\);

-- Location: FF_X57_Y39_N11
\calculette|hdmi_out0|res_img|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|h_count[2]~14_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|h_count\(2));

-- Location: LCCOMB_X57_Y39_N12
\calculette|hdmi_out0|res_img|h_count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|h_count[3]~16_combout\ = (\calculette|hdmi_out0|res_img|h_count\(3) & (!\calculette|hdmi_out0|res_img|h_count[2]~15\)) # (!\calculette|hdmi_out0|res_img|h_count\(3) & ((\calculette|hdmi_out0|res_img|h_count[2]~15\) # (GND)))
-- \calculette|hdmi_out0|res_img|h_count[3]~17\ = CARRY((!\calculette|hdmi_out0|res_img|h_count[2]~15\) # (!\calculette|hdmi_out0|res_img|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(3),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|h_count[2]~15\,
	combout => \calculette|hdmi_out0|res_img|h_count[3]~16_combout\,
	cout => \calculette|hdmi_out0|res_img|h_count[3]~17\);

-- Location: FF_X57_Y39_N13
\calculette|hdmi_out0|res_img|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|h_count[3]~16_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|h_count\(3));

-- Location: LCCOMB_X57_Y39_N14
\calculette|hdmi_out0|res_img|h_count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|h_count[4]~18_combout\ = (\calculette|hdmi_out0|res_img|h_count\(4) & (\calculette|hdmi_out0|res_img|h_count[3]~17\ $ (GND))) # (!\calculette|hdmi_out0|res_img|h_count\(4) & (!\calculette|hdmi_out0|res_img|h_count[3]~17\ & 
-- VCC))
-- \calculette|hdmi_out0|res_img|h_count[4]~19\ = CARRY((\calculette|hdmi_out0|res_img|h_count\(4) & !\calculette|hdmi_out0|res_img|h_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(4),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|h_count[3]~17\,
	combout => \calculette|hdmi_out0|res_img|h_count[4]~18_combout\,
	cout => \calculette|hdmi_out0|res_img|h_count[4]~19\);

-- Location: FF_X57_Y39_N15
\calculette|hdmi_out0|res_img|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|h_count[4]~18_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|h_count\(4));

-- Location: LCCOMB_X58_Y39_N6
\calculette|hdmi_out0|res_img|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal0~2_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(4)) # (!\calculette|hdmi_out0|res_img|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(3),
	datad => \calculette|hdmi_out0|res_img|h_count\(4),
	combout => \calculette|hdmi_out0|res_img|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y39_N16
\calculette|hdmi_out0|res_img|h_count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|h_count[5]~20_combout\ = (\calculette|hdmi_out0|res_img|h_count\(5) & (!\calculette|hdmi_out0|res_img|h_count[4]~19\)) # (!\calculette|hdmi_out0|res_img|h_count\(5) & ((\calculette|hdmi_out0|res_img|h_count[4]~19\) # (GND)))
-- \calculette|hdmi_out0|res_img|h_count[5]~21\ = CARRY((!\calculette|hdmi_out0|res_img|h_count[4]~19\) # (!\calculette|hdmi_out0|res_img|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(5),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|h_count[4]~19\,
	combout => \calculette|hdmi_out0|res_img|h_count[5]~20_combout\,
	cout => \calculette|hdmi_out0|res_img|h_count[5]~21\);

-- Location: FF_X57_Y39_N17
\calculette|hdmi_out0|res_img|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|h_count[5]~20_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|h_count\(5));

-- Location: LCCOMB_X57_Y39_N18
\calculette|hdmi_out0|res_img|h_count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|h_count[6]~22_combout\ = (\calculette|hdmi_out0|res_img|h_count\(6) & (\calculette|hdmi_out0|res_img|h_count[5]~21\ $ (GND))) # (!\calculette|hdmi_out0|res_img|h_count\(6) & (!\calculette|hdmi_out0|res_img|h_count[5]~21\ & 
-- VCC))
-- \calculette|hdmi_out0|res_img|h_count[6]~23\ = CARRY((\calculette|hdmi_out0|res_img|h_count\(6) & !\calculette|hdmi_out0|res_img|h_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(6),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|h_count[5]~21\,
	combout => \calculette|hdmi_out0|res_img|h_count[6]~22_combout\,
	cout => \calculette|hdmi_out0|res_img|h_count[6]~23\);

-- Location: FF_X57_Y39_N19
\calculette|hdmi_out0|res_img|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|h_count[6]~22_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|h_count\(6));

-- Location: LCCOMB_X57_Y39_N20
\calculette|hdmi_out0|res_img|h_count[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|h_count[7]~24_combout\ = (\calculette|hdmi_out0|res_img|h_count\(7) & (!\calculette|hdmi_out0|res_img|h_count[6]~23\)) # (!\calculette|hdmi_out0|res_img|h_count\(7) & ((\calculette|hdmi_out0|res_img|h_count[6]~23\) # (GND)))
-- \calculette|hdmi_out0|res_img|h_count[7]~25\ = CARRY((!\calculette|hdmi_out0|res_img|h_count[6]~23\) # (!\calculette|hdmi_out0|res_img|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(7),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|h_count[6]~23\,
	combout => \calculette|hdmi_out0|res_img|h_count[7]~24_combout\,
	cout => \calculette|hdmi_out0|res_img|h_count[7]~25\);

-- Location: FF_X57_Y39_N21
\calculette|hdmi_out0|res_img|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|h_count[7]~24_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|h_count\(7));

-- Location: LCCOMB_X58_Y39_N28
\calculette|hdmi_out0|res_img|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal0~1_combout\ = (\calculette|hdmi_out0|res_img|h_count\(7)) # ((\calculette|hdmi_out0|res_img|h_count\(6)) # ((\calculette|hdmi_out0|res_img|h_count\(5)) # (!\calculette|hdmi_out0|res_img|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(7),
	datab => \calculette|hdmi_out0|res_img|h_count\(6),
	datac => \calculette|hdmi_out0|res_img|h_count\(5),
	datad => \calculette|hdmi_out0|res_img|h_count\(2),
	combout => \calculette|hdmi_out0|res_img|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y39_N22
\calculette|hdmi_out0|res_img|h_count[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|h_count[8]~26_combout\ = (\calculette|hdmi_out0|res_img|h_count\(8) & (\calculette|hdmi_out0|res_img|h_count[7]~25\ $ (GND))) # (!\calculette|hdmi_out0|res_img|h_count\(8) & (!\calculette|hdmi_out0|res_img|h_count[7]~25\ & 
-- VCC))
-- \calculette|hdmi_out0|res_img|h_count[8]~27\ = CARRY((\calculette|hdmi_out0|res_img|h_count\(8) & !\calculette|hdmi_out0|res_img|h_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(8),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|h_count[7]~25\,
	combout => \calculette|hdmi_out0|res_img|h_count[8]~26_combout\,
	cout => \calculette|hdmi_out0|res_img|h_count[8]~27\);

-- Location: FF_X57_Y39_N23
\calculette|hdmi_out0|res_img|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|h_count[8]~26_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|h_count\(8));

-- Location: LCCOMB_X57_Y39_N24
\calculette|hdmi_out0|res_img|h_count[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|h_count[9]~28_combout\ = \calculette|hdmi_out0|res_img|h_count[8]~27\ $ (\calculette|hdmi_out0|res_img|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \calculette|hdmi_out0|res_img|h_count\(9),
	cin => \calculette|hdmi_out0|res_img|h_count[8]~27\,
	combout => \calculette|hdmi_out0|res_img|h_count[9]~28_combout\);

-- Location: FF_X57_Y39_N25
\calculette|hdmi_out0|res_img|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|h_count[9]~28_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|h_count\(9));

-- Location: LCCOMB_X58_Y39_N18
\calculette|hdmi_out0|res_img|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal0~0_combout\ = (((!\calculette|hdmi_out0|res_img|h_count\(9)) # (!\calculette|hdmi_out0|res_img|h_count\(0))) # (!\calculette|hdmi_out0|res_img|h_count\(8))) # (!\calculette|hdmi_out0|res_img|h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(1),
	datab => \calculette|hdmi_out0|res_img|h_count\(8),
	datac => \calculette|hdmi_out0|res_img|h_count\(0),
	datad => \calculette|hdmi_out0|res_img|h_count\(9),
	combout => \calculette|hdmi_out0|res_img|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y39_N18
\calculette|hdmi_out0|reset_a~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|reset_a~0_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	combout => \calculette|hdmi_out0|reset_a~0_combout\);

-- Location: FF_X49_Y39_N19
\calculette|hdmi_out0|reset_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|hdmi_out0|reset_a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|reset_a~q\);

-- Location: LCCOMB_X49_Y39_N24
\calculette|hdmi_out0|reset_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|reset_b~0_combout\ = (\calculette|hdmi_out0|reset_a~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \calculette|hdmi_out0|reset_a~q\,
	combout => \calculette|hdmi_out0|reset_b~0_combout\);

-- Location: FF_X49_Y39_N25
\calculette|hdmi_out0|reset_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|hdmi_out0|reset_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|reset_b~q\);

-- Location: LCCOMB_X49_Y39_N10
\calculette|hdmi_out0|reset_c~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|reset_c~0_combout\ = (\calculette|hdmi_out0|reset_b~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \calculette|hdmi_out0|reset_b~q\,
	combout => \calculette|hdmi_out0|reset_c~0_combout\);

-- Location: FF_X49_Y39_N11
\calculette|hdmi_out0|reset_c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|hdmi_out0|reset_c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|reset_c~q\);

-- Location: LCCOMB_X49_Y39_N12
\calculette|hdmi_out0|reset_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|reset_d~0_combout\ = (\calculette|hdmi_out0|reset_c~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \calculette|hdmi_out0|reset_c~q\,
	combout => \calculette|hdmi_out0|reset_d~0_combout\);

-- Location: FF_X49_Y39_N13
\calculette|hdmi_out0|reset_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|hdmi_out0|reset_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|reset_d~q\);

-- Location: LCCOMB_X50_Y39_N28
\calculette|hdmi_out0|reset_e~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|reset_e~0_combout\ = (\calculette|hdmi_out0|reset_d~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \calculette|hdmi_out0|reset_d~q\,
	combout => \calculette|hdmi_out0|reset_e~0_combout\);

-- Location: FF_X50_Y39_N29
\calculette|hdmi_out0|reset_e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \calculette|hdmi_out0|reset_e~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|reset_e~q\);

-- Location: LCCOMB_X50_Y39_N6
\calculette|hdmi_out0|res_img|v_count[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[2]~17_combout\ = (\calculette|hdmi_out0|reset_e~q\) # ((!\calculette|hdmi_out0|res_img|Equal0~2_combout\ & (!\calculette|hdmi_out0|res_img|Equal0~1_combout\ & !\calculette|hdmi_out0|res_img|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Equal0~2_combout\,
	datab => \calculette|hdmi_out0|res_img|Equal0~1_combout\,
	datac => \calculette|hdmi_out0|res_img|Equal0~0_combout\,
	datad => \calculette|hdmi_out0|reset_e~q\,
	combout => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\);

-- Location: FF_X50_Y39_N13
\calculette|hdmi_out0|res_img|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|v_count[2]~14_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|v_count\(2));

-- Location: LCCOMB_X50_Y39_N14
\calculette|hdmi_out0|res_img|v_count[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[3]~18_combout\ = (\calculette|hdmi_out0|res_img|v_count\(3) & (!\calculette|hdmi_out0|res_img|v_count[2]~15\)) # (!\calculette|hdmi_out0|res_img|v_count\(3) & ((\calculette|hdmi_out0|res_img|v_count[2]~15\) # (GND)))
-- \calculette|hdmi_out0|res_img|v_count[3]~19\ = CARRY((!\calculette|hdmi_out0|res_img|v_count[2]~15\) # (!\calculette|hdmi_out0|res_img|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(3),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|v_count[2]~15\,
	combout => \calculette|hdmi_out0|res_img|v_count[3]~18_combout\,
	cout => \calculette|hdmi_out0|res_img|v_count[3]~19\);

-- Location: FF_X50_Y39_N15
\calculette|hdmi_out0|res_img|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|v_count[3]~18_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|v_count\(3));

-- Location: LCCOMB_X50_Y39_N16
\calculette|hdmi_out0|res_img|v_count[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[4]~20_combout\ = (\calculette|hdmi_out0|res_img|v_count\(4) & (\calculette|hdmi_out0|res_img|v_count[3]~19\ $ (GND))) # (!\calculette|hdmi_out0|res_img|v_count\(4) & (!\calculette|hdmi_out0|res_img|v_count[3]~19\ & 
-- VCC))
-- \calculette|hdmi_out0|res_img|v_count[4]~21\ = CARRY((\calculette|hdmi_out0|res_img|v_count\(4) & !\calculette|hdmi_out0|res_img|v_count[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|v_count\(4),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|v_count[3]~19\,
	combout => \calculette|hdmi_out0|res_img|v_count[4]~20_combout\,
	cout => \calculette|hdmi_out0|res_img|v_count[4]~21\);

-- Location: FF_X50_Y39_N17
\calculette|hdmi_out0|res_img|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|v_count[4]~20_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|v_count\(4));

-- Location: LCCOMB_X50_Y39_N18
\calculette|hdmi_out0|res_img|v_count[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[5]~22_combout\ = (\calculette|hdmi_out0|res_img|v_count\(5) & (!\calculette|hdmi_out0|res_img|v_count[4]~21\)) # (!\calculette|hdmi_out0|res_img|v_count\(5) & ((\calculette|hdmi_out0|res_img|v_count[4]~21\) # (GND)))
-- \calculette|hdmi_out0|res_img|v_count[5]~23\ = CARRY((!\calculette|hdmi_out0|res_img|v_count[4]~21\) # (!\calculette|hdmi_out0|res_img|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|v_count\(5),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|v_count[4]~21\,
	combout => \calculette|hdmi_out0|res_img|v_count[5]~22_combout\,
	cout => \calculette|hdmi_out0|res_img|v_count[5]~23\);

-- Location: FF_X50_Y39_N19
\calculette|hdmi_out0|res_img|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|v_count[5]~22_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|v_count\(5));

-- Location: LCCOMB_X50_Y39_N20
\calculette|hdmi_out0|res_img|v_count[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[6]~24_combout\ = (\calculette|hdmi_out0|res_img|v_count\(6) & (\calculette|hdmi_out0|res_img|v_count[5]~23\ $ (GND))) # (!\calculette|hdmi_out0|res_img|v_count\(6) & (!\calculette|hdmi_out0|res_img|v_count[5]~23\ & 
-- VCC))
-- \calculette|hdmi_out0|res_img|v_count[6]~25\ = CARRY((\calculette|hdmi_out0|res_img|v_count\(6) & !\calculette|hdmi_out0|res_img|v_count[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|v_count\(6),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|v_count[5]~23\,
	combout => \calculette|hdmi_out0|res_img|v_count[6]~24_combout\,
	cout => \calculette|hdmi_out0|res_img|v_count[6]~25\);

-- Location: FF_X50_Y39_N21
\calculette|hdmi_out0|res_img|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|v_count[6]~24_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|v_count\(6));

-- Location: LCCOMB_X50_Y39_N22
\calculette|hdmi_out0|res_img|v_count[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[7]~26_combout\ = (\calculette|hdmi_out0|res_img|v_count\(7) & (!\calculette|hdmi_out0|res_img|v_count[6]~25\)) # (!\calculette|hdmi_out0|res_img|v_count\(7) & ((\calculette|hdmi_out0|res_img|v_count[6]~25\) # (GND)))
-- \calculette|hdmi_out0|res_img|v_count[7]~27\ = CARRY((!\calculette|hdmi_out0|res_img|v_count[6]~25\) # (!\calculette|hdmi_out0|res_img|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(7),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|v_count[6]~25\,
	combout => \calculette|hdmi_out0|res_img|v_count[7]~26_combout\,
	cout => \calculette|hdmi_out0|res_img|v_count[7]~27\);

-- Location: FF_X50_Y39_N23
\calculette|hdmi_out0|res_img|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|v_count[7]~26_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|v_count\(7));

-- Location: LCCOMB_X50_Y39_N24
\calculette|hdmi_out0|res_img|v_count[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[8]~28_combout\ = (\calculette|hdmi_out0|res_img|v_count\(8) & (\calculette|hdmi_out0|res_img|v_count[7]~27\ $ (GND))) # (!\calculette|hdmi_out0|res_img|v_count\(8) & (!\calculette|hdmi_out0|res_img|v_count[7]~27\ & 
-- VCC))
-- \calculette|hdmi_out0|res_img|v_count[8]~29\ = CARRY((\calculette|hdmi_out0|res_img|v_count\(8) & !\calculette|hdmi_out0|res_img|v_count[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|v_count\(8),
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|v_count[7]~27\,
	combout => \calculette|hdmi_out0|res_img|v_count[8]~28_combout\,
	cout => \calculette|hdmi_out0|res_img|v_count[8]~29\);

-- Location: FF_X50_Y39_N25
\calculette|hdmi_out0|res_img|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|v_count[8]~28_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|v_count\(8));

-- Location: LCCOMB_X50_Y39_N26
\calculette|hdmi_out0|res_img|v_count[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[9]~30_combout\ = \calculette|hdmi_out0|res_img|v_count[8]~29\ $ (\calculette|hdmi_out0|res_img|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \calculette|hdmi_out0|res_img|v_count\(9),
	cin => \calculette|hdmi_out0|res_img|v_count[8]~29\,
	combout => \calculette|hdmi_out0|res_img|v_count[9]~30_combout\);

-- Location: FF_X50_Y39_N27
\calculette|hdmi_out0|res_img|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|v_count[9]~30_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|v_count\(9));

-- Location: LCCOMB_X52_Y39_N0
\calculette|hdmi_out0|res_img|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal1~0_combout\ = (\calculette|hdmi_out0|res_img|v_count\(1)) # (((\calculette|hdmi_out0|res_img|v_count\(0)) # (!\calculette|hdmi_out0|res_img|v_count\(3))) # (!\calculette|hdmi_out0|res_img|v_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(1),
	datab => \calculette|hdmi_out0|res_img|v_count\(2),
	datac => \calculette|hdmi_out0|res_img|v_count\(3),
	datad => \calculette|hdmi_out0|res_img|v_count\(0),
	combout => \calculette|hdmi_out0|res_img|Equal1~0_combout\);

-- Location: LCCOMB_X51_Y39_N16
\calculette|hdmi_out0|res_img|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan2~0_combout\ = (!\calculette|hdmi_out0|res_img|v_count\(6) & !\calculette|hdmi_out0|res_img|v_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|v_count\(6),
	datad => \calculette|hdmi_out0|res_img|v_count\(7),
	combout => \calculette|hdmi_out0|res_img|LessThan2~0_combout\);

-- Location: LCCOMB_X52_Y39_N10
\calculette|hdmi_out0|res_img|LessThan28~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan28~7_combout\ = (\calculette|hdmi_out0|res_img|LessThan2~0_combout\ & (!\calculette|hdmi_out0|res_img|v_count\(5) & (!\calculette|hdmi_out0|res_img|v_count\(8) & !\calculette|hdmi_out0|res_img|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|LessThan2~0_combout\,
	datab => \calculette|hdmi_out0|res_img|v_count\(5),
	datac => \calculette|hdmi_out0|res_img|v_count\(8),
	datad => \calculette|hdmi_out0|res_img|v_count\(4),
	combout => \calculette|hdmi_out0|res_img|LessThan28~7_combout\);

-- Location: LCCOMB_X51_Y39_N10
\calculette|hdmi_out0|res_img|v_count[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|v_count[2]~16_combout\ = (\calculette|hdmi_out0|reset_e~q\) # ((\calculette|hdmi_out0|res_img|v_count\(9) & (!\calculette|hdmi_out0|res_img|Equal1~0_combout\ & \calculette|hdmi_out0|res_img|LessThan28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(9),
	datab => \calculette|hdmi_out0|res_img|Equal1~0_combout\,
	datac => \calculette|hdmi_out0|res_img|LessThan28~7_combout\,
	datad => \calculette|hdmi_out0|reset_e~q\,
	combout => \calculette|hdmi_out0|res_img|v_count[2]~16_combout\);

-- Location: FF_X50_Y39_N9
\calculette|hdmi_out0|res_img|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|v_count[0]~10_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|v_count\(0));

-- Location: FF_X50_Y39_N11
\calculette|hdmi_out0|res_img|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|v_count[1]~12_combout\,
	sclr => \calculette|hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \calculette|hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|v_count\(1));

-- Location: LCCOMB_X50_Y39_N0
\calculette|hdmi_out0|res_img|LessThan28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan28~4_combout\ = (!\calculette|hdmi_out0|res_img|v_count\(3) & !\calculette|hdmi_out0|res_img|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|v_count\(3),
	datad => \calculette|hdmi_out0|res_img|v_count\(2),
	combout => \calculette|hdmi_out0|res_img|LessThan28~4_combout\);

-- Location: LCCOMB_X52_Y39_N28
\calculette|hdmi_out0|res_img|process_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~8_combout\ = (!\calculette|hdmi_out0|res_img|v_count\(5) & !\calculette|hdmi_out0|res_img|v_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|v_count\(5),
	datad => \calculette|hdmi_out0|res_img|v_count\(4),
	combout => \calculette|hdmi_out0|res_img|process_1~8_combout\);

-- Location: LCCOMB_X54_Y39_N2
\calculette|hdmi_out0|res_img|LessThan28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan28~6_combout\ = (\calculette|hdmi_out0|res_img|LessThan28~4_combout\ & (!\calculette|hdmi_out0|res_img|v_count\(8) & (\calculette|hdmi_out0|res_img|LessThan2~0_combout\ & 
-- \calculette|hdmi_out0|res_img|process_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|LessThan28~4_combout\,
	datab => \calculette|hdmi_out0|res_img|v_count\(8),
	datac => \calculette|hdmi_out0|res_img|LessThan2~0_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~8_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan28~6_combout\);

-- Location: LCCOMB_X54_Y39_N20
\calculette|hdmi_out0|res_img|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan1~0_combout\ = (!\calculette|hdmi_out0|res_img|v_count\(1) & (!\calculette|hdmi_out0|res_img|v_count\(9) & \calculette|hdmi_out0|res_img|LessThan28~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|v_count\(1),
	datac => \calculette|hdmi_out0|res_img|v_count\(9),
	datad => \calculette|hdmi_out0|res_img|LessThan28~6_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan1~0_combout\);

-- Location: FF_X54_Y39_N21
\calculette|hdmi_out0|res_img|vs_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|vs_1~q\);

-- Location: LCCOMB_X54_Y39_N22
\calculette|hdmi_out0|res_img|vs_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|vs_2~feeder_combout\ = \calculette|hdmi_out0|res_img|vs_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \calculette|hdmi_out0|res_img|vs_1~q\,
	combout => \calculette|hdmi_out0|res_img|vs_2~feeder_combout\);

-- Location: FF_X54_Y39_N23
\calculette|hdmi_out0|res_img|vs_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|vs_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|vs_2~q\);

-- Location: LCCOMB_X54_Y39_N8
\calculette|hdmi_out0|res_img|vs_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|vs_out~feeder_combout\ = \calculette|hdmi_out0|res_img|vs_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|vs_2~q\,
	combout => \calculette|hdmi_out0|res_img|vs_out~feeder_combout\);

-- Location: FF_X54_Y39_N9
\calculette|hdmi_out0|res_img|vs_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|vs_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|vs_out~q\);

-- Location: LCCOMB_X55_Y39_N16
\calculette|hdmi_out0|res_img|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan0~1_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(7) & (!\calculette|hdmi_out0|res_img|h_count\(8) & ((!\calculette|hdmi_out0|res_img|h_count\(5)) # (!\calculette|hdmi_out0|res_img|h_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(6),
	datab => \calculette|hdmi_out0|res_img|h_count\(7),
	datac => \calculette|hdmi_out0|res_img|h_count\(8),
	datad => \calculette|hdmi_out0|res_img|h_count\(5),
	combout => \calculette|hdmi_out0|res_img|LessThan0~1_combout\);

-- Location: FF_X55_Y39_N17
\calculette|hdmi_out0|res_img|hs_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|LessThan0~1_combout\,
	sclr => \calculette|hdmi_out0|res_img|h_count\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|hs_1~q\);

-- Location: LCCOMB_X47_Y39_N18
\calculette|hdmi_out0|res_img|hs_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|hs_2~feeder_combout\ = \calculette|hdmi_out0|res_img|hs_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \calculette|hdmi_out0|res_img|hs_1~q\,
	combout => \calculette|hdmi_out0|res_img|hs_2~feeder_combout\);

-- Location: FF_X47_Y39_N19
\calculette|hdmi_out0|res_img|hs_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|hs_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|hs_2~q\);

-- Location: LCCOMB_X47_Y39_N12
\calculette|hdmi_out0|res_img|hs_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|hs_out~feeder_combout\ = \calculette|hdmi_out0|res_img|hs_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \calculette|hdmi_out0|res_img|hs_2~q\,
	combout => \calculette|hdmi_out0|res_img|hs_out~feeder_combout\);

-- Location: FF_X47_Y39_N13
\calculette|hdmi_out0|res_img|hs_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|hs_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|hs_out~q\);

-- Location: LCCOMB_X51_Y39_N22
\calculette|hdmi_out0|res_img|LessThan26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan26~0_combout\ = (((!\calculette|hdmi_out0|res_img|v_count\(1) & !\calculette|hdmi_out0|res_img|v_count\(0))) # (!\calculette|hdmi_out0|res_img|v_count\(3))) # (!\calculette|hdmi_out0|res_img|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(2),
	datab => \calculette|hdmi_out0|res_img|v_count\(1),
	datac => \calculette|hdmi_out0|res_img|v_count\(0),
	datad => \calculette|hdmi_out0|res_img|v_count\(3),
	combout => \calculette|hdmi_out0|res_img|LessThan26~0_combout\);

-- Location: LCCOMB_X51_Y39_N8
\calculette|hdmi_out0|res_img|LessThan26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan26~1_combout\ = (\calculette|hdmi_out0|res_img|LessThan2~0_combout\ & (((!\calculette|hdmi_out0|res_img|v_count\(4) & \calculette|hdmi_out0|res_img|LessThan26~0_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(4),
	datab => \calculette|hdmi_out0|res_img|v_count\(5),
	datac => \calculette|hdmi_out0|res_img|LessThan26~0_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan2~0_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan26~1_combout\);

-- Location: LCCOMB_X54_Y39_N18
\calculette|hdmi_out0|res_img|process_1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~44_combout\ = (\calculette|hdmi_out0|res_img|v_count\(8) & (!\calculette|hdmi_out0|res_img|v_count\(9) & (\calculette|hdmi_out0|res_img|LessThan26~1_combout\ & !\calculette|hdmi_out0|res_img|process_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(8),
	datab => \calculette|hdmi_out0|res_img|v_count\(9),
	datac => \calculette|hdmi_out0|res_img|LessThan26~1_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~8_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~44_combout\);

-- Location: LCCOMB_X54_Y39_N16
\calculette|hdmi_out0|res_img|process_1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~58_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & \calculette|hdmi_out0|res_img|process_1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|sepRes|int_input[31]~0_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~44_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~58_combout\);

-- Location: LCCOMB_X51_Y39_N18
\calculette|hdmi_out0|res_img|process_1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~59_combout\ = (\calculette|hdmi_out0|res_img|LessThan2~0_combout\ & ((\calculette|hdmi_out0|res_img|v_count\(4) & (!\calculette|hdmi_out0|res_img|v_count\(5))) # (!\calculette|hdmi_out0|res_img|v_count\(4) & 
-- (\calculette|hdmi_out0|res_img|v_count\(5) & \calculette|hdmi_out0|res_img|LessThan26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(4),
	datab => \calculette|hdmi_out0|res_img|v_count\(5),
	datac => \calculette|hdmi_out0|res_img|LessThan26~0_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan2~0_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~59_combout\);

-- Location: LCCOMB_X50_Y39_N30
\calculette|hdmi_out0|res_img|LessThan28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan28~5_combout\ = (!\calculette|hdmi_out0|res_img|v_count\(6) & (((\calculette|hdmi_out0|res_img|LessThan28~4_combout\) # (!\calculette|hdmi_out0|res_img|v_count\(5))) # (!\calculette|hdmi_out0|res_img|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(6),
	datab => \calculette|hdmi_out0|res_img|v_count\(4),
	datac => \calculette|hdmi_out0|res_img|v_count\(5),
	datad => \calculette|hdmi_out0|res_img|LessThan28~4_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan28~5_combout\);

-- Location: LCCOMB_X50_Y39_N4
\calculette|hdmi_out0|res_img|process_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~22_combout\ = (!\calculette|hdmi_out0|res_img|v_count\(3) & (((!\calculette|hdmi_out0|res_img|v_count\(2)) # (!\calculette|hdmi_out0|res_img|v_count\(0))) # (!\calculette|hdmi_out0|res_img|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(1),
	datab => \calculette|hdmi_out0|res_img|v_count\(0),
	datac => \calculette|hdmi_out0|res_img|v_count\(3),
	datad => \calculette|hdmi_out0|res_img|v_count\(2),
	combout => \calculette|hdmi_out0|res_img|process_1~22_combout\);

-- Location: LCCOMB_X51_Y39_N2
\calculette|hdmi_out0|res_img|process_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~23_combout\ = (\calculette|hdmi_out0|res_img|v_count\(7) & ((\calculette|hdmi_out0|res_img|v_count\(5)) # ((\calculette|hdmi_out0|res_img|v_count\(4) & !\calculette|hdmi_out0|res_img|process_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(4),
	datab => \calculette|hdmi_out0|res_img|v_count\(7),
	datac => \calculette|hdmi_out0|res_img|process_1~22_combout\,
	datad => \calculette|hdmi_out0|res_img|v_count\(5),
	combout => \calculette|hdmi_out0|res_img|process_1~23_combout\);

-- Location: LCCOMB_X51_Y39_N20
\calculette|hdmi_out0|res_img|process_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~24_combout\ = (\calculette|hdmi_out0|res_img|LessThan28~5_combout\ & \calculette|hdmi_out0|res_img|process_1~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|LessThan28~5_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~23_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~24_combout\);

-- Location: LCCOMB_X54_Y39_N6
\calculette|hdmi_out0|res_img|process_1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~60_combout\ = (\calculette|hdmi_out0|res_img|v_count\(8) & (!\calculette|hdmi_out0|res_img|v_count\(9) & ((\calculette|hdmi_out0|res_img|process_1~59_combout\) # 
-- (\calculette|hdmi_out0|res_img|process_1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~59_combout\,
	datab => \calculette|hdmi_out0|res_img|v_count\(8),
	datac => \calculette|hdmi_out0|res_img|v_count\(9),
	datad => \calculette|hdmi_out0|res_img|process_1~24_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~60_combout\);

-- Location: LCCOMB_X57_Y39_N28
\calculette|hdmi_out0|res_img|LessThan29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan29~0_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(3) & (((!\calculette|hdmi_out0|res_img|h_count\(1) & !\calculette|hdmi_out0|res_img|h_count\(0))) # (!\calculette|hdmi_out0|res_img|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(3),
	datab => \calculette|hdmi_out0|res_img|h_count\(1),
	datac => \calculette|hdmi_out0|res_img|h_count\(2),
	datad => \calculette|hdmi_out0|res_img|h_count\(0),
	combout => \calculette|hdmi_out0|res_img|LessThan29~0_combout\);

-- Location: LCCOMB_X55_Y39_N12
\calculette|hdmi_out0|res_img|LessThan17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan17~0_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(5) & ((\calculette|hdmi_out0|res_img|LessThan29~0_combout\) # (!\calculette|hdmi_out0|res_img|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(5),
	datac => \calculette|hdmi_out0|res_img|h_count\(4),
	datad => \calculette|hdmi_out0|res_img|LessThan29~0_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan17~0_combout\);

-- Location: LCCOMB_X55_Y39_N18
\calculette|hdmi_out0|res_img|process_1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~62_combout\ = (\calculette|hdmi_out0|res_img|h_count\(6) & (\calculette|hdmi_out0|res_img|h_count\(7) & (\calculette|hdmi_out0|res_img|h_count\(8) & !\calculette|hdmi_out0|res_img|LessThan17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(6),
	datab => \calculette|hdmi_out0|res_img|h_count\(7),
	datac => \calculette|hdmi_out0|res_img|h_count\(8),
	datad => \calculette|hdmi_out0|res_img|LessThan17~0_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~62_combout\);

-- Location: LCCOMB_X57_Y39_N26
\calculette|hdmi_out0|res_img|LessThan34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan34~0_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(2) & ((!\calculette|hdmi_out0|res_img|h_count\(0)) # (!\calculette|hdmi_out0|res_img|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(2),
	datac => \calculette|hdmi_out0|res_img|h_count\(1),
	datad => \calculette|hdmi_out0|res_img|h_count\(0),
	combout => \calculette|hdmi_out0|res_img|LessThan34~0_combout\);

-- Location: LCCOMB_X57_Y39_N4
\calculette|hdmi_out0|res_img|LessThan20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan20~0_combout\ = ((!\calculette|hdmi_out0|res_img|h_count\(4) & ((\calculette|hdmi_out0|res_img|LessThan34~0_combout\) # (!\calculette|hdmi_out0|res_img|h_count\(3))))) # (!\calculette|hdmi_out0|res_img|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(3),
	datab => \calculette|hdmi_out0|res_img|h_count\(5),
	datac => \calculette|hdmi_out0|res_img|LessThan34~0_combout\,
	datad => \calculette|hdmi_out0|res_img|h_count\(4),
	combout => \calculette|hdmi_out0|res_img|LessThan20~0_combout\);

-- Location: LCCOMB_X55_Y39_N2
\calculette|hdmi_out0|res_img|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan0~0_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(8) & !\calculette|hdmi_out0|res_img|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|h_count\(8),
	datad => \calculette|hdmi_out0|res_img|h_count\(7),
	combout => \calculette|hdmi_out0|res_img|LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y39_N24
\calculette|hdmi_out0|res_img|process_1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~61_combout\ = (\calculette|hdmi_out0|res_img|h_count\(9) & (((\calculette|hdmi_out0|res_img|h_count\(6) & !\calculette|hdmi_out0|res_img|LessThan20~0_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(6),
	datab => \calculette|hdmi_out0|res_img|h_count\(9),
	datac => \calculette|hdmi_out0|res_img|LessThan20~0_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan0~0_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~61_combout\);

-- Location: LCCOMB_X55_Y39_N20
\calculette|hdmi_out0|res_img|process_1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~63_combout\ = (\calculette|hdmi_out0|res_img|process_1~61_combout\) # ((!\calculette|hdmi_out0|res_img|h_count\(9) & !\calculette|hdmi_out0|res_img|process_1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(9),
	datac => \calculette|hdmi_out0|res_img|process_1~62_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~61_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~63_combout\);

-- Location: LCCOMB_X56_Y39_N0
\calculette|hdmi_out0|res_img|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan11~0_combout\ = ((!\calculette|hdmi_out0|res_img|h_count\(6) & (!\calculette|hdmi_out0|res_img|h_count\(7) & \calculette|hdmi_out0|res_img|LessThan20~0_combout\))) # (!\calculette|hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(6),
	datab => \calculette|hdmi_out0|res_img|h_count\(8),
	datac => \calculette|hdmi_out0|res_img|h_count\(7),
	datad => \calculette|hdmi_out0|res_img|LessThan20~0_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan11~0_combout\);

-- Location: LCCOMB_X56_Y39_N30
\calculette|hdmi_out0|res_img|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan9~0_combout\ = ((!\calculette|hdmi_out0|res_img|h_count\(3) & ((!\calculette|hdmi_out0|res_img|h_count\(2)) # (!\calculette|hdmi_out0|res_img|h_count\(1))))) # (!\calculette|hdmi_out0|res_img|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(3),
	datab => \calculette|hdmi_out0|res_img|h_count\(1),
	datac => \calculette|hdmi_out0|res_img|h_count\(4),
	datad => \calculette|hdmi_out0|res_img|h_count\(2),
	combout => \calculette|hdmi_out0|res_img|LessThan9~0_combout\);

-- Location: LCCOMB_X58_Y39_N8
\calculette|hdmi_out0|res_img|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan7~0_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(5) & !\calculette|hdmi_out0|res_img|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|h_count\(5),
	datad => \calculette|hdmi_out0|res_img|h_count\(6),
	combout => \calculette|hdmi_out0|res_img|LessThan7~0_combout\);

-- Location: LCCOMB_X56_Y39_N12
\calculette|hdmi_out0|res_img|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan9~1_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(8) & (((\calculette|hdmi_out0|res_img|LessThan9~0_combout\ & \calculette|hdmi_out0|res_img|LessThan7~0_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(7),
	datab => \calculette|hdmi_out0|res_img|h_count\(8),
	datac => \calculette|hdmi_out0|res_img|LessThan9~0_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan7~0_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan9~1_combout\);

-- Location: LCCOMB_X56_Y39_N14
\calculette|hdmi_out0|res_img|rgb2[13]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~11_combout\ = (\calculette|hdmi_out0|res_img|h_count\(9)) # ((\calculette|hdmi_out0|res_img|LessThan9~1_combout\) # (!\calculette|hdmi_out0|res_img|LessThan11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(9),
	datab => \calculette|hdmi_out0|res_img|LessThan11~0_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan9~1_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~11_combout\);

-- Location: LCCOMB_X56_Y39_N2
\calculette|hdmi_out0|res_img|LessThan29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan29~1_combout\ = (\calculette|hdmi_out0|res_img|h_count\(5) & (\calculette|hdmi_out0|res_img|h_count\(4) & !\calculette|hdmi_out0|res_img|LessThan29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(5),
	datac => \calculette|hdmi_out0|res_img|h_count\(4),
	datad => \calculette|hdmi_out0|res_img|LessThan29~0_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan29~1_combout\);

-- Location: LCCOMB_X56_Y39_N16
\calculette|hdmi_out0|res_img|rgb2[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~2_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(7) & (!\calculette|hdmi_out0|res_img|h_count\(6) & (!\calculette|hdmi_out0|res_img|LessThan20~0_combout\ & !\calculette|hdmi_out0|res_img|LessThan29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(7),
	datab => \calculette|hdmi_out0|res_img|h_count\(6),
	datac => \calculette|hdmi_out0|res_img|LessThan20~0_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan29~1_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~2_combout\);

-- Location: LCCOMB_X56_Y39_N26
\calculette|hdmi_out0|res_img|process_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~9_combout\ = ((!\calculette|hdmi_out0|res_img|h_count\(6) & (!\calculette|hdmi_out0|res_img|h_count\(7) & !\calculette|hdmi_out0|res_img|LessThan29~1_combout\))) # (!\calculette|hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(6),
	datab => \calculette|hdmi_out0|res_img|h_count\(8),
	datac => \calculette|hdmi_out0|res_img|h_count\(7),
	datad => \calculette|hdmi_out0|res_img|LessThan29~1_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~9_combout\);

-- Location: LCCOMB_X56_Y39_N18
\calculette|hdmi_out0|res_img|LessThan34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan34~1_combout\ = (\calculette|hdmi_out0|res_img|h_count\(5)) # ((\calculette|hdmi_out0|res_img|h_count\(4)) # ((\calculette|hdmi_out0|res_img|h_count\(3) & !\calculette|hdmi_out0|res_img|LessThan34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(3),
	datab => \calculette|hdmi_out0|res_img|h_count\(5),
	datac => \calculette|hdmi_out0|res_img|h_count\(4),
	datad => \calculette|hdmi_out0|res_img|LessThan34~0_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan34~1_combout\);

-- Location: LCCOMB_X56_Y39_N20
\calculette|hdmi_out0|res_img|rgb2[13]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~3_combout\ = (\calculette|hdmi_out0|res_img|h_count\(6) & (\calculette|hdmi_out0|res_img|h_count\(7) & \calculette|hdmi_out0|res_img|LessThan34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(6),
	datac => \calculette|hdmi_out0|res_img|h_count\(7),
	datad => \calculette|hdmi_out0|res_img|LessThan34~1_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~3_combout\);

-- Location: LCCOMB_X56_Y39_N10
\calculette|hdmi_out0|res_img|rgb2[13]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~4_combout\ = (\calculette|hdmi_out0|res_img|LessThan9~1_combout\ & (((\calculette|hdmi_out0|res_img|process_1~9_combout\) # (\calculette|hdmi_out0|res_img|rgb2[13]~3_combout\)))) # 
-- (!\calculette|hdmi_out0|res_img|LessThan9~1_combout\ & (!\calculette|hdmi_out0|res_img|LessThan11~0_combout\ & ((\calculette|hdmi_out0|res_img|process_1~9_combout\) # (\calculette|hdmi_out0|res_img|rgb2[13]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|LessThan9~1_combout\,
	datab => \calculette|hdmi_out0|res_img|LessThan11~0_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~9_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~3_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~4_combout\);

-- Location: LCCOMB_X56_Y39_N24
\calculette|hdmi_out0|res_img|rgb2[13]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~5_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(9) & (((\calculette|hdmi_out0|res_img|h_count\(8) & \calculette|hdmi_out0|res_img|rgb2[13]~2_combout\)) # (!\calculette|hdmi_out0|res_img|rgb2[13]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(8),
	datab => \calculette|hdmi_out0|res_img|rgb2[13]~2_combout\,
	datac => \calculette|hdmi_out0|res_img|h_count\(9),
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~4_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~5_combout\);

-- Location: LCCOMB_X55_Y39_N22
\calculette|hdmi_out0|res_img|rgb2[13]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~13_combout\ = (\calculette|hdmi_out0|res_img|rgb2[13]~5_combout\ & ((\calculette|hdmi_out0|res_img|rgb2[13]~11_combout\))) # (!\calculette|hdmi_out0|res_img|rgb2[13]~5_combout\ & 
-- (\calculette|hdmi_out0|res_img|process_1~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|process_1~63_combout\,
	datac => \calculette|hdmi_out0|res_img|rgb2[13]~11_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~5_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~13_combout\);

-- Location: LCCOMB_X56_Y39_N28
\calculette|hdmi_out0|res_img|rgb2[13]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~10_combout\ = ((\calculette|hdmi_out0|res_img|h_count\(9)) # (!\calculette|hdmi_out0|res_img|rgb2[13]~2_combout\)) # (!\calculette|hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(8),
	datac => \calculette|hdmi_out0|res_img|h_count\(9),
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~2_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~10_combout\);

-- Location: LCCOMB_X56_Y39_N4
\calculette|hdmi_out0|res_img|rgb2[13]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~12_combout\ = (\calculette|hdmi_out0|res_img|rgb2[13]~5_combout\ & ((\calculette|hdmi_out0|res_img|rgb2[13]~10_combout\) # (!\calculette|hdmi_out0|res_img|rgb2[13]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|rgb2[13]~10_combout\,
	datac => \calculette|hdmi_out0|res_img|rgb2[13]~11_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~5_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~12_combout\);

-- Location: LCCOMB_X55_Y39_N4
\calculette|hdmi_out0|res_img|rgb2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~14_combout\ = (\calculette|hdmi_out0|res_img|rgb2[13]~13_combout\ & (\calculette|hdmi_out0|res_img|process_1~58_combout\ & ((\calculette|hdmi_out0|res_img|rgb2[13]~12_combout\)))) # 
-- (!\calculette|hdmi_out0|res_img|rgb2[13]~13_combout\ & (((\calculette|hdmi_out0|res_img|process_1~60_combout\) # (!\calculette|hdmi_out0|res_img|rgb2[13]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~58_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~60_combout\,
	datac => \calculette|hdmi_out0|res_img|rgb2[13]~13_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~12_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~14_combout\);

-- Location: LCCOMB_X58_Y39_N26
\calculette|hdmi_out0|res_img|process_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~10_combout\ = (\calculette|hdmi_out0|res_img|h_count\(5) & \calculette|hdmi_out0|res_img|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|h_count\(5),
	datad => \calculette|hdmi_out0|res_img|h_count\(4),
	combout => \calculette|hdmi_out0|res_img|process_1~10_combout\);

-- Location: LCCOMB_X52_Y39_N4
\calculette|hdmi_out0|res_img|process_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~13_combout\ = (((!\calculette|hdmi_out0|res_img|process_1~10_combout\) # (!\calculette|hdmi_out0|res_img|LessThan0~0_combout\)) # (!\calculette|hdmi_out0|res_img|LessThan29~0_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(6),
	datab => \calculette|hdmi_out0|res_img|LessThan29~0_combout\,
	datac => \calculette|hdmi_out0|res_img|LessThan0~0_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~10_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~13_combout\);

-- Location: LCCOMB_X58_Y39_N0
\calculette|hdmi_out0|res_img|LessThan29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan29~2_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(7) & (((\calculette|hdmi_out0|res_img|LessThan29~0_combout\) # (!\calculette|hdmi_out0|res_img|process_1~10_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(7),
	datab => \calculette|hdmi_out0|res_img|h_count\(6),
	datac => \calculette|hdmi_out0|res_img|process_1~10_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan29~0_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan29~2_combout\);

-- Location: LCCOMB_X56_Y39_N6
\calculette|hdmi_out0|res_img|process_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~11_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(6) & !\calculette|hdmi_out0|res_img|LessThan34~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(6),
	datad => \calculette|hdmi_out0|res_img|LessThan34~1_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~11_combout\);

-- Location: LCCOMB_X52_Y39_N2
\calculette|hdmi_out0|res_img|process_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~12_combout\ = (\calculette|hdmi_out0|res_img|h_count\(8) & ((\calculette|hdmi_out0|res_img|h_count\(7)) # ((!\calculette|hdmi_out0|res_img|process_1~11_combout\)))) # (!\calculette|hdmi_out0|res_img|h_count\(8) & 
-- (((\calculette|hdmi_out0|res_img|LessThan29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(8),
	datab => \calculette|hdmi_out0|res_img|h_count\(7),
	datac => \calculette|hdmi_out0|res_img|LessThan29~2_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~11_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~12_combout\);

-- Location: LCCOMB_X52_Y39_N18
\calculette|hdmi_out0|res_img|rgb2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~8_combout\ = ((\calculette|hdmi_out0|res_img|process_1~12_combout\) # (!\calculette|hdmi_out0|res_img|process_1~13_combout\)) # (!\calculette|hdmi_out0|res_img|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(9),
	datac => \calculette|hdmi_out0|res_img|process_1~13_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~12_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~8_combout\);

-- Location: LCCOMB_X57_Y39_N2
\calculette|hdmi_out0|res_img|LessThan29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan29~3_combout\ = (\calculette|hdmi_out0|res_img|h_count\(2) & ((\calculette|hdmi_out0|res_img|h_count\(0)) # (\calculette|hdmi_out0|res_img|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(0),
	datac => \calculette|hdmi_out0|res_img|h_count\(1),
	datad => \calculette|hdmi_out0|res_img|h_count\(2),
	combout => \calculette|hdmi_out0|res_img|LessThan29~3_combout\);

-- Location: LCCOMB_X57_Y39_N0
\calculette|hdmi_out0|res_img|LessThan32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan32~0_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(4) & ((!\calculette|hdmi_out0|res_img|LessThan29~3_combout\) # (!\calculette|hdmi_out0|res_img|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(3),
	datac => \calculette|hdmi_out0|res_img|h_count\(4),
	datad => \calculette|hdmi_out0|res_img|LessThan29~3_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan32~0_combout\);

-- Location: LCCOMB_X58_Y39_N30
\calculette|hdmi_out0|res_img|process_1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~34_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(8) & (((\calculette|hdmi_out0|res_img|LessThan32~0_combout\) # (!\calculette|hdmi_out0|res_img|h_count\(6))) # (!\calculette|hdmi_out0|res_img|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(5),
	datab => \calculette|hdmi_out0|res_img|h_count\(6),
	datac => \calculette|hdmi_out0|res_img|LessThan32~0_combout\,
	datad => \calculette|hdmi_out0|res_img|h_count\(8),
	combout => \calculette|hdmi_out0|res_img|process_1~34_combout\);

-- Location: LCCOMB_X58_Y39_N12
\calculette|hdmi_out0|res_img|process_1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~35_combout\ = (\calculette|hdmi_out0|res_img|process_1~34_combout\) # ((\calculette|hdmi_out0|res_img|h_count\(7) & (\calculette|hdmi_out0|res_img|h_count\(8))) # (!\calculette|hdmi_out0|res_img|h_count\(7) & 
-- ((!\calculette|hdmi_out0|res_img|process_1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(7),
	datab => \calculette|hdmi_out0|res_img|h_count\(8),
	datac => \calculette|hdmi_out0|res_img|process_1~34_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~11_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~35_combout\);

-- Location: LCCOMB_X58_Y41_N0
\calculette|hdmi_out0|res_img|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~0_combout\ = \calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|choix_d0|Mux3~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|sepRes|int_input[31]~0_combout\,
	datad => \calculette|choix_d0|Mux3~7_combout\,
	combout => \calculette|hdmi_out0|res_img|Add2~0_combout\);

-- Location: LCCOMB_X56_Y37_N8
\calculette|hdmi_out0|res_img|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~1_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & (\calculette|hdmi_out0|res_img|Add2~0_combout\ $ (VCC))) # (!\calculette|sepRes|int_input[31]~0_combout\ & (\calculette|hdmi_out0|res_img|Add2~0_combout\ & 
-- VCC))
-- \calculette|hdmi_out0|res_img|Add2~2\ = CARRY((\calculette|sepRes|int_input[31]~0_combout\ & \calculette|hdmi_out0|res_img|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~0_combout\,
	datad => VCC,
	combout => \calculette|hdmi_out0|res_img|Add2~1_combout\,
	cout => \calculette|hdmi_out0|res_img|Add2~2\);

-- Location: LCCOMB_X56_Y41_N12
\calculette|hdmi_out0|res_img|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add4~0_combout\ = (\calculette|choix_d0|Mux2~2_combout\ & ((GND) # (!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\))) # (!\calculette|choix_d0|Mux2~2_combout\ & 
-- (\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ $ (GND)))
-- \calculette|hdmi_out0|res_img|Add4~1\ = CARRY((\calculette|choix_d0|Mux2~2_combout\) # (!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|choix_d0|Mux2~2_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datad => VCC,
	combout => \calculette|hdmi_out0|res_img|Add4~0_combout\,
	cout => \calculette|hdmi_out0|res_img|Add4~1\);

-- Location: LCCOMB_X56_Y41_N14
\calculette|hdmi_out0|res_img|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add4~2_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & ((\calculette|choix_d0|Mux1~1_combout\ & (!\calculette|hdmi_out0|res_img|Add4~1\)) # (!\calculette|choix_d0|Mux1~1_combout\ & 
-- ((\calculette|hdmi_out0|res_img|Add4~1\) # (GND))))) # (!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & ((\calculette|choix_d0|Mux1~1_combout\ & (\calculette|hdmi_out0|res_img|Add4~1\ & VCC)) # 
-- (!\calculette|choix_d0|Mux1~1_combout\ & (!\calculette|hdmi_out0|res_img|Add4~1\))))
-- \calculette|hdmi_out0|res_img|Add4~3\ = CARRY((\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & ((!\calculette|hdmi_out0|res_img|Add4~1\) # (!\calculette|choix_d0|Mux1~1_combout\))) # 
-- (!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & (!\calculette|choix_d0|Mux1~1_combout\ & !\calculette|hdmi_out0|res_img|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datab => \calculette|choix_d0|Mux1~1_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add4~1\,
	combout => \calculette|hdmi_out0|res_img|Add4~2_combout\,
	cout => \calculette|hdmi_out0|res_img|Add4~3\);

-- Location: LCCOMB_X56_Y37_N10
\calculette|hdmi_out0|res_img|Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~3_combout\ = (\calculette|hdmi_out0|res_img|Add2~2\ & (\calculette|hdmi_out0|res_img|Add4~0_combout\ $ ((!\calculette|sepRes|int_input[31]~0_combout\)))) # (!\calculette|hdmi_out0|res_img|Add2~2\ & 
-- ((\calculette|hdmi_out0|res_img|Add4~0_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\)) # (GND)))
-- \calculette|hdmi_out0|res_img|Add2~4\ = CARRY((\calculette|hdmi_out0|res_img|Add4~0_combout\ $ (!\calculette|sepRes|int_input[31]~0_combout\)) # (!\calculette|hdmi_out0|res_img|Add2~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add4~0_combout\,
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add2~2\,
	combout => \calculette|hdmi_out0|res_img|Add2~3_combout\,
	cout => \calculette|hdmi_out0|res_img|Add2~4\);

-- Location: LCCOMB_X56_Y37_N12
\calculette|hdmi_out0|res_img|Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~5_combout\ = (\calculette|hdmi_out0|res_img|Add2~4\ & ((\calculette|hdmi_out0|res_img|Add4~2_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\)))) # (!\calculette|hdmi_out0|res_img|Add2~4\ & 
-- (\calculette|hdmi_out0|res_img|Add4~2_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\ $ (VCC))))
-- \calculette|hdmi_out0|res_img|Add2~6\ = CARRY((!\calculette|hdmi_out0|res_img|Add2~4\ & (\calculette|hdmi_out0|res_img|Add4~2_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add4~2_combout\,
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add2~4\,
	combout => \calculette|hdmi_out0|res_img|Add2~5_combout\,
	cout => \calculette|hdmi_out0|res_img|Add2~6\);

-- Location: LCCOMB_X56_Y41_N0
\calculette|hdmi_out0|res_img|Add3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add3~7_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\) # 
-- ((\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ & \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\)))) # (!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & 
-- (\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ & (\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\,
	combout => \calculette|hdmi_out0|res_img|Add3~7_combout\);

-- Location: LCCOMB_X56_Y41_N6
\calculette|hdmi_out0|res_img|Add3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add3~9_combout\ = (\calculette|hdmi_out0|res_img|Add3~7_combout\) # ((\calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\ & (\calculette|sepRes|int_input[31]~0_combout\ & 
-- \calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\,
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \calculette|hdmi_out0|res_img|Add3~7_combout\,
	combout => \calculette|hdmi_out0|res_img|Add3~9_combout\);

-- Location: LCCOMB_X56_Y41_N10
\calculette|hdmi_out0|res_img|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add3~6_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & (\calculette|sepRes|Div0|auto_generated|divider|_~0_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\) # 
-- (!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\)))) # (!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & 
-- ((\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\) # (!\calculette|sepRes|Div0|auto_generated|divider|_~0_combout\))) # (!\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & 
-- ((\calculette|sepRes|Div0|auto_generated|divider|_~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\,
	combout => \calculette|hdmi_out0|res_img|Add3~6_combout\);

-- Location: LCCOMB_X56_Y41_N2
\calculette|hdmi_out0|res_img|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add3~8_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\ & ((\calculette|sepRes|int_input[31]~0_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\))) # 
-- (!\calculette|sepRes|int_input[31]~0_combout\ & (!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \calculette|hdmi_out0|res_img|Add3~8_combout\);

-- Location: LCCOMB_X56_Y41_N4
\calculette|hdmi_out0|res_img|Add3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add3~5_combout\ = \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ $ (((\calculette|sepRes|int_input[31]~0_combout\ & (\calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\ $ 
-- (\calculette|hdmi_out0|res_img|Add3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\,
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datad => \calculette|hdmi_out0|res_img|Add3~8_combout\,
	combout => \calculette|hdmi_out0|res_img|Add3~5_combout\);

-- Location: LCCOMB_X56_Y41_N16
\calculette|hdmi_out0|res_img|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add4~4_combout\ = ((\calculette|choix_d0|Mux0~9_combout\ $ (\calculette|hdmi_out0|res_img|Add3~4_combout\ $ (\calculette|hdmi_out0|res_img|Add4~3\)))) # (GND)
-- \calculette|hdmi_out0|res_img|Add4~5\ = CARRY((\calculette|choix_d0|Mux0~9_combout\ & ((!\calculette|hdmi_out0|res_img|Add4~3\) # (!\calculette|hdmi_out0|res_img|Add3~4_combout\))) # (!\calculette|choix_d0|Mux0~9_combout\ & 
-- (!\calculette|hdmi_out0|res_img|Add3~4_combout\ & !\calculette|hdmi_out0|res_img|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|choix_d0|Mux0~9_combout\,
	datab => \calculette|hdmi_out0|res_img|Add3~4_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add4~3\,
	combout => \calculette|hdmi_out0|res_img|Add4~4_combout\,
	cout => \calculette|hdmi_out0|res_img|Add4~5\);

-- Location: LCCOMB_X56_Y41_N18
\calculette|hdmi_out0|res_img|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add4~6_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & ((\calculette|hdmi_out0|res_img|Add3~5_combout\ & (!\calculette|hdmi_out0|res_img|Add4~5\)) # (!\calculette|hdmi_out0|res_img|Add3~5_combout\ & 
-- (\calculette|hdmi_out0|res_img|Add4~5\ & VCC)))) # (!\calculette|sepRes|int_input[31]~0_combout\ & ((\calculette|hdmi_out0|res_img|Add3~5_combout\ & ((\calculette|hdmi_out0|res_img|Add4~5\) # (GND))) # (!\calculette|hdmi_out0|res_img|Add3~5_combout\ & 
-- (!\calculette|hdmi_out0|res_img|Add4~5\))))
-- \calculette|hdmi_out0|res_img|Add4~7\ = CARRY((\calculette|sepRes|int_input[31]~0_combout\ & (\calculette|hdmi_out0|res_img|Add3~5_combout\ & !\calculette|hdmi_out0|res_img|Add4~5\)) # (!\calculette|sepRes|int_input[31]~0_combout\ & 
-- ((\calculette|hdmi_out0|res_img|Add3~5_combout\) # (!\calculette|hdmi_out0|res_img|Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|hdmi_out0|res_img|Add3~5_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add4~5\,
	combout => \calculette|hdmi_out0|res_img|Add4~6_combout\,
	cout => \calculette|hdmi_out0|res_img|Add4~7\);

-- Location: LCCOMB_X56_Y41_N20
\calculette|hdmi_out0|res_img|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add4~8_combout\ = ((\calculette|hdmi_out0|res_img|Add3~6_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|hdmi_out0|res_img|Add4~7\)))) # (GND)
-- \calculette|hdmi_out0|res_img|Add4~9\ = CARRY((\calculette|hdmi_out0|res_img|Add3~6_combout\ & (\calculette|sepRes|int_input[31]~0_combout\ & !\calculette|hdmi_out0|res_img|Add4~7\)) # (!\calculette|hdmi_out0|res_img|Add3~6_combout\ & 
-- ((\calculette|sepRes|int_input[31]~0_combout\) # (!\calculette|hdmi_out0|res_img|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add3~6_combout\,
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add4~7\,
	combout => \calculette|hdmi_out0|res_img|Add4~8_combout\,
	cout => \calculette|hdmi_out0|res_img|Add4~9\);

-- Location: LCCOMB_X56_Y41_N22
\calculette|hdmi_out0|res_img|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add4~10_combout\ = (\calculette|hdmi_out0|res_img|Add3~9_combout\ & ((\calculette|sepRes|int_input[31]~0_combout\ & (!\calculette|hdmi_out0|res_img|Add4~9\)) # (!\calculette|sepRes|int_input[31]~0_combout\ & 
-- ((\calculette|hdmi_out0|res_img|Add4~9\) # (GND))))) # (!\calculette|hdmi_out0|res_img|Add3~9_combout\ & ((\calculette|sepRes|int_input[31]~0_combout\ & (\calculette|hdmi_out0|res_img|Add4~9\ & VCC)) # (!\calculette|sepRes|int_input[31]~0_combout\ & 
-- (!\calculette|hdmi_out0|res_img|Add4~9\))))
-- \calculette|hdmi_out0|res_img|Add4~11\ = CARRY((\calculette|hdmi_out0|res_img|Add3~9_combout\ & ((!\calculette|hdmi_out0|res_img|Add4~9\) # (!\calculette|sepRes|int_input[31]~0_combout\))) # (!\calculette|hdmi_out0|res_img|Add3~9_combout\ & 
-- (!\calculette|sepRes|int_input[31]~0_combout\ & !\calculette|hdmi_out0|res_img|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add3~9_combout\,
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add4~9\,
	combout => \calculette|hdmi_out0|res_img|Add4~10_combout\,
	cout => \calculette|hdmi_out0|res_img|Add4~11\);

-- Location: LCCOMB_X56_Y41_N24
\calculette|hdmi_out0|res_img|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add4~12_combout\ = ((\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ $ (\calculette|hdmi_out0|res_img|Add4~11\)))) # (GND)
-- \calculette|hdmi_out0|res_img|Add4~13\ = CARRY((\calculette|sepRes|int_input[31]~0_combout\ & ((!\calculette|hdmi_out0|res_img|Add4~11\) # (!\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\))) # (!\calculette|sepRes|int_input[31]~0_combout\ & 
-- (!\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & !\calculette|hdmi_out0|res_img|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add4~11\,
	combout => \calculette|hdmi_out0|res_img|Add4~12_combout\,
	cout => \calculette|hdmi_out0|res_img|Add4~13\);

-- Location: LCCOMB_X56_Y37_N14
\calculette|hdmi_out0|res_img|Add2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~7_combout\ = (\calculette|hdmi_out0|res_img|Add2~6\ & (\calculette|sepRes|int_input[31]~0_combout\ $ ((!\calculette|hdmi_out0|res_img|Add4~4_combout\)))) # (!\calculette|hdmi_out0|res_img|Add2~6\ & 
-- ((\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|hdmi_out0|res_img|Add4~4_combout\)) # (GND)))
-- \calculette|hdmi_out0|res_img|Add2~8\ = CARRY((\calculette|sepRes|int_input[31]~0_combout\ $ (!\calculette|hdmi_out0|res_img|Add4~4_combout\)) # (!\calculette|hdmi_out0|res_img|Add2~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|hdmi_out0|res_img|Add4~4_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add2~6\,
	combout => \calculette|hdmi_out0|res_img|Add2~7_combout\,
	cout => \calculette|hdmi_out0|res_img|Add2~8\);

-- Location: LCCOMB_X56_Y37_N16
\calculette|hdmi_out0|res_img|Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~9_combout\ = (\calculette|hdmi_out0|res_img|Add2~8\ & ((\calculette|hdmi_out0|res_img|Add4~6_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\)))) # (!\calculette|hdmi_out0|res_img|Add2~8\ & 
-- (\calculette|hdmi_out0|res_img|Add4~6_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\ $ (VCC))))
-- \calculette|hdmi_out0|res_img|Add2~10\ = CARRY((!\calculette|hdmi_out0|res_img|Add2~8\ & (\calculette|hdmi_out0|res_img|Add4~6_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add4~6_combout\,
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add2~8\,
	combout => \calculette|hdmi_out0|res_img|Add2~9_combout\,
	cout => \calculette|hdmi_out0|res_img|Add2~10\);

-- Location: LCCOMB_X56_Y37_N18
\calculette|hdmi_out0|res_img|Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~11_combout\ = (\calculette|hdmi_out0|res_img|Add2~10\ & (\calculette|hdmi_out0|res_img|Add4~8_combout\ $ ((!\calculette|sepRes|int_input[31]~0_combout\)))) # (!\calculette|hdmi_out0|res_img|Add2~10\ & 
-- ((\calculette|hdmi_out0|res_img|Add4~8_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\)) # (GND)))
-- \calculette|hdmi_out0|res_img|Add2~12\ = CARRY((\calculette|hdmi_out0|res_img|Add4~8_combout\ $ (!\calculette|sepRes|int_input[31]~0_combout\)) # (!\calculette|hdmi_out0|res_img|Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add4~8_combout\,
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add2~10\,
	combout => \calculette|hdmi_out0|res_img|Add2~11_combout\,
	cout => \calculette|hdmi_out0|res_img|Add2~12\);

-- Location: LCCOMB_X56_Y37_N20
\calculette|hdmi_out0|res_img|Add2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~13_combout\ = (\calculette|hdmi_out0|res_img|Add2~12\ & ((\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|hdmi_out0|res_img|Add4~10_combout\)))) # (!\calculette|hdmi_out0|res_img|Add2~12\ & 
-- (\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|hdmi_out0|res_img|Add4~10_combout\ $ (VCC))))
-- \calculette|hdmi_out0|res_img|Add2~14\ = CARRY((!\calculette|hdmi_out0|res_img|Add2~12\ & (\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|hdmi_out0|res_img|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|hdmi_out0|res_img|Add4~10_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add2~12\,
	combout => \calculette|hdmi_out0|res_img|Add2~13_combout\,
	cout => \calculette|hdmi_out0|res_img|Add2~14\);

-- Location: LCCOMB_X56_Y37_N22
\calculette|hdmi_out0|res_img|Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~15_combout\ = (\calculette|hdmi_out0|res_img|Add2~14\ & (\calculette|sepRes|int_input[31]~0_combout\ $ ((!\calculette|hdmi_out0|res_img|Add4~12_combout\)))) # (!\calculette|hdmi_out0|res_img|Add2~14\ & 
-- ((\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|hdmi_out0|res_img|Add4~12_combout\)) # (GND)))
-- \calculette|hdmi_out0|res_img|Add2~16\ = CARRY((\calculette|sepRes|int_input[31]~0_combout\ $ (!\calculette|hdmi_out0|res_img|Add4~12_combout\)) # (!\calculette|hdmi_out0|res_img|Add2~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|hdmi_out0|res_img|Add4~12_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add2~14\,
	combout => \calculette|hdmi_out0|res_img|Add2~15_combout\,
	cout => \calculette|hdmi_out0|res_img|Add2~16\);

-- Location: LCCOMB_X56_Y37_N4
\calculette|hdmi_out0|res_img|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal11~0_combout\ = (!\calculette|hdmi_out0|res_img|Add2~15_combout\ & (!\calculette|hdmi_out0|res_img|Add2~11_combout\ & (!\calculette|hdmi_out0|res_img|Add2~9_combout\ & !\calculette|hdmi_out0|res_img|Add2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~15_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~11_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~9_combout\,
	datad => \calculette|hdmi_out0|res_img|Add2~13_combout\,
	combout => \calculette|hdmi_out0|res_img|Equal11~0_combout\);

-- Location: LCCOMB_X56_Y41_N26
\calculette|hdmi_out0|res_img|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add4~14_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & (!\calculette|hdmi_out0|res_img|Add4~13\)) # 
-- (!\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & (\calculette|hdmi_out0|res_img|Add4~13\ & VCC)))) # (!\calculette|sepRes|int_input[31]~0_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & 
-- ((\calculette|hdmi_out0|res_img|Add4~13\) # (GND))) # (!\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & (!\calculette|hdmi_out0|res_img|Add4~13\))))
-- \calculette|hdmi_out0|res_img|Add4~15\ = CARRY((\calculette|sepRes|int_input[31]~0_combout\ & (\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & !\calculette|hdmi_out0|res_img|Add4~13\)) # (!\calculette|sepRes|int_input[31]~0_combout\ & 
-- ((\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\) # (!\calculette|hdmi_out0|res_img|Add4~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add4~13\,
	combout => \calculette|hdmi_out0|res_img|Add4~14_combout\,
	cout => \calculette|hdmi_out0|res_img|Add4~15\);

-- Location: LCCOMB_X56_Y41_N28
\calculette|hdmi_out0|res_img|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add4~16_combout\ = \calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|hdmi_out0|res_img|Add4~15\ $ (\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\,
	cin => \calculette|hdmi_out0|res_img|Add4~15\,
	combout => \calculette|hdmi_out0|res_img|Add4~16_combout\);

-- Location: LCCOMB_X56_Y37_N24
\calculette|hdmi_out0|res_img|Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~17_combout\ = (\calculette|hdmi_out0|res_img|Add2~16\ & ((\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|hdmi_out0|res_img|Add4~14_combout\)))) # (!\calculette|hdmi_out0|res_img|Add2~16\ & 
-- (\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|hdmi_out0|res_img|Add4~14_combout\ $ (VCC))))
-- \calculette|hdmi_out0|res_img|Add2~18\ = CARRY((!\calculette|hdmi_out0|res_img|Add2~16\ & (\calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|hdmi_out0|res_img|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|hdmi_out0|res_img|Add4~14_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add2~16\,
	combout => \calculette|hdmi_out0|res_img|Add2~17_combout\,
	cout => \calculette|hdmi_out0|res_img|Add2~18\);

-- Location: LCCOMB_X56_Y37_N26
\calculette|hdmi_out0|res_img|Add2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~19_combout\ = (\calculette|hdmi_out0|res_img|Add2~18\ & (\calculette|hdmi_out0|res_img|Add4~16_combout\ $ ((!\calculette|sepRes|int_input[31]~0_combout\)))) # (!\calculette|hdmi_out0|res_img|Add2~18\ & 
-- ((\calculette|hdmi_out0|res_img|Add4~16_combout\ $ (\calculette|sepRes|int_input[31]~0_combout\)) # (GND)))
-- \calculette|hdmi_out0|res_img|Add2~20\ = CARRY((\calculette|hdmi_out0|res_img|Add4~16_combout\ $ (!\calculette|sepRes|int_input[31]~0_combout\)) # (!\calculette|hdmi_out0|res_img|Add2~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add4~16_combout\,
	datab => \calculette|sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \calculette|hdmi_out0|res_img|Add2~18\,
	combout => \calculette|hdmi_out0|res_img|Add2~19_combout\,
	cout => \calculette|hdmi_out0|res_img|Add2~20\);

-- Location: LCCOMB_X56_Y37_N28
\calculette|hdmi_out0|res_img|Add2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Add2~21_combout\ = \calculette|sepRes|int_input[31]~0_combout\ $ (\calculette|hdmi_out0|res_img|Add2~20\ $ (!\calculette|hdmi_out0|res_img|Add4~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datad => \calculette|hdmi_out0|res_img|Add4~16_combout\,
	cin => \calculette|hdmi_out0|res_img|Add2~20\,
	combout => \calculette|hdmi_out0|res_img|Add2~21_combout\);

-- Location: LCCOMB_X55_Y37_N30
\calculette|hdmi_out0|res_img|Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal11~2_combout\ = (!\calculette|hdmi_out0|res_img|Add2~7_combout\ & !\calculette|hdmi_out0|res_img|Add2~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|Add2~7_combout\,
	datad => \calculette|hdmi_out0|res_img|Add2~17_combout\,
	combout => \calculette|hdmi_out0|res_img|Equal11~2_combout\);

-- Location: LCCOMB_X55_Y37_N20
\calculette|hdmi_out0|res_img|Equal11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal11~3_combout\ = (\calculette|hdmi_out0|res_img|Equal11~0_combout\ & (!\calculette|hdmi_out0|res_img|Add2~21_combout\ & (\calculette|hdmi_out0|res_img|Equal11~2_combout\ & 
-- !\calculette|hdmi_out0|res_img|Add2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Equal11~0_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~21_combout\,
	datac => \calculette|hdmi_out0|res_img|Equal11~2_combout\,
	datad => \calculette|hdmi_out0|res_img|Add2~19_combout\,
	combout => \calculette|hdmi_out0|res_img|Equal11~3_combout\);

-- Location: LCCOMB_X55_Y37_N6
\calculette|hdmi_out0|res_img|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal13~0_combout\ = (\calculette|hdmi_out0|res_img|Add2~1_combout\ & (!\calculette|hdmi_out0|res_img|Add2~5_combout\ & (\calculette|hdmi_out0|res_img|Add2~3_combout\ & \calculette|hdmi_out0|res_img|Equal11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~1_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~5_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~3_combout\,
	datad => \calculette|hdmi_out0|res_img|Equal11~3_combout\,
	combout => \calculette|hdmi_out0|res_img|Equal13~0_combout\);

-- Location: LCCOMB_X55_Y37_N0
\calculette|hdmi_out0|res_img|process_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~15_combout\ = (\calculette|hdmi_out0|res_img|Add2~3_combout\ & (!\calculette|hdmi_out0|res_img|Add2~7_combout\ & \calculette|hdmi_out0|res_img|Add2~5_combout\)) # (!\calculette|hdmi_out0|res_img|Add2~3_combout\ & 
-- (\calculette|hdmi_out0|res_img|Add2~7_combout\ & !\calculette|hdmi_out0|res_img|Add2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|Add2~3_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~7_combout\,
	datad => \calculette|hdmi_out0|res_img|Add2~5_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~15_combout\);

-- Location: LCCOMB_X56_Y37_N6
\calculette|hdmi_out0|res_img|process_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~14_combout\ = (\calculette|hdmi_out0|res_img|Add2~17_combout\) # ((\calculette|hdmi_out0|res_img|Add2~19_combout\) # (\calculette|hdmi_out0|res_img|Add2~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|Add2~17_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~19_combout\,
	datad => \calculette|hdmi_out0|res_img|Add2~21_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~14_combout\);

-- Location: LCCOMB_X54_Y37_N24
\calculette|hdmi_out0|res_img|process_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~16_combout\ = (\calculette|hdmi_out0|res_img|Add2~1_combout\) # (((\calculette|hdmi_out0|res_img|process_1~14_combout\) # (!\calculette|hdmi_out0|res_img|Equal11~0_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|process_1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~1_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~15_combout\,
	datac => \calculette|hdmi_out0|res_img|Equal11~0_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~14_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~16_combout\);

-- Location: LCCOMB_X56_Y37_N2
\calculette|hdmi_out0|res_img|process_1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~17_combout\ = (\calculette|hdmi_out0|res_img|Add2~3_combout\) # (\calculette|hdmi_out0|res_img|Add2~5_combout\ $ (!\calculette|hdmi_out0|res_img|Add2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~3_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~5_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~7_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~17_combout\);

-- Location: LCCOMB_X56_Y37_N0
\calculette|hdmi_out0|res_img|Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal11~1_combout\ = (!\calculette|hdmi_out0|res_img|Add2~17_combout\ & (!\calculette|hdmi_out0|res_img|Add2~19_combout\ & !\calculette|hdmi_out0|res_img|Add2~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|Add2~17_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~19_combout\,
	datad => \calculette|hdmi_out0|res_img|Add2~21_combout\,
	combout => \calculette|hdmi_out0|res_img|Equal11~1_combout\);

-- Location: LCCOMB_X56_Y37_N30
\calculette|hdmi_out0|res_img|process_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~18_combout\ = ((\calculette|hdmi_out0|res_img|process_1~17_combout\) # ((!\calculette|hdmi_out0|res_img|Equal11~1_combout\) # (!\calculette|hdmi_out0|res_img|Equal11~0_combout\))) # 
-- (!\calculette|hdmi_out0|res_img|Add2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~1_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~17_combout\,
	datac => \calculette|hdmi_out0|res_img|Equal11~0_combout\,
	datad => \calculette|hdmi_out0|res_img|Equal11~1_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~18_combout\);

-- Location: LCCOMB_X55_Y37_N16
\calculette|hdmi_out0|res_img|process_1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~54_combout\ = (\calculette|hdmi_out0|res_img|Add2~3_combout\ $ (((\calculette|hdmi_out0|res_img|Add2~1_combout\ & \calculette|hdmi_out0|res_img|Add2~5_combout\)))) # 
-- (!\calculette|hdmi_out0|res_img|Equal11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~1_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~5_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~3_combout\,
	datad => \calculette|hdmi_out0|res_img|Equal11~3_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~54_combout\);

-- Location: LCCOMB_X54_Y37_N26
\calculette|hdmi_out0|res_img|process_1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~55_combout\ = (\calculette|hdmi_out0|res_img|Equal13~0_combout\) # (((!\calculette|hdmi_out0|res_img|process_1~54_combout\) # (!\calculette|hdmi_out0|res_img|process_1~18_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|process_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Equal13~0_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~16_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~18_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~54_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~55_combout\);

-- Location: LCCOMB_X50_Y39_N2
\calculette|hdmi_out0|res_img|process_1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~48_combout\ = (\calculette|hdmi_out0|res_img|v_count\(3)) # ((\calculette|hdmi_out0|res_img|v_count\(2) & ((\calculette|hdmi_out0|res_img|v_count\(0)) # (\calculette|hdmi_out0|res_img|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(2),
	datab => \calculette|hdmi_out0|res_img|v_count\(0),
	datac => \calculette|hdmi_out0|res_img|v_count\(3),
	datad => \calculette|hdmi_out0|res_img|v_count\(1),
	combout => \calculette|hdmi_out0|res_img|process_1~48_combout\);

-- Location: LCCOMB_X51_Y39_N30
\calculette|hdmi_out0|res_img|process_1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~49_combout\ = (\calculette|hdmi_out0|res_img|v_count\(9)) # ((\calculette|hdmi_out0|res_img|v_count\(5)) # ((\calculette|hdmi_out0|res_img|v_count\(4) & \calculette|hdmi_out0|res_img|process_1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(9),
	datab => \calculette|hdmi_out0|res_img|v_count\(5),
	datac => \calculette|hdmi_out0|res_img|v_count\(4),
	datad => \calculette|hdmi_out0|res_img|process_1~48_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~49_combout\);

-- Location: LCCOMB_X51_Y39_N28
\calculette|hdmi_out0|res_img|process_1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~50_combout\ = (\calculette|hdmi_out0|res_img|v_count\(8) & (((\calculette|hdmi_out0|res_img|LessThan28~5_combout\) # (!\calculette|hdmi_out0|res_img|v_count\(7))))) # (!\calculette|hdmi_out0|res_img|v_count\(8) & 
-- (\calculette|hdmi_out0|res_img|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(9),
	datab => \calculette|hdmi_out0|res_img|v_count\(7),
	datac => \calculette|hdmi_out0|res_img|v_count\(8),
	datad => \calculette|hdmi_out0|res_img|LessThan28~5_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~50_combout\);

-- Location: LCCOMB_X51_Y39_N6
\calculette|hdmi_out0|res_img|process_1~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~85_combout\ = (\calculette|hdmi_out0|res_img|process_1~50_combout\ & ((\calculette|hdmi_out0|res_img|v_count\(6)) # ((\calculette|hdmi_out0|res_img|v_count\(7)) # 
-- (\calculette|hdmi_out0|res_img|process_1~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(6),
	datab => \calculette|hdmi_out0|res_img|v_count\(7),
	datac => \calculette|hdmi_out0|res_img|process_1~49_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~50_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~85_combout\);

-- Location: LCCOMB_X52_Y37_N20
\calculette|hdmi_out0|res_img|process_1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~56_combout\ = (\calculette|hdmi_out0|res_img|process_1~85_combout\ & !\calculette|hdmi_out0|res_img|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|process_1~85_combout\,
	datad => \calculette|hdmi_out0|res_img|v_count\(9),
	combout => \calculette|hdmi_out0|res_img|process_1~56_combout\);

-- Location: LCCOMB_X54_Y37_N8
\calculette|hdmi_out0|res_img|process_1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~57_combout\ = (\calculette|eror~2_combout\ & (!\calculette|hdmi_out0|res_img|process_1~35_combout\ & (\calculette|hdmi_out0|res_img|process_1~55_combout\ & \calculette|hdmi_out0|res_img|process_1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|eror~2_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~35_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~55_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~56_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~57_combout\);

-- Location: LCCOMB_X58_Y39_N14
\calculette|hdmi_out0|res_img|process_1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~37_combout\ = ((\calculette|hdmi_out0|res_img|h_count\(4) & ((\calculette|hdmi_out0|res_img|h_count\(3)) # (!\calculette|hdmi_out0|res_img|LessThan34~0_combout\)))) # 
-- (!\calculette|hdmi_out0|res_img|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(3),
	datab => \calculette|hdmi_out0|res_img|LessThan7~0_combout\,
	datac => \calculette|hdmi_out0|res_img|LessThan34~0_combout\,
	datad => \calculette|hdmi_out0|res_img|h_count\(4),
	combout => \calculette|hdmi_out0|res_img|process_1~37_combout\);

-- Location: LCCOMB_X58_Y39_N20
\calculette|hdmi_out0|res_img|process_1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~38_combout\ = (\calculette|hdmi_out0|res_img|h_count\(8)) # ((\calculette|hdmi_out0|res_img|LessThan29~2_combout\) # ((\calculette|hdmi_out0|res_img|h_count\(7) & 
-- \calculette|hdmi_out0|res_img|process_1~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(7),
	datab => \calculette|hdmi_out0|res_img|h_count\(8),
	datac => \calculette|hdmi_out0|res_img|process_1~37_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan29~2_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~38_combout\);

-- Location: LCCOMB_X54_Y37_N16
\calculette|hdmi_out0|res_img|process_1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~51_combout\ = (!\calculette|hdmi_out0|res_img|v_count\(9) & (\calculette|hdmi_out0|res_img|process_1~85_combout\ & !\calculette|hdmi_out0|res_img|process_1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(9),
	datac => \calculette|hdmi_out0|res_img|process_1~85_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~38_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~51_combout\);

-- Location: LCCOMB_X55_Y37_N24
\calculette|hdmi_out0|res_img|process_1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~45_combout\ = (!\calculette|hdmi_out0|res_img|Add2~21_combout\ & (!\calculette|hdmi_out0|res_img|Add2~19_combout\ & (\calculette|hdmi_out0|res_img|Add2~3_combout\ $ (\calculette|hdmi_out0|res_img|Add2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~3_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~21_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~5_combout\,
	datad => \calculette|hdmi_out0|res_img|Add2~19_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~45_combout\);

-- Location: LCCOMB_X55_Y37_N2
\calculette|hdmi_out0|res_img|process_1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~46_combout\ = (!\calculette|hdmi_out0|res_img|Add2~1_combout\ & (!\calculette|hdmi_out0|res_img|Add2~7_combout\ & (!\calculette|hdmi_out0|res_img|Add2~17_combout\ & 
-- \calculette|hdmi_out0|res_img|process_1~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~1_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~7_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~17_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~45_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~46_combout\);

-- Location: LCCOMB_X54_Y37_N22
\calculette|hdmi_out0|res_img|process_1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~47_combout\ = (\calculette|hdmi_out0|res_img|process_1~18_combout\ & (!\calculette|hdmi_out0|res_img|Equal13~0_combout\ & ((!\calculette|hdmi_out0|res_img|Equal11~0_combout\) # 
-- (!\calculette|hdmi_out0|res_img|process_1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~46_combout\,
	datab => \calculette|hdmi_out0|res_img|Equal11~0_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~18_combout\,
	datad => \calculette|hdmi_out0|res_img|Equal13~0_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~47_combout\);

-- Location: LCCOMB_X55_Y37_N18
\calculette|hdmi_out0|res_img|process_1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~19_combout\ = (\calculette|hdmi_out0|res_img|Add2~1_combout\) # ((\calculette|hdmi_out0|res_img|Add2~5_combout\) # ((\calculette|hdmi_out0|res_img|Add2~17_combout\) # 
-- (\calculette|hdmi_out0|res_img|Add2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~1_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~5_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~17_combout\,
	datad => \calculette|hdmi_out0|res_img|Add2~19_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~19_combout\);

-- Location: LCCOMB_X55_Y37_N8
\calculette|hdmi_out0|res_img|process_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~20_combout\ = ((\calculette|hdmi_out0|res_img|Add2~21_combout\) # ((\calculette|hdmi_out0|res_img|Add2~7_combout\) # (\calculette|hdmi_out0|res_img|process_1~19_combout\))) # 
-- (!\calculette|hdmi_out0|res_img|Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Equal11~0_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~21_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~7_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~19_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~20_combout\);

-- Location: LCCOMB_X54_Y37_N2
\calculette|hdmi_out0|res_img|process_1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~52_combout\ = (\calculette|eror~2_combout\ & (\calculette|hdmi_out0|res_img|process_1~16_combout\ & ((\calculette|hdmi_out0|res_img|process_1~20_combout\) # (!\calculette|hdmi_out0|res_img|process_1~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|eror~2_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~51_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~20_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~16_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~52_combout\);

-- Location: LCCOMB_X54_Y37_N4
\calculette|hdmi_out0|res_img|process_1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~53_combout\ = (\calculette|hdmi_out0|res_img|process_1~44_combout\ & (((\calculette|hdmi_out0|res_img|process_1~47_combout\ & \calculette|hdmi_out0|res_img|process_1~52_combout\)))) # 
-- (!\calculette|hdmi_out0|res_img|process_1~44_combout\ & (((\calculette|hdmi_out0|res_img|process_1~52_combout\)) # (!\calculette|hdmi_out0|res_img|process_1~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~44_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~51_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~47_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~52_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~53_combout\);

-- Location: LCCOMB_X51_Y39_N4
\calculette|hdmi_out0|res_img|LessThan23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan23~0_combout\ = (\calculette|hdmi_out0|res_img|v_count\(3) & ((\calculette|hdmi_out0|res_img|v_count\(1)) # ((\calculette|hdmi_out0|res_img|v_count\(2)) # (\calculette|hdmi_out0|res_img|v_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(3),
	datab => \calculette|hdmi_out0|res_img|v_count\(1),
	datac => \calculette|hdmi_out0|res_img|v_count\(2),
	datad => \calculette|hdmi_out0|res_img|v_count\(0),
	combout => \calculette|hdmi_out0|res_img|LessThan23~0_combout\);

-- Location: LCCOMB_X52_Y39_N22
\calculette|hdmi_out0|res_img|LessThan23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan23~1_combout\ = (\calculette|hdmi_out0|res_img|v_count\(7) & ((\calculette|hdmi_out0|res_img|v_count\(6)) # ((\calculette|hdmi_out0|res_img|LessThan23~0_combout\) # 
-- (!\calculette|hdmi_out0|res_img|process_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(6),
	datab => \calculette|hdmi_out0|res_img|v_count\(7),
	datac => \calculette|hdmi_out0|res_img|LessThan23~0_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~8_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan23~1_combout\);

-- Location: LCCOMB_X52_Y39_N12
\calculette|hdmi_out0|res_img|process_1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~33_combout\ = (!\calculette|hdmi_out0|res_img|v_count\(9) & ((\calculette|hdmi_out0|res_img|v_count\(8) & ((\calculette|hdmi_out0|res_img|LessThan26~1_combout\))) # (!\calculette|hdmi_out0|res_img|v_count\(8) & 
-- (\calculette|hdmi_out0|res_img|LessThan23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(8),
	datab => \calculette|hdmi_out0|res_img|v_count\(9),
	datac => \calculette|hdmi_out0|res_img|LessThan23~1_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan26~1_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~33_combout\);

-- Location: LCCOMB_X54_Y39_N30
\calculette|hdmi_out0|res_img|process_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~36_combout\ = (\calculette|eror~2_combout\ & (\calculette|hdmi_out0|res_img|process_1~33_combout\ & !\calculette|hdmi_out0|res_img|process_1~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|eror~2_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~33_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~35_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~36_combout\);

-- Location: LCCOMB_X55_Y37_N10
\calculette|hdmi_out0|res_img|process_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~30_combout\ = (\calculette|hdmi_out0|res_img|Add2~7_combout\ & (!\calculette|hdmi_out0|res_img|Add2~17_combout\ & (!\calculette|hdmi_out0|res_img|Add2~19_combout\ & !\calculette|hdmi_out0|res_img|Add2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~7_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~17_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~19_combout\,
	datad => \calculette|hdmi_out0|res_img|Add2~21_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~30_combout\);

-- Location: LCCOMB_X55_Y37_N12
\calculette|hdmi_out0|res_img|process_1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~31_combout\ = (\calculette|hdmi_out0|res_img|Add2~5_combout\ & (\calculette|hdmi_out0|res_img|Add2~1_combout\ $ ((\calculette|hdmi_out0|res_img|Add2~3_combout\)))) # (!\calculette|hdmi_out0|res_img|Add2~5_combout\ & 
-- (((!\calculette|hdmi_out0|res_img|Add2~3_combout\ & \calculette|hdmi_out0|res_img|process_1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~1_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~5_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~3_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~30_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~31_combout\);

-- Location: LCCOMB_X55_Y37_N14
\calculette|hdmi_out0|res_img|process_1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~32_combout\ = (\calculette|hdmi_out0|res_img|process_1~31_combout\ & (!\calculette|hdmi_out0|res_img|Add2~5_combout\ & ((\calculette|hdmi_out0|res_img|Equal11~0_combout\) # 
-- (\calculette|hdmi_out0|res_img|Equal11~3_combout\)))) # (!\calculette|hdmi_out0|res_img|process_1~31_combout\ & (((\calculette|hdmi_out0|res_img|Equal11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Equal11~0_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~5_combout\,
	datac => \calculette|hdmi_out0|res_img|Equal11~3_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~31_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~32_combout\);

-- Location: LCCOMB_X55_Y37_N4
\calculette|hdmi_out0|res_img|process_1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~40_combout\ = (\calculette|hdmi_out0|res_img|Add2~1_combout\) # ((\calculette|hdmi_out0|res_img|Add2~3_combout\) # ((\calculette|hdmi_out0|res_img|Add2~17_combout\) # 
-- (\calculette|hdmi_out0|res_img|Add2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~1_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~3_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~17_combout\,
	datad => \calculette|hdmi_out0|res_img|Add2~19_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~40_combout\);

-- Location: LCCOMB_X55_Y37_N22
\calculette|hdmi_out0|res_img|process_1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~41_combout\ = (\calculette|hdmi_out0|res_img|Equal11~0_combout\ & (!\calculette|hdmi_out0|res_img|Add2~7_combout\ & (!\calculette|hdmi_out0|res_img|process_1~40_combout\ & 
-- !\calculette|hdmi_out0|res_img|Add2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Equal11~0_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~7_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~40_combout\,
	datad => \calculette|hdmi_out0|res_img|Add2~21_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~41_combout\);

-- Location: LCCOMB_X54_Y39_N0
\calculette|hdmi_out0|res_img|process_1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~39_combout\ = (\calculette|eror~2_combout\ & (\calculette|hdmi_out0|res_img|process_1~33_combout\ & !\calculette|hdmi_out0|res_img|process_1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|eror~2_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~33_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~38_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~39_combout\);

-- Location: LCCOMB_X54_Y37_N30
\calculette|hdmi_out0|res_img|process_1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~42_combout\ = (\calculette|hdmi_out0|res_img|process_1~39_combout\ & (((\calculette|hdmi_out0|res_img|process_1~41_combout\) # (!\calculette|hdmi_out0|res_img|process_1~16_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|process_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~18_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~41_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~39_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~16_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~42_combout\);

-- Location: LCCOMB_X51_Y39_N26
\calculette|hdmi_out0|res_img|process_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~26_combout\ = (\calculette|hdmi_out0|res_img|v_count\(9)) # (((\calculette|hdmi_out0|res_img|v_count\(8)) # (\calculette|hdmi_out0|res_img|v_count\(6))) # (!\calculette|hdmi_out0|res_img|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(9),
	datab => \calculette|hdmi_out0|res_img|v_count\(7),
	datac => \calculette|hdmi_out0|res_img|v_count\(8),
	datad => \calculette|hdmi_out0|res_img|v_count\(6),
	combout => \calculette|hdmi_out0|res_img|process_1~26_combout\);

-- Location: LCCOMB_X51_Y39_N12
\calculette|hdmi_out0|res_img|process_1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~27_combout\ = (\calculette|hdmi_out0|res_img|v_count\(3)) # ((\calculette|hdmi_out0|res_img|v_count\(4)) # ((\calculette|hdmi_out0|res_img|v_count\(2) & \calculette|hdmi_out0|res_img|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(2),
	datab => \calculette|hdmi_out0|res_img|v_count\(3),
	datac => \calculette|hdmi_out0|res_img|v_count\(4),
	datad => \calculette|hdmi_out0|res_img|v_count\(1),
	combout => \calculette|hdmi_out0|res_img|process_1~27_combout\);

-- Location: LCCOMB_X51_Y39_N24
\calculette|hdmi_out0|res_img|process_1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~84_combout\ = (\calculette|hdmi_out0|res_img|v_count\(5) & (((\calculette|hdmi_out0|res_img|process_1~27_combout\)))) # (!\calculette|hdmi_out0|res_img|v_count\(5) & (!\calculette|hdmi_out0|res_img|v_count\(4) & 
-- (!\calculette|hdmi_out0|res_img|LessThan23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(4),
	datab => \calculette|hdmi_out0|res_img|v_count\(5),
	datac => \calculette|hdmi_out0|res_img|LessThan23~0_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~27_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~84_combout\);

-- Location: LCCOMB_X51_Y39_N14
\calculette|hdmi_out0|res_img|process_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~28_combout\ = (\calculette|eror~2_combout\ & (!\calculette|hdmi_out0|res_img|process_1~26_combout\ & !\calculette|hdmi_out0|res_img|process_1~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|eror~2_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~26_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~84_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~28_combout\);

-- Location: LCCOMB_X55_Y37_N28
\calculette|hdmi_out0|res_img|Equal16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal16~0_combout\ = (\calculette|hdmi_out0|res_img|Add2~1_combout\ & (\calculette|hdmi_out0|res_img|Add2~5_combout\ & (\calculette|hdmi_out0|res_img|Add2~3_combout\ & \calculette|hdmi_out0|res_img|Equal11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Add2~1_combout\,
	datab => \calculette|hdmi_out0|res_img|Add2~5_combout\,
	datac => \calculette|hdmi_out0|res_img|Add2~3_combout\,
	datad => \calculette|hdmi_out0|res_img|Equal11~3_combout\,
	combout => \calculette|hdmi_out0|res_img|Equal16~0_combout\);

-- Location: LCCOMB_X54_Y39_N24
\calculette|hdmi_out0|res_img|process_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~25_combout\ = (\calculette|eror~2_combout\ & (\calculette|hdmi_out0|res_img|v_count\(8) & (!\calculette|hdmi_out0|res_img|v_count\(9) & \calculette|hdmi_out0|res_img|process_1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|eror~2_combout\,
	datab => \calculette|hdmi_out0|res_img|v_count\(8),
	datac => \calculette|hdmi_out0|res_img|v_count\(9),
	datad => \calculette|hdmi_out0|res_img|process_1~24_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~25_combout\);

-- Location: LCCOMB_X54_Y37_N10
\calculette|hdmi_out0|res_img|process_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~21_combout\ = (\calculette|hdmi_out0|res_img|process_1~18_combout\ & (\calculette|hdmi_out0|res_img|process_1~16_combout\ & (\calculette|hdmi_out0|res_img|process_1~20_combout\ & 
-- !\calculette|hdmi_out0|res_img|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~18_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~16_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~20_combout\,
	datad => \calculette|hdmi_out0|res_img|Equal13~0_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~21_combout\);

-- Location: LCCOMB_X54_Y37_N12
\calculette|hdmi_out0|res_img|process_1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~29_combout\ = (\calculette|hdmi_out0|res_img|process_1~28_combout\ & (!\calculette|hdmi_out0|res_img|Equal16~0_combout\ & ((\calculette|hdmi_out0|res_img|process_1~21_combout\)))) # 
-- (!\calculette|hdmi_out0|res_img|process_1~28_combout\ & (((\calculette|hdmi_out0|res_img|process_1~21_combout\) # (!\calculette|hdmi_out0|res_img|process_1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~28_combout\,
	datab => \calculette|hdmi_out0|res_img|Equal16~0_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~25_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~21_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~29_combout\);

-- Location: LCCOMB_X54_Y37_N20
\calculette|hdmi_out0|res_img|process_1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~43_combout\ = (!\calculette|hdmi_out0|res_img|process_1~42_combout\ & (\calculette|hdmi_out0|res_img|process_1~29_combout\ & ((!\calculette|hdmi_out0|res_img|process_1~32_combout\) # 
-- (!\calculette|hdmi_out0|res_img|process_1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~36_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~32_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~42_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~29_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~43_combout\);

-- Location: LCCOMB_X54_Y37_N18
\calculette|hdmi_out0|res_img|rgb2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~9_combout\ = (\calculette|hdmi_out0|res_img|rgb2~8_combout\) # ((!\calculette|hdmi_out0|res_img|process_1~57_combout\ & (\calculette|hdmi_out0|res_img|process_1~53_combout\ & 
-- \calculette|hdmi_out0|res_img|process_1~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|rgb2~8_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~57_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~53_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~43_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~9_combout\);

-- Location: LCCOMB_X58_Y39_N24
\calculette|hdmi_out0|res_img|process_1~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~81_combout\ = (!\calculette|hdmi_out0|res_img|h_count\(5) & (!\calculette|hdmi_out0|res_img|h_count\(6) & (!\calculette|hdmi_out0|res_img|h_count\(7) & !\calculette|hdmi_out0|res_img|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(5),
	datab => \calculette|hdmi_out0|res_img|h_count\(6),
	datac => \calculette|hdmi_out0|res_img|h_count\(7),
	datad => \calculette|hdmi_out0|res_img|h_count\(4),
	combout => \calculette|hdmi_out0|res_img|process_1~81_combout\);

-- Location: LCCOMB_X58_Y39_N10
\calculette|hdmi_out0|res_img|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan7~1_combout\ = ((!\calculette|hdmi_out0|res_img|h_count\(5) & (!\calculette|hdmi_out0|res_img|h_count\(6) & !\calculette|hdmi_out0|res_img|h_count\(4)))) # (!\calculette|hdmi_out0|res_img|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(5),
	datab => \calculette|hdmi_out0|res_img|h_count\(6),
	datac => \calculette|hdmi_out0|res_img|h_count\(7),
	datad => \calculette|hdmi_out0|res_img|h_count\(4),
	combout => \calculette|hdmi_out0|res_img|LessThan7~1_combout\);

-- Location: LCCOMB_X58_Y39_N16
\calculette|hdmi_out0|res_img|process_1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~82_combout\ = (\calculette|hdmi_out0|res_img|h_count\(8) & ((\calculette|hdmi_out0|res_img|process_1~81_combout\) # ((!\calculette|hdmi_out0|res_img|h_count\(9))))) # (!\calculette|hdmi_out0|res_img|h_count\(8) & 
-- (((\calculette|hdmi_out0|res_img|h_count\(9)) # (!\calculette|hdmi_out0|res_img|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~81_combout\,
	datab => \calculette|hdmi_out0|res_img|h_count\(8),
	datac => \calculette|hdmi_out0|res_img|LessThan7~1_combout\,
	datad => \calculette|hdmi_out0|res_img|h_count\(9),
	combout => \calculette|hdmi_out0|res_img|process_1~82_combout\);

-- Location: LCCOMB_X52_Y39_N14
\calculette|hdmi_out0|res_img|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan2~1_combout\ = ((!\calculette|hdmi_out0|res_img|v_count\(4) & (!\calculette|hdmi_out0|res_img|v_count\(3) & !\calculette|hdmi_out0|res_img|v_count\(2)))) # (!\calculette|hdmi_out0|res_img|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(4),
	datab => \calculette|hdmi_out0|res_img|v_count\(5),
	datac => \calculette|hdmi_out0|res_img|v_count\(3),
	datad => \calculette|hdmi_out0|res_img|v_count\(2),
	combout => \calculette|hdmi_out0|res_img|LessThan2~1_combout\);

-- Location: LCCOMB_X54_Y39_N12
\calculette|hdmi_out0|res_img|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|LessThan2~2_combout\ = (\calculette|hdmi_out0|res_img|LessThan2~0_combout\ & (!\calculette|hdmi_out0|res_img|v_count\(8) & (!\calculette|hdmi_out0|res_img|v_count\(9) & \calculette|hdmi_out0|res_img|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|LessThan2~0_combout\,
	datab => \calculette|hdmi_out0|res_img|v_count\(8),
	datac => \calculette|hdmi_out0|res_img|v_count\(9),
	datad => \calculette|hdmi_out0|res_img|LessThan2~1_combout\,
	combout => \calculette|hdmi_out0|res_img|LessThan2~2_combout\);

-- Location: LCCOMB_X54_Y39_N26
\calculette|hdmi_out0|res_img|process_1~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~83_combout\ = (\calculette|hdmi_out0|res_img|process_1~82_combout\ & (!\calculette|hdmi_out0|res_img|LessThan2~2_combout\ & ((\calculette|hdmi_out0|res_img|LessThan28~6_combout\) # 
-- (!\calculette|hdmi_out0|res_img|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~82_combout\,
	datab => \calculette|hdmi_out0|res_img|LessThan2~2_combout\,
	datac => \calculette|hdmi_out0|res_img|v_count\(9),
	datad => \calculette|hdmi_out0|res_img|LessThan28~6_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~83_combout\);

-- Location: FF_X54_Y39_N27
\calculette|hdmi_out0|res_img|de_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|process_1~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|de_1~q\);

-- Location: LCCOMB_X55_Y39_N14
\calculette|hdmi_out0|res_img|rgb2[13]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~6_combout\ = ((\calculette|hdmi_out0|res_img|h_count\(9)) # ((!\calculette|hdmi_out0|res_img|rgb2[13]~3_combout\) # (!\calculette|hdmi_out0|res_img|LessThan17~0_combout\))) # 
-- (!\calculette|hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(8),
	datab => \calculette|hdmi_out0|res_img|h_count\(9),
	datac => \calculette|hdmi_out0|res_img|LessThan17~0_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~3_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~6_combout\);

-- Location: LCCOMB_X52_Y39_N16
\calculette|hdmi_out0|res_img|rgb2[13]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~0_combout\ = (!\calculette|hdmi_out0|res_img|v_count\(9) & (((\calculette|hdmi_out0|res_img|LessThan28~5_combout\) # (!\calculette|hdmi_out0|res_img|v_count\(7))) # (!\calculette|hdmi_out0|res_img|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(8),
	datab => \calculette|hdmi_out0|res_img|LessThan28~5_combout\,
	datac => \calculette|hdmi_out0|res_img|v_count\(9),
	datad => \calculette|hdmi_out0|res_img|v_count\(7),
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~0_combout\);

-- Location: LCCOMB_X56_Y39_N8
\calculette|hdmi_out0|res_img|process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~6_combout\ = (\calculette|hdmi_out0|res_img|h_count\(6)) # ((\calculette|hdmi_out0|res_img|h_count\(8)) # ((\calculette|hdmi_out0|res_img|h_count\(9)) # (!\calculette|hdmi_out0|res_img|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(6),
	datab => \calculette|hdmi_out0|res_img|h_count\(8),
	datac => \calculette|hdmi_out0|res_img|h_count\(4),
	datad => \calculette|hdmi_out0|res_img|h_count\(9),
	combout => \calculette|hdmi_out0|res_img|process_1~6_combout\);

-- Location: LCCOMB_X52_Y39_N6
\calculette|hdmi_out0|res_img|process_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~7_combout\ = ((\calculette|hdmi_out0|res_img|process_1~6_combout\) # (!\calculette|hdmi_out0|res_img|LessThan17~0_combout\)) # (!\calculette|hdmi_out0|res_img|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(7),
	datac => \calculette|hdmi_out0|res_img|process_1~6_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan17~0_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~7_combout\);

-- Location: LCCOMB_X52_Y39_N8
\calculette|hdmi_out0|res_img|rgb2[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~1_combout\ = (\calculette|hdmi_out0|res_img|rgb2[13]~0_combout\ & (\calculette|hdmi_out0|res_img|process_1~7_combout\ & ((\calculette|hdmi_out0|res_img|v_count\(8)) # 
-- (\calculette|hdmi_out0|res_img|LessThan23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(8),
	datab => \calculette|hdmi_out0|res_img|rgb2[13]~0_combout\,
	datac => \calculette|hdmi_out0|res_img|LessThan23~1_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~7_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~1_combout\);

-- Location: LCCOMB_X55_Y39_N0
\calculette|hdmi_out0|res_img|rgb2[13]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~7_combout\ = (\calculette|hdmi_out0|res_img|de_1~q\ & (\calculette|hdmi_out0|res_img|rgb2[13]~1_combout\ & ((\calculette|hdmi_out0|res_img|rgb2[13]~5_combout\) # (\calculette|hdmi_out0|res_img|rgb2[13]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|de_1~q\,
	datab => \calculette|hdmi_out0|res_img|rgb2[13]~5_combout\,
	datac => \calculette|hdmi_out0|res_img|rgb2[13]~6_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~1_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~7_combout\);

-- Location: LCCOMB_X58_Y39_N22
\calculette|hdmi_out0|res_img|process_1~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~71_combout\ = (\calculette|hdmi_out0|res_img|h_count\(2)) # ((\calculette|hdmi_out0|res_img|h_count\(3)) # ((\calculette|hdmi_out0|res_img|h_count\(1) & \calculette|hdmi_out0|res_img|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(2),
	datab => \calculette|hdmi_out0|res_img|h_count\(1),
	datac => \calculette|hdmi_out0|res_img|h_count\(0),
	datad => \calculette|hdmi_out0|res_img|h_count\(3),
	combout => \calculette|hdmi_out0|res_img|process_1~71_combout\);

-- Location: LCCOMB_X55_Y39_N8
\calculette|hdmi_out0|res_img|process_1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~72_combout\ = (\calculette|hdmi_out0|res_img|h_count\(9)) # (((\calculette|hdmi_out0|res_img|process_1~71_combout\ & \calculette|hdmi_out0|res_img|process_1~10_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|process_1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~71_combout\,
	datab => \calculette|hdmi_out0|res_img|h_count\(9),
	datac => \calculette|hdmi_out0|res_img|process_1~10_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~62_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~72_combout\);

-- Location: LCCOMB_X54_Y41_N2
\calculette|hdmi_out0|res_img|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal5~0_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & (\calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\ & !\calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\,
	combout => \calculette|hdmi_out0|res_img|Equal5~0_combout\);

-- Location: LCCOMB_X54_Y41_N16
\calculette|hdmi_out0|res_img|process_1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~78_combout\ = ((\calculette|hdmi_out0|res_img|Equal5~0_combout\ & ((!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\) # 
-- (!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\)))) # (!\calculette|eror~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datab => \calculette|eror~2_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datad => \calculette|hdmi_out0|res_img|Equal5~0_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~78_combout\);

-- Location: LCCOMB_X54_Y41_N30
\calculette|hdmi_out0|res_img|process_1~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~77_combout\ = (!\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ & 
-- ((\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\) # (!\calculette|sepRes|Div0|auto_generated|divider|_~0_combout\))) # (!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ & 
-- (\calculette|sepRes|Div0|auto_generated|divider|_~0_combout\ $ (\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~77_combout\);

-- Location: LCCOMB_X57_Y39_N30
\calculette|hdmi_out0|res_img|process_1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~64_combout\ = (\calculette|eror~2_combout\ & (\calculette|hdmi_out0|res_img|LessThan20~0_combout\ & ((\calculette|hdmi_out0|res_img|h_count\(5)) # (!\calculette|hdmi_out0|res_img|LessThan32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|eror~2_combout\,
	datab => \calculette|hdmi_out0|res_img|h_count\(5),
	datac => \calculette|hdmi_out0|res_img|LessThan20~0_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan32~0_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~64_combout\);

-- Location: LCCOMB_X55_Y39_N26
\calculette|hdmi_out0|res_img|process_1~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~65_combout\ = (\calculette|hdmi_out0|res_img|LessThan0~0_combout\ & (\calculette|hdmi_out0|res_img|h_count\(9) & (\calculette|hdmi_out0|res_img|h_count\(6) & \calculette|hdmi_out0|res_img|process_1~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|LessThan0~0_combout\,
	datab => \calculette|hdmi_out0|res_img|h_count\(9),
	datac => \calculette|hdmi_out0|res_img|h_count\(6),
	datad => \calculette|hdmi_out0|res_img|process_1~64_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~65_combout\);

-- Location: LCCOMB_X54_Y41_N14
\calculette|hdmi_out0|res_img|process_1~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~79_combout\ = (\calculette|hdmi_out0|res_img|process_1~72_combout\ & (((\calculette|hdmi_out0|res_img|process_1~77_combout\ & \calculette|hdmi_out0|res_img|process_1~65_combout\)))) # 
-- (!\calculette|hdmi_out0|res_img|process_1~72_combout\ & ((\calculette|hdmi_out0|res_img|process_1~78_combout\) # ((\calculette|hdmi_out0|res_img|process_1~77_combout\ & \calculette|hdmi_out0|res_img|process_1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~72_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~78_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~77_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~65_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~79_combout\);

-- Location: LCCOMB_X55_Y41_N6
\calculette|hdmi_out0|res_img|process_1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~70_combout\ = (\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ & (!\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|_~0_combout\) # 
-- (\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~70_combout\);

-- Location: LCCOMB_X51_Y39_N0
\calculette|hdmi_out0|res_img|process_1~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~73_combout\ = (\calculette|hdmi_out0|res_img|process_1~26_combout\) # (\calculette|hdmi_out0|res_img|process_1~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|process_1~26_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~84_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~73_combout\);

-- Location: LCCOMB_X54_Y41_N8
\calculette|hdmi_out0|res_img|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal2~1_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & (\calculette|sepRes|Div0|auto_generated|divider|op_1~2_combout\ & (!\calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\))) # 
-- (!\calculette|sepRes|int_input[31]~0_combout\ & (((!\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|op_1~2_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|op_1~6_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \calculette|hdmi_out0|res_img|Equal2~1_combout\);

-- Location: LCCOMB_X54_Y41_N24
\calculette|hdmi_out0|res_img|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal2~0_combout\ = (\calculette|sepRes|int_input[31]~0_combout\ & (!\calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\ & (!\calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\))) # 
-- (!\calculette|sepRes|int_input[31]~0_combout\ & (((\calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \calculette|hdmi_out0|res_img|Equal2~0_combout\);

-- Location: LCCOMB_X54_Y41_N12
\calculette|hdmi_out0|res_img|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal5~1_combout\ = (!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ & (!\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & 
-- (\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\,
	combout => \calculette|hdmi_out0|res_img|Equal5~1_combout\);

-- Location: LCCOMB_X54_Y41_N26
\calculette|hdmi_out0|res_img|process_1~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~75_combout\ = (\calculette|eror~2_combout\ & (!\calculette|hdmi_out0|res_img|Equal5~1_combout\ & ((!\calculette|hdmi_out0|res_img|Equal2~0_combout\) # (!\calculette|hdmi_out0|res_img|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|Equal2~1_combout\,
	datab => \calculette|hdmi_out0|res_img|Equal2~0_combout\,
	datac => \calculette|eror~2_combout\,
	datad => \calculette|hdmi_out0|res_img|Equal5~1_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~75_combout\);

-- Location: LCCOMB_X54_Y41_N18
\calculette|hdmi_out0|res_img|process_1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~74_combout\ = ((!\calculette|hdmi_out0|res_img|v_count\(9) & (\calculette|hdmi_out0|res_img|process_1~85_combout\ & !\calculette|hdmi_out0|res_img|process_1~72_combout\))) # 
-- (!\calculette|hdmi_out0|res_img|process_1~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~73_combout\,
	datab => \calculette|hdmi_out0|res_img|v_count\(9),
	datac => \calculette|hdmi_out0|res_img|process_1~85_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~72_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~74_combout\);

-- Location: LCCOMB_X54_Y41_N4
\calculette|hdmi_out0|res_img|process_1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~76_combout\ = (\calculette|hdmi_out0|res_img|process_1~70_combout\ & (((!\calculette|hdmi_out0|res_img|process_1~75_combout\ & \calculette|hdmi_out0|res_img|process_1~74_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|process_1~73_combout\))) # (!\calculette|hdmi_out0|res_img|process_1~70_combout\ & (((!\calculette|hdmi_out0|res_img|process_1~75_combout\ & \calculette|hdmi_out0|res_img|process_1~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~70_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~73_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~75_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~74_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~76_combout\);

-- Location: LCCOMB_X54_Y41_N0
\calculette|hdmi_out0|res_img|process_1~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~67_combout\ = (\calculette|eror~2_combout\ & ((\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ $ (!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datab => \calculette|eror~2_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datad => \calculette|hdmi_out0|res_img|Equal5~0_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~67_combout\);

-- Location: LCCOMB_X54_Y41_N6
\calculette|hdmi_out0|res_img|process_1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~86_combout\ = ((\calculette|hdmi_out0|res_img|Equal2~1_combout\ & ((!\calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\) # (!\calculette|sepRes|int_input[31]~0_combout\)))) # 
-- (!\calculette|hdmi_out0|res_img|process_1~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|int_input[31]~0_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~67_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \calculette|hdmi_out0|res_img|Equal2~1_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~86_combout\);

-- Location: LCCOMB_X55_Y41_N8
\calculette|hdmi_out0|res_img|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|Equal9~0_combout\ = (!\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & (!\calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\ & 
-- (!\calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\ & \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\,
	datab => \calculette|sepRes|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datac => \calculette|sepRes|Div0|auto_generated|divider|quotient[0]~0_combout\,
	datad => \calculette|sepRes|Div0|auto_generated|divider|_~0_combout\,
	combout => \calculette|hdmi_out0|res_img|Equal9~0_combout\);

-- Location: LCCOMB_X54_Y41_N22
\calculette|hdmi_out0|res_img|process_1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~68_combout\ = (\calculette|hdmi_out0|res_img|process_1~86_combout\ & (((\calculette|hdmi_out0|res_img|process_1~59_combout\) # (\calculette|hdmi_out0|res_img|process_1~24_combout\)))) # 
-- (!\calculette|hdmi_out0|res_img|process_1~86_combout\ & (\calculette|hdmi_out0|res_img|Equal9~0_combout\ & (\calculette|hdmi_out0|res_img|process_1~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~86_combout\,
	datab => \calculette|hdmi_out0|res_img|Equal9~0_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~59_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~24_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~68_combout\);

-- Location: LCCOMB_X54_Y41_N10
\calculette|hdmi_out0|res_img|process_1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~66_combout\ = (!\calculette|sepRes|Div0|auto_generated|divider|_~1_combout\ & (!\calculette|hdmi_out0|res_img|Equal2~0_combout\ & (\calculette|hdmi_out0|res_img|process_1~85_combout\ & 
-- \calculette|hdmi_out0|res_img|process_1~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|sepRes|Div0|auto_generated|divider|_~1_combout\,
	datab => \calculette|hdmi_out0|res_img|Equal2~0_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~85_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~65_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~66_combout\);

-- Location: LCCOMB_X54_Y41_N20
\calculette|hdmi_out0|res_img|process_1~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~69_combout\ = (!\calculette|hdmi_out0|res_img|v_count\(9) & ((\calculette|hdmi_out0|res_img|process_1~66_combout\) # ((\calculette|hdmi_out0|res_img|v_count\(8) & 
-- \calculette|hdmi_out0|res_img|process_1~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|v_count\(8),
	datab => \calculette|hdmi_out0|res_img|v_count\(9),
	datac => \calculette|hdmi_out0|res_img|process_1~68_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~66_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~69_combout\);

-- Location: LCCOMB_X54_Y41_N28
\calculette|hdmi_out0|res_img|process_1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|process_1~80_combout\ = (\calculette|hdmi_out0|res_img|process_1~76_combout\) # ((\calculette|hdmi_out0|res_img|process_1~69_combout\) # ((\calculette|hdmi_out0|res_img|process_1~33_combout\ & 
-- \calculette|hdmi_out0|res_img|process_1~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~33_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~79_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~76_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~69_combout\,
	combout => \calculette|hdmi_out0|res_img|process_1~80_combout\);

-- Location: LCCOMB_X54_Y37_N0
\calculette|hdmi_out0|res_img|rgb2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~15_combout\ = (\calculette|hdmi_out0|res_img|rgb2[13]~5_combout\ & (\calculette|hdmi_out0|res_img|rgb2~14_combout\)) # (!\calculette|hdmi_out0|res_img|rgb2[13]~5_combout\ & 
-- ((\calculette|hdmi_out0|res_img|process_1~80_combout\) # (!\calculette|hdmi_out0|res_img|rgb2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|rgb2[13]~5_combout\,
	datac => \calculette|hdmi_out0|res_img|rgb2~14_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~80_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~15_combout\);

-- Location: LCCOMB_X54_Y37_N28
\calculette|hdmi_out0|res_img|rgb2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~16_combout\ = (\calculette|hdmi_out0|res_img|rgb2[13]~7_combout\ & (\calculette|hdmi_out0|res_img|rgb2~15_combout\ & ((\calculette|hdmi_out0|res_img|rgb2~14_combout\) # (!\calculette|hdmi_out0|res_img|rgb2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|rgb2~14_combout\,
	datab => \calculette|hdmi_out0|res_img|rgb2~9_combout\,
	datac => \calculette|hdmi_out0|res_img|rgb2[13]~7_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2~15_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~16_combout\);

-- Location: LCCOMB_X56_Y39_N22
\calculette|hdmi_out0|res_img|rgb2[13]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~19_combout\ = (\calculette|hdmi_out0|res_img|LessThan11~0_combout\ & (\calculette|hdmi_out0|res_img|LessThan9~1_combout\)) # (!\calculette|hdmi_out0|res_img|LessThan11~0_combout\ & 
-- ((\calculette|hdmi_out0|res_img|rgb2[13]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|LessThan9~1_combout\,
	datab => \calculette|hdmi_out0|res_img|LessThan11~0_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~3_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~19_combout\);

-- Location: LCCOMB_X52_Y39_N26
\calculette|hdmi_out0|res_img|rgb2[13]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~20_combout\ = (\calculette|hdmi_out0|res_img|h_count\(9) & (((\calculette|hdmi_out0|res_img|process_1~61_combout\)))) # (!\calculette|hdmi_out0|res_img|h_count\(9) & 
-- (\calculette|hdmi_out0|res_img|rgb2[13]~19_combout\ & ((\calculette|hdmi_out0|res_img|process_1~61_combout\) # (!\calculette|hdmi_out0|res_img|h_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(8),
	datab => \calculette|hdmi_out0|res_img|h_count\(9),
	datac => \calculette|hdmi_out0|res_img|process_1~61_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~19_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~20_combout\);

-- Location: LCCOMB_X52_Y39_N30
\calculette|hdmi_out0|res_img|rgb2[13]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~17_combout\ = ((\calculette|hdmi_out0|res_img|h_count\(8) & (\calculette|hdmi_out0|res_img|LessThan34~1_combout\ & \calculette|hdmi_out0|res_img|process_1~81_combout\))) # 
-- (!\calculette|hdmi_out0|res_img|process_1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(8),
	datab => \calculette|hdmi_out0|res_img|LessThan34~1_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~13_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~81_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~17_combout\);

-- Location: LCCOMB_X52_Y39_N24
\calculette|hdmi_out0|res_img|rgb2[13]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~18_combout\ = (\calculette|hdmi_out0|res_img|h_count\(9) & ((\calculette|hdmi_out0|res_img|rgb2[13]~17_combout\) # (!\calculette|hdmi_out0|res_img|process_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|h_count\(9),
	datac => \calculette|hdmi_out0|res_img|rgb2[13]~17_combout\,
	datad => \calculette|hdmi_out0|res_img|process_1~12_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~18_combout\);

-- Location: LCCOMB_X52_Y39_N20
\calculette|hdmi_out0|res_img|rgb2[13]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2[13]~21_combout\ = (((\calculette|hdmi_out0|res_img|rgb2[13]~18_combout\) # (!\calculette|hdmi_out0|res_img|rgb2[13]~20_combout\)) # (!\calculette|hdmi_out0|res_img|rgb2[13]~1_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|de_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|de_1~q\,
	datab => \calculette|hdmi_out0|res_img|rgb2[13]~1_combout\,
	datac => \calculette|hdmi_out0|res_img|rgb2[13]~20_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~18_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2[13]~21_combout\);

-- Location: FF_X54_Y37_N29
\calculette|hdmi_out0|res_img|rgb2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|rgb2~16_combout\,
	ena => \calculette|hdmi_out0|res_img|rgb2[13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|rgb2\(13));

-- Location: LCCOMB_X18_Y4_N4
\calculette|hdmi_out0|res_img|r_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|r_out[4]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \calculette|hdmi_out0|res_img|rgb2\(13),
	combout => \calculette|hdmi_out0|res_img|r_out[4]~feeder_combout\);

-- Location: FF_X18_Y4_N5
\calculette|hdmi_out0|res_img|r_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|r_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|r_out\(4));

-- Location: LCCOMB_X55_Y39_N30
\calculette|hdmi_out0|res_img|rgb2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~22_combout\ = (\calculette|hdmi_out0|res_img|rgb2[13]~13_combout\ & (((!\calculette|hdmi_out0|res_img|rgb2[13]~12_combout\)) # (!\calculette|hdmi_out0|res_img|process_1~58_combout\))) # 
-- (!\calculette|hdmi_out0|res_img|rgb2[13]~13_combout\ & (((!\calculette|hdmi_out0|res_img|process_1~60_combout\ & \calculette|hdmi_out0|res_img|rgb2[13]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|process_1~58_combout\,
	datab => \calculette|hdmi_out0|res_img|process_1~60_combout\,
	datac => \calculette|hdmi_out0|res_img|rgb2[13]~13_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~12_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~22_combout\);

-- Location: LCCOMB_X54_Y37_N6
\calculette|hdmi_out0|res_img|rgb2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~23_combout\ = (\calculette|hdmi_out0|res_img|rgb2[13]~5_combout\ & (\calculette|hdmi_out0|res_img|rgb2~22_combout\)) # (!\calculette|hdmi_out0|res_img|rgb2[13]~5_combout\ & 
-- ((\calculette|hdmi_out0|res_img|rgb2~22_combout\ & ((\calculette|hdmi_out0|res_img|rgb2~9_combout\))) # (!\calculette|hdmi_out0|res_img|rgb2~22_combout\ & (!\calculette|hdmi_out0|res_img|process_1~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|rgb2[13]~5_combout\,
	datab => \calculette|hdmi_out0|res_img|rgb2~22_combout\,
	datac => \calculette|hdmi_out0|res_img|process_1~80_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2~9_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~23_combout\);

-- Location: LCCOMB_X54_Y37_N14
\calculette|hdmi_out0|res_img|rgb2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~24_combout\ = (\calculette|hdmi_out0|res_img|rgb2[13]~7_combout\ & ((\calculette|hdmi_out0|res_img|rgb2~23_combout\))) # (!\calculette|hdmi_out0|res_img|rgb2[13]~7_combout\ & (\calculette|hdmi_out0|res_img|de_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calculette|hdmi_out0|res_img|de_1~q\,
	datac => \calculette|hdmi_out0|res_img|rgb2[13]~7_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2~23_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~24_combout\);

-- Location: FF_X54_Y37_N15
\calculette|hdmi_out0|res_img|rgb2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|rgb2~24_combout\,
	ena => \calculette|hdmi_out0|res_img|rgb2[13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|rgb2\(12));

-- Location: LCCOMB_X1_Y15_N24
\calculette|hdmi_out0|res_img|r_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|r_out[5]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|rgb2\(12),
	combout => \calculette|hdmi_out0|res_img|r_out[5]~feeder_combout\);

-- Location: FF_X1_Y15_N25
\calculette|hdmi_out0|res_img|r_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|r_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|r_out\(5));

-- Location: LCCOMB_X18_Y4_N18
\calculette|hdmi_out0|res_img|r_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|r_out[6]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \calculette|hdmi_out0|res_img|rgb2\(13),
	combout => \calculette|hdmi_out0|res_img|r_out[6]~feeder_combout\);

-- Location: FF_X18_Y4_N19
\calculette|hdmi_out0|res_img|r_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|r_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|r_out\(6));

-- Location: LCCOMB_X55_Y39_N28
\calculette|hdmi_out0|res_img|rgb2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~25_combout\ = (\calculette|hdmi_out0|res_img|rgb2\(6)) # (((\calculette|hdmi_out0|res_img|rgb2[13]~18_combout\) # (!\calculette|hdmi_out0|res_img|rgb2[13]~1_combout\)) # 
-- (!\calculette|hdmi_out0|res_img|process_1~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|rgb2\(6),
	datab => \calculette|hdmi_out0|res_img|process_1~63_combout\,
	datac => \calculette|hdmi_out0|res_img|rgb2[13]~18_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~1_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~25_combout\);

-- Location: LCCOMB_X54_Y39_N4
\calculette|hdmi_out0|res_img|rgb2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~26_combout\ = (\calculette|hdmi_out0|res_img|h_count\(7) & (\calculette|hdmi_out0|res_img|h_count\(6) & (\calculette|hdmi_out0|res_img|LessThan17~0_combout\ & \calculette|hdmi_out0|res_img|LessThan34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(7),
	datab => \calculette|hdmi_out0|res_img|h_count\(6),
	datac => \calculette|hdmi_out0|res_img|LessThan17~0_combout\,
	datad => \calculette|hdmi_out0|res_img|LessThan34~1_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~26_combout\);

-- Location: LCCOMB_X55_Y39_N6
\calculette|hdmi_out0|res_img|rgb2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~27_combout\ = ((\calculette|hdmi_out0|res_img|h_count\(8) & ((\calculette|hdmi_out0|res_img|rgb2[13]~2_combout\) # (\calculette|hdmi_out0|res_img|rgb2~26_combout\)))) # 
-- (!\calculette|hdmi_out0|res_img|rgb2[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|h_count\(8),
	datab => \calculette|hdmi_out0|res_img|rgb2[13]~2_combout\,
	datac => \calculette|hdmi_out0|res_img|rgb2~26_combout\,
	datad => \calculette|hdmi_out0|res_img|rgb2[13]~4_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~27_combout\);

-- Location: LCCOMB_X55_Y39_N10
\calculette|hdmi_out0|res_img|rgb2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|rgb2~28_combout\ = (\calculette|hdmi_out0|res_img|de_1~q\ & ((\calculette|hdmi_out0|res_img|rgb2~25_combout\) # ((!\calculette|hdmi_out0|res_img|h_count\(9) & \calculette|hdmi_out0|res_img|rgb2~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calculette|hdmi_out0|res_img|de_1~q\,
	datab => \calculette|hdmi_out0|res_img|rgb2~25_combout\,
	datac => \calculette|hdmi_out0|res_img|h_count\(9),
	datad => \calculette|hdmi_out0|res_img|rgb2~27_combout\,
	combout => \calculette|hdmi_out0|res_img|rgb2~28_combout\);

-- Location: FF_X55_Y39_N11
\calculette|hdmi_out0|res_img|rgb2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|rgb2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|rgb2\(6));

-- Location: LCCOMB_X16_Y15_N8
\calculette|hdmi_out0|res_img|r_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|r_out[7]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|rgb2\(6),
	combout => \calculette|hdmi_out0|res_img|r_out[7]~feeder_combout\);

-- Location: FF_X16_Y15_N9
\calculette|hdmi_out0|res_img|r_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|r_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|r_out\(7));

-- Location: LCCOMB_X1_Y15_N18
\calculette|hdmi_out0|res_img|g_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|g_out[4]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|rgb2\(12),
	combout => \calculette|hdmi_out0|res_img|g_out[4]~feeder_combout\);

-- Location: FF_X1_Y15_N19
\calculette|hdmi_out0|res_img|g_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|g_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|g_out\(4));

-- Location: LCCOMB_X16_Y15_N6
\calculette|hdmi_out0|res_img|g_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|g_out[5]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \calculette|hdmi_out0|res_img|rgb2\(13),
	combout => \calculette|hdmi_out0|res_img|g_out[5]~feeder_combout\);

-- Location: FF_X16_Y15_N7
\calculette|hdmi_out0|res_img|g_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|g_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|g_out\(5));

-- Location: LCCOMB_X4_Y15_N24
\calculette|hdmi_out0|res_img|g_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|g_out[6]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \calculette|hdmi_out0|res_img|rgb2\(6),
	combout => \calculette|hdmi_out0|res_img|g_out[6]~feeder_combout\);

-- Location: FF_X4_Y15_N25
\calculette|hdmi_out0|res_img|g_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|g_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|g_out\(6));

-- Location: LCCOMB_X1_Y15_N20
\calculette|hdmi_out0|res_img|g_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|g_out[7]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|rgb2\(12),
	combout => \calculette|hdmi_out0|res_img|g_out[7]~feeder_combout\);

-- Location: FF_X1_Y15_N21
\calculette|hdmi_out0|res_img|g_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|g_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|g_out\(7));

-- Location: LCCOMB_X4_Y15_N6
\calculette|hdmi_out0|res_img|b_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|b_out[4]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \calculette|hdmi_out0|res_img|rgb2\(6),
	combout => \calculette|hdmi_out0|res_img|b_out[4]~feeder_combout\);

-- Location: FF_X4_Y15_N7
\calculette|hdmi_out0|res_img|b_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|b_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|b_out\(4));

-- Location: LCCOMB_X1_Y15_N14
\calculette|hdmi_out0|res_img|b_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|b_out[5]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|rgb2\(12),
	combout => \calculette|hdmi_out0|res_img|b_out[5]~feeder_combout\);

-- Location: FF_X1_Y15_N15
\calculette|hdmi_out0|res_img|b_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|b_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|b_out\(5));

-- Location: LCCOMB_X4_Y15_N28
\calculette|hdmi_out0|res_img|b_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|b_out[6]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \calculette|hdmi_out0|res_img|rgb2\(6),
	combout => \calculette|hdmi_out0|res_img|b_out[6]~feeder_combout\);

-- Location: FF_X4_Y15_N29
\calculette|hdmi_out0|res_img|b_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|b_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|b_out\(6));

-- Location: LCCOMB_X1_Y15_N4
\calculette|hdmi_out0|res_img|b_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calculette|hdmi_out0|res_img|b_out[7]~feeder_combout\ = \calculette|hdmi_out0|res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calculette|hdmi_out0|res_img|rgb2\(12),
	combout => \calculette|hdmi_out0|res_img|b_out[7]~feeder_combout\);

-- Location: FF_X1_Y15_N5
\calculette|hdmi_out0|res_img|b_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \calculette|hdmi_out0|clk_25~clkctrl_outclk\,
	d => \calculette|hdmi_out0|res_img|b_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calculette|hdmi_out0|res_img|b_out\(7));

-- Location: IOIBUF_X34_Y0_N15
\resCLA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resCLA(0),
	o => \resCLA[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\resCLA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resCLA(1),
	o => \resCLA[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\resCLA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resCLA(2),
	o => \resCLA[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\resCLA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resCLA(3),
	o => \resCLA[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\coutCLA~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coutCLA,
	o => \coutCLA~input_o\);

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

ww_opeACLA(0) <= \opeACLA[0]~output_o\;

ww_opeACLA(1) <= \opeACLA[1]~output_o\;

ww_opeACLA(2) <= \opeACLA[2]~output_o\;

ww_opeACLA(3) <= \opeACLA[3]~output_o\;

ww_opeBCLA(0) <= \opeBCLA[0]~output_o\;

ww_opeBCLA(1) <= \opeBCLA[1]~output_o\;

ww_opeBCLA(2) <= \opeBCLA[2]~output_o\;

ww_opeBCLA(3) <= \opeBCLA[3]~output_o\;

ww_cinCLA <= \cinCLA~output_o\;

ww_vga_vs <= \vga_vs~output_o\;

ww_vga_hs <= \vga_hs~output_o\;

ww_vga_r(0) <= \vga_r[0]~output_o\;

ww_vga_r(1) <= \vga_r[1]~output_o\;

ww_vga_r(2) <= \vga_r[2]~output_o\;

ww_vga_r(3) <= \vga_r[3]~output_o\;

ww_vga_g(0) <= \vga_g[0]~output_o\;

ww_vga_g(1) <= \vga_g[1]~output_o\;

ww_vga_g(2) <= \vga_g[2]~output_o\;

ww_vga_g(3) <= \vga_g[3]~output_o\;

ww_vga_b(0) <= \vga_b[0]~output_o\;

ww_vga_b(1) <= \vga_b[1]~output_o\;

ww_vga_b(2) <= \vga_b[2]~output_o\;

ww_vga_b(3) <= \vga_b[3]~output_o\;
END structure;


