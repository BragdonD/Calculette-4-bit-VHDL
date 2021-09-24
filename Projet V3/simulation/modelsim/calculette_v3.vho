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

-- DATE "09/24/2021 20:20:22"

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
	CLA : IN std_logic;
	reset : IN std_logic;
	operation : IN std_logic;
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
-- HEX0[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modesOut[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modesOut[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modesOut[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modesOut[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_vs	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_hs	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLA	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_CLA : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_operation : std_logic;
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
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \CLA~input_o\ : std_logic;
SIGNAL \operation~input_o\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \hdmi_out0|clk_25~0_combout\ : std_logic;
SIGNAL \hdmi_out0|clk_25~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|clk_25~q\ : std_logic;
SIGNAL \hdmi_out0|clk_25~clkctrl_outclk\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[0]~10_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[1]~13\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[2]~14_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[0]~10_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[0]~11\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[1]~12_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[1]~13\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[2]~14_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[2]~15\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[3]~16_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[3]~17\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[4]~18_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal0~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[4]~19\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[5]~20_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[5]~21\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[6]~22_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[6]~23\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[7]~24_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal0~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[7]~25\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[8]~26_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[8]~27\ : std_logic;
SIGNAL \hdmi_out0|res_img|h_count[9]~28_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal0~0_combout\ : std_logic;
SIGNAL \hdmi_out0|reset_a~q\ : std_logic;
SIGNAL \hdmi_out0|reset_b~0_combout\ : std_logic;
SIGNAL \hdmi_out0|reset_b~q\ : std_logic;
SIGNAL \hdmi_out0|reset_c~0_combout\ : std_logic;
SIGNAL \hdmi_out0|reset_c~q\ : std_logic;
SIGNAL \hdmi_out0|reset_d~0_combout\ : std_logic;
SIGNAL \hdmi_out0|reset_d~q\ : std_logic;
SIGNAL \hdmi_out0|reset_e~0_combout\ : std_logic;
SIGNAL \hdmi_out0|reset_e~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[2]~17_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[2]~15\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[3]~18_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[3]~19\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[4]~20_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[4]~21\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[5]~22_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[5]~23\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[6]~24_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[6]~25\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[7]~26_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[7]~27\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[8]~28_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan2~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan28~8_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[8]~29\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[9]~30_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal1~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[2]~16_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[0]~11\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count[1]~12_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan28~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~8_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan28~7_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan1~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|vs_1~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|vs_2~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|vs_2~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|vs_out~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|vs_out~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan0~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|hs_1~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|hs_2~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|hs_2~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|hs_out~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|hs_out~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan34~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan20~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan29~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan29~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan7~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan9~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan9~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~9_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan11~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan34~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~3_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~5_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan2~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan2~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~80_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan7~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~81_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~82_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|de_1~q\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan17~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~6_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan23~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan23~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~6_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~7_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan28~5_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~7_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~30_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~31_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan26~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~36_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~58_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~59_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \controlMulti|erorTotale~0_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \multi0|Res[3]~0_combout\ : std_logic;
SIGNAL \controlMulti|erorTotale~1_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \controlMulti|erorTotale~2_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \controlMulti|erorTotale~3_combout\ : std_logic;
SIGNAL \choix_d0|Mux0~1_combout\ : std_logic;
SIGNAL \add0|Res[0]~1\ : std_logic;
SIGNAL \add0|Res[1]~3\ : std_logic;
SIGNAL \add0|Res[2]~5\ : std_logic;
SIGNAL \add0|Res[3]~7\ : std_logic;
SIGNAL \add0|Add0~0_combout\ : std_logic;
SIGNAL \controlAdd|erorTotale~0_combout\ : std_logic;
SIGNAL \add0|Res[3]~6_combout\ : std_logic;
SIGNAL \controlAdd|erorTotale~combout\ : std_logic;
SIGNAL \choix_d0|Mux0~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|int_res~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~37_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~57_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan0~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~60_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~61_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~62_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~11_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~13_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~10_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~12_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~14_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan26~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~38_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~10_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~71_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~72_combout\ : std_logic;
SIGNAL \choix_d0|Mux3~0_combout\ : std_logic;
SIGNAL \choix_d0|Mux3~2_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \choix_d0|Mux1~0_combout\ : std_logic;
SIGNAL \add0|Res[2]~4_combout\ : std_logic;
SIGNAL \choix_d0|Mux1~1_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \choix_d0|Mux2~0_combout\ : std_logic;
SIGNAL \add0|Res[1]~2_combout\ : std_logic;
SIGNAL \choix_d0|Mux2~1_combout\ : std_logic;
SIGNAL \multi0|Mult1|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \multi0|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \choix_d0|Mux3~1_combout\ : std_logic;
SIGNAL \add0|Res[0]~0_combout\ : std_logic;
SIGNAL \choix_d0|Mux3~3_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~8_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|int_res~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~6_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~76_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal5~0_combout\ : std_logic;
SIGNAL \eror~0_combout\ : std_logic;
SIGNAL \eror~combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal4~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~77_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan32~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan32~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~63_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~64_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~78_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~16_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~83_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~15_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~17_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal2~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~74_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~70_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan28~6_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan31~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan31~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan31~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~52_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~73_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~75_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~66_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~85_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~67_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~68_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~69_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~65_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~86_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~87_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~79_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~15_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~11_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~12_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|LessThan29~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~13_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~14_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~8_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~1\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~3\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~5\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~7\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~8_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~6_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~4_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add3~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~1\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~3\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~5\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~7\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~9\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~11\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~13\ : std_logic;
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
SIGNAL \hdmi_out0|res_img|Add2~17_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~7_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~13_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~15_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~9_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~11_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal11~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~15\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add4~16_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~18\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~19_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~5_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~3_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~20\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~21_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal17~0_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal17~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~18_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~19_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Add2~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~20_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~21_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~22_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~23_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~24_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~27_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~28_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~25_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~26_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~29_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~32_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~33_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~34_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal11~1_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal11~2_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~35_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~39_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~41_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~42_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~43_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~40_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~44_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~45_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~46_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~47_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|Equal11~3_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~54_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~55_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~50_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~51_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~48_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~49_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~84_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~53_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|process_1~56_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~9_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~16_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~17_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~18_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~19_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~20_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2[12]~21_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|r_out[4]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~22_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~23_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~24_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|r_out[5]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|r_out[6]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~26_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~27_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~25_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|rgb2~28_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|r_out[7]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|g_out[4]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|g_out[5]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|g_out[6]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|g_out[7]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|b_out[4]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|b_out[5]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|b_out[6]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|b_out[7]~feeder_combout\ : std_logic;
SIGNAL \hdmi_out0|res_img|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \multi0|Mult1|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \hdmi_out0|res_img|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \hdmi_out0|res_img|r_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \multi0|Mult1|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \multi0|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \hdmi_out0|res_img|g_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hdmi_out0|res_img|b_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hdmi_out0|res_img|rgb2\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \multi0|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \multi0|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \multi0|Mult1|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);

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
ww_CLA <= CLA;
ww_reset <= reset;
ww_operation <= operation;
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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X38_Y0_N23
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
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

-- Location: IOOBUF_X46_Y54_N16
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

-- Location: IOOBUF_X54_Y54_N23
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

-- Location: IOOBUF_X56_Y54_N23
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

-- Location: IOOBUF_X34_Y39_N2
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

-- Location: IOOBUF_X36_Y39_N16
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

-- Location: IOOBUF_X51_Y54_N16
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

-- Location: IOOBUF_X46_Y54_N23
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

-- Location: IOOBUF_X54_Y54_N2
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

-- Location: IOOBUF_X49_Y54_N9
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

-- Location: IOOBUF_X49_Y54_N23
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

-- Location: IOOBUF_X51_Y54_N9
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

-- Location: IOOBUF_X56_Y54_N9
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

-- Location: IOOBUF_X49_Y54_N30
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

-- Location: IOOBUF_X56_Y54_N16
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

-- Location: IOOBUF_X46_Y54_N2
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

-- Location: IOOBUF_X49_Y54_N16
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

-- Location: IOOBUF_X46_Y54_N30
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

-- Location: IOIBUF_X36_Y39_N22
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

-- Location: IOIBUF_X46_Y54_N8
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

-- Location: IOIBUF_X54_Y54_N8
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

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X45_Y53_N24
\hdmi_out0|clk_25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|clk_25~0_combout\ = (!\hdmi_out0|clk_25~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|clk_25~q\,
	datad => \reset~input_o\,
	combout => \hdmi_out0|clk_25~0_combout\);

-- Location: LCCOMB_X45_Y53_N10
\hdmi_out0|clk_25~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|clk_25~feeder_combout\ = \hdmi_out0|clk_25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|clk_25~0_combout\,
	combout => \hdmi_out0|clk_25~feeder_combout\);

-- Location: FF_X45_Y53_N11
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

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X51_Y44_N0
\hdmi_out0|res_img|v_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[0]~10_combout\ = \hdmi_out0|res_img|v_count\(0) $ (VCC)
-- \hdmi_out0|res_img|v_count[0]~11\ = CARRY(\hdmi_out0|res_img|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(0),
	datad => VCC,
	combout => \hdmi_out0|res_img|v_count[0]~10_combout\,
	cout => \hdmi_out0|res_img|v_count[0]~11\);

-- Location: LCCOMB_X51_Y44_N2
\hdmi_out0|res_img|v_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[1]~12_combout\ = (\hdmi_out0|res_img|v_count\(1) & (!\hdmi_out0|res_img|v_count[0]~11\)) # (!\hdmi_out0|res_img|v_count\(1) & ((\hdmi_out0|res_img|v_count[0]~11\) # (GND)))
-- \hdmi_out0|res_img|v_count[1]~13\ = CARRY((!\hdmi_out0|res_img|v_count[0]~11\) # (!\hdmi_out0|res_img|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(1),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[0]~11\,
	combout => \hdmi_out0|res_img|v_count[1]~12_combout\,
	cout => \hdmi_out0|res_img|v_count[1]~13\);

-- Location: LCCOMB_X51_Y44_N4
\hdmi_out0|res_img|v_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[2]~14_combout\ = (\hdmi_out0|res_img|v_count\(2) & (\hdmi_out0|res_img|v_count[1]~13\ $ (GND))) # (!\hdmi_out0|res_img|v_count\(2) & (!\hdmi_out0|res_img|v_count[1]~13\ & VCC))
-- \hdmi_out0|res_img|v_count[2]~15\ = CARRY((\hdmi_out0|res_img|v_count\(2) & !\hdmi_out0|res_img|v_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(2),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[1]~13\,
	combout => \hdmi_out0|res_img|v_count[2]~14_combout\,
	cout => \hdmi_out0|res_img|v_count[2]~15\);

-- Location: LCCOMB_X46_Y45_N4
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

-- Location: FF_X46_Y45_N5
\hdmi_out0|res_img|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[0]~10_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(0));

-- Location: LCCOMB_X46_Y45_N6
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

-- Location: FF_X46_Y45_N7
\hdmi_out0|res_img|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[1]~12_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(1));

-- Location: LCCOMB_X46_Y45_N8
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

-- Location: FF_X46_Y45_N9
\hdmi_out0|res_img|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[2]~14_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(2));

-- Location: LCCOMB_X46_Y45_N10
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

-- Location: FF_X46_Y45_N11
\hdmi_out0|res_img|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[3]~16_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(3));

-- Location: LCCOMB_X46_Y45_N12
\hdmi_out0|res_img|h_count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[4]~18_combout\ = (\hdmi_out0|res_img|h_count\(4) & (\hdmi_out0|res_img|h_count[3]~17\ $ (GND))) # (!\hdmi_out0|res_img|h_count\(4) & (!\hdmi_out0|res_img|h_count[3]~17\ & VCC))
-- \hdmi_out0|res_img|h_count[4]~19\ = CARRY((\hdmi_out0|res_img|h_count\(4) & !\hdmi_out0|res_img|h_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(4),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[3]~17\,
	combout => \hdmi_out0|res_img|h_count[4]~18_combout\,
	cout => \hdmi_out0|res_img|h_count[4]~19\);

-- Location: FF_X46_Y45_N13
\hdmi_out0|res_img|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[4]~18_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(4));

-- Location: LCCOMB_X47_Y45_N22
\hdmi_out0|res_img|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal0~2_combout\ = (!\hdmi_out0|res_img|h_count\(4)) # (!\hdmi_out0|res_img|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(3),
	datad => \hdmi_out0|res_img|h_count\(4),
	combout => \hdmi_out0|res_img|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y45_N14
\hdmi_out0|res_img|h_count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[5]~20_combout\ = (\hdmi_out0|res_img|h_count\(5) & (!\hdmi_out0|res_img|h_count[4]~19\)) # (!\hdmi_out0|res_img|h_count\(5) & ((\hdmi_out0|res_img|h_count[4]~19\) # (GND)))
-- \hdmi_out0|res_img|h_count[5]~21\ = CARRY((!\hdmi_out0|res_img|h_count[4]~19\) # (!\hdmi_out0|res_img|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(5),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[4]~19\,
	combout => \hdmi_out0|res_img|h_count[5]~20_combout\,
	cout => \hdmi_out0|res_img|h_count[5]~21\);

-- Location: FF_X46_Y45_N15
\hdmi_out0|res_img|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[5]~20_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(5));

-- Location: LCCOMB_X46_Y45_N16
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

-- Location: FF_X46_Y45_N17
\hdmi_out0|res_img|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[6]~22_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(6));

-- Location: LCCOMB_X46_Y45_N18
\hdmi_out0|res_img|h_count[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[7]~24_combout\ = (\hdmi_out0|res_img|h_count\(7) & (!\hdmi_out0|res_img|h_count[6]~23\)) # (!\hdmi_out0|res_img|h_count\(7) & ((\hdmi_out0|res_img|h_count[6]~23\) # (GND)))
-- \hdmi_out0|res_img|h_count[7]~25\ = CARRY((!\hdmi_out0|res_img|h_count[6]~23\) # (!\hdmi_out0|res_img|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(7),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[6]~23\,
	combout => \hdmi_out0|res_img|h_count[7]~24_combout\,
	cout => \hdmi_out0|res_img|h_count[7]~25\);

-- Location: FF_X46_Y45_N19
\hdmi_out0|res_img|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[7]~24_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(7));

-- Location: LCCOMB_X47_Y45_N24
\hdmi_out0|res_img|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal0~1_combout\ = ((\hdmi_out0|res_img|h_count\(7)) # ((\hdmi_out0|res_img|h_count\(6)) # (\hdmi_out0|res_img|h_count\(5)))) # (!\hdmi_out0|res_img|h_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(2),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|h_count\(6),
	datad => \hdmi_out0|res_img|h_count\(5),
	combout => \hdmi_out0|res_img|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y45_N20
\hdmi_out0|res_img|h_count[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|h_count[8]~26_combout\ = (\hdmi_out0|res_img|h_count\(8) & (\hdmi_out0|res_img|h_count[7]~25\ $ (GND))) # (!\hdmi_out0|res_img|h_count\(8) & (!\hdmi_out0|res_img|h_count[7]~25\ & VCC))
-- \hdmi_out0|res_img|h_count[8]~27\ = CARRY((\hdmi_out0|res_img|h_count\(8) & !\hdmi_out0|res_img|h_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(8),
	datad => VCC,
	cin => \hdmi_out0|res_img|h_count[7]~25\,
	combout => \hdmi_out0|res_img|h_count[8]~26_combout\,
	cout => \hdmi_out0|res_img|h_count[8]~27\);

-- Location: FF_X46_Y45_N21
\hdmi_out0|res_img|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[8]~26_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(8));

-- Location: LCCOMB_X46_Y45_N22
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

-- Location: FF_X46_Y45_N23
\hdmi_out0|res_img|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|h_count[9]~28_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|h_count\(9));

-- Location: LCCOMB_X47_Y45_N30
\hdmi_out0|res_img|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal0~0_combout\ = (((!\hdmi_out0|res_img|h_count\(9)) # (!\hdmi_out0|res_img|h_count\(1))) # (!\hdmi_out0|res_img|h_count\(0))) # (!\hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(0),
	datac => \hdmi_out0|res_img|h_count\(1),
	datad => \hdmi_out0|res_img|h_count\(9),
	combout => \hdmi_out0|res_img|Equal0~0_combout\);

-- Location: FF_X47_Y44_N25
\hdmi_out0|reset_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|reset_a~q\);

-- Location: LCCOMB_X47_Y44_N6
\hdmi_out0|reset_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|reset_b~0_combout\ = (\reset~input_o\) # (\hdmi_out0|reset_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \hdmi_out0|reset_a~q\,
	combout => \hdmi_out0|reset_b~0_combout\);

-- Location: FF_X47_Y44_N7
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

-- Location: LCCOMB_X47_Y44_N28
\hdmi_out0|reset_c~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|reset_c~0_combout\ = (\reset~input_o\) # (\hdmi_out0|reset_b~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \hdmi_out0|reset_b~q\,
	combout => \hdmi_out0|reset_c~0_combout\);

-- Location: FF_X47_Y44_N29
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

-- Location: LCCOMB_X47_Y44_N18
\hdmi_out0|reset_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|reset_d~0_combout\ = (\reset~input_o\) # (\hdmi_out0|reset_c~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \hdmi_out0|reset_c~q\,
	combout => \hdmi_out0|reset_d~0_combout\);

-- Location: FF_X47_Y44_N19
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

-- Location: LCCOMB_X47_Y44_N10
\hdmi_out0|reset_e~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|reset_e~0_combout\ = (\reset~input_o\) # (\hdmi_out0|reset_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \hdmi_out0|reset_d~q\,
	combout => \hdmi_out0|reset_e~0_combout\);

-- Location: FF_X47_Y44_N11
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

-- Location: LCCOMB_X47_Y44_N0
\hdmi_out0|res_img|v_count[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[2]~17_combout\ = (\hdmi_out0|reset_e~q\) # ((!\hdmi_out0|res_img|Equal0~2_combout\ & (!\hdmi_out0|res_img|Equal0~1_combout\ & !\hdmi_out0|res_img|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal0~2_combout\,
	datab => \hdmi_out0|res_img|Equal0~1_combout\,
	datac => \hdmi_out0|res_img|Equal0~0_combout\,
	datad => \hdmi_out0|reset_e~q\,
	combout => \hdmi_out0|res_img|v_count[2]~17_combout\);

-- Location: FF_X51_Y44_N5
\hdmi_out0|res_img|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[2]~14_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(2));

-- Location: LCCOMB_X51_Y44_N6
\hdmi_out0|res_img|v_count[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[3]~18_combout\ = (\hdmi_out0|res_img|v_count\(3) & (!\hdmi_out0|res_img|v_count[2]~15\)) # (!\hdmi_out0|res_img|v_count\(3) & ((\hdmi_out0|res_img|v_count[2]~15\) # (GND)))
-- \hdmi_out0|res_img|v_count[3]~19\ = CARRY((!\hdmi_out0|res_img|v_count[2]~15\) # (!\hdmi_out0|res_img|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(3),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[2]~15\,
	combout => \hdmi_out0|res_img|v_count[3]~18_combout\,
	cout => \hdmi_out0|res_img|v_count[3]~19\);

-- Location: FF_X51_Y44_N7
\hdmi_out0|res_img|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[3]~18_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(3));

-- Location: LCCOMB_X51_Y44_N8
\hdmi_out0|res_img|v_count[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[4]~20_combout\ = (\hdmi_out0|res_img|v_count\(4) & (\hdmi_out0|res_img|v_count[3]~19\ $ (GND))) # (!\hdmi_out0|res_img|v_count\(4) & (!\hdmi_out0|res_img|v_count[3]~19\ & VCC))
-- \hdmi_out0|res_img|v_count[4]~21\ = CARRY((\hdmi_out0|res_img|v_count\(4) & !\hdmi_out0|res_img|v_count[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(4),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[3]~19\,
	combout => \hdmi_out0|res_img|v_count[4]~20_combout\,
	cout => \hdmi_out0|res_img|v_count[4]~21\);

-- Location: FF_X51_Y44_N9
\hdmi_out0|res_img|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[4]~20_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(4));

-- Location: LCCOMB_X51_Y44_N10
\hdmi_out0|res_img|v_count[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[5]~22_combout\ = (\hdmi_out0|res_img|v_count\(5) & (!\hdmi_out0|res_img|v_count[4]~21\)) # (!\hdmi_out0|res_img|v_count\(5) & ((\hdmi_out0|res_img|v_count[4]~21\) # (GND)))
-- \hdmi_out0|res_img|v_count[5]~23\ = CARRY((!\hdmi_out0|res_img|v_count[4]~21\) # (!\hdmi_out0|res_img|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(5),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[4]~21\,
	combout => \hdmi_out0|res_img|v_count[5]~22_combout\,
	cout => \hdmi_out0|res_img|v_count[5]~23\);

-- Location: FF_X51_Y44_N11
\hdmi_out0|res_img|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[5]~22_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(5));

-- Location: LCCOMB_X51_Y44_N12
\hdmi_out0|res_img|v_count[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[6]~24_combout\ = (\hdmi_out0|res_img|v_count\(6) & (\hdmi_out0|res_img|v_count[5]~23\ $ (GND))) # (!\hdmi_out0|res_img|v_count\(6) & (!\hdmi_out0|res_img|v_count[5]~23\ & VCC))
-- \hdmi_out0|res_img|v_count[6]~25\ = CARRY((\hdmi_out0|res_img|v_count\(6) & !\hdmi_out0|res_img|v_count[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(6),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[5]~23\,
	combout => \hdmi_out0|res_img|v_count[6]~24_combout\,
	cout => \hdmi_out0|res_img|v_count[6]~25\);

-- Location: FF_X51_Y44_N13
\hdmi_out0|res_img|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[6]~24_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(6));

-- Location: LCCOMB_X51_Y44_N14
\hdmi_out0|res_img|v_count[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[7]~26_combout\ = (\hdmi_out0|res_img|v_count\(7) & (!\hdmi_out0|res_img|v_count[6]~25\)) # (!\hdmi_out0|res_img|v_count\(7) & ((\hdmi_out0|res_img|v_count[6]~25\) # (GND)))
-- \hdmi_out0|res_img|v_count[7]~27\ = CARRY((!\hdmi_out0|res_img|v_count[6]~25\) # (!\hdmi_out0|res_img|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(7),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[6]~25\,
	combout => \hdmi_out0|res_img|v_count[7]~26_combout\,
	cout => \hdmi_out0|res_img|v_count[7]~27\);

-- Location: FF_X51_Y44_N15
\hdmi_out0|res_img|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[7]~26_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(7));

-- Location: LCCOMB_X51_Y44_N16
\hdmi_out0|res_img|v_count[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[8]~28_combout\ = (\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|v_count[7]~27\ $ (GND))) # (!\hdmi_out0|res_img|v_count\(8) & (!\hdmi_out0|res_img|v_count[7]~27\ & VCC))
-- \hdmi_out0|res_img|v_count[8]~29\ = CARRY((\hdmi_out0|res_img|v_count\(8) & !\hdmi_out0|res_img|v_count[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(8),
	datad => VCC,
	cin => \hdmi_out0|res_img|v_count[7]~27\,
	combout => \hdmi_out0|res_img|v_count[8]~28_combout\,
	cout => \hdmi_out0|res_img|v_count[8]~29\);

-- Location: FF_X51_Y44_N17
\hdmi_out0|res_img|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[8]~28_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(8));

-- Location: LCCOMB_X50_Y44_N28
\hdmi_out0|res_img|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan2~0_combout\ = (!\hdmi_out0|res_img|v_count\(7) & !\hdmi_out0|res_img|v_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|v_count\(7),
	datad => \hdmi_out0|res_img|v_count\(6),
	combout => \hdmi_out0|res_img|LessThan2~0_combout\);

-- Location: LCCOMB_X50_Y44_N14
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

-- Location: LCCOMB_X51_Y44_N18
\hdmi_out0|res_img|v_count[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[9]~30_combout\ = \hdmi_out0|res_img|v_count[8]~29\ $ (\hdmi_out0|res_img|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|v_count\(9),
	cin => \hdmi_out0|res_img|v_count[8]~29\,
	combout => \hdmi_out0|res_img|v_count[9]~30_combout\);

-- Location: FF_X51_Y44_N19
\hdmi_out0|res_img|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[9]~30_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(9));

-- Location: LCCOMB_X47_Y44_N20
\hdmi_out0|res_img|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal1~0_combout\ = (((\hdmi_out0|res_img|v_count\(1)) # (\hdmi_out0|res_img|v_count\(0))) # (!\hdmi_out0|res_img|v_count\(3))) # (!\hdmi_out0|res_img|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(2),
	datab => \hdmi_out0|res_img|v_count\(3),
	datac => \hdmi_out0|res_img|v_count\(1),
	datad => \hdmi_out0|res_img|v_count\(0),
	combout => \hdmi_out0|res_img|Equal1~0_combout\);

-- Location: LCCOMB_X51_Y44_N26
\hdmi_out0|res_img|v_count[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|v_count[2]~16_combout\ = (\hdmi_out0|reset_e~q\) # ((\hdmi_out0|res_img|LessThan28~8_combout\ & (\hdmi_out0|res_img|v_count\(9) & !\hdmi_out0|res_img|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan28~8_combout\,
	datab => \hdmi_out0|res_img|v_count\(9),
	datac => \hdmi_out0|res_img|Equal1~0_combout\,
	datad => \hdmi_out0|reset_e~q\,
	combout => \hdmi_out0|res_img|v_count[2]~16_combout\);

-- Location: FF_X51_Y44_N1
\hdmi_out0|res_img|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[0]~10_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(0));

-- Location: FF_X51_Y44_N3
\hdmi_out0|res_img|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|v_count[1]~12_combout\,
	sclr => \hdmi_out0|res_img|v_count[2]~16_combout\,
	ena => \hdmi_out0|res_img|v_count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|v_count\(1));

-- Location: LCCOMB_X50_Y44_N12
\hdmi_out0|res_img|LessThan28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan28~4_combout\ = (!\hdmi_out0|res_img|v_count\(3) & !\hdmi_out0|res_img|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(3),
	datad => \hdmi_out0|res_img|v_count\(2),
	combout => \hdmi_out0|res_img|LessThan28~4_combout\);

-- Location: LCCOMB_X50_Y44_N20
\hdmi_out0|res_img|process_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~8_combout\ = (!\hdmi_out0|res_img|v_count\(4) & !\hdmi_out0|res_img|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|v_count\(4),
	datad => \hdmi_out0|res_img|v_count\(5),
	combout => \hdmi_out0|res_img|process_1~8_combout\);

-- Location: LCCOMB_X45_Y44_N2
\hdmi_out0|res_img|LessThan28~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan28~7_combout\ = (!\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|LessThan2~0_combout\ & (\hdmi_out0|res_img|LessThan28~4_combout\ & \hdmi_out0|res_img|process_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(8),
	datab => \hdmi_out0|res_img|LessThan2~0_combout\,
	datac => \hdmi_out0|res_img|LessThan28~4_combout\,
	datad => \hdmi_out0|res_img|process_1~8_combout\,
	combout => \hdmi_out0|res_img|LessThan28~7_combout\);

-- Location: LCCOMB_X45_Y44_N4
\hdmi_out0|res_img|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan1~0_combout\ = (!\hdmi_out0|res_img|v_count\(1) & (!\hdmi_out0|res_img|v_count\(9) & \hdmi_out0|res_img|LessThan28~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(1),
	datac => \hdmi_out0|res_img|v_count\(9),
	datad => \hdmi_out0|res_img|LessThan28~7_combout\,
	combout => \hdmi_out0|res_img|LessThan1~0_combout\);

-- Location: FF_X45_Y44_N5
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

-- Location: LCCOMB_X45_Y44_N24
\hdmi_out0|res_img|vs_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|vs_2~feeder_combout\ = \hdmi_out0|res_img|vs_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|vs_1~q\,
	combout => \hdmi_out0|res_img|vs_2~feeder_combout\);

-- Location: FF_X45_Y44_N25
\hdmi_out0|res_img|vs_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|vs_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|vs_2~q\);

-- Location: LCCOMB_X44_Y44_N4
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

-- Location: FF_X44_Y44_N5
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

-- Location: LCCOMB_X45_Y44_N28
\hdmi_out0|res_img|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan0~1_combout\ = (!\hdmi_out0|res_img|h_count\(8) & (!\hdmi_out0|res_img|h_count\(7) & ((!\hdmi_out0|res_img|h_count\(6)) # (!\hdmi_out0|res_img|h_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(5),
	datab => \hdmi_out0|res_img|h_count\(6),
	datac => \hdmi_out0|res_img|h_count\(8),
	datad => \hdmi_out0|res_img|h_count\(7),
	combout => \hdmi_out0|res_img|LessThan0~1_combout\);

-- Location: FF_X45_Y44_N29
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

-- Location: LCCOMB_X45_Y44_N18
\hdmi_out0|res_img|hs_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|hs_2~feeder_combout\ = \hdmi_out0|res_img|hs_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|hs_1~q\,
	combout => \hdmi_out0|res_img|hs_2~feeder_combout\);

-- Location: FF_X45_Y44_N19
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

-- Location: LCCOMB_X45_Y44_N22
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

-- Location: FF_X45_Y44_N23
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

-- Location: LCCOMB_X46_Y45_N0
\hdmi_out0|res_img|LessThan34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan34~0_combout\ = (!\hdmi_out0|res_img|h_count\(2) & ((!\hdmi_out0|res_img|h_count\(1)) # (!\hdmi_out0|res_img|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(0),
	datac => \hdmi_out0|res_img|h_count\(2),
	datad => \hdmi_out0|res_img|h_count\(1),
	combout => \hdmi_out0|res_img|LessThan34~0_combout\);

-- Location: LCCOMB_X47_Y45_N2
\hdmi_out0|res_img|LessThan20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan20~0_combout\ = ((!\hdmi_out0|res_img|h_count\(4) & ((\hdmi_out0|res_img|LessThan34~0_combout\) # (!\hdmi_out0|res_img|h_count\(3))))) # (!\hdmi_out0|res_img|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(3),
	datab => \hdmi_out0|res_img|h_count\(5),
	datac => \hdmi_out0|res_img|LessThan34~0_combout\,
	datad => \hdmi_out0|res_img|h_count\(4),
	combout => \hdmi_out0|res_img|LessThan20~0_combout\);

-- Location: LCCOMB_X46_Y45_N28
\hdmi_out0|res_img|LessThan29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan29~0_combout\ = (!\hdmi_out0|res_img|h_count\(3) & (((!\hdmi_out0|res_img|h_count\(1) & !\hdmi_out0|res_img|h_count\(0))) # (!\hdmi_out0|res_img|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(1),
	datab => \hdmi_out0|res_img|h_count\(2),
	datac => \hdmi_out0|res_img|h_count\(0),
	datad => \hdmi_out0|res_img|h_count\(3),
	combout => \hdmi_out0|res_img|LessThan29~0_combout\);

-- Location: LCCOMB_X46_Y45_N30
\hdmi_out0|res_img|LessThan29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan29~1_combout\ = (\hdmi_out0|res_img|h_count\(4) & (\hdmi_out0|res_img|h_count\(5) & !\hdmi_out0|res_img|LessThan29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(4),
	datac => \hdmi_out0|res_img|h_count\(5),
	datad => \hdmi_out0|res_img|LessThan29~0_combout\,
	combout => \hdmi_out0|res_img|LessThan29~1_combout\);

-- Location: LCCOMB_X49_Y45_N4
\hdmi_out0|res_img|rgb2[12]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~2_combout\ = (!\hdmi_out0|res_img|h_count\(6) & (!\hdmi_out0|res_img|h_count\(7) & (!\hdmi_out0|res_img|LessThan20~0_combout\ & !\hdmi_out0|res_img|LessThan29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(6),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|LessThan20~0_combout\,
	datad => \hdmi_out0|res_img|LessThan29~1_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~2_combout\);

-- Location: LCCOMB_X45_Y45_N16
\hdmi_out0|res_img|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan7~0_combout\ = (!\hdmi_out0|res_img|h_count\(5) & !\hdmi_out0|res_img|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|h_count\(5),
	datad => \hdmi_out0|res_img|h_count\(6),
	combout => \hdmi_out0|res_img|LessThan7~0_combout\);

-- Location: LCCOMB_X47_Y45_N4
\hdmi_out0|res_img|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan9~0_combout\ = ((!\hdmi_out0|res_img|h_count\(3) & ((!\hdmi_out0|res_img|h_count\(2)) # (!\hdmi_out0|res_img|h_count\(1))))) # (!\hdmi_out0|res_img|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(3),
	datab => \hdmi_out0|res_img|h_count\(1),
	datac => \hdmi_out0|res_img|h_count\(4),
	datad => \hdmi_out0|res_img|h_count\(2),
	combout => \hdmi_out0|res_img|LessThan9~0_combout\);

-- Location: LCCOMB_X49_Y45_N10
\hdmi_out0|res_img|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan9~1_combout\ = (!\hdmi_out0|res_img|h_count\(8) & (((\hdmi_out0|res_img|LessThan7~0_combout\ & \hdmi_out0|res_img|LessThan9~0_combout\)) # (!\hdmi_out0|res_img|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|LessThan7~0_combout\,
	datad => \hdmi_out0|res_img|LessThan9~0_combout\,
	combout => \hdmi_out0|res_img|LessThan9~1_combout\);

-- Location: LCCOMB_X49_Y45_N14
\hdmi_out0|res_img|process_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~9_combout\ = ((!\hdmi_out0|res_img|h_count\(6) & (!\hdmi_out0|res_img|h_count\(7) & !\hdmi_out0|res_img|LessThan29~1_combout\))) # (!\hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(6),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|h_count\(8),
	datad => \hdmi_out0|res_img|LessThan29~1_combout\,
	combout => \hdmi_out0|res_img|process_1~9_combout\);

-- Location: LCCOMB_X47_Y45_N26
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

-- Location: LCCOMB_X46_Y45_N2
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

-- Location: LCCOMB_X49_Y45_N12
\hdmi_out0|res_img|rgb2[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~3_combout\ = (\hdmi_out0|res_img|h_count\(7) & (\hdmi_out0|res_img|LessThan34~1_combout\ & \hdmi_out0|res_img|h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|LessThan34~1_combout\,
	datad => \hdmi_out0|res_img|h_count\(6),
	combout => \hdmi_out0|res_img|rgb2[12]~3_combout\);

-- Location: LCCOMB_X49_Y45_N20
\hdmi_out0|res_img|rgb2[12]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~4_combout\ = (\hdmi_out0|res_img|LessThan9~1_combout\ & ((\hdmi_out0|res_img|process_1~9_combout\) # ((\hdmi_out0|res_img|rgb2[12]~3_combout\)))) # (!\hdmi_out0|res_img|LessThan9~1_combout\ & 
-- (!\hdmi_out0|res_img|LessThan11~0_combout\ & ((\hdmi_out0|res_img|process_1~9_combout\) # (\hdmi_out0|res_img|rgb2[12]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan9~1_combout\,
	datab => \hdmi_out0|res_img|process_1~9_combout\,
	datac => \hdmi_out0|res_img|LessThan11~0_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~3_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~4_combout\);

-- Location: LCCOMB_X49_Y45_N30
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

-- Location: LCCOMB_X50_Y44_N2
\hdmi_out0|res_img|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan2~1_combout\ = ((!\hdmi_out0|res_img|v_count\(2) & (!\hdmi_out0|res_img|v_count\(4) & !\hdmi_out0|res_img|v_count\(3)))) # (!\hdmi_out0|res_img|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(2),
	datab => \hdmi_out0|res_img|v_count\(4),
	datac => \hdmi_out0|res_img|v_count\(5),
	datad => \hdmi_out0|res_img|v_count\(3),
	combout => \hdmi_out0|res_img|LessThan2~1_combout\);

-- Location: LCCOMB_X45_Y44_N12
\hdmi_out0|res_img|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan2~2_combout\ = (!\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|LessThan2~0_combout\ & (!\hdmi_out0|res_img|v_count\(9) & \hdmi_out0|res_img|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(8),
	datab => \hdmi_out0|res_img|LessThan2~0_combout\,
	datac => \hdmi_out0|res_img|v_count\(9),
	datad => \hdmi_out0|res_img|LessThan2~1_combout\,
	combout => \hdmi_out0|res_img|LessThan2~2_combout\);

-- Location: LCCOMB_X45_Y45_N30
\hdmi_out0|res_img|process_1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~80_combout\ = (!\hdmi_out0|res_img|h_count\(7) & (!\hdmi_out0|res_img|h_count\(4) & (!\hdmi_out0|res_img|h_count\(5) & !\hdmi_out0|res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datab => \hdmi_out0|res_img|h_count\(4),
	datac => \hdmi_out0|res_img|h_count\(5),
	datad => \hdmi_out0|res_img|h_count\(6),
	combout => \hdmi_out0|res_img|process_1~80_combout\);

-- Location: LCCOMB_X45_Y44_N8
\hdmi_out0|res_img|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan7~1_combout\ = ((!\hdmi_out0|res_img|h_count\(5) & (!\hdmi_out0|res_img|h_count\(4) & !\hdmi_out0|res_img|h_count\(6)))) # (!\hdmi_out0|res_img|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(5),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|h_count\(4),
	datad => \hdmi_out0|res_img|h_count\(6),
	combout => \hdmi_out0|res_img|LessThan7~1_combout\);

-- Location: LCCOMB_X45_Y44_N14
\hdmi_out0|res_img|process_1~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~81_combout\ = (\hdmi_out0|res_img|h_count\(8) & ((\hdmi_out0|res_img|process_1~80_combout\) # ((!\hdmi_out0|res_img|h_count\(9))))) # (!\hdmi_out0|res_img|h_count\(8) & (((\hdmi_out0|res_img|h_count\(9)) # 
-- (!\hdmi_out0|res_img|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~80_combout\,
	datab => \hdmi_out0|res_img|LessThan7~1_combout\,
	datac => \hdmi_out0|res_img|h_count\(8),
	datad => \hdmi_out0|res_img|h_count\(9),
	combout => \hdmi_out0|res_img|process_1~81_combout\);

-- Location: LCCOMB_X45_Y44_N10
\hdmi_out0|res_img|process_1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~82_combout\ = (!\hdmi_out0|res_img|LessThan2~2_combout\ & (\hdmi_out0|res_img|process_1~81_combout\ & ((\hdmi_out0|res_img|LessThan28~7_combout\) # (!\hdmi_out0|res_img|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan2~2_combout\,
	datab => \hdmi_out0|res_img|process_1~81_combout\,
	datac => \hdmi_out0|res_img|v_count\(9),
	datad => \hdmi_out0|res_img|LessThan28~7_combout\,
	combout => \hdmi_out0|res_img|process_1~82_combout\);

-- Location: FF_X45_Y44_N11
\hdmi_out0|res_img|de_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|process_1~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|de_1~q\);

-- Location: LCCOMB_X47_Y45_N10
\hdmi_out0|res_img|LessThan17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan17~0_combout\ = (!\hdmi_out0|res_img|h_count\(5) & ((\hdmi_out0|res_img|LessThan29~0_combout\) # (!\hdmi_out0|res_img|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(5),
	datac => \hdmi_out0|res_img|h_count\(4),
	datad => \hdmi_out0|res_img|LessThan29~0_combout\,
	combout => \hdmi_out0|res_img|LessThan17~0_combout\);

-- Location: LCCOMB_X49_Y45_N8
\hdmi_out0|res_img|rgb2[12]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~6_combout\ = ((\hdmi_out0|res_img|h_count\(9)) # ((!\hdmi_out0|res_img|rgb2[12]~3_combout\) # (!\hdmi_out0|res_img|LessThan17~0_combout\))) # (!\hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|LessThan17~0_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~3_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~6_combout\);

-- Location: LCCOMB_X51_Y44_N28
\hdmi_out0|res_img|LessThan23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan23~0_combout\ = (\hdmi_out0|res_img|v_count\(3) & ((\hdmi_out0|res_img|v_count\(1)) # ((\hdmi_out0|res_img|v_count\(2)) # (\hdmi_out0|res_img|v_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(3),
	datab => \hdmi_out0|res_img|v_count\(1),
	datac => \hdmi_out0|res_img|v_count\(2),
	datad => \hdmi_out0|res_img|v_count\(0),
	combout => \hdmi_out0|res_img|LessThan23~0_combout\);

-- Location: LCCOMB_X50_Y44_N6
\hdmi_out0|res_img|LessThan23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan23~1_combout\ = (\hdmi_out0|res_img|v_count\(7) & ((\hdmi_out0|res_img|v_count\(6)) # ((\hdmi_out0|res_img|LessThan23~0_combout\) # (!\hdmi_out0|res_img|process_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(6),
	datab => \hdmi_out0|res_img|process_1~8_combout\,
	datac => \hdmi_out0|res_img|v_count\(7),
	datad => \hdmi_out0|res_img|LessThan23~0_combout\,
	combout => \hdmi_out0|res_img|LessThan23~1_combout\);

-- Location: LCCOMB_X47_Y45_N12
\hdmi_out0|res_img|process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~6_combout\ = ((\hdmi_out0|res_img|h_count\(8)) # ((\hdmi_out0|res_img|h_count\(6)) # (\hdmi_out0|res_img|h_count\(9)))) # (!\hdmi_out0|res_img|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(4),
	datab => \hdmi_out0|res_img|h_count\(8),
	datac => \hdmi_out0|res_img|h_count\(6),
	datad => \hdmi_out0|res_img|h_count\(9),
	combout => \hdmi_out0|res_img|process_1~6_combout\);

-- Location: LCCOMB_X47_Y45_N20
\hdmi_out0|res_img|process_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~7_combout\ = ((\hdmi_out0|res_img|process_1~6_combout\) # (!\hdmi_out0|res_img|LessThan17~0_combout\)) # (!\hdmi_out0|res_img|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|LessThan17~0_combout\,
	datad => \hdmi_out0|res_img|process_1~6_combout\,
	combout => \hdmi_out0|res_img|process_1~7_combout\);

-- Location: LCCOMB_X50_Y44_N26
\hdmi_out0|res_img|LessThan28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan28~5_combout\ = (!\hdmi_out0|res_img|v_count\(6) & (((\hdmi_out0|res_img|LessThan28~4_combout\) # (!\hdmi_out0|res_img|v_count\(4))) # (!\hdmi_out0|res_img|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(6),
	datab => \hdmi_out0|res_img|v_count\(5),
	datac => \hdmi_out0|res_img|v_count\(4),
	datad => \hdmi_out0|res_img|LessThan28~4_combout\,
	combout => \hdmi_out0|res_img|LessThan28~5_combout\);

-- Location: LCCOMB_X50_Y45_N18
\hdmi_out0|res_img|rgb2[12]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~0_combout\ = (!\hdmi_out0|res_img|v_count\(9) & (((\hdmi_out0|res_img|LessThan28~5_combout\) # (!\hdmi_out0|res_img|v_count\(8))) # (!\hdmi_out0|res_img|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(9),
	datab => \hdmi_out0|res_img|v_count\(7),
	datac => \hdmi_out0|res_img|v_count\(8),
	datad => \hdmi_out0|res_img|LessThan28~5_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~0_combout\);

-- Location: LCCOMB_X50_Y45_N16
\hdmi_out0|res_img|rgb2[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~1_combout\ = (\hdmi_out0|res_img|process_1~7_combout\ & (\hdmi_out0|res_img|rgb2[12]~0_combout\ & ((\hdmi_out0|res_img|LessThan23~1_combout\) # (\hdmi_out0|res_img|v_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan23~1_combout\,
	datab => \hdmi_out0|res_img|v_count\(8),
	datac => \hdmi_out0|res_img|process_1~7_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~0_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~1_combout\);

-- Location: LCCOMB_X49_Y45_N26
\hdmi_out0|res_img|rgb2[12]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~7_combout\ = (\hdmi_out0|res_img|de_1~q\ & (\hdmi_out0|res_img|rgb2[12]~1_combout\ & ((\hdmi_out0|res_img|rgb2[12]~5_combout\) # (\hdmi_out0|res_img|rgb2[12]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2[12]~5_combout\,
	datab => \hdmi_out0|res_img|de_1~q\,
	datac => \hdmi_out0|res_img|rgb2[12]~6_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~1_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~7_combout\);

-- Location: LCCOMB_X51_Y44_N22
\hdmi_out0|res_img|process_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~30_combout\ = (!\hdmi_out0|res_img|v_count\(3) & (((!\hdmi_out0|res_img|v_count\(2)) # (!\hdmi_out0|res_img|v_count\(1))) # (!\hdmi_out0|res_img|v_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(3),
	datab => \hdmi_out0|res_img|v_count\(0),
	datac => \hdmi_out0|res_img|v_count\(1),
	datad => \hdmi_out0|res_img|v_count\(2),
	combout => \hdmi_out0|res_img|process_1~30_combout\);

-- Location: LCCOMB_X51_Y44_N20
\hdmi_out0|res_img|process_1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~31_combout\ = (\hdmi_out0|res_img|v_count\(7) & ((\hdmi_out0|res_img|v_count\(5)) # ((\hdmi_out0|res_img|v_count\(4) & !\hdmi_out0|res_img|process_1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(4),
	datab => \hdmi_out0|res_img|v_count\(7),
	datac => \hdmi_out0|res_img|process_1~30_combout\,
	datad => \hdmi_out0|res_img|v_count\(5),
	combout => \hdmi_out0|res_img|process_1~31_combout\);

-- Location: LCCOMB_X51_Y44_N30
\hdmi_out0|res_img|LessThan26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan26~0_combout\ = (((!\hdmi_out0|res_img|v_count\(1) & !\hdmi_out0|res_img|v_count\(0))) # (!\hdmi_out0|res_img|v_count\(2))) # (!\hdmi_out0|res_img|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(3),
	datab => \hdmi_out0|res_img|v_count\(1),
	datac => \hdmi_out0|res_img|v_count\(2),
	datad => \hdmi_out0|res_img|v_count\(0),
	combout => \hdmi_out0|res_img|LessThan26~0_combout\);

-- Location: LCCOMB_X50_Y44_N22
\hdmi_out0|res_img|process_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~36_combout\ = (\hdmi_out0|res_img|LessThan2~0_combout\ & ((\hdmi_out0|res_img|v_count\(5) & (\hdmi_out0|res_img|LessThan26~0_combout\ & !\hdmi_out0|res_img|v_count\(4))) # (!\hdmi_out0|res_img|v_count\(5) & 
-- ((\hdmi_out0|res_img|v_count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan26~0_combout\,
	datab => \hdmi_out0|res_img|v_count\(5),
	datac => \hdmi_out0|res_img|LessThan2~0_combout\,
	datad => \hdmi_out0|res_img|v_count\(4),
	combout => \hdmi_out0|res_img|process_1~36_combout\);

-- Location: LCCOMB_X46_Y44_N10
\hdmi_out0|res_img|process_1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~58_combout\ = (!\hdmi_out0|res_img|process_1~36_combout\ & ((!\hdmi_out0|res_img|process_1~31_combout\) # (!\hdmi_out0|res_img|LessThan28~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|LessThan28~5_combout\,
	datac => \hdmi_out0|res_img|process_1~31_combout\,
	datad => \hdmi_out0|res_img|process_1~36_combout\,
	combout => \hdmi_out0|res_img|process_1~58_combout\);

-- Location: LCCOMB_X49_Y44_N8
\hdmi_out0|res_img|process_1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~59_combout\ = (!\hdmi_out0|res_img|v_count\(9) & (\hdmi_out0|res_img|v_count\(8) & !\hdmi_out0|res_img|process_1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(9),
	datac => \hdmi_out0|res_img|v_count\(8),
	datad => \hdmi_out0|res_img|process_1~58_combout\,
	combout => \hdmi_out0|res_img|process_1~59_combout\);

-- Location: IOIBUF_X56_Y54_N1
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

-- Location: IOIBUF_X58_Y54_N29
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

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: LCCOMB_X57_Y50_N6
\multi0|Mult0|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le5a\(1) = (\A[1]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult0|auto_generated|le5a\(1));

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: LCCOMB_X57_Y50_N20
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

-- Location: IOIBUF_X54_Y54_N29
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

-- Location: LCCOMB_X57_Y50_N10
\multi0|Mult1|auto_generated|cs3a[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|cs3a[1]~0_combout\ = \B[2]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \multi0|Mult1|auto_generated|cs3a[1]~0_combout\);

-- Location: LCCOMB_X57_Y50_N28
\multi0|Mult0|auto_generated|le4a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le4a\(3) = (\multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & ((\multi0|Mult0|auto_generated|le4a\(5) $ (\A[3]~input_o\)))) # (!\multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (!\A[2]~input_o\ & 
-- (\multi0|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \multi0|Mult0|auto_generated|le4a\(5),
	datac => \A[3]~input_o\,
	datad => \multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	combout => \multi0|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X57_Y50_N4
\multi0|Mult0|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le4a\(2) = (\multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (\A[2]~input_o\ $ ((\multi0|Mult0|auto_generated|le4a\(5))))) # (!\multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (((\multi0|Mult0|auto_generated|le4a\(5) & 
-- !\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \multi0|Mult0|auto_generated|le4a\(5),
	datac => \A[1]~input_o\,
	datad => \multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	combout => \multi0|Mult0|auto_generated|le4a\(2));

-- Location: IOIBUF_X54_Y54_N15
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

-- Location: LCCOMB_X57_Y51_N30
\multi0|Mult0|auto_generated|le3a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le3a\(4) = (\B[1]~input_o\ & ((\B[0]~input_o\) # (!\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \multi0|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X55_Y50_N22
\multi0|Mult0|auto_generated|le3a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le3a\(3) = (\B[0]~input_o\ & (\A[3]~input_o\ $ (((\B[1]~input_o\))))) # (!\B[0]~input_o\ & (((!\A[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \multi0|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X55_Y50_N4
\multi0|Mult0|auto_generated|le3a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le3a\(2) = (\B[0]~input_o\ & ((\B[1]~input_o\ $ (\A[2]~input_o\)))) # (!\B[0]~input_o\ & (!\A[1]~input_o\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \multi0|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X56_Y50_N18
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

-- Location: LCCOMB_X56_Y50_N20
\multi0|Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_1~2_combout\ = (\multi0|Mult0|auto_generated|le3a\(3) & (!\multi0|Mult0|auto_generated|op_1~1\)) # (!\multi0|Mult0|auto_generated|le3a\(3) & ((\multi0|Mult0|auto_generated|op_1~1\) # (GND)))
-- \multi0|Mult0|auto_generated|op_1~3\ = CARRY((!\multi0|Mult0|auto_generated|op_1~1\) # (!\multi0|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multi0|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_1~1\,
	combout => \multi0|Mult0|auto_generated|op_1~2_combout\,
	cout => \multi0|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X56_Y50_N22
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

-- Location: LCCOMB_X56_Y50_N24
\multi0|Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_1~6_combout\ = (\multi0|Mult0|auto_generated|le5a\(1) & ((\multi0|Mult0|auto_generated|le4a\(3) & (\multi0|Mult0|auto_generated|op_1~5\ & VCC)) # (!\multi0|Mult0|auto_generated|le4a\(3) & 
-- (!\multi0|Mult0|auto_generated|op_1~5\)))) # (!\multi0|Mult0|auto_generated|le5a\(1) & ((\multi0|Mult0|auto_generated|le4a\(3) & (!\multi0|Mult0|auto_generated|op_1~5\)) # (!\multi0|Mult0|auto_generated|le4a\(3) & ((\multi0|Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \multi0|Mult0|auto_generated|op_1~7\ = CARRY((\multi0|Mult0|auto_generated|le5a\(1) & (!\multi0|Mult0|auto_generated|le4a\(3) & !\multi0|Mult0|auto_generated|op_1~5\)) # (!\multi0|Mult0|auto_generated|le5a\(1) & ((!\multi0|Mult0|auto_generated|op_1~5\) # 
-- (!\multi0|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le5a\(1),
	datab => \multi0|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_1~5\,
	combout => \multi0|Mult0|auto_generated|op_1~6_combout\,
	cout => \multi0|Mult0|auto_generated|op_1~7\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: LCCOMB_X57_Y50_N18
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

-- Location: LCCOMB_X57_Y50_N24
\multi0|Mult0|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le4a\(1) = (\multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & ((\multi0|Mult0|auto_generated|le4a\(5) $ (\A[1]~input_o\)))) # (!\multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (!\A[0]~input_o\ & 
-- (\multi0|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \multi0|Mult0|auto_generated|le4a\(5),
	datac => \A[1]~input_o\,
	datad => \multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	combout => \multi0|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X57_Y50_N26
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

-- Location: LCCOMB_X55_Y50_N10
\multi0|Mult0|auto_generated|le3a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le3a\(1) = (\B[0]~input_o\ & (\A[1]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \multi0|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X57_Y51_N26
\multi0|Mult0|auto_generated|le3a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le3a\(0) = \B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \multi0|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X56_Y50_N2
\multi0|Mult0|auto_generated|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~0_combout\ = (\multi0|Mult0|auto_generated|le3a\(0) & (\B[1]~input_o\ $ (VCC))) # (!\multi0|Mult0|auto_generated|le3a\(0) & (\B[1]~input_o\ & VCC))
-- \multi0|Mult0|auto_generated|op_3~1\ = CARRY((\multi0|Mult0|auto_generated|le3a\(0) & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le3a\(0),
	datab => \B[1]~input_o\,
	datad => VCC,
	combout => \multi0|Mult0|auto_generated|op_3~0_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X56_Y50_N4
\multi0|Mult0|auto_generated|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~2_combout\ = (\multi0|Mult0|auto_generated|le3a\(1) & (!\multi0|Mult0|auto_generated|op_3~1\)) # (!\multi0|Mult0|auto_generated|le3a\(1) & ((\multi0|Mult0|auto_generated|op_3~1\) # (GND)))
-- \multi0|Mult0|auto_generated|op_3~3\ = CARRY((!\multi0|Mult0|auto_generated|op_3~1\) # (!\multi0|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_3~1\,
	combout => \multi0|Mult0|auto_generated|op_3~2_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X56_Y50_N6
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

-- Location: LCCOMB_X56_Y50_N8
\multi0|Mult0|auto_generated|op_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~6_combout\ = (\multi0|Mult0|auto_generated|op_1~2_combout\ & ((\multi0|Mult0|auto_generated|le4a\(1) & (\multi0|Mult0|auto_generated|op_3~5\ & VCC)) # (!\multi0|Mult0|auto_generated|le4a\(1) & 
-- (!\multi0|Mult0|auto_generated|op_3~5\)))) # (!\multi0|Mult0|auto_generated|op_1~2_combout\ & ((\multi0|Mult0|auto_generated|le4a\(1) & (!\multi0|Mult0|auto_generated|op_3~5\)) # (!\multi0|Mult0|auto_generated|le4a\(1) & 
-- ((\multi0|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \multi0|Mult0|auto_generated|op_3~7\ = CARRY((\multi0|Mult0|auto_generated|op_1~2_combout\ & (!\multi0|Mult0|auto_generated|le4a\(1) & !\multi0|Mult0|auto_generated|op_3~5\)) # (!\multi0|Mult0|auto_generated|op_1~2_combout\ & 
-- ((!\multi0|Mult0|auto_generated|op_3~5\) # (!\multi0|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|op_1~2_combout\,
	datab => \multi0|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_3~5\,
	combout => \multi0|Mult0|auto_generated|op_3~6_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X56_Y50_N10
\multi0|Mult0|auto_generated|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~8_combout\ = ((\multi0|Mult0|auto_generated|op_1~4_combout\ $ (\multi0|Mult0|auto_generated|le5a\(0) $ (!\multi0|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \multi0|Mult0|auto_generated|op_3~9\ = CARRY((\multi0|Mult0|auto_generated|op_1~4_combout\ & ((\multi0|Mult0|auto_generated|le5a\(0)) # (!\multi0|Mult0|auto_generated|op_3~7\))) # (!\multi0|Mult0|auto_generated|op_1~4_combout\ & 
-- (\multi0|Mult0|auto_generated|le5a\(0) & !\multi0|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|op_1~4_combout\,
	datab => \multi0|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_3~7\,
	combout => \multi0|Mult0|auto_generated|op_3~8_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X56_Y50_N12
\multi0|Mult0|auto_generated|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~10_combout\ = (\multi0|Mult0|auto_generated|op_1~6_combout\ & ((\B[1]~input_o\ & (\multi0|Mult0|auto_generated|op_3~9\ & VCC)) # (!\B[1]~input_o\ & (!\multi0|Mult0|auto_generated|op_3~9\)))) # 
-- (!\multi0|Mult0|auto_generated|op_1~6_combout\ & ((\B[1]~input_o\ & (!\multi0|Mult0|auto_generated|op_3~9\)) # (!\B[1]~input_o\ & ((\multi0|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \multi0|Mult0|auto_generated|op_3~11\ = CARRY((\multi0|Mult0|auto_generated|op_1~6_combout\ & (!\B[1]~input_o\ & !\multi0|Mult0|auto_generated|op_3~9\)) # (!\multi0|Mult0|auto_generated|op_1~6_combout\ & ((!\multi0|Mult0|auto_generated|op_3~9\) # 
-- (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|op_1~6_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_3~9\,
	combout => \multi0|Mult0|auto_generated|op_3~10_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X55_Y50_N26
\multi0|Mult0|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le5a\(2) = (\A[2]~input_o\ & ((\B[3]~input_o\) # ((\B[1]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \multi0|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X55_Y50_N6
\multi0|Mult0|auto_generated|le4a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le4a\(4) = (\A[3]~input_o\ & (\B[3]~input_o\ & (\B[1]~input_o\ $ (\B[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ $ (((\B[1]~input_o\ & \B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \multi0|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X56_Y50_N26
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

-- Location: LCCOMB_X56_Y50_N14
\multi0|Mult0|auto_generated|op_3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~12_combout\ = ((\multi0|Mult0|auto_generated|op_1~8_combout\ $ (\B[1]~input_o\ $ (!\multi0|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \multi0|Mult0|auto_generated|op_3~13\ = CARRY((\multi0|Mult0|auto_generated|op_1~8_combout\ & ((\B[1]~input_o\) # (!\multi0|Mult0|auto_generated|op_3~11\))) # (!\multi0|Mult0|auto_generated|op_1~8_combout\ & (\B[1]~input_o\ & 
-- !\multi0|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|op_1~8_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \multi0|Mult0|auto_generated|op_3~11\,
	combout => \multi0|Mult0|auto_generated|op_3~12_combout\,
	cout => \multi0|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X57_Y50_N16
\multi0|Mult0|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|le5a\(3) = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X56_Y50_N28
\multi0|Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_1~10_combout\ = \multi0|Mult0|auto_generated|le4a\(5) $ (\multi0|Mult0|auto_generated|op_1~9\ $ (!\multi0|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|le4a\(5),
	datad => \multi0|Mult0|auto_generated|le5a\(3),
	cin => \multi0|Mult0|auto_generated|op_1~9\,
	combout => \multi0|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X56_Y50_N16
\multi0|Mult0|auto_generated|op_3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult0|auto_generated|op_3~14_combout\ = \multi0|Mult0|auto_generated|op_1~10_combout\ $ (\multi0|Mult0|auto_generated|op_3~13\ $ (!\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multi0|Mult0|auto_generated|op_1~10_combout\,
	datad => \B[1]~input_o\,
	cin => \multi0|Mult0|auto_generated|op_3~13\,
	combout => \multi0|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X56_Y50_N0
\controlMulti|erorTotale~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlMulti|erorTotale~0_combout\ = (!\mode~input_o\ & ((\multi0|Mult0|auto_generated|op_3~10_combout\) # ((\multi0|Mult0|auto_generated|op_3~12_combout\) # (\multi0|Mult0|auto_generated|op_3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult0|auto_generated|op_3~10_combout\,
	datab => \mode~input_o\,
	datac => \multi0|Mult0|auto_generated|op_3~12_combout\,
	datad => \multi0|Mult0|auto_generated|op_3~14_combout\,
	combout => \controlMulti|erorTotale~0_combout\);

-- Location: LCCOMB_X57_Y50_N12
\multi0|Mult1|auto_generated|le2a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le2a\(1) = (\A[0]~input_o\ & (\B[2]~input_o\ & (\B[1]~input_o\))) # (!\A[0]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult1|auto_generated|le2a\(1));

-- Location: LCCOMB_X57_Y50_N0
\multi0|Mult1|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le4a\(1) = (\multi0|Mult1|auto_generated|le2a\(1)) # ((\multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (\B[3]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le2a\(1),
	datab => \B[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	combout => \multi0|Mult1|auto_generated|le4a\(1));

-- Location: LCCOMB_X55_Y50_N28
\multi0|Mult1|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le5a\(3) = (\B[0]~input_o\ & (\A[3]~input_o\ $ (((\B[1]~input_o\))))) # (!\B[0]~input_o\ & (((!\A[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \multi0|Mult1|auto_generated|le5a\(3));

-- Location: LCCOMB_X55_Y50_N2
\multi0|Mult1|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le5a\(2) = (\B[0]~input_o\ & ((\B[1]~input_o\ $ (\A[2]~input_o\)))) # (!\B[0]~input_o\ & (!\A[1]~input_o\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \multi0|Mult1|auto_generated|le5a\(2));

-- Location: LCCOMB_X58_Y50_N22
\multi0|Mult1|auto_generated|add10_result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add10_result[0]~0_combout\ = (\multi0|Mult1|auto_generated|le5a\(2) & (\B[3]~input_o\ $ (VCC))) # (!\multi0|Mult1|auto_generated|le5a\(2) & (\B[3]~input_o\ & VCC))
-- \multi0|Mult1|auto_generated|add10_result[0]~1\ = CARRY((\multi0|Mult1|auto_generated|le5a\(2) & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le5a\(2),
	datab => \B[3]~input_o\,
	datad => VCC,
	combout => \multi0|Mult1|auto_generated|add10_result[0]~0_combout\,
	cout => \multi0|Mult1|auto_generated|add10_result[0]~1\);

-- Location: LCCOMB_X58_Y50_N24
\multi0|Mult1|auto_generated|add10_result[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add10_result[1]~2_combout\ = (\multi0|Mult1|auto_generated|le5a\(3) & (!\multi0|Mult1|auto_generated|add10_result[0]~1\)) # (!\multi0|Mult1|auto_generated|le5a\(3) & ((\multi0|Mult1|auto_generated|add10_result[0]~1\) # (GND)))
-- \multi0|Mult1|auto_generated|add10_result[1]~3\ = CARRY((!\multi0|Mult1|auto_generated|add10_result[0]~1\) # (!\multi0|Mult1|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le5a\(3),
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|add10_result[0]~1\,
	combout => \multi0|Mult1|auto_generated|add10_result[1]~2_combout\,
	cout => \multi0|Mult1|auto_generated|add10_result[1]~3\);

-- Location: LCCOMB_X57_Y50_N2
\multi0|Mult1|auto_generated|le2a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le2a\(0) = (\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult1|auto_generated|le2a\(0));

-- Location: LCCOMB_X57_Y50_N22
\multi0|Mult1|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le4a\(0) = (\multi0|Mult1|auto_generated|le2a\(0)) # ((\multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (\B[3]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \multi0|Mult1|auto_generated|le2a\(0),
	combout => \multi0|Mult1|auto_generated|le4a\(0));

-- Location: LCCOMB_X55_Y50_N0
\multi0|Mult1|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le5a\(1) = (\B[0]~input_o\ & (\A[1]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \multi0|Mult1|auto_generated|le5a\(1));

-- Location: LCCOMB_X57_Y51_N4
\multi0|Mult1|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le5a\(0) = \B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \multi0|Mult1|auto_generated|le5a\(0));

-- Location: LCCOMB_X58_Y50_N2
\multi0|Mult1|auto_generated|add6_result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add6_result[0]~0_combout\ = (\B[1]~input_o\ & (\multi0|Mult1|auto_generated|le5a\(0) $ (VCC))) # (!\B[1]~input_o\ & (\multi0|Mult1|auto_generated|le5a\(0) & VCC))
-- \multi0|Mult1|auto_generated|add6_result[0]~1\ = CARRY((\B[1]~input_o\ & \multi0|Mult1|auto_generated|le5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \multi0|Mult1|auto_generated|le5a\(0),
	datad => VCC,
	combout => \multi0|Mult1|auto_generated|add6_result[0]~0_combout\,
	cout => \multi0|Mult1|auto_generated|add6_result[0]~1\);

-- Location: LCCOMB_X58_Y50_N4
\multi0|Mult1|auto_generated|add6_result[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add6_result[1]~2_combout\ = (\multi0|Mult1|auto_generated|le5a\(1) & (!\multi0|Mult1|auto_generated|add6_result[0]~1\)) # (!\multi0|Mult1|auto_generated|le5a\(1) & ((\multi0|Mult1|auto_generated|add6_result[0]~1\) # (GND)))
-- \multi0|Mult1|auto_generated|add6_result[1]~3\ = CARRY((!\multi0|Mult1|auto_generated|add6_result[0]~1\) # (!\multi0|Mult1|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le5a\(1),
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|add6_result[0]~1\,
	combout => \multi0|Mult1|auto_generated|add6_result[1]~2_combout\,
	cout => \multi0|Mult1|auto_generated|add6_result[1]~3\);

-- Location: LCCOMB_X58_Y50_N6
\multi0|Mult1|auto_generated|add6_result[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add6_result[2]~4_combout\ = ((\multi0|Mult1|auto_generated|add10_result[0]~0_combout\ $ (\multi0|Mult1|auto_generated|le4a\(0) $ (!\multi0|Mult1|auto_generated|add6_result[1]~3\)))) # (GND)
-- \multi0|Mult1|auto_generated|add6_result[2]~5\ = CARRY((\multi0|Mult1|auto_generated|add10_result[0]~0_combout\ & ((\multi0|Mult1|auto_generated|le4a\(0)) # (!\multi0|Mult1|auto_generated|add6_result[1]~3\))) # 
-- (!\multi0|Mult1|auto_generated|add10_result[0]~0_combout\ & (\multi0|Mult1|auto_generated|le4a\(0) & !\multi0|Mult1|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|add10_result[0]~0_combout\,
	datab => \multi0|Mult1|auto_generated|le4a\(0),
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|add6_result[1]~3\,
	combout => \multi0|Mult1|auto_generated|add6_result[2]~4_combout\,
	cout => \multi0|Mult1|auto_generated|add6_result[2]~5\);

-- Location: LCCOMB_X58_Y50_N8
\multi0|Mult1|auto_generated|add6_result[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add6_result[3]~6_combout\ = (\multi0|Mult1|auto_generated|le4a\(1) & ((\multi0|Mult1|auto_generated|add10_result[1]~2_combout\ & (\multi0|Mult1|auto_generated|add6_result[2]~5\ & VCC)) # 
-- (!\multi0|Mult1|auto_generated|add10_result[1]~2_combout\ & (!\multi0|Mult1|auto_generated|add6_result[2]~5\)))) # (!\multi0|Mult1|auto_generated|le4a\(1) & ((\multi0|Mult1|auto_generated|add10_result[1]~2_combout\ & 
-- (!\multi0|Mult1|auto_generated|add6_result[2]~5\)) # (!\multi0|Mult1|auto_generated|add10_result[1]~2_combout\ & ((\multi0|Mult1|auto_generated|add6_result[2]~5\) # (GND)))))
-- \multi0|Mult1|auto_generated|add6_result[3]~7\ = CARRY((\multi0|Mult1|auto_generated|le4a\(1) & (!\multi0|Mult1|auto_generated|add10_result[1]~2_combout\ & !\multi0|Mult1|auto_generated|add6_result[2]~5\)) # (!\multi0|Mult1|auto_generated|le4a\(1) & 
-- ((!\multi0|Mult1|auto_generated|add6_result[2]~5\) # (!\multi0|Mult1|auto_generated|add10_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le4a\(1),
	datab => \multi0|Mult1|auto_generated|add10_result[1]~2_combout\,
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|add6_result[2]~5\,
	combout => \multi0|Mult1|auto_generated|add6_result[3]~6_combout\,
	cout => \multi0|Mult1|auto_generated|add6_result[3]~7\);

-- Location: LCCOMB_X54_Y50_N2
\multi0|Res[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Res[3]~0_combout\ = (\mode~input_o\ & (\multi0|Mult1|auto_generated|add6_result[3]~6_combout\)) # (!\mode~input_o\ & ((\multi0|Mult0|auto_generated|op_3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \multi0|Mult1|auto_generated|add6_result[3]~6_combout\,
	datad => \multi0|Mult0|auto_generated|op_3~6_combout\,
	combout => \multi0|Res[3]~0_combout\);

-- Location: LCCOMB_X54_Y50_N24
\controlMulti|erorTotale~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlMulti|erorTotale~1_combout\ = (\controlMulti|erorTotale~0_combout\) # ((\multi0|Res[3]~0_combout\ & (!\B[3]~input_o\ & !\A[3]~input_o\)) # (!\multi0|Res[3]~0_combout\ & (\B[3]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlMulti|erorTotale~0_combout\,
	datab => \multi0|Res[3]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \controlMulti|erorTotale~1_combout\);

-- Location: LCCOMB_X55_Y50_N8
\multi0|Mult1|auto_generated|le2a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le2a\(3) = (\A[2]~input_o\ & (((\B[1]~input_o\ & \B[2]~input_o\)))) # (!\A[2]~input_o\ & (\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \multi0|Mult1|auto_generated|le2a\(3));

-- Location: LCCOMB_X58_Y50_N18
\multi0|Mult1|auto_generated|le4a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le4a\(3) = (\multi0|Mult1|auto_generated|le2a\(3)) # ((\multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (\B[3]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le2a\(3),
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	combout => \multi0|Mult1|auto_generated|le4a\(3));

-- Location: LCCOMB_X57_Y51_N20
\multi0|Mult1|auto_generated|le5a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le5a\(4) = (\A[3]~input_o\ & (\B[0]~input_o\ & !\B[1]~input_o\)) # (!\A[3]~input_o\ & ((\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \multi0|Mult1|auto_generated|le5a\(4));

-- Location: LCCOMB_X58_Y50_N26
\multi0|Mult1|auto_generated|add10_result[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add10_result[2]~4_combout\ = (\multi0|Mult1|auto_generated|le5a\(4) & (\multi0|Mult1|auto_generated|add10_result[1]~3\ $ (GND))) # (!\multi0|Mult1|auto_generated|le5a\(4) & ((GND) # 
-- (!\multi0|Mult1|auto_generated|add10_result[1]~3\)))
-- \multi0|Mult1|auto_generated|add10_result[2]~5\ = CARRY((!\multi0|Mult1|auto_generated|add10_result[1]~3\) # (!\multi0|Mult1|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multi0|Mult1|auto_generated|le5a\(4),
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|add10_result[1]~3\,
	combout => \multi0|Mult1|auto_generated|add10_result[2]~4_combout\,
	cout => \multi0|Mult1|auto_generated|add10_result[2]~5\);

-- Location: LCCOMB_X58_Y50_N28
\multi0|Mult1|auto_generated|add10_result[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add10_result[3]~6_combout\ = !\multi0|Mult1|auto_generated|add10_result[2]~5\
-- \multi0|Mult1|auto_generated|add10_result[3]~7\ = CARRY(!\multi0|Mult1|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|add10_result[2]~5\,
	combout => \multi0|Mult1|auto_generated|add10_result[3]~6_combout\,
	cout => \multi0|Mult1|auto_generated|add10_result[3]~7\);

-- Location: LCCOMB_X57_Y50_N8
\multi0|Mult1|auto_generated|le2a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le2a\(2) = (\A[1]~input_o\ & (\B[2]~input_o\ & (\B[1]~input_o\))) # (!\A[1]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult1|auto_generated|le2a\(2));

-- Location: LCCOMB_X57_Y50_N30
\multi0|Mult1|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le4a\(2) = (\multi0|Mult1|auto_generated|le2a\(2)) # ((\multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (\A[2]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \multi0|Mult1|auto_generated|le2a\(2),
	datad => \multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	combout => \multi0|Mult1|auto_generated|le4a\(2));

-- Location: LCCOMB_X58_Y50_N10
\multi0|Mult1|auto_generated|add6_result[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add6_result[4]~8_combout\ = ((\multi0|Mult1|auto_generated|add10_result[2]~4_combout\ $ (\multi0|Mult1|auto_generated|le4a\(2) $ (!\multi0|Mult1|auto_generated|add6_result[3]~7\)))) # (GND)
-- \multi0|Mult1|auto_generated|add6_result[4]~9\ = CARRY((\multi0|Mult1|auto_generated|add10_result[2]~4_combout\ & ((\multi0|Mult1|auto_generated|le4a\(2)) # (!\multi0|Mult1|auto_generated|add6_result[3]~7\))) # 
-- (!\multi0|Mult1|auto_generated|add10_result[2]~4_combout\ & (\multi0|Mult1|auto_generated|le4a\(2) & !\multi0|Mult1|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|add10_result[2]~4_combout\,
	datab => \multi0|Mult1|auto_generated|le4a\(2),
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|add6_result[3]~7\,
	combout => \multi0|Mult1|auto_generated|add6_result[4]~8_combout\,
	cout => \multi0|Mult1|auto_generated|add6_result[4]~9\);

-- Location: LCCOMB_X58_Y50_N12
\multi0|Mult1|auto_generated|add6_result[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add6_result[5]~10_combout\ = (\multi0|Mult1|auto_generated|le4a\(3) & ((\multi0|Mult1|auto_generated|add10_result[3]~6_combout\ & (\multi0|Mult1|auto_generated|add6_result[4]~9\ & VCC)) # 
-- (!\multi0|Mult1|auto_generated|add10_result[3]~6_combout\ & (!\multi0|Mult1|auto_generated|add6_result[4]~9\)))) # (!\multi0|Mult1|auto_generated|le4a\(3) & ((\multi0|Mult1|auto_generated|add10_result[3]~6_combout\ & 
-- (!\multi0|Mult1|auto_generated|add6_result[4]~9\)) # (!\multi0|Mult1|auto_generated|add10_result[3]~6_combout\ & ((\multi0|Mult1|auto_generated|add6_result[4]~9\) # (GND)))))
-- \multi0|Mult1|auto_generated|add6_result[5]~11\ = CARRY((\multi0|Mult1|auto_generated|le4a\(3) & (!\multi0|Mult1|auto_generated|add10_result[3]~6_combout\ & !\multi0|Mult1|auto_generated|add6_result[4]~9\)) # (!\multi0|Mult1|auto_generated|le4a\(3) & 
-- ((!\multi0|Mult1|auto_generated|add6_result[4]~9\) # (!\multi0|Mult1|auto_generated|add10_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|le4a\(3),
	datab => \multi0|Mult1|auto_generated|add10_result[3]~6_combout\,
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|add6_result[4]~9\,
	combout => \multi0|Mult1|auto_generated|add6_result[5]~10_combout\,
	cout => \multi0|Mult1|auto_generated|add6_result[5]~11\);

-- Location: LCCOMB_X58_Y50_N30
\multi0|Mult1|auto_generated|add10_result[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add10_result[4]~8_combout\ = !\multi0|Mult1|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \multi0|Mult1|auto_generated|add10_result[3]~7\,
	combout => \multi0|Mult1|auto_generated|add10_result[4]~8_combout\);

-- Location: LCCOMB_X57_Y50_N14
\multi0|Mult1|auto_generated|le2a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le2a\(4) = (\A[3]~input_o\ & (\B[2]~input_o\ & (\B[1]~input_o\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \multi0|Mult1|auto_generated|le2a\(4));

-- Location: LCCOMB_X58_Y50_N0
\multi0|Mult1|auto_generated|le4a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|le4a\(4) = (\multi0|Mult1|auto_generated|le2a\(4)) # ((\multi0|Mult1|auto_generated|cs3a[1]~0_combout\ & (\B[3]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|cs3a[1]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \multi0|Mult1|auto_generated|le2a\(4),
	combout => \multi0|Mult1|auto_generated|le4a\(4));

-- Location: LCCOMB_X58_Y50_N14
\multi0|Mult1|auto_generated|add6_result[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add6_result[6]~12_combout\ = ((\multi0|Mult1|auto_generated|add10_result[4]~8_combout\ $ (\multi0|Mult1|auto_generated|le4a\(4) $ (\multi0|Mult1|auto_generated|add6_result[5]~11\)))) # (GND)
-- \multi0|Mult1|auto_generated|add6_result[6]~13\ = CARRY((\multi0|Mult1|auto_generated|add10_result[4]~8_combout\ & ((!\multi0|Mult1|auto_generated|add6_result[5]~11\) # (!\multi0|Mult1|auto_generated|le4a\(4)))) # 
-- (!\multi0|Mult1|auto_generated|add10_result[4]~8_combout\ & (!\multi0|Mult1|auto_generated|le4a\(4) & !\multi0|Mult1|auto_generated|add6_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|add10_result[4]~8_combout\,
	datab => \multi0|Mult1|auto_generated|le4a\(4),
	datad => VCC,
	cin => \multi0|Mult1|auto_generated|add6_result[5]~11\,
	combout => \multi0|Mult1|auto_generated|add6_result[6]~12_combout\,
	cout => \multi0|Mult1|auto_generated|add6_result[6]~13\);

-- Location: LCCOMB_X58_Y50_N16
\multi0|Mult1|auto_generated|add6_result[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multi0|Mult1|auto_generated|add6_result[7]~14_combout\ = !\multi0|Mult1|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \multi0|Mult1|auto_generated|add6_result[6]~13\,
	combout => \multi0|Mult1|auto_generated|add6_result[7]~14_combout\);

-- Location: LCCOMB_X58_Y50_N20
\controlMulti|erorTotale~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlMulti|erorTotale~2_combout\ = (\multi0|Mult1|auto_generated|add6_result[5]~10_combout\) # ((\multi0|Mult1|auto_generated|add6_result[7]~14_combout\) # ((\multi0|Mult1|auto_generated|add6_result[6]~12_combout\) # 
-- (\multi0|Mult1|auto_generated|add6_result[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multi0|Mult1|auto_generated|add6_result[5]~10_combout\,
	datab => \multi0|Mult1|auto_generated|add6_result[7]~14_combout\,
	datac => \multi0|Mult1|auto_generated|add6_result[6]~12_combout\,
	datad => \multi0|Mult1|auto_generated|add6_result[4]~8_combout\,
	combout => \controlMulti|erorTotale~2_combout\);

-- Location: LCCOMB_X54_Y50_N14
\controlMulti|erorTotale~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlMulti|erorTotale~3_combout\ = (\mode~input_o\ & (\controlMulti|erorTotale~2_combout\)) # (!\mode~input_o\ & ((\multi0|Mult0|auto_generated|op_3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \controlMulti|erorTotale~2_combout\,
	datad => \multi0|Mult0|auto_generated|op_3~8_combout\,
	combout => \controlMulti|erorTotale~3_combout\);

-- Location: LCCOMB_X54_Y50_N12
\choix_d0|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux0~1_combout\ = (!\controlMulti|erorTotale~1_combout\ & (!\controlMulti|erorTotale~3_combout\ & \operation~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlMulti|erorTotale~1_combout\,
	datac => \controlMulti|erorTotale~3_combout\,
	datad => \operation~input_o\,
	combout => \choix_d0|Mux0~1_combout\);

-- Location: LCCOMB_X55_Y50_N12
\add0|Res[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|Res[0]~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \add0|Res[0]~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \add0|Res[0]~0_combout\,
	cout => \add0|Res[0]~1\);

-- Location: LCCOMB_X55_Y50_N14
\add0|Res[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|Res[1]~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\add0|Res[0]~1\ & VCC)) # (!\B[1]~input_o\ & (!\add0|Res[0]~1\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\add0|Res[0]~1\)) # (!\B[1]~input_o\ & ((\add0|Res[0]~1\) # (GND)))))
-- \add0|Res[1]~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\add0|Res[0]~1\)) # (!\A[1]~input_o\ & ((!\add0|Res[0]~1\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \add0|Res[0]~1\,
	combout => \add0|Res[1]~2_combout\,
	cout => \add0|Res[1]~3\);

-- Location: LCCOMB_X55_Y50_N16
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

-- Location: LCCOMB_X55_Y50_N18
\add0|Res[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add0|Res[3]~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\add0|Res[2]~5\ & VCC)) # (!\B[3]~input_o\ & (!\add0|Res[2]~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\add0|Res[2]~5\)) # (!\B[3]~input_o\ & ((\add0|Res[2]~5\) # (GND)))))
-- \add0|Res[3]~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\add0|Res[2]~5\)) # (!\A[3]~input_o\ & ((!\add0|Res[2]~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \add0|Res[2]~5\,
	combout => \add0|Res[3]~6_combout\,
	cout => \add0|Res[3]~7\);

-- Location: LCCOMB_X55_Y50_N20
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

-- Location: LCCOMB_X55_Y50_N24
\controlAdd|erorTotale~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlAdd|erorTotale~0_combout\ = \add0|Add0~0_combout\ $ (((\mode~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \add0|Add0~0_combout\,
	datac => \mode~input_o\,
	datad => \B[3]~input_o\,
	combout => \controlAdd|erorTotale~0_combout\);

-- Location: LCCOMB_X55_Y50_N30
\controlAdd|erorTotale\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlAdd|erorTotale~combout\ = (\controlAdd|erorTotale~0_combout\) # ((\add0|Res[3]~6_combout\ & (!\A[3]~input_o\ & !\B[3]~input_o\)) # (!\add0|Res[3]~6_combout\ & (\A[3]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlAdd|erorTotale~0_combout\,
	datab => \add0|Res[3]~6_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \controlAdd|erorTotale~combout\);

-- Location: LCCOMB_X54_Y50_N0
\choix_d0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux0~0_combout\ = (!\operation~input_o\ & (!\controlAdd|erorTotale~combout\ & \add0|Res[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation~input_o\,
	datac => \controlAdd|erorTotale~combout\,
	datad => \add0|Res[3]~6_combout\,
	combout => \choix_d0|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y50_N18
\hdmi_out0|res_img|int_res~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|int_res~0_combout\ = (!\reset~input_o\ & ((\choix_d0|Mux0~0_combout\) # ((\choix_d0|Mux0~1_combout\ & \multi0|Res[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux0~1_combout\,
	datab => \multi0|Res[3]~0_combout\,
	datac => \reset~input_o\,
	datad => \choix_d0|Mux0~0_combout\,
	combout => \hdmi_out0|res_img|int_res~0_combout\);

-- Location: LCCOMB_X46_Y44_N28
\hdmi_out0|res_img|process_1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~37_combout\ = (\hdmi_out0|res_img|v_count\(8) & (!\hdmi_out0|res_img|v_count\(9) & \hdmi_out0|res_img|process_1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(8),
	datac => \hdmi_out0|res_img|v_count\(9),
	datad => \hdmi_out0|res_img|process_1~36_combout\,
	combout => \hdmi_out0|res_img|process_1~37_combout\);

-- Location: LCCOMB_X49_Y44_N18
\hdmi_out0|res_img|process_1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~57_combout\ = (\mode~input_o\ & (\hdmi_out0|res_img|int_res~0_combout\ & \hdmi_out0|res_img|process_1~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \hdmi_out0|res_img|int_res~0_combout\,
	datac => \hdmi_out0|res_img|process_1~37_combout\,
	combout => \hdmi_out0|res_img|process_1~57_combout\);

-- Location: LCCOMB_X45_Y45_N20
\hdmi_out0|res_img|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan0~0_combout\ = (!\hdmi_out0|res_img|h_count\(8) & !\hdmi_out0|res_img|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|h_count\(8),
	datad => \hdmi_out0|res_img|h_count\(7),
	combout => \hdmi_out0|res_img|LessThan0~0_combout\);

-- Location: LCCOMB_X47_Y45_N8
\hdmi_out0|res_img|process_1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~60_combout\ = (\hdmi_out0|res_img|h_count\(9) & (((\hdmi_out0|res_img|h_count\(6) & !\hdmi_out0|res_img|LessThan20~0_combout\)) # (!\hdmi_out0|res_img|LessThan0~0_combout\)))

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
	combout => \hdmi_out0|res_img|process_1~60_combout\);

-- Location: LCCOMB_X47_Y45_N18
\hdmi_out0|res_img|process_1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~61_combout\ = (\hdmi_out0|res_img|h_count\(8) & (\hdmi_out0|res_img|h_count\(7) & (\hdmi_out0|res_img|h_count\(6) & !\hdmi_out0|res_img|LessThan17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|h_count\(6),
	datad => \hdmi_out0|res_img|LessThan17~0_combout\,
	combout => \hdmi_out0|res_img|process_1~61_combout\);

-- Location: LCCOMB_X47_Y45_N0
\hdmi_out0|res_img|process_1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~62_combout\ = (\hdmi_out0|res_img|process_1~60_combout\) # ((!\hdmi_out0|res_img|h_count\(9) & !\hdmi_out0|res_img|process_1~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|process_1~60_combout\,
	datad => \hdmi_out0|res_img|process_1~61_combout\,
	combout => \hdmi_out0|res_img|process_1~62_combout\);

-- Location: LCCOMB_X49_Y45_N28
\hdmi_out0|res_img|rgb2[12]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~11_combout\ = (\hdmi_out0|res_img|h_count\(9)) # ((\hdmi_out0|res_img|LessThan9~1_combout\) # (!\hdmi_out0|res_img|LessThan11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|LessThan11~0_combout\,
	datad => \hdmi_out0|res_img|LessThan9~1_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~11_combout\);

-- Location: LCCOMB_X49_Y44_N14
\hdmi_out0|res_img|rgb2[12]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~13_combout\ = (\hdmi_out0|res_img|rgb2[12]~5_combout\ & ((\hdmi_out0|res_img|rgb2[12]~11_combout\))) # (!\hdmi_out0|res_img|rgb2[12]~5_combout\ & (\hdmi_out0|res_img|process_1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|process_1~62_combout\,
	datac => \hdmi_out0|res_img|rgb2[12]~5_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~11_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~13_combout\);

-- Location: LCCOMB_X49_Y45_N22
\hdmi_out0|res_img|rgb2[12]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~10_combout\ = ((\hdmi_out0|res_img|h_count\(9)) # (!\hdmi_out0|res_img|rgb2[12]~2_combout\)) # (!\hdmi_out0|res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datac => \hdmi_out0|res_img|rgb2[12]~2_combout\,
	datad => \hdmi_out0|res_img|h_count\(9),
	combout => \hdmi_out0|res_img|rgb2[12]~10_combout\);

-- Location: LCCOMB_X49_Y45_N18
\hdmi_out0|res_img|rgb2[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~12_combout\ = (\hdmi_out0|res_img|rgb2[12]~5_combout\ & ((\hdmi_out0|res_img|rgb2[12]~10_combout\) # (!\hdmi_out0|res_img|rgb2[12]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2[12]~10_combout\,
	datac => \hdmi_out0|res_img|rgb2[12]~5_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~11_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~12_combout\);

-- Location: LCCOMB_X49_Y44_N20
\hdmi_out0|res_img|rgb2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~14_combout\ = (\hdmi_out0|res_img|rgb2[12]~13_combout\ & (((\hdmi_out0|res_img|process_1~57_combout\ & \hdmi_out0|res_img|rgb2[12]~12_combout\)))) # (!\hdmi_out0|res_img|rgb2[12]~13_combout\ & 
-- ((\hdmi_out0|res_img|process_1~59_combout\) # ((!\hdmi_out0|res_img|rgb2[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~59_combout\,
	datab => \hdmi_out0|res_img|process_1~57_combout\,
	datac => \hdmi_out0|res_img|rgb2[12]~13_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~12_combout\,
	combout => \hdmi_out0|res_img|rgb2~14_combout\);

-- Location: LCCOMB_X50_Y44_N4
\hdmi_out0|res_img|LessThan26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan26~1_combout\ = (\hdmi_out0|res_img|LessThan2~0_combout\ & (((!\hdmi_out0|res_img|v_count\(4) & \hdmi_out0|res_img|LessThan26~0_combout\)) # (!\hdmi_out0|res_img|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(5),
	datab => \hdmi_out0|res_img|v_count\(4),
	datac => \hdmi_out0|res_img|LessThan26~0_combout\,
	datad => \hdmi_out0|res_img|LessThan2~0_combout\,
	combout => \hdmi_out0|res_img|LessThan26~1_combout\);

-- Location: LCCOMB_X50_Y44_N10
\hdmi_out0|res_img|process_1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~38_combout\ = (!\hdmi_out0|res_img|v_count\(9) & ((\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|LessThan26~1_combout\)) # (!\hdmi_out0|res_img|v_count\(8) & ((\hdmi_out0|res_img|LessThan23~1_combout\)))))

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
	combout => \hdmi_out0|res_img|process_1~38_combout\);

-- Location: LCCOMB_X45_Y45_N26
\hdmi_out0|res_img|process_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~10_combout\ = (\hdmi_out0|res_img|h_count\(4) & \hdmi_out0|res_img|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(4),
	datac => \hdmi_out0|res_img|h_count\(5),
	combout => \hdmi_out0|res_img|process_1~10_combout\);

-- Location: LCCOMB_X47_Y45_N14
\hdmi_out0|res_img|process_1~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~71_combout\ = (\hdmi_out0|res_img|h_count\(2)) # ((\hdmi_out0|res_img|h_count\(3)) # ((\hdmi_out0|res_img|h_count\(0) & \hdmi_out0|res_img|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(2),
	datab => \hdmi_out0|res_img|h_count\(0),
	datac => \hdmi_out0|res_img|h_count\(1),
	datad => \hdmi_out0|res_img|h_count\(3),
	combout => \hdmi_out0|res_img|process_1~71_combout\);

-- Location: LCCOMB_X47_Y45_N28
\hdmi_out0|res_img|process_1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~72_combout\ = (\hdmi_out0|res_img|h_count\(9)) # (((\hdmi_out0|res_img|process_1~10_combout\ & \hdmi_out0|res_img|process_1~71_combout\)) # (!\hdmi_out0|res_img|process_1~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~10_combout\,
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|process_1~71_combout\,
	datad => \hdmi_out0|res_img|process_1~61_combout\,
	combout => \hdmi_out0|res_img|process_1~72_combout\);

-- Location: LCCOMB_X54_Y50_N16
\choix_d0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux3~0_combout\ = (\operation~input_o\ & (!\controlMulti|erorTotale~3_combout\ & (!\reset~input_o\ & !\controlMulti|erorTotale~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation~input_o\,
	datab => \controlMulti|erorTotale~3_combout\,
	datac => \reset~input_o\,
	datad => \controlMulti|erorTotale~1_combout\,
	combout => \choix_d0|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y50_N28
\choix_d0|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux3~2_combout\ = (!\reset~input_o\ & (!\controlAdd|erorTotale~combout\ & !\operation~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \controlAdd|erorTotale~combout\,
	datad => \operation~input_o\,
	combout => \choix_d0|Mux3~2_combout\);

-- Location: LCCOMB_X54_Y50_N4
\choix_d0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux1~0_combout\ = (\mode~input_o\ & ((\multi0|Mult1|auto_generated|add6_result[2]~4_combout\))) # (!\mode~input_o\ & (\multi0|Mult0|auto_generated|op_3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \multi0|Mult0|auto_generated|op_3~4_combout\,
	datac => \multi0|Mult1|auto_generated|add6_result[2]~4_combout\,
	combout => \choix_d0|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y50_N30
\choix_d0|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux1~1_combout\ = (\choix_d0|Mux3~0_combout\ & ((\choix_d0|Mux1~0_combout\) # ((\choix_d0|Mux3~2_combout\ & \add0|Res[2]~4_combout\)))) # (!\choix_d0|Mux3~0_combout\ & (\choix_d0|Mux3~2_combout\ & ((\add0|Res[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux3~0_combout\,
	datab => \choix_d0|Mux3~2_combout\,
	datac => \choix_d0|Mux1~0_combout\,
	datad => \add0|Res[2]~4_combout\,
	combout => \choix_d0|Mux1~1_combout\);

-- Location: LCCOMB_X54_Y50_N8
\choix_d0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux2~0_combout\ = (\mode~input_o\ & (\multi0|Mult1|auto_generated|add6_result[1]~2_combout\)) # (!\mode~input_o\ & ((\multi0|Mult0|auto_generated|op_3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datac => \multi0|Mult1|auto_generated|add6_result[1]~2_combout\,
	datad => \multi0|Mult0|auto_generated|op_3~2_combout\,
	combout => \choix_d0|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y50_N6
\choix_d0|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux2~1_combout\ = (\choix_d0|Mux2~0_combout\ & ((\choix_d0|Mux3~0_combout\) # ((\add0|Res[1]~2_combout\ & \choix_d0|Mux3~2_combout\)))) # (!\choix_d0|Mux2~0_combout\ & (((\add0|Res[1]~2_combout\ & \choix_d0|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux2~0_combout\,
	datab => \choix_d0|Mux3~0_combout\,
	datac => \add0|Res[1]~2_combout\,
	datad => \choix_d0|Mux3~2_combout\,
	combout => \choix_d0|Mux2~1_combout\);

-- Location: LCCOMB_X54_Y50_N10
\choix_d0|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux3~1_combout\ = (\mode~input_o\ & (\multi0|Mult1|auto_generated|add6_result[0]~0_combout\)) # (!\mode~input_o\ & ((\multi0|Mult0|auto_generated|op_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \multi0|Mult1|auto_generated|add6_result[0]~0_combout\,
	datac => \multi0|Mult0|auto_generated|op_3~0_combout\,
	combout => \choix_d0|Mux3~1_combout\);

-- Location: LCCOMB_X54_Y50_N22
\choix_d0|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \choix_d0|Mux3~3_combout\ = (\choix_d0|Mux3~1_combout\ & ((\choix_d0|Mux3~0_combout\) # ((\add0|Res[0]~0_combout\ & \choix_d0|Mux3~2_combout\)))) # (!\choix_d0|Mux3~1_combout\ & (((\add0|Res[0]~0_combout\ & \choix_d0|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux3~1_combout\,
	datab => \choix_d0|Mux3~0_combout\,
	datac => \add0|Res[0]~0_combout\,
	datad => \choix_d0|Mux3~2_combout\,
	combout => \choix_d0|Mux3~3_combout\);

-- Location: LCCOMB_X51_Y50_N24
\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ = (!\choix_d0|Mux2~1_combout\ & (\hdmi_out0|res_img|int_res~0_combout\ & (\mode~input_o\ & !\choix_d0|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux2~1_combout\,
	datab => \hdmi_out0|res_img|int_res~0_combout\,
	datac => \mode~input_o\,
	datad => \choix_d0|Mux3~3_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\);

-- Location: LCCOMB_X51_Y50_N8
\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ = (\choix_d0|Mux1~1_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ & (!\mode~input_o\ & \hdmi_out0|res_img|int_res~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux1~1_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\,
	datac => \mode~input_o\,
	datad => \hdmi_out0|res_img|int_res~0_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\);

-- Location: LCCOMB_X51_Y50_N6
\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~8_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ & (\choix_d0|Mux1~1_combout\ $ (((\hdmi_out0|res_img|int_res~0_combout\))))) # 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ & (((!\mode~input_o\ & \hdmi_out0|res_img|int_res~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux1~1_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\,
	datac => \mode~input_o\,
	datad => \hdmi_out0|res_img|int_res~0_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~8_combout\);

-- Location: LCCOMB_X49_Y48_N16
\hdmi_out0|res_img|int_res~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|int_res~1_combout\ = (\hdmi_out0|res_img|int_res~0_combout\ & \mode~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|int_res~0_combout\,
	datac => \mode~input_o\,
	combout => \hdmi_out0|res_img|int_res~1_combout\);

-- Location: LCCOMB_X51_Y50_N22
\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\ = \choix_d0|Mux1~1_combout\ $ (((\hdmi_out0|res_img|int_res~1_combout\ & ((\choix_d0|Mux3~3_combout\) # (\choix_d0|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux1~1_combout\,
	datab => \choix_d0|Mux3~3_combout\,
	datac => \hdmi_out0|res_img|int_res~1_combout\,
	datad => \choix_d0|Mux2~1_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\);

-- Location: LCCOMB_X51_Y50_N10
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\ $ (VCC)
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\,
	datad => VCC,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X51_Y50_N12
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~8_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ 
-- & VCC)) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~8_combout\ & (!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~8_combout\ & !\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~8_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X51_Y50_N14
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ 
-- $ (GND))) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ & (!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ & !\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X51_Y50_N16
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X51_Y50_N4
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ & \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X51_Y50_N26
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LCCOMB_X51_Y50_N20
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~8_combout\ & \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~8_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X51_Y50_N18
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LCCOMB_X50_Y50_N12
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X51_Y50_N0
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\ & \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~5_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LCCOMB_X51_Y50_N2
\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~6_combout\ = \choix_d0|Mux2~1_combout\ $ (((\hdmi_out0|res_img|int_res~0_combout\ & (\mode~input_o\ & \choix_d0|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux2~1_combout\,
	datab => \hdmi_out0|res_img|int_res~0_combout\,
	datac => \mode~input_o\,
	datad => \choix_d0|Mux3~3_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~6_combout\);

-- Location: LCCOMB_X51_Y50_N30
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~6_combout\ & !\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~6_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X51_Y50_N28
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~6_combout\ & \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~6_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X50_Y50_N18
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\) # 
-- (\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datad => VCC,
	cout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X50_Y50_N20
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ & !\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X50_Y50_N22
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & 
-- ((\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\) # (\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X50_Y50_N24
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ & !\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X50_Y50_N26
\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X50_Y50_N4
\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~0_combout\ = \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (VCC)
-- \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~1\ = CARRY(\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X50_Y50_N6
\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~2_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~1\)) # 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~1\) # (GND)))
-- \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~3\ = CARRY((!\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~1\) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~1\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X50_Y50_N2
\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ = (\mode~input_o\ & ((\hdmi_out0|res_img|int_res~0_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~2_combout\)) # (!\hdmi_out0|res_img|int_res~0_combout\ & 
-- ((!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))) # (!\mode~input_o\ & (((!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~2_combout\,
	datab => \mode~input_o\,
	datac => \hdmi_out0|res_img|int_res~0_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\);

-- Location: LCCOMB_X50_Y50_N8
\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~4_combout\ = \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~3\ $ (GND)
-- \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~5\ = CARRY(!\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~3\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X50_Y50_N0
\hdmi_out0|res_img|Div0|auto_generated|divider|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\ = (\hdmi_out0|res_img|int_res~0_combout\ & (\mode~input_o\ & \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~0_combout\,
	datab => \mode~input_o\,
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\);

-- Location: LCCOMB_X50_Y50_N28
\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ = (\hdmi_out0|res_img|int_res~0_combout\ & ((\mode~input_o\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~0_combout\))) # (!\mode~input_o\ & 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\hdmi_out0|res_img|int_res~0_combout\ & (((!\hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~0_combout\,
	datab => \mode~input_o\,
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~0_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\);

-- Location: LCCOMB_X50_Y50_N10
\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~6_combout\ = !\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~5\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X50_Y50_N16
\hdmi_out0|res_img|Div0|auto_generated|divider|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~6_combout\ & (\mode~input_o\ & \hdmi_out0|res_img|int_res~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~6_combout\,
	datab => \mode~input_o\,
	datac => \hdmi_out0|res_img|int_res~0_combout\,
	combout => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\);

-- Location: LCCOMB_X47_Y47_N20
\hdmi_out0|res_img|process_1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~76_combout\ = (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\) # 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\))) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\ $ 
-- (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\,
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	combout => \hdmi_out0|res_img|process_1~76_combout\);

-- Location: LCCOMB_X50_Y50_N14
\hdmi_out0|res_img|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal5~0_combout\ = (!\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~6_combout\ & (\hdmi_out0|res_img|int_res~1_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~4_combout\ & 
-- !\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~6_combout\,
	datab => \hdmi_out0|res_img|int_res~1_combout\,
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	combout => \hdmi_out0|res_img|Equal5~0_combout\);

-- Location: LCCOMB_X54_Y50_N26
\eror~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \eror~0_combout\ = (\operation~input_o\ & ((\controlMulti|erorTotale~3_combout\) # ((\controlMulti|erorTotale~1_combout\)))) # (!\operation~input_o\ & (((\controlAdd|erorTotale~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation~input_o\,
	datab => \controlMulti|erorTotale~3_combout\,
	datac => \controlAdd|erorTotale~combout\,
	datad => \controlMulti|erorTotale~1_combout\,
	combout => \eror~0_combout\);

-- Location: LCCOMB_X47_Y47_N14
eror : fiftyfivenm_lcell_comb
-- Equation(s):
-- \eror~combout\ = (\CLA~input_o\ & ((\eror~combout\))) # (!\CLA~input_o\ & (\eror~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~0_combout\,
	datac => \CLA~input_o\,
	datad => \eror~combout\,
	combout => \eror~combout\);

-- Location: LCCOMB_X47_Y47_N10
\hdmi_out0|res_img|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal4~0_combout\ = (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & 
-- !\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\,
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	combout => \hdmi_out0|res_img|Equal4~0_combout\);

-- Location: LCCOMB_X47_Y47_N16
\hdmi_out0|res_img|process_1~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~77_combout\ = (\hdmi_out0|res_img|Equal5~0_combout\) # ((\eror~combout\) # (\hdmi_out0|res_img|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal5~0_combout\,
	datab => \eror~combout\,
	datac => \hdmi_out0|res_img|Equal4~0_combout\,
	combout => \hdmi_out0|res_img|process_1~77_combout\);

-- Location: LCCOMB_X46_Y45_N24
\hdmi_out0|res_img|LessThan32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan32~0_combout\ = (((!\hdmi_out0|res_img|h_count\(1) & !\hdmi_out0|res_img|h_count\(0))) # (!\hdmi_out0|res_img|h_count\(3))) # (!\hdmi_out0|res_img|h_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(1),
	datab => \hdmi_out0|res_img|h_count\(2),
	datac => \hdmi_out0|res_img|h_count\(0),
	datad => \hdmi_out0|res_img|h_count\(3),
	combout => \hdmi_out0|res_img|LessThan32~0_combout\);

-- Location: LCCOMB_X46_Y45_N26
\hdmi_out0|res_img|LessThan32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan32~1_combout\ = (!\hdmi_out0|res_img|h_count\(4) & \hdmi_out0|res_img|LessThan32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(4),
	datad => \hdmi_out0|res_img|LessThan32~0_combout\,
	combout => \hdmi_out0|res_img|LessThan32~1_combout\);

-- Location: LCCOMB_X47_Y45_N6
\hdmi_out0|res_img|process_1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~63_combout\ = (\hdmi_out0|res_img|h_count\(6) & (\hdmi_out0|res_img|h_count\(9) & (\hdmi_out0|res_img|LessThan0~0_combout\ & !\eror~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(6),
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|LessThan0~0_combout\,
	datad => \eror~combout\,
	combout => \hdmi_out0|res_img|process_1~63_combout\);

-- Location: LCCOMB_X47_Y45_N16
\hdmi_out0|res_img|process_1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~64_combout\ = (\hdmi_out0|res_img|LessThan20~0_combout\ & (\hdmi_out0|res_img|process_1~63_combout\ & ((\hdmi_out0|res_img|h_count\(5)) # (!\hdmi_out0|res_img|LessThan32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(5),
	datab => \hdmi_out0|res_img|LessThan20~0_combout\,
	datac => \hdmi_out0|res_img|LessThan32~1_combout\,
	datad => \hdmi_out0|res_img|process_1~63_combout\,
	combout => \hdmi_out0|res_img|process_1~64_combout\);

-- Location: LCCOMB_X46_Y44_N20
\hdmi_out0|res_img|process_1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~78_combout\ = (\hdmi_out0|res_img|process_1~72_combout\ & (\hdmi_out0|res_img|process_1~76_combout\ & ((\hdmi_out0|res_img|process_1~64_combout\)))) # (!\hdmi_out0|res_img|process_1~72_combout\ & 
-- ((\hdmi_out0|res_img|process_1~77_combout\) # ((\hdmi_out0|res_img|process_1~76_combout\ & \hdmi_out0|res_img|process_1~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~72_combout\,
	datab => \hdmi_out0|res_img|process_1~76_combout\,
	datac => \hdmi_out0|res_img|process_1~77_combout\,
	datad => \hdmi_out0|res_img|process_1~64_combout\,
	combout => \hdmi_out0|res_img|process_1~78_combout\);

-- Location: LCCOMB_X50_Y44_N30
\hdmi_out0|res_img|process_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~16_combout\ = (\hdmi_out0|res_img|v_count\(3)) # ((\hdmi_out0|res_img|v_count\(4)) # ((\hdmi_out0|res_img|v_count\(2) & \hdmi_out0|res_img|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(3),
	datab => \hdmi_out0|res_img|v_count\(4),
	datac => \hdmi_out0|res_img|v_count\(2),
	datad => \hdmi_out0|res_img|v_count\(1),
	combout => \hdmi_out0|res_img|process_1~16_combout\);

-- Location: LCCOMB_X50_Y44_N8
\hdmi_out0|res_img|process_1~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~83_combout\ = (\hdmi_out0|res_img|v_count\(5) & (\hdmi_out0|res_img|process_1~16_combout\)) # (!\hdmi_out0|res_img|v_count\(5) & (((!\hdmi_out0|res_img|v_count\(4) & !\hdmi_out0|res_img|LessThan23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~16_combout\,
	datab => \hdmi_out0|res_img|v_count\(5),
	datac => \hdmi_out0|res_img|v_count\(4),
	datad => \hdmi_out0|res_img|LessThan23~0_combout\,
	combout => \hdmi_out0|res_img|process_1~83_combout\);

-- Location: LCCOMB_X50_Y44_N16
\hdmi_out0|res_img|process_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~15_combout\ = (\hdmi_out0|res_img|v_count\(9)) # (((\hdmi_out0|res_img|v_count\(6)) # (\hdmi_out0|res_img|v_count\(8))) # (!\hdmi_out0|res_img|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(9),
	datab => \hdmi_out0|res_img|v_count\(7),
	datac => \hdmi_out0|res_img|v_count\(6),
	datad => \hdmi_out0|res_img|v_count\(8),
	combout => \hdmi_out0|res_img|process_1~15_combout\);

-- Location: LCCOMB_X46_Y44_N12
\hdmi_out0|res_img|process_1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~17_combout\ = (\hdmi_out0|res_img|process_1~83_combout\) # (\hdmi_out0|res_img|process_1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hdmi_out0|res_img|process_1~83_combout\,
	datad => \hdmi_out0|res_img|process_1~15_combout\,
	combout => \hdmi_out0|res_img|process_1~17_combout\);

-- Location: LCCOMB_X47_Y47_N28
\hdmi_out0|res_img|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal2~0_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\ & (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & 
-- !\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\,
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	combout => \hdmi_out0|res_img|Equal2~0_combout\);

-- Location: LCCOMB_X47_Y47_N26
\hdmi_out0|res_img|process_1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~74_combout\ = (!\hdmi_out0|res_img|Equal2~0_combout\ & (!\eror~combout\ & ((!\hdmi_out0|res_img|Equal5~0_combout\) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datab => \hdmi_out0|res_img|Equal2~0_combout\,
	datac => \hdmi_out0|res_img|Equal5~0_combout\,
	datad => \eror~combout\,
	combout => \hdmi_out0|res_img|process_1~74_combout\);

-- Location: LCCOMB_X47_Y47_N22
\hdmi_out0|res_img|process_1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~70_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\) # 
-- (\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\,
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	combout => \hdmi_out0|res_img|process_1~70_combout\);

-- Location: LCCOMB_X46_Y44_N14
\hdmi_out0|res_img|LessThan28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan28~6_combout\ = ((\hdmi_out0|res_img|LessThan28~5_combout\) # (!\hdmi_out0|res_img|v_count\(7))) # (!\hdmi_out0|res_img|v_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|v_count\(8),
	datac => \hdmi_out0|res_img|v_count\(7),
	datad => \hdmi_out0|res_img|LessThan28~5_combout\,
	combout => \hdmi_out0|res_img|LessThan28~6_combout\);

-- Location: LCCOMB_X46_Y44_N22
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

-- Location: LCCOMB_X51_Y44_N24
\hdmi_out0|res_img|LessThan31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan31~1_combout\ = (\hdmi_out0|res_img|v_count\(3)) # ((\hdmi_out0|res_img|v_count\(2) & ((\hdmi_out0|res_img|v_count\(0)) # (\hdmi_out0|res_img|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(3),
	datab => \hdmi_out0|res_img|v_count\(0),
	datac => \hdmi_out0|res_img|v_count\(1),
	datad => \hdmi_out0|res_img|v_count\(2),
	combout => \hdmi_out0|res_img|LessThan31~1_combout\);

-- Location: LCCOMB_X46_Y44_N0
\hdmi_out0|res_img|LessThan31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan31~2_combout\ = (\hdmi_out0|res_img|v_count\(8) & ((\hdmi_out0|res_img|LessThan31~0_combout\) # ((\hdmi_out0|res_img|v_count\(4) & \hdmi_out0|res_img|LessThan31~1_combout\))))

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
	combout => \hdmi_out0|res_img|LessThan31~2_combout\);

-- Location: LCCOMB_X46_Y44_N4
\hdmi_out0|res_img|process_1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~52_combout\ = (!\hdmi_out0|res_img|v_count\(9) & (\hdmi_out0|res_img|LessThan28~6_combout\ & \hdmi_out0|res_img|LessThan31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(9),
	datac => \hdmi_out0|res_img|LessThan28~6_combout\,
	datad => \hdmi_out0|res_img|LessThan31~2_combout\,
	combout => \hdmi_out0|res_img|process_1~52_combout\);

-- Location: LCCOMB_X46_Y44_N16
\hdmi_out0|res_img|process_1~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~73_combout\ = (\hdmi_out0|res_img|process_1~15_combout\ & (((!\hdmi_out0|res_img|process_1~72_combout\ & \hdmi_out0|res_img|process_1~52_combout\)))) # (!\hdmi_out0|res_img|process_1~15_combout\ & 
-- (((!\hdmi_out0|res_img|process_1~72_combout\ & \hdmi_out0|res_img|process_1~52_combout\)) # (!\hdmi_out0|res_img|process_1~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~15_combout\,
	datab => \hdmi_out0|res_img|process_1~83_combout\,
	datac => \hdmi_out0|res_img|process_1~72_combout\,
	datad => \hdmi_out0|res_img|process_1~52_combout\,
	combout => \hdmi_out0|res_img|process_1~73_combout\);

-- Location: LCCOMB_X46_Y44_N30
\hdmi_out0|res_img|process_1~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~75_combout\ = (\hdmi_out0|res_img|process_1~17_combout\ & (!\hdmi_out0|res_img|process_1~74_combout\ & ((\hdmi_out0|res_img|process_1~73_combout\)))) # (!\hdmi_out0|res_img|process_1~17_combout\ & 
-- ((\hdmi_out0|res_img|process_1~70_combout\) # ((!\hdmi_out0|res_img|process_1~74_combout\ & \hdmi_out0|res_img|process_1~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~17_combout\,
	datab => \hdmi_out0|res_img|process_1~74_combout\,
	datac => \hdmi_out0|res_img|process_1~70_combout\,
	datad => \hdmi_out0|res_img|process_1~73_combout\,
	combout => \hdmi_out0|res_img|process_1~75_combout\);

-- Location: LCCOMB_X47_Y47_N30
\hdmi_out0|res_img|process_1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~66_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ $ 
-- (\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\)))) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\,
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	combout => \hdmi_out0|res_img|process_1~66_combout\);

-- Location: LCCOMB_X50_Y50_N30
\hdmi_out0|res_img|process_1~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~85_combout\ = (\hdmi_out0|res_img|int_res~0_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~4_combout\ & (\mode~input_o\ & !\hdmi_out0|res_img|Div0|auto_generated|divider|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~0_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~4_combout\,
	datac => \mode~input_o\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|op_1~6_combout\,
	combout => \hdmi_out0|res_img|process_1~85_combout\);

-- Location: LCCOMB_X47_Y47_N8
\hdmi_out0|res_img|process_1~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~67_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\) # ((\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\)))) # 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\) # 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\,
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	combout => \hdmi_out0|res_img|process_1~67_combout\);

-- Location: LCCOMB_X46_Y44_N8
\hdmi_out0|res_img|process_1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~68_combout\ = (\hdmi_out0|res_img|process_1~85_combout\ & (!\hdmi_out0|res_img|process_1~67_combout\ & (!\hdmi_out0|res_img|process_1~66_combout\ & \hdmi_out0|res_img|process_1~36_combout\))) # 
-- (!\hdmi_out0|res_img|process_1~85_combout\ & (\hdmi_out0|res_img|process_1~67_combout\ & (\hdmi_out0|res_img|process_1~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~85_combout\,
	datab => \hdmi_out0|res_img|process_1~67_combout\,
	datac => \hdmi_out0|res_img|process_1~66_combout\,
	datad => \hdmi_out0|res_img|process_1~36_combout\,
	combout => \hdmi_out0|res_img|process_1~68_combout\);

-- Location: LCCOMB_X46_Y44_N26
\hdmi_out0|res_img|process_1~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~69_combout\ = (\hdmi_out0|res_img|process_1~58_combout\ & (!\hdmi_out0|res_img|process_1~66_combout\ & ((\hdmi_out0|res_img|process_1~68_combout\)))) # (!\hdmi_out0|res_img|process_1~58_combout\ & ((\eror~combout\) # 
-- (\hdmi_out0|res_img|process_1~66_combout\ $ (\hdmi_out0|res_img|process_1~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~66_combout\,
	datab => \eror~combout\,
	datac => \hdmi_out0|res_img|process_1~68_combout\,
	datad => \hdmi_out0|res_img|process_1~58_combout\,
	combout => \hdmi_out0|res_img|process_1~69_combout\);

-- Location: LCCOMB_X47_Y47_N24
\hdmi_out0|res_img|process_1~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~65_combout\ = (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\) # (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\,
	datac => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	combout => \hdmi_out0|res_img|process_1~65_combout\);

-- Location: LCCOMB_X46_Y44_N24
\hdmi_out0|res_img|process_1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~86_combout\ = (\hdmi_out0|res_img|process_1~65_combout\ & (\hdmi_out0|res_img|LessThan31~2_combout\ & (\hdmi_out0|res_img|LessThan28~6_combout\ & \hdmi_out0|res_img|process_1~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~65_combout\,
	datab => \hdmi_out0|res_img|LessThan31~2_combout\,
	datac => \hdmi_out0|res_img|LessThan28~6_combout\,
	datad => \hdmi_out0|res_img|process_1~64_combout\,
	combout => \hdmi_out0|res_img|process_1~86_combout\);

-- Location: LCCOMB_X46_Y44_N6
\hdmi_out0|res_img|process_1~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~87_combout\ = (!\hdmi_out0|res_img|v_count\(9) & ((\hdmi_out0|res_img|process_1~86_combout\) # ((\hdmi_out0|res_img|v_count\(8) & \hdmi_out0|res_img|process_1~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(9),
	datab => \hdmi_out0|res_img|v_count\(8),
	datac => \hdmi_out0|res_img|process_1~69_combout\,
	datad => \hdmi_out0|res_img|process_1~86_combout\,
	combout => \hdmi_out0|res_img|process_1~87_combout\);

-- Location: LCCOMB_X46_Y44_N2
\hdmi_out0|res_img|process_1~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~79_combout\ = (\hdmi_out0|res_img|process_1~75_combout\) # ((\hdmi_out0|res_img|process_1~87_combout\) # ((\hdmi_out0|res_img|process_1~38_combout\ & \hdmi_out0|res_img|process_1~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~38_combout\,
	datab => \hdmi_out0|res_img|process_1~78_combout\,
	datac => \hdmi_out0|res_img|process_1~75_combout\,
	datad => \hdmi_out0|res_img|process_1~87_combout\,
	combout => \hdmi_out0|res_img|process_1~79_combout\);

-- Location: LCCOMB_X49_Y44_N30
\hdmi_out0|res_img|rgb2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~15_combout\ = (\hdmi_out0|res_img|rgb2[12]~5_combout\ & ((\hdmi_out0|res_img|rgb2~14_combout\))) # (!\hdmi_out0|res_img|rgb2[12]~5_combout\ & ((\hdmi_out0|res_img|process_1~79_combout\) # (!\hdmi_out0|res_img|rgb2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2[12]~5_combout\,
	datac => \hdmi_out0|res_img|process_1~79_combout\,
	datad => \hdmi_out0|res_img|rgb2~14_combout\,
	combout => \hdmi_out0|res_img|rgb2~15_combout\);

-- Location: LCCOMB_X45_Y45_N6
\hdmi_out0|res_img|process_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~11_combout\ = (!\hdmi_out0|res_img|h_count\(4) & !\hdmi_out0|res_img|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(4),
	datac => \hdmi_out0|res_img|h_count\(5),
	combout => \hdmi_out0|res_img|process_1~11_combout\);

-- Location: LCCOMB_X45_Y45_N8
\hdmi_out0|res_img|process_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~12_combout\ = (\hdmi_out0|res_img|process_1~11_combout\ & (!\hdmi_out0|res_img|h_count\(6) & ((\hdmi_out0|res_img|LessThan34~0_combout\) # (!\hdmi_out0|res_img|h_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~11_combout\,
	datab => \hdmi_out0|res_img|h_count\(3),
	datac => \hdmi_out0|res_img|LessThan34~0_combout\,
	datad => \hdmi_out0|res_img|h_count\(6),
	combout => \hdmi_out0|res_img|process_1~12_combout\);

-- Location: LCCOMB_X45_Y45_N0
\hdmi_out0|res_img|LessThan29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|LessThan29~2_combout\ = (!\hdmi_out0|res_img|h_count\(7) & (((\hdmi_out0|res_img|LessThan29~0_combout\) # (!\hdmi_out0|res_img|process_1~10_combout\)) # (!\hdmi_out0|res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datab => \hdmi_out0|res_img|h_count\(6),
	datac => \hdmi_out0|res_img|process_1~10_combout\,
	datad => \hdmi_out0|res_img|LessThan29~0_combout\,
	combout => \hdmi_out0|res_img|LessThan29~2_combout\);

-- Location: LCCOMB_X45_Y45_N22
\hdmi_out0|res_img|process_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~13_combout\ = (\hdmi_out0|res_img|h_count\(8) & ((\hdmi_out0|res_img|h_count\(7)) # ((!\hdmi_out0|res_img|process_1~12_combout\)))) # (!\hdmi_out0|res_img|h_count\(8) & (((\hdmi_out0|res_img|LessThan29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|process_1~12_combout\,
	datad => \hdmi_out0|res_img|LessThan29~2_combout\,
	combout => \hdmi_out0|res_img|process_1~13_combout\);

-- Location: LCCOMB_X45_Y45_N10
\hdmi_out0|res_img|process_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~14_combout\ = (((!\hdmi_out0|res_img|LessThan29~0_combout\) # (!\hdmi_out0|res_img|h_count\(6))) # (!\hdmi_out0|res_img|LessThan0~0_combout\)) # (!\hdmi_out0|res_img|process_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~10_combout\,
	datab => \hdmi_out0|res_img|LessThan0~0_combout\,
	datac => \hdmi_out0|res_img|h_count\(6),
	datad => \hdmi_out0|res_img|LessThan29~0_combout\,
	combout => \hdmi_out0|res_img|process_1~14_combout\);

-- Location: LCCOMB_X45_Y45_N24
\hdmi_out0|res_img|rgb2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~8_combout\ = ((\hdmi_out0|res_img|process_1~13_combout\) # (!\hdmi_out0|res_img|process_1~14_combout\)) # (!\hdmi_out0|res_img|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|process_1~13_combout\,
	datad => \hdmi_out0|res_img|process_1~14_combout\,
	combout => \hdmi_out0|res_img|rgb2~8_combout\);

-- Location: LCCOMB_X50_Y46_N18
\hdmi_out0|res_img|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add3~0_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ $ (VCC))) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\ & 
-- (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & VCC))
-- \hdmi_out0|res_img|Add3~1\ = CARRY((\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\ & \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datad => VCC,
	combout => \hdmi_out0|res_img|Add3~0_combout\,
	cout => \hdmi_out0|res_img|Add3~1\);

-- Location: LCCOMB_X50_Y46_N20
\hdmi_out0|res_img|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add3~2_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & (\hdmi_out0|res_img|Add3~1\ & VCC)) # 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & (!\hdmi_out0|res_img|Add3~1\)))) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & 
-- (!\hdmi_out0|res_img|Add3~1\)) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & ((\hdmi_out0|res_img|Add3~1\) # (GND)))))
-- \hdmi_out0|res_img|Add3~3\ = CARRY((\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & !\hdmi_out0|res_img|Add3~1\)) # 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & ((!\hdmi_out0|res_img|Add3~1\) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add3~1\,
	combout => \hdmi_out0|res_img|Add3~2_combout\,
	cout => \hdmi_out0|res_img|Add3~3\);

-- Location: LCCOMB_X50_Y46_N22
\hdmi_out0|res_img|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add3~4_combout\ = ((\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\ $ (\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ $ (!\hdmi_out0|res_img|Add3~3\)))) # (GND)
-- \hdmi_out0|res_img|Add3~5\ = CARRY((\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\) # (!\hdmi_out0|res_img|Add3~3\))) # 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & !\hdmi_out0|res_img|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|_~5_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add3~3\,
	combout => \hdmi_out0|res_img|Add3~4_combout\,
	cout => \hdmi_out0|res_img|Add3~5\);

-- Location: LCCOMB_X50_Y46_N24
\hdmi_out0|res_img|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add3~6_combout\ = (((\hdmi_out0|res_img|Add3~5\))) # (GND)
-- \hdmi_out0|res_img|Add3~7\ = CARRY(\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add3~5\,
	combout => \hdmi_out0|res_img|Add3~6_combout\,
	cout => \hdmi_out0|res_img|Add3~7\);

-- Location: LCCOMB_X50_Y46_N26
\hdmi_out0|res_img|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add3~8_combout\ = \hdmi_out0|res_img|Add3~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \hdmi_out0|res_img|Add3~7\,
	combout => \hdmi_out0|res_img|Add3~8_combout\);

-- Location: LCCOMB_X50_Y46_N0
\hdmi_out0|res_img|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~0_combout\ = (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & (\choix_d0|Mux2~1_combout\ $ (VCC))) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & ((\choix_d0|Mux2~1_combout\) # 
-- (GND)))
-- \hdmi_out0|res_img|Add4~1\ = CARRY((\choix_d0|Mux2~1_combout\) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datab => \choix_d0|Mux2~1_combout\,
	datad => VCC,
	combout => \hdmi_out0|res_img|Add4~0_combout\,
	cout => \hdmi_out0|res_img|Add4~1\);

-- Location: LCCOMB_X50_Y46_N2
\hdmi_out0|res_img|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~2_combout\ = (\choix_d0|Mux1~1_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & (!\hdmi_out0|res_img|Add4~1\)) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & 
-- (\hdmi_out0|res_img|Add4~1\ & VCC)))) # (!\choix_d0|Mux1~1_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & ((\hdmi_out0|res_img|Add4~1\) # (GND))) # 
-- (!\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & (!\hdmi_out0|res_img|Add4~1\))))
-- \hdmi_out0|res_img|Add4~3\ = CARRY((\choix_d0|Mux1~1_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & !\hdmi_out0|res_img|Add4~1\)) # (!\choix_d0|Mux1~1_combout\ & 
-- ((\hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\) # (!\hdmi_out0|res_img|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \choix_d0|Mux1~1_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~1\,
	combout => \hdmi_out0|res_img|Add4~2_combout\,
	cout => \hdmi_out0|res_img|Add4~3\);

-- Location: LCCOMB_X50_Y46_N4
\hdmi_out0|res_img|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~4_combout\ = ((\hdmi_out0|res_img|int_res~0_combout\ $ (\hdmi_out0|res_img|Add3~0_combout\ $ (\hdmi_out0|res_img|Add4~3\)))) # (GND)
-- \hdmi_out0|res_img|Add4~5\ = CARRY((\hdmi_out0|res_img|int_res~0_combout\ & ((!\hdmi_out0|res_img|Add4~3\) # (!\hdmi_out0|res_img|Add3~0_combout\))) # (!\hdmi_out0|res_img|int_res~0_combout\ & (!\hdmi_out0|res_img|Add3~0_combout\ & 
-- !\hdmi_out0|res_img|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~0_combout\,
	datab => \hdmi_out0|res_img|Add3~0_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~3\,
	combout => \hdmi_out0|res_img|Add4~4_combout\,
	cout => \hdmi_out0|res_img|Add4~5\);

-- Location: LCCOMB_X50_Y46_N6
\hdmi_out0|res_img|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~6_combout\ = (\hdmi_out0|res_img|int_res~1_combout\ & ((\hdmi_out0|res_img|Add3~2_combout\ & (!\hdmi_out0|res_img|Add4~5\)) # (!\hdmi_out0|res_img|Add3~2_combout\ & (\hdmi_out0|res_img|Add4~5\ & VCC)))) # 
-- (!\hdmi_out0|res_img|int_res~1_combout\ & ((\hdmi_out0|res_img|Add3~2_combout\ & ((\hdmi_out0|res_img|Add4~5\) # (GND))) # (!\hdmi_out0|res_img|Add3~2_combout\ & (!\hdmi_out0|res_img|Add4~5\))))
-- \hdmi_out0|res_img|Add4~7\ = CARRY((\hdmi_out0|res_img|int_res~1_combout\ & (\hdmi_out0|res_img|Add3~2_combout\ & !\hdmi_out0|res_img|Add4~5\)) # (!\hdmi_out0|res_img|int_res~1_combout\ & ((\hdmi_out0|res_img|Add3~2_combout\) # 
-- (!\hdmi_out0|res_img|Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add3~2_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~5\,
	combout => \hdmi_out0|res_img|Add4~6_combout\,
	cout => \hdmi_out0|res_img|Add4~7\);

-- Location: LCCOMB_X50_Y46_N8
\hdmi_out0|res_img|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~8_combout\ = ((\hdmi_out0|res_img|int_res~1_combout\ $ (\hdmi_out0|res_img|Add3~4_combout\ $ (\hdmi_out0|res_img|Add4~7\)))) # (GND)
-- \hdmi_out0|res_img|Add4~9\ = CARRY((\hdmi_out0|res_img|int_res~1_combout\ & ((!\hdmi_out0|res_img|Add4~7\) # (!\hdmi_out0|res_img|Add3~4_combout\))) # (!\hdmi_out0|res_img|int_res~1_combout\ & (!\hdmi_out0|res_img|Add3~4_combout\ & 
-- !\hdmi_out0|res_img|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add3~4_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~7\,
	combout => \hdmi_out0|res_img|Add4~8_combout\,
	cout => \hdmi_out0|res_img|Add4~9\);

-- Location: LCCOMB_X50_Y46_N10
\hdmi_out0|res_img|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~10_combout\ = (\hdmi_out0|res_img|int_res~1_combout\ & ((\hdmi_out0|res_img|Add3~6_combout\ & (!\hdmi_out0|res_img|Add4~9\)) # (!\hdmi_out0|res_img|Add3~6_combout\ & (\hdmi_out0|res_img|Add4~9\ & VCC)))) # 
-- (!\hdmi_out0|res_img|int_res~1_combout\ & ((\hdmi_out0|res_img|Add3~6_combout\ & ((\hdmi_out0|res_img|Add4~9\) # (GND))) # (!\hdmi_out0|res_img|Add3~6_combout\ & (!\hdmi_out0|res_img|Add4~9\))))
-- \hdmi_out0|res_img|Add4~11\ = CARRY((\hdmi_out0|res_img|int_res~1_combout\ & (\hdmi_out0|res_img|Add3~6_combout\ & !\hdmi_out0|res_img|Add4~9\)) # (!\hdmi_out0|res_img|int_res~1_combout\ & ((\hdmi_out0|res_img|Add3~6_combout\) # 
-- (!\hdmi_out0|res_img|Add4~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add3~6_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~9\,
	combout => \hdmi_out0|res_img|Add4~10_combout\,
	cout => \hdmi_out0|res_img|Add4~11\);

-- Location: LCCOMB_X50_Y46_N12
\hdmi_out0|res_img|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~12_combout\ = ((\hdmi_out0|res_img|Add3~8_combout\ $ (\hdmi_out0|res_img|int_res~1_combout\ $ (\hdmi_out0|res_img|Add4~11\)))) # (GND)
-- \hdmi_out0|res_img|Add4~13\ = CARRY((\hdmi_out0|res_img|Add3~8_combout\ & (\hdmi_out0|res_img|int_res~1_combout\ & !\hdmi_out0|res_img|Add4~11\)) # (!\hdmi_out0|res_img|Add3~8_combout\ & ((\hdmi_out0|res_img|int_res~1_combout\) # 
-- (!\hdmi_out0|res_img|Add4~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add3~8_combout\,
	datab => \hdmi_out0|res_img|int_res~1_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~11\,
	combout => \hdmi_out0|res_img|Add4~12_combout\,
	cout => \hdmi_out0|res_img|Add4~13\);

-- Location: LCCOMB_X50_Y46_N14
\hdmi_out0|res_img|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~14_combout\ = (\hdmi_out0|res_img|int_res~1_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & (!\hdmi_out0|res_img|Add4~13\)) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & 
-- (\hdmi_out0|res_img|Add4~13\ & VCC)))) # (!\hdmi_out0|res_img|int_res~1_combout\ & ((\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & ((\hdmi_out0|res_img|Add4~13\) # (GND))) # (!\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & 
-- (!\hdmi_out0|res_img|Add4~13\))))
-- \hdmi_out0|res_img|Add4~15\ = CARRY((\hdmi_out0|res_img|int_res~1_combout\ & (\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\ & !\hdmi_out0|res_img|Add4~13\)) # (!\hdmi_out0|res_img|int_res~1_combout\ & 
-- ((\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\) # (!\hdmi_out0|res_img|Add4~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add4~13\,
	combout => \hdmi_out0|res_img|Add4~14_combout\,
	cout => \hdmi_out0|res_img|Add4~15\);

-- Location: LCCOMB_X54_Y50_N20
\hdmi_out0|res_img|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~0_combout\ = \choix_d0|Mux3~3_combout\ $ (((\mode~input_o\ & \hdmi_out0|res_img|int_res~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \hdmi_out0|res_img|int_res~0_combout\,
	datac => \choix_d0|Mux3~3_combout\,
	combout => \hdmi_out0|res_img|Add2~0_combout\);

-- Location: LCCOMB_X49_Y46_N0
\hdmi_out0|res_img|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~1_combout\ = (\hdmi_out0|res_img|int_res~1_combout\ & (\hdmi_out0|res_img|Add2~0_combout\ $ (VCC))) # (!\hdmi_out0|res_img|int_res~1_combout\ & (\hdmi_out0|res_img|Add2~0_combout\ & VCC))
-- \hdmi_out0|res_img|Add2~2\ = CARRY((\hdmi_out0|res_img|int_res~1_combout\ & \hdmi_out0|res_img|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add2~0_combout\,
	datad => VCC,
	combout => \hdmi_out0|res_img|Add2~1_combout\,
	cout => \hdmi_out0|res_img|Add2~2\);

-- Location: LCCOMB_X49_Y46_N2
\hdmi_out0|res_img|Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~3_combout\ = (\hdmi_out0|res_img|Add2~2\ & (\hdmi_out0|res_img|int_res~1_combout\ $ ((!\hdmi_out0|res_img|Add4~0_combout\)))) # (!\hdmi_out0|res_img|Add2~2\ & ((\hdmi_out0|res_img|int_res~1_combout\ $ 
-- (\hdmi_out0|res_img|Add4~0_combout\)) # (GND)))
-- \hdmi_out0|res_img|Add2~4\ = CARRY((\hdmi_out0|res_img|int_res~1_combout\ $ (!\hdmi_out0|res_img|Add4~0_combout\)) # (!\hdmi_out0|res_img|Add2~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add4~0_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~2\,
	combout => \hdmi_out0|res_img|Add2~3_combout\,
	cout => \hdmi_out0|res_img|Add2~4\);

-- Location: LCCOMB_X49_Y46_N4
\hdmi_out0|res_img|Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~5_combout\ = (\hdmi_out0|res_img|Add2~4\ & ((\hdmi_out0|res_img|int_res~1_combout\ $ (\hdmi_out0|res_img|Add4~2_combout\)))) # (!\hdmi_out0|res_img|Add2~4\ & (\hdmi_out0|res_img|int_res~1_combout\ $ 
-- (\hdmi_out0|res_img|Add4~2_combout\ $ (VCC))))
-- \hdmi_out0|res_img|Add2~6\ = CARRY((!\hdmi_out0|res_img|Add2~4\ & (\hdmi_out0|res_img|int_res~1_combout\ $ (\hdmi_out0|res_img|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add4~2_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~4\,
	combout => \hdmi_out0|res_img|Add2~5_combout\,
	cout => \hdmi_out0|res_img|Add2~6\);

-- Location: LCCOMB_X49_Y46_N6
\hdmi_out0|res_img|Add2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~7_combout\ = (\hdmi_out0|res_img|Add2~6\ & (\hdmi_out0|res_img|int_res~1_combout\ $ ((!\hdmi_out0|res_img|Add4~4_combout\)))) # (!\hdmi_out0|res_img|Add2~6\ & ((\hdmi_out0|res_img|int_res~1_combout\ $ 
-- (\hdmi_out0|res_img|Add4~4_combout\)) # (GND)))
-- \hdmi_out0|res_img|Add2~8\ = CARRY((\hdmi_out0|res_img|int_res~1_combout\ $ (!\hdmi_out0|res_img|Add4~4_combout\)) # (!\hdmi_out0|res_img|Add2~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add4~4_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~6\,
	combout => \hdmi_out0|res_img|Add2~7_combout\,
	cout => \hdmi_out0|res_img|Add2~8\);

-- Location: LCCOMB_X49_Y46_N8
\hdmi_out0|res_img|Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~9_combout\ = (\hdmi_out0|res_img|Add2~8\ & ((\hdmi_out0|res_img|Add4~6_combout\ $ (\hdmi_out0|res_img|int_res~1_combout\)))) # (!\hdmi_out0|res_img|Add2~8\ & (\hdmi_out0|res_img|Add4~6_combout\ $ 
-- (\hdmi_out0|res_img|int_res~1_combout\ $ (VCC))))
-- \hdmi_out0|res_img|Add2~10\ = CARRY((!\hdmi_out0|res_img|Add2~8\ & (\hdmi_out0|res_img|Add4~6_combout\ $ (\hdmi_out0|res_img|int_res~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add4~6_combout\,
	datab => \hdmi_out0|res_img|int_res~1_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~8\,
	combout => \hdmi_out0|res_img|Add2~9_combout\,
	cout => \hdmi_out0|res_img|Add2~10\);

-- Location: LCCOMB_X49_Y46_N10
\hdmi_out0|res_img|Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~11_combout\ = (\hdmi_out0|res_img|Add2~10\ & (\hdmi_out0|res_img|int_res~1_combout\ $ ((!\hdmi_out0|res_img|Add4~8_combout\)))) # (!\hdmi_out0|res_img|Add2~10\ & ((\hdmi_out0|res_img|int_res~1_combout\ $ 
-- (\hdmi_out0|res_img|Add4~8_combout\)) # (GND)))
-- \hdmi_out0|res_img|Add2~12\ = CARRY((\hdmi_out0|res_img|int_res~1_combout\ $ (!\hdmi_out0|res_img|Add4~8_combout\)) # (!\hdmi_out0|res_img|Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add4~8_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~10\,
	combout => \hdmi_out0|res_img|Add2~11_combout\,
	cout => \hdmi_out0|res_img|Add2~12\);

-- Location: LCCOMB_X49_Y46_N12
\hdmi_out0|res_img|Add2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~13_combout\ = (\hdmi_out0|res_img|Add2~12\ & ((\hdmi_out0|res_img|int_res~1_combout\ $ (\hdmi_out0|res_img|Add4~10_combout\)))) # (!\hdmi_out0|res_img|Add2~12\ & (\hdmi_out0|res_img|int_res~1_combout\ $ 
-- (\hdmi_out0|res_img|Add4~10_combout\ $ (VCC))))
-- \hdmi_out0|res_img|Add2~14\ = CARRY((!\hdmi_out0|res_img|Add2~12\ & (\hdmi_out0|res_img|int_res~1_combout\ $ (\hdmi_out0|res_img|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add4~10_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~12\,
	combout => \hdmi_out0|res_img|Add2~13_combout\,
	cout => \hdmi_out0|res_img|Add2~14\);

-- Location: LCCOMB_X49_Y46_N14
\hdmi_out0|res_img|Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~15_combout\ = (\hdmi_out0|res_img|Add2~14\ & (\hdmi_out0|res_img|int_res~1_combout\ $ ((!\hdmi_out0|res_img|Add4~12_combout\)))) # (!\hdmi_out0|res_img|Add2~14\ & ((\hdmi_out0|res_img|int_res~1_combout\ $ 
-- (\hdmi_out0|res_img|Add4~12_combout\)) # (GND)))
-- \hdmi_out0|res_img|Add2~16\ = CARRY((\hdmi_out0|res_img|int_res~1_combout\ $ (!\hdmi_out0|res_img|Add4~12_combout\)) # (!\hdmi_out0|res_img|Add2~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add4~12_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~14\,
	combout => \hdmi_out0|res_img|Add2~15_combout\,
	cout => \hdmi_out0|res_img|Add2~16\);

-- Location: LCCOMB_X49_Y46_N16
\hdmi_out0|res_img|Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~17_combout\ = (\hdmi_out0|res_img|Add2~16\ & ((\hdmi_out0|res_img|int_res~1_combout\ $ (\hdmi_out0|res_img|Add4~14_combout\)))) # (!\hdmi_out0|res_img|Add2~16\ & (\hdmi_out0|res_img|int_res~1_combout\ $ 
-- (\hdmi_out0|res_img|Add4~14_combout\ $ (VCC))))
-- \hdmi_out0|res_img|Add2~18\ = CARRY((!\hdmi_out0|res_img|Add2~16\ & (\hdmi_out0|res_img|int_res~1_combout\ $ (\hdmi_out0|res_img|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add4~14_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~16\,
	combout => \hdmi_out0|res_img|Add2~17_combout\,
	cout => \hdmi_out0|res_img|Add2~18\);

-- Location: LCCOMB_X49_Y46_N26
\hdmi_out0|res_img|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal11~0_combout\ = (!\hdmi_out0|res_img|Add2~13_combout\ & (!\hdmi_out0|res_img|Add2~15_combout\ & (!\hdmi_out0|res_img|Add2~9_combout\ & !\hdmi_out0|res_img|Add2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~13_combout\,
	datab => \hdmi_out0|res_img|Add2~15_combout\,
	datac => \hdmi_out0|res_img|Add2~9_combout\,
	datad => \hdmi_out0|res_img|Add2~11_combout\,
	combout => \hdmi_out0|res_img|Equal11~0_combout\);

-- Location: LCCOMB_X50_Y46_N16
\hdmi_out0|res_img|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add4~16_combout\ = \hdmi_out0|res_img|int_res~1_combout\ $ (\hdmi_out0|res_img|Add4~15\ $ (\hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datad => \hdmi_out0|res_img|Div0|auto_generated|divider|_~4_combout\,
	cin => \hdmi_out0|res_img|Add4~15\,
	combout => \hdmi_out0|res_img|Add4~16_combout\);

-- Location: LCCOMB_X49_Y46_N18
\hdmi_out0|res_img|Add2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~19_combout\ = (\hdmi_out0|res_img|Add2~18\ & (\hdmi_out0|res_img|int_res~1_combout\ $ ((!\hdmi_out0|res_img|Add4~16_combout\)))) # (!\hdmi_out0|res_img|Add2~18\ & ((\hdmi_out0|res_img|int_res~1_combout\ $ 
-- (\hdmi_out0|res_img|Add4~16_combout\)) # (GND)))
-- \hdmi_out0|res_img|Add2~20\ = CARRY((\hdmi_out0|res_img|int_res~1_combout\ $ (!\hdmi_out0|res_img|Add4~16_combout\)) # (!\hdmi_out0|res_img|Add2~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datab => \hdmi_out0|res_img|Add4~16_combout\,
	datad => VCC,
	cin => \hdmi_out0|res_img|Add2~18\,
	combout => \hdmi_out0|res_img|Add2~19_combout\,
	cout => \hdmi_out0|res_img|Add2~20\);

-- Location: LCCOMB_X49_Y46_N20
\hdmi_out0|res_img|Add2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Add2~21_combout\ = \hdmi_out0|res_img|int_res~1_combout\ $ (\hdmi_out0|res_img|Add2~20\ $ (!\hdmi_out0|res_img|Add4~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|int_res~1_combout\,
	datad => \hdmi_out0|res_img|Add4~16_combout\,
	cin => \hdmi_out0|res_img|Add2~20\,
	combout => \hdmi_out0|res_img|Add2~21_combout\);

-- Location: LCCOMB_X47_Y46_N28
\hdmi_out0|res_img|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal17~0_combout\ = (\hdmi_out0|res_img|Add2~19_combout\) # ((\hdmi_out0|res_img|Add2~5_combout\) # ((\hdmi_out0|res_img|Add2~3_combout\) # (\hdmi_out0|res_img|Add2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~19_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|Add2~3_combout\,
	datad => \hdmi_out0|res_img|Add2~21_combout\,
	combout => \hdmi_out0|res_img|Equal17~0_combout\);

-- Location: LCCOMB_X47_Y46_N22
\hdmi_out0|res_img|Equal17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal17~1_combout\ = (!\hdmi_out0|res_img|Add2~17_combout\ & (\hdmi_out0|res_img|Add2~7_combout\ & (\hdmi_out0|res_img|Equal11~0_combout\ & !\hdmi_out0|res_img|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~17_combout\,
	datab => \hdmi_out0|res_img|Add2~7_combout\,
	datac => \hdmi_out0|res_img|Equal11~0_combout\,
	datad => \hdmi_out0|res_img|Equal17~0_combout\,
	combout => \hdmi_out0|res_img|Equal17~1_combout\);

-- Location: LCCOMB_X47_Y46_N12
\hdmi_out0|res_img|process_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~18_combout\ = (!\hdmi_out0|res_img|Add2~19_combout\ & (\hdmi_out0|res_img|Add2~5_combout\ & !\hdmi_out0|res_img|Add2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~19_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|Add2~3_combout\,
	combout => \hdmi_out0|res_img|process_1~18_combout\);

-- Location: LCCOMB_X47_Y46_N14
\hdmi_out0|res_img|process_1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~19_combout\ = (\hdmi_out0|res_img|process_1~18_combout\ & (!\hdmi_out0|res_img|Add2~7_combout\ & (!\hdmi_out0|res_img|Add2~17_combout\ & !\hdmi_out0|res_img|Add2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~18_combout\,
	datab => \hdmi_out0|res_img|Add2~7_combout\,
	datac => \hdmi_out0|res_img|Add2~17_combout\,
	datad => \hdmi_out0|res_img|Add2~21_combout\,
	combout => \hdmi_out0|res_img|process_1~19_combout\);

-- Location: LCCOMB_X47_Y46_N20
\hdmi_out0|res_img|process_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~20_combout\ = ((!\hdmi_out0|res_img|Equal17~1_combout\ & ((!\hdmi_out0|res_img|process_1~19_combout\) # (!\hdmi_out0|res_img|Equal11~0_combout\)))) # (!\hdmi_out0|res_img|Add2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal11~0_combout\,
	datab => \hdmi_out0|res_img|process_1~19_combout\,
	datac => \hdmi_out0|res_img|Equal17~1_combout\,
	datad => \hdmi_out0|res_img|Add2~1_combout\,
	combout => \hdmi_out0|res_img|process_1~20_combout\);

-- Location: LCCOMB_X47_Y46_N10
\hdmi_out0|res_img|process_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~21_combout\ = (!\hdmi_out0|res_img|Add2~17_combout\ & (\hdmi_out0|res_img|Add2~3_combout\ & !\hdmi_out0|res_img|Add2~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~17_combout\,
	datac => \hdmi_out0|res_img|Add2~3_combout\,
	datad => \hdmi_out0|res_img|Add2~21_combout\,
	combout => \hdmi_out0|res_img|process_1~21_combout\);

-- Location: LCCOMB_X47_Y46_N16
\hdmi_out0|res_img|process_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~22_combout\ = (\hdmi_out0|res_img|process_1~21_combout\ & (!\hdmi_out0|res_img|Add2~7_combout\ & !\hdmi_out0|res_img|Add2~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~21_combout\,
	datab => \hdmi_out0|res_img|Add2~7_combout\,
	datac => \hdmi_out0|res_img|Add2~19_combout\,
	combout => \hdmi_out0|res_img|process_1~22_combout\);

-- Location: LCCOMB_X47_Y46_N26
\hdmi_out0|res_img|process_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~23_combout\ = (\hdmi_out0|res_img|Equal11~0_combout\ & (\hdmi_out0|res_img|process_1~22_combout\ & (\hdmi_out0|res_img|Add2~5_combout\ $ (\hdmi_out0|res_img|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal11~0_combout\,
	datab => \hdmi_out0|res_img|process_1~22_combout\,
	datac => \hdmi_out0|res_img|Add2~5_combout\,
	datad => \hdmi_out0|res_img|Add2~1_combout\,
	combout => \hdmi_out0|res_img|process_1~23_combout\);

-- Location: LCCOMB_X47_Y46_N4
\hdmi_out0|res_img|process_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~24_combout\ = (\hdmi_out0|res_img|process_1~20_combout\ & (!\hdmi_out0|res_img|process_1~23_combout\ & ((\hdmi_out0|res_img|Add2~1_combout\) # (!\hdmi_out0|res_img|Equal17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal17~1_combout\,
	datab => \hdmi_out0|res_img|process_1~20_combout\,
	datac => \hdmi_out0|res_img|process_1~23_combout\,
	datad => \hdmi_out0|res_img|Add2~1_combout\,
	combout => \hdmi_out0|res_img|process_1~24_combout\);

-- Location: LCCOMB_X47_Y46_N30
\hdmi_out0|res_img|process_1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~27_combout\ = (!\hdmi_out0|res_img|Add2~17_combout\ & (!\hdmi_out0|res_img|Add2~19_combout\ & (\hdmi_out0|res_img|Add2~3_combout\ & \hdmi_out0|res_img|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~17_combout\,
	datab => \hdmi_out0|res_img|Add2~19_combout\,
	datac => \hdmi_out0|res_img|Add2~3_combout\,
	datad => \hdmi_out0|res_img|Add2~1_combout\,
	combout => \hdmi_out0|res_img|process_1~27_combout\);

-- Location: LCCOMB_X49_Y46_N28
\hdmi_out0|res_img|process_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~28_combout\ = (!\hdmi_out0|res_img|Add2~7_combout\ & (\hdmi_out0|res_img|Add2~5_combout\ & (\hdmi_out0|res_img|process_1~27_combout\ & !\hdmi_out0|res_img|Add2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~7_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|process_1~27_combout\,
	datad => \hdmi_out0|res_img|Add2~21_combout\,
	combout => \hdmi_out0|res_img|process_1~28_combout\);

-- Location: LCCOMB_X47_Y46_N2
\hdmi_out0|res_img|process_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~25_combout\ = (\hdmi_out0|res_img|Add2~19_combout\) # ((\hdmi_out0|res_img|Add2~7_combout\) # ((\hdmi_out0|res_img|Add2~21_combout\) # (!\hdmi_out0|res_img|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~19_combout\,
	datab => \hdmi_out0|res_img|Add2~7_combout\,
	datac => \hdmi_out0|res_img|Equal11~0_combout\,
	datad => \hdmi_out0|res_img|Add2~21_combout\,
	combout => \hdmi_out0|res_img|process_1~25_combout\);

-- Location: LCCOMB_X47_Y46_N0
\hdmi_out0|res_img|process_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~26_combout\ = (\hdmi_out0|res_img|Add2~1_combout\) # ((\hdmi_out0|res_img|Add2~5_combout\) # ((\hdmi_out0|res_img|Add2~17_combout\) # (\hdmi_out0|res_img|process_1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~1_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|Add2~17_combout\,
	datad => \hdmi_out0|res_img|process_1~25_combout\,
	combout => \hdmi_out0|res_img|process_1~26_combout\);

-- Location: LCCOMB_X45_Y44_N20
\hdmi_out0|res_img|process_1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~29_combout\ = (((\hdmi_out0|res_img|process_1~28_combout\ & \hdmi_out0|res_img|Equal11~0_combout\)) # (!\hdmi_out0|res_img|process_1~26_combout\)) # (!\hdmi_out0|res_img|process_1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~24_combout\,
	datab => \hdmi_out0|res_img|process_1~28_combout\,
	datac => \hdmi_out0|res_img|process_1~26_combout\,
	datad => \hdmi_out0|res_img|Equal11~0_combout\,
	combout => \hdmi_out0|res_img|process_1~29_combout\);

-- Location: LCCOMB_X46_Y44_N18
\hdmi_out0|res_img|process_1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~32_combout\ = (!\hdmi_out0|res_img|v_count\(9) & (!\eror~combout\ & (\hdmi_out0|res_img|process_1~31_combout\ & \hdmi_out0|res_img|LessThan28~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|v_count\(9),
	datab => \eror~combout\,
	datac => \hdmi_out0|res_img|process_1~31_combout\,
	datad => \hdmi_out0|res_img|LessThan28~5_combout\,
	combout => \hdmi_out0|res_img|process_1~32_combout\);

-- Location: LCCOMB_X45_Y44_N6
\hdmi_out0|res_img|process_1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~33_combout\ = (\hdmi_out0|res_img|v_count\(8) & (\hdmi_out0|res_img|process_1~32_combout\ & ((!\hdmi_out0|res_img|process_1~26_combout\) # (!\hdmi_out0|res_img|process_1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~24_combout\,
	datab => \hdmi_out0|res_img|v_count\(8),
	datac => \hdmi_out0|res_img|process_1~26_combout\,
	datad => \hdmi_out0|res_img|process_1~32_combout\,
	combout => \hdmi_out0|res_img|process_1~33_combout\);

-- Location: LCCOMB_X45_Y44_N16
\hdmi_out0|res_img|process_1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~34_combout\ = (!\hdmi_out0|res_img|process_1~33_combout\ & (((\eror~combout\) # (\hdmi_out0|res_img|process_1~17_combout\)) # (!\hdmi_out0|res_img|process_1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~29_combout\,
	datab => \eror~combout\,
	datac => \hdmi_out0|res_img|process_1~17_combout\,
	datad => \hdmi_out0|res_img|process_1~33_combout\,
	combout => \hdmi_out0|res_img|process_1~34_combout\);

-- Location: LCCOMB_X49_Y46_N22
\hdmi_out0|res_img|Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal11~1_combout\ = (!\hdmi_out0|res_img|Add2~19_combout\ & (!\hdmi_out0|res_img|Add2~17_combout\ & !\hdmi_out0|res_img|Add2~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|Add2~19_combout\,
	datac => \hdmi_out0|res_img|Add2~17_combout\,
	datad => \hdmi_out0|res_img|Add2~21_combout\,
	combout => \hdmi_out0|res_img|Equal11~1_combout\);

-- Location: LCCOMB_X49_Y46_N24
\hdmi_out0|res_img|Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal11~2_combout\ = (\hdmi_out0|res_img|Equal11~0_combout\ & (!\hdmi_out0|res_img|Add2~1_combout\ & (\hdmi_out0|res_img|Equal11~1_combout\ & !\hdmi_out0|res_img|Add2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal11~0_combout\,
	datab => \hdmi_out0|res_img|Add2~1_combout\,
	datac => \hdmi_out0|res_img|Equal11~1_combout\,
	datad => \hdmi_out0|res_img|Add2~7_combout\,
	combout => \hdmi_out0|res_img|Equal11~2_combout\);

-- Location: LCCOMB_X49_Y45_N24
\hdmi_out0|res_img|process_1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~35_combout\ = (\eror~combout\) # ((\hdmi_out0|res_img|Equal11~2_combout\ & (\hdmi_out0|res_img|Add2~5_combout\ $ (\hdmi_out0|res_img|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~5_combout\,
	datab => \hdmi_out0|res_img|Add2~3_combout\,
	datac => \hdmi_out0|res_img|Equal11~2_combout\,
	datad => \eror~combout\,
	combout => \hdmi_out0|res_img|process_1~35_combout\);

-- Location: LCCOMB_X50_Y44_N0
\hdmi_out0|res_img|process_1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~39_combout\ = (!\eror~combout\ & \hdmi_out0|res_img|process_1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eror~combout\,
	datad => \hdmi_out0|res_img|process_1~38_combout\,
	combout => \hdmi_out0|res_img|process_1~39_combout\);

-- Location: LCCOMB_X47_Y46_N18
\hdmi_out0|res_img|process_1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~41_combout\ = (!\hdmi_out0|res_img|Add2~19_combout\ & (\hdmi_out0|res_img|Add2~5_combout\ & (\hdmi_out0|res_img|Add2~3_combout\ & !\hdmi_out0|res_img|Add2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~19_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|Add2~3_combout\,
	datad => \hdmi_out0|res_img|Add2~21_combout\,
	combout => \hdmi_out0|res_img|process_1~41_combout\);

-- Location: LCCOMB_X47_Y46_N8
\hdmi_out0|res_img|process_1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~42_combout\ = (\hdmi_out0|res_img|Equal11~0_combout\ & (!\hdmi_out0|res_img|Add2~7_combout\ & (!\hdmi_out0|res_img|Add2~17_combout\ & \hdmi_out0|res_img|process_1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal11~0_combout\,
	datab => \hdmi_out0|res_img|Add2~7_combout\,
	datac => \hdmi_out0|res_img|Add2~17_combout\,
	datad => \hdmi_out0|res_img|process_1~41_combout\,
	combout => \hdmi_out0|res_img|process_1~42_combout\);

-- Location: LCCOMB_X47_Y46_N6
\hdmi_out0|res_img|process_1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~43_combout\ = (\hdmi_out0|res_img|process_1~20_combout\ & ((\hdmi_out0|res_img|Add2~1_combout\) # ((!\hdmi_out0|res_img|Equal17~1_combout\ & !\hdmi_out0|res_img|process_1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal17~1_combout\,
	datab => \hdmi_out0|res_img|process_1~20_combout\,
	datac => \hdmi_out0|res_img|process_1~42_combout\,
	datad => \hdmi_out0|res_img|Add2~1_combout\,
	combout => \hdmi_out0|res_img|process_1~43_combout\);

-- Location: LCCOMB_X47_Y46_N24
\hdmi_out0|res_img|process_1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~40_combout\ = (!\hdmi_out0|res_img|Add2~3_combout\ & (!\hdmi_out0|res_img|process_1~25_combout\ & (!\hdmi_out0|res_img|Add2~17_combout\ & !\hdmi_out0|res_img|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~3_combout\,
	datab => \hdmi_out0|res_img|process_1~25_combout\,
	datac => \hdmi_out0|res_img|Add2~17_combout\,
	datad => \hdmi_out0|res_img|Add2~1_combout\,
	combout => \hdmi_out0|res_img|process_1~40_combout\);

-- Location: LCCOMB_X45_Y45_N14
\hdmi_out0|res_img|process_1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~44_combout\ = ((\hdmi_out0|res_img|h_count\(4) & ((\hdmi_out0|res_img|h_count\(3)) # (!\hdmi_out0|res_img|LessThan34~0_combout\)))) # (!\hdmi_out0|res_img|LessThan7~0_combout\)

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
	combout => \hdmi_out0|res_img|process_1~44_combout\);

-- Location: LCCOMB_X45_Y45_N12
\hdmi_out0|res_img|process_1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~45_combout\ = (\hdmi_out0|res_img|h_count\(8)) # ((\hdmi_out0|res_img|LessThan29~2_combout\) # ((\hdmi_out0|res_img|h_count\(7) & \hdmi_out0|res_img|process_1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|process_1~44_combout\,
	datad => \hdmi_out0|res_img|LessThan29~2_combout\,
	combout => \hdmi_out0|res_img|process_1~45_combout\);

-- Location: LCCOMB_X49_Y44_N28
\hdmi_out0|res_img|process_1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~46_combout\ = (\hdmi_out0|res_img|process_1~39_combout\ & (!\hdmi_out0|res_img|process_1~45_combout\ & ((\hdmi_out0|res_img|process_1~40_combout\) # (!\hdmi_out0|res_img|process_1~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~39_combout\,
	datab => \hdmi_out0|res_img|process_1~43_combout\,
	datac => \hdmi_out0|res_img|process_1~40_combout\,
	datad => \hdmi_out0|res_img|process_1~45_combout\,
	combout => \hdmi_out0|res_img|process_1~46_combout\);

-- Location: LCCOMB_X49_Y44_N22
\hdmi_out0|res_img|process_1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~47_combout\ = (!\hdmi_out0|res_img|process_1~46_combout\ & (((\hdmi_out0|res_img|process_1~24_combout\ & !\hdmi_out0|res_img|process_1~35_combout\)) # (!\hdmi_out0|res_img|process_1~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~37_combout\,
	datab => \hdmi_out0|res_img|process_1~24_combout\,
	datac => \hdmi_out0|res_img|process_1~35_combout\,
	datad => \hdmi_out0|res_img|process_1~46_combout\,
	combout => \hdmi_out0|res_img|process_1~47_combout\);

-- Location: LCCOMB_X49_Y46_N30
\hdmi_out0|res_img|Equal11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|Equal11~3_combout\ = (\hdmi_out0|res_img|Equal11~0_combout\ & (\hdmi_out0|res_img|Equal11~1_combout\ & !\hdmi_out0|res_img|Add2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal11~0_combout\,
	datac => \hdmi_out0|res_img|Equal11~1_combout\,
	datad => \hdmi_out0|res_img|Add2~7_combout\,
	combout => \hdmi_out0|res_img|Equal11~3_combout\);

-- Location: LCCOMB_X47_Y47_N12
\hdmi_out0|res_img|process_1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~54_combout\ = (\hdmi_out0|res_img|Equal17~1_combout\) # ((\hdmi_out0|res_img|Add2~3_combout\ & (\hdmi_out0|res_img|Equal11~3_combout\ & \hdmi_out0|res_img|Add2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~3_combout\,
	datab => \hdmi_out0|res_img|Equal11~3_combout\,
	datac => \hdmi_out0|res_img|Equal17~1_combout\,
	datad => \hdmi_out0|res_img|Add2~5_combout\,
	combout => \hdmi_out0|res_img|process_1~54_combout\);

-- Location: LCCOMB_X47_Y47_N18
\hdmi_out0|res_img|process_1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~55_combout\ = ((\eror~combout\) # ((\hdmi_out0|res_img|process_1~54_combout\ & !\hdmi_out0|res_img|Add2~1_combout\))) # (!\hdmi_out0|res_img|process_1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~54_combout\,
	datab => \hdmi_out0|res_img|Add2~1_combout\,
	datac => \hdmi_out0|res_img|process_1~26_combout\,
	datad => \eror~combout\,
	combout => \hdmi_out0|res_img|process_1~55_combout\);

-- Location: LCCOMB_X50_Y44_N18
\hdmi_out0|res_img|process_1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~50_combout\ = (\hdmi_out0|res_img|Add2~5_combout\ & (\hdmi_out0|res_img|Add2~3_combout\ $ ((\hdmi_out0|res_img|Add2~1_combout\)))) # (!\hdmi_out0|res_img|Add2~5_combout\ & (\hdmi_out0|res_img|Add2~3_combout\ & 
-- ((!\hdmi_out0|res_img|process_1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Add2~3_combout\,
	datab => \hdmi_out0|res_img|Add2~5_combout\,
	datac => \hdmi_out0|res_img|Add2~1_combout\,
	datad => \hdmi_out0|res_img|process_1~39_combout\,
	combout => \hdmi_out0|res_img|process_1~50_combout\);

-- Location: LCCOMB_X50_Y44_N24
\hdmi_out0|res_img|process_1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~51_combout\ = (\hdmi_out0|res_img|Equal11~3_combout\ & (((\hdmi_out0|res_img|process_1~39_combout\ & \hdmi_out0|res_img|Equal17~1_combout\)) # (!\hdmi_out0|res_img|process_1~50_combout\))) # 
-- (!\hdmi_out0|res_img|Equal11~3_combout\ & (\hdmi_out0|res_img|process_1~39_combout\ & (\hdmi_out0|res_img|Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|Equal11~3_combout\,
	datab => \hdmi_out0|res_img|process_1~39_combout\,
	datac => \hdmi_out0|res_img|Equal17~1_combout\,
	datad => \hdmi_out0|res_img|process_1~50_combout\,
	combout => \hdmi_out0|res_img|process_1~51_combout\);

-- Location: LCCOMB_X45_Y45_N2
\hdmi_out0|res_img|process_1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~48_combout\ = (!\hdmi_out0|res_img|h_count\(8) & (((\hdmi_out0|res_img|LessThan32~1_combout\) # (!\hdmi_out0|res_img|h_count\(5))) # (!\hdmi_out0|res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(6),
	datac => \hdmi_out0|res_img|h_count\(5),
	datad => \hdmi_out0|res_img|LessThan32~1_combout\,
	combout => \hdmi_out0|res_img|process_1~48_combout\);

-- Location: LCCOMB_X45_Y45_N4
\hdmi_out0|res_img|process_1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~49_combout\ = (\hdmi_out0|res_img|process_1~48_combout\) # ((\hdmi_out0|res_img|h_count\(7) & (\hdmi_out0|res_img|h_count\(8))) # (!\hdmi_out0|res_img|h_count\(7) & ((!\hdmi_out0|res_img|process_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(7),
	datac => \hdmi_out0|res_img|process_1~12_combout\,
	datad => \hdmi_out0|res_img|process_1~48_combout\,
	combout => \hdmi_out0|res_img|process_1~49_combout\);

-- Location: LCCOMB_X49_Y44_N2
\hdmi_out0|res_img|process_1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~84_combout\ = (!\eror~combout\ & ((\hdmi_out0|res_img|process_1~52_combout\) # ((\hdmi_out0|res_img|process_1~38_combout\ & \hdmi_out0|res_img|process_1~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~combout\,
	datab => \hdmi_out0|res_img|process_1~38_combout\,
	datac => \hdmi_out0|res_img|process_1~52_combout\,
	datad => \hdmi_out0|res_img|process_1~51_combout\,
	combout => \hdmi_out0|res_img|process_1~84_combout\);

-- Location: LCCOMB_X49_Y44_N12
\hdmi_out0|res_img|process_1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~53_combout\ = (\hdmi_out0|res_img|process_1~49_combout\) # (((\hdmi_out0|res_img|process_1~24_combout\ & !\hdmi_out0|res_img|process_1~51_combout\)) # (!\hdmi_out0|res_img|process_1~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~24_combout\,
	datab => \hdmi_out0|res_img|process_1~51_combout\,
	datac => \hdmi_out0|res_img|process_1~49_combout\,
	datad => \hdmi_out0|res_img|process_1~84_combout\,
	combout => \hdmi_out0|res_img|process_1~53_combout\);

-- Location: LCCOMB_X49_Y44_N10
\hdmi_out0|res_img|process_1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|process_1~56_combout\ = (\hdmi_out0|res_img|process_1~53_combout\ & (((\hdmi_out0|res_img|process_1~45_combout\) # (!\hdmi_out0|res_img|process_1~52_combout\)) # (!\hdmi_out0|res_img|process_1~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~55_combout\,
	datab => \hdmi_out0|res_img|process_1~45_combout\,
	datac => \hdmi_out0|res_img|process_1~52_combout\,
	datad => \hdmi_out0|res_img|process_1~53_combout\,
	combout => \hdmi_out0|res_img|process_1~56_combout\);

-- Location: LCCOMB_X49_Y44_N16
\hdmi_out0|res_img|rgb2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~9_combout\ = (\hdmi_out0|res_img|rgb2~8_combout\) # ((\hdmi_out0|res_img|process_1~34_combout\ & (\hdmi_out0|res_img|process_1~47_combout\ & \hdmi_out0|res_img|process_1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2~8_combout\,
	datab => \hdmi_out0|res_img|process_1~34_combout\,
	datac => \hdmi_out0|res_img|process_1~47_combout\,
	datad => \hdmi_out0|res_img|process_1~56_combout\,
	combout => \hdmi_out0|res_img|rgb2~9_combout\);

-- Location: LCCOMB_X49_Y44_N4
\hdmi_out0|res_img|rgb2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~16_combout\ = (\hdmi_out0|res_img|rgb2[12]~7_combout\ & (\hdmi_out0|res_img|rgb2~15_combout\ & ((\hdmi_out0|res_img|rgb2~14_combout\) # (!\hdmi_out0|res_img|rgb2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2[12]~7_combout\,
	datab => \hdmi_out0|res_img|rgb2~14_combout\,
	datac => \hdmi_out0|res_img|rgb2~15_combout\,
	datad => \hdmi_out0|res_img|rgb2~9_combout\,
	combout => \hdmi_out0|res_img|rgb2~16_combout\);

-- Location: LCCOMB_X45_Y45_N28
\hdmi_out0|res_img|rgb2[12]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~17_combout\ = ((\hdmi_out0|res_img|LessThan34~1_combout\ & (\hdmi_out0|res_img|h_count\(8) & \hdmi_out0|res_img|process_1~80_combout\))) # (!\hdmi_out0|res_img|process_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan34~1_combout\,
	datab => \hdmi_out0|res_img|h_count\(8),
	datac => \hdmi_out0|res_img|process_1~80_combout\,
	datad => \hdmi_out0|res_img|process_1~14_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~17_combout\);

-- Location: LCCOMB_X45_Y45_N18
\hdmi_out0|res_img|rgb2[12]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~18_combout\ = (\hdmi_out0|res_img|h_count\(9) & ((\hdmi_out0|res_img|rgb2[12]~17_combout\) # (!\hdmi_out0|res_img|process_1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|process_1~13_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~17_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~18_combout\);

-- Location: LCCOMB_X49_Y45_N0
\hdmi_out0|res_img|rgb2[12]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~19_combout\ = (\hdmi_out0|res_img|LessThan11~0_combout\ & (\hdmi_out0|res_img|LessThan9~1_combout\)) # (!\hdmi_out0|res_img|LessThan11~0_combout\ & ((\hdmi_out0|res_img|rgb2[12]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|LessThan9~1_combout\,
	datac => \hdmi_out0|res_img|LessThan11~0_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~3_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~19_combout\);

-- Location: LCCOMB_X49_Y45_N2
\hdmi_out0|res_img|rgb2[12]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~20_combout\ = (\hdmi_out0|res_img|h_count\(9) & (((\hdmi_out0|res_img|process_1~60_combout\)))) # (!\hdmi_out0|res_img|h_count\(9) & (\hdmi_out0|res_img|rgb2[12]~19_combout\ & ((\hdmi_out0|res_img|process_1~60_combout\) # 
-- (!\hdmi_out0|res_img|h_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|process_1~60_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~19_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~20_combout\);

-- Location: LCCOMB_X49_Y44_N0
\hdmi_out0|res_img|rgb2[12]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2[12]~21_combout\ = (((\hdmi_out0|res_img|rgb2[12]~18_combout\) # (!\hdmi_out0|res_img|rgb2[12]~20_combout\)) # (!\hdmi_out0|res_img|rgb2[12]~1_combout\)) # (!\hdmi_out0|res_img|de_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|de_1~q\,
	datab => \hdmi_out0|res_img|rgb2[12]~1_combout\,
	datac => \hdmi_out0|res_img|rgb2[12]~18_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~20_combout\,
	combout => \hdmi_out0|res_img|rgb2[12]~21_combout\);

-- Location: FF_X49_Y44_N5
\hdmi_out0|res_img|rgb2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|rgb2~16_combout\,
	ena => \hdmi_out0|res_img|rgb2[12]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|rgb2\(13));

-- Location: LCCOMB_X52_Y50_N0
\hdmi_out0|res_img|r_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|r_out[4]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(13),
	combout => \hdmi_out0|res_img|r_out[4]~feeder_combout\);

-- Location: FF_X52_Y50_N1
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

-- Location: LCCOMB_X49_Y44_N26
\hdmi_out0|res_img|rgb2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~22_combout\ = (\hdmi_out0|res_img|rgb2[12]~13_combout\ & (((!\hdmi_out0|res_img|rgb2[12]~12_combout\) # (!\hdmi_out0|res_img|process_1~57_combout\)))) # (!\hdmi_out0|res_img|rgb2[12]~13_combout\ & 
-- (!\hdmi_out0|res_img|process_1~59_combout\ & ((\hdmi_out0|res_img|rgb2[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|process_1~59_combout\,
	datab => \hdmi_out0|res_img|process_1~57_combout\,
	datac => \hdmi_out0|res_img|rgb2[12]~13_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~12_combout\,
	combout => \hdmi_out0|res_img|rgb2~22_combout\);

-- Location: LCCOMB_X49_Y44_N24
\hdmi_out0|res_img|rgb2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~23_combout\ = (\hdmi_out0|res_img|rgb2[12]~5_combout\ & (((\hdmi_out0|res_img|rgb2~22_combout\)))) # (!\hdmi_out0|res_img|rgb2[12]~5_combout\ & ((\hdmi_out0|res_img|rgb2~22_combout\ & ((\hdmi_out0|res_img|rgb2~9_combout\))) # 
-- (!\hdmi_out0|res_img|rgb2~22_combout\ & (!\hdmi_out0|res_img|process_1~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2[12]~5_combout\,
	datab => \hdmi_out0|res_img|process_1~79_combout\,
	datac => \hdmi_out0|res_img|rgb2~22_combout\,
	datad => \hdmi_out0|res_img|rgb2~9_combout\,
	combout => \hdmi_out0|res_img|rgb2~23_combout\);

-- Location: LCCOMB_X49_Y44_N6
\hdmi_out0|res_img|rgb2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~24_combout\ = (\hdmi_out0|res_img|rgb2[12]~7_combout\ & ((\hdmi_out0|res_img|rgb2~23_combout\))) # (!\hdmi_out0|res_img|rgb2[12]~7_combout\ & (\hdmi_out0|res_img|de_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|de_1~q\,
	datac => \hdmi_out0|res_img|rgb2[12]~7_combout\,
	datad => \hdmi_out0|res_img|rgb2~23_combout\,
	combout => \hdmi_out0|res_img|rgb2~24_combout\);

-- Location: FF_X49_Y44_N7
\hdmi_out0|res_img|rgb2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|rgb2~24_combout\,
	ena => \hdmi_out0|res_img|rgb2[12]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|rgb2\(12));

-- Location: LCCOMB_X49_Y50_N24
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

-- Location: FF_X49_Y50_N25
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

-- Location: LCCOMB_X52_Y50_N6
\hdmi_out0|res_img|r_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|r_out[6]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(13),
	combout => \hdmi_out0|res_img|r_out[6]~feeder_combout\);

-- Location: FF_X52_Y50_N7
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

-- Location: LCCOMB_X49_Y45_N16
\hdmi_out0|res_img|rgb2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~26_combout\ = (\hdmi_out0|res_img|h_count\(7) & (\hdmi_out0|res_img|LessThan17~0_combout\ & (\hdmi_out0|res_img|LessThan34~1_combout\ & \hdmi_out0|res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(7),
	datab => \hdmi_out0|res_img|LessThan17~0_combout\,
	datac => \hdmi_out0|res_img|LessThan34~1_combout\,
	datad => \hdmi_out0|res_img|h_count\(6),
	combout => \hdmi_out0|res_img|rgb2~26_combout\);

-- Location: LCCOMB_X49_Y45_N6
\hdmi_out0|res_img|rgb2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~27_combout\ = ((\hdmi_out0|res_img|h_count\(8) & ((\hdmi_out0|res_img|rgb2[12]~2_combout\) # (\hdmi_out0|res_img|rgb2~26_combout\)))) # (!\hdmi_out0|res_img|rgb2[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|h_count\(8),
	datab => \hdmi_out0|res_img|rgb2[12]~4_combout\,
	datac => \hdmi_out0|res_img|rgb2[12]~2_combout\,
	datad => \hdmi_out0|res_img|rgb2~26_combout\,
	combout => \hdmi_out0|res_img|rgb2~27_combout\);

-- Location: LCCOMB_X50_Y45_N10
\hdmi_out0|res_img|rgb2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~25_combout\ = ((\hdmi_out0|res_img|rgb2\(6)) # ((\hdmi_out0|res_img|rgb2[12]~18_combout\) # (!\hdmi_out0|res_img|process_1~62_combout\))) # (!\hdmi_out0|res_img|rgb2[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|rgb2[12]~1_combout\,
	datab => \hdmi_out0|res_img|rgb2\(6),
	datac => \hdmi_out0|res_img|process_1~62_combout\,
	datad => \hdmi_out0|res_img|rgb2[12]~18_combout\,
	combout => \hdmi_out0|res_img|rgb2~25_combout\);

-- Location: LCCOMB_X50_Y45_N0
\hdmi_out0|res_img|rgb2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|rgb2~28_combout\ = (\hdmi_out0|res_img|de_1~q\ & ((\hdmi_out0|res_img|rgb2~25_combout\) # ((!\hdmi_out0|res_img|h_count\(9) & \hdmi_out0|res_img|rgb2~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdmi_out0|res_img|de_1~q\,
	datab => \hdmi_out0|res_img|h_count\(9),
	datac => \hdmi_out0|res_img|rgb2~27_combout\,
	datad => \hdmi_out0|res_img|rgb2~25_combout\,
	combout => \hdmi_out0|res_img|rgb2~28_combout\);

-- Location: FF_X50_Y45_N1
\hdmi_out0|res_img|rgb2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmi_out0|clk_25~clkctrl_outclk\,
	d => \hdmi_out0|res_img|rgb2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdmi_out0|res_img|rgb2\(6));

-- Location: LCCOMB_X50_Y45_N12
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

-- Location: FF_X50_Y45_N13
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

-- Location: LCCOMB_X49_Y50_N22
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

-- Location: FF_X49_Y50_N23
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

-- Location: LCCOMB_X52_Y50_N4
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

-- Location: FF_X52_Y50_N5
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

-- Location: LCCOMB_X57_Y45_N0
\hdmi_out0|res_img|g_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|g_out[6]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(6),
	combout => \hdmi_out0|res_img|g_out[6]~feeder_combout\);

-- Location: FF_X57_Y45_N1
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

-- Location: LCCOMB_X49_Y50_N12
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

-- Location: FF_X49_Y50_N13
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

-- Location: LCCOMB_X57_Y45_N18
\hdmi_out0|res_img|b_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|b_out[4]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(6),
	combout => \hdmi_out0|res_img|b_out[4]~feeder_combout\);

-- Location: FF_X57_Y45_N19
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

-- Location: LCCOMB_X49_Y50_N26
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

-- Location: FF_X49_Y50_N27
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

-- Location: LCCOMB_X50_Y45_N2
\hdmi_out0|res_img|b_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hdmi_out0|res_img|b_out[6]~feeder_combout\ = \hdmi_out0|res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hdmi_out0|res_img|rgb2\(6),
	combout => \hdmi_out0|res_img|b_out[6]~feeder_combout\);

-- Location: FF_X50_Y45_N3
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

-- Location: LCCOMB_X49_Y50_N0
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

-- Location: FF_X49_Y50_N1
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


