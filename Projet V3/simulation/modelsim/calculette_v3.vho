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

-- DATE "09/26/2021 15:20:17"

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

ENTITY 	calculator4bits IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	mode : IN std_logic;
	reset : IN std_logic;
	operation : IN std_logic;
	CLA : IN std_logic;
	opeACLA : OUT std_logic_vector(3 DOWNTO 0);
	opeBCLA : OUT std_logic_vector(3 DOWNTO 0);
	resCLA : IN std_logic_vector(3 DOWNTO 0);
	coutCLA : IN std_logic;
	cinCLA : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	modesOut : OUT std_logic_vector(3 DOWNTO 0);
	clk_50 : IN std_logic;
	vga_vs : OUT std_logic;
	vga_hs : OUT std_logic;
	vga_r : OUT std_logic_vector(3 DOWNTO 0);
	vga_g : OUT std_logic_vector(3 DOWNTO 0);
	vga_b : OUT std_logic_vector(3 DOWNTO 0)
	);
END calculator4bits;

-- Design Ports Information
-- opeACLA[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeACLA[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeACLA[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeACLA[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeBCLA[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeBCLA[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeBCLA[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opeBCLA[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cinCLA	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- modesOut[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modesOut[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modesOut[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modesOut[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- A[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLA	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coutCLA	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resCLA[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resCLA[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resCLA[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resCLA[2]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF calculator4bits IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_operation : std_logic;
SIGNAL ww_CLA : std_logic;
SIGNAL ww_opeACLA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_opeBCLA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_resCLA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_coutCLA : std_logic;
SIGNAL ww_cinCLA : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_modesOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_vga_vs : std_logic;
SIGNAL ww_vga_hs : std_logic;
SIGNAL ww_vga_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \hdmi_out0|clk_25~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \opeACLA[0]~output_o\ : std_logic;
SIGNAL \opeACLA[1]~output_o\ : std_logic;
SIGNAL \opeACLA[2]~output_o\ : std_logic;
SIGNAL \opeACLA[3]~output_o\ : std_logic;
SIGNAL \opeBCLA[0]~output_o\ : std_logic;
SIGNAL \opeBCLA[1]~output_o\ : std_logic;
SIGNAL \opeBCLA[2]~output_o\ : std_logic;
SIGNAL \opeBCLA[3]~output_o\ : std_logic;
SIGNAL \cinCLA~output_o\ : std_logic;
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
SIGNAL \modesOut[0]~output_o\ : std_logic;
SIGNAL \modesOut[1]~output_o\ : std_logic;
SIGNAL \modesOut[2]~output_o\ : std_logic;
SIGNAL \modesOut[3]~output_o\ : std_logic;
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
SIGNAL \CLA~input_o\ : std_logic;
SIGNAL \operation~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \CLA0|opeACLA[0]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \CLA0|Add0~6_combout\ : std_logic;
SIGNAL \CLA0|Add0~12_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CLA0|temp2[2]~0_combout\ : std_logic;
SIGNAL \CLA0|Add0~7\ : std_logic;
SIGNAL \CLA0|Add0~8_combout\ : std_logic;
SIGNAL \CLA0|Add0~13_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \CLA0|temp2[3]~1_combout\ : std_logic;
SIGNAL \CLA0|Add0~9\ : std_logic;
SIGNAL \CLA0|Add0~10_combout\ : std_logic;
SIGNAL \CLA0|Add0~14_combout\ : std_logic;
SIGNAL \CLA0|opeBCLA[0]~0_combout\ : std_logic;
SIGNAL \CLA0|opeBCLA[1]~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \CLA0|opeBCLA[2]~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \tempOpeB[3]~0_combout\ : std_logic;
SIGNAL \CLA0|temp3[3]~0_combout\ : std_logic;
SIGNAL \CLA0|opeBCLA[3]~3_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_2~1\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_2~3\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_2~5\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_2~7\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \controlMulti|erorTotale~0_combout\ : std_logic;
SIGNAL \controlMulti|erorTotale~1_combout\ : std_logic;
SIGNAL \coutCLA~input_o\ : std_logic;
SIGNAL \tempOpeA[3]~2_combout\ : std_logic;
SIGNAL \resCLA[3]~input_o\ : std_logic;
SIGNAL \CLA0|process_3~0_combout\ : std_logic;
SIGNAL \CLA0|eror~0_combout\ : std_logic;
SIGNAL \add0|Res[0]~1\ : std_logic;
SIGNAL \add0|Res[1]~3\ : std_logic;
SIGNAL \add0|Res[2]~5\ : std_logic;
SIGNAL \add0|Res[3]~6_combout\ : std_logic;
SIGNAL \add0|Res[3]~7\ : std_logic;
SIGNAL \add0|Add0~0_combout\ : std_logic;
SIGNAL \add0|Cout~0_combout\ : std_logic;
SIGNAL \controlAdd|erorTotale~0_combout\ : std_logic;
SIGNAL \HEX0~0_combout\ : std_logic;
SIGNAL \tempOpeA[2]~1_combout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|_~7_combout\ : std_logic;
SIGNAL \tempOpeA[1]~0_combout\ : std_logic;
SIGNAL \CLA0|opeBCLA[0]~4_combout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \tempOpeA[0]~3_combout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_3~1_cout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_3~3_cout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_3~5_cout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_3~7_cout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_3~9\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_3~11\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_3~13\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \CLA0|Mult1|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \CLA0|temperor~0_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|_~15_combout\ : std_logic;
SIGNAL \CLA0|process_3~4_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \CLA0|process_3~2_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \CLA0|Mult0|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \CLA0|process_3~3_combout\ : std_logic;
SIGNAL \CLA0|process_3~1_combout\ : std_logic;
SIGNAL \CLA0|temperor~1_combout\ : std_logic;
SIGNAL \CLA0|temperor~2_combout\ : std_logic;
SIGNAL \HEX0~1_combout\ : std_logic;
SIGNAL \choix_d0|Mux2~0_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \choix_d0|Mux0~2_combout\ : std_logic;
SIGNAL \choix_d0|Mux0~6_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \choix_d0|Mux2~1_combout\ : std_logic;
SIGNAL \choix_d0|Mux2~2_combout\ : std_logic;
SIGNAL \choix_d0|Mux0~3_combout\ : std_logic;
SIGNAL \CLA0|result~1_combout\ : std_logic;
SIGNAL \choix_d0|Mux0~4_combout\ : std_logic;
SIGNAL \choix_d0|Mux0~5_combout\ : std_logic;
SIGNAL \sepRes|int_input[31]~0_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \choix_d0|Mux3~6_combout\ : std_logic;
SIGNAL \choix_d0|Mux3~2_combout\ : std_logic;
SIGNAL \resCLA[0]~input_o\ : std_logic;
SIGNAL \choix_d0|Mux3~3_combout\ : std_logic;
SIGNAL \add0|Res[0]~0_combout\ : std_logic;
SIGNAL \CLA0|result~0_combout\ : std_logic;
SIGNAL \choix_d0|Mux3~4_combout\ : std_logic;
SIGNAL \choix_d0|Mux3~5_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \choix_d0|Mux2~3_combout\ : std_logic;
SIGNAL \add0|Res[1]~2_combout\ : std_logic;
SIGNAL \resCLA[1]~input_o\ : std_logic;
SIGNAL \CLA0|result~2_combout\ : std_logic;
SIGNAL \choix_d0|Mux2~4_combout\ : std_logic;
SIGNAL \choix_d0|Mux2~5_combout\ : std_logic;
SIGNAL \choix_d0|Mux2~6_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \choix_d0|Mux1~0_combout\ : std_logic;
SIGNAL \resCLA[2]~input_o\ : std_logic;
SIGNAL \CLA0|result~3_combout\ : std_logic;
SIGNAL \add0|Res[2]~4_combout\ : std_logic;
SIGNAL \choix_d0|Mux1~1_combout\ : std_logic;
SIGNAL \choix_d0|Mux1~2_combout\ : std_logic;
SIGNAL \choix_d0|Mux1~3_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ : std_logic;
SIGNAL \sepRes|Add5~4_combout\ : std_logic;
SIGNAL \sepRes|Add5~5_combout\ : std_logic;
SIGNAL \sepRes|Add5~12_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~0_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ : std_logic;
SIGNAL \sepRes|Add5~6\ : std_logic;
SIGNAL \sepRes|Add5~8\ : std_logic;
SIGNAL \sepRes|Add5~10_combout\ : std_logic;
SIGNAL \sepRes|Add3~2_combout\ : std_logic;
SIGNAL \sepRes|Add2~0_combout\ : std_logic;
SIGNAL \sepRes|Add3~1_combout\ : std_logic;
SIGNAL \sepRes|Add3~3_combout\ : std_logic;
SIGNAL \sepRes|Add5~13_combout\ : std_logic;
SIGNAL \sepRes|Add5~7_combout\ : std_logic;
SIGNAL \sepRes|Add3~0_combout\ : std_logic;
SIGNAL \sepRes|Add5~9_combout\ : std_logic;
SIGNAL \ledRes1|Mux6~0_combout\ : std_logic;
SIGNAL \HEX0~2_combout\ : std_logic;
SIGNAL \ledRes1|Mux5~0_combout\ : std_logic;
SIGNAL \HEX0~3_combout\ : std_logic;
SIGNAL \eror~0_combout\ : std_logic;
SIGNAL \eror~1_combout\ : std_logic;
SIGNAL \ledRes1|Mux4~0_combout\ : std_logic;
SIGNAL \HEX0~4_combout\ : std_logic;
SIGNAL \ledRes1|Mux3~0_combout\ : std_logic;
SIGNAL \HEX0~5_combout\ : std_logic;
SIGNAL \ledRes1|Mux2~0_combout\ : std_logic;
SIGNAL \HEX0~6_combout\ : std_logic;
SIGNAL \ledRes1|Mux1~0_combout\ : std_logic;
SIGNAL \HEX0~7_combout\ : std_logic;
SIGNAL \ledRes1|Mux0~0_combout\ : std_logic;
SIGNAL \HEX0~8_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|_~5_combout\ : std_logic;
SIGNAL \sepRes|Div0|auto_generated|divider|_~4_combout\ : std_logic;
SIGNAL \sepRes|Add0~10_combout\ : std_logic;
SIGNAL \sepRes|Add0~3\ : std_logic;
SIGNAL \sepRes|Add0~5\ : std_logic;
SIGNAL \sepRes|Add0~7\ : std_logic;
SIGNAL \sepRes|Add0~8_combout\ : std_logic;
SIGNAL \sepRes|Add0~6_combout\ : std_logic;
SIGNAL \sepRes|Add0~4_combout\ : std_logic;
SIGNAL \sepRes|Add0~2_combout\ : std_logic;
SIGNAL \ledRes0|Mux6~0_combout\ : std_logic;
SIGNAL \HEX1~14_combout\ : std_logic;
SIGNAL \ledRes0|Mux5~0_combout\ : std_logic;
SIGNAL \HEX1~15_combout\ : std_logic;
SIGNAL \ledRes0|Mux4~0_combout\ : std_logic;
SIGNAL \HEX1~16_combout\ : std_logic;
SIGNAL \ledRes0|Mux3~0_combout\ : std_logic;
SIGNAL \HEX1~17_combout\ : std_logic;
SIGNAL \ledRes0|Mux2~0_combout\ : std_logic;
SIGNAL \HEX1~18_combout\ : std_logic;
SIGNAL \ledRes0|Mux1~0_combout\ : std_logic;
SIGNAL \HEX1~19_combout\ : std_logic;
SIGNAL \ledRes0|Mux0~0_combout\ : std_logic;
SIGNAL \HEX1~20_combout\ : std_logic;
SIGNAL \sepB|int_input[31]~0_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~2_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|quotient[0]~4_combout\ : std_logic;
SIGNAL \sepB|Add5~2_combout\ : std_logic;
SIGNAL \sepB|Add5~3_combout\ : std_logic;
SIGNAL \sepB|Add5~11_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \sepB|Add4~0_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ : std_logic;
SIGNAL \sepB|Add5~4\ : std_logic;
SIGNAL \sepB|Add5~6\ : std_logic;
SIGNAL \sepB|Add5~8_combout\ : std_logic;
SIGNAL \sepB|Add2~0_combout\ : std_logic;
SIGNAL \sepB|Add3~1_combout\ : std_logic;
SIGNAL \sepB|Add3~2_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \sepB|Add3~3_combout\ : std_logic;
SIGNAL \sepB|Add5~10_combout\ : std_logic;
SIGNAL \sepB|Add5~5_combout\ : std_logic;
SIGNAL \sepB|Add3~0_combout\ : std_logic;
SIGNAL \sepB|Add5~7_combout\ : std_logic;
SIGNAL \ledB1|Mux6~0_combout\ : std_logic;
SIGNAL \ledB1|Mux5~0_combout\ : std_logic;
SIGNAL \ledB1|Mux4~0_combout\ : std_logic;
SIGNAL \ledB1|Mux3~0_combout\ : std_logic;
SIGNAL \ledB1|Mux2~0_combout\ : std_logic;
SIGNAL \ledB1|Mux1~0_combout\ : std_logic;
SIGNAL \ledB1|Mux0~0_combout\ : std_logic;
SIGNAL \sepB|Add0~10_combout\ : std_logic;
SIGNAL \sepB|Add0~2_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \sepB|Div0|auto_generated|divider|op_1~13_combout\ : std_logic;
SIGNAL \sepB|Add0~3\ : std_logic;
SIGNAL \sepB|Add0~5\ : std_logic;
SIGNAL \sepB|Add0~7\ : std_logic;
SIGNAL \sepB|Add0~8_combout\ : std_logic;
SIGNAL \sepB|Add0~6_combout\ : std_logic;
SIGNAL \sepB|Add0~4_combout\ : std_logic;
SIGNAL \ledB0|Mux6~2_combout\ : std_logic;
SIGNAL \ledB0|Mux6~3_combout\ : std_logic;
SIGNAL \ledB0|Mux5~2_combout\ : std_logic;
SIGNAL \ledB0|Mux5~3_combout\ : std_logic;
SIGNAL \ledB0|Mux4~0_combout\ : std_logic;
SIGNAL \HEX3~0_combout\ : std_logic;
SIGNAL \ledB0|Mux3~2_combout\ : std_logic;
SIGNAL \ledB0|Mux3~3_combout\ : std_logic;
SIGNAL \ledB0|Mux2~2_combout\ : std_logic;
SIGNAL \ledB0|Mux2~3_combout\ : std_logic;
SIGNAL \ledB0|Mux1~2_combout\ : std_logic;
SIGNAL \ledB0|Mux1~3_combout\ : std_logic;
SIGNAL \ledB0|Mux0~2_combout\ : std_logic;
SIGNAL \ledB0|Mux0~3_combout\ : std_logic;
SIGNAL \sepA|int_input[31]~0_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ : std_logic;
SIGNAL \sepA|Add5~2_combout\ : std_logic;
SIGNAL \sepA|Add5~3_combout\ : std_logic;
SIGNAL \sepA|Add5~11_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ : std_logic;
SIGNAL \sepA|Add3~2_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \sepA|Add3~3_combout\ : std_logic;
SIGNAL \sepA|Add4~0_combout\ : std_logic;
SIGNAL \sepA|Add5~4\ : std_logic;
SIGNAL \sepA|Add5~6\ : std_logic;
SIGNAL \sepA|Add5~8_combout\ : std_logic;
SIGNAL \sepA|Add2~0_combout\ : std_logic;
SIGNAL \sepA|Add3~1_combout\ : std_logic;
SIGNAL \sepA|Add5~10_combout\ : std_logic;
SIGNAL \sepA|Add3~0_combout\ : std_logic;
SIGNAL \sepA|Add5~5_combout\ : std_logic;
SIGNAL \sepA|Add5~7_combout\ : std_logic;
SIGNAL \ledA1|Mux6~0_combout\ : std_logic;
SIGNAL \ledA1|Mux5~0_combout\ : std_logic;
SIGNAL \ledA1|Mux4~0_combout\ : std_logic;
SIGNAL \ledA1|Mux3~0_combout\ : std_logic;
SIGNAL \ledA1|Mux2~0_combout\ : std_logic;
SIGNAL \ledA1|Mux1~0_combout\ : std_logic;
SIGNAL \ledA1|Mux0~0_combout\ : std_logic;
SIGNAL \sepA|Add0~10_combout\ : std_logic;
SIGNAL \sepA|Add0~3\ : std_logic;
SIGNAL \sepA|Add0~5\ : std_logic;
SIGNAL \sepA|Add0~6_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \sepA|Div0|auto_generated|divider|op_1~13_combout\ : std_logic;
SIGNAL \sepA|Add0~7\ : std_logic;
SIGNAL \sepA|Add0~8_combout\ : std_logic;
SIGNAL \sepA|Add0~4_combout\ : std_logic;
SIGNAL \sepA|Add0~2_combout\ : std_logic;
SIGNAL \ledA0|Mux6~2_combout\ : std_logic;
SIGNAL \ledA0|Mux6~3_combout\ : std_logic;
SIGNAL \ledA0|Mux5~2_combout\ : std_logic;
SIGNAL \ledA0|Mux5~3_combout\ : std_logic;
SIGNAL \ledA0|Mux4~0_combout\ : std_logic;
SIGNAL \HEX5~0_combout\ : std_logic;
SIGNAL \ledA0|Mux3~2_combout\ : std_logic;
SIGNAL \ledA0|Mux3~3_combout\ : std_logic;
SIGNAL \ledA0|Mux2~2_combout\ : std_logic;
SIGNAL \ledA0|Mux2~3_combout\ : std_logic;
SIGNAL \ledA0|Mux1~2_combout\ : std_logic;
SIGNAL \ledA0|Mux1~3_combout\ : std_logic;
SIGNAL \ledA0|Mux0~2_combout\ : std_logic;
SIGNAL \ledA0|Mux0~3_combout\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \hdmi_out0|clk_25~0_combout\ : std_logic;
SIGNAL \hdmi_out0|clk_25~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|clk_25~q\ : std_logic;
SIGNAL \hdmi_out0|clk_25~clkctrl_outclk\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[0]~11_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal1~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan2~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan28~8_combout\ : std_logic;
SIGNAL \hdmi_out0|reset_a~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|reset_a~q\ : std_logic;
SIGNAL \hdmi_out0|reset_b~0_combout\ : std_logic;
SIGNAL \hdmi_out0|reset_b~q\ : std_logic;
SIGNAL \hdmi_out0|reset_c~0_combout\ : std_logic;
SIGNAL \hdmi_out0|reset_c~q\ : std_logic;
SIGNAL \hdmi_out0|reset_d~0_combout\ : std_logic;
SIGNAL \hdmi_out0|reset_d~q\ : std_logic;
SIGNAL \hdmi_out0|reset_e~0_combout\ : std_logic;
SIGNAL \hdmi_out0|reset_e~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[5]~29_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[0]~10_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[0]~11\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[1]~12_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[1]~13\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[2]~14_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[2]~15\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[3]~16_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[3]~17\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[4]~18_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[4]~19\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[5]~20_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[5]~21\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[6]~22_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[6]~23\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[7]~24_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[7]~25\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[8]~26_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[8]~27\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[9]~28_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal0~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal0~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal0~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[5]~10_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[0]~12\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[1]~13_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[1]~14\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[2]~15_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[2]~16\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[3]~17_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[3]~18\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[4]~19_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[4]~20\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[5]~21_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[5]~22\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[6]~23_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[6]~24\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[7]~25_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[7]~26\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[8]~27_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[8]~28\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[9]~30_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~59_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan28~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan28~7_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan1~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|vs_1~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|vs_2~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|vs_out~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|vs_out~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan0~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|hs_1~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|hs_2~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|hs_2~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|hs_out~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|hs_out~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~15_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan29~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan17~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan34~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan34~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~16_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan2~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan2~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~103_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan7~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~104_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~105_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|de_1~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan28~5_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~12_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan23~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan23~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~101_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~102_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~13_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~14_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan29~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan20~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan9~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan7~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan9~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~96_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan11~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~3_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~5_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~17_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan0~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~36_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~40_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~37_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~38_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan29~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~39_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~3_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~1\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~3\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~5\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~7\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~9\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~11\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~13\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~15\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~16_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~14_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~12_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~10_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~8_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~6_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~2\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~4\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~6\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~8\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~10\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~12\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~14\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~16\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~18\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~20\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~21_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~7_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~17_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~45_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~5_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~19_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~11_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~15_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~9_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~13_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal11~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~46_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~3_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~27_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~25_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~22_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~108_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~47_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~48_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~49_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~53_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~50_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~51_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~52_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~54_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~41_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~43_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~42_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~44_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~55_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~61_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~62_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal17~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal17~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal11~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal11~3_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~75_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~76_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan31~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan31~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~66_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~67_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~65_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan32~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~68_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~69_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~70_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~71_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~72_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan26~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan26~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~60_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~73_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~74_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~77_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal11~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~56_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~57_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~58_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~10_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~8_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~5_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~107_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~63_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~64_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~89_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~90_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~86_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~87_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~88_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~91_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan32~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~81_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~82_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan28~6_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~83_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~84_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~106_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal5~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~78_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~79_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~80_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~85_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~92_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~93_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~94_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~95_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~98_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~97_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~7_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~99_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~100_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~9_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~6_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~8_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~10_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~11_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~18_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~19_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~20_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~21_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~22_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~23_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|r_out[4]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~24_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~25_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~26_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|r_out[5]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|r_out[6]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~27_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~28_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~29_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|r_out[7]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|g_out[4]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|g_out[5]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|g_out[6]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|g_out[7]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|b_out[4]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|b_out[5]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|b_out[6]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|b_out[7]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \hdmi_out0|res_img|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLA0|Mult1|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \multi0|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLA0|temp2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLA0|Mult1|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \hdmi_out0|res_img|r_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLA0|temp1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \multi0|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL ResAdd : std_logic_vector(3 DOWNTO 0);
SIGNAL \hdmi_out0|res_img|g_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hdmi_out0|res_img|b_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \multi0|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \multi0|Mult1|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \multi0|Mult1|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLA0|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLA0|Mult0|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \hdmi_out0|res_img|rgb2\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \multi0|Mult1|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLA0|Mult0|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLA0|Mult1|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ledA0|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ledB0|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ledA1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ledB1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX0~8_combout\ : std_logic;

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
ww_reset <= reset;
ww_operation <= operation;
ww_CLA <= CLA;
opeACLA <= ww_opeACLA;
opeBCLA <= ww_opeBCLA;
ww_resCLA <= resCLA;
ww_coutCLA <= coutCLA;
cinCLA <= ww_cinCLA;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
modesOut <= ww_modesOut;
ww_clk_50 <= clk_50;
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

\hdmi_out0|clk_25~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \hdmi_out0|clk_25~q\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\ledA0|ALT_INV_Mux0~3_combout\ <= NOT \ledA0|Mux0~3_combout\;
\ledB0|ALT_INV_Mux0~3_combout\ <= NOT \ledB0|Mux0~3_combout\;
\ledA1|ALT_INV_Mux0~0_combout\ <= NOT \ledA1|Mux0~0_combout\;
\ledB1|ALT_INV_Mux0~0_combout\ <= NOT \ledB1|Mux0~0_combout\;
\ALT_INV_HEX0~8_combout\ <= NOT \HEX0~8_combout\;
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

-- Location: IOOBUF_X69_Y0_N23
\opeACLA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA0|opeACLA[0]~0_combout\,
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
	i => \CLA0|Add0~12_combout\,
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
	i => \CLA0|Add0~13_combout\,
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
	i => \CLA0|Add0~14_combout\,
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
	i => \CLA0|opeBCLA[0]~0_combout\,
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
	i => \CLA0|opeBCLA[1]~1_combout\,
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
	i => \CLA0|opeBCLA[2]~2_combout\,
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
	i => \CLA0|opeBCLA[3]~3_combout\,
	devoe => ww_devoe,
	o => \opeBCLA[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~2_combout\,
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
	i => \HEX0~3_combout\,
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
	i => \HEX0~4_combout\,
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
	i => \HEX0~5_combout\,
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
	i => \HEX0~6_combout\,
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
	i => \HEX0~7_combout\,
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
	i => \ALT_INV_HEX0~8_combout\,
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
	i => \HEX1~14_combout\,
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
	i => \HEX1~15_combout\,
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
	i => \HEX1~16_combout\,
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
	i => \HEX1~17_combout\,
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
	i => \HEX1~18_combout\,
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
	i => \HEX1~19_combout\,
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
	i => \HEX1~20_combout\,
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
	i => \ledB1|Mux6~0_combout\,
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
	i => \ledB1|Mux5~0_combout\,
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
	i => \ledB1|Mux4~0_combout\,
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
	i => \ledB1|Mux3~0_combout\,
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
	i => \ledB1|Mux2~0_combout\,
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
	i => \ledB1|Mux1~0_combout\,
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
	i => \ledB1|ALT_INV_Mux0~0_combout\,
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
	i => \ledB0|Mux6~3_combout\,
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
	i => \ledB0|Mux5~3_combout\,
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
	i => \HEX3~0_combout\,
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
	i => \ledB0|Mux3~3_combout\,
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
	i => \ledB0|Mux2~3_combout\,
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
	i => \ledB0|Mux1~3_combout\,
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
	i => \ledB0|ALT_INV_Mux0~3_combout\,
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
	i => \ledA1|Mux6~0_combout\,
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
	i => \ledA1|Mux5~0_combout\,
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
	i => \ledA1|Mux4~0_combout\,
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
	i => \ledA1|Mux3~0_combout\,
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
	i => \ledA1|Mux2~0_combout\,
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
	i => \ledA1|Mux1~0_combout\,
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
	i => \ledA1|ALT_INV_Mux0~0_combout\,
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
	i => \ledA0|Mux6~3_combout\,
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
	i => \ledA0|Mux5~3_combout\,
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
	i => \HEX5~0_combout\,
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
	i => \ledA0|Mux3~3_combout\,
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
	i => \ledA0|Mux2~3_combout\,
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
	i => \ledA0|Mux1~3_combout\,
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
	i => \ledA0|ALT_INV_Mux0~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
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

-- Location: IOOBUF_X56_Y54_N9
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

-- Location: IOOBUF_X66_Y54_N23
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

-- Location: IOOBUF_X58_Y54_N23
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

-- Location: IOOBUF_X0_Y13_N9
\vga_vs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hdmi_out0|res_img|vs_out~q\,
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
	i => \hdmi_out0|res_img|hs_out~q\,
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
	i => \hdmi_out0|res_img|r_out\(4),
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
	i => \hdmi_out0|res_img|r_out\(5),
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
	i => \hdmi_out0|res_img|r_out\(6),
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
	i => \hdmi_out0|res_img|r_out\(7),
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
	i => \hdmi_out0|res_img|g_out\(4),
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
	i => \hdmi_out0|res_img|g_out\(5),
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
	i => \hdmi_out0|res_img|g_out\(6),
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
	i => \hdmi_out0|res_img|g_out\(7),
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
	i => \hdmi_out0|res_img|b_out\(4),
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
	i => \hdmi_out0|res_img|b_out\(5),
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
	i => \hdmi_out0|res_img|b_out\(6),
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
	i => \hdmi_out0|res_img|b_out\(7),
	devoe => ww_devoe,
	o => \vga_b[3]~output_o\);

-- Location: IOIBUF_X62_Y0_N29
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

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: IOIBUF_X54_Y54_N15
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

-- Location: LCCOMB_X58_Y48_N24
\CLA0|opeACLA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|opeACLA[0]~0_combout\ = (\CLA~input_o\ & (\A[0]~input_o\ & ((\B[0]~input_o\) # (!\operation~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \operation~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \CLA0|opeACLA[0]~0_combout\);

-- Location: IOIBUF_X58_Y54_N29
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

-- Location: LCCOMB_X58_Y48_N0
\CLA0|temp1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|temp1\(1) = ((!\B[0]~input_o\) # (!\A[1]~input_o\)) # (!\CLA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	combout => \CLA0|temp1\(1));

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: LCCOMB_X58_Y48_N18
\CLA0|temp2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|temp2\(1) = ((!\A[0]~input_o\) # (!\CLA~input_o\)) # (!\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \CLA~input_o\,
	datad => \A[0]~input_o\,
	combout => \CLA0|temp2\(1));

-- Location: LCCOMB_X58_Y48_N12
\CLA0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Add0~6_combout\ = (\CLA0|temp1\(1) & (!\CLA0|temp2\(1) & VCC)) # (!\CLA0|temp1\(1) & (\CLA0|temp2\(1) $ (GND)))
-- \CLA0|Add0~7\ = CARRY((!\CLA0|temp1\(1) & !\CLA0|temp2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|temp1\(1),
	datab => \CLA0|temp2\(1),
	datad => VCC,
	combout => \CLA0|Add0~6_combout\,
	cout => \CLA0|Add0~7\);

-- Location: LCCOMB_X58_Y48_N8
\CLA0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Add0~12_combout\ = (\operation~input_o\ & (((\CLA0|Add0~6_combout\)))) # (!\operation~input_o\ & (\CLA~input_o\ & (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \operation~input_o\,
	datac => \A[1]~input_o\,
	datad => \CLA0|Add0~6_combout\,
	combout => \CLA0|Add0~12_combout\);

-- Location: IOIBUF_X56_Y54_N1
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

-- Location: LCCOMB_X58_Y48_N30
\CLA0|temp2[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|temp2[2]~0_combout\ = (\CLA~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \CLA0|temp2[2]~0_combout\);

-- Location: LCCOMB_X58_Y48_N20
\CLA0|temp1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|temp1\(2) = ((!\CLA~input_o\) # (!\A[2]~input_o\)) # (!\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \CLA~input_o\,
	combout => \CLA0|temp1\(2));

-- Location: LCCOMB_X58_Y48_N14
\CLA0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Add0~8_combout\ = (\CLA0|temp2[2]~0_combout\ & ((\CLA0|temp1\(2) & (!\CLA0|Add0~7\)) # (!\CLA0|temp1\(2) & (\CLA0|Add0~7\ & VCC)))) # (!\CLA0|temp2[2]~0_combout\ & ((\CLA0|temp1\(2) & ((\CLA0|Add0~7\) # (GND))) # (!\CLA0|temp1\(2) & 
-- (!\CLA0|Add0~7\))))
-- \CLA0|Add0~9\ = CARRY((\CLA0|temp2[2]~0_combout\ & (\CLA0|temp1\(2) & !\CLA0|Add0~7\)) # (!\CLA0|temp2[2]~0_combout\ & ((\CLA0|temp1\(2)) # (!\CLA0|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|temp2[2]~0_combout\,
	datab => \CLA0|temp1\(2),
	datad => VCC,
	cin => \CLA0|Add0~7\,
	combout => \CLA0|Add0~8_combout\,
	cout => \CLA0|Add0~9\);

-- Location: LCCOMB_X58_Y48_N22
\CLA0|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Add0~13_combout\ = (\operation~input_o\ & (((\CLA0|Add0~8_combout\)))) # (!\operation~input_o\ & (\CLA~input_o\ & (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \A[2]~input_o\,
	datac => \CLA0|Add0~8_combout\,
	datad => \operation~input_o\,
	combout => \CLA0|Add0~13_combout\);

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: LCCOMB_X58_Y48_N10
\CLA0|temp1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|temp1\(3) = ((!\A[3]~input_o\) # (!\B[0]~input_o\)) # (!\CLA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \CLA0|temp1\(3));

-- Location: LCCOMB_X58_Y48_N6
\CLA0|temp2[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|temp2[3]~1_combout\ = (\CLA~input_o\ & (\B[1]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	combout => \CLA0|temp2[3]~1_combout\);

-- Location: LCCOMB_X58_Y48_N16
\CLA0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Add0~10_combout\ = \CLA0|temp1\(3) $ (\CLA0|Add0~9\ $ (\CLA0|temp2[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|temp1\(3),
	datad => \CLA0|temp2[3]~1_combout\,
	cin => \CLA0|Add0~9\,
	combout => \CLA0|Add0~10_combout\);

-- Location: LCCOMB_X58_Y48_N4
\CLA0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Add0~14_combout\ = (\operation~input_o\ & (\CLA0|Add0~10_combout\)) # (!\operation~input_o\ & (((\CLA~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation~input_o\,
	datab => \CLA0|Add0~10_combout\,
	datac => \CLA~input_o\,
	datad => \A[3]~input_o\,
	combout => \CLA0|Add0~14_combout\);

-- Location: LCCOMB_X58_Y48_N28
\CLA0|opeBCLA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|opeBCLA[0]~0_combout\ = (\B[0]~input_o\ & (\CLA~input_o\ & !\operation~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \CLA~input_o\,
	datad => \operation~input_o\,
	combout => \CLA0|opeBCLA[0]~0_combout\);

-- Location: LCCOMB_X51_Y49_N8
\CLA0|opeBCLA[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|opeBCLA[1]~1_combout\ = (\CLA~input_o\ & (\B[1]~input_o\ & !\operation~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \B[1]~input_o\,
	datad => \operation~input_o\,
	combout => \CLA0|opeBCLA[1]~1_combout\);

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: LCCOMB_X51_Y49_N18
\CLA0|opeBCLA[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|opeBCLA[2]~2_combout\ = (\CLA~input_o\ & (\B[2]~input_o\ & ((\A[0]~input_o\) # (!\operation~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \operation~input_o\,
	combout => \CLA0|opeBCLA[2]~2_combout\);

-- Location: IOIBUF_X54_Y54_N29
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

-- Location: LCCOMB_X59_Y50_N26
\tempOpeB[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempOpeB[3]~0_combout\ = (\CLA~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA~input_o\,
	datad => \B[3]~input_o\,
	combout => \tempOpeB[3]~0_combout\);

-- Location: LCCOMB_X51_Y49_N4
\CLA0|temp3[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|temp3[3]~0_combout\ = (\CLA~input_o\ & (\A[1]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[2]~input_o\,
	combout => \CLA0|temp3[3]~0_combout\);

-- Location: LCCOMB_X51_Y49_N30
\CLA0|opeBCLA[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|opeBCLA[3]~3_combout\ = (\operation~input_o\ & (\CLA0|temp3[3]~0_combout\ $ (((\tempOpeB[3]~0_combout\ & \A[0]~input_o\))))) # (!\operation~input_o\ & (\tempOpeB[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempOpeB[3]~0_combout\,
	datab => \A[0]~input_o\,
	datac => \CLA0|temp3[3]~0_combout\,
	datad => \operation~input_o\,
	combout => \CLA0|opeBCLA[3]~3_combout\);

-- Location: LCCOMB_X52_Y48_N2
\multi0|Mult0|auto_generated|cs2a[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|cs2a[1]~0_combout\ = \B[1]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	combout => \multi0|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X51_Y48_N28
\multi0|Mult1|auto_generated|le2a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le2a\(1) = (\A[0]~input_o\ & (\B[1]~input_o\ & ((\B[2]~input_o\)))) # (!\A[0]~input_o\ & (\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \multi0|Mult1|auto_generated|le2a\(1));

-- Location: LCCOMB_X51_Y48_N12
\multi0|Mult1|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le4a\(1) = (\multi0|Mult1|auto_generated|le2a\(1)) # ((\multi0|Mult0|auto_generated|cs2a[1]~0_combout\ & (\A[1]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \A[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \multi0|Mult1|auto_generated|le2a\(1),
	combout => \multi0|Mult1|auto_generated|le4a\(1));

-- Location: LCCOMB_X51_Y48_N0
\multi0|Mult1|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le5a\(3) = (\B[0]~input_o\ & (\B[1]~input_o\ $ ((\A[3]~input_o\)))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \multi0|Mult1|auto_generated|le5a\(3));

-- Location: LCCOMB_X52_Y48_N8
\multi0|Mult1|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le5a\(2) = (\B[0]~input_o\ & (\B[1]~input_o\ $ (((\A[2]~input_o\))))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (!\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \multi0|Mult1|auto_generated|le5a\(2));

-- Location: LCCOMB_X51_Y48_N6
\multi0|Mult1|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|op_1~0_combout\ = (\multi0|Mult1|auto_generated|le5a\(2) & (\B[3]~input_o\ $ (VCC))) # (!\multi0|Mult1|auto_generated|le5a\(2) & (\B[3]~input_o\ & VCC))
-- \multi0|Mult1|auto_generated|op_1~1\ = CARRY((\multi0|Mult1|auto_generated|le5a\(2) & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le5a\(2),
	datab => \B[3]~input_o\,
	datad => VCC,
	combout => \multi0|Mult1|auto_generated|op_1~0_combout\,
	cout => \multi0|Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X51_Y48_N8
\multi0|Mult1|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|op_1~2_combout\ = (\multi0|Mult1|auto_generated|le5a\(3) & (!\multi0|Mult1|auto_generated|op_1~1\)) # (!\multi0|Mult1|auto_generated|le5a\(3) & ((\multi0|Mult1|auto_generated|op_1~1\) # (GND)))
-- \multi0|Mult1|auto_generated|op_1~3\ = CARRY((!\multi0|Mult1|auto_generated|op_1~1\) # (!\multi0|Mult1|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multi0|Mult1|auto_generated|le5a\(3),
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|op_1~1\,
	combout => \multi0|Mult1|auto_generated|op_1~2_combout\,
	cout => \multi0|Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X51_Y48_N14
\multi0|Mult1|auto_generated|le2a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le2a\(0) = (\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \multi0|Mult1|auto_generated|le2a\(0));

-- Location: LCCOMB_X51_Y48_N4
\multi0|Mult1|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le4a\(0) = (\multi0|Mult1|auto_generated|le2a\(0)) # ((\multi0|Mult0|auto_generated|cs2a[1]~0_combout\ & (\B[3]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \multi0|Mult1|auto_generated|le2a\(0),
	datad => \A[0]~input_o\,
	combout => \multi0|Mult1|auto_generated|le4a\(0));

-- Location: LCCOMB_X52_Y48_N30
\multi0|Mult1|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le5a\(1) = (\B[0]~input_o\ & (\B[1]~input_o\ $ ((\A[1]~input_o\)))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \multi0|Mult1|auto_generated|le5a\(1));

-- Location: LCCOMB_X51_Y48_N30
\multi0|Mult1|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le5a\(0) = \B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \multi0|Mult1|auto_generated|le5a\(0));

-- Location: LCCOMB_X51_Y48_N16
\multi0|Mult1|auto_generated|op_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|op_2~0_combout\ = (\multi0|Mult1|auto_generated|le5a\(0) & (\B[1]~input_o\ $ (VCC))) # (!\multi0|Mult1|auto_generated|le5a\(0) & (\B[1]~input_o\ & VCC))
-- \multi0|Mult1|auto_generated|op_2~1\ = CARRY((\multi0|Mult1|auto_generated|le5a\(0) & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le5a\(0),
	datab => \B[1]~input_o\,
	datad => VCC,
	combout => \multi0|Mult1|auto_generated|op_2~0_combout\,
	cout => \multi0|Mult1|auto_generated|op_2~1\);

-- Location: LCCOMB_X51_Y48_N18
\multi0|Mult1|auto_generated|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|op_2~2_combout\ = (\multi0|Mult1|auto_generated|le5a\(1) & (!\multi0|Mult1|auto_generated|op_2~1\)) # (!\multi0|Mult1|auto_generated|le5a\(1) & ((\multi0|Mult1|auto_generated|op_2~1\) # (GND)))
-- \multi0|Mult1|auto_generated|op_2~3\ = CARRY((!\multi0|Mult1|auto_generated|op_2~1\) # (!\multi0|Mult1|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le5a\(1),
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|op_2~1\,
	combout => \multi0|Mult1|auto_generated|op_2~2_combout\,
	cout => \multi0|Mult1|auto_generated|op_2~3\);

-- Location: LCCOMB_X51_Y48_N20
\multi0|Mult1|auto_generated|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|op_2~4_combout\ = ((\multi0|Mult1|auto_generated|op_1~0_combout\ $ (\multi0|Mult1|auto_generated|le4a\(0) $ (!\multi0|Mult1|auto_generated|op_2~3\)))) # (GND)
-- \multi0|Mult1|auto_generated|op_2~5\ = CARRY((\multi0|Mult1|auto_generated|op_1~0_combout\ & ((\multi0|Mult1|auto_generated|le4a\(0)) # (!\multi0|Mult1|auto_generated|op_2~3\))) # (!\multi0|Mult1|auto_generated|op_1~0_combout\ & 
-- (\multi0|Mult1|auto_generated|le4a\(0) & !\multi0|Mult1|auto_generated|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|op_1~0_combout\,
	datab => \multi0|Mult1|auto_generated|le4a\(0),
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|op_2~3\,
	combout => \multi0|Mult1|auto_generated|op_2~4_combout\,
	cout => \multi0|Mult1|auto_generated|op_2~5\);

-- Location: LCCOMB_X51_Y48_N22
\multi0|Mult1|auto_generated|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|op_2~6_combout\ = (\multi0|Mult1|auto_generated|le4a\(1) & ((\multi0|Mult1|auto_generated|op_1~2_combout\ & (\multi0|Mult1|auto_generated|op_2~5\ & VCC)) # (!\multi0|Mult1|auto_generated|op_1~2_combout\ & 
-- (!\multi0|Mult1|auto_generated|op_2~5\)))) # (!\multi0|Mult1|auto_generated|le4a\(1) & ((\multi0|Mult1|auto_generated|op_1~2_combout\ & (!\multi0|Mult1|auto_generated|op_2~5\)) # (!\multi0|Mult1|auto_generated|op_1~2_combout\ & 
-- ((\multi0|Mult1|auto_generated|op_2~5\) # (GND)))))
-- \multi0|Mult1|auto_generated|op_2~7\ = CARRY((\multi0|Mult1|auto_generated|le4a\(1) & (!\multi0|Mult1|auto_generated|op_1~2_combout\ & !\multi0|Mult1|auto_generated|op_2~5\)) # (!\multi0|Mult1|auto_generated|le4a\(1) & 
-- ((!\multi0|Mult1|auto_generated|op_2~5\) # (!\multi0|Mult1|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le4a\(1),
	datab => \multi0|Mult1|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|op_2~5\,
	combout => \multi0|Mult1|auto_generated|op_2~6_combout\,
	cout => \multi0|Mult1|auto_generated|op_2~7\);

-- Location: LCCOMB_X52_Y48_N24
\multi0|Mult1|auto_generated|le2a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le2a\(2) = (\A[1]~input_o\ & (\B[2]~input_o\ & (\B[1]~input_o\))) # (!\A[1]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult1|auto_generated|le2a\(2));

-- Location: LCCOMB_X51_Y48_N26
\multi0|Mult1|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le4a\(2) = (\multi0|Mult1|auto_generated|le2a\(2)) # ((\multi0|Mult0|auto_generated|cs2a[1]~0_combout\ & (\B[3]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \multi0|Mult1|auto_generated|le2a\(2),
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \multi0|Mult1|auto_generated|le4a\(2));

-- Location: LCCOMB_X51_Y48_N2
\multi0|Mult1|auto_generated|le5a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le5a\(4) = (\B[1]~input_o\ & ((!\A[3]~input_o\))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	combout => \multi0|Mult1|auto_generated|le5a\(4));

-- Location: LCCOMB_X51_Y48_N10
\multi0|Mult1|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|op_1~4_combout\ = \multi0|Mult1|auto_generated|op_1~3\ $ (!\multi0|Mult1|auto_generated|le5a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \multi0|Mult1|auto_generated|le5a\(4),
	cin => \multi0|Mult1|auto_generated|op_1~3\,
	combout => \multi0|Mult1|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X51_Y48_N24
\multi0|Mult1|auto_generated|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|op_2~8_combout\ = \multi0|Mult1|auto_generated|le4a\(2) $ (\multi0|Mult1|auto_generated|op_2~7\ $ (!\multi0|Mult1|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le4a\(2),
	datad => \multi0|Mult1|auto_generated|op_1~4_combout\,
	cin => \multi0|Mult1|auto_generated|op_2~7\,
	combout => \multi0|Mult1|auto_generated|op_2~8_combout\);

-- Location: IOIBUF_X49_Y54_N1
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

-- Location: LCCOMB_X52_Y49_N30
\multi0|Mult0|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le5a\(3) = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X51_Y49_N12
\multi0|Mult0|auto_generated|le4a[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le4a\(5) = \B[3]~input_o\ $ (((\B[1]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X52_Y48_N10
\multi0|Mult0|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le5a\(2) = (\A[2]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \multi0|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X52_Y48_N0
\multi0|Mult0|auto_generated|le4a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le4a\(4) = (\A[3]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (\B[1]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ $ (((\B[2]~input_o\ & \B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X51_Y49_N6
\multi0|Mult0|auto_generated|le4a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le4a\(3) = (\multi0|Mult0|auto_generated|cs2a[1]~0_combout\ & (\multi0|Mult0|auto_generated|le4a\(5) $ ((\A[3]~input_o\)))) # (!\multi0|Mult0|auto_generated|cs2a[1]~0_combout\ & (\multi0|Mult0|auto_generated|le4a\(5) & 
-- ((!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \multi0|Mult0|auto_generated|le4a\(5),
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \multi0|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X52_Y48_N6
\multi0|Mult0|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le5a\(1) = (\A[1]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X51_Y49_N10
\multi0|Mult0|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le4a\(2) = (\multi0|Mult0|auto_generated|cs2a[1]~0_combout\ & (\multi0|Mult0|auto_generated|le4a\(5) $ (((\A[2]~input_o\))))) # (!\multi0|Mult0|auto_generated|cs2a[1]~0_combout\ & (\multi0|Mult0|auto_generated|le4a\(5) & 
-- (!\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \multi0|Mult0|auto_generated|le4a\(5),
	datac => \A[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \multi0|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X59_Y50_N30
\multi0|Mult0|auto_generated|le3a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le3a\(4) = (\B[1]~input_o\ & ((\B[0]~input_o\) # (!\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	combout => \multi0|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X52_Y48_N26
\multi0|Mult0|auto_generated|le3a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le3a\(3) = (\B[0]~input_o\ & (\B[1]~input_o\ $ ((\A[3]~input_o\)))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \multi0|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X51_Y49_N22
\multi0|Mult0|auto_generated|le3a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le3a\(2) = (\B[0]~input_o\ & (\A[2]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \multi0|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X52_Y49_N0
\multi0|Mult0|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_1~0_combout\ = (\multi0|Mult0|auto_generated|le4a\(5) & (\multi0|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\multi0|Mult0|auto_generated|le4a\(5) & (\multi0|Mult0|auto_generated|le3a\(2) & VCC))
-- \multi0|Mult0|auto_generated|op_1~1\ = CARRY((\multi0|Mult0|auto_generated|le4a\(5) & \multi0|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le4a\(5),
	datab => \multi0|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \multi0|Mult0|auto_generated|op_1~0_combout\,
	cout => \multi0|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X52_Y49_N2
\multi0|Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_1~2_combout\ = (\multi0|Mult0|auto_generated|le3a\(3) & (!\multi0|Mult0|auto_generated|op_1~1\)) # (!\multi0|Mult0|auto_generated|le3a\(3) & ((\multi0|Mult0|auto_generated|op_1~1\) # (GND)))
-- \multi0|Mult0|auto_generated|op_1~3\ = CARRY((!\multi0|Mult0|auto_generated|op_1~1\) # (!\multi0|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_1~1\,
	combout => \multi0|Mult0|auto_generated|op_1~2_combout\,
	cout => \multi0|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X52_Y49_N4
\multi0|Mult0|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_1~4_combout\ = ((\multi0|Mult0|auto_generated|le4a\(2) $ (\multi0|Mult0|auto_generated|le3a\(4) $ (!\multi0|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \multi0|Mult0|auto_generated|op_1~5\ = CARRY((\multi0|Mult0|auto_generated|le4a\(2) & ((\multi0|Mult0|auto_generated|le3a\(4)) # (!\multi0|Mult0|auto_generated|op_1~3\))) # (!\multi0|Mult0|auto_generated|le4a\(2) & (\multi0|Mult0|auto_generated|le3a\(4) & 
-- !\multi0|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le4a\(2),
	datab => \multi0|Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_1~3\,
	combout => \multi0|Mult0|auto_generated|op_1~4_combout\,
	cout => \multi0|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X52_Y49_N6
\multi0|Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_1~6_combout\ = (\multi0|Mult0|auto_generated|le4a\(3) & ((\multi0|Mult0|auto_generated|le5a\(1) & (\multi0|Mult0|auto_generated|op_1~5\ & VCC)) # (!\multi0|Mult0|auto_generated|le5a\(1) & 
-- (!\multi0|Mult0|auto_generated|op_1~5\)))) # (!\multi0|Mult0|auto_generated|le4a\(3) & ((\multi0|Mult0|auto_generated|le5a\(1) & (!\multi0|Mult0|auto_generated|op_1~5\)) # (!\multi0|Mult0|auto_generated|le5a\(1) & ((\multi0|Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \multi0|Mult0|auto_generated|op_1~7\ = CARRY((\multi0|Mult0|auto_generated|le4a\(3) & (!\multi0|Mult0|auto_generated|le5a\(1) & !\multi0|Mult0|auto_generated|op_1~5\)) # (!\multi0|Mult0|auto_generated|le4a\(3) & ((!\multi0|Mult0|auto_generated|op_1~5\) # 
-- (!\multi0|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le4a\(3),
	datab => \multi0|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_1~5\,
	combout => \multi0|Mult0|auto_generated|op_1~6_combout\,
	cout => \multi0|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X52_Y49_N8
\multi0|Mult0|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_1~8_combout\ = ((\multi0|Mult0|auto_generated|le5a\(2) $ (\multi0|Mult0|auto_generated|le4a\(4) $ (!\multi0|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \multi0|Mult0|auto_generated|op_1~9\ = CARRY((\multi0|Mult0|auto_generated|le5a\(2) & ((\multi0|Mult0|auto_generated|le4a\(4)) # (!\multi0|Mult0|auto_generated|op_1~7\))) # (!\multi0|Mult0|auto_generated|le5a\(2) & (\multi0|Mult0|auto_generated|le4a\(4) & 
-- !\multi0|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le5a\(2),
	datab => \multi0|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_1~7\,
	combout => \multi0|Mult0|auto_generated|op_1~8_combout\,
	cout => \multi0|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X52_Y49_N10
\multi0|Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_1~10_combout\ = \multi0|Mult0|auto_generated|le5a\(3) $ (\multi0|Mult0|auto_generated|op_1~9\ $ (!\multi0|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le5a\(3),
	datad => \multi0|Mult0|auto_generated|le4a\(5),
	cin => \multi0|Mult0|auto_generated|op_1~9\,
	combout => \multi0|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X51_Y49_N20
\multi0|Mult0|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le5a\(0) = (\A[0]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X51_Y49_N14
\multi0|Mult0|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le4a\(1) = (\multi0|Mult0|auto_generated|cs2a[1]~0_combout\ & (\multi0|Mult0|auto_generated|le4a\(5) $ ((\A[1]~input_o\)))) # (!\multi0|Mult0|auto_generated|cs2a[1]~0_combout\ & (\multi0|Mult0|auto_generated|le4a\(5) & 
-- ((!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le4a\(5),
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \multi0|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \multi0|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X51_Y49_N16
\multi0|Mult0|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le4a\(0) = \B[3]~input_o\ $ (((\B[2]~input_o\ & ((\B[1]~input_o\) # (\A[0]~input_o\))) # (!\B[2]~input_o\ & (\B[1]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X51_Y49_N28
\multi0|Mult0|auto_generated|le3a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le3a\(1) = (\B[0]~input_o\ & (\B[1]~input_o\ $ (((\A[1]~input_o\))))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (!\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \multi0|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X58_Y48_N2
\multi0|Mult0|auto_generated|le3a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le3a\(0) = \B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \multi0|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X52_Y49_N12
\multi0|Mult0|auto_generated|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~0_combout\ = (\B[1]~input_o\ & (\multi0|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\B[1]~input_o\ & (\multi0|Mult0|auto_generated|le3a\(0) & VCC))
-- \multi0|Mult0|auto_generated|op_3~1\ = CARRY((\B[1]~input_o\ & \multi0|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \multi0|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \multi0|Mult0|auto_generated|op_3~0_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X52_Y49_N14
\multi0|Mult0|auto_generated|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~2_combout\ = (\multi0|Mult0|auto_generated|le3a\(1) & (!\multi0|Mult0|auto_generated|op_3~1\)) # (!\multi0|Mult0|auto_generated|le3a\(1) & ((\multi0|Mult0|auto_generated|op_3~1\) # (GND)))
-- \multi0|Mult0|auto_generated|op_3~3\ = CARRY((!\multi0|Mult0|auto_generated|op_3~1\) # (!\multi0|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multi0|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_3~1\,
	combout => \multi0|Mult0|auto_generated|op_3~2_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X52_Y49_N16
\multi0|Mult0|auto_generated|op_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~4_combout\ = ((\multi0|Mult0|auto_generated|le4a\(0) $ (\multi0|Mult0|auto_generated|op_1~0_combout\ $ (!\multi0|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \multi0|Mult0|auto_generated|op_3~5\ = CARRY((\multi0|Mult0|auto_generated|le4a\(0) & ((\multi0|Mult0|auto_generated|op_1~0_combout\) # (!\multi0|Mult0|auto_generated|op_3~3\))) # (!\multi0|Mult0|auto_generated|le4a\(0) & 
-- (\multi0|Mult0|auto_generated|op_1~0_combout\ & !\multi0|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le4a\(0),
	datab => \multi0|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_3~3\,
	combout => \multi0|Mult0|auto_generated|op_3~4_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X52_Y49_N18
\multi0|Mult0|auto_generated|op_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~6_combout\ = (\multi0|Mult0|auto_generated|le4a\(1) & ((\multi0|Mult0|auto_generated|op_1~2_combout\ & (\multi0|Mult0|auto_generated|op_3~5\ & VCC)) # (!\multi0|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\multi0|Mult0|auto_generated|op_3~5\)))) # (!\multi0|Mult0|auto_generated|le4a\(1) & ((\multi0|Mult0|auto_generated|op_1~2_combout\ & (!\multi0|Mult0|auto_generated|op_3~5\)) # (!\multi0|Mult0|auto_generated|op_1~2_combout\ & 
-- ((\multi0|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \multi0|Mult0|auto_generated|op_3~7\ = CARRY((\multi0|Mult0|auto_generated|le4a\(1) & (!\multi0|Mult0|auto_generated|op_1~2_combout\ & !\multi0|Mult0|auto_generated|op_3~5\)) # (!\multi0|Mult0|auto_generated|le4a\(1) & 
-- ((!\multi0|Mult0|auto_generated|op_3~5\) # (!\multi0|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le4a\(1),
	datab => \multi0|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_3~5\,
	combout => \multi0|Mult0|auto_generated|op_3~6_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X52_Y49_N20
\multi0|Mult0|auto_generated|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~8_combout\ = ((\multi0|Mult0|auto_generated|le5a\(0) $ (\multi0|Mult0|auto_generated|op_1~4_combout\ $ (!\multi0|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \multi0|Mult0|auto_generated|op_3~9\ = CARRY((\multi0|Mult0|auto_generated|le5a\(0) & ((\multi0|Mult0|auto_generated|op_1~4_combout\) # (!\multi0|Mult0|auto_generated|op_3~7\))) # (!\multi0|Mult0|auto_generated|le5a\(0) & 
-- (\multi0|Mult0|auto_generated|op_1~4_combout\ & !\multi0|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le5a\(0),
	datab => \multi0|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_3~7\,
	combout => \multi0|Mult0|auto_generated|op_3~8_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X52_Y49_N22
\multi0|Mult0|auto_generated|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~10_combout\ = (\B[1]~input_o\ & ((\multi0|Mult0|auto_generated|op_1~6_combout\ & (\multi0|Mult0|auto_generated|op_3~9\ & VCC)) # (!\multi0|Mult0|auto_generated|op_1~6_combout\ & (!\multi0|Mult0|auto_generated|op_3~9\)))) 
-- # (!\B[1]~input_o\ & ((\multi0|Mult0|auto_generated|op_1~6_combout\ & (!\multi0|Mult0|auto_generated|op_3~9\)) # (!\multi0|Mult0|auto_generated|op_1~6_combout\ & ((\multi0|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \multi0|Mult0|auto_generated|op_3~11\ = CARRY((\B[1]~input_o\ & (!\multi0|Mult0|auto_generated|op_1~6_combout\ & !\multi0|Mult0|auto_generated|op_3~9\)) # (!\B[1]~input_o\ & ((!\multi0|Mult0|auto_generated|op_3~9\) # 
-- (!\multi0|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \multi0|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_3~9\,
	combout => \multi0|Mult0|auto_generated|op_3~10_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X52_Y49_N24
\multi0|Mult0|auto_generated|op_3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~12_combout\ = ((\B[1]~input_o\ $ (\multi0|Mult0|auto_generated|op_1~8_combout\ $ (!\multi0|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \multi0|Mult0|auto_generated|op_3~13\ = CARRY((\B[1]~input_o\ & ((\multi0|Mult0|auto_generated|op_1~8_combout\) # (!\multi0|Mult0|auto_generated|op_3~11\))) # (!\B[1]~input_o\ & (\multi0|Mult0|auto_generated|op_1~8_combout\ & 
-- !\multi0|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \multi0|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_3~11\,
	combout => \multi0|Mult0|auto_generated|op_3~12_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X52_Y49_N26
\multi0|Mult0|auto_generated|op_3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~14_combout\ = \B[1]~input_o\ $ (\multi0|Mult0|auto_generated|op_3~13\ $ (!\multi0|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datad => \multi0|Mult0|auto_generated|op_1~10_combout\,
	cin => \multi0|Mult0|auto_generated|op_3~13\,
	combout => \multi0|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X52_Y49_N28
\controlMulti|erorTotale~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlMulti|erorTotale~0_combout\ = (\multi0|Mult0|auto_generated|op_3~14_combout\) # ((\multi0|Mult0|auto_generated|op_3~8_combout\) # ((\multi0|Mult0|auto_generated|op_3~10_combout\) # (\multi0|Mult0|auto_generated|op_3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|op_3~14_combout\,
	datab => \multi0|Mult0|auto_generated|op_3~8_combout\,
	datac => \multi0|Mult0|auto_generated|op_3~10_combout\,
	datad => \multi0|Mult0|auto_generated|op_3~12_combout\,
	combout => \controlMulti|erorTotale~0_combout\);

-- Location: LCCOMB_X51_Y45_N2
\controlMulti|erorTotale~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlMulti|erorTotale~1_combout\ = (\mode~input_o\ & (\multi0|Mult1|auto_generated|op_2~6_combout\ $ ((\multi0|Mult1|auto_generated|op_2~8_combout\)))) # (!\mode~input_o\ & (((\controlMulti|erorTotale~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|op_2~6_combout\,
	datab => \multi0|Mult1|auto_generated|op_2~8_combout\,
	datac => \mode~input_o\,
	datad => \controlMulti|erorTotale~0_combout\,
	combout => \controlMulti|erorTotale~1_combout\);

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

-- Location: LCCOMB_X59_Y50_N8
\tempOpeA[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempOpeA[3]~2_combout\ = (\CLA~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA~input_o\,
	datac => \A[3]~input_o\,
	combout => \tempOpeA[3]~2_combout\);

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

-- Location: LCCOMB_X52_Y47_N26
\CLA0|process_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|process_3~0_combout\ = (\coutCLA~input_o\ & ((\resCLA[3]~input_o\) # (\tempOpeA[3]~2_combout\ $ (\tempOpeB[3]~0_combout\)))) # (!\coutCLA~input_o\ & (\tempOpeA[3]~2_combout\ $ (((\tempOpeB[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coutCLA~input_o\,
	datab => \tempOpeA[3]~2_combout\,
	datac => \resCLA[3]~input_o\,
	datad => \tempOpeB[3]~0_combout\,
	combout => \CLA0|process_3~0_combout\);

-- Location: LCCOMB_X52_Y47_N18
\CLA0|eror~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|eror~0_combout\ = (\coutCLA~input_o\ & ((!\mode~input_o\) # (!\CLA0|process_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|process_3~0_combout\,
	datab => \mode~input_o\,
	datac => \coutCLA~input_o\,
	combout => \CLA0|eror~0_combout\);

-- Location: LCCOMB_X52_Y48_N12
\add0|Res[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|Res[0]~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & VCC))
-- \add0|Res[0]~1\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \add0|Res[0]~0_combout\,
	cout => \add0|Res[0]~1\);

-- Location: LCCOMB_X52_Y48_N14
\add0|Res[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|Res[1]~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\add0|Res[0]~1\ & VCC)) # (!\A[1]~input_o\ & (!\add0|Res[0]~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\add0|Res[0]~1\)) # (!\A[1]~input_o\ & ((\add0|Res[0]~1\) # (GND)))))
-- \add0|Res[1]~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\add0|Res[0]~1\)) # (!\B[1]~input_o\ & ((!\add0|Res[0]~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \add0|Res[0]~1\,
	combout => \add0|Res[1]~2_combout\,
	cout => \add0|Res[1]~3\);

-- Location: LCCOMB_X52_Y48_N16
\add0|Res[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|Res[2]~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\add0|Res[1]~3\)))) # (GND)
-- \add0|Res[2]~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\add0|Res[1]~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\add0|Res[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \add0|Res[1]~3\,
	combout => \add0|Res[2]~4_combout\,
	cout => \add0|Res[2]~5\);

-- Location: LCCOMB_X52_Y48_N18
\add0|Res[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|Res[3]~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (\add0|Res[2]~5\ & VCC)) # (!\A[3]~input_o\ & (!\add0|Res[2]~5\)))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (!\add0|Res[2]~5\)) # (!\A[3]~input_o\ & ((\add0|Res[2]~5\) # (GND)))))
-- \add0|Res[3]~7\ = CARRY((\B[3]~input_o\ & (!\A[3]~input_o\ & !\add0|Res[2]~5\)) # (!\B[3]~input_o\ & ((!\add0|Res[2]~5\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \add0|Res[2]~5\,
	combout => \add0|Res[3]~6_combout\,
	cout => \add0|Res[3]~7\);

-- Location: LCCOMB_X52_Y48_N20
\add0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|Add0~0_combout\ = !\add0|Res[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \add0|Res[3]~7\,
	combout => \add0|Add0~0_combout\);

-- Location: LCCOMB_X52_Y48_N28
\add0|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|Cout~0_combout\ = (!\mode~input_o\ & \add0|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datad => \add0|Add0~0_combout\,
	combout => \add0|Cout~0_combout\);

-- Location: LCCOMB_X52_Y48_N22
\controlAdd|erorTotale~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlAdd|erorTotale~0_combout\ = (\add0|Cout~0_combout\) # ((\B[3]~input_o\ & (!\add0|Res[3]~6_combout\ & \A[3]~input_o\)) # (!\B[3]~input_o\ & (\add0|Res[3]~6_combout\ & !\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \add0|Res[3]~6_combout\,
	datac => \A[3]~input_o\,
	datad => \add0|Cout~0_combout\,
	combout => \controlAdd|erorTotale~0_combout\);

-- Location: LCCOMB_X52_Y47_N24
\HEX0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~0_combout\ = (\CLA~input_o\ & ((\CLA0|eror~0_combout\) # ((\operation~input_o\)))) # (!\CLA~input_o\ & (((\controlAdd|erorTotale~0_combout\ & !\operation~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \CLA0|eror~0_combout\,
	datac => \controlAdd|erorTotale~0_combout\,
	datad => \operation~input_o\,
	combout => \HEX0~0_combout\);

-- Location: LCCOMB_X57_Y50_N30
\CLA0|Mult1|auto_generated|le4a[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le4a\(5) = (\CLA~input_o\ & (\B[3]~input_o\ $ (((\B[1]~input_o\ & \B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \CLA~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \CLA0|Mult1|auto_generated|le4a\(5));

-- Location: LCCOMB_X56_Y50_N28
\tempOpeA[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempOpeA[2]~1_combout\ = (\CLA~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA~input_o\,
	datad => \A[2]~input_o\,
	combout => \tempOpeA[2]~1_combout\);

-- Location: LCCOMB_X51_Y49_N24
\CLA0|Mult1|auto_generated|cs2a[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ = (\CLA~input_o\ & (\B[2]~input_o\ $ (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \CLA~input_o\,
	datad => \B[1]~input_o\,
	combout => \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X57_Y50_N20
\CLA0|Mult1|auto_generated|le4a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le4a\(3) = (\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & (\CLA0|Mult1|auto_generated|le4a\(5) $ (((\tempOpeA[3]~2_combout\))))) # (!\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & (\CLA0|Mult1|auto_generated|le4a\(5) & 
-- (!\tempOpeA[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le4a\(5),
	datab => \tempOpeA[2]~1_combout\,
	datac => \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\,
	datad => \tempOpeA[3]~2_combout\,
	combout => \CLA0|Mult1|auto_generated|le4a\(3));

-- Location: LCCOMB_X57_Y50_N0
\CLA0|Mult0|auto_generated|_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|_~7_combout\ = (\CLA~input_o\ & (\B[2]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \CLA0|Mult0|auto_generated|_~7_combout\);

-- Location: LCCOMB_X56_Y50_N30
\CLA0|Mult1|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le5a\(1) = (\CLA~input_o\ & (\A[1]~input_o\ & ((\CLA0|Mult0|auto_generated|_~7_combout\) # (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \CLA0|Mult0|auto_generated|_~7_combout\,
	datac => \A[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \CLA0|Mult1|auto_generated|le5a\(1));

-- Location: LCCOMB_X58_Y48_N26
\CLA0|Mult1|auto_generated|le3a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le3a\(4) = (\CLA~input_o\ & (\B[1]~input_o\ & ((\B[0]~input_o\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \CLA0|Mult1|auto_generated|le3a\(4));

-- Location: LCCOMB_X57_Y50_N12
\tempOpeA[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempOpeA[1]~0_combout\ = (\A[1]~input_o\ & \CLA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datad => \CLA~input_o\,
	combout => \tempOpeA[1]~0_combout\);

-- Location: LCCOMB_X57_Y50_N28
\CLA0|Mult1|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le4a\(2) = (\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & (\tempOpeA[2]~1_combout\ $ ((\CLA0|Mult1|auto_generated|le4a\(5))))) # (!\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & (((\CLA0|Mult1|auto_generated|le4a\(5) & 
-- !\tempOpeA[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\,
	datab => \tempOpeA[2]~1_combout\,
	datac => \CLA0|Mult1|auto_generated|le4a\(5),
	datad => \tempOpeA[1]~0_combout\,
	combout => \CLA0|Mult1|auto_generated|le4a\(2));

-- Location: LCCOMB_X59_Y50_N10
\CLA0|opeBCLA[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|opeBCLA[0]~4_combout\ = (\CLA~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA~input_o\,
	datac => \B[0]~input_o\,
	combout => \CLA0|opeBCLA[0]~4_combout\);

-- Location: LCCOMB_X59_Y50_N4
\CLA0|Mult1|auto_generated|le3a[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le3a\(5) = (\CLA~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA~input_o\,
	datad => \B[1]~input_o\,
	combout => \CLA0|Mult1|auto_generated|le3a\(5));

-- Location: LCCOMB_X59_Y50_N0
\CLA0|Mult1|auto_generated|le3a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le3a\(3) = (\CLA0|opeBCLA[0]~4_combout\ & (\tempOpeA[3]~2_combout\ $ ((\CLA0|Mult1|auto_generated|le3a\(5))))) # (!\CLA0|opeBCLA[0]~4_combout\ & (((\CLA0|Mult1|auto_generated|le3a\(5) & !\tempOpeA[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|opeBCLA[0]~4_combout\,
	datab => \tempOpeA[3]~2_combout\,
	datac => \CLA0|Mult1|auto_generated|le3a\(5),
	datad => \tempOpeA[2]~1_combout\,
	combout => \CLA0|Mult1|auto_generated|le3a\(3));

-- Location: LCCOMB_X59_Y50_N14
\CLA0|Mult1|auto_generated|le3a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le3a\(2) = (\CLA~input_o\ & \multi0|Mult1|auto_generated|le5a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA~input_o\,
	datad => \multi0|Mult1|auto_generated|le5a\(2),
	combout => \CLA0|Mult1|auto_generated|le3a\(2));

-- Location: LCCOMB_X57_Y49_N20
\CLA0|Mult1|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_1~0_combout\ = (\CLA0|Mult1|auto_generated|le4a\(5) & (\CLA0|Mult1|auto_generated|le3a\(2) $ (VCC))) # (!\CLA0|Mult1|auto_generated|le4a\(5) & (\CLA0|Mult1|auto_generated|le3a\(2) & VCC))
-- \CLA0|Mult1|auto_generated|op_1~1\ = CARRY((\CLA0|Mult1|auto_generated|le4a\(5) & \CLA0|Mult1|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le4a\(5),
	datab => \CLA0|Mult1|auto_generated|le3a\(2),
	datad => VCC,
	combout => \CLA0|Mult1|auto_generated|op_1~0_combout\,
	cout => \CLA0|Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X57_Y49_N22
\CLA0|Mult1|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_1~2_combout\ = (\CLA0|Mult1|auto_generated|le3a\(3) & (!\CLA0|Mult1|auto_generated|op_1~1\)) # (!\CLA0|Mult1|auto_generated|le3a\(3) & ((\CLA0|Mult1|auto_generated|op_1~1\) # (GND)))
-- \CLA0|Mult1|auto_generated|op_1~3\ = CARRY((!\CLA0|Mult1|auto_generated|op_1~1\) # (!\CLA0|Mult1|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le3a\(3),
	datad => VCC,
	cin => \CLA0|Mult1|auto_generated|op_1~1\,
	combout => \CLA0|Mult1|auto_generated|op_1~2_combout\,
	cout => \CLA0|Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X57_Y49_N24
\CLA0|Mult1|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_1~4_combout\ = ((\CLA0|Mult1|auto_generated|le3a\(4) $ (\CLA0|Mult1|auto_generated|le4a\(2) $ (!\CLA0|Mult1|auto_generated|op_1~3\)))) # (GND)
-- \CLA0|Mult1|auto_generated|op_1~5\ = CARRY((\CLA0|Mult1|auto_generated|le3a\(4) & ((\CLA0|Mult1|auto_generated|le4a\(2)) # (!\CLA0|Mult1|auto_generated|op_1~3\))) # (!\CLA0|Mult1|auto_generated|le3a\(4) & (\CLA0|Mult1|auto_generated|le4a\(2) & 
-- !\CLA0|Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le3a\(4),
	datab => \CLA0|Mult1|auto_generated|le4a\(2),
	datad => VCC,
	cin => \CLA0|Mult1|auto_generated|op_1~3\,
	combout => \CLA0|Mult1|auto_generated|op_1~4_combout\,
	cout => \CLA0|Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X57_Y49_N26
\CLA0|Mult1|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_1~6_combout\ = (\CLA0|Mult1|auto_generated|le4a\(3) & ((\CLA0|Mult1|auto_generated|le5a\(1) & (\CLA0|Mult1|auto_generated|op_1~5\ & VCC)) # (!\CLA0|Mult1|auto_generated|le5a\(1) & (!\CLA0|Mult1|auto_generated|op_1~5\)))) # 
-- (!\CLA0|Mult1|auto_generated|le4a\(3) & ((\CLA0|Mult1|auto_generated|le5a\(1) & (!\CLA0|Mult1|auto_generated|op_1~5\)) # (!\CLA0|Mult1|auto_generated|le5a\(1) & ((\CLA0|Mult1|auto_generated|op_1~5\) # (GND)))))
-- \CLA0|Mult1|auto_generated|op_1~7\ = CARRY((\CLA0|Mult1|auto_generated|le4a\(3) & (!\CLA0|Mult1|auto_generated|le5a\(1) & !\CLA0|Mult1|auto_generated|op_1~5\)) # (!\CLA0|Mult1|auto_generated|le4a\(3) & ((!\CLA0|Mult1|auto_generated|op_1~5\) # 
-- (!\CLA0|Mult1|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le4a\(3),
	datab => \CLA0|Mult1|auto_generated|le5a\(1),
	datad => VCC,
	cin => \CLA0|Mult1|auto_generated|op_1~5\,
	combout => \CLA0|Mult1|auto_generated|op_1~6_combout\,
	cout => \CLA0|Mult1|auto_generated|op_1~7\);

-- Location: LCCOMB_X57_Y50_N4
\CLA0|Mult1|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le5a\(0) = (\CLA~input_o\ & (\A[0]~input_o\ & ((\B[3]~input_o\) # (\CLA0|Mult0|auto_generated|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \CLA~input_o\,
	datac => \A[0]~input_o\,
	datad => \CLA0|Mult0|auto_generated|_~7_combout\,
	combout => \CLA0|Mult1|auto_generated|le5a\(0));

-- Location: LCCOMB_X57_Y50_N18
\tempOpeA[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempOpeA[0]~3_combout\ = (\CLA~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA~input_o\,
	datac => \A[0]~input_o\,
	combout => \tempOpeA[0]~3_combout\);

-- Location: LCCOMB_X57_Y50_N6
\CLA0|Mult1|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le4a\(1) = (\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & ((\CLA0|Mult1|auto_generated|le4a\(5) $ (\tempOpeA[1]~0_combout\)))) # (!\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & (!\tempOpeA[0]~3_combout\ & 
-- (\CLA0|Mult1|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempOpeA[0]~3_combout\,
	datab => \CLA0|Mult1|auto_generated|le4a\(5),
	datac => \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\,
	datad => \tempOpeA[1]~0_combout\,
	combout => \CLA0|Mult1|auto_generated|le4a\(1));

-- Location: LCCOMB_X57_Y50_N26
\CLA0|Mult1|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le4a\(0) = \CLA0|Mult1|auto_generated|le4a\(5) $ (((\A[0]~input_o\ & (\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & \CLA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le4a\(5),
	datab => \A[0]~input_o\,
	datac => \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\,
	datad => \CLA~input_o\,
	combout => \CLA0|Mult1|auto_generated|le4a\(0));

-- Location: LCCOMB_X52_Y47_N22
\CLA0|Mult1|auto_generated|le3a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le3a\(1) = (\multi0|Mult1|auto_generated|le5a\(1) & \CLA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multi0|Mult1|auto_generated|le5a\(1),
	datad => \CLA~input_o\,
	combout => \CLA0|Mult1|auto_generated|le3a\(1));

-- Location: LCCOMB_X51_Y49_N2
\CLA0|Mult1|auto_generated|le3a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le3a\(0) = (\CLA~input_o\ & (\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \CLA0|Mult1|auto_generated|le3a\(0));

-- Location: LCCOMB_X57_Y49_N2
\CLA0|Mult1|auto_generated|op_3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_3~1_cout\ = CARRY((\CLA0|Mult1|auto_generated|le3a\(5) & \CLA0|Mult1|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le3a\(5),
	datab => \CLA0|Mult1|auto_generated|le3a\(0),
	datad => VCC,
	cout => \CLA0|Mult1|auto_generated|op_3~1_cout\);

-- Location: LCCOMB_X57_Y49_N4
\CLA0|Mult1|auto_generated|op_3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_3~3_cout\ = CARRY((!\CLA0|Mult1|auto_generated|op_3~1_cout\) # (!\CLA0|Mult1|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLA0|Mult1|auto_generated|le3a\(1),
	datad => VCC,
	cin => \CLA0|Mult1|auto_generated|op_3~1_cout\,
	cout => \CLA0|Mult1|auto_generated|op_3~3_cout\);

-- Location: LCCOMB_X57_Y49_N6
\CLA0|Mult1|auto_generated|op_3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_3~5_cout\ = CARRY((\CLA0|Mult1|auto_generated|le4a\(0) & ((\CLA0|Mult1|auto_generated|op_1~0_combout\) # (!\CLA0|Mult1|auto_generated|op_3~3_cout\))) # (!\CLA0|Mult1|auto_generated|le4a\(0) & 
-- (\CLA0|Mult1|auto_generated|op_1~0_combout\ & !\CLA0|Mult1|auto_generated|op_3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le4a\(0),
	datab => \CLA0|Mult1|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \CLA0|Mult1|auto_generated|op_3~3_cout\,
	cout => \CLA0|Mult1|auto_generated|op_3~5_cout\);

-- Location: LCCOMB_X57_Y49_N8
\CLA0|Mult1|auto_generated|op_3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_3~7_cout\ = CARRY((\CLA0|Mult1|auto_generated|op_1~2_combout\ & (!\CLA0|Mult1|auto_generated|le4a\(1) & !\CLA0|Mult1|auto_generated|op_3~5_cout\)) # (!\CLA0|Mult1|auto_generated|op_1~2_combout\ & 
-- ((!\CLA0|Mult1|auto_generated|op_3~5_cout\) # (!\CLA0|Mult1|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|op_1~2_combout\,
	datab => \CLA0|Mult1|auto_generated|le4a\(1),
	datad => VCC,
	cin => \CLA0|Mult1|auto_generated|op_3~5_cout\,
	cout => \CLA0|Mult1|auto_generated|op_3~7_cout\);

-- Location: LCCOMB_X57_Y49_N10
\CLA0|Mult1|auto_generated|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_3~8_combout\ = ((\CLA0|Mult1|auto_generated|le5a\(0) $ (\CLA0|Mult1|auto_generated|op_1~4_combout\ $ (!\CLA0|Mult1|auto_generated|op_3~7_cout\)))) # (GND)
-- \CLA0|Mult1|auto_generated|op_3~9\ = CARRY((\CLA0|Mult1|auto_generated|le5a\(0) & ((\CLA0|Mult1|auto_generated|op_1~4_combout\) # (!\CLA0|Mult1|auto_generated|op_3~7_cout\))) # (!\CLA0|Mult1|auto_generated|le5a\(0) & 
-- (\CLA0|Mult1|auto_generated|op_1~4_combout\ & !\CLA0|Mult1|auto_generated|op_3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le5a\(0),
	datab => \CLA0|Mult1|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \CLA0|Mult1|auto_generated|op_3~7_cout\,
	combout => \CLA0|Mult1|auto_generated|op_3~8_combout\,
	cout => \CLA0|Mult1|auto_generated|op_3~9\);

-- Location: LCCOMB_X57_Y49_N12
\CLA0|Mult1|auto_generated|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_3~10_combout\ = (\CLA0|Mult1|auto_generated|op_1~6_combout\ & ((\CLA0|Mult1|auto_generated|le3a\(5) & (\CLA0|Mult1|auto_generated|op_3~9\ & VCC)) # (!\CLA0|Mult1|auto_generated|le3a\(5) & 
-- (!\CLA0|Mult1|auto_generated|op_3~9\)))) # (!\CLA0|Mult1|auto_generated|op_1~6_combout\ & ((\CLA0|Mult1|auto_generated|le3a\(5) & (!\CLA0|Mult1|auto_generated|op_3~9\)) # (!\CLA0|Mult1|auto_generated|le3a\(5) & ((\CLA0|Mult1|auto_generated|op_3~9\) # 
-- (GND)))))
-- \CLA0|Mult1|auto_generated|op_3~11\ = CARRY((\CLA0|Mult1|auto_generated|op_1~6_combout\ & (!\CLA0|Mult1|auto_generated|le3a\(5) & !\CLA0|Mult1|auto_generated|op_3~9\)) # (!\CLA0|Mult1|auto_generated|op_1~6_combout\ & ((!\CLA0|Mult1|auto_generated|op_3~9\) 
-- # (!\CLA0|Mult1|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|op_1~6_combout\,
	datab => \CLA0|Mult1|auto_generated|le3a\(5),
	datad => VCC,
	cin => \CLA0|Mult1|auto_generated|op_3~9\,
	combout => \CLA0|Mult1|auto_generated|op_3~10_combout\,
	cout => \CLA0|Mult1|auto_generated|op_3~11\);

-- Location: LCCOMB_X57_Y50_N22
\CLA0|Mult1|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le5a\(3) = (\CLA~input_o\ & (\A[3]~input_o\ & ((\B[3]~input_o\) # (\CLA0|Mult0|auto_generated|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \CLA~input_o\,
	datac => \A[3]~input_o\,
	datad => \CLA0|Mult0|auto_generated|_~7_combout\,
	combout => \CLA0|Mult1|auto_generated|le5a\(3));

-- Location: LCCOMB_X56_Y50_N4
\CLA0|Mult1|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le5a\(2) = (\CLA~input_o\ & (\A[2]~input_o\ & ((\CLA0|Mult0|auto_generated|_~7_combout\) # (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \A[2]~input_o\,
	datac => \CLA0|Mult0|auto_generated|_~7_combout\,
	datad => \B[3]~input_o\,
	combout => \CLA0|Mult1|auto_generated|le5a\(2));

-- Location: LCCOMB_X57_Y49_N18
\CLA0|Mult1|auto_generated|le4a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|le4a\(4) = (\CLA0|Mult1|auto_generated|le4a\(5) & ((\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\) # ((!\A[3]~input_o\) # (!\CLA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\,
	datab => \CLA~input_o\,
	datac => \CLA0|Mult1|auto_generated|le4a\(5),
	datad => \A[3]~input_o\,
	combout => \CLA0|Mult1|auto_generated|le4a\(4));

-- Location: LCCOMB_X57_Y49_N28
\CLA0|Mult1|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_1~8_combout\ = ((\CLA0|Mult1|auto_generated|le5a\(2) $ (\CLA0|Mult1|auto_generated|le4a\(4) $ (!\CLA0|Mult1|auto_generated|op_1~7\)))) # (GND)
-- \CLA0|Mult1|auto_generated|op_1~9\ = CARRY((\CLA0|Mult1|auto_generated|le5a\(2) & ((\CLA0|Mult1|auto_generated|le4a\(4)) # (!\CLA0|Mult1|auto_generated|op_1~7\))) # (!\CLA0|Mult1|auto_generated|le5a\(2) & (\CLA0|Mult1|auto_generated|le4a\(4) & 
-- !\CLA0|Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le5a\(2),
	datab => \CLA0|Mult1|auto_generated|le4a\(4),
	datad => VCC,
	cin => \CLA0|Mult1|auto_generated|op_1~7\,
	combout => \CLA0|Mult1|auto_generated|op_1~8_combout\,
	cout => \CLA0|Mult1|auto_generated|op_1~9\);

-- Location: LCCOMB_X57_Y49_N30
\CLA0|Mult1|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_1~10_combout\ = \CLA0|Mult1|auto_generated|le4a\(5) $ (\CLA0|Mult1|auto_generated|op_1~9\ $ (!\CLA0|Mult1|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le4a\(5),
	datad => \CLA0|Mult1|auto_generated|le5a\(3),
	cin => \CLA0|Mult1|auto_generated|op_1~9\,
	combout => \CLA0|Mult1|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X57_Y49_N14
\CLA0|Mult1|auto_generated|op_3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_3~12_combout\ = ((\CLA0|Mult1|auto_generated|le3a\(5) $ (\CLA0|Mult1|auto_generated|op_1~8_combout\ $ (!\CLA0|Mult1|auto_generated|op_3~11\)))) # (GND)
-- \CLA0|Mult1|auto_generated|op_3~13\ = CARRY((\CLA0|Mult1|auto_generated|le3a\(5) & ((\CLA0|Mult1|auto_generated|op_1~8_combout\) # (!\CLA0|Mult1|auto_generated|op_3~11\))) # (!\CLA0|Mult1|auto_generated|le3a\(5) & 
-- (\CLA0|Mult1|auto_generated|op_1~8_combout\ & !\CLA0|Mult1|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le3a\(5),
	datab => \CLA0|Mult1|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \CLA0|Mult1|auto_generated|op_3~11\,
	combout => \CLA0|Mult1|auto_generated|op_3~12_combout\,
	cout => \CLA0|Mult1|auto_generated|op_3~13\);

-- Location: LCCOMB_X57_Y49_N16
\CLA0|Mult1|auto_generated|op_3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult1|auto_generated|op_3~14_combout\ = \CLA0|Mult1|auto_generated|op_1~10_combout\ $ (\CLA0|Mult1|auto_generated|op_3~13\ $ (!\CLA0|Mult1|auto_generated|le3a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|op_1~10_combout\,
	datad => \CLA0|Mult1|auto_generated|le3a\(5),
	cin => \CLA0|Mult1|auto_generated|op_3~13\,
	combout => \CLA0|Mult1|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X57_Y49_N0
\CLA0|temperor~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|temperor~0_combout\ = (\CLA0|Mult1|auto_generated|op_3~10_combout\) # ((\CLA0|Mult1|auto_generated|op_3~14_combout\) # ((\CLA0|Mult1|auto_generated|op_3~12_combout\) # (\CLA0|Mult1|auto_generated|op_3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|op_3~10_combout\,
	datab => \CLA0|Mult1|auto_generated|op_3~14_combout\,
	datac => \CLA0|Mult1|auto_generated|op_3~12_combout\,
	datad => \CLA0|Mult1|auto_generated|op_3~8_combout\,
	combout => \CLA0|temperor~0_combout\);

-- Location: LCCOMB_X57_Y50_N8
\CLA0|Mult0|auto_generated|_~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|_~15_combout\ = (\B[1]~input_o\) # (((\B[2]~input_o\) # (!\B[3]~input_o\)) # (!\CLA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \CLA~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \CLA0|Mult0|auto_generated|_~15_combout\);

-- Location: LCCOMB_X57_Y50_N16
\CLA0|Mult0|auto_generated|le2a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le2a\(4) = (\tempOpeA[3]~2_combout\ & (((\CLA0|Mult0|auto_generated|_~7_combout\)))) # (!\tempOpeA[3]~2_combout\ & (((\B[3]~input_o\ & \CLA0|Mult0|auto_generated|_~7_combout\)) # (!\CLA0|Mult0|auto_generated|_~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempOpeA[3]~2_combout\,
	datab => \B[3]~input_o\,
	datac => \CLA0|Mult0|auto_generated|_~15_combout\,
	datad => \CLA0|Mult0|auto_generated|_~7_combout\,
	combout => \CLA0|Mult0|auto_generated|le2a\(4));

-- Location: LCCOMB_X59_Y50_N28
\CLA0|process_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|process_3~4_combout\ = (\CLA~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \CLA0|process_3~4_combout\);

-- Location: LCCOMB_X58_Y50_N22
\CLA0|Mult0|auto_generated|le4a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le4a\(4) = (\CLA0|Mult0|auto_generated|le2a\(4)) # ((\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & \CLA0|process_3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|le2a\(4),
	datac => \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\,
	datad => \CLA0|process_3~4_combout\,
	combout => \CLA0|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X59_Y50_N6
\CLA0|Mult0|auto_generated|le5a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le5a\(4) = (\CLA~input_o\ & ((\B[1]~input_o\ & (!\A[3]~input_o\)) # (!\B[1]~input_o\ & (\A[3]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \CLA~input_o\,
	combout => \CLA0|Mult0|auto_generated|le5a\(4));

-- Location: LCCOMB_X59_Y50_N12
\CLA0|Mult0|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le5a\(3) = (\CLA0|opeBCLA[0]~4_combout\ & (\tempOpeA[3]~2_combout\ $ ((\CLA0|Mult1|auto_generated|le3a\(5))))) # (!\CLA0|opeBCLA[0]~4_combout\ & (((\CLA0|Mult1|auto_generated|le3a\(5) & !\tempOpeA[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|opeBCLA[0]~4_combout\,
	datab => \tempOpeA[3]~2_combout\,
	datac => \CLA0|Mult1|auto_generated|le3a\(5),
	datad => \tempOpeA[2]~1_combout\,
	combout => \CLA0|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X59_Y50_N2
\CLA0|Mult0|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le5a\(2) = (\CLA~input_o\ & \multi0|Mult1|auto_generated|le5a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA~input_o\,
	datad => \multi0|Mult1|auto_generated|le5a\(2),
	combout => \CLA0|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X59_Y50_N16
\CLA0|Mult0|auto_generated|add10_result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add10_result[0]~0_combout\ = (\tempOpeB[3]~0_combout\ & (\CLA0|Mult0|auto_generated|le5a\(2) $ (VCC))) # (!\tempOpeB[3]~0_combout\ & (\CLA0|Mult0|auto_generated|le5a\(2) & VCC))
-- \CLA0|Mult0|auto_generated|add10_result[0]~1\ = CARRY((\tempOpeB[3]~0_combout\ & \CLA0|Mult0|auto_generated|le5a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempOpeB[3]~0_combout\,
	datab => \CLA0|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	combout => \CLA0|Mult0|auto_generated|add10_result[0]~0_combout\,
	cout => \CLA0|Mult0|auto_generated|add10_result[0]~1\);

-- Location: LCCOMB_X59_Y50_N18
\CLA0|Mult0|auto_generated|add10_result[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add10_result[1]~2_combout\ = (\CLA0|Mult0|auto_generated|le5a\(3) & (!\CLA0|Mult0|auto_generated|add10_result[0]~1\)) # (!\CLA0|Mult0|auto_generated|le5a\(3) & ((\CLA0|Mult0|auto_generated|add10_result[0]~1\) # (GND)))
-- \CLA0|Mult0|auto_generated|add10_result[1]~3\ = CARRY((!\CLA0|Mult0|auto_generated|add10_result[0]~1\) # (!\CLA0|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|le5a\(3),
	datad => VCC,
	cin => \CLA0|Mult0|auto_generated|add10_result[0]~1\,
	combout => \CLA0|Mult0|auto_generated|add10_result[1]~2_combout\,
	cout => \CLA0|Mult0|auto_generated|add10_result[1]~3\);

-- Location: LCCOMB_X59_Y50_N20
\CLA0|Mult0|auto_generated|add10_result[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add10_result[2]~4_combout\ = (\CLA0|Mult0|auto_generated|le5a\(4) & (\CLA0|Mult0|auto_generated|add10_result[1]~3\ $ (GND))) # (!\CLA0|Mult0|auto_generated|le5a\(4) & ((GND) # (!\CLA0|Mult0|auto_generated|add10_result[1]~3\)))
-- \CLA0|Mult0|auto_generated|add10_result[2]~5\ = CARRY((!\CLA0|Mult0|auto_generated|add10_result[1]~3\) # (!\CLA0|Mult0|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|le5a\(4),
	datad => VCC,
	cin => \CLA0|Mult0|auto_generated|add10_result[1]~3\,
	combout => \CLA0|Mult0|auto_generated|add10_result[2]~4_combout\,
	cout => \CLA0|Mult0|auto_generated|add10_result[2]~5\);

-- Location: LCCOMB_X59_Y50_N22
\CLA0|Mult0|auto_generated|add10_result[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add10_result[3]~6_combout\ = !\CLA0|Mult0|auto_generated|add10_result[2]~5\
-- \CLA0|Mult0|auto_generated|add10_result[3]~7\ = CARRY(!\CLA0|Mult0|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \CLA0|Mult0|auto_generated|add10_result[2]~5\,
	combout => \CLA0|Mult0|auto_generated|add10_result[3]~6_combout\,
	cout => \CLA0|Mult0|auto_generated|add10_result[3]~7\);

-- Location: LCCOMB_X59_Y50_N24
\CLA0|Mult0|auto_generated|add10_result[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add10_result[4]~8_combout\ = !\CLA0|Mult0|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \CLA0|Mult0|auto_generated|add10_result[3]~7\,
	combout => \CLA0|Mult0|auto_generated|add10_result[4]~8_combout\);

-- Location: LCCOMB_X57_Y50_N14
\CLA0|Mult0|auto_generated|le2a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le2a\(3) = (\tempOpeA[2]~1_combout\ & (((\CLA0|Mult0|auto_generated|_~7_combout\)))) # (!\tempOpeA[2]~1_combout\ & (((\B[3]~input_o\ & \CLA0|Mult0|auto_generated|_~7_combout\)) # (!\CLA0|Mult0|auto_generated|_~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \tempOpeA[2]~1_combout\,
	datac => \CLA0|Mult0|auto_generated|_~15_combout\,
	datad => \CLA0|Mult0|auto_generated|_~7_combout\,
	combout => \CLA0|Mult0|auto_generated|le2a\(3));

-- Location: LCCOMB_X58_Y50_N28
\CLA0|Mult0|auto_generated|le4a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le4a\(3) = (\CLA0|Mult0|auto_generated|le2a\(3)) # ((\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & \CLA0|process_3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|le2a\(3),
	datac => \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\,
	datad => \CLA0|process_3~4_combout\,
	combout => \CLA0|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X57_Y50_N24
\CLA0|Mult0|auto_generated|le2a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le2a\(2) = (\tempOpeA[1]~0_combout\ & (((\CLA0|Mult0|auto_generated|_~7_combout\)))) # (!\tempOpeA[1]~0_combout\ & (((\B[3]~input_o\ & \CLA0|Mult0|auto_generated|_~7_combout\)) # (!\CLA0|Mult0|auto_generated|_~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempOpeA[1]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \CLA0|Mult0|auto_generated|_~15_combout\,
	datad => \CLA0|Mult0|auto_generated|_~7_combout\,
	combout => \CLA0|Mult0|auto_generated|le2a\(2));

-- Location: LCCOMB_X58_Y50_N2
\CLA0|Mult0|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le4a\(2) = (\CLA0|Mult0|auto_generated|le2a\(2)) # ((\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & (\tempOpeA[2]~1_combout\ $ (\tempOpeB[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempOpeA[2]~1_combout\,
	datab => \CLA0|Mult0|auto_generated|le2a\(2),
	datac => \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\,
	datad => \tempOpeB[3]~0_combout\,
	combout => \CLA0|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X57_Y50_N2
\CLA0|Mult0|auto_generated|le2a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le2a\(1) = (\tempOpeA[0]~3_combout\ & (((\CLA0|Mult0|auto_generated|_~7_combout\)))) # (!\tempOpeA[0]~3_combout\ & (((\B[3]~input_o\ & \CLA0|Mult0|auto_generated|_~7_combout\)) # (!\CLA0|Mult0|auto_generated|_~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempOpeA[0]~3_combout\,
	datab => \B[3]~input_o\,
	datac => \CLA0|Mult0|auto_generated|_~15_combout\,
	datad => \CLA0|Mult0|auto_generated|_~7_combout\,
	combout => \CLA0|Mult0|auto_generated|le2a\(1));

-- Location: LCCOMB_X57_Y50_N10
\CLA0|Mult0|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le4a\(1) = (\CLA0|Mult0|auto_generated|le2a\(1)) # ((\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & (\tempOpeB[3]~0_combout\ $ (\tempOpeA[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\,
	datab => \CLA0|Mult0|auto_generated|le2a\(1),
	datac => \tempOpeB[3]~0_combout\,
	datad => \tempOpeA[1]~0_combout\,
	combout => \CLA0|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X51_Y49_N0
\CLA0|Mult0|auto_generated|le2a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le2a\(0) = (\CLA~input_o\ & (\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \CLA0|Mult0|auto_generated|le2a\(0));

-- Location: LCCOMB_X58_Y50_N24
\CLA0|Mult0|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le4a\(0) = (\CLA0|Mult0|auto_generated|le2a\(0)) # ((\CLA0|Mult1|auto_generated|cs2a[1]~0_combout\ & (\tempOpeA[0]~3_combout\ $ (\tempOpeB[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|le2a\(0),
	datab => \tempOpeA[0]~3_combout\,
	datac => \CLA0|Mult1|auto_generated|cs2a[1]~0_combout\,
	datad => \tempOpeB[3]~0_combout\,
	combout => \CLA0|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X52_Y47_N16
\CLA0|Mult0|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le5a\(1) = (\multi0|Mult1|auto_generated|le5a\(1) & \CLA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multi0|Mult1|auto_generated|le5a\(1),
	datad => \CLA~input_o\,
	combout => \CLA0|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X51_Y49_N26
\CLA0|Mult0|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|le5a\(0) = (\CLA~input_o\ & (\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \CLA0|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X58_Y50_N6
\CLA0|Mult0|auto_generated|add6_result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add6_result[0]~0_combout\ = (\CLA0|Mult1|auto_generated|le3a\(5) & (\CLA0|Mult0|auto_generated|le5a\(0) $ (VCC))) # (!\CLA0|Mult1|auto_generated|le3a\(5) & (\CLA0|Mult0|auto_generated|le5a\(0) & VCC))
-- \CLA0|Mult0|auto_generated|add6_result[0]~1\ = CARRY((\CLA0|Mult1|auto_generated|le3a\(5) & \CLA0|Mult0|auto_generated|le5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult1|auto_generated|le3a\(5),
	datab => \CLA0|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	combout => \CLA0|Mult0|auto_generated|add6_result[0]~0_combout\,
	cout => \CLA0|Mult0|auto_generated|add6_result[0]~1\);

-- Location: LCCOMB_X58_Y50_N8
\CLA0|Mult0|auto_generated|add6_result[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add6_result[1]~2_combout\ = (\CLA0|Mult0|auto_generated|le5a\(1) & (!\CLA0|Mult0|auto_generated|add6_result[0]~1\)) # (!\CLA0|Mult0|auto_generated|le5a\(1) & ((\CLA0|Mult0|auto_generated|add6_result[0]~1\) # (GND)))
-- \CLA0|Mult0|auto_generated|add6_result[1]~3\ = CARRY((!\CLA0|Mult0|auto_generated|add6_result[0]~1\) # (!\CLA0|Mult0|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \CLA0|Mult0|auto_generated|add6_result[0]~1\,
	combout => \CLA0|Mult0|auto_generated|add6_result[1]~2_combout\,
	cout => \CLA0|Mult0|auto_generated|add6_result[1]~3\);

-- Location: LCCOMB_X58_Y50_N10
\CLA0|Mult0|auto_generated|add6_result[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add6_result[2]~4_combout\ = ((\CLA0|Mult0|auto_generated|le4a\(0) $ (\CLA0|Mult0|auto_generated|add10_result[0]~0_combout\ $ (!\CLA0|Mult0|auto_generated|add6_result[1]~3\)))) # (GND)
-- \CLA0|Mult0|auto_generated|add6_result[2]~5\ = CARRY((\CLA0|Mult0|auto_generated|le4a\(0) & ((\CLA0|Mult0|auto_generated|add10_result[0]~0_combout\) # (!\CLA0|Mult0|auto_generated|add6_result[1]~3\))) # (!\CLA0|Mult0|auto_generated|le4a\(0) & 
-- (\CLA0|Mult0|auto_generated|add10_result[0]~0_combout\ & !\CLA0|Mult0|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|le4a\(0),
	datab => \CLA0|Mult0|auto_generated|add10_result[0]~0_combout\,
	datad => VCC,
	cin => \CLA0|Mult0|auto_generated|add6_result[1]~3\,
	combout => \CLA0|Mult0|auto_generated|add6_result[2]~4_combout\,
	cout => \CLA0|Mult0|auto_generated|add6_result[2]~5\);

-- Location: LCCOMB_X58_Y50_N12
\CLA0|Mult0|auto_generated|add6_result[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add6_result[3]~6_combout\ = (\CLA0|Mult0|auto_generated|le4a\(1) & ((\CLA0|Mult0|auto_generated|add10_result[1]~2_combout\ & (\CLA0|Mult0|auto_generated|add6_result[2]~5\ & VCC)) # 
-- (!\CLA0|Mult0|auto_generated|add10_result[1]~2_combout\ & (!\CLA0|Mult0|auto_generated|add6_result[2]~5\)))) # (!\CLA0|Mult0|auto_generated|le4a\(1) & ((\CLA0|Mult0|auto_generated|add10_result[1]~2_combout\ & 
-- (!\CLA0|Mult0|auto_generated|add6_result[2]~5\)) # (!\CLA0|Mult0|auto_generated|add10_result[1]~2_combout\ & ((\CLA0|Mult0|auto_generated|add6_result[2]~5\) # (GND)))))
-- \CLA0|Mult0|auto_generated|add6_result[3]~7\ = CARRY((\CLA0|Mult0|auto_generated|le4a\(1) & (!\CLA0|Mult0|auto_generated|add10_result[1]~2_combout\ & !\CLA0|Mult0|auto_generated|add6_result[2]~5\)) # (!\CLA0|Mult0|auto_generated|le4a\(1) & 
-- ((!\CLA0|Mult0|auto_generated|add6_result[2]~5\) # (!\CLA0|Mult0|auto_generated|add10_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|le4a\(1),
	datab => \CLA0|Mult0|auto_generated|add10_result[1]~2_combout\,
	datad => VCC,
	cin => \CLA0|Mult0|auto_generated|add6_result[2]~5\,
	combout => \CLA0|Mult0|auto_generated|add6_result[3]~6_combout\,
	cout => \CLA0|Mult0|auto_generated|add6_result[3]~7\);

-- Location: LCCOMB_X58_Y50_N14
\CLA0|Mult0|auto_generated|add6_result[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add6_result[4]~8_combout\ = ((\CLA0|Mult0|auto_generated|add10_result[2]~4_combout\ $ (\CLA0|Mult0|auto_generated|le4a\(2) $ (!\CLA0|Mult0|auto_generated|add6_result[3]~7\)))) # (GND)
-- \CLA0|Mult0|auto_generated|add6_result[4]~9\ = CARRY((\CLA0|Mult0|auto_generated|add10_result[2]~4_combout\ & ((\CLA0|Mult0|auto_generated|le4a\(2)) # (!\CLA0|Mult0|auto_generated|add6_result[3]~7\))) # 
-- (!\CLA0|Mult0|auto_generated|add10_result[2]~4_combout\ & (\CLA0|Mult0|auto_generated|le4a\(2) & !\CLA0|Mult0|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|add10_result[2]~4_combout\,
	datab => \CLA0|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \CLA0|Mult0|auto_generated|add6_result[3]~7\,
	combout => \CLA0|Mult0|auto_generated|add6_result[4]~8_combout\,
	cout => \CLA0|Mult0|auto_generated|add6_result[4]~9\);

-- Location: LCCOMB_X58_Y50_N16
\CLA0|Mult0|auto_generated|add6_result[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add6_result[5]~10_combout\ = (\CLA0|Mult0|auto_generated|add10_result[3]~6_combout\ & ((\CLA0|Mult0|auto_generated|le4a\(3) & (\CLA0|Mult0|auto_generated|add6_result[4]~9\ & VCC)) # (!\CLA0|Mult0|auto_generated|le4a\(3) & 
-- (!\CLA0|Mult0|auto_generated|add6_result[4]~9\)))) # (!\CLA0|Mult0|auto_generated|add10_result[3]~6_combout\ & ((\CLA0|Mult0|auto_generated|le4a\(3) & (!\CLA0|Mult0|auto_generated|add6_result[4]~9\)) # (!\CLA0|Mult0|auto_generated|le4a\(3) & 
-- ((\CLA0|Mult0|auto_generated|add6_result[4]~9\) # (GND)))))
-- \CLA0|Mult0|auto_generated|add6_result[5]~11\ = CARRY((\CLA0|Mult0|auto_generated|add10_result[3]~6_combout\ & (!\CLA0|Mult0|auto_generated|le4a\(3) & !\CLA0|Mult0|auto_generated|add6_result[4]~9\)) # 
-- (!\CLA0|Mult0|auto_generated|add10_result[3]~6_combout\ & ((!\CLA0|Mult0|auto_generated|add6_result[4]~9\) # (!\CLA0|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|add10_result[3]~6_combout\,
	datab => \CLA0|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \CLA0|Mult0|auto_generated|add6_result[4]~9\,
	combout => \CLA0|Mult0|auto_generated|add6_result[5]~10_combout\,
	cout => \CLA0|Mult0|auto_generated|add6_result[5]~11\);

-- Location: LCCOMB_X58_Y50_N18
\CLA0|Mult0|auto_generated|add6_result[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add6_result[6]~12_combout\ = ((\CLA0|Mult0|auto_generated|le4a\(4) $ (\CLA0|Mult0|auto_generated|add10_result[4]~8_combout\ $ (\CLA0|Mult0|auto_generated|add6_result[5]~11\)))) # (GND)
-- \CLA0|Mult0|auto_generated|add6_result[6]~13\ = CARRY((\CLA0|Mult0|auto_generated|le4a\(4) & (\CLA0|Mult0|auto_generated|add10_result[4]~8_combout\ & !\CLA0|Mult0|auto_generated|add6_result[5]~11\)) # (!\CLA0|Mult0|auto_generated|le4a\(4) & 
-- ((\CLA0|Mult0|auto_generated|add10_result[4]~8_combout\) # (!\CLA0|Mult0|auto_generated|add6_result[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|le4a\(4),
	datab => \CLA0|Mult0|auto_generated|add10_result[4]~8_combout\,
	datad => VCC,
	cin => \CLA0|Mult0|auto_generated|add6_result[5]~11\,
	combout => \CLA0|Mult0|auto_generated|add6_result[6]~12_combout\,
	cout => \CLA0|Mult0|auto_generated|add6_result[6]~13\);

-- Location: LCCOMB_X58_Y50_N20
\CLA0|Mult0|auto_generated|add6_result[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|Mult0|auto_generated|add6_result[7]~14_combout\ = !\CLA0|Mult0|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \CLA0|Mult0|auto_generated|add6_result[6]~13\,
	combout => \CLA0|Mult0|auto_generated|add6_result[7]~14_combout\);

-- Location: LCCOMB_X58_Y50_N26
\CLA0|process_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|process_3~2_combout\ = (\CLA0|Mult0|auto_generated|add6_result[3]~6_combout\ & ((\CLA0|Mult0|auto_generated|add6_result[0]~0_combout\) # ((\CLA0|Mult0|auto_generated|add6_result[2]~4_combout\) # 
-- (\CLA0|Mult0|auto_generated|add6_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|add6_result[0]~0_combout\,
	datab => \CLA0|Mult0|auto_generated|add6_result[2]~4_combout\,
	datac => \CLA0|Mult0|auto_generated|add6_result[1]~2_combout\,
	datad => \CLA0|Mult0|auto_generated|add6_result[3]~6_combout\,
	combout => \CLA0|process_3~2_combout\);

-- Location: LCCOMB_X58_Y50_N4
\CLA0|process_3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|process_3~3_combout\ = (\CLA0|process_3~2_combout\) # ((\CLA0|Mult0|auto_generated|add6_result[6]~12_combout\) # ((\CLA0|Mult0|auto_generated|add6_result[4]~8_combout\) # (\CLA0|Mult0|auto_generated|add6_result[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|process_3~2_combout\,
	datab => \CLA0|Mult0|auto_generated|add6_result[6]~12_combout\,
	datac => \CLA0|Mult0|auto_generated|add6_result[4]~8_combout\,
	datad => \CLA0|Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \CLA0|process_3~3_combout\);

-- Location: LCCOMB_X58_Y50_N0
\CLA0|process_3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|process_3~1_combout\ = (((!\CLA0|Mult0|auto_generated|add6_result[5]~10_combout\) # (!\CLA0|Mult0|auto_generated|add6_result[4]~8_combout\)) # (!\CLA0|Mult0|auto_generated|add6_result[6]~12_combout\)) # 
-- (!\CLA0|Mult0|auto_generated|add6_result[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|Mult0|auto_generated|add6_result[3]~6_combout\,
	datab => \CLA0|Mult0|auto_generated|add6_result[6]~12_combout\,
	datac => \CLA0|Mult0|auto_generated|add6_result[4]~8_combout\,
	datad => \CLA0|Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \CLA0|process_3~1_combout\);

-- Location: LCCOMB_X58_Y50_N30
\CLA0|temperor~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|temperor~1_combout\ = (\mode~input_o\ & ((\CLA0|Mult0|auto_generated|add6_result[7]~14_combout\ & ((\CLA0|process_3~1_combout\))) # (!\CLA0|Mult0|auto_generated|add6_result[7]~14_combout\ & (\CLA0|process_3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \CLA0|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \CLA0|process_3~3_combout\,
	datad => \CLA0|process_3~1_combout\,
	combout => \CLA0|temperor~1_combout\);

-- Location: LCCOMB_X52_Y45_N18
\CLA0|temperor~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|temperor~2_combout\ = (\CLA0|temperor~1_combout\) # ((\CLA0|temperor~0_combout\ & !\mode~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|temperor~0_combout\,
	datac => \mode~input_o\,
	datad => \CLA0|temperor~1_combout\,
	combout => \CLA0|temperor~2_combout\);

-- Location: LCCOMB_X52_Y47_N10
\HEX0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~1_combout\ = (\HEX0~0_combout\ & (((\CLA0|temperor~2_combout\) # (!\operation~input_o\)))) # (!\HEX0~0_combout\ & (\controlMulti|erorTotale~1_combout\ & ((\operation~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlMulti|erorTotale~1_combout\,
	datab => \HEX0~0_combout\,
	datac => \CLA0|temperor~2_combout\,
	datad => \operation~input_o\,
	combout => \HEX0~1_combout\);

-- Location: LCCOMB_X51_Y45_N12
\choix_d0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux2~0_combout\ = (!\CLA~input_o\ & \operation~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA~input_o\,
	datad => \operation~input_o\,
	combout => \choix_d0|Mux2~0_combout\);

-- Location: LCCOMB_X51_Y45_N24
\choix_d0|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux0~2_combout\ = (\mode~input_o\ & (\multi0|Mult1|auto_generated|op_2~6_combout\)) # (!\mode~input_o\ & ((\multi0|Mult0|auto_generated|op_3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|op_2~6_combout\,
	datab => \mode~input_o\,
	datac => \multi0|Mult0|auto_generated|op_3~6_combout\,
	combout => \choix_d0|Mux0~2_combout\);

-- Location: LCCOMB_X51_Y45_N18
\choix_d0|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux0~6_combout\ = (\operation~input_o\ & (\choix_d0|Mux0~2_combout\ & (!\CLA~input_o\ & !\controlMulti|erorTotale~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation~input_o\,
	datab => \choix_d0|Mux0~2_combout\,
	datac => \CLA~input_o\,
	datad => \controlMulti|erorTotale~1_combout\,
	combout => \choix_d0|Mux0~6_combout\);

-- Location: IOIBUF_X18_Y0_N22
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

-- Location: LCCOMB_X52_Y47_N28
\choix_d0|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux2~1_combout\ = (\operation~input_o\) # (!\CLA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datad => \operation~input_o\,
	combout => \choix_d0|Mux2~1_combout\);

-- Location: LCCOMB_X52_Y47_N12
\choix_d0|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux2~2_combout\ = (\CLA~input_o\ & ((\operation~input_o\) # ((\mode~input_o\ & \CLA0|process_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \mode~input_o\,
	datac => \CLA0|process_3~0_combout\,
	datad => \operation~input_o\,
	combout => \choix_d0|Mux2~2_combout\);

-- Location: LCCOMB_X52_Y45_N12
\choix_d0|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux0~3_combout\ = (\choix_d0|Mux2~1_combout\ & (((\choix_d0|Mux2~2_combout\)))) # (!\choix_d0|Mux2~1_combout\ & (\resCLA[3]~input_o\ & ((\choix_d0|Mux2~2_combout\) # (!\coutCLA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux2~1_combout\,
	datab => \coutCLA~input_o\,
	datac => \resCLA[3]~input_o\,
	datad => \choix_d0|Mux2~2_combout\,
	combout => \choix_d0|Mux0~3_combout\);

-- Location: LCCOMB_X52_Y48_N4
\ResAdd[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ResAdd(3) = (\add0|Res[3]~6_combout\ & (!\add0|Cout~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \add0|Res[3]~6_combout\,
	datac => \A[3]~input_o\,
	datad => \add0|Cout~0_combout\,
	combout => ResAdd(3));

-- Location: LCCOMB_X52_Y45_N14
\CLA0|result~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|result~1_combout\ = (!\CLA0|temperor~1_combout\ & (\resCLA[3]~input_o\ & ((\mode~input_o\) # (!\CLA0|temperor~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|temperor~1_combout\,
	datab => \mode~input_o\,
	datac => \resCLA[3]~input_o\,
	datad => \CLA0|temperor~0_combout\,
	combout => \CLA0|result~1_combout\);

-- Location: LCCOMB_X52_Y45_N4
\choix_d0|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux0~4_combout\ = (\choix_d0|Mux0~3_combout\ & (((\CLA0|result~1_combout\) # (!\choix_d0|Mux2~1_combout\)))) # (!\choix_d0|Mux0~3_combout\ & (ResAdd(3) & ((\choix_d0|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~3_combout\,
	datab => ResAdd(3),
	datac => \CLA0|result~1_combout\,
	datad => \choix_d0|Mux2~1_combout\,
	combout => \choix_d0|Mux0~4_combout\);

-- Location: LCCOMB_X51_Y45_N10
\choix_d0|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux0~5_combout\ = (!\reset~input_o\ & ((\choix_d0|Mux0~6_combout\) # ((!\choix_d0|Mux2~0_combout\ & \choix_d0|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux2~0_combout\,
	datab => \choix_d0|Mux0~6_combout\,
	datac => \reset~input_o\,
	datad => \choix_d0|Mux0~4_combout\,
	combout => \choix_d0|Mux0~5_combout\);

-- Location: LCCOMB_X46_Y34_N24
\sepRes|int_input[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|int_input[31]~0_combout\ = (\choix_d0|Mux0~5_combout\ & \mode~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~5_combout\,
	datac => \mode~input_o\,
	combout => \sepRes|int_input[31]~0_combout\);

-- Location: LCCOMB_X51_Y45_N20
\choix_d0|Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux3~6_combout\ = (!\CLA~input_o\ & (!\controlMulti|erorTotale~1_combout\ & (!\reset~input_o\ & \operation~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \controlMulti|erorTotale~1_combout\,
	datac => \reset~input_o\,
	datad => \operation~input_o\,
	combout => \choix_d0|Mux3~6_combout\);

-- Location: LCCOMB_X51_Y45_N28
\choix_d0|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux3~2_combout\ = (\choix_d0|Mux3~6_combout\ & ((\mode~input_o\ & (\multi0|Mult1|auto_generated|op_2~0_combout\)) # (!\mode~input_o\ & ((\multi0|Mult0|auto_generated|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|op_2~0_combout\,
	datab => \mode~input_o\,
	datac => \multi0|Mult0|auto_generated|op_3~0_combout\,
	datad => \choix_d0|Mux3~6_combout\,
	combout => \choix_d0|Mux3~2_combout\);

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

-- Location: LCCOMB_X52_Y45_N30
\choix_d0|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux3~3_combout\ = (\choix_d0|Mux2~1_combout\ & (((\choix_d0|Mux2~2_combout\)))) # (!\choix_d0|Mux2~1_combout\ & (\resCLA[0]~input_o\ & ((\choix_d0|Mux2~2_combout\) # (!\coutCLA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux2~1_combout\,
	datab => \resCLA[0]~input_o\,
	datac => \coutCLA~input_o\,
	datad => \choix_d0|Mux2~2_combout\,
	combout => \choix_d0|Mux3~3_combout\);

-- Location: LCCOMB_X52_Y45_N28
\ResAdd[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ResAdd(0) = (\add0|Res[0]~0_combout\ & !\controlAdd|erorTotale~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add0|Res[0]~0_combout\,
	datad => \controlAdd|erorTotale~0_combout\,
	combout => ResAdd(0));

-- Location: LCCOMB_X52_Y45_N24
\CLA0|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|result~0_combout\ = (!\CLA0|temperor~1_combout\ & (\resCLA[0]~input_o\ & ((\mode~input_o\) # (!\CLA0|temperor~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|temperor~1_combout\,
	datab => \resCLA[0]~input_o\,
	datac => \mode~input_o\,
	datad => \CLA0|temperor~0_combout\,
	combout => \CLA0|result~0_combout\);

-- Location: LCCOMB_X52_Y45_N26
\choix_d0|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux3~4_combout\ = (\choix_d0|Mux3~3_combout\ & (((\CLA0|result~0_combout\) # (!\choix_d0|Mux2~1_combout\)))) # (!\choix_d0|Mux3~3_combout\ & (ResAdd(0) & ((\choix_d0|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux3~3_combout\,
	datab => ResAdd(0),
	datac => \CLA0|result~0_combout\,
	datad => \choix_d0|Mux2~1_combout\,
	combout => \choix_d0|Mux3~4_combout\);

-- Location: LCCOMB_X51_Y45_N30
\choix_d0|Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux3~5_combout\ = (\choix_d0|Mux3~2_combout\) # ((!\choix_d0|Mux2~0_combout\ & (!\reset~input_o\ & \choix_d0|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux2~0_combout\,
	datab => \choix_d0|Mux3~2_combout\,
	datac => \reset~input_o\,
	datad => \choix_d0|Mux3~4_combout\,
	combout => \choix_d0|Mux3~5_combout\);

-- Location: LCCOMB_X51_Y45_N4
\choix_d0|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux2~3_combout\ = (\choix_d0|Mux3~6_combout\ & ((\mode~input_o\ & ((\multi0|Mult1|auto_generated|op_2~2_combout\))) # (!\mode~input_o\ & (\multi0|Mult0|auto_generated|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|op_3~2_combout\,
	datab => \choix_d0|Mux3~6_combout\,
	datac => \mode~input_o\,
	datad => \multi0|Mult1|auto_generated|op_2~2_combout\,
	combout => \choix_d0|Mux2~3_combout\);

-- Location: LCCOMB_X52_Y45_N0
\ResAdd[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ResAdd(1) = (\add0|Res[1]~2_combout\ & !\controlAdd|erorTotale~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add0|Res[1]~2_combout\,
	datad => \controlAdd|erorTotale~0_combout\,
	combout => ResAdd(1));

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

-- Location: LCCOMB_X52_Y45_N22
\CLA0|result~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|result~2_combout\ = (\resCLA[1]~input_o\ & !\coutCLA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resCLA[1]~input_o\,
	datac => \coutCLA~input_o\,
	combout => \CLA0|result~2_combout\);

-- Location: LCCOMB_X52_Y45_N16
\choix_d0|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux2~4_combout\ = (\choix_d0|Mux2~1_combout\ & ((ResAdd(1)) # ((\choix_d0|Mux2~2_combout\)))) # (!\choix_d0|Mux2~1_combout\ & (((\CLA0|result~2_combout\ & !\choix_d0|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux2~1_combout\,
	datab => ResAdd(1),
	datac => \CLA0|result~2_combout\,
	datad => \choix_d0|Mux2~2_combout\,
	combout => \choix_d0|Mux2~4_combout\);

-- Location: LCCOMB_X52_Y45_N2
\choix_d0|Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux2~5_combout\ = (\choix_d0|Mux2~2_combout\ & (\resCLA[1]~input_o\ & ((!\choix_d0|Mux2~4_combout\) # (!\CLA0|temperor~2_combout\)))) # (!\choix_d0|Mux2~2_combout\ & (((\choix_d0|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|temperor~2_combout\,
	datab => \choix_d0|Mux2~4_combout\,
	datac => \resCLA[1]~input_o\,
	datad => \choix_d0|Mux2~2_combout\,
	combout => \choix_d0|Mux2~5_combout\);

-- Location: LCCOMB_X51_Y45_N22
\choix_d0|Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux2~6_combout\ = (\choix_d0|Mux2~3_combout\) # ((!\choix_d0|Mux2~0_combout\ & (!\reset~input_o\ & \choix_d0|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux2~0_combout\,
	datab => \choix_d0|Mux2~3_combout\,
	datac => \reset~input_o\,
	datad => \choix_d0|Mux2~5_combout\,
	combout => \choix_d0|Mux2~6_combout\);

-- Location: LCCOMB_X51_Y45_N16
\choix_d0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux1~0_combout\ = (\choix_d0|Mux3~6_combout\ & ((\mode~input_o\ & ((\multi0|Mult1|auto_generated|op_2~4_combout\))) # (!\mode~input_o\ & (\multi0|Mult0|auto_generated|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|op_3~4_combout\,
	datab => \multi0|Mult1|auto_generated|op_2~4_combout\,
	datac => \mode~input_o\,
	datad => \choix_d0|Mux3~6_combout\,
	combout => \choix_d0|Mux1~0_combout\);

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

-- Location: LCCOMB_X52_Y45_N10
\CLA0|result~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLA0|result~3_combout\ = (\resCLA[2]~input_o\ & !\coutCLA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resCLA[2]~input_o\,
	datac => \coutCLA~input_o\,
	combout => \CLA0|result~3_combout\);

-- Location: LCCOMB_X52_Y45_N8
\ResAdd[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ResAdd(2) = (\add0|Res[2]~4_combout\ & !\controlAdd|erorTotale~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add0|Res[2]~4_combout\,
	datad => \controlAdd|erorTotale~0_combout\,
	combout => ResAdd(2));

-- Location: LCCOMB_X52_Y45_N20
\choix_d0|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux1~1_combout\ = (\choix_d0|Mux2~2_combout\ & (((\choix_d0|Mux2~1_combout\)))) # (!\choix_d0|Mux2~2_combout\ & ((\choix_d0|Mux2~1_combout\ & ((ResAdd(2)))) # (!\choix_d0|Mux2~1_combout\ & (\CLA0|result~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|result~3_combout\,
	datab => \choix_d0|Mux2~2_combout\,
	datac => ResAdd(2),
	datad => \choix_d0|Mux2~1_combout\,
	combout => \choix_d0|Mux1~1_combout\);

-- Location: LCCOMB_X52_Y45_N6
\choix_d0|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux1~2_combout\ = (\choix_d0|Mux2~2_combout\ & (\resCLA[2]~input_o\ & ((!\choix_d0|Mux1~1_combout\) # (!\CLA0|temperor~2_combout\)))) # (!\choix_d0|Mux2~2_combout\ & (((\choix_d0|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|temperor~2_combout\,
	datab => \choix_d0|Mux1~1_combout\,
	datac => \resCLA[2]~input_o\,
	datad => \choix_d0|Mux2~2_combout\,
	combout => \choix_d0|Mux1~2_combout\);

-- Location: LCCOMB_X51_Y45_N26
\choix_d0|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux1~3_combout\ = (\choix_d0|Mux1~0_combout\) # ((!\choix_d0|Mux2~0_combout\ & (!\reset~input_o\ & \choix_d0|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux2~0_combout\,
	datab => \choix_d0|Mux1~0_combout\,
	datac => \reset~input_o\,
	datad => \choix_d0|Mux1~2_combout\,
	combout => \choix_d0|Mux1~3_combout\);

-- Location: LCCOMB_X47_Y35_N28
\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4_combout\ = (\sepRes|int_input[31]~0_combout\ & (!\choix_d0|Mux1~3_combout\ & (!\choix_d0|Mux2~6_combout\ & !\choix_d0|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \choix_d0|Mux1~3_combout\,
	datac => \choix_d0|Mux2~6_combout\,
	datad => \choix_d0|Mux3~5_combout\,
	combout => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4_combout\);

-- Location: LCCOMB_X46_Y35_N16
\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ = (\choix_d0|Mux0~5_combout\ & (!\mode~input_o\ & \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~5_combout\,
	datac => \mode~input_o\,
	datad => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4_combout\,
	combout => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\);

-- Location: LCCOMB_X46_Y35_N14
\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ = \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4_combout\ $ (((\choix_d0|Mux0~5_combout\ & !\mode~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~5_combout\,
	datac => \mode~input_o\,
	datad => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4_combout\,
	combout => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\);

-- Location: LCCOMB_X47_Y35_N8
\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\ = \choix_d0|Mux1~3_combout\ $ (((\sepRes|int_input[31]~0_combout\ & ((\choix_d0|Mux2~6_combout\) # (\choix_d0|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \choix_d0|Mux1~3_combout\,
	datac => \choix_d0|Mux2~6_combout\,
	datad => \choix_d0|Mux3~5_combout\,
	combout => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\);

-- Location: LCCOMB_X46_Y35_N20
\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\ $ (VCC)
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\,
	datad => VCC,
	combout => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X46_Y35_N22
\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ & (\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ & (!\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ & !\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\,
	datad => VCC,
	cin => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X46_Y35_N24
\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ & (\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ & (!\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ & !\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\,
	datad => VCC,
	cin => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X46_Y35_N26
\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X46_Y34_N26
\sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ = (\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\);

-- Location: LCCOMB_X46_Y35_N28
\sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10_combout\ = (\choix_d0|Mux0~5_combout\ & (!\mode~input_o\ & (\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~5_combout\,
	datab => \mode~input_o\,
	datac => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4_combout\,
	combout => \sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10_combout\);

-- Location: LCCOMB_X46_Y35_N0
\sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X46_Y35_N18
\sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\ = (\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4_combout\ $ (((\choix_d0|Mux0~5_combout\ & 
-- !\mode~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~5_combout\,
	datab => \mode~input_o\,
	datac => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~4_combout\,
	combout => \sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\);

-- Location: LCCOMB_X46_Y35_N30
\sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (\sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\ & \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sepRes|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\,
	datac => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X46_Y35_N2
\sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (!\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LCCOMB_X47_Y35_N20
\sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ = (!\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\choix_d0|Mux2~6_combout\ $ (((\choix_d0|Mux3~5_combout\ & \sepRes|int_input[31]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \choix_d0|Mux3~5_combout\,
	datac => \choix_d0|Mux2~6_combout\,
	datad => \sepRes|int_input[31]~0_combout\,
	combout => \sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\);

-- Location: LCCOMB_X47_Y35_N22
\sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8_combout\ = (\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\choix_d0|Mux2~6_combout\ $ (((\choix_d0|Mux3~5_combout\ & \sepRes|int_input[31]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \choix_d0|Mux3~5_combout\,
	datac => \choix_d0|Mux2~6_combout\,
	datad => \sepRes|int_input[31]~0_combout\,
	combout => \sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8_combout\);

-- Location: LCCOMB_X46_Y35_N4
\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\) # (\sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\,
	datab => \sepRes|Div0|auto_generated|divider|divider|StageOut[15]~8_combout\,
	datad => VCC,
	cout => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X46_Y35_N6
\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & (!\sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ & 
-- !\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datab => \sepRes|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datad => VCC,
	cin => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X46_Y35_N8
\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (\sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datab => \sepRes|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\,
	datad => VCC,
	cin => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X46_Y35_N10
\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & (!\sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10_combout\ & 
-- !\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datab => \sepRes|Div0|auto_generated|divider|divider|StageOut[18]~10_combout\,
	datad => VCC,
	cin => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X46_Y35_N12
\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X46_Y34_N14
\sepRes|Div0|auto_generated|divider|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|op_1~0_combout\ = \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (VCC)
-- \sepRes|Div0|auto_generated|divider|op_1~1\ = CARRY(\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	combout => \sepRes|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \sepRes|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X47_Y34_N0
\sepRes|Div0|auto_generated|divider|quotient[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ = (\choix_d0|Mux0~5_combout\ & ((\mode~input_o\ & (\sepRes|Div0|auto_generated|divider|op_1~0_combout\)) # (!\mode~input_o\ & 
-- ((!\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\choix_d0|Mux0~5_combout\ & (((!\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|op_1~0_combout\,
	datab => \choix_d0|Mux0~5_combout\,
	datac => \mode~input_o\,
	datad => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\);

-- Location: LCCOMB_X47_Y35_N30
\sepRes|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add5~4_combout\ = (\sepRes|int_input[31]~0_combout\ & (\choix_d0|Mux3~5_combout\ $ (\choix_d0|Mux2~6_combout\ $ (\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \choix_d0|Mux3~5_combout\,
	datac => \choix_d0|Mux2~6_combout\,
	datad => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \sepRes|Add5~4_combout\);

-- Location: LCCOMB_X47_Y35_N2
\sepRes|Add5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add5~5_combout\ = (\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ & (\choix_d0|Mux2~6_combout\ $ (VCC))) # (!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ & ((\choix_d0|Mux2~6_combout\) # (GND)))
-- \sepRes|Add5~6\ = CARRY((\choix_d0|Mux2~6_combout\) # (!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \choix_d0|Mux2~6_combout\,
	datad => VCC,
	combout => \sepRes|Add5~5_combout\,
	cout => \sepRes|Add5~6\);

-- Location: LCCOMB_X47_Y35_N16
\sepRes|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add5~12_combout\ = (\sepRes|Add5~4_combout\) # ((\sepRes|Add5~5_combout\ & ((!\mode~input_o\) # (!\choix_d0|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add5~4_combout\,
	datab => \choix_d0|Mux0~5_combout\,
	datac => \mode~input_o\,
	datad => \sepRes|Add5~5_combout\,
	combout => \sepRes|Add5~12_combout\);

-- Location: LCCOMB_X46_Y34_N16
\sepRes|Div0|auto_generated|divider|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|op_1~2_combout\ = (\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\sepRes|Div0|auto_generated|divider|op_1~1\)) # 
-- (!\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\sepRes|Div0|auto_generated|divider|op_1~1\) # (GND)))
-- \sepRes|Div0|auto_generated|divider|op_1~3\ = CARRY((!\sepRes|Div0|auto_generated|divider|op_1~1\) # (!\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \sepRes|Div0|auto_generated|divider|op_1~1\,
	combout => \sepRes|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \sepRes|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X46_Y34_N18
\sepRes|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|op_1~4_combout\ = \sepRes|Div0|auto_generated|divider|op_1~3\ $ (GND)
-- \sepRes|Div0|auto_generated|divider|op_1~5\ = CARRY(!\sepRes|Div0|auto_generated|divider|op_1~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sepRes|Div0|auto_generated|divider|op_1~3\,
	combout => \sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \sepRes|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X46_Y34_N28
\hdmi_out0|res_img|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add3~0_combout\ = (\sepRes|int_input[31]~0_combout\ & (\sepRes|Div0|auto_generated|divider|op_1~4_combout\ $ ((\sepRes|Div0|auto_generated|divider|op_1~0_combout\)))) # (!\sepRes|int_input[31]~0_combout\ & 
-- (((!\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	datab => \sepRes|int_input[31]~0_combout\,
	datac => \sepRes|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \hdmi_out0|res_img|Add3~0_combout\);

-- Location: LCCOMB_X46_Y34_N30
\sepRes|Div0|auto_generated|divider|quotient[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ = (\choix_d0|Mux0~5_combout\ & ((\mode~input_o\ & (\sepRes|Div0|auto_generated|divider|op_1~2_combout\)) # (!\mode~input_o\ & 
-- ((!\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))) # (!\choix_d0|Mux0~5_combout\ & (((!\sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~5_combout\,
	datab => \sepRes|Div0|auto_generated|divider|op_1~2_combout\,
	datac => \mode~input_o\,
	datad => \sepRes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\);

-- Location: LCCOMB_X47_Y35_N4
\sepRes|Add5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add5~7_combout\ = (\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\choix_d0|Mux1~3_combout\ & (!\sepRes|Add5~6\)) # (!\choix_d0|Mux1~3_combout\ & ((\sepRes|Add5~6\) # (GND))))) # 
-- (!\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\choix_d0|Mux1~3_combout\ & (\sepRes|Add5~6\ & VCC)) # (!\choix_d0|Mux1~3_combout\ & (!\sepRes|Add5~6\))))
-- \sepRes|Add5~8\ = CARRY((\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((!\sepRes|Add5~6\) # (!\choix_d0|Mux1~3_combout\))) # (!\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\choix_d0|Mux1~3_combout\ & !\sepRes|Add5~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \choix_d0|Mux1~3_combout\,
	datad => VCC,
	cin => \sepRes|Add5~6\,
	combout => \sepRes|Add5~7_combout\,
	cout => \sepRes|Add5~8\);

-- Location: LCCOMB_X47_Y35_N6
\sepRes|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add5~10_combout\ = \hdmi_out0|res_img|Add3~0_combout\ $ (\sepRes|Add5~8\ $ (\choix_d0|Mux0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add3~0_combout\,
	datad => \choix_d0|Mux0~5_combout\,
	cin => \sepRes|Add5~8\,
	combout => \sepRes|Add5~10_combout\);

-- Location: LCCOMB_X47_Y35_N12
\sepRes|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add3~2_combout\ = (\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\choix_d0|Mux1~3_combout\ & ((!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\) # (!\choix_d0|Mux2~6_combout\)))) # 
-- (!\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & (((!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\) # (!\choix_d0|Mux1~3_combout\)) # (!\choix_d0|Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \choix_d0|Mux2~6_combout\,
	datac => \choix_d0|Mux1~3_combout\,
	datad => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \sepRes|Add3~2_combout\);

-- Location: LCCOMB_X47_Y35_N14
\sepRes|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add2~0_combout\ = \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ $ (\choix_d0|Mux1~3_combout\ $ (((!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\) # (!\choix_d0|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \choix_d0|Mux2~6_combout\,
	datac => \choix_d0|Mux1~3_combout\,
	datad => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \sepRes|Add2~0_combout\);

-- Location: LCCOMB_X47_Y35_N18
\sepRes|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add3~1_combout\ = (\sepRes|Add2~0_combout\ & (!\choix_d0|Mux3~5_combout\ & (\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (!\choix_d0|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \choix_d0|Mux2~6_combout\,
	datac => \sepRes|Add2~0_combout\,
	datad => \choix_d0|Mux3~5_combout\,
	combout => \sepRes|Add3~1_combout\);

-- Location: LCCOMB_X47_Y35_N26
\sepRes|Add3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add3~3_combout\ = \sepRes|Add3~2_combout\ $ (\choix_d0|Mux0~5_combout\ $ (\hdmi_out0|res_img|Add3~0_combout\ $ (\sepRes|Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add3~2_combout\,
	datab => \choix_d0|Mux0~5_combout\,
	datac => \hdmi_out0|res_img|Add3~0_combout\,
	datad => \sepRes|Add3~1_combout\,
	combout => \sepRes|Add3~3_combout\);

-- Location: LCCOMB_X47_Y35_N10
\sepRes|Add5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add5~13_combout\ = (\mode~input_o\ & ((\choix_d0|Mux0~5_combout\ & ((\sepRes|Add3~3_combout\))) # (!\choix_d0|Mux0~5_combout\ & (\sepRes|Add5~10_combout\)))) # (!\mode~input_o\ & (\sepRes|Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add5~10_combout\,
	datab => \mode~input_o\,
	datac => \sepRes|Add3~3_combout\,
	datad => \choix_d0|Mux0~5_combout\,
	combout => \sepRes|Add5~13_combout\);

-- Location: LCCOMB_X47_Y35_N0
\sepRes|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add3~0_combout\ = (\choix_d0|Mux3~5_combout\) # (\choix_d0|Mux2~6_combout\ $ (\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \choix_d0|Mux3~5_combout\,
	datac => \choix_d0|Mux2~6_combout\,
	datad => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \sepRes|Add3~0_combout\);

-- Location: LCCOMB_X47_Y35_N24
\sepRes|Add5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add5~9_combout\ = (\sepRes|int_input[31]~0_combout\ & (\sepRes|Add2~0_combout\ $ (((!\sepRes|Add3~0_combout\))))) # (!\sepRes|int_input[31]~0_combout\ & (((\sepRes|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \sepRes|Add2~0_combout\,
	datac => \sepRes|Add5~7_combout\,
	datad => \sepRes|Add3~0_combout\,
	combout => \sepRes|Add5~9_combout\);

-- Location: LCCOMB_X54_Y50_N28
\ledRes1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes1|Mux6~0_combout\ = (!\sepRes|Add5~12_combout\ & (!\sepRes|Add5~13_combout\ & (\sepRes|Add5~9_combout\ $ (\choix_d0|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add5~12_combout\,
	datab => \sepRes|Add5~13_combout\,
	datac => \sepRes|Add5~9_combout\,
	datad => \choix_d0|Mux3~5_combout\,
	combout => \ledRes1|Mux6~0_combout\);

-- Location: LCCOMB_X54_Y50_N6
\HEX0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~2_combout\ = (\HEX0~1_combout\) # (\ledRes1|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HEX0~1_combout\,
	datad => \ledRes1|Mux6~0_combout\,
	combout => \HEX0~2_combout\);

-- Location: LCCOMB_X54_Y50_N16
\ledRes1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes1|Mux5~0_combout\ = (!\sepRes|Add5~13_combout\ & (\sepRes|Add5~9_combout\ & (\sepRes|Add5~12_combout\ $ (\choix_d0|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add5~12_combout\,
	datab => \sepRes|Add5~13_combout\,
	datac => \sepRes|Add5~9_combout\,
	datad => \choix_d0|Mux3~5_combout\,
	combout => \ledRes1|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y50_N26
\HEX0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~3_combout\ = (\HEX0~1_combout\) # (\ledRes1|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HEX0~1_combout\,
	datad => \ledRes1|Mux5~0_combout\,
	combout => \HEX0~3_combout\);

-- Location: LCCOMB_X52_Y47_N4
\eror~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \eror~0_combout\ = (\CLA~input_o\ & (((\operation~input_o\)) # (!\CLA0|eror~0_combout\))) # (!\CLA~input_o\ & (((!\controlAdd|erorTotale~0_combout\ & !\operation~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA~input_o\,
	datab => \CLA0|eror~0_combout\,
	datac => \controlAdd|erorTotale~0_combout\,
	datad => \operation~input_o\,
	combout => \eror~0_combout\);

-- Location: LCCOMB_X52_Y47_N30
\eror~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \eror~1_combout\ = (\eror~0_combout\ & (((!\operation~input_o\) # (!\CLA0|temperor~2_combout\)))) # (!\eror~0_combout\ & (!\controlMulti|erorTotale~1_combout\ & ((\operation~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlMulti|erorTotale~1_combout\,
	datab => \eror~0_combout\,
	datac => \CLA0|temperor~2_combout\,
	datad => \operation~input_o\,
	combout => \eror~1_combout\);

-- Location: LCCOMB_X54_Y50_N4
\ledRes1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes1|Mux4~0_combout\ = (\sepRes|Add5~12_combout\ & (!\sepRes|Add5~13_combout\ & (!\sepRes|Add5~9_combout\ & !\choix_d0|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add5~12_combout\,
	datab => \sepRes|Add5~13_combout\,
	datac => \sepRes|Add5~9_combout\,
	datad => \choix_d0|Mux3~5_combout\,
	combout => \ledRes1|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y50_N30
\HEX0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~4_combout\ = (\ledRes1|Mux4~0_combout\) # (!\eror~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eror~1_combout\,
	datac => \ledRes1|Mux4~0_combout\,
	combout => \HEX0~4_combout\);

-- Location: LCCOMB_X54_Y50_N12
\ledRes1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes1|Mux3~0_combout\ = (!\sepRes|Add5~13_combout\ & ((\sepRes|Add5~12_combout\ & (\sepRes|Add5~9_combout\ & \choix_d0|Mux3~5_combout\)) # (!\sepRes|Add5~12_combout\ & (\sepRes|Add5~9_combout\ $ (\choix_d0|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add5~12_combout\,
	datab => \sepRes|Add5~13_combout\,
	datac => \sepRes|Add5~9_combout\,
	datad => \choix_d0|Mux3~5_combout\,
	combout => \ledRes1|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y50_N14
\HEX0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~5_combout\ = (\HEX0~1_combout\) # (\ledRes1|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HEX0~1_combout\,
	datad => \ledRes1|Mux3~0_combout\,
	combout => \HEX0~5_combout\);

-- Location: LCCOMB_X54_Y50_N8
\ledRes1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes1|Mux2~0_combout\ = (\sepRes|Add5~12_combout\ & (!\sepRes|Add5~13_combout\ & ((\choix_d0|Mux3~5_combout\)))) # (!\sepRes|Add5~12_combout\ & ((\sepRes|Add5~9_combout\ & (!\sepRes|Add5~13_combout\)) # (!\sepRes|Add5~9_combout\ & 
-- ((\choix_d0|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add5~12_combout\,
	datab => \sepRes|Add5~13_combout\,
	datac => \sepRes|Add5~9_combout\,
	datad => \choix_d0|Mux3~5_combout\,
	combout => \ledRes1|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y50_N22
\HEX0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~6_combout\ = (\ledRes1|Mux2~0_combout\ & !\HEX0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledRes1|Mux2~0_combout\,
	datac => \HEX0~1_combout\,
	combout => \HEX0~6_combout\);

-- Location: LCCOMB_X54_Y50_N24
\ledRes1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes1|Mux1~0_combout\ = (!\sepRes|Add5~13_combout\ & ((\sepRes|Add5~12_combout\ & ((\choix_d0|Mux3~5_combout\) # (!\sepRes|Add5~9_combout\))) # (!\sepRes|Add5~12_combout\ & (!\sepRes|Add5~9_combout\ & \choix_d0|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add5~12_combout\,
	datab => \sepRes|Add5~13_combout\,
	datac => \sepRes|Add5~9_combout\,
	datad => \choix_d0|Mux3~5_combout\,
	combout => \ledRes1|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y50_N10
\HEX0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~7_combout\ = (\HEX0~1_combout\) # (\ledRes1|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HEX0~1_combout\,
	datad => \ledRes1|Mux1~0_combout\,
	combout => \HEX0~7_combout\);

-- Location: LCCOMB_X54_Y50_N20
\ledRes1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes1|Mux0~0_combout\ = (\sepRes|Add5~13_combout\) # ((\sepRes|Add5~12_combout\ & ((!\choix_d0|Mux3~5_combout\) # (!\sepRes|Add5~9_combout\))) # (!\sepRes|Add5~12_combout\ & (\sepRes|Add5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add5~12_combout\,
	datab => \sepRes|Add5~13_combout\,
	datac => \sepRes|Add5~9_combout\,
	datad => \choix_d0|Mux3~5_combout\,
	combout => \ledRes1|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y50_N18
\HEX0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~8_combout\ = (\HEX0~1_combout\) # (\ledRes1|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HEX0~1_combout\,
	datad => \ledRes1|Mux0~0_combout\,
	combout => \HEX0~8_combout\);

-- Location: LCCOMB_X46_Y34_N20
\sepRes|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|op_1~6_combout\ = !\sepRes|Div0|auto_generated|divider|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sepRes|Div0|auto_generated|divider|op_1~5\,
	combout => \sepRes|Div0|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X46_Y34_N0
\sepRes|Div0|auto_generated|divider|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|_~5_combout\ = (\choix_d0|Mux0~5_combout\ & (\mode~input_o\ & \sepRes|Div0|auto_generated|divider|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~5_combout\,
	datac => \mode~input_o\,
	datad => \sepRes|Div0|auto_generated|divider|op_1~6_combout\,
	combout => \sepRes|Div0|auto_generated|divider|_~5_combout\);

-- Location: LCCOMB_X46_Y34_N10
\sepRes|Div0|auto_generated|divider|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Div0|auto_generated|divider|_~4_combout\ = (\choix_d0|Mux0~5_combout\ & (\mode~input_o\ & \sepRes|Div0|auto_generated|divider|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~5_combout\,
	datac => \mode~input_o\,
	datad => \sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \sepRes|Div0|auto_generated|divider|_~4_combout\);

-- Location: LCCOMB_X46_Y34_N12
\sepRes|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add0~10_combout\ = (\choix_d0|Mux0~5_combout\ & ((\mode~input_o\ & (!\sepRes|Div0|auto_generated|divider|op_1~0_combout\)) # (!\mode~input_o\ & ((!\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # 
-- (!\choix_d0|Mux0~5_combout\ & (((!\sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~5_combout\,
	datab => \mode~input_o\,
	datac => \sepRes|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \sepRes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sepRes|Add0~10_combout\);

-- Location: LCCOMB_X46_Y34_N2
\sepRes|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add0~2_combout\ = (\sepRes|Add0~10_combout\ & (\sepRes|int_input[31]~0_combout\ $ (VCC))) # (!\sepRes|Add0~10_combout\ & (\sepRes|int_input[31]~0_combout\ & VCC))
-- \sepRes|Add0~3\ = CARRY((\sepRes|Add0~10_combout\ & \sepRes|int_input[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add0~10_combout\,
	datab => \sepRes|int_input[31]~0_combout\,
	datad => VCC,
	combout => \sepRes|Add0~2_combout\,
	cout => \sepRes|Add0~3\);

-- Location: LCCOMB_X46_Y34_N4
\sepRes|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add0~4_combout\ = (\sepRes|Add0~3\ & (\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ $ ((!\sepRes|int_input[31]~0_combout\)))) # (!\sepRes|Add0~3\ & ((\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ $ 
-- (\sepRes|int_input[31]~0_combout\)) # (GND)))
-- \sepRes|Add0~5\ = CARRY((\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ $ (!\sepRes|int_input[31]~0_combout\)) # (!\sepRes|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \sepRes|Add0~3\,
	combout => \sepRes|Add0~4_combout\,
	cout => \sepRes|Add0~5\);

-- Location: LCCOMB_X46_Y34_N6
\sepRes|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add0~6_combout\ = (\sepRes|Add0~5\ & ((\sepRes|Div0|auto_generated|divider|_~4_combout\ $ (\sepRes|int_input[31]~0_combout\)))) # (!\sepRes|Add0~5\ & (\sepRes|Div0|auto_generated|divider|_~4_combout\ $ (\sepRes|int_input[31]~0_combout\ $ (VCC))))
-- \sepRes|Add0~7\ = CARRY((!\sepRes|Add0~5\ & (\sepRes|Div0|auto_generated|divider|_~4_combout\ $ (\sepRes|int_input[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|_~4_combout\,
	datab => \sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \sepRes|Add0~5\,
	combout => \sepRes|Add0~6_combout\,
	cout => \sepRes|Add0~7\);

-- Location: LCCOMB_X46_Y34_N8
\sepRes|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepRes|Add0~8_combout\ = \sepRes|int_input[31]~0_combout\ $ (\sepRes|Add0~7\ $ (\sepRes|Div0|auto_generated|divider|_~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sepRes|int_input[31]~0_combout\,
	datad => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	cin => \sepRes|Add0~7\,
	combout => \sepRes|Add0~8_combout\);

-- Location: LCCOMB_X47_Y34_N4
\ledRes0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes0|Mux6~0_combout\ = (!\sepRes|Add0~8_combout\ & (!\sepRes|Add0~4_combout\ & (\sepRes|Add0~6_combout\ $ (\sepRes|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add0~8_combout\,
	datab => \sepRes|Add0~6_combout\,
	datac => \sepRes|Add0~4_combout\,
	datad => \sepRes|Add0~2_combout\,
	combout => \ledRes0|Mux6~0_combout\);

-- Location: LCCOMB_X47_Y34_N6
\HEX1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~14_combout\ = (\eror~1_combout\ & ((\ledRes0|Mux6~0_combout\) # ((\mode~input_o\ & \choix_d0|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~1_combout\,
	datab => \mode~input_o\,
	datac => \ledRes0|Mux6~0_combout\,
	datad => \choix_d0|Mux0~5_combout\,
	combout => \HEX1~14_combout\);

-- Location: LCCOMB_X47_Y34_N14
\ledRes0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes0|Mux5~0_combout\ = (!\sepRes|Add0~8_combout\ & (\sepRes|Add0~6_combout\ & (\sepRes|Add0~4_combout\ $ (\sepRes|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add0~8_combout\,
	datab => \sepRes|Add0~6_combout\,
	datac => \sepRes|Add0~4_combout\,
	datad => \sepRes|Add0~2_combout\,
	combout => \ledRes0|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y34_N16
\HEX1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~15_combout\ = ((\ledRes0|Mux5~0_combout\) # ((\mode~input_o\ & \choix_d0|Mux0~5_combout\))) # (!\eror~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~1_combout\,
	datab => \mode~input_o\,
	datac => \ledRes0|Mux5~0_combout\,
	datad => \choix_d0|Mux0~5_combout\,
	combout => \HEX1~15_combout\);

-- Location: LCCOMB_X47_Y34_N28
\ledRes0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes0|Mux4~0_combout\ = (!\sepRes|Add0~8_combout\ & (!\sepRes|Add0~6_combout\ & (\sepRes|Add0~4_combout\ & !\sepRes|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add0~8_combout\,
	datab => \sepRes|Add0~6_combout\,
	datac => \sepRes|Add0~4_combout\,
	datad => \sepRes|Add0~2_combout\,
	combout => \ledRes0|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y34_N30
\HEX1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~16_combout\ = ((\ledRes0|Mux4~0_combout\) # ((\choix_d0|Mux0~5_combout\ & \mode~input_o\))) # (!\eror~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~1_combout\,
	datab => \choix_d0|Mux0~5_combout\,
	datac => \mode~input_o\,
	datad => \ledRes0|Mux4~0_combout\,
	combout => \HEX1~16_combout\);

-- Location: LCCOMB_X47_Y34_N26
\ledRes0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes0|Mux3~0_combout\ = (!\sepRes|Add0~8_combout\ & ((\sepRes|Add0~6_combout\ & (\sepRes|Add0~4_combout\ $ (!\sepRes|Add0~2_combout\))) # (!\sepRes|Add0~6_combout\ & (!\sepRes|Add0~4_combout\ & \sepRes|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add0~8_combout\,
	datab => \sepRes|Add0~6_combout\,
	datac => \sepRes|Add0~4_combout\,
	datad => \sepRes|Add0~2_combout\,
	combout => \ledRes0|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y34_N20
\HEX1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~17_combout\ = (\eror~1_combout\ & ((\ledRes0|Mux3~0_combout\) # ((\mode~input_o\ & \choix_d0|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~1_combout\,
	datab => \mode~input_o\,
	datac => \ledRes0|Mux3~0_combout\,
	datad => \choix_d0|Mux0~5_combout\,
	combout => \HEX1~17_combout\);

-- Location: LCCOMB_X47_Y34_N8
\ledRes0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes0|Mux2~0_combout\ = (\sepRes|Add0~4_combout\ & (!\sepRes|Add0~8_combout\ & ((\sepRes|Add0~2_combout\)))) # (!\sepRes|Add0~4_combout\ & ((\sepRes|Add0~6_combout\ & (!\sepRes|Add0~8_combout\)) # (!\sepRes|Add0~6_combout\ & 
-- ((\sepRes|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add0~8_combout\,
	datab => \sepRes|Add0~6_combout\,
	datac => \sepRes|Add0~4_combout\,
	datad => \sepRes|Add0~2_combout\,
	combout => \ledRes0|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y34_N10
\HEX1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~18_combout\ = (\eror~1_combout\ & ((\ledRes0|Mux2~0_combout\) # ((\mode~input_o\ & \choix_d0|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~1_combout\,
	datab => \mode~input_o\,
	datac => \ledRes0|Mux2~0_combout\,
	datad => \choix_d0|Mux0~5_combout\,
	combout => \HEX1~18_combout\);

-- Location: LCCOMB_X47_Y34_N18
\ledRes0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes0|Mux1~0_combout\ = (!\sepRes|Add0~8_combout\ & ((\sepRes|Add0~6_combout\ & (\sepRes|Add0~4_combout\ & \sepRes|Add0~2_combout\)) # (!\sepRes|Add0~6_combout\ & ((\sepRes|Add0~4_combout\) # (\sepRes|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add0~8_combout\,
	datab => \sepRes|Add0~6_combout\,
	datac => \sepRes|Add0~4_combout\,
	datad => \sepRes|Add0~2_combout\,
	combout => \ledRes0|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y34_N12
\HEX1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~19_combout\ = (\eror~1_combout\ & ((\ledRes0|Mux1~0_combout\) # ((\choix_d0|Mux0~5_combout\ & \mode~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~1_combout\,
	datab => \choix_d0|Mux0~5_combout\,
	datac => \mode~input_o\,
	datad => \ledRes0|Mux1~0_combout\,
	combout => \HEX1~19_combout\);

-- Location: LCCOMB_X47_Y34_N24
\ledRes0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledRes0|Mux0~0_combout\ = (\sepRes|Add0~8_combout\) # ((\sepRes|Add0~6_combout\ & ((!\sepRes|Add0~2_combout\) # (!\sepRes|Add0~4_combout\))) # (!\sepRes|Add0~6_combout\ & (\sepRes|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Add0~8_combout\,
	datab => \sepRes|Add0~6_combout\,
	datac => \sepRes|Add0~4_combout\,
	datad => \sepRes|Add0~2_combout\,
	combout => \ledRes0|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y37_N28
\HEX1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~20_combout\ = (!\ledRes0|Mux0~0_combout\ & (\eror~1_combout\ & ((!\choix_d0|Mux0~5_combout\) # (!\mode~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \choix_d0|Mux0~5_combout\,
	datac => \ledRes0|Mux0~0_combout\,
	datad => \eror~1_combout\,
	combout => \HEX1~20_combout\);

-- Location: LCCOMB_X66_Y48_N20
\sepB|int_input[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|int_input[31]~0_combout\ = (\B[3]~input_o\ & \mode~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \mode~input_o\,
	combout => \sepB|int_input[31]~0_combout\);

-- Location: LCCOMB_X66_Y50_N24
\sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~2_combout\ = (!\B[2]~input_o\ & (!\B[0]~input_o\ & (!\B[1]~input_o\ & \sepB|int_input[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \sepB|int_input[31]~0_combout\,
	combout => \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~2_combout\);

-- Location: LCCOMB_X66_Y50_N26
\sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ = \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~2_combout\ $ (((!\mode~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \B[3]~input_o\,
	datad => \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~2_combout\,
	combout => \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\);

-- Location: LCCOMB_X66_Y50_N0
\sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ = \B[2]~input_o\ $ (((\sepB|int_input[31]~0_combout\ & ((\B[0]~input_o\) # (\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \sepB|int_input[31]~0_combout\,
	combout => \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\);

-- Location: LCCOMB_X66_Y50_N22
\sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ = \B[1]~input_o\ $ (((\mode~input_o\ & (\B[0]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\);

-- Location: LCCOMB_X66_Y50_N10
\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY(\sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\,
	datad => VCC,
	cout => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X66_Y50_N12
\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ & !\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\,
	datad => VCC,
	cin => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X66_Y50_N14
\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((\sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ & !\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\,
	datad => VCC,
	cin => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X66_Y50_N16
\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X66_Y50_N18
\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X66_Y50_N2
\sepB|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|op_1~4_combout\ = \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (VCC)
-- \sepB|Div0|auto_generated|divider|op_1~5\ = CARRY(\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	combout => \sepB|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \sepB|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X66_Y50_N28
\sepB|Div0|auto_generated|divider|quotient[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|quotient[0]~4_combout\ = (\mode~input_o\ & ((\B[3]~input_o\ & ((\sepB|Div0|auto_generated|divider|op_1~4_combout\))) # (!\B[3]~input_o\ & (!\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) 
-- # (!\mode~input_o\ & (!\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \sepB|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \B[3]~input_o\,
	combout => \sepB|Div0|auto_generated|divider|quotient[0]~4_combout\);

-- Location: LCCOMB_X66_Y48_N26
\sepB|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add5~2_combout\ = (\sepB|int_input[31]~0_combout\ & (\B[0]~input_o\ $ (\B[1]~input_o\ $ (\sepB|Div0|auto_generated|divider|quotient[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|int_input[31]~0_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \sepB|Add5~2_combout\);

-- Location: LCCOMB_X66_Y48_N8
\sepB|Add5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add5~3_combout\ = (\B[1]~input_o\ & ((GND) # (!\sepB|Div0|auto_generated|divider|quotient[0]~4_combout\))) # (!\B[1]~input_o\ & (\sepB|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (GND)))
-- \sepB|Add5~4\ = CARRY((\B[1]~input_o\) # (!\sepB|Div0|auto_generated|divider|quotient[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datad => VCC,
	combout => \sepB|Add5~3_combout\,
	cout => \sepB|Add5~4\);

-- Location: LCCOMB_X66_Y48_N24
\sepB|Add5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add5~11_combout\ = (\sepB|Add5~2_combout\) # ((\sepB|Add5~3_combout\ & ((!\mode~input_o\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add5~2_combout\,
	datab => \B[3]~input_o\,
	datac => \mode~input_o\,
	datad => \sepB|Add5~3_combout\,
	combout => \sepB|Add5~11_combout\);

-- Location: LCCOMB_X66_Y50_N4
\sepB|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|op_1~6_combout\ = !\sepB|Div0|auto_generated|divider|op_1~5\
-- \sepB|Div0|auto_generated|divider|op_1~7\ = CARRY(!\sepB|Div0|auto_generated|divider|op_1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sepB|Div0|auto_generated|divider|op_1~5\,
	combout => \sepB|Div0|auto_generated|divider|op_1~6_combout\,
	cout => \sepB|Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X66_Y50_N6
\sepB|Div0|auto_generated|divider|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|op_1~8_combout\ = \sepB|Div0|auto_generated|divider|op_1~7\ $ (GND)
-- \sepB|Div0|auto_generated|divider|op_1~9\ = CARRY(!\sepB|Div0|auto_generated|divider|op_1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sepB|Div0|auto_generated|divider|op_1~7\,
	combout => \sepB|Div0|auto_generated|divider|op_1~8_combout\,
	cout => \sepB|Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X66_Y50_N20
\sepB|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add4~0_combout\ = (\sepB|int_input[31]~0_combout\ & (\sepB|Div0|auto_generated|divider|op_1~8_combout\ $ (((\sepB|Div0|auto_generated|divider|op_1~4_combout\))))) # (!\sepB|int_input[31]~0_combout\ & 
-- (((!\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Div0|auto_generated|divider|op_1~8_combout\,
	datab => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \sepB|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \sepB|int_input[31]~0_combout\,
	combout => \sepB|Add4~0_combout\);

-- Location: LCCOMB_X66_Y48_N2
\sepB|Div0|auto_generated|divider|quotient[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ = (\B[3]~input_o\ & (\mode~input_o\ & \sepB|Div0|auto_generated|divider|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \mode~input_o\,
	datad => \sepB|Div0|auto_generated|divider|op_1~6_combout\,
	combout => \sepB|Div0|auto_generated|divider|quotient[1]~5_combout\);

-- Location: LCCOMB_X66_Y48_N10
\sepB|Add5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add5~5_combout\ = (\B[2]~input_o\ & ((\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\sepB|Add5~4\)) # (!\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & (\sepB|Add5~4\ & VCC)))) # (!\B[2]~input_o\ & 
-- ((\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\sepB|Add5~4\) # (GND))) # (!\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\sepB|Add5~4\))))
-- \sepB|Add5~6\ = CARRY((\B[2]~input_o\ & (\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & !\sepB|Add5~4\)) # (!\B[2]~input_o\ & ((\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\) # (!\sepB|Add5~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sepB|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datad => VCC,
	cin => \sepB|Add5~4\,
	combout => \sepB|Add5~5_combout\,
	cout => \sepB|Add5~6\);

-- Location: LCCOMB_X66_Y48_N12
\sepB|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add5~8_combout\ = \B[3]~input_o\ $ (\sepB|Add5~6\ $ (\sepB|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \sepB|Add4~0_combout\,
	cin => \sepB|Add5~6\,
	combout => \sepB|Add5~8_combout\);

-- Location: LCCOMB_X66_Y48_N22
\sepB|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add2~0_combout\ = \B[2]~input_o\ $ (\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ $ (((!\sepB|Div0|auto_generated|divider|quotient[0]~4_combout\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \sepB|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datad => \sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \sepB|Add2~0_combout\);

-- Location: LCCOMB_X66_Y48_N16
\sepB|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add3~1_combout\ = (\sepB|Add2~0_combout\ & (!\B[0]~input_o\ & (\B[1]~input_o\ $ (!\sepB|Div0|auto_generated|divider|quotient[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add2~0_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \sepB|Add3~1_combout\);

-- Location: LCCOMB_X66_Y48_N30
\sepB|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add3~2_combout\ = (\B[2]~input_o\ & (!\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((!\sepB|Div0|auto_generated|divider|quotient[0]~4_combout\) # (!\B[1]~input_o\)))) # (!\B[2]~input_o\ & 
-- (((!\sepB|Div0|auto_generated|divider|quotient[0]~4_combout\) # (!\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\)) # (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \sepB|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datad => \sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \sepB|Add3~2_combout\);

-- Location: LCCOMB_X66_Y48_N28
\sepB|Div0|auto_generated|divider|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|op_1~12_combout\ = (\sepB|Div0|auto_generated|divider|op_1~8_combout\ & (\mode~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Div0|auto_generated|divider|op_1~8_combout\,
	datab => \mode~input_o\,
	datac => \B[3]~input_o\,
	combout => \sepB|Div0|auto_generated|divider|op_1~12_combout\);

-- Location: LCCOMB_X66_Y48_N4
\sepB|Add3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add3~3_combout\ = \sepB|Add3~2_combout\ $ (\sepB|Div0|auto_generated|divider|op_1~12_combout\ $ (\B[3]~input_o\ $ (\sepB|Div0|auto_generated|divider|quotient[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add3~2_combout\,
	datab => \sepB|Div0|auto_generated|divider|op_1~12_combout\,
	datac => \B[3]~input_o\,
	datad => \sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \sepB|Add3~3_combout\);

-- Location: LCCOMB_X66_Y48_N18
\sepB|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add5~10_combout\ = (\sepB|int_input[31]~0_combout\ & ((\sepB|Add3~1_combout\ $ (\sepB|Add3~3_combout\)))) # (!\sepB|int_input[31]~0_combout\ & (\sepB|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add5~8_combout\,
	datab => \sepB|Add3~1_combout\,
	datac => \sepB|Add3~3_combout\,
	datad => \sepB|int_input[31]~0_combout\,
	combout => \sepB|Add5~10_combout\);

-- Location: LCCOMB_X66_Y48_N0
\sepB|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add3~0_combout\ = (\B[0]~input_o\) # (\B[1]~input_o\ $ (\sepB|Div0|auto_generated|divider|quotient[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \sepB|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \sepB|Add3~0_combout\);

-- Location: LCCOMB_X66_Y48_N14
\sepB|Add5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add5~7_combout\ = (\sepB|int_input[31]~0_combout\ & ((\sepB|Add3~0_combout\ $ (!\sepB|Add2~0_combout\)))) # (!\sepB|int_input[31]~0_combout\ & (\sepB|Add5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add5~5_combout\,
	datab => \sepB|Add3~0_combout\,
	datac => \sepB|Add2~0_combout\,
	datad => \sepB|int_input[31]~0_combout\,
	combout => \sepB|Add5~7_combout\);

-- Location: LCCOMB_X74_Y48_N24
\ledB1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB1|Mux6~0_combout\ = (!\sepB|Add5~11_combout\ & (!\sepB|Add5~10_combout\ & (\B[0]~input_o\ $ (\sepB|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add5~11_combout\,
	datab => \sepB|Add5~10_combout\,
	datac => \B[0]~input_o\,
	datad => \sepB|Add5~7_combout\,
	combout => \ledB1|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y48_N2
\ledB1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB1|Mux5~0_combout\ = (!\sepB|Add5~10_combout\ & (\sepB|Add5~7_combout\ & (\sepB|Add5~11_combout\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add5~11_combout\,
	datab => \sepB|Add5~10_combout\,
	datac => \B[0]~input_o\,
	datad => \sepB|Add5~7_combout\,
	combout => \ledB1|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y48_N16
\ledB1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB1|Mux4~0_combout\ = (\sepB|Add5~11_combout\ & (!\sepB|Add5~10_combout\ & (!\B[0]~input_o\ & !\sepB|Add5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add5~11_combout\,
	datab => \sepB|Add5~10_combout\,
	datac => \B[0]~input_o\,
	datad => \sepB|Add5~7_combout\,
	combout => \ledB1|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y48_N10
\ledB1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB1|Mux3~0_combout\ = (!\sepB|Add5~10_combout\ & ((\sepB|Add5~11_combout\ & (\B[0]~input_o\ & \sepB|Add5~7_combout\)) # (!\sepB|Add5~11_combout\ & (\B[0]~input_o\ $ (\sepB|Add5~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add5~11_combout\,
	datab => \sepB|Add5~10_combout\,
	datac => \B[0]~input_o\,
	datad => \sepB|Add5~7_combout\,
	combout => \ledB1|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y48_N8
\ledB1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB1|Mux2~0_combout\ = (\sepB|Add5~11_combout\ & (!\sepB|Add5~10_combout\ & (\B[0]~input_o\))) # (!\sepB|Add5~11_combout\ & ((\sepB|Add5~7_combout\ & (!\sepB|Add5~10_combout\)) # (!\sepB|Add5~7_combout\ & ((\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add5~11_combout\,
	datab => \sepB|Add5~10_combout\,
	datac => \B[0]~input_o\,
	datad => \sepB|Add5~7_combout\,
	combout => \ledB1|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y48_N30
\ledB1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB1|Mux1~0_combout\ = (!\sepB|Add5~10_combout\ & ((\sepB|Add5~11_combout\ & ((\B[0]~input_o\) # (!\sepB|Add5~7_combout\))) # (!\sepB|Add5~11_combout\ & (\B[0]~input_o\ & !\sepB|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add5~11_combout\,
	datab => \sepB|Add5~10_combout\,
	datac => \B[0]~input_o\,
	datad => \sepB|Add5~7_combout\,
	combout => \ledB1|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y48_N12
\ledB1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB1|Mux0~0_combout\ = (\sepB|Add5~10_combout\) # ((\sepB|Add5~11_combout\ & ((!\sepB|Add5~7_combout\) # (!\B[0]~input_o\))) # (!\sepB|Add5~11_combout\ & ((\sepB|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add5~11_combout\,
	datab => \sepB|Add5~10_combout\,
	datac => \B[0]~input_o\,
	datad => \sepB|Add5~7_combout\,
	combout => \ledB1|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y50_N30
\sepB|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add0~10_combout\ = (\mode~input_o\ & ((\B[3]~input_o\ & ((!\sepB|Div0|auto_generated|divider|op_1~4_combout\))) # (!\B[3]~input_o\ & (!\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\mode~input_o\ & 
-- (!\sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \sepB|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \sepB|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \B[3]~input_o\,
	combout => \sepB|Add0~10_combout\);

-- Location: LCCOMB_X69_Y48_N18
\sepB|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add0~2_combout\ = (\sepB|Add0~10_combout\ & (\sepB|int_input[31]~0_combout\ $ (VCC))) # (!\sepB|Add0~10_combout\ & (\sepB|int_input[31]~0_combout\ & VCC))
-- \sepB|Add0~3\ = CARRY((\sepB|Add0~10_combout\ & \sepB|int_input[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add0~10_combout\,
	datab => \sepB|int_input[31]~0_combout\,
	datad => VCC,
	combout => \sepB|Add0~2_combout\,
	cout => \sepB|Add0~3\);

-- Location: LCCOMB_X66_Y50_N8
\sepB|Div0|auto_generated|divider|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|op_1~10_combout\ = !\sepB|Div0|auto_generated|divider|op_1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sepB|Div0|auto_generated|divider|op_1~9\,
	combout => \sepB|Div0|auto_generated|divider|op_1~10_combout\);

-- Location: LCCOMB_X65_Y51_N24
\sepB|Div0|auto_generated|divider|op_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Div0|auto_generated|divider|op_1~13_combout\ = (\mode~input_o\ & (\sepB|Div0|auto_generated|divider|op_1~10_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \sepB|Div0|auto_generated|divider|op_1~10_combout\,
	datad => \B[3]~input_o\,
	combout => \sepB|Div0|auto_generated|divider|op_1~13_combout\);

-- Location: LCCOMB_X69_Y48_N20
\sepB|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add0~4_combout\ = (\sepB|Add0~3\ & (\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ $ ((!\sepB|int_input[31]~0_combout\)))) # (!\sepB|Add0~3\ & ((\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ $ (\sepB|int_input[31]~0_combout\)) # 
-- (GND)))
-- \sepB|Add0~5\ = CARRY((\sepB|Div0|auto_generated|divider|quotient[1]~5_combout\ $ (!\sepB|int_input[31]~0_combout\)) # (!\sepB|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \sepB|int_input[31]~0_combout\,
	datad => VCC,
	cin => \sepB|Add0~3\,
	combout => \sepB|Add0~4_combout\,
	cout => \sepB|Add0~5\);

-- Location: LCCOMB_X69_Y48_N22
\sepB|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add0~6_combout\ = (\sepB|Add0~5\ & ((\sepB|Div0|auto_generated|divider|op_1~12_combout\ $ (\sepB|int_input[31]~0_combout\)))) # (!\sepB|Add0~5\ & (\sepB|Div0|auto_generated|divider|op_1~12_combout\ $ (\sepB|int_input[31]~0_combout\ $ (VCC))))
-- \sepB|Add0~7\ = CARRY((!\sepB|Add0~5\ & (\sepB|Div0|auto_generated|divider|op_1~12_combout\ $ (\sepB|int_input[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Div0|auto_generated|divider|op_1~12_combout\,
	datab => \sepB|int_input[31]~0_combout\,
	datad => VCC,
	cin => \sepB|Add0~5\,
	combout => \sepB|Add0~6_combout\,
	cout => \sepB|Add0~7\);

-- Location: LCCOMB_X69_Y48_N24
\sepB|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepB|Add0~8_combout\ = \sepB|int_input[31]~0_combout\ $ (\sepB|Add0~7\ $ (\sepB|Div0|auto_generated|divider|op_1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|int_input[31]~0_combout\,
	datad => \sepB|Div0|auto_generated|divider|op_1~13_combout\,
	cin => \sepB|Add0~7\,
	combout => \sepB|Add0~8_combout\);

-- Location: LCCOMB_X69_Y48_N16
\ledB0|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux6~2_combout\ = (!\sepB|Add0~8_combout\ & (!\sepB|Add0~4_combout\ & (\sepB|Add0~2_combout\ $ (\sepB|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add0~2_combout\,
	datab => \sepB|Add0~8_combout\,
	datac => \sepB|Add0~6_combout\,
	datad => \sepB|Add0~4_combout\,
	combout => \ledB0|Mux6~2_combout\);

-- Location: LCCOMB_X66_Y48_N6
\ledB0|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux6~3_combout\ = (\ledB0|Mux6~2_combout\) # ((\B[3]~input_o\ & \mode~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \mode~input_o\,
	datad => \ledB0|Mux6~2_combout\,
	combout => \ledB0|Mux6~3_combout\);

-- Location: LCCOMB_X69_Y48_N26
\ledB0|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux5~2_combout\ = (!\sepB|Add0~8_combout\ & (\sepB|Add0~6_combout\ & (\sepB|Add0~2_combout\ $ (\sepB|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add0~2_combout\,
	datab => \sepB|Add0~8_combout\,
	datac => \sepB|Add0~6_combout\,
	datad => \sepB|Add0~4_combout\,
	combout => \ledB0|Mux5~2_combout\);

-- Location: LCCOMB_X69_Y48_N4
\ledB0|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux5~3_combout\ = (\ledB0|Mux5~2_combout\) # ((\mode~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \B[3]~input_o\,
	datac => \ledB0|Mux5~2_combout\,
	combout => \ledB0|Mux5~3_combout\);

-- Location: LCCOMB_X69_Y48_N28
\ledB0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux4~0_combout\ = (!\sepB|Add0~2_combout\ & \sepB|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sepB|Add0~2_combout\,
	datad => \sepB|Add0~4_combout\,
	combout => \ledB0|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y48_N30
\HEX3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3~0_combout\ = (\sepB|int_input[31]~0_combout\) # ((!\sepB|Add0~8_combout\ & (!\sepB|Add0~6_combout\ & \ledB0|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|int_input[31]~0_combout\,
	datab => \sepB|Add0~8_combout\,
	datac => \sepB|Add0~6_combout\,
	datad => \ledB0|Mux4~0_combout\,
	combout => \HEX3~0_combout\);

-- Location: LCCOMB_X69_Y48_N0
\ledB0|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux3~2_combout\ = (!\sepB|Add0~8_combout\ & ((\sepB|Add0~2_combout\ & (\sepB|Add0~6_combout\ $ (!\sepB|Add0~4_combout\))) # (!\sepB|Add0~2_combout\ & (\sepB|Add0~6_combout\ & !\sepB|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add0~2_combout\,
	datab => \sepB|Add0~8_combout\,
	datac => \sepB|Add0~6_combout\,
	datad => \sepB|Add0~4_combout\,
	combout => \ledB0|Mux3~2_combout\);

-- Location: LCCOMB_X69_Y53_N24
\ledB0|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux3~3_combout\ = (\ledB0|Mux3~2_combout\) # ((\B[3]~input_o\ & \mode~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \mode~input_o\,
	datad => \ledB0|Mux3~2_combout\,
	combout => \ledB0|Mux3~3_combout\);

-- Location: LCCOMB_X69_Y48_N14
\ledB0|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux2~2_combout\ = (\sepB|Add0~4_combout\ & (\sepB|Add0~2_combout\ & (!\sepB|Add0~8_combout\))) # (!\sepB|Add0~4_combout\ & ((\sepB|Add0~6_combout\ & ((!\sepB|Add0~8_combout\))) # (!\sepB|Add0~6_combout\ & (\sepB|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add0~2_combout\,
	datab => \sepB|Add0~8_combout\,
	datac => \sepB|Add0~6_combout\,
	datad => \sepB|Add0~4_combout\,
	combout => \ledB0|Mux2~2_combout\);

-- Location: LCCOMB_X69_Y48_N6
\ledB0|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux2~3_combout\ = (\ledB0|Mux2~2_combout\) # ((\mode~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \ledB0|Mux2~2_combout\,
	datac => \B[3]~input_o\,
	combout => \ledB0|Mux2~3_combout\);

-- Location: LCCOMB_X69_Y48_N12
\ledB0|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux1~2_combout\ = (!\sepB|Add0~8_combout\ & ((\sepB|Add0~2_combout\ & ((\sepB|Add0~4_combout\) # (!\sepB|Add0~6_combout\))) # (!\sepB|Add0~2_combout\ & (!\sepB|Add0~6_combout\ & \sepB|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add0~2_combout\,
	datab => \sepB|Add0~8_combout\,
	datac => \sepB|Add0~6_combout\,
	datad => \sepB|Add0~4_combout\,
	combout => \ledB0|Mux1~2_combout\);

-- Location: LCCOMB_X69_Y48_N8
\ledB0|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux1~3_combout\ = (\ledB0|Mux1~2_combout\) # ((\mode~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \B[3]~input_o\,
	datad => \ledB0|Mux1~2_combout\,
	combout => \ledB0|Mux1~3_combout\);

-- Location: LCCOMB_X69_Y48_N10
\ledB0|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux0~2_combout\ = (\sepB|Add0~8_combout\) # ((\sepB|Add0~6_combout\ & ((!\sepB|Add0~4_combout\) # (!\sepB|Add0~2_combout\))) # (!\sepB|Add0~6_combout\ & ((\sepB|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepB|Add0~2_combout\,
	datab => \sepB|Add0~8_combout\,
	datac => \sepB|Add0~6_combout\,
	datad => \sepB|Add0~4_combout\,
	combout => \ledB0|Mux0~2_combout\);

-- Location: LCCOMB_X69_Y48_N2
\ledB0|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledB0|Mux0~3_combout\ = (\ledB0|Mux0~2_combout\) # ((\mode~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \B[3]~input_o\,
	datad => \ledB0|Mux0~2_combout\,
	combout => \ledB0|Mux0~3_combout\);

-- Location: LCCOMB_X64_Y50_N0
\sepA|int_input[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|int_input[31]~0_combout\ = (\mode~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~input_o\,
	datac => \A[3]~input_o\,
	combout => \sepA|int_input[31]~0_combout\);

-- Location: LCCOMB_X65_Y50_N28
\sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ = (\mode~input_o\ & (\A[3]~input_o\ & (!\A[0]~input_o\ & !\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\);

-- Location: LCCOMB_X65_Y50_N8
\sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ = (\sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ & ((\A[3]~input_o\ $ (\A[2]~input_o\)))) # (!\sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ & 
-- (!\mode~input_o\ & (\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\,
	combout => \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\);

-- Location: LCCOMB_X65_Y50_N30
\sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ = \A[2]~input_o\ $ (((\sepA|int_input[31]~0_combout\ & ((\A[0]~input_o\) # (\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|int_input[31]~0_combout\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\);

-- Location: LCCOMB_X64_Y50_N6
\sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ = \A[1]~input_o\ $ (((\A[0]~input_o\ & (\mode~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \mode~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[1]~input_o\,
	combout => \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\);

-- Location: LCCOMB_X64_Y50_N18
\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY(\sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\,
	datad => VCC,
	cout => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X64_Y50_N20
\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ & !\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\,
	datad => VCC,
	cin => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X64_Y50_N22
\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((\sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ & !\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sepA|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\,
	datad => VCC,
	cin => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X64_Y50_N24
\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X64_Y50_N26
\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X64_Y50_N8
\sepA|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|op_1~4_combout\ = \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (VCC)
-- \sepA|Div0|auto_generated|divider|op_1~5\ = CARRY(\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	combout => \sepA|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \sepA|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X64_Y50_N16
\sepA|Div0|auto_generated|divider|quotient[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ = (\A[3]~input_o\ & ((\mode~input_o\ & ((\sepA|Div0|auto_generated|divider|op_1~4_combout\))) # (!\mode~input_o\ & (!\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) 
-- # (!\A[3]~input_o\ & (!\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \A[3]~input_o\,
	datac => \mode~input_o\,
	datad => \sepA|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \sepA|Div0|auto_generated|divider|quotient[0]~4_combout\);

-- Location: LCCOMB_X65_Y50_N16
\sepA|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add5~2_combout\ = (\sepA|int_input[31]~0_combout\ & (\A[0]~input_o\ $ (\sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|int_input[31]~0_combout\,
	datab => \A[0]~input_o\,
	datac => \sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datad => \A[1]~input_o\,
	combout => \sepA|Add5~2_combout\);

-- Location: LCCOMB_X65_Y50_N10
\sepA|Add5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add5~3_combout\ = (\sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ & (\A[1]~input_o\ $ (VCC))) # (!\sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ & ((\A[1]~input_o\) # (GND)))
-- \sepA|Add5~4\ = CARRY((\A[1]~input_o\) # (!\sepA|Div0|auto_generated|divider|quotient[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	combout => \sepA|Add5~3_combout\,
	cout => \sepA|Add5~4\);

-- Location: LCCOMB_X65_Y50_N22
\sepA|Add5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add5~11_combout\ = (\sepA|Add5~2_combout\) # ((\sepA|Add5~3_combout\ & ((!\A[3]~input_o\) # (!\mode~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \sepA|Add5~2_combout\,
	datac => \A[3]~input_o\,
	datad => \sepA|Add5~3_combout\,
	combout => \sepA|Add5~11_combout\);

-- Location: LCCOMB_X64_Y50_N10
\sepA|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|op_1~6_combout\ = !\sepA|Div0|auto_generated|divider|op_1~5\
-- \sepA|Div0|auto_generated|divider|op_1~7\ = CARRY(!\sepA|Div0|auto_generated|divider|op_1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sepA|Div0|auto_generated|divider|op_1~5\,
	combout => \sepA|Div0|auto_generated|divider|op_1~6_combout\,
	cout => \sepA|Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X65_Y50_N0
\sepA|Div0|auto_generated|divider|quotient[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ = (\mode~input_o\ & (\A[3]~input_o\ & \sepA|Div0|auto_generated|divider|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \A[3]~input_o\,
	datad => \sepA|Div0|auto_generated|divider|op_1~6_combout\,
	combout => \sepA|Div0|auto_generated|divider|quotient[1]~5_combout\);

-- Location: LCCOMB_X65_Y50_N4
\sepA|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add3~2_combout\ = (\A[2]~input_o\ & (!\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((!\A[1]~input_o\) # (!\sepA|Div0|auto_generated|divider|quotient[0]~4_combout\)))) # (!\A[2]~input_o\ & 
-- (((!\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\) # (!\A[1]~input_o\)) # (!\sepA|Div0|auto_generated|divider|quotient[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \A[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \sepA|Div0|auto_generated|divider|quotient[1]~5_combout\,
	combout => \sepA|Add3~2_combout\);

-- Location: LCCOMB_X64_Y50_N12
\sepA|Div0|auto_generated|divider|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|op_1~8_combout\ = \sepA|Div0|auto_generated|divider|op_1~7\ $ (GND)
-- \sepA|Div0|auto_generated|divider|op_1~9\ = CARRY(!\sepA|Div0|auto_generated|divider|op_1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sepA|Div0|auto_generated|divider|op_1~7\,
	combout => \sepA|Div0|auto_generated|divider|op_1~8_combout\,
	cout => \sepA|Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X64_Y50_N28
\sepA|Div0|auto_generated|divider|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|op_1~12_combout\ = (\mode~input_o\ & (\A[3]~input_o\ & \sepA|Div0|auto_generated|divider|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~input_o\,
	datac => \A[3]~input_o\,
	datad => \sepA|Div0|auto_generated|divider|op_1~8_combout\,
	combout => \sepA|Div0|auto_generated|divider|op_1~12_combout\);

-- Location: LCCOMB_X64_Y50_N30
\sepA|Add3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add3~3_combout\ = \sepA|Add3~2_combout\ $ (\sepA|Div0|auto_generated|divider|op_1~12_combout\ $ (\A[3]~input_o\ $ (\sepA|Div0|auto_generated|divider|quotient[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add3~2_combout\,
	datab => \sepA|Div0|auto_generated|divider|op_1~12_combout\,
	datac => \A[3]~input_o\,
	datad => \sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \sepA|Add3~3_combout\);

-- Location: LCCOMB_X64_Y50_N4
\sepA|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add4~0_combout\ = (\sepA|int_input[31]~0_combout\ & (\sepA|Div0|auto_generated|divider|op_1~8_combout\ $ (((\sepA|Div0|auto_generated|divider|op_1~4_combout\))))) # (!\sepA|int_input[31]~0_combout\ & 
-- (((!\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Div0|auto_generated|divider|op_1~8_combout\,
	datab => \sepA|int_input[31]~0_combout\,
	datac => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \sepA|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \sepA|Add4~0_combout\);

-- Location: LCCOMB_X65_Y50_N12
\sepA|Add5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add5~5_combout\ = (\A[2]~input_o\ & ((\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\sepA|Add5~4\)) # (!\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & (\sepA|Add5~4\ & VCC)))) # (!\A[2]~input_o\ & 
-- ((\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\sepA|Add5~4\) # (GND))) # (!\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\sepA|Add5~4\))))
-- \sepA|Add5~6\ = CARRY((\A[2]~input_o\ & (\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ & !\sepA|Add5~4\)) # (!\A[2]~input_o\ & ((\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\) # (!\sepA|Add5~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \sepA|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datad => VCC,
	cin => \sepA|Add5~4\,
	combout => \sepA|Add5~5_combout\,
	cout => \sepA|Add5~6\);

-- Location: LCCOMB_X65_Y50_N14
\sepA|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add5~8_combout\ = \A[3]~input_o\ $ (\sepA|Add5~6\ $ (\sepA|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datad => \sepA|Add4~0_combout\,
	cin => \sepA|Add5~6\,
	combout => \sepA|Add5~8_combout\);

-- Location: LCCOMB_X65_Y50_N20
\sepA|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add2~0_combout\ = \A[2]~input_o\ $ (\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\ $ (((!\A[1]~input_o\) # (!\sepA|Div0|auto_generated|divider|quotient[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \A[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \sepA|Div0|auto_generated|divider|quotient[1]~5_combout\,
	combout => \sepA|Add2~0_combout\);

-- Location: LCCOMB_X65_Y50_N18
\sepA|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add3~1_combout\ = (!\A[0]~input_o\ & (\sepA|Add2~0_combout\ & (\sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \sepA|Add2~0_combout\,
	combout => \sepA|Add3~1_combout\);

-- Location: LCCOMB_X65_Y50_N26
\sepA|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add5~10_combout\ = (\sepA|int_input[31]~0_combout\ & (\sepA|Add3~3_combout\ $ (((\sepA|Add3~1_combout\))))) # (!\sepA|int_input[31]~0_combout\ & (((\sepA|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|int_input[31]~0_combout\,
	datab => \sepA|Add3~3_combout\,
	datac => \sepA|Add5~8_combout\,
	datad => \sepA|Add3~1_combout\,
	combout => \sepA|Add5~10_combout\);

-- Location: LCCOMB_X65_Y50_N6
\sepA|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add3~0_combout\ = (\A[0]~input_o\) # (\sepA|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	combout => \sepA|Add3~0_combout\);

-- Location: LCCOMB_X65_Y50_N24
\sepA|Add5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add5~7_combout\ = (\sepA|int_input[31]~0_combout\ & (\sepA|Add3~0_combout\ $ ((!\sepA|Add2~0_combout\)))) # (!\sepA|int_input[31]~0_combout\ & (((\sepA|Add5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add3~0_combout\,
	datab => \sepA|Add2~0_combout\,
	datac => \sepA|int_input[31]~0_combout\,
	datad => \sepA|Add5~5_combout\,
	combout => \sepA|Add5~7_combout\);

-- Location: LCCOMB_X77_Y40_N16
\ledA1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA1|Mux6~0_combout\ = (!\sepA|Add5~11_combout\ & (!\sepA|Add5~10_combout\ & (\A[0]~input_o\ $ (\sepA|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add5~11_combout\,
	datab => \sepA|Add5~10_combout\,
	datac => \A[0]~input_o\,
	datad => \sepA|Add5~7_combout\,
	combout => \ledA1|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y40_N14
\ledA1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA1|Mux5~0_combout\ = (!\sepA|Add5~10_combout\ & (\sepA|Add5~7_combout\ & (\sepA|Add5~11_combout\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add5~11_combout\,
	datab => \sepA|Add5~10_combout\,
	datac => \A[0]~input_o\,
	datad => \sepA|Add5~7_combout\,
	combout => \ledA1|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y40_N4
\ledA1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA1|Mux4~0_combout\ = (\sepA|Add5~11_combout\ & (!\sepA|Add5~10_combout\ & (!\A[0]~input_o\ & !\sepA|Add5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add5~11_combout\,
	datab => \sepA|Add5~10_combout\,
	datac => \A[0]~input_o\,
	datad => \sepA|Add5~7_combout\,
	combout => \ledA1|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y40_N2
\ledA1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA1|Mux3~0_combout\ = (!\sepA|Add5~10_combout\ & ((\sepA|Add5~11_combout\ & (\A[0]~input_o\ & \sepA|Add5~7_combout\)) # (!\sepA|Add5~11_combout\ & (\A[0]~input_o\ $ (\sepA|Add5~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add5~11_combout\,
	datab => \sepA|Add5~10_combout\,
	datac => \A[0]~input_o\,
	datad => \sepA|Add5~7_combout\,
	combout => \ledA1|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y40_N12
\ledA1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA1|Mux2~0_combout\ = (\sepA|Add5~11_combout\ & (!\sepA|Add5~10_combout\ & (\A[0]~input_o\))) # (!\sepA|Add5~11_combout\ & ((\sepA|Add5~7_combout\ & (!\sepA|Add5~10_combout\)) # (!\sepA|Add5~7_combout\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add5~11_combout\,
	datab => \sepA|Add5~10_combout\,
	datac => \A[0]~input_o\,
	datad => \sepA|Add5~7_combout\,
	combout => \ledA1|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y40_N22
\ledA1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA1|Mux1~0_combout\ = (!\sepA|Add5~10_combout\ & ((\sepA|Add5~11_combout\ & ((\A[0]~input_o\) # (!\sepA|Add5~7_combout\))) # (!\sepA|Add5~11_combout\ & (\A[0]~input_o\ & !\sepA|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add5~11_combout\,
	datab => \sepA|Add5~10_combout\,
	datac => \A[0]~input_o\,
	datad => \sepA|Add5~7_combout\,
	combout => \ledA1|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y40_N20
\ledA1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA1|Mux0~0_combout\ = (\sepA|Add5~10_combout\) # ((\sepA|Add5~11_combout\ & ((!\sepA|Add5~7_combout\) # (!\A[0]~input_o\))) # (!\sepA|Add5~11_combout\ & ((\sepA|Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add5~11_combout\,
	datab => \sepA|Add5~10_combout\,
	datac => \A[0]~input_o\,
	datad => \sepA|Add5~7_combout\,
	combout => \ledA1|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y50_N2
\sepA|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add0~10_combout\ = (\mode~input_o\ & ((\A[3]~input_o\ & ((!\sepA|Div0|auto_generated|divider|op_1~4_combout\))) # (!\A[3]~input_o\ & (!\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\mode~input_o\ & 
-- (((!\sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \A[3]~input_o\,
	datac => \sepA|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \sepA|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \sepA|Add0~10_combout\);

-- Location: LCCOMB_X71_Y46_N6
\sepA|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add0~2_combout\ = (\sepA|int_input[31]~0_combout\ & (\sepA|Add0~10_combout\ $ (VCC))) # (!\sepA|int_input[31]~0_combout\ & (\sepA|Add0~10_combout\ & VCC))
-- \sepA|Add0~3\ = CARRY((\sepA|int_input[31]~0_combout\ & \sepA|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|int_input[31]~0_combout\,
	datab => \sepA|Add0~10_combout\,
	datad => VCC,
	combout => \sepA|Add0~2_combout\,
	cout => \sepA|Add0~3\);

-- Location: LCCOMB_X71_Y46_N8
\sepA|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add0~4_combout\ = (\sepA|Add0~3\ & (\sepA|int_input[31]~0_combout\ $ ((!\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\)))) # (!\sepA|Add0~3\ & ((\sepA|int_input[31]~0_combout\ $ (\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\)) # 
-- (GND)))
-- \sepA|Add0~5\ = CARRY((\sepA|int_input[31]~0_combout\ $ (!\sepA|Div0|auto_generated|divider|quotient[1]~5_combout\)) # (!\sepA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|int_input[31]~0_combout\,
	datab => \sepA|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datad => VCC,
	cin => \sepA|Add0~3\,
	combout => \sepA|Add0~4_combout\,
	cout => \sepA|Add0~5\);

-- Location: LCCOMB_X71_Y46_N10
\sepA|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add0~6_combout\ = (\sepA|Add0~5\ & ((\sepA|int_input[31]~0_combout\ $ (\sepA|Div0|auto_generated|divider|op_1~12_combout\)))) # (!\sepA|Add0~5\ & (\sepA|int_input[31]~0_combout\ $ (\sepA|Div0|auto_generated|divider|op_1~12_combout\ $ (VCC))))
-- \sepA|Add0~7\ = CARRY((!\sepA|Add0~5\ & (\sepA|int_input[31]~0_combout\ $ (\sepA|Div0|auto_generated|divider|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|int_input[31]~0_combout\,
	datab => \sepA|Div0|auto_generated|divider|op_1~12_combout\,
	datad => VCC,
	cin => \sepA|Add0~5\,
	combout => \sepA|Add0~6_combout\,
	cout => \sepA|Add0~7\);

-- Location: LCCOMB_X64_Y50_N14
\sepA|Div0|auto_generated|divider|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|op_1~10_combout\ = !\sepA|Div0|auto_generated|divider|op_1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sepA|Div0|auto_generated|divider|op_1~9\,
	combout => \sepA|Div0|auto_generated|divider|op_1~10_combout\);

-- Location: LCCOMB_X64_Y50_N2
\sepA|Div0|auto_generated|divider|op_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Div0|auto_generated|divider|op_1~13_combout\ = (\A[3]~input_o\ & (\mode~input_o\ & \sepA|Div0|auto_generated|divider|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \mode~input_o\,
	datad => \sepA|Div0|auto_generated|divider|op_1~10_combout\,
	combout => \sepA|Div0|auto_generated|divider|op_1~13_combout\);

-- Location: LCCOMB_X71_Y46_N12
\sepA|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sepA|Add0~8_combout\ = \sepA|int_input[31]~0_combout\ $ (\sepA|Add0~7\ $ (\sepA|Div0|auto_generated|divider|op_1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|int_input[31]~0_combout\,
	datad => \sepA|Div0|auto_generated|divider|op_1~13_combout\,
	cin => \sepA|Add0~7\,
	combout => \sepA|Add0~8_combout\);

-- Location: LCCOMB_X71_Y46_N0
\ledA0|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux6~2_combout\ = (!\sepA|Add0~8_combout\ & (!\sepA|Add0~4_combout\ & (\sepA|Add0~6_combout\ $ (\sepA|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add0~6_combout\,
	datab => \sepA|Add0~8_combout\,
	datac => \sepA|Add0~4_combout\,
	datad => \sepA|Add0~2_combout\,
	combout => \ledA0|Mux6~2_combout\);

-- Location: LCCOMB_X71_Y46_N20
\ledA0|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux6~3_combout\ = (\ledA0|Mux6~2_combout\) # ((\mode~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \A[3]~input_o\,
	datad => \ledA0|Mux6~2_combout\,
	combout => \ledA0|Mux6~3_combout\);

-- Location: LCCOMB_X71_Y46_N22
\ledA0|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux5~2_combout\ = (\sepA|Add0~6_combout\ & (!\sepA|Add0~8_combout\ & (\sepA|Add0~4_combout\ $ (\sepA|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add0~6_combout\,
	datab => \sepA|Add0~8_combout\,
	datac => \sepA|Add0~4_combout\,
	datad => \sepA|Add0~2_combout\,
	combout => \ledA0|Mux5~2_combout\);

-- Location: LCCOMB_X70_Y46_N24
\ledA0|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux5~3_combout\ = (\ledA0|Mux5~2_combout\) # ((\A[3]~input_o\ & \mode~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \mode~input_o\,
	datad => \ledA0|Mux5~2_combout\,
	combout => \ledA0|Mux5~3_combout\);

-- Location: LCCOMB_X71_Y46_N4
\ledA0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux4~0_combout\ = (\sepA|Add0~4_combout\ & !\sepA|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sepA|Add0~4_combout\,
	datad => \sepA|Add0~2_combout\,
	combout => \ledA0|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y46_N30
\HEX5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5~0_combout\ = (\sepA|int_input[31]~0_combout\) # ((!\sepA|Add0~8_combout\ & (\ledA0|Mux4~0_combout\ & !\sepA|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|int_input[31]~0_combout\,
	datab => \sepA|Add0~8_combout\,
	datac => \ledA0|Mux4~0_combout\,
	datad => \sepA|Add0~6_combout\,
	combout => \HEX5~0_combout\);

-- Location: LCCOMB_X71_Y46_N24
\ledA0|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux3~2_combout\ = (!\sepA|Add0~8_combout\ & ((\sepA|Add0~6_combout\ & (\sepA|Add0~4_combout\ $ (!\sepA|Add0~2_combout\))) # (!\sepA|Add0~6_combout\ & (!\sepA|Add0~4_combout\ & \sepA|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add0~6_combout\,
	datab => \sepA|Add0~8_combout\,
	datac => \sepA|Add0~4_combout\,
	datad => \sepA|Add0~2_combout\,
	combout => \ledA0|Mux3~2_combout\);

-- Location: LCCOMB_X70_Y46_N22
\ledA0|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux3~3_combout\ = (\ledA0|Mux3~2_combout\) # ((\A[3]~input_o\ & \mode~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \mode~input_o\,
	datad => \ledA0|Mux3~2_combout\,
	combout => \ledA0|Mux3~3_combout\);

-- Location: LCCOMB_X71_Y46_N2
\ledA0|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux2~2_combout\ = (\sepA|Add0~4_combout\ & (((!\sepA|Add0~8_combout\ & \sepA|Add0~2_combout\)))) # (!\sepA|Add0~4_combout\ & ((\sepA|Add0~6_combout\ & (!\sepA|Add0~8_combout\)) # (!\sepA|Add0~6_combout\ & ((\sepA|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add0~6_combout\,
	datab => \sepA|Add0~8_combout\,
	datac => \sepA|Add0~4_combout\,
	datad => \sepA|Add0~2_combout\,
	combout => \ledA0|Mux2~2_combout\);

-- Location: LCCOMB_X71_Y46_N14
\ledA0|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux2~3_combout\ = (\ledA0|Mux2~2_combout\) # ((\mode~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \A[3]~input_o\,
	datad => \ledA0|Mux2~2_combout\,
	combout => \ledA0|Mux2~3_combout\);

-- Location: LCCOMB_X71_Y46_N16
\ledA0|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux1~2_combout\ = (!\sepA|Add0~8_combout\ & ((\sepA|Add0~6_combout\ & (\sepA|Add0~4_combout\ & \sepA|Add0~2_combout\)) # (!\sepA|Add0~6_combout\ & ((\sepA|Add0~4_combout\) # (\sepA|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add0~6_combout\,
	datab => \sepA|Add0~8_combout\,
	datac => \sepA|Add0~4_combout\,
	datad => \sepA|Add0~2_combout\,
	combout => \ledA0|Mux1~2_combout\);

-- Location: LCCOMB_X71_Y46_N28
\ledA0|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux1~3_combout\ = (\ledA0|Mux1~2_combout\) # ((\mode~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \A[3]~input_o\,
	datad => \ledA0|Mux1~2_combout\,
	combout => \ledA0|Mux1~3_combout\);

-- Location: LCCOMB_X71_Y46_N18
\ledA0|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux0~2_combout\ = (\sepA|Add0~8_combout\) # ((\sepA|Add0~6_combout\ & ((!\sepA|Add0~2_combout\) # (!\sepA|Add0~4_combout\))) # (!\sepA|Add0~6_combout\ & (\sepA|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepA|Add0~6_combout\,
	datab => \sepA|Add0~8_combout\,
	datac => \sepA|Add0~4_combout\,
	datad => \sepA|Add0~2_combout\,
	combout => \ledA0|Mux0~2_combout\);

-- Location: LCCOMB_X71_Y46_N26
\ledA0|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledA0|Mux0~3_combout\ = (\ledA0|Mux0~2_combout\) # ((\mode~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \A[3]~input_o\,
	datad => \ledA0|Mux0~2_combout\,
	combout => \ledA0|Mux0~3_combout\);

-- Location: IOIBUF_X34_Y0_N29
\clk_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G19
\clk_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X43_Y31_N14
\hdmi_out0|clk_25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|clk_25~0_combout\ = (!\reset~input_o\ & !\hdmi_out0|clk_25~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \hdmi_out0|clk_25~q\,
	combout => \hdmi_out0|clk_25~0_combout\);

-- Location: LCCOMB_X43_Y31_N26
\hdmi_out0|clk_25~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|clk_25~feeder_combout\ = \hdmi_out0|clk_25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|clk_25~0_combout\,
	combout => \hdmi_out0|clk_25~feeder_combout\);

-- Location: FF_X43_Y31_N27
\hdmi_out0|clk_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \hdmi_out0|clk_25~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|clk_25~q\);

-- Location: CLKCTRL_G10
\hdmi_out0|clk_25~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \hdmi_out0|clk_25~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \hdmi_out0|clk_25~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y31_N4
\hdmi_out0|res_img|v_count[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[0]~11_combout\ = \hdmi_out0|res_img|v_count\(0) $ (VCC)
-- \hdmi_out0|res_img|v_count[0]~12\ = CARRY(\hdmi_out0|res_img|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(0),
	datad => VCC,
	combout => \hdmi_out0|res_img|v_count[0]~11_combout\,
	cout => \hdmi_out0|res_img|v_count[0]~12\);

-- Location: LCCOMB_X43_Y31_N28
\hdmi_out0|res_img|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal1~0_combout\ = ((\hdmi_out0|res_img|v_count\(1)) # ((\hdmi_out0|res_img|v_count\(0)) # (!\hdmi_out0|res_img|v_count\(2)))) # (!\hdmi_out0|res_img|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(3),
	datab => \hdmi_out0|res_img|v_count\(1),
	datac => \hdmi_out0|res_img|v_count\(0),
	datad => \hdmi_out0|res_img|v_count\(2),
	combout => \hdmi_out0|res_img|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y31_N26
\hdmi_out0|res_img|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan2~0_combout\ = (!\hdmi_out0|res_img|v_count\(6) & !\hdmi_out0|res_img|v_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(6),
	datad => \hdmi_out0|res_img|v_count\(7),
	combout => \hdmi_out0|res_img|LessThan2~0_combout\);

-- Location: LCCOMB_X39_Y31_N26
\hdmi_out0|res_img|LessThan28~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan28~8_combout\ = (!\hdmi_out0|res_img|v_count\(5) & (!\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|LessThan2~0_combout\ & !\hdmi_out0|res_img|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(5),
	datab => \hdmi_out0|res_img|v_count\(8),
	datac => \hdmi_out0|res_img|LessThan2~0_combout\,
	datad => \hdmi_out0|res_img|v_count\(4),
	combout => \hdmi_out0|res_img|LessThan28~8_combout\);

-- Location: LCCOMB_X43_Y31_N16
\hdmi_out0|reset_a~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|reset_a~feeder_combout\ = \reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~input_o\,
	combout => \hdmi_out0|reset_a~feeder_combout\);

-- Location: FF_X43_Y31_N17
\hdmi_out0|reset_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \hdmi_out0|reset_a~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|reset_a~q\);

-- Location: LCCOMB_X43_Y31_N2
\hdmi_out0|reset_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|reset_b~0_combout\ = (\reset~input_o\) # (\hdmi_out0|reset_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \hdmi_out0|reset_a~q\,
	combout => \hdmi_out0|reset_b~0_combout\);

-- Location: FF_X43_Y31_N3
\hdmi_out0|reset_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \hdmi_out0|reset_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|reset_b~q\);

-- Location: LCCOMB_X43_Y31_N20
\hdmi_out0|reset_c~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|reset_c~0_combout\ = (\reset~input_o\) # (\hdmi_out0|reset_b~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \hdmi_out0|reset_b~q\,
	combout => \hdmi_out0|reset_c~0_combout\);

-- Location: FF_X43_Y31_N21
\hdmi_out0|reset_c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \hdmi_out0|reset_c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|reset_c~q\);

-- Location: LCCOMB_X43_Y31_N18
\hdmi_out0|reset_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|reset_d~0_combout\ = (\reset~input_o\) # (\hdmi_out0|reset_c~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \hdmi_out0|reset_c~q\,
	combout => \hdmi_out0|reset_d~0_combout\);

-- Location: FF_X43_Y31_N19
\hdmi_out0|reset_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \hdmi_out0|reset_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|reset_d~q\);

-- Location: LCCOMB_X43_Y31_N24
\hdmi_out0|reset_e~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|reset_e~0_combout\ = (\reset~input_o\) # (\hdmi_out0|reset_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \hdmi_out0|reset_d~q\,
	combout => \hdmi_out0|reset_e~0_combout\);

-- Location: FF_X43_Y31_N25
\hdmi_out0|reset_e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \hdmi_out0|reset_e~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|reset_e~q\);

-- Location: LCCOMB_X43_Y31_N12
\hdmi_out0|res_img|v_count[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[5]~29_combout\ = (\hdmi_out0|reset_e~q\) # ((\hdmi_out0|res_img|v_count\(9) & (!\hdmi_out0|res_img|Equal1~0_combout\ & \hdmi_out0|res_img|LessThan28~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(9),
	datab => \hdmi_out0|res_img|Equal1~0_combout\,
	datac => \hdmi_out0|res_img|LessThan28~8_combout\,
	datad => \hdmi_out0|reset_e~q\,
	combout => \hdmi_out0|res_img|v_count[5]~29_combout\);

-- Location: LCCOMB_X42_Y31_N12
\hdmi_out0|res_img|h_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[0]~10_combout\ = \hdmi_out0|res_img|h_count\(0) $ (VCC)
-- \hdmi_out0|res_img|h_count[0]~11\ = CARRY(\hdmi_out0|res_img|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(0),
	datad => VCC,
	combout => \hdmi_out0|res_img|h_count[0]~10_combout\,
	cout => \hdmi_out0|res_img|h_count[0]~11\);

-- Location: FF_X42_Y31_N13
\hdmi_out0|res_img|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[0]~10_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(0));

-- Location: LCCOMB_X42_Y31_N14
\hdmi_out0|res_img|h_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[1]~12_combout\ = (\hdmi_out0|res_img|h_count\(1) & (!\hdmi_out0|res_img|h_count[0]~11\)) # (!\hdmi_out0|res_img|h_count\(1) & ((\hdmi_out0|res_img|h_count[0]~11\) # (GND)))
-- \hdmi_out0|res_img|h_count[1]~13\ = CARRY((!\hdmi_out0|res_img|h_count[0]~11\) # (!\hdmi_out0|res_img|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(1),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[0]~11\,
	combout => \hdmi_out0|res_img|h_count[1]~12_combout\,
	cout => \hdmi_out0|res_img|h_count[1]~13\);

-- Location: FF_X42_Y31_N15
\hdmi_out0|res_img|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[1]~12_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(1));

-- Location: LCCOMB_X42_Y31_N16
\hdmi_out0|res_img|h_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[2]~14_combout\ = (\hdmi_out0|res_img|h_count\(2) & (\hdmi_out0|res_img|h_count[1]~13\ $ (GND))) # (!\hdmi_out0|res_img|h_count\(2) & (!\hdmi_out0|res_img|h_count[1]~13\ & VCC))
-- \hdmi_out0|res_img|h_count[2]~15\ = CARRY((\hdmi_out0|res_img|h_count\(2) & !\hdmi_out0|res_img|h_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(2),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[1]~13\,
	combout => \hdmi_out0|res_img|h_count[2]~14_combout\,
	cout => \hdmi_out0|res_img|h_count[2]~15\);

-- Location: FF_X42_Y31_N17
\hdmi_out0|res_img|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[2]~14_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(2));

-- Location: LCCOMB_X42_Y31_N18
\hdmi_out0|res_img|h_count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[3]~16_combout\ = (\hdmi_out0|res_img|h_count\(3) & (!\hdmi_out0|res_img|h_count[2]~15\)) # (!\hdmi_out0|res_img|h_count\(3) & ((\hdmi_out0|res_img|h_count[2]~15\) # (GND)))
-- \hdmi_out0|res_img|h_count[3]~17\ = CARRY((!\hdmi_out0|res_img|h_count[2]~15\) # (!\hdmi_out0|res_img|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(3),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[2]~15\,
	combout => \hdmi_out0|res_img|h_count[3]~16_combout\,
	cout => \hdmi_out0|res_img|h_count[3]~17\);

-- Location: FF_X42_Y31_N19
\hdmi_out0|res_img|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[3]~16_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(3));

-- Location: LCCOMB_X42_Y31_N20
\hdmi_out0|res_img|h_count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[4]~18_combout\ = (\hdmi_out0|res_img|h_count\(4) & (\hdmi_out0|res_img|h_count[3]~17\ $ (GND))) # (!\hdmi_out0|res_img|h_count\(4) & (!\hdmi_out0|res_img|h_count[3]~17\ & VCC))
-- \hdmi_out0|res_img|h_count[4]~19\ = CARRY((\hdmi_out0|res_img|h_count\(4) & !\hdmi_out0|res_img|h_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(4),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[3]~17\,
	combout => \hdmi_out0|res_img|h_count[4]~18_combout\,
	cout => \hdmi_out0|res_img|h_count[4]~19\);

-- Location: FF_X42_Y31_N21
\hdmi_out0|res_img|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[4]~18_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(4));

-- Location: LCCOMB_X42_Y31_N22
\hdmi_out0|res_img|h_count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[5]~20_combout\ = (\hdmi_out0|res_img|h_count\(5) & (!\hdmi_out0|res_img|h_count[4]~19\)) # (!\hdmi_out0|res_img|h_count\(5) & ((\hdmi_out0|res_img|h_count[4]~19\) # (GND)))
-- \hdmi_out0|res_img|h_count[5]~21\ = CARRY((!\hdmi_out0|res_img|h_count[4]~19\) # (!\hdmi_out0|res_img|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(5),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[4]~19\,
	combout => \hdmi_out0|res_img|h_count[5]~20_combout\,
	cout => \hdmi_out0|res_img|h_count[5]~21\);

-- Location: FF_X42_Y31_N23
\hdmi_out0|res_img|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[5]~20_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(5));

-- Location: LCCOMB_X42_Y31_N24
\hdmi_out0|res_img|h_count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[6]~22_combout\ = (\hdmi_out0|res_img|h_count\(6) & (\hdmi_out0|res_img|h_count[5]~21\ $ (GND))) # (!\hdmi_out0|res_img|h_count\(6) & (!\hdmi_out0|res_img|h_count[5]~21\ & VCC))
-- \hdmi_out0|res_img|h_count[6]~23\ = CARRY((\hdmi_out0|res_img|h_count\(6) & !\hdmi_out0|res_img|h_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(6),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[5]~21\,
	combout => \hdmi_out0|res_img|h_count[6]~22_combout\,
	cout => \hdmi_out0|res_img|h_count[6]~23\);

-- Location: FF_X42_Y31_N25
\hdmi_out0|res_img|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[6]~22_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(6));

-- Location: LCCOMB_X42_Y31_N26
\hdmi_out0|res_img|h_count[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[7]~24_combout\ = (\hdmi_out0|res_img|h_count\(7) & (!\hdmi_out0|res_img|h_count[6]~23\)) # (!\hdmi_out0|res_img|h_count\(7) & ((\hdmi_out0|res_img|h_count[6]~23\) # (GND)))
-- \hdmi_out0|res_img|h_count[7]~25\ = CARRY((!\hdmi_out0|res_img|h_count[6]~23\) # (!\hdmi_out0|res_img|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[6]~23\,
	combout => \hdmi_out0|res_img|h_count[7]~24_combout\,
	cout => \hdmi_out0|res_img|h_count[7]~25\);

-- Location: FF_X42_Y31_N27
\hdmi_out0|res_img|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[7]~24_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(7));

-- Location: LCCOMB_X42_Y31_N28
\hdmi_out0|res_img|h_count[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[8]~26_combout\ = (\hdmi_out0|res_img|h_count\(8) & (\hdmi_out0|res_img|h_count[7]~25\ $ (GND))) # (!\hdmi_out0|res_img|h_count\(8) & (!\hdmi_out0|res_img|h_count[7]~25\ & VCC))
-- \hdmi_out0|res_img|h_count[8]~27\ = CARRY((\hdmi_out0|res_img|h_count\(8) & !\hdmi_out0|res_img|h_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[7]~25\,
	combout => \hdmi_out0|res_img|h_count[8]~26_combout\,
	cout => \hdmi_out0|res_img|h_count[8]~27\);

-- Location: FF_X42_Y31_N29
\hdmi_out0|res_img|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[8]~26_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(8));

-- Location: LCCOMB_X42_Y31_N30
\hdmi_out0|res_img|h_count[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[9]~28_combout\ = \hdmi_out0|res_img|h_count\(9) $ (\hdmi_out0|res_img|h_count[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(9),
	cin => \hdmi_out0|res_img|h_count[8]~27\,
	combout => \hdmi_out0|res_img|h_count[9]~28_combout\);

-- Location: FF_X42_Y31_N31
\hdmi_out0|res_img|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[9]~28_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(9));

-- Location: LCCOMB_X43_Y31_N6
\hdmi_out0|res_img|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal0~0_combout\ = (((!\hdmi_out0|res_img|h_count\(0)) # (!\hdmi_out0|res_img|h_count\(9))) # (!\hdmi_out0|res_img|h_count\(8))) # (!\hdmi_out0|res_img|h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(1),
	datab => \hdmi_out0|res_img|h_count\(8),
	datac => \hdmi_out0|res_img|h_count\(9),
	datad => \hdmi_out0|res_img|h_count\(0),
	combout => \hdmi_out0|res_img|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y31_N22
\hdmi_out0|res_img|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal0~2_combout\ = (!\hdmi_out0|res_img|h_count\(4)) # (!\hdmi_out0|res_img|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(3),
	datad => \hdmi_out0|res_img|h_count\(4),
	combout => \hdmi_out0|res_img|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y31_N30
\hdmi_out0|res_img|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal0~1_combout\ = ((\hdmi_out0|res_img|h_count\(5)) # ((\hdmi_out0|res_img|h_count\(7)) # (\hdmi_out0|res_img|h_count\(6)))) # (!\hdmi_out0|res_img|h_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(2),
	datab => \hdmi_out0|res_img|h_count\(5),
	datac => \hdmi_out0|res_img|h_count\(7),
	datad => \hdmi_out0|res_img|h_count\(6),
	combout => \hdmi_out0|res_img|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y31_N10
\hdmi_out0|res_img|v_count[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[5]~10_combout\ = (\hdmi_out0|reset_e~q\) # ((!\hdmi_out0|res_img|Equal0~0_combout\ & (!\hdmi_out0|res_img|Equal0~2_combout\ & !\hdmi_out0|res_img|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal0~0_combout\,
	datab => \hdmi_out0|res_img|Equal0~2_combout\,
	datac => \hdmi_out0|res_img|Equal0~1_combout\,
	datad => \hdmi_out0|reset_e~q\,
	combout => \hdmi_out0|res_img|v_count[5]~10_combout\);

-- Location: FF_X38_Y31_N5
\hdmi_out0|res_img|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[0]~11_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~29_combout\,
	ena => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(0));

-- Location: LCCOMB_X38_Y31_N6
\hdmi_out0|res_img|v_count[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[1]~13_combout\ = (\hdmi_out0|res_img|v_count\(1) & (!\hdmi_out0|res_img|v_count[0]~12\)) # (!\hdmi_out0|res_img|v_count\(1) & ((\hdmi_out0|res_img|v_count[0]~12\) # (GND)))
-- \hdmi_out0|res_img|v_count[1]~14\ = CARRY((!\hdmi_out0|res_img|v_count[0]~12\) # (!\hdmi_out0|res_img|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(1),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[0]~12\,
	combout => \hdmi_out0|res_img|v_count[1]~13_combout\,
	cout => \hdmi_out0|res_img|v_count[1]~14\);

-- Location: FF_X38_Y31_N7
\hdmi_out0|res_img|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[1]~13_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~29_combout\,
	ena => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(1));

-- Location: LCCOMB_X38_Y31_N8
\hdmi_out0|res_img|v_count[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[2]~15_combout\ = (\hdmi_out0|res_img|v_count\(2) & (\hdmi_out0|res_img|v_count[1]~14\ $ (GND))) # (!\hdmi_out0|res_img|v_count\(2) & (!\hdmi_out0|res_img|v_count[1]~14\ & VCC))
-- \hdmi_out0|res_img|v_count[2]~16\ = CARRY((\hdmi_out0|res_img|v_count\(2) & !\hdmi_out0|res_img|v_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(2),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[1]~14\,
	combout => \hdmi_out0|res_img|v_count[2]~15_combout\,
	cout => \hdmi_out0|res_img|v_count[2]~16\);

-- Location: FF_X38_Y31_N9
\hdmi_out0|res_img|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[2]~15_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~29_combout\,
	ena => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(2));

-- Location: LCCOMB_X38_Y31_N10
\hdmi_out0|res_img|v_count[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[3]~17_combout\ = (\hdmi_out0|res_img|v_count\(3) & (!\hdmi_out0|res_img|v_count[2]~16\)) # (!\hdmi_out0|res_img|v_count\(3) & ((\hdmi_out0|res_img|v_count[2]~16\) # (GND)))
-- \hdmi_out0|res_img|v_count[3]~18\ = CARRY((!\hdmi_out0|res_img|v_count[2]~16\) # (!\hdmi_out0|res_img|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(3),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[2]~16\,
	combout => \hdmi_out0|res_img|v_count[3]~17_combout\,
	cout => \hdmi_out0|res_img|v_count[3]~18\);

-- Location: FF_X38_Y31_N11
\hdmi_out0|res_img|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[3]~17_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~29_combout\,
	ena => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(3));

-- Location: LCCOMB_X38_Y31_N12
\hdmi_out0|res_img|v_count[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[4]~19_combout\ = (\hdmi_out0|res_img|v_count\(4) & (\hdmi_out0|res_img|v_count[3]~18\ $ (GND))) # (!\hdmi_out0|res_img|v_count\(4) & (!\hdmi_out0|res_img|v_count[3]~18\ & VCC))
-- \hdmi_out0|res_img|v_count[4]~20\ = CARRY((\hdmi_out0|res_img|v_count\(4) & !\hdmi_out0|res_img|v_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(4),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[3]~18\,
	combout => \hdmi_out0|res_img|v_count[4]~19_combout\,
	cout => \hdmi_out0|res_img|v_count[4]~20\);

-- Location: FF_X38_Y31_N13
\hdmi_out0|res_img|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[4]~19_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~29_combout\,
	ena => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(4));

-- Location: LCCOMB_X38_Y31_N14
\hdmi_out0|res_img|v_count[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[5]~21_combout\ = (\hdmi_out0|res_img|v_count\(5) & (!\hdmi_out0|res_img|v_count[4]~20\)) # (!\hdmi_out0|res_img|v_count\(5) & ((\hdmi_out0|res_img|v_count[4]~20\) # (GND)))
-- \hdmi_out0|res_img|v_count[5]~22\ = CARRY((!\hdmi_out0|res_img|v_count[4]~20\) # (!\hdmi_out0|res_img|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(5),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[4]~20\,
	combout => \hdmi_out0|res_img|v_count[5]~21_combout\,
	cout => \hdmi_out0|res_img|v_count[5]~22\);

-- Location: FF_X38_Y31_N15
\hdmi_out0|res_img|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[5]~21_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~29_combout\,
	ena => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(5));

-- Location: LCCOMB_X38_Y31_N16
\hdmi_out0|res_img|v_count[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[6]~23_combout\ = (\hdmi_out0|res_img|v_count\(6) & (\hdmi_out0|res_img|v_count[5]~22\ $ (GND))) # (!\hdmi_out0|res_img|v_count\(6) & (!\hdmi_out0|res_img|v_count[5]~22\ & VCC))
-- \hdmi_out0|res_img|v_count[6]~24\ = CARRY((\hdmi_out0|res_img|v_count\(6) & !\hdmi_out0|res_img|v_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(6),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[5]~22\,
	combout => \hdmi_out0|res_img|v_count[6]~23_combout\,
	cout => \hdmi_out0|res_img|v_count[6]~24\);

-- Location: FF_X38_Y31_N17
\hdmi_out0|res_img|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[6]~23_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~29_combout\,
	ena => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(6));

-- Location: LCCOMB_X38_Y31_N18
\hdmi_out0|res_img|v_count[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[7]~25_combout\ = (\hdmi_out0|res_img|v_count\(7) & (!\hdmi_out0|res_img|v_count[6]~24\)) # (!\hdmi_out0|res_img|v_count\(7) & ((\hdmi_out0|res_img|v_count[6]~24\) # (GND)))
-- \hdmi_out0|res_img|v_count[7]~26\ = CARRY((!\hdmi_out0|res_img|v_count[6]~24\) # (!\hdmi_out0|res_img|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(7),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[6]~24\,
	combout => \hdmi_out0|res_img|v_count[7]~25_combout\,
	cout => \hdmi_out0|res_img|v_count[7]~26\);

-- Location: FF_X38_Y31_N19
\hdmi_out0|res_img|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[7]~25_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~29_combout\,
	ena => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(7));

-- Location: LCCOMB_X38_Y31_N20
\hdmi_out0|res_img|v_count[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[8]~27_combout\ = (\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|v_count[7]~26\ $ (GND))) # (!\hdmi_out0|res_img|v_count\(8) & (!\hdmi_out0|res_img|v_count[7]~26\ & VCC))
-- \hdmi_out0|res_img|v_count[8]~28\ = CARRY((\hdmi_out0|res_img|v_count\(8) & !\hdmi_out0|res_img|v_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(8),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[7]~26\,
	combout => \hdmi_out0|res_img|v_count[8]~27_combout\,
	cout => \hdmi_out0|res_img|v_count[8]~28\);

-- Location: FF_X38_Y31_N21
\hdmi_out0|res_img|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[8]~27_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~29_combout\,
	ena => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(8));

-- Location: LCCOMB_X38_Y31_N22
\hdmi_out0|res_img|v_count[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[9]~30_combout\ = \hdmi_out0|res_img|v_count\(9) $ (\hdmi_out0|res_img|v_count[8]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(9),
	cin => \hdmi_out0|res_img|v_count[8]~28\,
	combout => \hdmi_out0|res_img|v_count[9]~30_combout\);

-- Location: FF_X38_Y31_N23
\hdmi_out0|res_img|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[9]~30_combout\,
	sclr => \hdmi_out0|res_img|v_count[5]~29_combout\,
	ena => \hdmi_out0|res_img|v_count[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(9));

-- Location: LCCOMB_X39_Y31_N22
\hdmi_out0|res_img|process_1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~59_combout\ = (!\hdmi_out0|res_img|v_count\(5) & !\hdmi_out0|res_img|v_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(5),
	datad => \hdmi_out0|res_img|v_count\(4),
	combout => \hdmi_out0|res_img|process_1~59_combout\);

-- Location: LCCOMB_X38_Y31_N2
\hdmi_out0|res_img|LessThan28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan28~4_combout\ = (!\hdmi_out0|res_img|v_count\(2) & !\hdmi_out0|res_img|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|v_count\(2),
	datad => \hdmi_out0|res_img|v_count\(3),
	combout => \hdmi_out0|res_img|LessThan28~4_combout\);

-- Location: LCCOMB_X39_Y31_N2
\hdmi_out0|res_img|LessThan28~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan28~7_combout\ = (\hdmi_out0|res_img|LessThan2~0_combout\ & (!\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|process_1~59_combout\ & \hdmi_out0|res_img|LessThan28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan2~0_combout\,
	datab => \hdmi_out0|res_img|v_count\(8),
	datac => \hdmi_out0|res_img|process_1~59_combout\,
	datad => \hdmi_out0|res_img|LessThan28~4_combout\,
	combout => \hdmi_out0|res_img|LessThan28~7_combout\);

-- Location: LCCOMB_X39_Y31_N8
\hdmi_out0|res_img|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan1~0_combout\ = (!\hdmi_out0|res_img|v_count\(9) & (!\hdmi_out0|res_img|v_count\(1) & \hdmi_out0|res_img|LessThan28~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(9),
	datac => \hdmi_out0|res_img|v_count\(1),
	datad => \hdmi_out0|res_img|LessThan28~7_combout\,
	combout => \hdmi_out0|res_img|LessThan1~0_combout\);

-- Location: FF_X39_Y31_N9
\hdmi_out0|res_img|vs_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|vs_1~q\);

-- Location: FF_X39_Y31_N23
\hdmi_out0|res_img|vs_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	asdata => \hdmi_out0|res_img|vs_1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|vs_2~q\);

-- Location: LCCOMB_X32_Y31_N20
\hdmi_out0|res_img|vs_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|vs_out~feeder_combout\ = \hdmi_out0|res_img|vs_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|vs_2~q\,
	combout => \hdmi_out0|res_img|vs_out~feeder_combout\);

-- Location: FF_X32_Y31_N21
\hdmi_out0|res_img|vs_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|vs_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|vs_out~q\);

-- Location: LCCOMB_X43_Y30_N4
\hdmi_out0|res_img|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan0~1_combout\ = (!\hdmi_out0|res_img|h_count\(7) & (!\hdmi_out0|res_img|h_count\(8) & ((!\hdmi_out0|res_img|h_count\(6)) # (!\hdmi_out0|res_img|h_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(5),
	datab => \hdmi_out0|res_img|h_count\(6),
	datac => \hdmi_out0|res_img|h_count\(7),
	datad => \hdmi_out0|res_img|h_count\(8),
	combout => \hdmi_out0|res_img|LessThan0~1_combout\);

-- Location: FF_X43_Y30_N5
\hdmi_out0|res_img|hs_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|LessThan0~1_combout\,
	sclr => \hdmi_out0|res_img|h_count\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|hs_1~q\);

-- Location: LCCOMB_X43_Y30_N12
\hdmi_out0|res_img|hs_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|hs_2~feeder_combout\ = \hdmi_out0|res_img|hs_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|hs_1~q\,
	combout => \hdmi_out0|res_img|hs_2~feeder_combout\);

-- Location: FF_X43_Y30_N13
\hdmi_out0|res_img|hs_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|hs_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|hs_2~q\);

-- Location: LCCOMB_X43_Y30_N6
\hdmi_out0|res_img|hs_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|hs_out~feeder_combout\ = \hdmi_out0|res_img|hs_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|hs_2~q\,
	combout => \hdmi_out0|res_img|hs_out~feeder_combout\);

-- Location: FF_X43_Y30_N7
\hdmi_out0|res_img|hs_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|hs_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|hs_out~q\);

-- Location: LCCOMB_X39_Y30_N24
\hdmi_out0|res_img|rgb2[12]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~15_combout\ = (\hdmi_out0|res_img|h_count\(8) & !\hdmi_out0|res_img|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|h_count\(8),
	datad => \hdmi_out0|res_img|h_count\(9),
	combout => \hdmi_out0|res_img|rgb2[12]~15_combout\);

-- Location: LCCOMB_X42_Y31_N8
\hdmi_out0|res_img|LessThan29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan29~0_combout\ = (!\hdmi_out0|res_img|h_count\(3) & (((!\hdmi_out0|res_img|h_count\(0) & !\hdmi_out0|res_img|h_count\(1))) # (!\hdmi_out0|res_img|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(0),
	datab => \hdmi_out0|res_img|h_count\(3),
	datac => \hdmi_out0|res_img|h_count\(1),
	datad => \hdmi_out0|res_img|h_count\(2),
	combout => \hdmi_out0|res_img|LessThan29~0_combout\);

-- Location: LCCOMB_X41_Y30_N14
\hdmi_out0|res_img|LessThan17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan17~0_combout\ = (!\hdmi_out0|res_img|h_count\(5) & ((\hdmi_out0|res_img|LessThan29~0_combout\) # (!\hdmi_out0|res_img|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(5),
	datac => \hdmi_out0|res_img|h_count\(4),
	datad => \hdmi_out0|res_img|LessThan29~0_combout\,
	combout => \hdmi_out0|res_img|LessThan17~0_combout\);

-- Location: LCCOMB_X42_Y31_N2
\hdmi_out0|res_img|LessThan34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan34~0_combout\ = (!\hdmi_out0|res_img|h_count\(2) & ((!\hdmi_out0|res_img|h_count\(1)) # (!\hdmi_out0|res_img|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(0),
	datac => \hdmi_out0|res_img|h_count\(1),
	datad => \hdmi_out0|res_img|h_count\(2),
	combout => \hdmi_out0|res_img|LessThan34~0_combout\);

-- Location: LCCOMB_X41_Y30_N28
\hdmi_out0|res_img|LessThan34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan34~1_combout\ = (\hdmi_out0|res_img|h_count\(4)) # ((\hdmi_out0|res_img|h_count\(5)) # ((\hdmi_out0|res_img|h_count\(3) & !\hdmi_out0|res_img|LessThan34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(4),
	datab => \hdmi_out0|res_img|h_count\(5),
	datac => \hdmi_out0|res_img|h_count\(3),
	datad => \hdmi_out0|res_img|LessThan34~0_combout\,
	combout => \hdmi_out0|res_img|LessThan34~1_combout\);

-- Location: LCCOMB_X40_Y30_N28
\hdmi_out0|res_img|rgb2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~16_combout\ = (\hdmi_out0|res_img|LessThan17~0_combout\ & (\hdmi_out0|res_img|h_count\(6) & (\hdmi_out0|res_img|h_count\(7) & \hdmi_out0|res_img|LessThan34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan17~0_combout\,
	datab => \hdmi_out0|res_img|h_count\(6),
	datac => \hdmi_out0|res_img|h_count\(7),
	datad => \hdmi_out0|res_img|LessThan34~1_combout\,
	combout => \hdmi_out0|res_img|rgb2~16_combout\);

-- Location: LCCOMB_X41_Y31_N2
\hdmi_out0|res_img|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan2~1_combout\ = ((!\hdmi_out0|res_img|v_count\(3) & (!\hdmi_out0|res_img|v_count\(4) & !\hdmi_out0|res_img|v_count\(2)))) # (!\hdmi_out0|res_img|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(3),
	datab => \hdmi_out0|res_img|v_count\(4),
	datac => \hdmi_out0|res_img|v_count\(5),
	datad => \hdmi_out0|res_img|v_count\(2),
	combout => \hdmi_out0|res_img|LessThan2~1_combout\);

-- Location: LCCOMB_X39_Y30_N30
\hdmi_out0|res_img|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan2~2_combout\ = (!\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|LessThan2~0_combout\ & (\hdmi_out0|res_img|LessThan2~1_combout\ & !\hdmi_out0|res_img|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(8),
	datab => \hdmi_out0|res_img|LessThan2~0_combout\,
	datac => \hdmi_out0|res_img|LessThan2~1_combout\,
	datad => \hdmi_out0|res_img|v_count\(9),
	combout => \hdmi_out0|res_img|LessThan2~2_combout\);

-- Location: LCCOMB_X42_Y30_N6
\hdmi_out0|res_img|process_1~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~103_combout\ = (!\hdmi_out0|res_img|h_count\(4) & (!\hdmi_out0|res_img|h_count\(5) & (!\hdmi_out0|res_img|h_count\(7) & !\hdmi_out0|res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(4),
	datab => \hdmi_out0|res_img|h_count\(5),
	datac => \hdmi_out0|res_img|h_count\(7),
	datad => \hdmi_out0|res_img|h_count\(6),
	combout => \hdmi_out0|res_img|process_1~103_combout\);

-- Location: LCCOMB_X43_Y30_N18
\hdmi_out0|res_img|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan7~1_combout\ = ((!\hdmi_out0|res_img|h_count\(4) & (!\hdmi_out0|res_img|h_count\(5) & !\hdmi_out0|res_img|h_count\(6)))) # (!\hdmi_out0|res_img|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(4),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|h_count\(5),
	datad => \hdmi_out0|res_img|h_count\(6),
	combout => \hdmi_out0|res_img|LessThan7~1_combout\);

-- Location: LCCOMB_X43_Y30_N24
\hdmi_out0|res_img|process_1~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~104_combout\ = (\hdmi_out0|res_img|h_count\(9) & (((\hdmi_out0|res_img|process_1~103_combout\)) # (!\hdmi_out0|res_img|h_count\(8)))) # (!\hdmi_out0|res_img|h_count\(9) & ((\hdmi_out0|res_img|h_count\(8)) # 
-- ((!\hdmi_out0|res_img|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(9),
	datab => \hdmi_out0|res_img|h_count\(8),
	datac => \hdmi_out0|res_img|process_1~103_combout\,
	datad => \hdmi_out0|res_img|LessThan7~1_combout\,
	combout => \hdmi_out0|res_img|process_1~104_combout\);

-- Location: LCCOMB_X39_Y30_N26
\hdmi_out0|res_img|process_1~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~105_combout\ = (!\hdmi_out0|res_img|LessThan2~2_combout\ & (\hdmi_out0|res_img|process_1~104_combout\ & ((\hdmi_out0|res_img|LessThan28~7_combout\) # (!\hdmi_out0|res_img|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan2~2_combout\,
	datab => \hdmi_out0|res_img|v_count\(9),
	datac => \hdmi_out0|res_img|LessThan28~7_combout\,
	datad => \hdmi_out0|res_img|process_1~104_combout\,
	combout => \hdmi_out0|res_img|process_1~105_combout\);

-- Location: FF_X39_Y30_N27
\hdmi_out0|res_img|de_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|process_1~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|de_1~q\);

-- Location: LCCOMB_X39_Y31_N30
\hdmi_out0|res_img|LessThan28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan28~5_combout\ = (!\hdmi_out0|res_img|v_count\(6) & (((\hdmi_out0|res_img|LessThan28~4_combout\) # (!\hdmi_out0|res_img|v_count\(5))) # (!\hdmi_out0|res_img|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(4),
	datab => \hdmi_out0|res_img|v_count\(5),
	datac => \hdmi_out0|res_img|v_count\(6),
	datad => \hdmi_out0|res_img|LessThan28~4_combout\,
	combout => \hdmi_out0|res_img|LessThan28~5_combout\);

-- Location: LCCOMB_X39_Y30_N16
\hdmi_out0|res_img|rgb2[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~12_combout\ = (!\hdmi_out0|res_img|v_count\(9) & (((\hdmi_out0|res_img|LessThan28~5_combout\) # (!\hdmi_out0|res_img|v_count\(7))) # (!\hdmi_out0|res_img|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(8),
	datab => \hdmi_out0|res_img|v_count\(7),
	datac => \hdmi_out0|res_img|LessThan28~5_combout\,
	datad => \hdmi_out0|res_img|v_count\(9),
	combout => \hdmi_out0|res_img|rgb2[12]~12_combout\);

-- Location: LCCOMB_X38_Y31_N28
\hdmi_out0|res_img|LessThan23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan23~0_combout\ = (\hdmi_out0|res_img|v_count\(3) & ((\hdmi_out0|res_img|v_count\(1)) # ((\hdmi_out0|res_img|v_count\(0)) # (\hdmi_out0|res_img|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(1),
	datab => \hdmi_out0|res_img|v_count\(0),
	datac => \hdmi_out0|res_img|v_count\(2),
	datad => \hdmi_out0|res_img|v_count\(3),
	combout => \hdmi_out0|res_img|LessThan23~0_combout\);

-- Location: LCCOMB_X39_Y31_N10
\hdmi_out0|res_img|LessThan23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan23~1_combout\ = (\hdmi_out0|res_img|v_count\(7) & ((\hdmi_out0|res_img|v_count\(6)) # ((\hdmi_out0|res_img|LessThan23~0_combout\) # (!\hdmi_out0|res_img|process_1~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(6),
	datab => \hdmi_out0|res_img|v_count\(7),
	datac => \hdmi_out0|res_img|process_1~59_combout\,
	datad => \hdmi_out0|res_img|LessThan23~0_combout\,
	combout => \hdmi_out0|res_img|LessThan23~1_combout\);

-- Location: LCCOMB_X42_Y30_N12
\hdmi_out0|res_img|process_1~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~101_combout\ = (\hdmi_out0|res_img|h_count\(6)) # ((\hdmi_out0|res_img|h_count\(9)) # ((\hdmi_out0|res_img|h_count\(8)) # (!\hdmi_out0|res_img|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(6),
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|h_count\(4),
	datad => \hdmi_out0|res_img|h_count\(8),
	combout => \hdmi_out0|res_img|process_1~101_combout\);

-- Location: LCCOMB_X39_Y30_N6
\hdmi_out0|res_img|process_1~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~102_combout\ = ((\hdmi_out0|res_img|process_1~101_combout\) # (!\hdmi_out0|res_img|LessThan17~0_combout\)) # (!\hdmi_out0|res_img|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|process_1~101_combout\,
	datad => \hdmi_out0|res_img|LessThan17~0_combout\,
	combout => \hdmi_out0|res_img|process_1~102_combout\);

-- Location: LCCOMB_X39_Y30_N20
\hdmi_out0|res_img|rgb2[12]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~13_combout\ = (\hdmi_out0|res_img|rgb2[12]~12_combout\ & (\hdmi_out0|res_img|process_1~102_combout\ & ((\hdmi_out0|res_img|v_count\(8)) # (\hdmi_out0|res_img|LessThan23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(8),
	datab => \hdmi_out0|res_img|rgb2[12]~12_combout\,
	datac => \hdmi_out0|res_img|LessThan23~1_combout\,
	datad => \hdmi_out0|res_img|process_1~102_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~13_combout\);

-- Location: LCCOMB_X39_Y30_N22
\hdmi_out0|res_img|rgb2[12]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~14_combout\ = (\hdmi_out0|res_img|de_1~q\ & \hdmi_out0|res_img|rgb2[12]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|de_1~q\,
	datad => \hdmi_out0|res_img|rgb2[12]~13_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~14_combout\);

-- Location: LCCOMB_X41_Y30_N0
\hdmi_out0|res_img|LessThan29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan29~2_combout\ = (\hdmi_out0|res_img|h_count\(4) & (\hdmi_out0|res_img|h_count\(5) & !\hdmi_out0|res_img|LessThan29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(4),
	datac => \hdmi_out0|res_img|h_count\(5),
	datad => \hdmi_out0|res_img|LessThan29~0_combout\,
	combout => \hdmi_out0|res_img|LessThan29~2_combout\);

-- Location: LCCOMB_X41_Y30_N24
\hdmi_out0|res_img|LessThan20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan20~0_combout\ = ((!\hdmi_out0|res_img|h_count\(4) & ((\hdmi_out0|res_img|LessThan34~0_combout\) # (!\hdmi_out0|res_img|h_count\(3))))) # (!\hdmi_out0|res_img|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(4),
	datab => \hdmi_out0|res_img|h_count\(3),
	datac => \hdmi_out0|res_img|h_count\(5),
	datad => \hdmi_out0|res_img|LessThan34~0_combout\,
	combout => \hdmi_out0|res_img|LessThan20~0_combout\);

-- Location: LCCOMB_X41_Y30_N30
\hdmi_out0|res_img|rgb2[12]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~2_combout\ = (!\hdmi_out0|res_img|h_count\(7) & (!\hdmi_out0|res_img|LessThan29~2_combout\ & (!\hdmi_out0|res_img|h_count\(6) & !\hdmi_out0|res_img|LessThan20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datab => \hdmi_out0|res_img|LessThan29~2_combout\,
	datac => \hdmi_out0|res_img|h_count\(6),
	datad => \hdmi_out0|res_img|LessThan20~0_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~2_combout\);

-- Location: LCCOMB_X42_Y30_N8
\hdmi_out0|res_img|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan9~0_combout\ = ((!\hdmi_out0|res_img|h_count\(3) & ((!\hdmi_out0|res_img|h_count\(1)) # (!\hdmi_out0|res_img|h_count\(2))))) # (!\hdmi_out0|res_img|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(3),
	datab => \hdmi_out0|res_img|h_count\(2),
	datac => \hdmi_out0|res_img|h_count\(4),
	datad => \hdmi_out0|res_img|h_count\(1),
	combout => \hdmi_out0|res_img|LessThan9~0_combout\);

-- Location: LCCOMB_X42_Y30_N24
\hdmi_out0|res_img|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan7~0_combout\ = (!\hdmi_out0|res_img|h_count\(6) & !\hdmi_out0|res_img|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(6),
	datad => \hdmi_out0|res_img|h_count\(5),
	combout => \hdmi_out0|res_img|LessThan7~0_combout\);

-- Location: LCCOMB_X42_Y30_N30
\hdmi_out0|res_img|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan9~1_combout\ = (!\hdmi_out0|res_img|h_count\(8) & (((\hdmi_out0|res_img|LessThan9~0_combout\ & \hdmi_out0|res_img|LessThan7~0_combout\)) # (!\hdmi_out0|res_img|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datab => \hdmi_out0|res_img|h_count\(8),
	datac => \hdmi_out0|res_img|LessThan9~0_combout\,
	datad => \hdmi_out0|res_img|LessThan7~0_combout\,
	combout => \hdmi_out0|res_img|LessThan9~1_combout\);

-- Location: LCCOMB_X41_Y30_N16
\hdmi_out0|res_img|process_1~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~96_combout\ = ((!\hdmi_out0|res_img|h_count\(7) & (!\hdmi_out0|res_img|h_count\(6) & !\hdmi_out0|res_img|LessThan29~2_combout\))) # (!\hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|h_count\(6),
	datad => \hdmi_out0|res_img|LessThan29~2_combout\,
	combout => \hdmi_out0|res_img|process_1~96_combout\);

-- Location: LCCOMB_X41_Y30_N26
\hdmi_out0|res_img|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan11~0_combout\ = ((!\hdmi_out0|res_img|h_count\(7) & (!\hdmi_out0|res_img|h_count\(6) & \hdmi_out0|res_img|LessThan20~0_combout\))) # (!\hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|h_count\(6),
	datad => \hdmi_out0|res_img|LessThan20~0_combout\,
	combout => \hdmi_out0|res_img|LessThan11~0_combout\);

-- Location: LCCOMB_X41_Y30_N18
\hdmi_out0|res_img|rgb2[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~3_combout\ = (\hdmi_out0|res_img|h_count\(7) & (\hdmi_out0|res_img|h_count\(6) & \hdmi_out0|res_img|LessThan34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|h_count\(6),
	datad => \hdmi_out0|res_img|LessThan34~1_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~3_combout\);

-- Location: LCCOMB_X41_Y30_N20
\hdmi_out0|res_img|rgb2[12]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~4_combout\ = (\hdmi_out0|res_img|LessThan9~1_combout\ & ((\hdmi_out0|res_img|process_1~96_combout\) # ((\hdmi_out0|res_img|rgb2[12]~3_combout\)))) # (!\hdmi_out0|res_img|LessThan9~1_combout\ & 
-- (!\hdmi_out0|res_img|LessThan11~0_combout\ & ((\hdmi_out0|res_img|process_1~96_combout\) # (\hdmi_out0|res_img|rgb2[12]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan9~1_combout\,
	datab => \hdmi_out0|res_img|process_1~96_combout\,
	datac => \hdmi_out0|res_img|LessThan11~0_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~3_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~4_combout\);

-- Location: LCCOMB_X41_Y30_N6
\hdmi_out0|res_img|rgb2[12]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~5_combout\ = (!\hdmi_out0|res_img|h_count\(9) & (((\hdmi_out0|res_img|h_count\(8) & \hdmi_out0|res_img|rgb2[12]~2_combout\)) # (!\hdmi_out0|res_img|rgb2[12]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|rgb2[12]~2_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~4_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~5_combout\);

-- Location: LCCOMB_X39_Y30_N18
\hdmi_out0|res_img|rgb2[12]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~17_combout\ = (\hdmi_out0|res_img|rgb2[12]~14_combout\ & (((\hdmi_out0|res_img|rgb2[12]~5_combout\) # (!\hdmi_out0|res_img|rgb2~16_combout\)) # (!\hdmi_out0|res_img|rgb2[12]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2[12]~15_combout\,
	datab => \hdmi_out0|res_img|rgb2~16_combout\,
	datac => \hdmi_out0|res_img|rgb2[12]~14_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~5_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~17_combout\);

-- Location: LCCOMB_X42_Y30_N14
\hdmi_out0|res_img|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan0~0_combout\ = (!\hdmi_out0|res_img|h_count\(7) & !\hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|h_count\(7),
	datad => \hdmi_out0|res_img|h_count\(8),
	combout => \hdmi_out0|res_img|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y30_N28
\hdmi_out0|res_img|process_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~36_combout\ = (\hdmi_out0|res_img|h_count\(4) & \hdmi_out0|res_img|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(4),
	datad => \hdmi_out0|res_img|h_count\(5),
	combout => \hdmi_out0|res_img|process_1~36_combout\);

-- Location: LCCOMB_X42_Y30_N4
\hdmi_out0|res_img|process_1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~40_combout\ = (((!\hdmi_out0|res_img|process_1~36_combout\) # (!\hdmi_out0|res_img|LessThan0~0_combout\)) # (!\hdmi_out0|res_img|h_count\(6))) # (!\hdmi_out0|res_img|LessThan29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan29~0_combout\,
	datab => \hdmi_out0|res_img|h_count\(6),
	datac => \hdmi_out0|res_img|LessThan0~0_combout\,
	datad => \hdmi_out0|res_img|process_1~36_combout\,
	combout => \hdmi_out0|res_img|process_1~40_combout\);

-- Location: LCCOMB_X42_Y31_N4
\hdmi_out0|res_img|process_1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~37_combout\ = (!\hdmi_out0|res_img|h_count\(5) & !\hdmi_out0|res_img|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|h_count\(5),
	datad => \hdmi_out0|res_img|h_count\(4),
	combout => \hdmi_out0|res_img|process_1~37_combout\);

-- Location: LCCOMB_X42_Y31_N10
\hdmi_out0|res_img|process_1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~38_combout\ = (!\hdmi_out0|res_img|h_count\(6) & (\hdmi_out0|res_img|process_1~37_combout\ & ((\hdmi_out0|res_img|LessThan34~0_combout\) # (!\hdmi_out0|res_img|h_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(3),
	datab => \hdmi_out0|res_img|h_count\(6),
	datac => \hdmi_out0|res_img|process_1~37_combout\,
	datad => \hdmi_out0|res_img|LessThan34~0_combout\,
	combout => \hdmi_out0|res_img|process_1~38_combout\);

-- Location: LCCOMB_X42_Y30_N10
\hdmi_out0|res_img|LessThan29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan29~1_combout\ = (!\hdmi_out0|res_img|h_count\(7) & (((\hdmi_out0|res_img|LessThan29~0_combout\) # (!\hdmi_out0|res_img|process_1~36_combout\)) # (!\hdmi_out0|res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datab => \hdmi_out0|res_img|h_count\(6),
	datac => \hdmi_out0|res_img|LessThan29~0_combout\,
	datad => \hdmi_out0|res_img|process_1~36_combout\,
	combout => \hdmi_out0|res_img|LessThan29~1_combout\);

-- Location: LCCOMB_X42_Y30_N16
\hdmi_out0|res_img|process_1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~39_combout\ = (\hdmi_out0|res_img|h_count\(8) & ((\hdmi_out0|res_img|h_count\(7)) # ((!\hdmi_out0|res_img|process_1~38_combout\)))) # (!\hdmi_out0|res_img|h_count\(8) & (((\hdmi_out0|res_img|LessThan29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datab => \hdmi_out0|res_img|h_count\(8),
	datac => \hdmi_out0|res_img|process_1~38_combout\,
	datad => \hdmi_out0|res_img|LessThan29~1_combout\,
	combout => \hdmi_out0|res_img|process_1~39_combout\);

-- Location: LCCOMB_X42_Y30_N2
\hdmi_out0|res_img|rgb2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~0_combout\ = ((\hdmi_out0|res_img|process_1~39_combout\) # (!\hdmi_out0|res_img|process_1~40_combout\)) # (!\hdmi_out0|res_img|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|process_1~40_combout\,
	datad => \hdmi_out0|res_img|process_1~39_combout\,
	combout => \hdmi_out0|res_img|rgb2~0_combout\);

-- Location: LCCOMB_X45_Y31_N22
\hdmi_out0|res_img|Add3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add3~3_combout\ = (\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\sepRes|Div0|auto_generated|divider|_~5_combout\) # ((\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ & 
-- \sepRes|Div0|auto_generated|divider|_~4_combout\)))) # (!\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & (\sepRes|Div0|auto_generated|divider|_~5_combout\ & (\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ & 
-- \sepRes|Div0|auto_generated|divider|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	datac => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datad => \sepRes|Div0|auto_generated|divider|_~4_combout\,
	combout => \hdmi_out0|res_img|Add3~3_combout\);

-- Location: LCCOMB_X45_Y31_N28
\hdmi_out0|res_img|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add3~4_combout\ = (\hdmi_out0|res_img|Add3~3_combout\) # ((\sepRes|Div0|auto_generated|divider|_~5_combout\ & \sepRes|Div0|auto_generated|divider|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	datac => \hdmi_out0|res_img|Add3~3_combout\,
	datad => \sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \hdmi_out0|res_img|Add3~4_combout\);

-- Location: LCCOMB_X45_Y31_N24
\hdmi_out0|res_img|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add3~2_combout\ = (\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & (\sepRes|Div0|auto_generated|divider|_~4_combout\ & ((\sepRes|Div0|auto_generated|divider|_~5_combout\) # 
-- (!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\)))) # (!\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\sepRes|Div0|auto_generated|divider|_~5_combout\ & ((\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\) # 
-- (!\sepRes|Div0|auto_generated|divider|_~4_combout\))) # (!\sepRes|Div0|auto_generated|divider|_~5_combout\ & ((\sepRes|Div0|auto_generated|divider|_~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	datac => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datad => \sepRes|Div0|auto_generated|divider|_~4_combout\,
	combout => \hdmi_out0|res_img|Add3~2_combout\);

-- Location: LCCOMB_X45_Y31_N26
\hdmi_out0|res_img|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add3~1_combout\ = \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ $ (\sepRes|Div0|auto_generated|divider|_~5_combout\ $ (((\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ & 
-- \sepRes|Div0|auto_generated|divider|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	datac => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datad => \sepRes|Div0|auto_generated|divider|_~4_combout\,
	combout => \hdmi_out0|res_img|Add3~1_combout\);

-- Location: LCCOMB_X45_Y31_N0
\hdmi_out0|res_img|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~0_combout\ = (\choix_d0|Mux2~6_combout\ & ((GND) # (!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\))) # (!\choix_d0|Mux2~6_combout\ & (\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (GND)))
-- \hdmi_out0|res_img|Add4~1\ = CARRY((\choix_d0|Mux2~6_combout\) # (!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux2~6_combout\,
	datab => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datad => VCC,
	combout => \hdmi_out0|res_img|Add4~0_combout\,
	cout => \hdmi_out0|res_img|Add4~1\);

-- Location: LCCOMB_X45_Y31_N2
\hdmi_out0|res_img|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~2_combout\ = (\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\choix_d0|Mux1~3_combout\ & (!\hdmi_out0|res_img|Add4~1\)) # (!\choix_d0|Mux1~3_combout\ & ((\hdmi_out0|res_img|Add4~1\) # (GND))))) # 
-- (!\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\choix_d0|Mux1~3_combout\ & (\hdmi_out0|res_img|Add4~1\ & VCC)) # (!\choix_d0|Mux1~3_combout\ & (!\hdmi_out0|res_img|Add4~1\))))
-- \hdmi_out0|res_img|Add4~3\ = CARRY((\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((!\hdmi_out0|res_img|Add4~1\) # (!\choix_d0|Mux1~3_combout\))) # (!\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & (!\choix_d0|Mux1~3_combout\ & 
-- !\hdmi_out0|res_img|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \choix_d0|Mux1~3_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~1\,
	combout => \hdmi_out0|res_img|Add4~2_combout\,
	cout => \hdmi_out0|res_img|Add4~3\);

-- Location: LCCOMB_X45_Y31_N4
\hdmi_out0|res_img|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~4_combout\ = ((\hdmi_out0|res_img|Add3~0_combout\ $ (\choix_d0|Mux0~5_combout\ $ (\hdmi_out0|res_img|Add4~3\)))) # (GND)
-- \hdmi_out0|res_img|Add4~5\ = CARRY((\hdmi_out0|res_img|Add3~0_combout\ & (\choix_d0|Mux0~5_combout\ & !\hdmi_out0|res_img|Add4~3\)) # (!\hdmi_out0|res_img|Add3~0_combout\ & ((\choix_d0|Mux0~5_combout\) # (!\hdmi_out0|res_img|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add3~0_combout\,
	datab => \choix_d0|Mux0~5_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~3\,
	combout => \hdmi_out0|res_img|Add4~4_combout\,
	cout => \hdmi_out0|res_img|Add4~5\);

-- Location: LCCOMB_X45_Y31_N6
\hdmi_out0|res_img|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~6_combout\ = (\hdmi_out0|res_img|Add3~1_combout\ & ((\sepRes|int_input[31]~0_combout\ & (!\hdmi_out0|res_img|Add4~5\)) # (!\sepRes|int_input[31]~0_combout\ & ((\hdmi_out0|res_img|Add4~5\) # (GND))))) # 
-- (!\hdmi_out0|res_img|Add3~1_combout\ & ((\sepRes|int_input[31]~0_combout\ & (\hdmi_out0|res_img|Add4~5\ & VCC)) # (!\sepRes|int_input[31]~0_combout\ & (!\hdmi_out0|res_img|Add4~5\))))
-- \hdmi_out0|res_img|Add4~7\ = CARRY((\hdmi_out0|res_img|Add3~1_combout\ & ((!\hdmi_out0|res_img|Add4~5\) # (!\sepRes|int_input[31]~0_combout\))) # (!\hdmi_out0|res_img|Add3~1_combout\ & (!\sepRes|int_input[31]~0_combout\ & !\hdmi_out0|res_img|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add3~1_combout\,
	datab => \sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~5\,
	combout => \hdmi_out0|res_img|Add4~6_combout\,
	cout => \hdmi_out0|res_img|Add4~7\);

-- Location: LCCOMB_X45_Y31_N8
\hdmi_out0|res_img|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~8_combout\ = ((\hdmi_out0|res_img|Add3~2_combout\ $ (\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~7\)))) # (GND)
-- \hdmi_out0|res_img|Add4~9\ = CARRY((\hdmi_out0|res_img|Add3~2_combout\ & (\sepRes|int_input[31]~0_combout\ & !\hdmi_out0|res_img|Add4~7\)) # (!\hdmi_out0|res_img|Add3~2_combout\ & ((\sepRes|int_input[31]~0_combout\) # (!\hdmi_out0|res_img|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add3~2_combout\,
	datab => \sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~7\,
	combout => \hdmi_out0|res_img|Add4~8_combout\,
	cout => \hdmi_out0|res_img|Add4~9\);

-- Location: LCCOMB_X45_Y31_N10
\hdmi_out0|res_img|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~10_combout\ = (\hdmi_out0|res_img|Add3~4_combout\ & ((\sepRes|int_input[31]~0_combout\ & (!\hdmi_out0|res_img|Add4~9\)) # (!\sepRes|int_input[31]~0_combout\ & ((\hdmi_out0|res_img|Add4~9\) # (GND))))) # 
-- (!\hdmi_out0|res_img|Add3~4_combout\ & ((\sepRes|int_input[31]~0_combout\ & (\hdmi_out0|res_img|Add4~9\ & VCC)) # (!\sepRes|int_input[31]~0_combout\ & (!\hdmi_out0|res_img|Add4~9\))))
-- \hdmi_out0|res_img|Add4~11\ = CARRY((\hdmi_out0|res_img|Add3~4_combout\ & ((!\hdmi_out0|res_img|Add4~9\) # (!\sepRes|int_input[31]~0_combout\))) # (!\hdmi_out0|res_img|Add3~4_combout\ & (!\sepRes|int_input[31]~0_combout\ & !\hdmi_out0|res_img|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add3~4_combout\,
	datab => \sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~9\,
	combout => \hdmi_out0|res_img|Add4~10_combout\,
	cout => \hdmi_out0|res_img|Add4~11\);

-- Location: LCCOMB_X45_Y31_N12
\hdmi_out0|res_img|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~12_combout\ = ((\sepRes|Div0|auto_generated|divider|_~5_combout\ $ (\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~11\)))) # (GND)
-- \hdmi_out0|res_img|Add4~13\ = CARRY((\sepRes|Div0|auto_generated|divider|_~5_combout\ & (\sepRes|int_input[31]~0_combout\ & !\hdmi_out0|res_img|Add4~11\)) # (!\sepRes|Div0|auto_generated|divider|_~5_combout\ & ((\sepRes|int_input[31]~0_combout\) # 
-- (!\hdmi_out0|res_img|Add4~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	datab => \sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~11\,
	combout => \hdmi_out0|res_img|Add4~12_combout\,
	cout => \hdmi_out0|res_img|Add4~13\);

-- Location: LCCOMB_X45_Y31_N14
\hdmi_out0|res_img|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~14_combout\ = (\sepRes|Div0|auto_generated|divider|_~5_combout\ & ((\sepRes|int_input[31]~0_combout\ & (!\hdmi_out0|res_img|Add4~13\)) # (!\sepRes|int_input[31]~0_combout\ & ((\hdmi_out0|res_img|Add4~13\) # (GND))))) # 
-- (!\sepRes|Div0|auto_generated|divider|_~5_combout\ & ((\sepRes|int_input[31]~0_combout\ & (\hdmi_out0|res_img|Add4~13\ & VCC)) # (!\sepRes|int_input[31]~0_combout\ & (!\hdmi_out0|res_img|Add4~13\))))
-- \hdmi_out0|res_img|Add4~15\ = CARRY((\sepRes|Div0|auto_generated|divider|_~5_combout\ & ((!\hdmi_out0|res_img|Add4~13\) # (!\sepRes|int_input[31]~0_combout\))) # (!\sepRes|Div0|auto_generated|divider|_~5_combout\ & (!\sepRes|int_input[31]~0_combout\ & 
-- !\hdmi_out0|res_img|Add4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	datab => \sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~13\,
	combout => \hdmi_out0|res_img|Add4~14_combout\,
	cout => \hdmi_out0|res_img|Add4~15\);

-- Location: LCCOMB_X45_Y31_N16
\hdmi_out0|res_img|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~16_combout\ = \sepRes|Div0|auto_generated|divider|_~5_combout\ $ (\hdmi_out0|res_img|Add4~15\ $ (\sepRes|int_input[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	datad => \sepRes|int_input[31]~0_combout\,
	cin => \hdmi_out0|res_img|Add4~15\,
	combout => \hdmi_out0|res_img|Add4~16_combout\);

-- Location: LCCOMB_X47_Y34_N22
\hdmi_out0|res_img|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~0_combout\ = \choix_d0|Mux3~5_combout\ $ (((\mode~input_o\ & \choix_d0|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux3~5_combout\,
	datac => \mode~input_o\,
	datad => \choix_d0|Mux0~5_combout\,
	combout => \hdmi_out0|res_img|Add2~0_combout\);

-- Location: LCCOMB_X44_Y31_N0
\hdmi_out0|res_img|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~1_combout\ = (\sepRes|int_input[31]~0_combout\ & (\hdmi_out0|res_img|Add2~0_combout\ $ (VCC))) # (!\sepRes|int_input[31]~0_combout\ & (\hdmi_out0|res_img|Add2~0_combout\ & VCC))
-- \hdmi_out0|res_img|Add2~2\ = CARRY((\sepRes|int_input[31]~0_combout\ & \hdmi_out0|res_img|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \hdmi_out0|res_img|Add2~0_combout\,
	datad => VCC,
	combout => \hdmi_out0|res_img|Add2~1_combout\,
	cout => \hdmi_out0|res_img|Add2~2\);

-- Location: LCCOMB_X44_Y31_N2
\hdmi_out0|res_img|Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~3_combout\ = (\hdmi_out0|res_img|Add2~2\ & (\sepRes|int_input[31]~0_combout\ $ ((!\hdmi_out0|res_img|Add4~0_combout\)))) # (!\hdmi_out0|res_img|Add2~2\ & ((\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~0_combout\)) # 
-- (GND)))
-- \hdmi_out0|res_img|Add2~4\ = CARRY((\sepRes|int_input[31]~0_combout\ $ (!\hdmi_out0|res_img|Add4~0_combout\)) # (!\hdmi_out0|res_img|Add2~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \hdmi_out0|res_img|Add4~0_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~2\,
	combout => \hdmi_out0|res_img|Add2~3_combout\,
	cout => \hdmi_out0|res_img|Add2~4\);

-- Location: LCCOMB_X44_Y31_N4
\hdmi_out0|res_img|Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~5_combout\ = (\hdmi_out0|res_img|Add2~4\ & ((\hdmi_out0|res_img|Add4~2_combout\ $ (\sepRes|int_input[31]~0_combout\)))) # (!\hdmi_out0|res_img|Add2~4\ & (\hdmi_out0|res_img|Add4~2_combout\ $ (\sepRes|int_input[31]~0_combout\ $ 
-- (VCC))))
-- \hdmi_out0|res_img|Add2~6\ = CARRY((!\hdmi_out0|res_img|Add2~4\ & (\hdmi_out0|res_img|Add4~2_combout\ $ (\sepRes|int_input[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add4~2_combout\,
	datab => \sepRes|int_input[31]~0_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~4\,
	combout => \hdmi_out0|res_img|Add2~5_combout\,
	cout => \hdmi_out0|res_img|Add2~6\);

-- Location: LCCOMB_X44_Y31_N6
\hdmi_out0|res_img|Add2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~7_combout\ = (\hdmi_out0|res_img|Add2~6\ & (\sepRes|int_input[31]~0_combout\ $ ((!\hdmi_out0|res_img|Add4~4_combout\)))) # (!\hdmi_out0|res_img|Add2~6\ & ((\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~4_combout\)) # 
-- (GND)))
-- \hdmi_out0|res_img|Add2~8\ = CARRY((\sepRes|int_input[31]~0_combout\ $ (!\hdmi_out0|res_img|Add4~4_combout\)) # (!\hdmi_out0|res_img|Add2~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \hdmi_out0|res_img|Add4~4_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~6\,
	combout => \hdmi_out0|res_img|Add2~7_combout\,
	cout => \hdmi_out0|res_img|Add2~8\);

-- Location: LCCOMB_X44_Y31_N8
\hdmi_out0|res_img|Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~9_combout\ = (\hdmi_out0|res_img|Add2~8\ & ((\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~6_combout\)))) # (!\hdmi_out0|res_img|Add2~8\ & (\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~6_combout\ $ 
-- (VCC))))
-- \hdmi_out0|res_img|Add2~10\ = CARRY((!\hdmi_out0|res_img|Add2~8\ & (\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \hdmi_out0|res_img|Add4~6_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~8\,
	combout => \hdmi_out0|res_img|Add2~9_combout\,
	cout => \hdmi_out0|res_img|Add2~10\);

-- Location: LCCOMB_X44_Y31_N10
\hdmi_out0|res_img|Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~11_combout\ = (\hdmi_out0|res_img|Add2~10\ & (\sepRes|int_input[31]~0_combout\ $ ((!\hdmi_out0|res_img|Add4~8_combout\)))) # (!\hdmi_out0|res_img|Add2~10\ & ((\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~8_combout\)) 
-- # (GND)))
-- \hdmi_out0|res_img|Add2~12\ = CARRY((\sepRes|int_input[31]~0_combout\ $ (!\hdmi_out0|res_img|Add4~8_combout\)) # (!\hdmi_out0|res_img|Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \hdmi_out0|res_img|Add4~8_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~10\,
	combout => \hdmi_out0|res_img|Add2~11_combout\,
	cout => \hdmi_out0|res_img|Add2~12\);

-- Location: LCCOMB_X44_Y31_N12
\hdmi_out0|res_img|Add2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~13_combout\ = (\hdmi_out0|res_img|Add2~12\ & ((\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~10_combout\)))) # (!\hdmi_out0|res_img|Add2~12\ & (\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~10_combout\ $ 
-- (VCC))))
-- \hdmi_out0|res_img|Add2~14\ = CARRY((!\hdmi_out0|res_img|Add2~12\ & (\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \hdmi_out0|res_img|Add4~10_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~12\,
	combout => \hdmi_out0|res_img|Add2~13_combout\,
	cout => \hdmi_out0|res_img|Add2~14\);

-- Location: LCCOMB_X44_Y31_N14
\hdmi_out0|res_img|Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~15_combout\ = (\hdmi_out0|res_img|Add2~14\ & (\sepRes|int_input[31]~0_combout\ $ ((!\hdmi_out0|res_img|Add4~12_combout\)))) # (!\hdmi_out0|res_img|Add2~14\ & ((\sepRes|int_input[31]~0_combout\ $ 
-- (\hdmi_out0|res_img|Add4~12_combout\)) # (GND)))
-- \hdmi_out0|res_img|Add2~16\ = CARRY((\sepRes|int_input[31]~0_combout\ $ (!\hdmi_out0|res_img|Add4~12_combout\)) # (!\hdmi_out0|res_img|Add2~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \hdmi_out0|res_img|Add4~12_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~14\,
	combout => \hdmi_out0|res_img|Add2~15_combout\,
	cout => \hdmi_out0|res_img|Add2~16\);

-- Location: LCCOMB_X44_Y31_N16
\hdmi_out0|res_img|Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~17_combout\ = (\hdmi_out0|res_img|Add2~16\ & ((\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~14_combout\)))) # (!\hdmi_out0|res_img|Add2~16\ & (\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~14_combout\ $ 
-- (VCC))))
-- \hdmi_out0|res_img|Add2~18\ = CARRY((!\hdmi_out0|res_img|Add2~16\ & (\sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \hdmi_out0|res_img|Add4~14_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~16\,
	combout => \hdmi_out0|res_img|Add2~17_combout\,
	cout => \hdmi_out0|res_img|Add2~18\);

-- Location: LCCOMB_X44_Y31_N18
\hdmi_out0|res_img|Add2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~19_combout\ = (\hdmi_out0|res_img|Add2~18\ & (\sepRes|int_input[31]~0_combout\ $ ((!\hdmi_out0|res_img|Add4~16_combout\)))) # (!\hdmi_out0|res_img|Add2~18\ & ((\sepRes|int_input[31]~0_combout\ $ 
-- (\hdmi_out0|res_img|Add4~16_combout\)) # (GND)))
-- \hdmi_out0|res_img|Add2~20\ = CARRY((\sepRes|int_input[31]~0_combout\ $ (!\hdmi_out0|res_img|Add4~16_combout\)) # (!\hdmi_out0|res_img|Add2~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \hdmi_out0|res_img|Add4~16_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~18\,
	combout => \hdmi_out0|res_img|Add2~19_combout\,
	cout => \hdmi_out0|res_img|Add2~20\);

-- Location: LCCOMB_X44_Y31_N20
\hdmi_out0|res_img|Add2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~21_combout\ = \sepRes|int_input[31]~0_combout\ $ (\hdmi_out0|res_img|Add4~16_combout\ $ (!\hdmi_out0|res_img|Add2~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|int_input[31]~0_combout\,
	datab => \hdmi_out0|res_img|Add4~16_combout\,
	cin => \hdmi_out0|res_img|Add2~20\,
	combout => \hdmi_out0|res_img|Add2~21_combout\);

-- Location: LCCOMB_X41_Y32_N12
\hdmi_out0|res_img|process_1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~45_combout\ = (!\hdmi_out0|res_img|Add2~21_combout\ & (!\hdmi_out0|res_img|Add2~1_combout\ & (!\hdmi_out0|res_img|Add2~7_combout\ & !\hdmi_out0|res_img|Add2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~21_combout\,
	datab => \hdmi_out0|res_img|Add2~1_combout\,
	datac => \hdmi_out0|res_img|Add2~7_combout\,
	datad => \hdmi_out0|res_img|Add2~17_combout\,
	combout => \hdmi_out0|res_img|process_1~45_combout\);

-- Location: LCCOMB_X44_Y31_N22
\hdmi_out0|res_img|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal11~0_combout\ = (!\hdmi_out0|res_img|Add2~11_combout\ & (!\hdmi_out0|res_img|Add2~15_combout\ & (!\hdmi_out0|res_img|Add2~9_combout\ & !\hdmi_out0|res_img|Add2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~11_combout\,
	datab => \hdmi_out0|res_img|Add2~15_combout\,
	datac => \hdmi_out0|res_img|Add2~9_combout\,
	datad => \hdmi_out0|res_img|Add2~13_combout\,
	combout => \hdmi_out0|res_img|Equal11~0_combout\);

-- Location: LCCOMB_X41_Y32_N10
\hdmi_out0|res_img|process_1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~46_combout\ = ((\hdmi_out0|res_img|Add2~5_combout\) # ((\hdmi_out0|res_img|Add2~19_combout\) # (!\hdmi_out0|res_img|Equal11~0_combout\))) # (!\hdmi_out0|res_img|process_1~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~45_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|Add2~19_combout\,
	datad => \hdmi_out0|res_img|Equal11~0_combout\,
	combout => \hdmi_out0|res_img|process_1~46_combout\);

-- Location: LCCOMB_X40_Y30_N12
\hdmi_out0|res_img|process_1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~27_combout\ = (\hdmi_out0|res_img|Add2~5_combout\ & ((\hdmi_out0|res_img|Add2~7_combout\) # (\hdmi_out0|res_img|Add2~3_combout\ $ (!\hdmi_out0|res_img|Add2~1_combout\)))) # (!\hdmi_out0|res_img|Add2~5_combout\ & 
-- ((\hdmi_out0|res_img|Add2~3_combout\ & ((\hdmi_out0|res_img|Add2~7_combout\) # (!\hdmi_out0|res_img|Add2~1_combout\))) # (!\hdmi_out0|res_img|Add2~3_combout\ & ((!\hdmi_out0|res_img|Add2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~5_combout\,
	datab => \hdmi_out0|res_img|Add2~3_combout\,
	datac => \hdmi_out0|res_img|Add2~1_combout\,
	datad => \hdmi_out0|res_img|Add2~7_combout\,
	combout => \hdmi_out0|res_img|process_1~27_combout\);

-- Location: LCCOMB_X40_Y30_N22
\hdmi_out0|res_img|process_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~25_combout\ = (\hdmi_out0|res_img|process_1~27_combout\) # (\hdmi_out0|res_img|Add2~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|process_1~27_combout\,
	datad => \hdmi_out0|res_img|Add2~21_combout\,
	combout => \hdmi_out0|res_img|process_1~25_combout\);

-- Location: LCCOMB_X44_Y31_N26
\hdmi_out0|res_img|process_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~22_combout\ = (\hdmi_out0|res_img|Add2~13_combout\) # ((\hdmi_out0|res_img|process_1~25_combout\) # ((\hdmi_out0|res_img|Add2~15_combout\) # (\hdmi_out0|res_img|Add2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~13_combout\,
	datab => \hdmi_out0|res_img|process_1~25_combout\,
	datac => \hdmi_out0|res_img|Add2~15_combout\,
	datad => \hdmi_out0|res_img|Add2~17_combout\,
	combout => \hdmi_out0|res_img|process_1~22_combout\);

-- Location: LCCOMB_X44_Y31_N24
\hdmi_out0|res_img|process_1~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~108_combout\ = (\hdmi_out0|res_img|Add2~11_combout\) # ((\hdmi_out0|res_img|Add2~9_combout\) # ((\hdmi_out0|res_img|process_1~22_combout\) # (\hdmi_out0|res_img|Add2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~11_combout\,
	datab => \hdmi_out0|res_img|Add2~9_combout\,
	datac => \hdmi_out0|res_img|process_1~22_combout\,
	datad => \hdmi_out0|res_img|Add2~19_combout\,
	combout => \hdmi_out0|res_img|process_1~108_combout\);

-- Location: LCCOMB_X41_Y32_N0
\hdmi_out0|res_img|process_1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~47_combout\ = (\hdmi_out0|res_img|Add2~3_combout\ & (\hdmi_out0|res_img|Add2~5_combout\ & (!\hdmi_out0|res_img|Add2~7_combout\ & \hdmi_out0|res_img|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~3_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|Add2~7_combout\,
	datad => \hdmi_out0|res_img|Add2~1_combout\,
	combout => \hdmi_out0|res_img|process_1~47_combout\);

-- Location: LCCOMB_X41_Y32_N22
\hdmi_out0|res_img|process_1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~48_combout\ = (!\hdmi_out0|res_img|Add2~17_combout\ & (\hdmi_out0|res_img|process_1~47_combout\ & (!\hdmi_out0|res_img|Add2~19_combout\ & !\hdmi_out0|res_img|Add2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~17_combout\,
	datab => \hdmi_out0|res_img|process_1~47_combout\,
	datac => \hdmi_out0|res_img|Add2~19_combout\,
	datad => \hdmi_out0|res_img|Add2~21_combout\,
	combout => \hdmi_out0|res_img|process_1~48_combout\);

-- Location: LCCOMB_X41_Y32_N20
\hdmi_out0|res_img|process_1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~49_combout\ = (((\hdmi_out0|res_img|process_1~48_combout\ & \hdmi_out0|res_img|Equal11~0_combout\)) # (!\hdmi_out0|res_img|process_1~108_combout\)) # (!\hdmi_out0|res_img|process_1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~46_combout\,
	datab => \hdmi_out0|res_img|process_1~108_combout\,
	datac => \hdmi_out0|res_img|process_1~48_combout\,
	datad => \hdmi_out0|res_img|Equal11~0_combout\,
	combout => \hdmi_out0|res_img|process_1~49_combout\);

-- Location: LCCOMB_X41_Y32_N2
\hdmi_out0|res_img|process_1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~53_combout\ = (\eror~1_combout\ & ((!\hdmi_out0|res_img|process_1~108_combout\) # (!\hdmi_out0|res_img|process_1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~46_combout\,
	datac => \eror~1_combout\,
	datad => \hdmi_out0|res_img|process_1~108_combout\,
	combout => \hdmi_out0|res_img|process_1~53_combout\);

-- Location: LCCOMB_X38_Y31_N0
\hdmi_out0|res_img|process_1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~50_combout\ = (!\hdmi_out0|res_img|v_count\(3) & (((!\hdmi_out0|res_img|v_count\(0)) # (!\hdmi_out0|res_img|v_count\(2))) # (!\hdmi_out0|res_img|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(1),
	datab => \hdmi_out0|res_img|v_count\(2),
	datac => \hdmi_out0|res_img|v_count\(0),
	datad => \hdmi_out0|res_img|v_count\(3),
	combout => \hdmi_out0|res_img|process_1~50_combout\);

-- Location: LCCOMB_X39_Y31_N20
\hdmi_out0|res_img|process_1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~51_combout\ = (\hdmi_out0|res_img|v_count\(7) & ((\hdmi_out0|res_img|v_count\(5)) # ((\hdmi_out0|res_img|v_count\(4) & !\hdmi_out0|res_img|process_1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(4),
	datab => \hdmi_out0|res_img|v_count\(7),
	datac => \hdmi_out0|res_img|process_1~50_combout\,
	datad => \hdmi_out0|res_img|v_count\(5),
	combout => \hdmi_out0|res_img|process_1~51_combout\);

-- Location: LCCOMB_X40_Y30_N20
\hdmi_out0|res_img|process_1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~52_combout\ = (\hdmi_out0|res_img|LessThan28~5_combout\ & \hdmi_out0|res_img|process_1~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|LessThan28~5_combout\,
	datad => \hdmi_out0|res_img|process_1~51_combout\,
	combout => \hdmi_out0|res_img|process_1~52_combout\);

-- Location: LCCOMB_X40_Y30_N14
\hdmi_out0|res_img|process_1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~54_combout\ = (\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|process_1~53_combout\ & (!\hdmi_out0|res_img|v_count\(9) & \hdmi_out0|res_img|process_1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(8),
	datab => \hdmi_out0|res_img|process_1~53_combout\,
	datac => \hdmi_out0|res_img|v_count\(9),
	datad => \hdmi_out0|res_img|process_1~52_combout\,
	combout => \hdmi_out0|res_img|process_1~54_combout\);

-- Location: LCCOMB_X39_Y31_N12
\hdmi_out0|res_img|process_1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~41_combout\ = (\hdmi_out0|res_img|v_count\(6)) # (((\hdmi_out0|res_img|v_count\(9)) # (\hdmi_out0|res_img|v_count\(8))) # (!\hdmi_out0|res_img|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(6),
	datab => \hdmi_out0|res_img|v_count\(7),
	datac => \hdmi_out0|res_img|v_count\(9),
	datad => \hdmi_out0|res_img|v_count\(8),
	combout => \hdmi_out0|res_img|process_1~41_combout\);

-- Location: LCCOMB_X39_Y31_N4
\hdmi_out0|res_img|process_1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~43_combout\ = (\hdmi_out0|res_img|v_count\(4)) # ((\hdmi_out0|res_img|v_count\(3)) # ((\hdmi_out0|res_img|v_count\(1) & \hdmi_out0|res_img|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(4),
	datab => \hdmi_out0|res_img|v_count\(1),
	datac => \hdmi_out0|res_img|v_count\(3),
	datad => \hdmi_out0|res_img|v_count\(2),
	combout => \hdmi_out0|res_img|process_1~43_combout\);

-- Location: LCCOMB_X41_Y31_N0
\hdmi_out0|res_img|process_1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~42_combout\ = (!\hdmi_out0|res_img|v_count\(4) & (!\hdmi_out0|res_img|v_count\(5) & !\hdmi_out0|res_img|LessThan23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(4),
	datac => \hdmi_out0|res_img|v_count\(5),
	datad => \hdmi_out0|res_img|LessThan23~0_combout\,
	combout => \hdmi_out0|res_img|process_1~42_combout\);

-- Location: LCCOMB_X41_Y31_N10
\hdmi_out0|res_img|process_1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~44_combout\ = (\hdmi_out0|res_img|process_1~41_combout\) # ((\hdmi_out0|res_img|process_1~42_combout\) # ((\hdmi_out0|res_img|v_count\(5) & \hdmi_out0|res_img|process_1~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(5),
	datab => \hdmi_out0|res_img|process_1~41_combout\,
	datac => \hdmi_out0|res_img|process_1~43_combout\,
	datad => \hdmi_out0|res_img|process_1~42_combout\,
	combout => \hdmi_out0|res_img|process_1~44_combout\);

-- Location: LCCOMB_X40_Y30_N0
\hdmi_out0|res_img|process_1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~55_combout\ = (!\hdmi_out0|res_img|process_1~54_combout\ & (((\hdmi_out0|res_img|process_1~44_combout\) # (!\hdmi_out0|res_img|process_1~49_combout\)) # (!\eror~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~1_combout\,
	datab => \hdmi_out0|res_img|process_1~49_combout\,
	datac => \hdmi_out0|res_img|process_1~54_combout\,
	datad => \hdmi_out0|res_img|process_1~44_combout\,
	combout => \hdmi_out0|res_img|process_1~55_combout\);

-- Location: LCCOMB_X42_Y30_N22
\hdmi_out0|res_img|process_1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~61_combout\ = ((\hdmi_out0|res_img|h_count\(4) & ((\hdmi_out0|res_img|h_count\(3)) # (!\hdmi_out0|res_img|LessThan34~0_combout\)))) # (!\hdmi_out0|res_img|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(3),
	datab => \hdmi_out0|res_img|h_count\(4),
	datac => \hdmi_out0|res_img|LessThan34~0_combout\,
	datad => \hdmi_out0|res_img|LessThan7~0_combout\,
	combout => \hdmi_out0|res_img|process_1~61_combout\);

-- Location: LCCOMB_X42_Y30_N0
\hdmi_out0|res_img|process_1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~62_combout\ = (\hdmi_out0|res_img|h_count\(8)) # ((\hdmi_out0|res_img|LessThan29~1_combout\) # ((\hdmi_out0|res_img|h_count\(7) & \hdmi_out0|res_img|process_1~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datab => \hdmi_out0|res_img|h_count\(8),
	datac => \hdmi_out0|res_img|process_1~61_combout\,
	datad => \hdmi_out0|res_img|LessThan29~1_combout\,
	combout => \hdmi_out0|res_img|process_1~62_combout\);

-- Location: LCCOMB_X41_Y32_N4
\hdmi_out0|res_img|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal17~0_combout\ = (!\hdmi_out0|res_img|Add2~21_combout\ & (!\hdmi_out0|res_img|Add2~5_combout\ & (\hdmi_out0|res_img|Add2~7_combout\ & !\hdmi_out0|res_img|Add2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~21_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|Add2~7_combout\,
	datad => \hdmi_out0|res_img|Add2~17_combout\,
	combout => \hdmi_out0|res_img|Equal17~0_combout\);

-- Location: LCCOMB_X41_Y32_N6
\hdmi_out0|res_img|Equal17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal17~1_combout\ = (!\hdmi_out0|res_img|Add2~3_combout\ & (\hdmi_out0|res_img|Equal17~0_combout\ & (!\hdmi_out0|res_img|Add2~19_combout\ & \hdmi_out0|res_img|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~3_combout\,
	datab => \hdmi_out0|res_img|Equal17~0_combout\,
	datac => \hdmi_out0|res_img|Add2~19_combout\,
	datad => \hdmi_out0|res_img|Equal11~0_combout\,
	combout => \hdmi_out0|res_img|Equal17~1_combout\);

-- Location: LCCOMB_X42_Y32_N24
\hdmi_out0|res_img|Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal11~1_combout\ = (!\hdmi_out0|res_img|Add2~19_combout\ & (!\hdmi_out0|res_img|Add2~21_combout\ & !\hdmi_out0|res_img|Add2~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|Add2~19_combout\,
	datac => \hdmi_out0|res_img|Add2~21_combout\,
	datad => \hdmi_out0|res_img|Add2~17_combout\,
	combout => \hdmi_out0|res_img|Equal11~1_combout\);

-- Location: LCCOMB_X41_Y32_N8
\hdmi_out0|res_img|Equal11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal11~3_combout\ = (\hdmi_out0|res_img|Equal11~1_combout\ & (!\hdmi_out0|res_img|Add2~7_combout\ & \hdmi_out0|res_img|Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|Equal11~1_combout\,
	datac => \hdmi_out0|res_img|Add2~7_combout\,
	datad => \hdmi_out0|res_img|Equal11~0_combout\,
	combout => \hdmi_out0|res_img|Equal11~3_combout\);

-- Location: LCCOMB_X41_Y32_N28
\hdmi_out0|res_img|process_1~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~75_combout\ = (\hdmi_out0|res_img|Equal17~1_combout\) # ((\hdmi_out0|res_img|Add2~5_combout\ & (\hdmi_out0|res_img|Equal11~3_combout\ & \hdmi_out0|res_img|Add2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal17~1_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|Equal11~3_combout\,
	datad => \hdmi_out0|res_img|Add2~3_combout\,
	combout => \hdmi_out0|res_img|process_1~75_combout\);

-- Location: LCCOMB_X41_Y32_N18
\hdmi_out0|res_img|process_1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~76_combout\ = (((\hdmi_out0|res_img|process_1~75_combout\ & !\hdmi_out0|res_img|Add2~1_combout\)) # (!\eror~1_combout\)) # (!\hdmi_out0|res_img|process_1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~46_combout\,
	datab => \hdmi_out0|res_img|process_1~75_combout\,
	datac => \eror~1_combout\,
	datad => \hdmi_out0|res_img|Add2~1_combout\,
	combout => \hdmi_out0|res_img|process_1~76_combout\);

-- Location: LCCOMB_X39_Y31_N14
\hdmi_out0|res_img|LessThan31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan31~0_combout\ = (\hdmi_out0|res_img|v_count\(7)) # ((\hdmi_out0|res_img|v_count\(6)) # (\hdmi_out0|res_img|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(7),
	datac => \hdmi_out0|res_img|v_count\(6),
	datad => \hdmi_out0|res_img|v_count\(5),
	combout => \hdmi_out0|res_img|LessThan31~0_combout\);

-- Location: LCCOMB_X39_Y31_N18
\hdmi_out0|res_img|LessThan31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan31~1_combout\ = (\hdmi_out0|res_img|v_count\(3)) # ((\hdmi_out0|res_img|v_count\(2) & ((\hdmi_out0|res_img|v_count\(0)) # (\hdmi_out0|res_img|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(2),
	datab => \hdmi_out0|res_img|v_count\(0),
	datac => \hdmi_out0|res_img|v_count\(1),
	datad => \hdmi_out0|res_img|v_count\(3),
	combout => \hdmi_out0|res_img|LessThan31~1_combout\);

-- Location: LCCOMB_X39_Y31_N28
\hdmi_out0|res_img|process_1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~66_combout\ = (\hdmi_out0|res_img|v_count\(8) & ((\hdmi_out0|res_img|LessThan31~0_combout\) # ((\hdmi_out0|res_img|v_count\(4) & \hdmi_out0|res_img|LessThan31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(4),
	datab => \hdmi_out0|res_img|v_count\(8),
	datac => \hdmi_out0|res_img|LessThan31~0_combout\,
	datad => \hdmi_out0|res_img|LessThan31~1_combout\,
	combout => \hdmi_out0|res_img|process_1~66_combout\);

-- Location: LCCOMB_X39_Y31_N6
\hdmi_out0|res_img|process_1~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~67_combout\ = (!\hdmi_out0|res_img|v_count\(9) & (\hdmi_out0|res_img|process_1~66_combout\ & ((\hdmi_out0|res_img|LessThan28~5_combout\) # (!\hdmi_out0|res_img|v_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(9),
	datab => \hdmi_out0|res_img|v_count\(7),
	datac => \hdmi_out0|res_img|LessThan28~5_combout\,
	datad => \hdmi_out0|res_img|process_1~66_combout\,
	combout => \hdmi_out0|res_img|process_1~67_combout\);

-- Location: LCCOMB_X41_Y32_N30
\hdmi_out0|res_img|process_1~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~65_combout\ = (\hdmi_out0|res_img|Add2~3_combout\ $ (((\hdmi_out0|res_img|Add2~5_combout\ & \hdmi_out0|res_img|Add2~1_combout\)))) # (!\hdmi_out0|res_img|Equal11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~3_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|Equal11~3_combout\,
	datad => \hdmi_out0|res_img|Add2~1_combout\,
	combout => \hdmi_out0|res_img|process_1~65_combout\);

-- Location: LCCOMB_X42_Y31_N0
\hdmi_out0|res_img|LessThan32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan32~0_combout\ = (((!\hdmi_out0|res_img|h_count\(0) & !\hdmi_out0|res_img|h_count\(1))) # (!\hdmi_out0|res_img|h_count\(3))) # (!\hdmi_out0|res_img|h_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(0),
	datab => \hdmi_out0|res_img|h_count\(1),
	datac => \hdmi_out0|res_img|h_count\(2),
	datad => \hdmi_out0|res_img|h_count\(3),
	combout => \hdmi_out0|res_img|LessThan32~0_combout\);

-- Location: LCCOMB_X41_Y31_N16
\hdmi_out0|res_img|process_1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~68_combout\ = (((!\hdmi_out0|res_img|h_count\(4) & \hdmi_out0|res_img|LessThan32~0_combout\)) # (!\hdmi_out0|res_img|h_count\(5))) # (!\hdmi_out0|res_img|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(6),
	datab => \hdmi_out0|res_img|h_count\(5),
	datac => \hdmi_out0|res_img|h_count\(4),
	datad => \hdmi_out0|res_img|LessThan32~0_combout\,
	combout => \hdmi_out0|res_img|process_1~68_combout\);

-- Location: LCCOMB_X41_Y31_N26
\hdmi_out0|res_img|process_1~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~69_combout\ = (\hdmi_out0|res_img|h_count\(7) & ((\hdmi_out0|res_img|h_count\(8)) # ((\hdmi_out0|res_img|process_1~68_combout\)))) # (!\hdmi_out0|res_img|h_count\(7) & (((!\hdmi_out0|res_img|h_count\(8) & 
-- \hdmi_out0|res_img|process_1~68_combout\)) # (!\hdmi_out0|res_img|process_1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datab => \hdmi_out0|res_img|h_count\(8),
	datac => \hdmi_out0|res_img|process_1~38_combout\,
	datad => \hdmi_out0|res_img|process_1~68_combout\,
	combout => \hdmi_out0|res_img|process_1~69_combout\);

-- Location: LCCOMB_X40_Y31_N22
\hdmi_out0|res_img|process_1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~70_combout\ = (\eror~1_combout\ & (\hdmi_out0|res_img|process_1~67_combout\ & !\hdmi_out0|res_img|process_1~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eror~1_combout\,
	datac => \hdmi_out0|res_img|process_1~67_combout\,
	datad => \hdmi_out0|res_img|process_1~69_combout\,
	combout => \hdmi_out0|res_img|process_1~70_combout\);

-- Location: LCCOMB_X41_Y32_N16
\hdmi_out0|res_img|process_1~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~71_combout\ = (\hdmi_out0|res_img|Add2~7_combout\) # ((\hdmi_out0|res_img|Add2~5_combout\ & (\hdmi_out0|res_img|Add2~3_combout\ $ (\hdmi_out0|res_img|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~3_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|Add2~7_combout\,
	datad => \hdmi_out0|res_img|Add2~1_combout\,
	combout => \hdmi_out0|res_img|process_1~71_combout\);

-- Location: LCCOMB_X41_Y32_N26
\hdmi_out0|res_img|process_1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~72_combout\ = (\hdmi_out0|res_img|Equal17~1_combout\) # ((\hdmi_out0|res_img|Equal11~0_combout\ & (\hdmi_out0|res_img|Equal11~1_combout\ & !\hdmi_out0|res_img|process_1~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal11~0_combout\,
	datab => \hdmi_out0|res_img|Equal11~1_combout\,
	datac => \hdmi_out0|res_img|process_1~71_combout\,
	datad => \hdmi_out0|res_img|Equal17~1_combout\,
	combout => \hdmi_out0|res_img|process_1~72_combout\);

-- Location: LCCOMB_X38_Y31_N24
\hdmi_out0|res_img|LessThan26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan26~0_combout\ = (((!\hdmi_out0|res_img|v_count\(1) & !\hdmi_out0|res_img|v_count\(0))) # (!\hdmi_out0|res_img|v_count\(3))) # (!\hdmi_out0|res_img|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(1),
	datab => \hdmi_out0|res_img|v_count\(0),
	datac => \hdmi_out0|res_img|v_count\(2),
	datad => \hdmi_out0|res_img|v_count\(3),
	combout => \hdmi_out0|res_img|LessThan26~0_combout\);

-- Location: LCCOMB_X39_Y31_N16
\hdmi_out0|res_img|LessThan26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan26~1_combout\ = (\hdmi_out0|res_img|LessThan2~0_combout\ & (((!\hdmi_out0|res_img|v_count\(4) & \hdmi_out0|res_img|LessThan26~0_combout\)) # (!\hdmi_out0|res_img|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(4),
	datab => \hdmi_out0|res_img|v_count\(5),
	datac => \hdmi_out0|res_img|LessThan2~0_combout\,
	datad => \hdmi_out0|res_img|LessThan26~0_combout\,
	combout => \hdmi_out0|res_img|LessThan26~1_combout\);

-- Location: LCCOMB_X40_Y31_N16
\hdmi_out0|res_img|process_1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~60_combout\ = (!\hdmi_out0|res_img|v_count\(9) & ((\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|LessThan26~1_combout\)) # (!\hdmi_out0|res_img|v_count\(8) & ((\hdmi_out0|res_img|LessThan23~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(9),
	datab => \hdmi_out0|res_img|v_count\(8),
	datac => \hdmi_out0|res_img|LessThan26~1_combout\,
	datad => \hdmi_out0|res_img|LessThan23~1_combout\,
	combout => \hdmi_out0|res_img|process_1~60_combout\);

-- Location: LCCOMB_X40_Y31_N12
\hdmi_out0|res_img|process_1~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~73_combout\ = (\hdmi_out0|res_img|process_1~72_combout\ & (!\hdmi_out0|res_img|process_1~69_combout\ & (\eror~1_combout\ & \hdmi_out0|res_img|process_1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~72_combout\,
	datab => \hdmi_out0|res_img|process_1~69_combout\,
	datac => \eror~1_combout\,
	datad => \hdmi_out0|res_img|process_1~60_combout\,
	combout => \hdmi_out0|res_img|process_1~73_combout\);

-- Location: LCCOMB_X40_Y31_N6
\hdmi_out0|res_img|process_1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~74_combout\ = (!\hdmi_out0|res_img|process_1~73_combout\ & (((\hdmi_out0|res_img|process_1~108_combout\ & \hdmi_out0|res_img|process_1~65_combout\)) # (!\hdmi_out0|res_img|process_1~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~108_combout\,
	datab => \hdmi_out0|res_img|process_1~65_combout\,
	datac => \hdmi_out0|res_img|process_1~70_combout\,
	datad => \hdmi_out0|res_img|process_1~73_combout\,
	combout => \hdmi_out0|res_img|process_1~74_combout\);

-- Location: LCCOMB_X40_Y31_N8
\hdmi_out0|res_img|process_1~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~77_combout\ = (\hdmi_out0|res_img|process_1~74_combout\ & ((\hdmi_out0|res_img|process_1~62_combout\) # ((!\hdmi_out0|res_img|process_1~67_combout\) # (!\hdmi_out0|res_img|process_1~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~62_combout\,
	datab => \hdmi_out0|res_img|process_1~76_combout\,
	datac => \hdmi_out0|res_img|process_1~67_combout\,
	datad => \hdmi_out0|res_img|process_1~74_combout\,
	combout => \hdmi_out0|res_img|process_1~77_combout\);

-- Location: LCCOMB_X41_Y32_N24
\hdmi_out0|res_img|Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal11~2_combout\ = (\hdmi_out0|res_img|Equal11~0_combout\ & (\hdmi_out0|res_img|Equal11~1_combout\ & (!\hdmi_out0|res_img|Add2~7_combout\ & !\hdmi_out0|res_img|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal11~0_combout\,
	datab => \hdmi_out0|res_img|Equal11~1_combout\,
	datac => \hdmi_out0|res_img|Add2~7_combout\,
	datad => \hdmi_out0|res_img|Add2~1_combout\,
	combout => \hdmi_out0|res_img|Equal11~2_combout\);

-- Location: LCCOMB_X41_Y32_N14
\hdmi_out0|res_img|process_1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~56_combout\ = ((\hdmi_out0|res_img|Equal11~2_combout\ & (\hdmi_out0|res_img|Add2~3_combout\ $ (\hdmi_out0|res_img|Add2~5_combout\)))) # (!\eror~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~3_combout\,
	datab => \hdmi_out0|res_img|Equal11~2_combout\,
	datac => \eror~1_combout\,
	datad => \hdmi_out0|res_img|Add2~5_combout\,
	combout => \hdmi_out0|res_img|process_1~56_combout\);

-- Location: LCCOMB_X38_Y31_N30
\hdmi_out0|res_img|process_1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~57_combout\ = (\hdmi_out0|res_img|LessThan2~0_combout\ & ((\hdmi_out0|res_img|v_count\(4) & (!\hdmi_out0|res_img|v_count\(5))) # (!\hdmi_out0|res_img|v_count\(4) & (\hdmi_out0|res_img|v_count\(5) & 
-- \hdmi_out0|res_img|LessThan26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(4),
	datab => \hdmi_out0|res_img|v_count\(5),
	datac => \hdmi_out0|res_img|LessThan2~0_combout\,
	datad => \hdmi_out0|res_img|LessThan26~0_combout\,
	combout => \hdmi_out0|res_img|process_1~57_combout\);

-- Location: LCCOMB_X40_Y30_N10
\hdmi_out0|res_img|process_1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~58_combout\ = (\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|process_1~57_combout\ & !\hdmi_out0|res_img|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(8),
	datac => \hdmi_out0|res_img|process_1~57_combout\,
	datad => \hdmi_out0|res_img|v_count\(9),
	combout => \hdmi_out0|res_img|process_1~58_combout\);

-- Location: LCCOMB_X40_Y30_N6
\hdmi_out0|res_img|process_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~10_combout\ = (\hdmi_out0|res_img|Add2~5_combout\ & (!\hdmi_out0|res_img|Add2~7_combout\ & ((!\hdmi_out0|res_img|Add2~1_combout\) # (!\hdmi_out0|res_img|Add2~3_combout\)))) # (!\hdmi_out0|res_img|Add2~5_combout\ & 
-- (!\hdmi_out0|res_img|Add2~3_combout\ & ((\hdmi_out0|res_img|Add2~7_combout\) # (!\hdmi_out0|res_img|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~5_combout\,
	datab => \hdmi_out0|res_img|Add2~3_combout\,
	datac => \hdmi_out0|res_img|Add2~1_combout\,
	datad => \hdmi_out0|res_img|Add2~7_combout\,
	combout => \hdmi_out0|res_img|process_1~10_combout\);

-- Location: LCCOMB_X44_Y30_N0
\hdmi_out0|res_img|process_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~8_combout\ = (!\hdmi_out0|res_img|Add2~21_combout\ & \hdmi_out0|res_img|process_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|Add2~21_combout\,
	datad => \hdmi_out0|res_img|process_1~10_combout\,
	combout => \hdmi_out0|res_img|process_1~8_combout\);

-- Location: LCCOMB_X44_Y31_N30
\hdmi_out0|res_img|process_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~5_combout\ = (\hdmi_out0|res_img|process_1~8_combout\ & (!\hdmi_out0|res_img|Add2~19_combout\ & (!\hdmi_out0|res_img|Add2~15_combout\ & !\hdmi_out0|res_img|Add2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~8_combout\,
	datab => \hdmi_out0|res_img|Add2~19_combout\,
	datac => \hdmi_out0|res_img|Add2~15_combout\,
	datad => \hdmi_out0|res_img|Add2~17_combout\,
	combout => \hdmi_out0|res_img|process_1~5_combout\);

-- Location: LCCOMB_X44_Y31_N28
\hdmi_out0|res_img|process_1~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~107_combout\ = (!\hdmi_out0|res_img|Add2~11_combout\ & (!\hdmi_out0|res_img|Add2~9_combout\ & (\hdmi_out0|res_img|process_1~5_combout\ & !\hdmi_out0|res_img|Add2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~11_combout\,
	datab => \hdmi_out0|res_img|Add2~9_combout\,
	datac => \hdmi_out0|res_img|process_1~5_combout\,
	datad => \hdmi_out0|res_img|Add2~13_combout\,
	combout => \hdmi_out0|res_img|process_1~107_combout\);

-- Location: LCCOMB_X40_Y31_N18
\hdmi_out0|res_img|process_1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~63_combout\ = (\hdmi_out0|res_img|process_1~107_combout\ & (\eror~1_combout\ & (!\hdmi_out0|res_img|process_1~62_combout\ & \hdmi_out0|res_img|process_1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~107_combout\,
	datab => \eror~1_combout\,
	datac => \hdmi_out0|res_img|process_1~62_combout\,
	datad => \hdmi_out0|res_img|process_1~60_combout\,
	combout => \hdmi_out0|res_img|process_1~63_combout\);

-- Location: LCCOMB_X40_Y31_N24
\hdmi_out0|res_img|process_1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~64_combout\ = (!\hdmi_out0|res_img|process_1~63_combout\ & (((\hdmi_out0|res_img|process_1~108_combout\ & !\hdmi_out0|res_img|process_1~56_combout\)) # (!\hdmi_out0|res_img|process_1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~108_combout\,
	datab => \hdmi_out0|res_img|process_1~56_combout\,
	datac => \hdmi_out0|res_img|process_1~58_combout\,
	datad => \hdmi_out0|res_img|process_1~63_combout\,
	combout => \hdmi_out0|res_img|process_1~64_combout\);

-- Location: LCCOMB_X40_Y31_N26
\hdmi_out0|res_img|rgb2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~1_combout\ = (\hdmi_out0|res_img|rgb2~0_combout\) # ((\hdmi_out0|res_img|process_1~55_combout\ & (\hdmi_out0|res_img|process_1~77_combout\ & \hdmi_out0|res_img|process_1~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2~0_combout\,
	datab => \hdmi_out0|res_img|process_1~55_combout\,
	datac => \hdmi_out0|res_img|process_1~77_combout\,
	datad => \hdmi_out0|res_img|process_1~64_combout\,
	combout => \hdmi_out0|res_img|rgb2~1_combout\);

-- Location: LCCOMB_X41_Y31_N8
\hdmi_out0|res_img|process_1~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~89_combout\ = (!\sepRes|Div0|auto_generated|divider|_~5_combout\ & ((\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\) # ((\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ & 
-- \sepRes|Div0|auto_generated|divider|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \sepRes|Div0|auto_generated|divider|_~4_combout\,
	datac => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	datad => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	combout => \hdmi_out0|res_img|process_1~89_combout\);

-- Location: LCCOMB_X41_Y31_N22
\hdmi_out0|res_img|process_1~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~90_combout\ = ((\hdmi_out0|res_img|process_1~89_combout\ & ((!\hdmi_out0|res_img|process_1~44_combout\) # (!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\)))) # (!\eror~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \hdmi_out0|res_img|process_1~89_combout\,
	datac => \eror~1_combout\,
	datad => \hdmi_out0|res_img|process_1~44_combout\,
	combout => \hdmi_out0|res_img|process_1~90_combout\);

-- Location: LCCOMB_X42_Y31_N6
\hdmi_out0|res_img|process_1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~86_combout\ = (\hdmi_out0|res_img|h_count\(2)) # ((\hdmi_out0|res_img|h_count\(3)) # ((\hdmi_out0|res_img|h_count\(1) & \hdmi_out0|res_img|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(2),
	datab => \hdmi_out0|res_img|h_count\(1),
	datac => \hdmi_out0|res_img|h_count\(3),
	datad => \hdmi_out0|res_img|h_count\(0),
	combout => \hdmi_out0|res_img|process_1~86_combout\);

-- Location: LCCOMB_X41_Y30_N12
\hdmi_out0|res_img|process_1~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~87_combout\ = (\hdmi_out0|res_img|h_count\(8) & (\hdmi_out0|res_img|h_count\(7) & (!\hdmi_out0|res_img|LessThan17~0_combout\ & \hdmi_out0|res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|LessThan17~0_combout\,
	datad => \hdmi_out0|res_img|h_count\(6),
	combout => \hdmi_out0|res_img|process_1~87_combout\);

-- Location: LCCOMB_X41_Y30_N2
\hdmi_out0|res_img|process_1~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~88_combout\ = (\hdmi_out0|res_img|h_count\(9)) # (((\hdmi_out0|res_img|process_1~36_combout\ & \hdmi_out0|res_img|process_1~86_combout\)) # (!\hdmi_out0|res_img|process_1~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~36_combout\,
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|process_1~86_combout\,
	datad => \hdmi_out0|res_img|process_1~87_combout\,
	combout => \hdmi_out0|res_img|process_1~88_combout\);

-- Location: LCCOMB_X41_Y31_N4
\hdmi_out0|res_img|process_1~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~91_combout\ = (\hdmi_out0|res_img|process_1~90_combout\ & (((\hdmi_out0|res_img|process_1~67_combout\ & !\hdmi_out0|res_img|process_1~88_combout\)) # (!\hdmi_out0|res_img|process_1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~44_combout\,
	datab => \hdmi_out0|res_img|process_1~67_combout\,
	datac => \hdmi_out0|res_img|process_1~90_combout\,
	datad => \hdmi_out0|res_img|process_1~88_combout\,
	combout => \hdmi_out0|res_img|process_1~91_combout\);

-- Location: LCCOMB_X41_Y31_N12
\hdmi_out0|res_img|LessThan32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan32~1_combout\ = (!\hdmi_out0|res_img|h_count\(4) & \hdmi_out0|res_img|LessThan32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|h_count\(4),
	datad => \hdmi_out0|res_img|LessThan32~0_combout\,
	combout => \hdmi_out0|res_img|LessThan32~1_combout\);

-- Location: LCCOMB_X42_Y30_N18
\hdmi_out0|res_img|process_1~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~81_combout\ = (\eror~1_combout\ & (\hdmi_out0|res_img|h_count\(9) & (\hdmi_out0|res_img|LessThan0~0_combout\ & \hdmi_out0|res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~1_combout\,
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|LessThan0~0_combout\,
	datad => \hdmi_out0|res_img|h_count\(6),
	combout => \hdmi_out0|res_img|process_1~81_combout\);

-- Location: LCCOMB_X41_Y31_N30
\hdmi_out0|res_img|process_1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~82_combout\ = (\hdmi_out0|res_img|LessThan20~0_combout\ & (\hdmi_out0|res_img|process_1~81_combout\ & ((\hdmi_out0|res_img|h_count\(5)) # (!\hdmi_out0|res_img|LessThan32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan32~1_combout\,
	datab => \hdmi_out0|res_img|h_count\(5),
	datac => \hdmi_out0|res_img|LessThan20~0_combout\,
	datad => \hdmi_out0|res_img|process_1~81_combout\,
	combout => \hdmi_out0|res_img|process_1~82_combout\);

-- Location: LCCOMB_X39_Y31_N24
\hdmi_out0|res_img|LessThan28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan28~6_combout\ = ((\hdmi_out0|res_img|LessThan28~5_combout\) # (!\hdmi_out0|res_img|v_count\(8))) # (!\hdmi_out0|res_img|v_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(7),
	datac => \hdmi_out0|res_img|LessThan28~5_combout\,
	datad => \hdmi_out0|res_img|v_count\(8),
	combout => \hdmi_out0|res_img|LessThan28~6_combout\);

-- Location: LCCOMB_X41_Y31_N28
\hdmi_out0|res_img|process_1~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~83_combout\ = (!\sepRes|Div0|auto_generated|divider|_~5_combout\ & (\hdmi_out0|res_img|LessThan28~6_combout\ & ((\hdmi_out0|res_img|process_1~66_combout\) # (\hdmi_out0|res_img|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~66_combout\,
	datab => \hdmi_out0|res_img|v_count\(9),
	datac => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	datad => \hdmi_out0|res_img|LessThan28~6_combout\,
	combout => \hdmi_out0|res_img|process_1~83_combout\);

-- Location: LCCOMB_X41_Y31_N14
\hdmi_out0|res_img|process_1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~84_combout\ = (\hdmi_out0|res_img|process_1~82_combout\ & (\hdmi_out0|res_img|process_1~83_combout\ & ((\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\) # (\sepRes|Div0|auto_generated|divider|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \sepRes|Div0|auto_generated|divider|_~4_combout\,
	datac => \hdmi_out0|res_img|process_1~82_combout\,
	datad => \hdmi_out0|res_img|process_1~83_combout\,
	combout => \hdmi_out0|res_img|process_1~84_combout\);

-- Location: LCCOMB_X39_Y31_N0
\hdmi_out0|res_img|process_1~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~106_combout\ = (\hdmi_out0|res_img|v_count\(8) & ((\hdmi_out0|res_img|process_1~57_combout\) # ((\hdmi_out0|res_img|LessThan28~5_combout\ & \hdmi_out0|res_img|process_1~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan28~5_combout\,
	datab => \hdmi_out0|res_img|v_count\(8),
	datac => \hdmi_out0|res_img|process_1~57_combout\,
	datad => \hdmi_out0|res_img|process_1~51_combout\,
	combout => \hdmi_out0|res_img|process_1~106_combout\);

-- Location: LCCOMB_X46_Y34_N22
\hdmi_out0|res_img|Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal5~2_combout\ = (\choix_d0|Mux0~5_combout\ & (!\sepRes|Div0|auto_generated|divider|op_1~6_combout\ & (\mode~input_o\ & \sepRes|Div0|auto_generated|divider|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~5_combout\,
	datab => \sepRes|Div0|auto_generated|divider|op_1~6_combout\,
	datac => \mode~input_o\,
	datad => \sepRes|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \hdmi_out0|res_img|Equal5~2_combout\);

-- Location: LCCOMB_X41_Y31_N24
\hdmi_out0|res_img|process_1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~78_combout\ = (\sepRes|Div0|auto_generated|divider|_~5_combout\ & (\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\)) # (!\sepRes|Div0|auto_generated|divider|_~5_combout\ & 
-- (\sepRes|Div0|auto_generated|divider|_~4_combout\ & ((\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\) # (\hdmi_out0|res_img|process_1~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	datab => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datac => \sepRes|Div0|auto_generated|divider|_~4_combout\,
	datad => \hdmi_out0|res_img|process_1~57_combout\,
	combout => \hdmi_out0|res_img|process_1~78_combout\);

-- Location: LCCOMB_X41_Y31_N18
\hdmi_out0|res_img|process_1~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~79_combout\ = (\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & (((!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ & \hdmi_out0|res_img|Equal5~2_combout\)) # 
-- (!\hdmi_out0|res_img|process_1~78_combout\))) # (!\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ & (\hdmi_out0|res_img|Equal5~2_combout\)) # 
-- (!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ & ((\hdmi_out0|res_img|process_1~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datac => \hdmi_out0|res_img|Equal5~2_combout\,
	datad => \hdmi_out0|res_img|process_1~78_combout\,
	combout => \hdmi_out0|res_img|process_1~79_combout\);

-- Location: LCCOMB_X40_Y31_N28
\hdmi_out0|res_img|process_1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~80_combout\ = (\hdmi_out0|res_img|process_1~106_combout\ & ((\hdmi_out0|res_img|process_1~79_combout\) # (!\eror~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eror~1_combout\,
	datac => \hdmi_out0|res_img|process_1~106_combout\,
	datad => \hdmi_out0|res_img|process_1~79_combout\,
	combout => \hdmi_out0|res_img|process_1~80_combout\);

-- Location: LCCOMB_X40_Y31_N30
\hdmi_out0|res_img|process_1~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~85_combout\ = (!\hdmi_out0|res_img|v_count\(9) & ((\hdmi_out0|res_img|process_1~84_combout\) # (\hdmi_out0|res_img|process_1~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(9),
	datac => \hdmi_out0|res_img|process_1~84_combout\,
	datad => \hdmi_out0|res_img|process_1~80_combout\,
	combout => \hdmi_out0|res_img|process_1~85_combout\);

-- Location: LCCOMB_X45_Y31_N18
\hdmi_out0|res_img|process_1~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~92_combout\ = (!\sepRes|Div0|auto_generated|divider|_~5_combout\ & ((\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & ((\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\) # 
-- (!\sepRes|Div0|auto_generated|divider|_~4_combout\))) # (!\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\ & (\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\ $ (\sepRes|Div0|auto_generated|divider|_~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \sepRes|Div0|auto_generated|divider|_~5_combout\,
	datac => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datad => \sepRes|Div0|auto_generated|divider|_~4_combout\,
	combout => \hdmi_out0|res_img|process_1~92_combout\);

-- Location: LCCOMB_X45_Y31_N20
\hdmi_out0|res_img|process_1~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~93_combout\ = ((\hdmi_out0|res_img|Equal5~2_combout\ & ((!\sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\) # (!\sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\)))) # (!\eror~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sepRes|Div0|auto_generated|divider|quotient[1]~5_combout\,
	datab => \eror~1_combout\,
	datac => \sepRes|Div0|auto_generated|divider|quotient[0]~4_combout\,
	datad => \hdmi_out0|res_img|Equal5~2_combout\,
	combout => \hdmi_out0|res_img|process_1~93_combout\);

-- Location: LCCOMB_X41_Y31_N6
\hdmi_out0|res_img|process_1~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~94_combout\ = (\hdmi_out0|res_img|process_1~92_combout\ & ((\hdmi_out0|res_img|process_1~82_combout\) # ((\hdmi_out0|res_img|process_1~93_combout\ & !\hdmi_out0|res_img|process_1~88_combout\)))) # 
-- (!\hdmi_out0|res_img|process_1~92_combout\ & (\hdmi_out0|res_img|process_1~93_combout\ & ((!\hdmi_out0|res_img|process_1~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~92_combout\,
	datab => \hdmi_out0|res_img|process_1~93_combout\,
	datac => \hdmi_out0|res_img|process_1~82_combout\,
	datad => \hdmi_out0|res_img|process_1~88_combout\,
	combout => \hdmi_out0|res_img|process_1~94_combout\);

-- Location: LCCOMB_X40_Y31_N4
\hdmi_out0|res_img|process_1~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~95_combout\ = (\hdmi_out0|res_img|process_1~91_combout\) # ((\hdmi_out0|res_img|process_1~85_combout\) # ((\hdmi_out0|res_img|process_1~60_combout\ & \hdmi_out0|res_img|process_1~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~91_combout\,
	datab => \hdmi_out0|res_img|process_1~60_combout\,
	datac => \hdmi_out0|res_img|process_1~85_combout\,
	datad => \hdmi_out0|res_img|process_1~94_combout\,
	combout => \hdmi_out0|res_img|process_1~95_combout\);

-- Location: LCCOMB_X40_Y30_N26
\hdmi_out0|res_img|process_1~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~98_combout\ = (\hdmi_out0|res_img|v_count\(8) & (!\hdmi_out0|res_img|v_count\(9) & ((\hdmi_out0|res_img|process_1~57_combout\) # (\hdmi_out0|res_img|process_1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(8),
	datab => \hdmi_out0|res_img|process_1~57_combout\,
	datac => \hdmi_out0|res_img|v_count\(9),
	datad => \hdmi_out0|res_img|process_1~52_combout\,
	combout => \hdmi_out0|res_img|process_1~98_combout\);

-- Location: LCCOMB_X40_Y30_N24
\hdmi_out0|res_img|process_1~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~97_combout\ = (\choix_d0|Mux0~5_combout\ & (\mode~input_o\ & \hdmi_out0|res_img|process_1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~5_combout\,
	datac => \mode~input_o\,
	datad => \hdmi_out0|res_img|process_1~58_combout\,
	combout => \hdmi_out0|res_img|process_1~97_combout\);

-- Location: LCCOMB_X40_Y30_N8
\hdmi_out0|res_img|rgb2[12]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~7_combout\ = (\hdmi_out0|res_img|h_count\(9)) # ((\hdmi_out0|res_img|LessThan9~1_combout\) # (!\hdmi_out0|res_img|LessThan11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|LessThan9~1_combout\,
	datad => \hdmi_out0|res_img|LessThan11~0_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~7_combout\);

-- Location: LCCOMB_X41_Y30_N22
\hdmi_out0|res_img|process_1~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~99_combout\ = (\hdmi_out0|res_img|h_count\(9) & (((\hdmi_out0|res_img|h_count\(6) & !\hdmi_out0|res_img|LessThan20~0_combout\)) # (!\hdmi_out0|res_img|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(6),
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|LessThan0~0_combout\,
	datad => \hdmi_out0|res_img|LessThan20~0_combout\,
	combout => \hdmi_out0|res_img|process_1~99_combout\);

-- Location: LCCOMB_X41_Y30_N8
\hdmi_out0|res_img|process_1~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~100_combout\ = (\hdmi_out0|res_img|process_1~99_combout\) # ((!\hdmi_out0|res_img|h_count\(9) & !\hdmi_out0|res_img|process_1~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|process_1~99_combout\,
	datad => \hdmi_out0|res_img|process_1~87_combout\,
	combout => \hdmi_out0|res_img|process_1~100_combout\);

-- Location: LCCOMB_X40_Y30_N4
\hdmi_out0|res_img|rgb2[12]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~9_combout\ = (\hdmi_out0|res_img|rgb2[12]~5_combout\ & (\hdmi_out0|res_img|rgb2[12]~7_combout\)) # (!\hdmi_out0|res_img|rgb2[12]~5_combout\ & ((\hdmi_out0|res_img|process_1~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|rgb2[12]~7_combout\,
	datac => \hdmi_out0|res_img|process_1~100_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~5_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~9_combout\);

-- Location: LCCOMB_X41_Y30_N4
\hdmi_out0|res_img|rgb2[12]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~6_combout\ = ((\hdmi_out0|res_img|h_count\(9)) # (!\hdmi_out0|res_img|rgb2[12]~2_combout\)) # (!\hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|rgb2[12]~2_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~6_combout\);

-- Location: LCCOMB_X40_Y30_N18
\hdmi_out0|res_img|rgb2[12]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~8_combout\ = (\hdmi_out0|res_img|rgb2[12]~5_combout\ & ((\hdmi_out0|res_img|rgb2[12]~6_combout\) # (!\hdmi_out0|res_img|rgb2[12]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2[12]~6_combout\,
	datac => \hdmi_out0|res_img|rgb2[12]~7_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~5_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~8_combout\);

-- Location: LCCOMB_X40_Y30_N2
\hdmi_out0|res_img|rgb2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~10_combout\ = (\hdmi_out0|res_img|rgb2[12]~9_combout\ & (((\hdmi_out0|res_img|process_1~97_combout\ & \hdmi_out0|res_img|rgb2[12]~8_combout\)))) # (!\hdmi_out0|res_img|rgb2[12]~9_combout\ & 
-- ((\hdmi_out0|res_img|process_1~98_combout\) # ((!\hdmi_out0|res_img|rgb2[12]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~98_combout\,
	datab => \hdmi_out0|res_img|process_1~97_combout\,
	datac => \hdmi_out0|res_img|rgb2[12]~9_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~8_combout\,
	combout => \hdmi_out0|res_img|rgb2~10_combout\);

-- Location: LCCOMB_X40_Y31_N10
\hdmi_out0|res_img|rgb2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~11_combout\ = (\hdmi_out0|res_img|rgb2[12]~5_combout\ & (((\hdmi_out0|res_img|rgb2~10_combout\)))) # (!\hdmi_out0|res_img|rgb2[12]~5_combout\ & ((\hdmi_out0|res_img|rgb2~10_combout\ & ((\hdmi_out0|res_img|process_1~95_combout\))) # 
-- (!\hdmi_out0|res_img|rgb2~10_combout\ & (!\hdmi_out0|res_img|rgb2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2~1_combout\,
	datab => \hdmi_out0|res_img|rgb2[12]~5_combout\,
	datac => \hdmi_out0|res_img|process_1~95_combout\,
	datad => \hdmi_out0|res_img|rgb2~10_combout\,
	combout => \hdmi_out0|res_img|rgb2~11_combout\);

-- Location: LCCOMB_X40_Y31_N20
\hdmi_out0|res_img|rgb2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~18_combout\ = (\hdmi_out0|res_img|rgb2[12]~17_combout\ & \hdmi_out0|res_img|rgb2~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|rgb2[12]~17_combout\,
	datad => \hdmi_out0|res_img|rgb2~11_combout\,
	combout => \hdmi_out0|res_img|rgb2~18_combout\);

-- Location: LCCOMB_X41_Y31_N20
\hdmi_out0|res_img|rgb2[12]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~19_combout\ = (\hdmi_out0|res_img|process_1~99_combout\) # ((!\hdmi_out0|res_img|h_count\(8) & !\hdmi_out0|res_img|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(8),
	datac => \hdmi_out0|res_img|h_count\(9),
	datad => \hdmi_out0|res_img|process_1~99_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~19_combout\);

-- Location: LCCOMB_X41_Y30_N10
\hdmi_out0|res_img|rgb2[12]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~20_combout\ = (\hdmi_out0|res_img|h_count\(9)) # ((\hdmi_out0|res_img|LessThan11~0_combout\ & (\hdmi_out0|res_img|LessThan9~1_combout\)) # (!\hdmi_out0|res_img|LessThan11~0_combout\ & 
-- ((\hdmi_out0|res_img|rgb2[12]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan11~0_combout\,
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|LessThan9~1_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~3_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~20_combout\);

-- Location: LCCOMB_X42_Y30_N20
\hdmi_out0|res_img|rgb2[12]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~21_combout\ = ((\hdmi_out0|res_img|process_1~103_combout\ & (\hdmi_out0|res_img|h_count\(8) & \hdmi_out0|res_img|LessThan34~1_combout\))) # (!\hdmi_out0|res_img|process_1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~103_combout\,
	datab => \hdmi_out0|res_img|h_count\(8),
	datac => \hdmi_out0|res_img|process_1~40_combout\,
	datad => \hdmi_out0|res_img|LessThan34~1_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~21_combout\);

-- Location: LCCOMB_X42_Y30_N26
\hdmi_out0|res_img|rgb2[12]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~22_combout\ = (\hdmi_out0|res_img|h_count\(9) & ((\hdmi_out0|res_img|rgb2[12]~21_combout\) # (!\hdmi_out0|res_img|process_1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|rgb2[12]~21_combout\,
	datac => \hdmi_out0|res_img|h_count\(9),
	datad => \hdmi_out0|res_img|process_1~39_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~22_combout\);

-- Location: LCCOMB_X40_Y31_N0
\hdmi_out0|res_img|rgb2[12]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~23_combout\ = (((\hdmi_out0|res_img|rgb2[12]~22_combout\) # (!\hdmi_out0|res_img|rgb2[12]~14_combout\)) # (!\hdmi_out0|res_img|rgb2[12]~20_combout\)) # (!\hdmi_out0|res_img|rgb2[12]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2[12]~19_combout\,
	datab => \hdmi_out0|res_img|rgb2[12]~20_combout\,
	datac => \hdmi_out0|res_img|rgb2[12]~22_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~14_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~23_combout\);

-- Location: FF_X40_Y31_N21
\hdmi_out0|res_img|rgb2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|rgb2~18_combout\,
	ena => \hdmi_out0|res_img|rgb2[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|rgb2\(13));

-- Location: LCCOMB_X17_Y8_N4
\hdmi_out0|res_img|r_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|r_out[4]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|rgb2\(13),
	combout => \hdmi_out0|res_img|r_out[4]~feeder_combout\);

-- Location: FF_X17_Y8_N5
\hdmi_out0|res_img|r_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|r_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|r_out\(4));

-- Location: LCCOMB_X40_Y30_N30
\hdmi_out0|res_img|rgb2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~24_combout\ = (\hdmi_out0|res_img|rgb2[12]~9_combout\ & (((!\hdmi_out0|res_img|rgb2[12]~8_combout\) # (!\hdmi_out0|res_img|process_1~97_combout\)))) # (!\hdmi_out0|res_img|rgb2[12]~9_combout\ & 
-- (!\hdmi_out0|res_img|process_1~98_combout\ & ((\hdmi_out0|res_img|rgb2[12]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~98_combout\,
	datab => \hdmi_out0|res_img|process_1~97_combout\,
	datac => \hdmi_out0|res_img|rgb2[12]~9_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~8_combout\,
	combout => \hdmi_out0|res_img|rgb2~24_combout\);

-- Location: LCCOMB_X40_Y31_N2
\hdmi_out0|res_img|rgb2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~25_combout\ = (\hdmi_out0|res_img|rgb2[12]~5_combout\ & (((\hdmi_out0|res_img|rgb2~24_combout\)))) # (!\hdmi_out0|res_img|rgb2[12]~5_combout\ & ((\hdmi_out0|res_img|rgb2~24_combout\ & (\hdmi_out0|res_img|rgb2~1_combout\)) # 
-- (!\hdmi_out0|res_img|rgb2~24_combout\ & ((!\hdmi_out0|res_img|process_1~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2~1_combout\,
	datab => \hdmi_out0|res_img|rgb2[12]~5_combout\,
	datac => \hdmi_out0|res_img|process_1~95_combout\,
	datad => \hdmi_out0|res_img|rgb2~24_combout\,
	combout => \hdmi_out0|res_img|rgb2~25_combout\);

-- Location: LCCOMB_X40_Y31_N14
\hdmi_out0|res_img|rgb2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~26_combout\ = (\hdmi_out0|res_img|rgb2[12]~17_combout\ & ((\hdmi_out0|res_img|rgb2~25_combout\))) # (!\hdmi_out0|res_img|rgb2[12]~17_combout\ & (\hdmi_out0|res_img|de_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|de_1~q\,
	datac => \hdmi_out0|res_img|rgb2[12]~17_combout\,
	datad => \hdmi_out0|res_img|rgb2~25_combout\,
	combout => \hdmi_out0|res_img|rgb2~26_combout\);

-- Location: FF_X40_Y31_N15
\hdmi_out0|res_img|rgb2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|rgb2~26_combout\,
	ena => \hdmi_out0|res_img|rgb2[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|rgb2\(12));

-- Location: LCCOMB_X1_Y15_N8
\hdmi_out0|res_img|r_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|r_out[5]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(12),
	combout => \hdmi_out0|res_img|r_out[5]~feeder_combout\);

-- Location: FF_X1_Y15_N9
\hdmi_out0|res_img|r_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|r_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|r_out\(5));

-- Location: LCCOMB_X17_Y8_N18
\hdmi_out0|res_img|r_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|r_out[6]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|rgb2\(13),
	combout => \hdmi_out0|res_img|r_out[6]~feeder_combout\);

-- Location: FF_X17_Y8_N19
\hdmi_out0|res_img|r_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|r_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|r_out\(6));

-- Location: LCCOMB_X39_Y30_N8
\hdmi_out0|res_img|rgb2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~27_combout\ = (\hdmi_out0|res_img|rgb2[12]~22_combout\) # ((\hdmi_out0|res_img|rgb2\(6)) # ((!\hdmi_out0|res_img|rgb2[12]~13_combout\) # (!\hdmi_out0|res_img|process_1~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2[12]~22_combout\,
	datab => \hdmi_out0|res_img|rgb2\(6),
	datac => \hdmi_out0|res_img|process_1~100_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~13_combout\,
	combout => \hdmi_out0|res_img|rgb2~27_combout\);

-- Location: LCCOMB_X40_Y30_N16
\hdmi_out0|res_img|rgb2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~28_combout\ = ((\hdmi_out0|res_img|h_count\(8) & ((\hdmi_out0|res_img|rgb2[12]~2_combout\) # (\hdmi_out0|res_img|rgb2~16_combout\)))) # (!\hdmi_out0|res_img|rgb2[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2[12]~2_combout\,
	datab => \hdmi_out0|res_img|rgb2~16_combout\,
	datac => \hdmi_out0|res_img|h_count\(8),
	datad => \hdmi_out0|res_img|rgb2[12]~4_combout\,
	combout => \hdmi_out0|res_img|rgb2~28_combout\);

-- Location: LCCOMB_X39_Y30_N28
\hdmi_out0|res_img|rgb2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~29_combout\ = (\hdmi_out0|res_img|de_1~q\ & ((\hdmi_out0|res_img|rgb2~27_combout\) # ((!\hdmi_out0|res_img|h_count\(9) & \hdmi_out0|res_img|rgb2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|de_1~q\,
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|rgb2~27_combout\,
	datad => \hdmi_out0|res_img|rgb2~28_combout\,
	combout => \hdmi_out0|res_img|rgb2~29_combout\);

-- Location: FF_X39_Y30_N29
\hdmi_out0|res_img|rgb2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|rgb2~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|rgb2\(6));

-- Location: LCCOMB_X17_Y8_N16
\hdmi_out0|res_img|r_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|r_out[7]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(6),
	combout => \hdmi_out0|res_img|r_out[7]~feeder_combout\);

-- Location: FF_X17_Y8_N17
\hdmi_out0|res_img|r_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|r_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|r_out\(7));

-- Location: LCCOMB_X1_Y15_N18
\hdmi_out0|res_img|g_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|g_out[4]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(12),
	combout => \hdmi_out0|res_img|g_out[4]~feeder_combout\);

-- Location: FF_X1_Y15_N19
\hdmi_out0|res_img|g_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|g_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|g_out\(4));

-- Location: LCCOMB_X11_Y15_N16
\hdmi_out0|res_img|g_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|g_out[5]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(13),
	combout => \hdmi_out0|res_img|g_out[5]~feeder_combout\);

-- Location: FF_X11_Y15_N17
\hdmi_out0|res_img|g_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|g_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|g_out\(5));

-- Location: LCCOMB_X4_Y8_N8
\hdmi_out0|res_img|g_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|g_out[6]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|rgb2\(6),
	combout => \hdmi_out0|res_img|g_out[6]~feeder_combout\);

-- Location: FF_X4_Y8_N9
\hdmi_out0|res_img|g_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|g_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|g_out\(6));

-- Location: LCCOMB_X1_Y15_N20
\hdmi_out0|res_img|g_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|g_out[7]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(12),
	combout => \hdmi_out0|res_img|g_out[7]~feeder_combout\);

-- Location: FF_X1_Y15_N21
\hdmi_out0|res_img|g_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|g_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|g_out\(7));

-- Location: LCCOMB_X4_Y8_N2
\hdmi_out0|res_img|b_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|b_out[4]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|rgb2\(6),
	combout => \hdmi_out0|res_img|b_out[4]~feeder_combout\);

-- Location: FF_X4_Y8_N3
\hdmi_out0|res_img|b_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|b_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|b_out\(4));

-- Location: LCCOMB_X1_Y15_N14
\hdmi_out0|res_img|b_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|b_out[5]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(12),
	combout => \hdmi_out0|res_img|b_out[5]~feeder_combout\);

-- Location: FF_X1_Y15_N15
\hdmi_out0|res_img|b_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|b_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|b_out\(5));

-- Location: LCCOMB_X4_Y8_N0
\hdmi_out0|res_img|b_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|b_out[6]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|rgb2\(6),
	combout => \hdmi_out0|res_img|b_out[6]~feeder_combout\);

-- Location: FF_X4_Y8_N1
\hdmi_out0|res_img|b_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|b_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|b_out\(6));

-- Location: LCCOMB_X1_Y15_N4
\hdmi_out0|res_img|b_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|b_out[7]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(12),
	combout => \hdmi_out0|res_img|b_out[7]~feeder_combout\);

-- Location: FF_X1_Y15_N5
\hdmi_out0|res_img|b_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|b_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|b_out\(7));

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

ww_opeACLA(0) <= \opeACLA[0]~output_o\;

ww_opeACLA(1) <= \opeACLA[1]~output_o\;

ww_opeACLA(2) <= \opeACLA[2]~output_o\;

ww_opeACLA(3) <= \opeACLA[3]~output_o\;

ww_opeBCLA(0) <= \opeBCLA[0]~output_o\;

ww_opeBCLA(1) <= \opeBCLA[1]~output_o\;

ww_opeBCLA(2) <= \opeBCLA[2]~output_o\;

ww_opeBCLA(3) <= \opeBCLA[3]~output_o\;

ww_cinCLA <= \cinCLA~output_o\;

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

ww_modesOut(0) <= \modesOut[0]~output_o\;

ww_modesOut(1) <= \modesOut[1]~output_o\;

ww_modesOut(2) <= \modesOut[2]~output_o\;

ww_modesOut(3) <= \modesOut[3]~output_o\;

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


