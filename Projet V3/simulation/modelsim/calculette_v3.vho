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

-- DATE "09/23/2021 19:22:02"

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

ENTITY 	hdmi_de10 IS
    PORT (
	clk_50 : IN std_logic;
	reset : IN std_logic;
	mode : IN std_logic;
	Res : IN std_logic_vector(3 DOWNTO 0);
	eror : IN std_logic;
	vga_vs : OUT std_logic;
	vga_hs : OUT std_logic;
	vga_r : OUT std_logic_vector(3 DOWNTO 0);
	vga_g : OUT std_logic_vector(3 DOWNTO 0);
	vga_b : OUT std_logic_vector(3 DOWNTO 0)
	);
END hdmi_de10;

-- Design Ports Information
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
-- mode	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- eror	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hdmi_de10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_Res : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_eror : std_logic;
SIGNAL ww_vga_vs : std_logic;
SIGNAL ww_vga_hs : std_logic;
SIGNAL ww_vga_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_25~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
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
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk_25~0_combout\ : std_logic;
SIGNAL \clk_25~feeder_combout\ : std_logic;
SIGNAL \clk_25~q\ : std_logic;
SIGNAL \clk_25~clkctrl_outclk\ : std_logic;
SIGNAL \res_img|v_count[0]~11_combout\ : std_logic;
SIGNAL \res_img|Equal1~0_combout\ : std_logic;
SIGNAL \res_img|v_count[7]~26\ : std_logic;
SIGNAL \res_img|v_count[8]~27_combout\ : std_logic;
SIGNAL \res_img|h_count[0]~10_combout\ : std_logic;
SIGNAL \res_img|h_count[0]~11\ : std_logic;
SIGNAL \res_img|h_count[1]~12_combout\ : std_logic;
SIGNAL \res_img|h_count[1]~13\ : std_logic;
SIGNAL \res_img|h_count[2]~14_combout\ : std_logic;
SIGNAL \res_img|h_count[2]~15\ : std_logic;
SIGNAL \res_img|h_count[3]~16_combout\ : std_logic;
SIGNAL \res_img|h_count[3]~17\ : std_logic;
SIGNAL \res_img|h_count[4]~18_combout\ : std_logic;
SIGNAL \res_img|h_count[4]~19\ : std_logic;
SIGNAL \res_img|h_count[5]~20_combout\ : std_logic;
SIGNAL \res_img|h_count[5]~21\ : std_logic;
SIGNAL \res_img|h_count[6]~22_combout\ : std_logic;
SIGNAL \res_img|h_count[6]~23\ : std_logic;
SIGNAL \res_img|h_count[7]~24_combout\ : std_logic;
SIGNAL \res_img|h_count[7]~25\ : std_logic;
SIGNAL \res_img|h_count[8]~26_combout\ : std_logic;
SIGNAL \res_img|h_count[8]~27\ : std_logic;
SIGNAL \res_img|h_count[9]~28_combout\ : std_logic;
SIGNAL \res_img|Equal0~2_combout\ : std_logic;
SIGNAL \res_img|Equal0~0_combout\ : std_logic;
SIGNAL \res_img|Equal0~1_combout\ : std_logic;
SIGNAL \reset_a~feeder_combout\ : std_logic;
SIGNAL \reset_a~q\ : std_logic;
SIGNAL \reset_b~0_combout\ : std_logic;
SIGNAL \reset_b~q\ : std_logic;
SIGNAL \reset_c~0_combout\ : std_logic;
SIGNAL \reset_c~q\ : std_logic;
SIGNAL \reset_d~0_combout\ : std_logic;
SIGNAL \reset_d~q\ : std_logic;
SIGNAL \reset_e~0_combout\ : std_logic;
SIGNAL \reset_e~q\ : std_logic;
SIGNAL \res_img|v_count[9]~10_combout\ : std_logic;
SIGNAL \res_img|v_count[8]~28\ : std_logic;
SIGNAL \res_img|v_count[9]~29_combout\ : std_logic;
SIGNAL \res_img|v_count[9]~31_combout\ : std_logic;
SIGNAL \res_img|v_count[0]~12\ : std_logic;
SIGNAL \res_img|v_count[1]~13_combout\ : std_logic;
SIGNAL \res_img|v_count[1]~14\ : std_logic;
SIGNAL \res_img|v_count[2]~15_combout\ : std_logic;
SIGNAL \res_img|v_count[2]~16\ : std_logic;
SIGNAL \res_img|v_count[3]~17_combout\ : std_logic;
SIGNAL \res_img|v_count[3]~18\ : std_logic;
SIGNAL \res_img|v_count[4]~19_combout\ : std_logic;
SIGNAL \res_img|v_count[4]~20\ : std_logic;
SIGNAL \res_img|v_count[5]~21_combout\ : std_logic;
SIGNAL \res_img|v_count[5]~22\ : std_logic;
SIGNAL \res_img|v_count[6]~23_combout\ : std_logic;
SIGNAL \res_img|v_count[6]~24\ : std_logic;
SIGNAL \res_img|v_count[7]~25_combout\ : std_logic;
SIGNAL \res_img|process_1~9_combout\ : std_logic;
SIGNAL \res_img|LessThan25~2_combout\ : std_logic;
SIGNAL \res_img|LessThan25~1_combout\ : std_logic;
SIGNAL \res_img|LessThan1~0_combout\ : std_logic;
SIGNAL \res_img|vs_1~q\ : std_logic;
SIGNAL \res_img|vs_2~feeder_combout\ : std_logic;
SIGNAL \res_img|vs_2~q\ : std_logic;
SIGNAL \res_img|vs_out~feeder_combout\ : std_logic;
SIGNAL \res_img|vs_out~q\ : std_logic;
SIGNAL \res_img|process_1~10_combout\ : std_logic;
SIGNAL \res_img|LessThan0~5_combout\ : std_logic;
SIGNAL \res_img|hs_1~q\ : std_logic;
SIGNAL \res_img|hs_2~feeder_combout\ : std_logic;
SIGNAL \res_img|hs_2~q\ : std_logic;
SIGNAL \res_img|hs_out~feeder_combout\ : std_logic;
SIGNAL \res_img|hs_out~q\ : std_logic;
SIGNAL \res_img|LessThan5~0_combout\ : std_logic;
SIGNAL \res_img|LessThan4~0_combout\ : std_logic;
SIGNAL \res_img|LessThan4~1_combout\ : std_logic;
SIGNAL \res_img|LessThan2~0_combout\ : std_logic;
SIGNAL \res_img|process_1~27_combout\ : std_logic;
SIGNAL \res_img|process_1~28_combout\ : std_logic;
SIGNAL \res_img|de_1~q\ : std_logic;
SIGNAL \res_img|rgb2[21]~feeder_combout\ : std_logic;
SIGNAL \res_img|LessThan21~0_combout\ : std_logic;
SIGNAL \res_img|LessThan21~1_combout\ : std_logic;
SIGNAL \res_img|LessThan0~4_combout\ : std_logic;
SIGNAL \res_img|LessThan20~0_combout\ : std_logic;
SIGNAL \res_img|process_1~30_combout\ : std_logic;
SIGNAL \res_img|process_1~19_combout\ : std_logic;
SIGNAL \res_img|rgb2~0_combout\ : std_logic;
SIGNAL \res_img|process_1~6_combout\ : std_logic;
SIGNAL \res_img|process_1~7_combout\ : std_logic;
SIGNAL \res_img|process_1~4_combout\ : std_logic;
SIGNAL \res_img|process_1~5_combout\ : std_logic;
SIGNAL \res_img|process_1~8_combout\ : std_logic;
SIGNAL \res_img|LessThan14~0_combout\ : std_logic;
SIGNAL \res_img|LessThan25~0_combout\ : std_logic;
SIGNAL \res_img|int_res[31]~2_combout\ : std_logic;
SIGNAL \res_img|int_res[31]~3_combout\ : std_logic;
SIGNAL \res_img|int_res[31]~4_combout\ : std_logic;
SIGNAL \res_img|rgb2~21_combout\ : std_logic;
SIGNAL \res_img|process_1~12_combout\ : std_logic;
SIGNAL \res_img|process_1~13_combout\ : std_logic;
SIGNAL \res_img|process_1~29_combout\ : std_logic;
SIGNAL \res_img|process_1~14_combout\ : std_logic;
SIGNAL \res_img|process_1~15_combout\ : std_logic;
SIGNAL \res_img|process_1~16_combout\ : std_logic;
SIGNAL \res_img|int_res[31]~feeder_combout\ : std_logic;
SIGNAL \res_img|int_res[31]~5_combout\ : std_logic;
SIGNAL \Res[3]~input_o\ : std_logic;
SIGNAL \Res[2]~input_o\ : std_logic;
SIGNAL \Res[1]~input_o\ : std_logic;
SIGNAL \Res[0]~input_o\ : std_logic;
SIGNAL \res_img|int_res[0]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[3]~1_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~9\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~11\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~13\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~15\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~17\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~19\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~21\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~23\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~25\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~27\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~29\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~31\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~33\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~35\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~37\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~39\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~41\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~43\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~45\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~47\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~49\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~51\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~53\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~55\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[21]~331_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[21]~330_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[20]~333_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[20]~332_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[19]~334_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[19]~335_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[18]~337_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[18]~336_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[28]~338_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[28]~580_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[27]~339_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[27]~581_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[26]~582_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[26]~340_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[25]~341_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[25]~342_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[24]~343_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[24]~344_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[34]~345_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[34]~527_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[33]~528_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[33]~346_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[32]~583_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[32]~347_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[31]~348_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[31]~349_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[30]~350_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[30]~351_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[38]~584_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[40]~529_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[40]~352_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[39]~353_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[39]~530_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[38]~354_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[37]~355_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[37]~356_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[36]~358_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[36]~357_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[45]~532_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[45]~360_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[44]~585_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[44]~361_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[43]~363_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[43]~362_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[42]~365_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[42]~364_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[46]~359_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[46]~531_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[52]~366_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[52]~533_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[51]~534_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[51]~367_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[50]~586_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[50]~368_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[49]~370_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[49]~369_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[48]~372_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[48]~371_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[58]~535_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[58]~373_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[57]~374_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[57]~536_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[56]~587_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[56]~375_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[55]~377_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[55]~376_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[54]~378_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[54]~379_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[64]~537_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[64]~380_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[63]~381_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[63]~538_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[62]~588_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[62]~382_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[61]~383_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[61]~384_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[60]~386_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[60]~385_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[70]~539_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[70]~387_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[69]~540_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[69]~388_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[68]~589_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[68]~389_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[67]~390_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[67]~391_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[66]~393_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[66]~392_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[76]~394_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[76]~541_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[75]~395_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[75]~542_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[74]~590_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[74]~396_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[73]~398_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[73]~397_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[72]~400_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[72]~399_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[82]~401_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[82]~543_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[81]~544_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[81]~402_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[80]~403_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[80]~591_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[79]~405_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[79]~404_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[78]~407_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[78]~406_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[88]~408_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[88]~545_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[87]~409_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[87]~546_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[86]~410_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[86]~592_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[85]~412_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[85]~411_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[84]~413_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[84]~414_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[94]~415_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[94]~547_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[93]~416_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[93]~548_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[92]~417_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[92]~593_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[91]~419_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[91]~418_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[90]~420_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[90]~421_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[100]~422_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[100]~549_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[99]~550_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[99]~423_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[98]~594_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[98]~424_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[97]~426_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[97]~425_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[96]~428_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[96]~427_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[106]~551_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[106]~429_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[105]~552_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[105]~430_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[104]~431_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[104]~595_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[103]~433_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[103]~432_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[102]~435_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[102]~434_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[112]~436_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[112]~553_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[111]~554_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[111]~437_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[110]~438_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[110]~596_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[109]~439_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[109]~440_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[108]~441_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[108]~442_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[118]~555_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[118]~443_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[117]~444_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[117]~556_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[116]~597_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[116]~445_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[115]~447_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[115]~446_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[114]~448_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[114]~449_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[124]~557_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[124]~450_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[123]~451_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[123]~558_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[122]~452_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[122]~598_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[121]~454_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[121]~453_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[120]~455_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[120]~456_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[130]~559_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[130]~457_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[129]~458_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[129]~560_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[128]~459_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[128]~599_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[127]~460_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[127]~461_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[126]~463_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[126]~462_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[136]~561_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[136]~464_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[135]~562_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[135]~465_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[134]~600_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[134]~466_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[133]~467_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[133]~468_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[132]~470_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[132]~469_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[142]~563_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[142]~471_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[141]~564_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[141]~472_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[140]~473_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[140]~601_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[139]~474_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[139]~475_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[138]~476_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[138]~477_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[148]~565_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[148]~478_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[147]~479_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[147]~566_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[146]~602_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[146]~480_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[145]~482_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[145]~481_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[144]~484_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[144]~483_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[154]~567_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[154]~485_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[153]~486_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[153]~568_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[152]~603_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[152]~487_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[151]~488_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[151]~489_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[150]~491_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[150]~490_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[160]~569_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[160]~492_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[159]~493_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[159]~570_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[158]~604_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[158]~494_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[157]~495_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[157]~496_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[156]~497_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[156]~498_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[166]~571_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[166]~499_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[165]~572_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[165]~500_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[164]~501_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[164]~605_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[163]~503_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[163]~502_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[162]~505_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[162]~504_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[172]~573_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[172]~506_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[171]~507_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[171]~574_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[170]~508_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[170]~606_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[169]~510_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[169]~509_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[168]~511_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[168]~512_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[178]~575_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[178]~513_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[177]~576_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[177]~514_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[176]~515_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[176]~607_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[175]~517_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[175]~516_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~58_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[174]~519_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[174]~518_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[184]~520_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[184]~577_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[183]~578_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[183]~521_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[182]~579_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[182]~522_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[181]~523_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[181]~524_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[180]~525_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|StageOut[180]~526_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~13\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~15\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~17\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~19\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~21\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~23\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~25\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~27\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~29\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~31\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~33\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~35\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~37\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~39\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~41\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~43\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~44_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[22]~22_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~45\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~46_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[23]~23_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~42_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[21]~21_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~47\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~48_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[24]~24_combout\ : std_logic;
SIGNAL \res_img|Equal4~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[4]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[5]~5_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[6]~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~16_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[8]~8_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[7]~7_combout\ : std_logic;
SIGNAL \res_img|Equal4~5_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~24_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[12]~12_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~20_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[10]~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~18_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[9]~9_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~22_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[11]~11_combout\ : std_logic;
SIGNAL \res_img|Equal4~4_combout\ : std_logic;
SIGNAL \res_img|Equal4~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~40_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[20]~20_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~38_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[19]~19_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~28_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[14]~14_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~30_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[15]~15_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~32_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[16]~16_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~26_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[13]~13_combout\ : std_logic;
SIGNAL \res_img|Equal4~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~36_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~34_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[17]~17_combout\ : std_logic;
SIGNAL \res_img|Equal4~1_combout\ : std_logic;
SIGNAL \res_img|Equal4~3_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ : std_logic;
SIGNAL \res_img|process_1~17_combout\ : std_logic;
SIGNAL \res_img|process_1~18_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[2]~1_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[1]~2_combout\ : std_logic;
SIGNAL \res_img|rgb2~22_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~49\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~51\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~53\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~54_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~55\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~57\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~58_combout\ : std_logic;
SIGNAL \res_img|Equal4~8_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~50_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[25]~25_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~52_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[26]~26_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~59\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~60_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~56_combout\ : std_logic;
SIGNAL \res_img|Equal4~7_combout\ : std_logic;
SIGNAL \res_img|Equal4~9_combout\ : std_logic;
SIGNAL \res_img|rgb2~23_combout\ : std_logic;
SIGNAL \res_img|rgb2~24_combout\ : std_logic;
SIGNAL \res_img|rgb2~30_combout\ : std_logic;
SIGNAL \res_img|rgb2~29_combout\ : std_logic;
SIGNAL \res_img|process_1~21_combout\ : std_logic;
SIGNAL \res_img|process_1~20_combout\ : std_logic;
SIGNAL \res_img|process_1~22_combout\ : std_logic;
SIGNAL \res_img|rgb2~31_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[0]~3_combout\ : std_logic;
SIGNAL \res_img|rgb2~26_combout\ : std_logic;
SIGNAL \res_img|rgb2~27_combout\ : std_logic;
SIGNAL \res_img|Equal4~10_combout\ : std_logic;
SIGNAL \res_img|rgb2~25_combout\ : std_logic;
SIGNAL \res_img|Equal4~11_combout\ : std_logic;
SIGNAL \res_img|rgb2~28_combout\ : std_logic;
SIGNAL \res_img|process_1~23_combout\ : std_logic;
SIGNAL \res_img|rgb2~32_combout\ : std_logic;
SIGNAL \res_img|rgb2~33_combout\ : std_logic;
SIGNAL \res_img|rgb2~34_combout\ : std_logic;
SIGNAL \res_img|rgb2~35_combout\ : std_logic;
SIGNAL \res_img|rgb2~36_combout\ : std_logic;
SIGNAL \eror~input_o\ : std_logic;
SIGNAL \res_img|process_1~24_combout\ : std_logic;
SIGNAL \res_img|process_1~25_combout\ : std_logic;
SIGNAL \res_img|process_1~26_combout\ : std_logic;
SIGNAL \res_img|Equal5~0_combout\ : std_logic;
SIGNAL \res_img|rgb2~37_combout\ : std_logic;
SIGNAL \res_img|rgb2~38_combout\ : std_logic;
SIGNAL \res_img|rgb2~39_combout\ : std_logic;
SIGNAL \res_img|rgb2~40_combout\ : std_logic;
SIGNAL \res_img|rgb2~41_combout\ : std_logic;
SIGNAL \res_img|rgb2~3_combout\ : std_logic;
SIGNAL \res_img|process_1~11_combout\ : std_logic;
SIGNAL \res_img|rgb2~1_combout\ : std_logic;
SIGNAL \res_img|rgb2~2_combout\ : std_logic;
SIGNAL \res_img|rgb2~8_combout\ : std_logic;
SIGNAL \res_img|Add2~0_combout\ : std_logic;
SIGNAL \res_img|Add2~1\ : std_logic;
SIGNAL \res_img|Add2~3\ : std_logic;
SIGNAL \res_img|Add2~5\ : std_logic;
SIGNAL \res_img|Add2~6_combout\ : std_logic;
SIGNAL \res_img|rgb2~9_combout\ : std_logic;
SIGNAL \res_img|Add2~2_combout\ : std_logic;
SIGNAL \res_img|Add2~4_combout\ : std_logic;
SIGNAL \res_img|rgb2~6_combout\ : std_logic;
SIGNAL \res_img|rgb2~4_combout\ : std_logic;
SIGNAL \res_img|rgb2~5_combout\ : std_logic;
SIGNAL \res_img|rgb2~7_combout\ : std_logic;
SIGNAL \res_img|rgb2~10_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[18]~18_combout\ : std_logic;
SIGNAL \res_img|Add2~7\ : std_logic;
SIGNAL \res_img|Add2~9\ : std_logic;
SIGNAL \res_img|Add2~11\ : std_logic;
SIGNAL \res_img|Add2~13\ : std_logic;
SIGNAL \res_img|Add2~15\ : std_logic;
SIGNAL \res_img|Add2~17\ : std_logic;
SIGNAL \res_img|Add2~19\ : std_logic;
SIGNAL \res_img|Add2~21\ : std_logic;
SIGNAL \res_img|Add2~23\ : std_logic;
SIGNAL \res_img|Add2~25\ : std_logic;
SIGNAL \res_img|Add2~27\ : std_logic;
SIGNAL \res_img|Add2~29\ : std_logic;
SIGNAL \res_img|Add2~31\ : std_logic;
SIGNAL \res_img|Add2~33\ : std_logic;
SIGNAL \res_img|Add2~35\ : std_logic;
SIGNAL \res_img|Add2~37\ : std_logic;
SIGNAL \res_img|Add2~39\ : std_logic;
SIGNAL \res_img|Add2~41\ : std_logic;
SIGNAL \res_img|Add2~42_combout\ : std_logic;
SIGNAL \res_img|Add2~40_combout\ : std_logic;
SIGNAL \res_img|Add2~43\ : std_logic;
SIGNAL \res_img|Add2~45\ : std_logic;
SIGNAL \res_img|Add2~46_combout\ : std_logic;
SIGNAL \res_img|Add2~44_combout\ : std_logic;
SIGNAL \res_img|rgb2~16_combout\ : std_logic;
SIGNAL \res_img|Add2~20_combout\ : std_logic;
SIGNAL \res_img|Add2~16_combout\ : std_logic;
SIGNAL \res_img|Add2~18_combout\ : std_logic;
SIGNAL \res_img|Add2~22_combout\ : std_logic;
SIGNAL \res_img|rgb2~12_combout\ : std_logic;
SIGNAL \res_img|Add2~12_combout\ : std_logic;
SIGNAL \res_img|Add2~8_combout\ : std_logic;
SIGNAL \res_img|Add2~14_combout\ : std_logic;
SIGNAL \res_img|Add2~10_combout\ : std_logic;
SIGNAL \res_img|rgb2~11_combout\ : std_logic;
SIGNAL \res_img|Add2~30_combout\ : std_logic;
SIGNAL \res_img|Add2~24_combout\ : std_logic;
SIGNAL \res_img|Add2~28_combout\ : std_logic;
SIGNAL \res_img|Add2~26_combout\ : std_logic;
SIGNAL \res_img|rgb2~13_combout\ : std_logic;
SIGNAL \res_img|Add2~34_combout\ : std_logic;
SIGNAL \res_img|Add2~32_combout\ : std_logic;
SIGNAL \res_img|Add2~38_combout\ : std_logic;
SIGNAL \res_img|Add2~36_combout\ : std_logic;
SIGNAL \res_img|rgb2~14_combout\ : std_logic;
SIGNAL \res_img|rgb2~15_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[27]~27_combout\ : std_logic;
SIGNAL \res_img|Add2~47\ : std_logic;
SIGNAL \res_img|Add2~49\ : std_logic;
SIGNAL \res_img|Add2~51\ : std_logic;
SIGNAL \res_img|Add2~53\ : std_logic;
SIGNAL \res_img|Add2~54_combout\ : std_logic;
SIGNAL \res_img|Add2~48_combout\ : std_logic;
SIGNAL \res_img|Add2~50_combout\ : std_logic;
SIGNAL \res_img|Add2~52_combout\ : std_logic;
SIGNAL \res_img|rgb2~17_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|_~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[28]~28_combout\ : std_logic;
SIGNAL \res_img|Add2~55\ : std_logic;
SIGNAL \res_img|Add2~57\ : std_logic;
SIGNAL \res_img|Add2~58_combout\ : std_logic;
SIGNAL \res_img|Add2~56_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|_~1_combout\ : std_logic;
SIGNAL \res_img|Add2~59\ : std_logic;
SIGNAL \res_img|Add2~60_combout\ : std_logic;
SIGNAL \res_img|Add2~61\ : std_logic;
SIGNAL \res_img|Add2~62_combout\ : std_logic;
SIGNAL \res_img|rgb2~18_combout\ : std_logic;
SIGNAL \res_img|rgb2~19_combout\ : std_logic;
SIGNAL \res_img|rgb2~20_combout\ : std_logic;
SIGNAL \res_img|rgb2~42_combout\ : std_logic;
SIGNAL \res_img|g_out[6]~feeder_combout\ : std_logic;
SIGNAL \res_img|g_out[7]~feeder_combout\ : std_logic;
SIGNAL \res_img|b_out[6]~feeder_combout\ : std_logic;
SIGNAL \res_img|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \res_img|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \res_img|r_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \res_img|g_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \res_img|b_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \res_img|rgb2\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \res_img|int_res\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50 <= clk_50;
ww_reset <= reset;
ww_mode <= mode;
ww_Res <= Res;
ww_eror <= eror;
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

\clk_25~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_25~q\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
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

-- Location: IOOBUF_X0_Y13_N9
\vga_vs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \res_img|vs_out~q\,
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
	i => \res_img|hs_out~q\,
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
	i => GND,
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
	i => \res_img|r_out\(5),
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
	i => GND,
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
	i => \res_img|r_out\(7),
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
	i => \res_img|g_out\(4),
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
	i => GND,
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
	i => \res_img|g_out\(6),
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
	i => \res_img|g_out\(7),
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
	i => \res_img|b_out\(4),
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
	i => \res_img|b_out\(5),
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
	i => \res_img|b_out\(6),
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
	i => \res_img|b_out\(7),
	devoe => ww_devoe,
	o => \vga_b[3]~output_o\);

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X26_Y22_N26
\clk_25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_25~0_combout\ = (!\clk_25~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_25~q\,
	datab => \reset~input_o\,
	combout => \clk_25~0_combout\);

-- Location: LCCOMB_X26_Y22_N24
\clk_25~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_25~feeder_combout\ = \clk_25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_25~0_combout\,
	combout => \clk_25~feeder_combout\);

-- Location: FF_X26_Y22_N25
clk_25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \clk_25~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_25~q\);

-- Location: CLKCTRL_G3
\clk_25~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_25~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_25~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y22_N6
\res_img|v_count[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[0]~11_combout\ = \res_img|v_count\(0) $ (VCC)
-- \res_img|v_count[0]~12\ = CARRY(\res_img|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(0),
	datad => VCC,
	combout => \res_img|v_count[0]~11_combout\,
	cout => \res_img|v_count[0]~12\);

-- Location: LCCOMB_X24_Y22_N28
\res_img|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal1~0_combout\ = (\res_img|v_count\(0)) # ((\res_img|v_count\(1)) # ((!\res_img|v_count\(3)) # (!\res_img|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(0),
	datab => \res_img|v_count\(1),
	datac => \res_img|v_count\(2),
	datad => \res_img|v_count\(3),
	combout => \res_img|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y22_N20
\res_img|v_count[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[7]~25_combout\ = (\res_img|v_count\(7) & (!\res_img|v_count[6]~24\)) # (!\res_img|v_count\(7) & ((\res_img|v_count[6]~24\) # (GND)))
-- \res_img|v_count[7]~26\ = CARRY((!\res_img|v_count[6]~24\) # (!\res_img|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(7),
	datad => VCC,
	cin => \res_img|v_count[6]~24\,
	combout => \res_img|v_count[7]~25_combout\,
	cout => \res_img|v_count[7]~26\);

-- Location: LCCOMB_X24_Y22_N22
\res_img|v_count[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[8]~27_combout\ = (\res_img|v_count\(8) & (\res_img|v_count[7]~26\ $ (GND))) # (!\res_img|v_count\(8) & (!\res_img|v_count[7]~26\ & VCC))
-- \res_img|v_count[8]~28\ = CARRY((\res_img|v_count\(8) & !\res_img|v_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(8),
	datad => VCC,
	cin => \res_img|v_count[7]~26\,
	combout => \res_img|v_count[8]~27_combout\,
	cout => \res_img|v_count[8]~28\);

-- Location: LCCOMB_X27_Y22_N6
\res_img|h_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[0]~10_combout\ = \res_img|h_count\(0) $ (VCC)
-- \res_img|h_count[0]~11\ = CARRY(\res_img|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(0),
	datad => VCC,
	combout => \res_img|h_count[0]~10_combout\,
	cout => \res_img|h_count[0]~11\);

-- Location: FF_X26_Y22_N7
\res_img|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|h_count[0]~10_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(0));

-- Location: LCCOMB_X27_Y22_N8
\res_img|h_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[1]~12_combout\ = (\res_img|h_count\(1) & (!\res_img|h_count[0]~11\)) # (!\res_img|h_count\(1) & ((\res_img|h_count[0]~11\) # (GND)))
-- \res_img|h_count[1]~13\ = CARRY((!\res_img|h_count[0]~11\) # (!\res_img|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(1),
	datad => VCC,
	cin => \res_img|h_count[0]~11\,
	combout => \res_img|h_count[1]~12_combout\,
	cout => \res_img|h_count[1]~13\);

-- Location: FF_X27_Y22_N9
\res_img|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|h_count[1]~12_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(1));

-- Location: LCCOMB_X27_Y22_N10
\res_img|h_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[2]~14_combout\ = (\res_img|h_count\(2) & (\res_img|h_count[1]~13\ $ (GND))) # (!\res_img|h_count\(2) & (!\res_img|h_count[1]~13\ & VCC))
-- \res_img|h_count[2]~15\ = CARRY((\res_img|h_count\(2) & !\res_img|h_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(2),
	datad => VCC,
	cin => \res_img|h_count[1]~13\,
	combout => \res_img|h_count[2]~14_combout\,
	cout => \res_img|h_count[2]~15\);

-- Location: FF_X27_Y22_N11
\res_img|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|h_count[2]~14_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(2));

-- Location: LCCOMB_X27_Y22_N12
\res_img|h_count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[3]~16_combout\ = (\res_img|h_count\(3) & (!\res_img|h_count[2]~15\)) # (!\res_img|h_count\(3) & ((\res_img|h_count[2]~15\) # (GND)))
-- \res_img|h_count[3]~17\ = CARRY((!\res_img|h_count[2]~15\) # (!\res_img|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(3),
	datad => VCC,
	cin => \res_img|h_count[2]~15\,
	combout => \res_img|h_count[3]~16_combout\,
	cout => \res_img|h_count[3]~17\);

-- Location: FF_X27_Y22_N13
\res_img|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|h_count[3]~16_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(3));

-- Location: LCCOMB_X27_Y22_N14
\res_img|h_count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[4]~18_combout\ = (\res_img|h_count\(4) & (\res_img|h_count[3]~17\ $ (GND))) # (!\res_img|h_count\(4) & (!\res_img|h_count[3]~17\ & VCC))
-- \res_img|h_count[4]~19\ = CARRY((\res_img|h_count\(4) & !\res_img|h_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(4),
	datad => VCC,
	cin => \res_img|h_count[3]~17\,
	combout => \res_img|h_count[4]~18_combout\,
	cout => \res_img|h_count[4]~19\);

-- Location: FF_X26_Y22_N27
\res_img|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|h_count[4]~18_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(4));

-- Location: LCCOMB_X27_Y22_N16
\res_img|h_count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[5]~20_combout\ = (\res_img|h_count\(5) & (!\res_img|h_count[4]~19\)) # (!\res_img|h_count\(5) & ((\res_img|h_count[4]~19\) # (GND)))
-- \res_img|h_count[5]~21\ = CARRY((!\res_img|h_count[4]~19\) # (!\res_img|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(5),
	datad => VCC,
	cin => \res_img|h_count[4]~19\,
	combout => \res_img|h_count[5]~20_combout\,
	cout => \res_img|h_count[5]~21\);

-- Location: FF_X26_Y22_N5
\res_img|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|h_count[5]~20_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(5));

-- Location: LCCOMB_X27_Y22_N18
\res_img|h_count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[6]~22_combout\ = (\res_img|h_count\(6) & (\res_img|h_count[5]~21\ $ (GND))) # (!\res_img|h_count\(6) & (!\res_img|h_count[5]~21\ & VCC))
-- \res_img|h_count[6]~23\ = CARRY((\res_img|h_count\(6) & !\res_img|h_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(6),
	datad => VCC,
	cin => \res_img|h_count[5]~21\,
	combout => \res_img|h_count[6]~22_combout\,
	cout => \res_img|h_count[6]~23\);

-- Location: FF_X27_Y22_N19
\res_img|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|h_count[6]~22_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(6));

-- Location: LCCOMB_X27_Y22_N20
\res_img|h_count[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[7]~24_combout\ = (\res_img|h_count\(7) & (!\res_img|h_count[6]~23\)) # (!\res_img|h_count\(7) & ((\res_img|h_count[6]~23\) # (GND)))
-- \res_img|h_count[7]~25\ = CARRY((!\res_img|h_count[6]~23\) # (!\res_img|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(7),
	datad => VCC,
	cin => \res_img|h_count[6]~23\,
	combout => \res_img|h_count[7]~24_combout\,
	cout => \res_img|h_count[7]~25\);

-- Location: FF_X26_Y22_N31
\res_img|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|h_count[7]~24_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(7));

-- Location: LCCOMB_X27_Y22_N22
\res_img|h_count[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[8]~26_combout\ = (\res_img|h_count\(8) & (\res_img|h_count[7]~25\ $ (GND))) # (!\res_img|h_count\(8) & (!\res_img|h_count[7]~25\ & VCC))
-- \res_img|h_count[8]~27\ = CARRY((\res_img|h_count\(8) & !\res_img|h_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datad => VCC,
	cin => \res_img|h_count[7]~25\,
	combout => \res_img|h_count[8]~26_combout\,
	cout => \res_img|h_count[8]~27\);

-- Location: FF_X26_Y22_N15
\res_img|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|h_count[8]~26_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(8));

-- Location: LCCOMB_X27_Y22_N24
\res_img|h_count[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[9]~28_combout\ = \res_img|h_count[8]~27\ $ (\res_img|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \res_img|h_count\(9),
	cin => \res_img|h_count[8]~27\,
	combout => \res_img|h_count[9]~28_combout\);

-- Location: FF_X27_Y22_N25
\res_img|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|h_count[9]~28_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(9));

-- Location: LCCOMB_X26_Y22_N6
\res_img|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal0~2_combout\ = (\res_img|h_count\(8) & \res_img|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datad => \res_img|h_count\(9),
	combout => \res_img|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y22_N24
\res_img|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal0~0_combout\ = ((\res_img|h_count\(6)) # ((\res_img|h_count\(5)) # (!\res_img|h_count\(3)))) # (!\res_img|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(4),
	datab => \res_img|h_count\(6),
	datac => \res_img|h_count\(3),
	datad => \res_img|h_count\(5),
	combout => \res_img|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y22_N2
\res_img|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal0~1_combout\ = (((\res_img|h_count\(7)) # (!\res_img|h_count\(1))) # (!\res_img|h_count\(0))) # (!\res_img|h_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(2),
	datab => \res_img|h_count\(0),
	datac => \res_img|h_count\(1),
	datad => \res_img|h_count\(7),
	combout => \res_img|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y22_N20
\reset_a~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_a~feeder_combout\ = \reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	combout => \reset_a~feeder_combout\);

-- Location: FF_X26_Y22_N21
reset_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \reset_a~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_a~q\);

-- Location: LCCOMB_X26_Y22_N12
\reset_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_b~0_combout\ = (\reset~input_o\) # (\reset_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reset_a~q\,
	combout => \reset_b~0_combout\);

-- Location: FF_X26_Y22_N13
reset_b : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \reset_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_b~q\);

-- Location: LCCOMB_X26_Y22_N0
\reset_c~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_c~0_combout\ = (\reset~input_o\) # (\reset_b~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reset_b~q\,
	combout => \reset_c~0_combout\);

-- Location: FF_X26_Y22_N1
reset_c : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \reset_c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_c~q\);

-- Location: LCCOMB_X26_Y22_N18
\reset_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_d~0_combout\ = (\reset~input_o\) # (\reset_c~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reset_c~q\,
	combout => \reset_d~0_combout\);

-- Location: FF_X26_Y22_N19
reset_d : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \reset_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_d~q\);

-- Location: LCCOMB_X26_Y22_N28
\reset_e~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_e~0_combout\ = (\reset~input_o\) # (\reset_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reset_d~q\,
	combout => \reset_e~0_combout\);

-- Location: FF_X26_Y22_N29
reset_e : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \reset_e~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_e~q\);

-- Location: LCCOMB_X26_Y22_N8
\res_img|v_count[9]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[9]~10_combout\ = (\reset_e~q\) # ((\res_img|Equal0~2_combout\ & (!\res_img|Equal0~0_combout\ & !\res_img|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Equal0~2_combout\,
	datab => \res_img|Equal0~0_combout\,
	datac => \res_img|Equal0~1_combout\,
	datad => \reset_e~q\,
	combout => \res_img|v_count[9]~10_combout\);

-- Location: FF_X24_Y22_N23
\res_img|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[8]~27_combout\,
	sclr => \res_img|v_count[9]~31_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(8));

-- Location: LCCOMB_X24_Y22_N24
\res_img|v_count[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[9]~29_combout\ = \res_img|v_count[8]~28\ $ (\res_img|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \res_img|v_count\(9),
	cin => \res_img|v_count[8]~28\,
	combout => \res_img|v_count[9]~29_combout\);

-- Location: FF_X25_Y22_N29
\res_img|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|v_count[9]~29_combout\,
	sclr => \res_img|v_count[9]~31_combout\,
	sload => VCC,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(9));

-- Location: LCCOMB_X25_Y22_N28
\res_img|v_count[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[9]~31_combout\ = (\reset_e~q\) # ((\res_img|LessThan25~2_combout\ & (!\res_img|Equal1~0_combout\ & \res_img|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan25~2_combout\,
	datab => \res_img|Equal1~0_combout\,
	datac => \res_img|v_count\(9),
	datad => \reset_e~q\,
	combout => \res_img|v_count[9]~31_combout\);

-- Location: FF_X24_Y22_N7
\res_img|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[0]~11_combout\,
	sclr => \res_img|v_count[9]~31_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(0));

-- Location: LCCOMB_X24_Y22_N8
\res_img|v_count[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[1]~13_combout\ = (\res_img|v_count\(1) & (!\res_img|v_count[0]~12\)) # (!\res_img|v_count\(1) & ((\res_img|v_count[0]~12\) # (GND)))
-- \res_img|v_count[1]~14\ = CARRY((!\res_img|v_count[0]~12\) # (!\res_img|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|v_count\(1),
	datad => VCC,
	cin => \res_img|v_count[0]~12\,
	combout => \res_img|v_count[1]~13_combout\,
	cout => \res_img|v_count[1]~14\);

-- Location: FF_X24_Y22_N9
\res_img|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[1]~13_combout\,
	sclr => \res_img|v_count[9]~31_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(1));

-- Location: LCCOMB_X24_Y22_N10
\res_img|v_count[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[2]~15_combout\ = (\res_img|v_count\(2) & (\res_img|v_count[1]~14\ $ (GND))) # (!\res_img|v_count\(2) & (!\res_img|v_count[1]~14\ & VCC))
-- \res_img|v_count[2]~16\ = CARRY((\res_img|v_count\(2) & !\res_img|v_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|v_count\(2),
	datad => VCC,
	cin => \res_img|v_count[1]~14\,
	combout => \res_img|v_count[2]~15_combout\,
	cout => \res_img|v_count[2]~16\);

-- Location: FF_X25_Y22_N13
\res_img|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|v_count[2]~15_combout\,
	sclr => \res_img|v_count[9]~31_combout\,
	sload => VCC,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(2));

-- Location: LCCOMB_X24_Y22_N12
\res_img|v_count[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[3]~17_combout\ = (\res_img|v_count\(3) & (!\res_img|v_count[2]~16\)) # (!\res_img|v_count\(3) & ((\res_img|v_count[2]~16\) # (GND)))
-- \res_img|v_count[3]~18\ = CARRY((!\res_img|v_count[2]~16\) # (!\res_img|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|v_count\(3),
	datad => VCC,
	cin => \res_img|v_count[2]~16\,
	combout => \res_img|v_count[3]~17_combout\,
	cout => \res_img|v_count[3]~18\);

-- Location: FF_X25_Y22_N23
\res_img|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|v_count[3]~17_combout\,
	sclr => \res_img|v_count[9]~31_combout\,
	sload => VCC,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(3));

-- Location: LCCOMB_X24_Y22_N14
\res_img|v_count[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[4]~19_combout\ = (\res_img|v_count\(4) & (\res_img|v_count[3]~18\ $ (GND))) # (!\res_img|v_count\(4) & (!\res_img|v_count[3]~18\ & VCC))
-- \res_img|v_count[4]~20\ = CARRY((\res_img|v_count\(4) & !\res_img|v_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(4),
	datad => VCC,
	cin => \res_img|v_count[3]~18\,
	combout => \res_img|v_count[4]~19_combout\,
	cout => \res_img|v_count[4]~20\);

-- Location: FF_X25_Y22_N17
\res_img|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|v_count[4]~19_combout\,
	sclr => \res_img|v_count[9]~31_combout\,
	sload => VCC,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(4));

-- Location: LCCOMB_X24_Y22_N16
\res_img|v_count[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[5]~21_combout\ = (\res_img|v_count\(5) & (!\res_img|v_count[4]~20\)) # (!\res_img|v_count\(5) & ((\res_img|v_count[4]~20\) # (GND)))
-- \res_img|v_count[5]~22\ = CARRY((!\res_img|v_count[4]~20\) # (!\res_img|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|v_count\(5),
	datad => VCC,
	cin => \res_img|v_count[4]~20\,
	combout => \res_img|v_count[5]~21_combout\,
	cout => \res_img|v_count[5]~22\);

-- Location: FF_X24_Y22_N17
\res_img|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[5]~21_combout\,
	sclr => \res_img|v_count[9]~31_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(5));

-- Location: LCCOMB_X24_Y22_N18
\res_img|v_count[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[6]~23_combout\ = (\res_img|v_count\(6) & (\res_img|v_count[5]~22\ $ (GND))) # (!\res_img|v_count\(6) & (!\res_img|v_count[5]~22\ & VCC))
-- \res_img|v_count[6]~24\ = CARRY((\res_img|v_count\(6) & !\res_img|v_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|v_count\(6),
	datad => VCC,
	cin => \res_img|v_count[5]~22\,
	combout => \res_img|v_count[6]~23_combout\,
	cout => \res_img|v_count[6]~24\);

-- Location: FF_X24_Y22_N19
\res_img|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[6]~23_combout\,
	sclr => \res_img|v_count[9]~31_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(6));

-- Location: FF_X25_Y22_N27
\res_img|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|v_count[7]~25_combout\,
	sclr => \res_img|v_count[9]~31_combout\,
	sload => VCC,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(7));

-- Location: LCCOMB_X25_Y22_N0
\res_img|process_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~9_combout\ = (!\res_img|v_count\(5) & !\res_img|v_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|v_count\(5),
	datad => \res_img|v_count\(4),
	combout => \res_img|process_1~9_combout\);

-- Location: LCCOMB_X25_Y22_N10
\res_img|LessThan25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan25~2_combout\ = (!\res_img|v_count\(7) & (\res_img|process_1~9_combout\ & (!\res_img|v_count\(8) & !\res_img|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(7),
	datab => \res_img|process_1~9_combout\,
	datac => \res_img|v_count\(8),
	datad => \res_img|v_count\(6),
	combout => \res_img|LessThan25~2_combout\);

-- Location: LCCOMB_X25_Y22_N22
\res_img|LessThan25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan25~1_combout\ = (!\res_img|v_count\(3) & !\res_img|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|v_count\(3),
	datad => \res_img|v_count\(2),
	combout => \res_img|LessThan25~1_combout\);

-- Location: LCCOMB_X25_Y22_N6
\res_img|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan1~0_combout\ = (\res_img|LessThan25~2_combout\ & (!\res_img|v_count\(9) & (\res_img|LessThan25~1_combout\ & !\res_img|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan25~2_combout\,
	datab => \res_img|v_count\(9),
	datac => \res_img|LessThan25~1_combout\,
	datad => \res_img|v_count\(1),
	combout => \res_img|LessThan1~0_combout\);

-- Location: FF_X25_Y22_N7
\res_img|vs_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|vs_1~q\);

-- Location: LCCOMB_X24_Y19_N12
\res_img|vs_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|vs_2~feeder_combout\ = \res_img|vs_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|vs_1~q\,
	combout => \res_img|vs_2~feeder_combout\);

-- Location: FF_X24_Y19_N13
\res_img|vs_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|vs_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|vs_2~q\);

-- Location: LCCOMB_X24_Y19_N16
\res_img|vs_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|vs_out~feeder_combout\ = \res_img|vs_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|vs_2~q\,
	combout => \res_img|vs_out~feeder_combout\);

-- Location: FF_X24_Y19_N17
\res_img|vs_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|vs_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|vs_out~q\);

-- Location: LCCOMB_X29_Y22_N26
\res_img|process_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~10_combout\ = (\res_img|h_count\(5) & \res_img|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datad => \res_img|h_count\(6),
	combout => \res_img|process_1~10_combout\);

-- Location: LCCOMB_X26_Y22_N2
\res_img|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan0~5_combout\ = (!\res_img|process_1~10_combout\ & (!\res_img|h_count\(9) & (!\res_img|h_count\(7) & !\res_img|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~10_combout\,
	datab => \res_img|h_count\(9),
	datac => \res_img|h_count\(7),
	datad => \res_img|h_count\(8),
	combout => \res_img|LessThan0~5_combout\);

-- Location: FF_X26_Y22_N3
\res_img|hs_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|hs_1~q\);

-- Location: LCCOMB_X26_Y22_N22
\res_img|hs_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|hs_2~feeder_combout\ = \res_img|hs_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|hs_1~q\,
	combout => \res_img|hs_2~feeder_combout\);

-- Location: FF_X26_Y22_N23
\res_img|hs_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|hs_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|hs_2~q\);

-- Location: LCCOMB_X26_Y22_N10
\res_img|hs_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|hs_out~feeder_combout\ = \res_img|hs_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|hs_2~q\,
	combout => \res_img|hs_out~feeder_combout\);

-- Location: FF_X26_Y22_N11
\res_img|hs_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|hs_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|hs_out~q\);

-- Location: LCCOMB_X25_Y22_N24
\res_img|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan5~0_combout\ = ((\res_img|LessThan25~2_combout\ & (!\res_img|v_count\(2) & !\res_img|v_count\(3)))) # (!\res_img|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan25~2_combout\,
	datab => \res_img|v_count\(9),
	datac => \res_img|v_count\(2),
	datad => \res_img|v_count\(3),
	combout => \res_img|LessThan5~0_combout\);

-- Location: LCCOMB_X24_Y22_N26
\res_img|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan4~0_combout\ = ((!\res_img|v_count\(4) & (!\res_img|v_count\(3) & !\res_img|v_count\(2)))) # (!\res_img|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(4),
	datab => \res_img|v_count\(3),
	datac => \res_img|v_count\(2),
	datad => \res_img|v_count\(5),
	combout => \res_img|LessThan4~0_combout\);

-- Location: LCCOMB_X25_Y22_N18
\res_img|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan4~1_combout\ = (!\res_img|v_count\(7) & (!\res_img|v_count\(6) & (!\res_img|v_count\(8) & !\res_img|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(7),
	datab => \res_img|v_count\(6),
	datac => \res_img|v_count\(8),
	datad => \res_img|v_count\(9),
	combout => \res_img|LessThan4~1_combout\);

-- Location: LCCOMB_X27_Y22_N4
\res_img|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan2~0_combout\ = (!\res_img|h_count\(4) & (!\res_img|h_count\(5) & !\res_img|h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(4),
	datac => \res_img|h_count\(5),
	datad => \res_img|h_count\(6),
	combout => \res_img|LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y22_N16
\res_img|process_1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~27_combout\ = (\res_img|h_count\(9) & (((\res_img|LessThan2~0_combout\ & !\res_img|h_count\(7))) # (!\res_img|h_count\(8)))) # (!\res_img|h_count\(9) & ((\res_img|h_count\(8)) # ((!\res_img|LessThan2~0_combout\ & 
-- \res_img|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan2~0_combout\,
	datab => \res_img|h_count\(9),
	datac => \res_img|h_count\(7),
	datad => \res_img|h_count\(8),
	combout => \res_img|process_1~27_combout\);

-- Location: LCCOMB_X25_Y19_N28
\res_img|process_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~28_combout\ = (\res_img|LessThan5~0_combout\ & (\res_img|process_1~27_combout\ & ((!\res_img|LessThan4~1_combout\) # (!\res_img|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan5~0_combout\,
	datab => \res_img|LessThan4~0_combout\,
	datac => \res_img|LessThan4~1_combout\,
	datad => \res_img|process_1~27_combout\,
	combout => \res_img|process_1~28_combout\);

-- Location: FF_X25_Y19_N29
\res_img|de_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|process_1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|de_1~q\);

-- Location: LCCOMB_X25_Y19_N26
\res_img|rgb2[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[21]~feeder_combout\ = \res_img|de_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|de_1~q\,
	combout => \res_img|rgb2[21]~feeder_combout\);

-- Location: FF_X25_Y19_N27
\res_img|rgb2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|rgb2[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|rgb2\(21));

-- Location: FF_X25_Y19_N21
\res_img|r_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|rgb2\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|r_out\(5));

-- Location: LCCOMB_X27_Y22_N26
\res_img|LessThan21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan21~0_combout\ = (!\res_img|h_count\(2) & ((!\res_img|h_count\(1)) # (!\res_img|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(0),
	datac => \res_img|h_count\(1),
	datad => \res_img|h_count\(2),
	combout => \res_img|LessThan21~0_combout\);

-- Location: LCCOMB_X29_Y22_N12
\res_img|LessThan21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan21~1_combout\ = (!\res_img|h_count\(4) & ((\res_img|LessThan21~0_combout\) # (!\res_img|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(4),
	datab => \res_img|LessThan21~0_combout\,
	datac => \res_img|h_count\(3),
	combout => \res_img|LessThan21~1_combout\);

-- Location: LCCOMB_X26_Y22_N4
\res_img|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan0~4_combout\ = (!\res_img|h_count\(7) & (!\res_img|h_count\(9) & !\res_img|h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(7),
	datab => \res_img|h_count\(9),
	datad => \res_img|h_count\(8),
	combout => \res_img|LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y22_N0
\res_img|LessThan20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan20~0_combout\ = (\res_img|h_count\(3)) # ((\res_img|h_count\(4)) # ((\res_img|h_count\(2) & \res_img|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(2),
	datab => \res_img|h_count\(3),
	datac => \res_img|h_count\(4),
	datad => \res_img|h_count\(1),
	combout => \res_img|LessThan20~0_combout\);

-- Location: LCCOMB_X29_Y22_N18
\res_img|process_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~30_combout\ = ((!\res_img|h_count\(5) & (!\res_img|LessThan20~0_combout\ & !\res_img|h_count\(6)))) # (!\res_img|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datab => \res_img|LessThan0~4_combout\,
	datac => \res_img|LessThan20~0_combout\,
	datad => \res_img|h_count\(6),
	combout => \res_img|process_1~30_combout\);

-- Location: LCCOMB_X29_Y22_N30
\res_img|process_1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~19_combout\ = (\res_img|process_1~30_combout\) # ((\res_img|h_count\(6) & ((\res_img|h_count\(5)) # (!\res_img|LessThan21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan21~1_combout\,
	datab => \res_img|process_1~30_combout\,
	datac => \res_img|h_count\(6),
	datad => \res_img|h_count\(5),
	combout => \res_img|process_1~19_combout\);

-- Location: LCCOMB_X26_Y22_N14
\res_img|rgb2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~0_combout\ = (!\res_img|h_count\(8) & !\res_img|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|h_count\(8),
	datad => \res_img|h_count\(9),
	combout => \res_img|rgb2~0_combout\);

-- Location: LCCOMB_X29_Y22_N10
\res_img|process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~6_combout\ = (!\res_img|h_count\(5) & !\res_img|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datad => \res_img|h_count\(6),
	combout => \res_img|process_1~6_combout\);

-- Location: LCCOMB_X29_Y22_N8
\res_img|process_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~7_combout\ = ((\res_img|h_count\(4) & (!\res_img|LessThan21~0_combout\ & \res_img|h_count\(3)))) # (!\res_img|process_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(4),
	datab => \res_img|LessThan21~0_combout\,
	datac => \res_img|h_count\(3),
	datad => \res_img|process_1~6_combout\,
	combout => \res_img|process_1~7_combout\);

-- Location: LCCOMB_X27_Y22_N28
\res_img|process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~4_combout\ = ((!\res_img|h_count\(3) & ((!\res_img|h_count\(1)) # (!\res_img|h_count\(2))))) # (!\res_img|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(2),
	datab => \res_img|h_count\(3),
	datac => \res_img|h_count\(4),
	datad => \res_img|h_count\(1),
	combout => \res_img|process_1~4_combout\);

-- Location: LCCOMB_X29_Y22_N0
\res_img|process_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~5_combout\ = (!\res_img|h_count\(7) & (((!\res_img|h_count\(5) & \res_img|process_1~4_combout\)) # (!\res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datab => \res_img|h_count\(6),
	datac => \res_img|h_count\(7),
	datad => \res_img|process_1~4_combout\,
	combout => \res_img|process_1~5_combout\);

-- Location: LCCOMB_X29_Y22_N2
\res_img|process_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~8_combout\ = ((\res_img|process_1~5_combout\) # ((\res_img|process_1~7_combout\ & \res_img|h_count\(7)))) # (!\res_img|rgb2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~0_combout\,
	datab => \res_img|process_1~7_combout\,
	datac => \res_img|h_count\(7),
	datad => \res_img|process_1~5_combout\,
	combout => \res_img|process_1~8_combout\);

-- Location: LCCOMB_X24_Y22_N4
\res_img|LessThan14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan14~0_combout\ = (\res_img|v_count\(3) & ((\res_img|v_count\(0)) # ((\res_img|v_count\(1)) # (\res_img|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(0),
	datab => \res_img|v_count\(1),
	datac => \res_img|v_count\(2),
	datad => \res_img|v_count\(3),
	combout => \res_img|LessThan14~0_combout\);

-- Location: LCCOMB_X25_Y22_N16
\res_img|LessThan25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan25~0_combout\ = (\res_img|v_count\(5) & (\res_img|v_count\(4) & ((\res_img|v_count\(3)) # (\res_img|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(5),
	datab => \res_img|v_count\(3),
	datac => \res_img|v_count\(4),
	datad => \res_img|v_count\(2),
	combout => \res_img|LessThan25~0_combout\);

-- Location: LCCOMB_X25_Y22_N14
\res_img|int_res[31]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|int_res[31]~2_combout\ = (\res_img|v_count\(8) & (((\res_img|LessThan25~0_combout\)))) # (!\res_img|v_count\(8) & (\res_img|process_1~9_combout\ & (!\res_img|LessThan14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(8),
	datab => \res_img|process_1~9_combout\,
	datac => \res_img|LessThan14~0_combout\,
	datad => \res_img|LessThan25~0_combout\,
	combout => \res_img|int_res[31]~2_combout\);

-- Location: LCCOMB_X25_Y22_N4
\res_img|int_res[31]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|int_res[31]~3_combout\ = (\res_img|v_count\(7) & ((\res_img|v_count\(6) & (!\res_img|v_count\(8))) # (!\res_img|v_count\(6) & ((!\res_img|int_res[31]~2_combout\))))) # (!\res_img|v_count\(7) & (\res_img|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(8),
	datab => \res_img|v_count\(6),
	datac => \res_img|v_count\(7),
	datad => \res_img|int_res[31]~2_combout\,
	combout => \res_img|int_res[31]~3_combout\);

-- Location: LCCOMB_X25_Y19_N14
\res_img|int_res[31]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|int_res[31]~4_combout\ = (\res_img|de_1~q\ & (\res_img|int_res[31]~3_combout\ & !\res_img|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|de_1~q\,
	datac => \res_img|int_res[31]~3_combout\,
	datad => \res_img|v_count\(9),
	combout => \res_img|int_res[31]~4_combout\);

-- Location: LCCOMB_X29_Y22_N28
\res_img|rgb2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~21_combout\ = (\res_img|process_1~19_combout\ & (!\res_img|process_1~8_combout\ & \res_img|int_res[31]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~19_combout\,
	datab => \res_img|process_1~8_combout\,
	datac => \res_img|int_res[31]~4_combout\,
	combout => \res_img|rgb2~21_combout\);

-- Location: LCCOMB_X25_Y22_N2
\res_img|process_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~12_combout\ = (\res_img|v_count\(7) & (\res_img|v_count\(6) & (!\res_img|v_count\(8) & !\res_img|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(7),
	datab => \res_img|v_count\(6),
	datac => \res_img|v_count\(8),
	datad => \res_img|v_count\(9),
	combout => \res_img|process_1~12_combout\);

-- Location: LCCOMB_X24_Y22_N30
\res_img|process_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~13_combout\ = (\res_img|v_count\(2) & ((\res_img|v_count\(0) & ((\res_img|v_count\(1)) # (\res_img|v_count\(5)))) # (!\res_img|v_count\(0) & (\res_img|v_count\(1) & \res_img|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(0),
	datab => \res_img|v_count\(1),
	datac => \res_img|v_count\(2),
	datad => \res_img|v_count\(5),
	combout => \res_img|process_1~13_combout\);

-- Location: LCCOMB_X24_Y22_N2
\res_img|process_1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~29_combout\ = (\res_img|v_count\(5) & (\res_img|process_1~13_combout\ & (\res_img|v_count\(3)))) # (!\res_img|v_count\(5) & (!\res_img|v_count\(4) & ((!\res_img|v_count\(3)) # (!\res_img|process_1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~13_combout\,
	datab => \res_img|v_count\(3),
	datac => \res_img|v_count\(4),
	datad => \res_img|v_count\(5),
	combout => \res_img|process_1~29_combout\);

-- Location: LCCOMB_X29_Y24_N28
\res_img|process_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~14_combout\ = ((\res_img|process_1~29_combout\) # ((\res_img|v_count\(4) & \res_img|v_count\(5)))) # (!\res_img|process_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~12_combout\,
	datab => \res_img|process_1~29_combout\,
	datac => \res_img|v_count\(4),
	datad => \res_img|v_count\(5),
	combout => \res_img|process_1~14_combout\);

-- Location: LCCOMB_X25_Y22_N12
\res_img|process_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~15_combout\ = (\res_img|v_count\(5)) # ((\res_img|v_count\(4)) # ((\res_img|v_count\(1) & \res_img|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(1),
	datab => \res_img|v_count\(5),
	datac => \res_img|v_count\(2),
	datad => \res_img|v_count\(4),
	combout => \res_img|process_1~15_combout\);

-- Location: LCCOMB_X25_Y22_N20
\res_img|process_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~16_combout\ = (\res_img|process_1~15_combout\) # (((\res_img|process_1~9_combout\ & !\res_img|LessThan14~0_combout\)) # (!\res_img|process_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~15_combout\,
	datab => \res_img|process_1~9_combout\,
	datac => \res_img|LessThan14~0_combout\,
	datad => \res_img|process_1~12_combout\,
	combout => \res_img|process_1~16_combout\);

-- Location: LCCOMB_X30_Y27_N28
\res_img|int_res[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|int_res[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \res_img|int_res[31]~feeder_combout\);

-- Location: LCCOMB_X25_Y19_N16
\res_img|int_res[31]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|int_res[31]~5_combout\ = (!\res_img|process_1~19_combout\ & (\res_img|de_1~q\ & (\res_img|int_res[31]~3_combout\ & !\res_img|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~19_combout\,
	datab => \res_img|de_1~q\,
	datac => \res_img|int_res[31]~3_combout\,
	datad => \res_img|v_count\(9),
	combout => \res_img|int_res[31]~5_combout\);

-- Location: FF_X30_Y27_N29
\res_img|int_res[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|int_res[31]~feeder_combout\,
	ena => \res_img|int_res[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|int_res\(31));

-- Location: IOIBUF_X31_Y0_N22
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

-- Location: FF_X30_Y28_N17
\res_img|int_res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \Res[3]~input_o\,
	sload => VCC,
	ena => \res_img|int_res[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|int_res\(3));

-- Location: IOIBUF_X31_Y0_N29
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

-- Location: FF_X30_Y28_N7
\res_img|int_res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \Res[2]~input_o\,
	sload => VCC,
	ena => \res_img|int_res[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|int_res\(2));

-- Location: IOIBUF_X20_Y0_N15
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

-- Location: FF_X30_Y28_N3
\res_img|int_res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \Res[1]~input_o\,
	sload => VCC,
	ena => \res_img|int_res[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|int_res\(1));

-- Location: IOIBUF_X20_Y0_N22
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

-- Location: LCCOMB_X35_Y28_N4
\res_img|int_res[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|int_res[0]~6_combout\ = !\Res[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Res[0]~input_o\,
	combout => \res_img|int_res[0]~6_combout\);

-- Location: FF_X30_Y28_N1
\res_img|int_res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|int_res[0]~6_combout\,
	sload => VCC,
	ena => \res_img|int_res[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|int_res\(0));

-- Location: LCCOMB_X30_Y28_N0
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ = (!\res_img|int_res\(2) & (!\res_img|int_res\(1) & (\res_img|int_res\(0) & !\res_img|int_res\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(2),
	datab => \res_img|int_res\(1),
	datac => \res_img|int_res\(0),
	datad => \res_img|int_res\(31),
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\);

-- Location: LCCOMB_X30_Y28_N2
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[3]~1_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & (\res_img|int_res\(31) $ (!\res_img|int_res\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datab => \res_img|int_res\(3),
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[3]~1_combout\);

-- Location: LCCOMB_X30_Y28_N4
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\ = (\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[3]~1_combout\ & VCC)) # (!\res_img|int_res\(31) & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[3]~1_combout\ $ (VCC)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~3\ = CARRY((!\res_img|int_res\(31) & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[3]~1_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~3\);

-- Location: LCCOMB_X30_Y28_N6
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~3\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~3\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~5\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~3\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~5\);

-- Location: LCCOMB_X30_Y28_N8
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~5\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~5\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~7\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~5\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~7\);

-- Location: LCCOMB_X30_Y28_N10
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~7\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~7\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~9\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~7\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~9\);

-- Location: LCCOMB_X30_Y28_N12
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~9\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~9\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~11\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~9\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~11\);

-- Location: LCCOMB_X30_Y28_N14
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~11\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~11\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~13\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~11\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~13\);

-- Location: LCCOMB_X30_Y28_N16
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~13\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~13\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~15\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~13\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~15\);

-- Location: LCCOMB_X30_Y28_N18
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~15\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~15\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~17\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~15\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~17\);

-- Location: LCCOMB_X30_Y28_N20
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~17\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~17\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~19\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~17\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~19\);

-- Location: LCCOMB_X30_Y28_N22
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~19\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~19\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~21\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~19\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~21\);

-- Location: LCCOMB_X30_Y28_N24
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~21\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~21\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~23\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~21\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~23\);

-- Location: LCCOMB_X30_Y28_N26
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~23\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~23\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~25\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~23\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~25\);

-- Location: LCCOMB_X30_Y28_N28
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~25\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~25\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~27\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~25\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~27\);

-- Location: LCCOMB_X30_Y28_N30
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~27\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~27\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~29\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~27\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~29\);

-- Location: LCCOMB_X30_Y27_N0
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~29\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~29\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~31\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~29\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~31\);

-- Location: LCCOMB_X30_Y27_N2
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~31\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~31\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~33\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~31\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~33\);

-- Location: LCCOMB_X30_Y27_N4
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~33\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~33\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~35\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~33\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~35\);

-- Location: LCCOMB_X30_Y27_N6
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~35\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~35\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~37\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~35\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~37\);

-- Location: LCCOMB_X30_Y27_N8
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~37\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~37\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~39\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~37\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~39\);

-- Location: LCCOMB_X30_Y27_N10
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~39\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~39\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~41\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~39\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~41\);

-- Location: LCCOMB_X30_Y27_N12
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~41\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~41\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~43\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~41\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~43\);

-- Location: LCCOMB_X30_Y27_N14
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~43\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~43\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~45\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~43\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~45\);

-- Location: LCCOMB_X30_Y27_N16
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~45\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~45\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~47\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~45\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~47\);

-- Location: LCCOMB_X30_Y27_N18
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~47\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~47\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~49\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~47\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~49\);

-- Location: LCCOMB_X30_Y27_N20
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~49\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~49\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~51\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~49\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~51\);

-- Location: LCCOMB_X30_Y27_N22
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ = (\res_img|int_res\(31) & ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~51\) # (GND))) # (!\res_img|int_res\(31) & 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~51\))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~53\ = CARRY((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~51\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~53\);

-- Location: LCCOMB_X30_Y27_N24
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~53\ & VCC)) # (!\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~53\ $ 
-- (GND)))
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~55\ = CARRY((!\res_img|int_res\(31) & !\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~53\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54_combout\,
	cout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~55\);

-- Location: LCCOMB_X30_Y27_N26
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56_combout\ = \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~55\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~55\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56_combout\);

-- Location: LCCOMB_X31_Y27_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ $ (VCC)
-- \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X31_Y27_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54_combout\ & (\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54_combout\ & (!\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X31_Y27_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56_combout\ & (\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56_combout\ & (!\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X31_Y27_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X31_Y27_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[21]~331\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[21]~331_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[21]~331_combout\);

-- Location: LCCOMB_X30_Y27_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[21]~330\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[21]~330_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[21]~330_combout\);

-- Location: LCCOMB_X31_Y27_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[20]~333\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[20]~333_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[20]~333_combout\);

-- Location: LCCOMB_X31_Y27_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[20]~332\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[20]~332_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[20]~332_combout\);

-- Location: LCCOMB_X31_Y27_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[19]~334\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[19]~334_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[19]~334_combout\);

-- Location: LCCOMB_X31_Y27_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[19]~335\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[19]~335_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[19]~335_combout\);

-- Location: LCCOMB_X31_Y27_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[18]~337\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[18]~337_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[18]~337_combout\);

-- Location: LCCOMB_X31_Y27_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[18]~336\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[18]~336_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[18]~336_combout\);

-- Location: LCCOMB_X31_Y27_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[18]~337_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[18]~336_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[18]~337_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[18]~336_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[18]~337_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[18]~336_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X31_Y27_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[19]~334_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[19]~335_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[19]~334_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[19]~335_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[19]~334_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[19]~335_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[19]~334_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[19]~335_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X31_Y27_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[20]~333_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[20]~332_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[20]~333_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[20]~332_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[20]~333_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[20]~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[20]~333_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[20]~332_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X31_Y27_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[21]~331_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[21]~330_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[21]~331_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[21]~330_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[21]~331_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[21]~330_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[21]~331_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[21]~330_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X31_Y27_N26
\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X34_Y27_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[28]~338\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[28]~338_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[28]~338_combout\);

-- Location: LCCOMB_X34_Y27_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[28]~580\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[28]~580_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~56_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[28]~580_combout\);

-- Location: LCCOMB_X34_Y27_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[27]~339\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[27]~339_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[27]~339_combout\);

-- Location: LCCOMB_X34_Y27_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[27]~581\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[27]~581_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~54_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[27]~581_combout\);

-- Location: LCCOMB_X34_Y27_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[26]~582\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[26]~582_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[26]~582_combout\);

-- Location: LCCOMB_X34_Y27_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[26]~340\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[26]~340_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[26]~340_combout\);

-- Location: LCCOMB_X32_Y27_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[25]~341\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[25]~341_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[25]~341_combout\);

-- Location: LCCOMB_X32_Y27_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[25]~342\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[25]~342_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[25]~342_combout\);

-- Location: LCCOMB_X32_Y27_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[24]~343\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[24]~343_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[24]~343_combout\);

-- Location: LCCOMB_X34_Y27_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[24]~344\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[24]~344_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[24]~344_combout\);

-- Location: LCCOMB_X34_Y27_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[24]~343_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[24]~344_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[24]~343_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[24]~344_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[24]~343_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[24]~344_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X34_Y27_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[25]~341_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[25]~342_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[25]~341_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[25]~342_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[25]~341_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[25]~342_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[25]~341_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[25]~342_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X34_Y27_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[26]~582_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[26]~340_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[26]~582_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[26]~340_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[26]~582_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[26]~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[26]~582_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[26]~340_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X34_Y27_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[27]~339_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[27]~581_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[27]~339_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[27]~581_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[27]~339_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[27]~581_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[27]~339_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[27]~581_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X34_Y27_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[28]~338_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[28]~580_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[28]~338_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[28]~580_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X34_Y27_N26
\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X35_Y27_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[34]~345\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[34]~345_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[34]~345_combout\);

-- Location: LCCOMB_X35_Y27_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[34]~527\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[34]~527_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[27]~581_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[27]~581_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[34]~527_combout\);

-- Location: LCCOMB_X35_Y27_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[33]~528\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[33]~528_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[26]~582_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[26]~582_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[33]~528_combout\);

-- Location: LCCOMB_X35_Y27_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[33]~346\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[33]~346_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[33]~346_combout\);

-- Location: LCCOMB_X34_Y27_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[32]~583\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[32]~583_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~50_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[32]~583_combout\);

-- Location: LCCOMB_X35_Y27_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[32]~347\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[32]~347_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[32]~347_combout\);

-- Location: LCCOMB_X35_Y27_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[31]~348\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[31]~348_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[31]~348_combout\);

-- Location: LCCOMB_X35_Y27_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[31]~349\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[31]~349_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[31]~349_combout\);

-- Location: LCCOMB_X35_Y27_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[30]~350\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[30]~350_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[30]~350_combout\);

-- Location: LCCOMB_X35_Y27_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[30]~351\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[30]~351_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[30]~351_combout\);

-- Location: LCCOMB_X35_Y27_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[30]~350_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[30]~351_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[30]~350_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[30]~351_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[30]~350_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[30]~351_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X35_Y27_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[31]~348_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[31]~349_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[31]~348_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[31]~349_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[31]~348_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[31]~349_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[31]~348_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[31]~349_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X35_Y27_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[32]~583_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[32]~347_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[32]~583_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[32]~347_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[32]~583_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[32]~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[32]~583_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[32]~347_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X35_Y27_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[33]~528_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[33]~346_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[33]~528_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[33]~346_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[33]~528_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[33]~346_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[33]~528_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[33]~346_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X35_Y27_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[34]~345_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[34]~527_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[34]~345_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[34]~527_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X35_Y27_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\);

-- Location: LCCOMB_X34_Y27_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[38]~584\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[38]~584_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~48_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[38]~584_combout\);

-- Location: LCCOMB_X35_Y25_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[40]~529\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[40]~529_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[33]~528_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[33]~528_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[40]~529_combout\);

-- Location: LCCOMB_X35_Y25_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[40]~352\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[40]~352_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[40]~352_combout\);

-- Location: LCCOMB_X35_Y25_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[39]~353\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[39]~353_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[39]~353_combout\);

-- Location: LCCOMB_X34_Y27_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[39]~530\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[39]~530_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[32]~583_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[32]~583_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[39]~530_combout\);

-- Location: LCCOMB_X35_Y25_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[38]~354\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[38]~354_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[38]~354_combout\);

-- Location: LCCOMB_X35_Y27_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[37]~355\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[37]~355_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[37]~355_combout\);

-- Location: LCCOMB_X35_Y25_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[37]~356\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[37]~356_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[37]~356_combout\);

-- Location: LCCOMB_X35_Y25_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[36]~358\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[36]~358_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[36]~358_combout\);

-- Location: LCCOMB_X35_Y25_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[36]~357\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[36]~357_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[36]~357_combout\);

-- Location: LCCOMB_X35_Y25_N2
\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[36]~358_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[36]~357_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[36]~358_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[36]~357_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[36]~358_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[36]~357_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X35_Y25_N4
\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[37]~355_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[37]~356_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[37]~355_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[37]~356_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[37]~355_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[37]~356_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[37]~355_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[37]~356_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X35_Y25_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[38]~584_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[38]~354_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[38]~584_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[38]~354_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[38]~584_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[38]~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[38]~584_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[38]~354_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X35_Y25_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[39]~353_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[39]~530_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[39]~353_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[39]~530_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[39]~353_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[39]~530_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[39]~353_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[39]~530_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X35_Y25_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[40]~529_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[40]~352_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[40]~529_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[40]~352_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X35_Y25_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\);

-- Location: LCCOMB_X36_Y25_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[45]~532\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[45]~532_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[38]~584_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[38]~584_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[45]~532_combout\);

-- Location: LCCOMB_X36_Y25_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[45]~360\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[45]~360_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[45]~360_combout\);

-- Location: LCCOMB_X36_Y25_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[44]~585\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[44]~585_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~46_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[44]~585_combout\);

-- Location: LCCOMB_X36_Y25_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[44]~361\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[44]~361_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[44]~361_combout\);

-- Location: LCCOMB_X36_Y25_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[43]~363\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[43]~363_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[43]~363_combout\);

-- Location: LCCOMB_X35_Y25_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[43]~362\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[43]~362_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[43]~362_combout\);

-- Location: LCCOMB_X35_Y25_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[42]~365\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[42]~365_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[42]~365_combout\);

-- Location: LCCOMB_X36_Y25_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[42]~364\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[42]~364_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[42]~364_combout\);

-- Location: LCCOMB_X36_Y25_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[42]~365_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[42]~364_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[42]~365_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[42]~364_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[42]~365_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[42]~364_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X36_Y25_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[43]~363_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[43]~362_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[43]~363_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[43]~362_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[43]~363_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[43]~362_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[43]~363_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[43]~362_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X36_Y25_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[44]~585_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[44]~361_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[44]~585_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[44]~361_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[44]~585_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[44]~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[44]~585_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[44]~361_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X36_Y25_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[45]~532_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[45]~360_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[45]~532_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[45]~360_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[45]~532_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[45]~360_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[45]~532_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[45]~360_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X36_Y25_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[46]~359\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[46]~359_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[46]~359_combout\);

-- Location: LCCOMB_X36_Y25_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[46]~531\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[46]~531_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[39]~530_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[39]~530_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[46]~531_combout\);

-- Location: LCCOMB_X36_Y25_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[46]~359_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[46]~531_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[46]~359_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[46]~531_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\);

-- Location: LCCOMB_X36_Y25_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\);

-- Location: LCCOMB_X37_Y25_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[52]~366\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[52]~366_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[52]~366_combout\);

-- Location: LCCOMB_X37_Y25_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[52]~533\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[52]~533_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[45]~532_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[45]~532_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[52]~533_combout\);

-- Location: LCCOMB_X36_Y25_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[51]~534\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[51]~534_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[44]~585_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[44]~585_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[51]~534_combout\);

-- Location: LCCOMB_X37_Y25_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[51]~367\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[51]~367_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[51]~367_combout\);

-- Location: LCCOMB_X37_Y25_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[50]~586\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[50]~586_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~44_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[50]~586_combout\);

-- Location: LCCOMB_X36_Y25_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[50]~368\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[50]~368_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[50]~368_combout\);

-- Location: LCCOMB_X37_Y25_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[49]~370\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[49]~370_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[49]~370_combout\);

-- Location: LCCOMB_X37_Y25_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[49]~369\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[49]~369_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[49]~369_combout\);

-- Location: LCCOMB_X37_Y25_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[48]~372\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[48]~372_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[48]~372_combout\);

-- Location: LCCOMB_X37_Y25_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[48]~371\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[48]~371_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[48]~371_combout\);

-- Location: LCCOMB_X37_Y25_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[48]~372_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[48]~371_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[48]~372_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[48]~371_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[48]~372_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[48]~371_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X37_Y25_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[49]~370_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[49]~369_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[49]~370_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[49]~369_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[49]~370_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[49]~369_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[49]~370_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[49]~369_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X37_Y25_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[50]~586_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[50]~368_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[50]~586_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[50]~368_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[50]~586_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[50]~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[50]~586_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[50]~368_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X37_Y25_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[51]~534_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[51]~367_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[51]~534_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[51]~367_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[51]~534_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[51]~367_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[51]~534_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[51]~367_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X37_Y25_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[52]~366_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[52]~533_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[52]~366_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[52]~533_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\);

-- Location: LCCOMB_X37_Y25_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\);

-- Location: LCCOMB_X38_Y25_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[58]~535\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[58]~535_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[51]~534_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[51]~534_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[58]~535_combout\);

-- Location: LCCOMB_X38_Y25_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[58]~373\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[58]~373_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[58]~373_combout\);

-- Location: LCCOMB_X38_Y25_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[57]~374\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[57]~374_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[57]~374_combout\);

-- Location: LCCOMB_X38_Y25_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[57]~536\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[57]~536_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[50]~586_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[50]~586_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[57]~536_combout\);

-- Location: LCCOMB_X38_Y25_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[56]~587\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[56]~587_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~42_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[56]~587_combout\);

-- Location: LCCOMB_X38_Y25_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[56]~375\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[56]~375_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[56]~375_combout\);

-- Location: LCCOMB_X38_Y25_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[55]~377\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[55]~377_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[55]~377_combout\);

-- Location: LCCOMB_X38_Y25_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[55]~376\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[55]~376_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[55]~376_combout\);

-- Location: LCCOMB_X37_Y25_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[54]~378\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[54]~378_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[54]~378_combout\);

-- Location: LCCOMB_X37_Y25_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[54]~379\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[54]~379_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[54]~379_combout\);

-- Location: LCCOMB_X38_Y25_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[54]~378_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[54]~379_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[54]~378_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[54]~379_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[54]~378_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[54]~379_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X38_Y25_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[55]~377_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[55]~376_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[55]~377_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[55]~376_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[55]~377_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[55]~376_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[55]~377_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[55]~376_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X38_Y25_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[56]~587_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[56]~375_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[56]~587_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[56]~375_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[56]~587_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[56]~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[56]~587_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[56]~375_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X38_Y25_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[57]~374_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[57]~536_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[57]~374_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[57]~536_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[57]~374_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[57]~536_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[57]~374_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[57]~536_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X38_Y25_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[58]~535_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[58]~373_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[58]~535_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[58]~373_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\);

-- Location: LCCOMB_X38_Y25_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\);

-- Location: LCCOMB_X39_Y25_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[64]~537\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[64]~537_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[57]~536_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[57]~536_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[64]~537_combout\);

-- Location: LCCOMB_X39_Y25_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[64]~380\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[64]~380_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[64]~380_combout\);

-- Location: LCCOMB_X39_Y25_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[63]~381\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[63]~381_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[63]~381_combout\);

-- Location: LCCOMB_X39_Y25_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[63]~538\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[63]~538_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[56]~587_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[56]~587_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[63]~538_combout\);

-- Location: LCCOMB_X39_Y25_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[62]~588\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[62]~588_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~40_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[62]~588_combout\);

-- Location: LCCOMB_X39_Y25_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[62]~382\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[62]~382_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[62]~382_combout\);

-- Location: LCCOMB_X39_Y25_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[61]~383\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[61]~383_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[61]~383_combout\);

-- Location: LCCOMB_X38_Y25_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[61]~384\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[61]~384_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[61]~384_combout\);

-- Location: LCCOMB_X38_Y25_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[60]~386\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[60]~386_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[60]~386_combout\);

-- Location: LCCOMB_X39_Y25_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[60]~385\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[60]~385_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[60]~385_combout\);

-- Location: LCCOMB_X39_Y25_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[60]~386_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[60]~385_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[60]~386_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[60]~385_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[60]~386_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[60]~385_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X39_Y25_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[61]~383_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[61]~384_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[61]~383_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[61]~384_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[61]~383_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[61]~384_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[61]~383_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[61]~384_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X39_Y25_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[62]~588_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[62]~382_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[62]~588_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[62]~382_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[62]~588_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[62]~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[62]~588_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[62]~382_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X39_Y25_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[63]~381_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[63]~538_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[63]~381_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[63]~538_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[63]~381_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[63]~538_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[63]~381_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[63]~538_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X39_Y25_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[64]~537_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[64]~380_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[64]~537_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[64]~380_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\);

-- Location: LCCOMB_X39_Y25_N26
\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\);

-- Location: LCCOMB_X40_Y25_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[70]~539\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[70]~539_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[63]~538_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[63]~538_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[70]~539_combout\);

-- Location: LCCOMB_X40_Y25_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[70]~387\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[70]~387_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[70]~387_combout\);

-- Location: LCCOMB_X40_Y25_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[69]~540\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[69]~540_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[62]~588_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[62]~588_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[69]~540_combout\);

-- Location: LCCOMB_X40_Y25_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[69]~388\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[69]~388_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[69]~388_combout\);

-- Location: LCCOMB_X39_Y25_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[68]~589\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[68]~589_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & 
-- ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38_combout\))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~38_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[68]~589_combout\);

-- Location: LCCOMB_X40_Y25_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[68]~389\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[68]~389_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[68]~389_combout\);

-- Location: LCCOMB_X40_Y25_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[67]~390\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[67]~390_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[67]~390_combout\);

-- Location: LCCOMB_X40_Y25_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[67]~391\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[67]~391_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[67]~391_combout\);

-- Location: LCCOMB_X40_Y25_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[66]~393\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[66]~393_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[66]~393_combout\);

-- Location: LCCOMB_X35_Y25_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[66]~392\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[66]~392_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[66]~392_combout\);

-- Location: LCCOMB_X40_Y25_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[66]~393_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[66]~392_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[66]~393_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[66]~392_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[66]~393_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[66]~392_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X40_Y25_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[67]~390_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[67]~391_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[67]~390_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[67]~391_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[67]~390_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[67]~391_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[67]~390_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[67]~391_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X40_Y25_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[68]~589_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[68]~389_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[68]~589_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[68]~389_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[68]~589_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[68]~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[68]~589_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[68]~389_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X40_Y25_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[69]~540_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[69]~388_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[69]~540_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[69]~388_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[69]~540_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[69]~388_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[69]~540_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[69]~388_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\);

-- Location: LCCOMB_X40_Y25_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[70]~539_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[70]~387_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[70]~539_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[70]~387_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\);

-- Location: LCCOMB_X40_Y25_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\);

-- Location: LCCOMB_X41_Y25_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[76]~394\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[76]~394_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[76]~394_combout\);

-- Location: LCCOMB_X41_Y25_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[76]~541\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[76]~541_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[69]~540_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[69]~540_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[76]~541_combout\);

-- Location: LCCOMB_X41_Y25_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[75]~395\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[75]~395_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[75]~395_combout\);

-- Location: LCCOMB_X39_Y25_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[75]~542\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[75]~542_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[68]~589_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[68]~589_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[75]~542_combout\);

-- Location: LCCOMB_X41_Y25_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[74]~590\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[74]~590_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~36_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[74]~590_combout\);

-- Location: LCCOMB_X41_Y25_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[74]~396\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[74]~396_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[74]~396_combout\);

-- Location: LCCOMB_X40_Y25_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[73]~398\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[73]~398_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[73]~398_combout\);

-- Location: LCCOMB_X41_Y25_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[73]~397\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[73]~397_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[73]~397_combout\);

-- Location: LCCOMB_X41_Y25_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[72]~400\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[72]~400_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[72]~400_combout\);

-- Location: LCCOMB_X41_Y25_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[72]~399\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[72]~399_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[72]~399_combout\);

-- Location: LCCOMB_X41_Y25_N4
\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[72]~400_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[72]~399_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[72]~400_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[72]~399_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[72]~400_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[72]~399_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X41_Y25_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[73]~398_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[73]~397_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[73]~398_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[73]~397_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[73]~398_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[73]~397_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[73]~398_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[73]~397_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X41_Y25_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[74]~590_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[74]~396_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[74]~590_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[74]~396_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[74]~590_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[74]~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[74]~590_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[74]~396_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X41_Y25_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[75]~395_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[75]~542_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[75]~395_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[75]~542_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[75]~395_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[75]~542_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[75]~395_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[75]~542_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\);

-- Location: LCCOMB_X41_Y25_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[76]~394_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[76]~541_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[76]~394_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[76]~541_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\);

-- Location: LCCOMB_X41_Y25_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\);

-- Location: LCCOMB_X42_Y25_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[82]~401\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[82]~401_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[82]~401_combout\);

-- Location: LCCOMB_X42_Y25_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[82]~543\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[82]~543_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[75]~542_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[75]~542_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[82]~543_combout\);

-- Location: LCCOMB_X42_Y25_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[81]~544\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[81]~544_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[74]~590_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[74]~590_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[81]~544_combout\);

-- Location: LCCOMB_X42_Y25_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[81]~402\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[81]~402_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[81]~402_combout\);

-- Location: LCCOMB_X41_Y25_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[80]~403\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[80]~403_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[80]~403_combout\);

-- Location: LCCOMB_X40_Y25_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[80]~591\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[80]~591_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & 
-- ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34_combout\))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~34_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[80]~591_combout\);

-- Location: LCCOMB_X43_Y25_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[79]~405\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[79]~405_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[79]~405_combout\);

-- Location: LCCOMB_X41_Y25_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[79]~404\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[79]~404_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[79]~404_combout\);

-- Location: LCCOMB_X42_Y25_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[78]~407\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[78]~407_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[78]~407_combout\);

-- Location: LCCOMB_X42_Y25_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[78]~406\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[78]~406_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[78]~406_combout\);

-- Location: LCCOMB_X42_Y25_N2
\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[78]~407_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[78]~406_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[78]~407_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[78]~406_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[78]~407_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[78]~406_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X42_Y25_N4
\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[79]~405_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[79]~404_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[79]~405_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[79]~404_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[79]~405_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[79]~404_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[79]~405_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[79]~404_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X42_Y25_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[80]~403_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[80]~591_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[80]~403_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[80]~591_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[80]~403_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[80]~591_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[80]~403_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[80]~591_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X42_Y25_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[81]~544_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[81]~402_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[81]~544_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[81]~402_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[81]~544_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[81]~402_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[81]~544_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[81]~402_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\);

-- Location: LCCOMB_X42_Y25_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[82]~401_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[82]~543_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[82]~401_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[82]~543_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\);

-- Location: LCCOMB_X42_Y25_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\);

-- Location: LCCOMB_X43_Y26_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[88]~408\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[88]~408_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[88]~408_combout\);

-- Location: LCCOMB_X43_Y26_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[88]~545\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[88]~545_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[81]~544_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[81]~544_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[88]~545_combout\);

-- Location: LCCOMB_X43_Y26_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[87]~409\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[87]~409_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[87]~409_combout\);

-- Location: LCCOMB_X43_Y26_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[87]~546\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[87]~546_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[80]~591_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[80]~591_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[87]~546_combout\);

-- Location: LCCOMB_X42_Y25_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[86]~410\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[86]~410_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[86]~410_combout\);

-- Location: LCCOMB_X43_Y26_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[86]~592\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[86]~592_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~32_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[86]~592_combout\);

-- Location: LCCOMB_X42_Y25_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[85]~412\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[85]~412_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[85]~412_combout\);

-- Location: LCCOMB_X42_Y25_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[85]~411\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[85]~411_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[85]~411_combout\);

-- Location: LCCOMB_X42_Y25_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[84]~413\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[84]~413_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[84]~413_combout\);

-- Location: LCCOMB_X43_Y26_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[84]~414\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[84]~414_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[84]~414_combout\);

-- Location: LCCOMB_X43_Y26_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[84]~413_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[84]~414_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[84]~413_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[84]~414_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[84]~413_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[84]~414_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\);

-- Location: LCCOMB_X43_Y26_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[85]~412_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[85]~411_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[85]~412_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[85]~411_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[85]~412_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[85]~411_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[85]~412_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[85]~411_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\);

-- Location: LCCOMB_X43_Y26_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[86]~410_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[86]~592_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[86]~410_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[86]~592_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[86]~410_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[86]~592_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[86]~410_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[86]~592_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\);

-- Location: LCCOMB_X43_Y26_N26
\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[87]~409_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[87]~546_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[87]~409_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[87]~546_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[87]~409_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[87]~546_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[87]~409_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[87]~546_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\);

-- Location: LCCOMB_X43_Y26_N28
\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[88]~408_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[88]~545_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[88]~408_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[88]~545_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\);

-- Location: LCCOMB_X43_Y26_N30
\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\);

-- Location: LCCOMB_X42_Y26_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[94]~415\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[94]~415_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[94]~415_combout\);

-- Location: LCCOMB_X42_Y26_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[94]~547\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[94]~547_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[87]~546_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[87]~546_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[94]~547_combout\);

-- Location: LCCOMB_X43_Y26_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[93]~416\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[93]~416_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[93]~416_combout\);

-- Location: LCCOMB_X43_Y26_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[93]~548\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[93]~548_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[86]~592_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[86]~592_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[93]~548_combout\);

-- Location: LCCOMB_X43_Y26_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[92]~417\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[92]~417_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[92]~417_combout\);

-- Location: LCCOMB_X42_Y26_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[92]~593\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[92]~593_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~30_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[92]~593_combout\);

-- Location: LCCOMB_X43_Y26_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[91]~419\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[91]~419_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[91]~419_combout\);

-- Location: LCCOMB_X44_Y26_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[91]~418\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[91]~418_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[91]~418_combout\);

-- Location: LCCOMB_X42_Y26_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[90]~420\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[90]~420_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[90]~420_combout\);

-- Location: LCCOMB_X42_Y26_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[90]~421\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[90]~421_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[90]~421_combout\);

-- Location: LCCOMB_X42_Y26_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[90]~420_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[90]~421_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[90]~420_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[90]~421_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[90]~420_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[90]~421_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\);

-- Location: LCCOMB_X42_Y26_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[91]~419_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[91]~418_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[91]~419_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[91]~418_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[91]~419_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[91]~418_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[91]~419_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[91]~418_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\);

-- Location: LCCOMB_X42_Y26_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[92]~417_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[92]~593_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[92]~417_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[92]~593_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[92]~417_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[92]~593_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[92]~417_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[92]~593_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\);

-- Location: LCCOMB_X42_Y26_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[93]~416_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[93]~548_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[93]~416_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[93]~548_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[93]~416_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[93]~548_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[93]~416_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[93]~548_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\);

-- Location: LCCOMB_X42_Y26_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[94]~415_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[94]~547_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[94]~415_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[94]~547_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\);

-- Location: LCCOMB_X42_Y26_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\);

-- Location: LCCOMB_X41_Y26_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[100]~422\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[100]~422_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[100]~422_combout\);

-- Location: LCCOMB_X41_Y26_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[100]~549\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[100]~549_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[93]~548_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[93]~548_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[100]~549_combout\);

-- Location: LCCOMB_X41_Y26_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[99]~550\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[99]~550_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[92]~593_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[92]~593_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[99]~550_combout\);

-- Location: LCCOMB_X41_Y26_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[99]~423\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[99]~423_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[99]~423_combout\);

-- Location: LCCOMB_X42_Y26_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[98]~594\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[98]~594_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & 
-- ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28_combout\))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~28_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[98]~594_combout\);

-- Location: LCCOMB_X42_Y26_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[98]~424\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[98]~424_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[98]~424_combout\);

-- Location: LCCOMB_X42_Y26_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[97]~426\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[97]~426_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[97]~426_combout\);

-- Location: LCCOMB_X41_Y26_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[97]~425\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[97]~425_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[97]~425_combout\);

-- Location: LCCOMB_X41_Y26_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[96]~428\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[96]~428_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[96]~428_combout\);

-- Location: LCCOMB_X42_Y26_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[96]~427\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[96]~427_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[96]~427_combout\);

-- Location: LCCOMB_X41_Y26_N0
\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[96]~428_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[96]~427_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[96]~428_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[96]~427_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[96]~428_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[96]~427_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\);

-- Location: LCCOMB_X41_Y26_N2
\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[97]~426_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[97]~425_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[97]~426_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[97]~425_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[97]~426_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[97]~425_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[97]~426_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[97]~425_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\);

-- Location: LCCOMB_X41_Y26_N4
\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[98]~594_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[98]~424_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[98]~594_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[98]~424_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[98]~594_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[98]~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[98]~594_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[98]~424_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\);

-- Location: LCCOMB_X41_Y26_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[99]~550_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[99]~423_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[99]~550_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[99]~423_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[99]~550_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[99]~423_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[99]~550_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[99]~423_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\);

-- Location: LCCOMB_X41_Y26_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[100]~422_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[100]~549_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[100]~422_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[100]~549_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\);

-- Location: LCCOMB_X41_Y26_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\);

-- Location: LCCOMB_X40_Y26_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[106]~551\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[106]~551_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[99]~550_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[99]~550_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[106]~551_combout\);

-- Location: LCCOMB_X40_Y26_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[106]~429\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[106]~429_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[106]~429_combout\);

-- Location: LCCOMB_X42_Y26_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[105]~552\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[105]~552_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[98]~594_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[98]~594_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[105]~552_combout\);

-- Location: LCCOMB_X41_Y26_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[105]~430\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[105]~430_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[105]~430_combout\);

-- Location: LCCOMB_X40_Y26_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[104]~431\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[104]~431_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[104]~431_combout\);

-- Location: LCCOMB_X40_Y26_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[104]~595\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[104]~595_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~26_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[104]~595_combout\);

-- Location: LCCOMB_X41_Y26_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[103]~433\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[103]~433_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[103]~433_combout\);

-- Location: LCCOMB_X40_Y26_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[103]~432\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[103]~432_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[103]~432_combout\);

-- Location: LCCOMB_X40_Y26_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[102]~435\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[102]~435_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[102]~435_combout\);

-- Location: LCCOMB_X40_Y26_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[102]~434\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[102]~434_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[102]~434_combout\);

-- Location: LCCOMB_X40_Y26_N0
\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[102]~435_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[102]~434_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[102]~435_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[102]~434_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[102]~435_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[102]~434_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\);

-- Location: LCCOMB_X40_Y26_N2
\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[103]~433_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[103]~432_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[103]~433_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[103]~432_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[103]~433_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[103]~432_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[103]~433_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[103]~432_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\);

-- Location: LCCOMB_X40_Y26_N4
\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[104]~431_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[104]~595_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[104]~431_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[104]~595_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[104]~431_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[104]~595_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[104]~431_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[104]~595_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\);

-- Location: LCCOMB_X40_Y26_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[105]~552_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[105]~430_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[105]~552_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[105]~430_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[105]~552_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[105]~430_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[105]~552_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[105]~430_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\);

-- Location: LCCOMB_X40_Y26_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[106]~551_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[106]~429_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[106]~551_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[106]~429_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~9_cout\);

-- Location: LCCOMB_X40_Y26_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\);

-- Location: LCCOMB_X40_Y26_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[112]~436\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[112]~436_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[112]~436_combout\);

-- Location: LCCOMB_X41_Y26_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[112]~553\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[112]~553_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[105]~552_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[105]~552_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[112]~553_combout\);

-- Location: LCCOMB_X40_Y26_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[111]~554\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[111]~554_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[104]~595_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[104]~595_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[111]~554_combout\);

-- Location: LCCOMB_X41_Y27_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[111]~437\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[111]~437_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[111]~437_combout\);

-- Location: LCCOMB_X40_Y26_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[110]~438\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[110]~438_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[110]~438_combout\);

-- Location: LCCOMB_X41_Y26_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[110]~596\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[110]~596_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~24_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[110]~596_combout\);

-- Location: LCCOMB_X41_Y27_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[109]~439\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[109]~439_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[109]~439_combout\);

-- Location: LCCOMB_X41_Y27_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[109]~440\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[109]~440_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[109]~440_combout\);

-- Location: LCCOMB_X41_Y27_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[108]~441\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[108]~441_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[108]~441_combout\);

-- Location: LCCOMB_X41_Y27_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[108]~442\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[108]~442_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[108]~442_combout\);

-- Location: LCCOMB_X41_Y27_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[108]~441_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[108]~442_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[108]~441_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[108]~442_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[108]~441_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[108]~442_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1\);

-- Location: LCCOMB_X41_Y27_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[109]~439_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[109]~440_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[109]~439_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[109]~440_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[109]~439_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[109]~440_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[109]~439_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[109]~440_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\);

-- Location: LCCOMB_X41_Y27_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[110]~438_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[110]~596_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[110]~438_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[110]~596_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[110]~438_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[110]~596_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[110]~438_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[110]~596_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\);

-- Location: LCCOMB_X41_Y27_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[111]~554_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[111]~437_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[111]~554_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[111]~437_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[111]~554_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[111]~437_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[111]~554_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[111]~437_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\);

-- Location: LCCOMB_X41_Y27_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[112]~436_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[112]~553_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[112]~436_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[112]~553_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\);

-- Location: LCCOMB_X41_Y27_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\);

-- Location: LCCOMB_X40_Y27_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[118]~555\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[118]~555_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[111]~554_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[111]~554_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[118]~555_combout\);

-- Location: LCCOMB_X40_Y27_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[118]~443\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[118]~443_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[118]~443_combout\);

-- Location: LCCOMB_X41_Y27_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[117]~444\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[117]~444_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[117]~444_combout\);

-- Location: LCCOMB_X40_Y27_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[117]~556\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[117]~556_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[110]~596_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[110]~596_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[117]~556_combout\);

-- Location: LCCOMB_X40_Y27_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[116]~597\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[116]~597_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~22_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[116]~597_combout\);

-- Location: LCCOMB_X41_Y27_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[116]~445\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[116]~445_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[116]~445_combout\);

-- Location: LCCOMB_X41_Y27_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[115]~447\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[115]~447_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[115]~447_combout\);

-- Location: LCCOMB_X41_Y27_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[115]~446\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[115]~446_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[115]~446_combout\);

-- Location: LCCOMB_X40_Y27_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[114]~448\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[114]~448_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[114]~448_combout\);

-- Location: LCCOMB_X41_Y27_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[114]~449\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[114]~449_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[114]~449_combout\);

-- Location: LCCOMB_X40_Y27_N0
\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[114]~448_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[114]~449_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[114]~448_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[114]~449_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[114]~448_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[114]~449_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~1\);

-- Location: LCCOMB_X40_Y27_N2
\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[115]~447_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[115]~446_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[115]~447_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[115]~446_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[115]~447_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[115]~446_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[115]~447_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[115]~446_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~3\);

-- Location: LCCOMB_X40_Y27_N4
\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[116]~597_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[116]~445_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[116]~597_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[116]~445_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[116]~597_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[116]~445_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[116]~597_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[116]~445_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~5\);

-- Location: LCCOMB_X40_Y27_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[117]~444_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[117]~556_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[117]~444_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[117]~556_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[117]~444_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[117]~556_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[117]~444_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[117]~556_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~7\);

-- Location: LCCOMB_X40_Y27_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[118]~555_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[118]~443_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[118]~555_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[118]~443_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~9_cout\);

-- Location: LCCOMB_X40_Y27_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\);

-- Location: LCCOMB_X39_Y27_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[124]~557\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[124]~557_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[117]~556_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[117]~556_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[124]~557_combout\);

-- Location: LCCOMB_X39_Y27_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[124]~450\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[124]~450_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[124]~450_combout\);

-- Location: LCCOMB_X39_Y27_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[123]~451\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[123]~451_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[123]~451_combout\);

-- Location: LCCOMB_X40_Y27_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[123]~558\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[123]~558_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[116]~597_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[116]~597_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[123]~558_combout\);

-- Location: LCCOMB_X40_Y27_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[122]~452\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[122]~452_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[122]~452_combout\);

-- Location: LCCOMB_X40_Y27_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[122]~598\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[122]~598_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~20_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[122]~598_combout\);

-- Location: LCCOMB_X40_Y27_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[121]~454\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[121]~454_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[121]~454_combout\);

-- Location: LCCOMB_X39_Y27_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[121]~453\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[121]~453_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[121]~453_combout\);

-- Location: LCCOMB_X39_Y27_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[120]~455\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[120]~455_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[120]~455_combout\);

-- Location: LCCOMB_X40_Y27_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[120]~456\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[120]~456_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[120]~456_combout\);

-- Location: LCCOMB_X39_Y27_N2
\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[120]~455_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[120]~456_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[120]~455_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[120]~456_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[120]~455_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[120]~456_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~1\);

-- Location: LCCOMB_X39_Y27_N4
\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[121]~454_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[121]~453_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[121]~454_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[121]~453_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[121]~454_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[121]~453_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[121]~454_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[121]~453_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~3\);

-- Location: LCCOMB_X39_Y27_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[122]~452_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[122]~598_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[122]~452_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[122]~598_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[122]~452_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[122]~598_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[122]~452_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[122]~598_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~5\);

-- Location: LCCOMB_X39_Y27_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[123]~451_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[123]~558_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[123]~451_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[123]~558_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[123]~451_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[123]~558_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[123]~451_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[123]~558_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~7\);

-- Location: LCCOMB_X39_Y27_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[124]~557_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[124]~450_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[124]~557_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[124]~450_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~9_cout\);

-- Location: LCCOMB_X39_Y27_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\);

-- Location: LCCOMB_X38_Y27_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[130]~559\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[130]~559_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[123]~558_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[123]~558_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[130]~559_combout\);

-- Location: LCCOMB_X39_Y27_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[130]~457\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[130]~457_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[130]~457_combout\);

-- Location: LCCOMB_X38_Y27_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[129]~458\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[129]~458_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[129]~458_combout\);

-- Location: LCCOMB_X38_Y27_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[129]~560\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[129]~560_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[122]~598_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[122]~598_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[129]~560_combout\);

-- Location: LCCOMB_X39_Y27_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[128]~459\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[128]~459_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[128]~459_combout\);

-- Location: LCCOMB_X38_Y27_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[128]~599\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[128]~599_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[128]~599_combout\);

-- Location: LCCOMB_X39_Y27_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[127]~460\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[127]~460_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[127]~460_combout\);

-- Location: LCCOMB_X39_Y27_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[127]~461\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[127]~461_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[127]~461_combout\);

-- Location: LCCOMB_X39_Y27_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[126]~463\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[126]~463_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[126]~463_combout\);

-- Location: LCCOMB_X42_Y27_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[126]~462\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[126]~462_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[126]~462_combout\);

-- Location: LCCOMB_X38_Y27_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[126]~463_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[126]~462_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[126]~463_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[126]~462_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[126]~463_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[126]~462_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~1\);

-- Location: LCCOMB_X38_Y27_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[127]~460_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[127]~461_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[127]~460_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[127]~461_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[127]~460_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[127]~461_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[127]~460_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[127]~461_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~3\);

-- Location: LCCOMB_X38_Y27_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[128]~459_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[128]~599_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[128]~459_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[128]~599_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[128]~459_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[128]~599_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[128]~459_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[128]~599_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~5\);

-- Location: LCCOMB_X38_Y27_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[129]~458_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[129]~560_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[129]~458_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[129]~560_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[129]~458_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[129]~560_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[129]~458_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[129]~560_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~7\);

-- Location: LCCOMB_X38_Y27_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[130]~559_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[130]~457_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[130]~559_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[130]~457_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~9_cout\);

-- Location: LCCOMB_X38_Y27_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\);

-- Location: LCCOMB_X38_Y27_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[136]~561\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[136]~561_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[129]~560_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[129]~560_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[136]~561_combout\);

-- Location: LCCOMB_X38_Y27_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[136]~464\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[136]~464_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[136]~464_combout\);

-- Location: LCCOMB_X38_Y27_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[135]~562\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[135]~562_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[128]~599_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[128]~599_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[135]~562_combout\);

-- Location: LCCOMB_X37_Y27_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[135]~465\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[135]~465_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[135]~465_combout\);

-- Location: LCCOMB_X38_Y27_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[134]~600\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[134]~600_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & 
-- ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16_combout\))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\,
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~16_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[134]~600_combout\);

-- Location: LCCOMB_X38_Y27_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[134]~466\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[134]~466_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[134]~466_combout\);

-- Location: LCCOMB_X36_Y27_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[133]~467\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[133]~467_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[133]~467_combout\);

-- Location: LCCOMB_X36_Y27_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[133]~468\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[133]~468_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[133]~468_combout\);

-- Location: LCCOMB_X36_Y27_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[132]~470\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[132]~470_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[132]~470_combout\);

-- Location: LCCOMB_X36_Y27_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[132]~469\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[132]~469_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[132]~469_combout\);

-- Location: LCCOMB_X37_Y27_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[132]~470_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[132]~469_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[132]~470_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[132]~469_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[132]~470_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[132]~469_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~1\);

-- Location: LCCOMB_X37_Y27_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[133]~467_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[133]~468_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[133]~467_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[133]~468_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[133]~467_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[133]~468_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[133]~467_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[133]~468_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~3\);

-- Location: LCCOMB_X37_Y27_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[134]~600_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[134]~466_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[134]~600_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[134]~466_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[134]~600_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[134]~466_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[134]~600_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[134]~466_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~5\);

-- Location: LCCOMB_X37_Y27_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[135]~562_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[135]~465_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[135]~562_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[135]~465_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[135]~562_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[135]~465_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[135]~562_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[135]~465_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[4]~7\);

-- Location: LCCOMB_X37_Y27_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[136]~561_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[136]~464_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[136]~561_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[136]~464_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[5]~9_cout\);

-- Location: LCCOMB_X37_Y27_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\);

-- Location: LCCOMB_X37_Y27_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[142]~563\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[142]~563_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[135]~562_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[135]~562_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[142]~563_combout\);

-- Location: LCCOMB_X37_Y27_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[142]~471\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[142]~471_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[142]~471_combout\);

-- Location: LCCOMB_X38_Y27_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[141]~564\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[141]~564_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[134]~600_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[134]~600_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[141]~564_combout\);

-- Location: LCCOMB_X37_Y27_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[141]~472\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[141]~472_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[141]~472_combout\);

-- Location: LCCOMB_X36_Y27_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[140]~473\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[140]~473_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[140]~473_combout\);

-- Location: LCCOMB_X37_Y24_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[140]~601\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[140]~601_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~14_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[140]~601_combout\);

-- Location: LCCOMB_X36_Y27_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[139]~474\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[139]~474_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[139]~474_combout\);

-- Location: LCCOMB_X36_Y27_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[139]~475\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[139]~475_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[139]~475_combout\);

-- Location: LCCOMB_X36_Y27_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[138]~476\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[138]~476_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[138]~476_combout\);

-- Location: LCCOMB_X36_Y27_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[138]~477\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[138]~477_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[138]~477_combout\);

-- Location: LCCOMB_X37_Y27_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[138]~476_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[138]~477_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[138]~476_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[138]~477_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[138]~476_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[138]~477_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~1\);

-- Location: LCCOMB_X37_Y27_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[139]~474_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[139]~475_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[139]~474_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[139]~475_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[139]~474_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[139]~475_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[139]~474_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[139]~475_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~3\);

-- Location: LCCOMB_X37_Y27_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[140]~473_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[140]~601_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[140]~473_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[140]~601_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[140]~473_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[140]~601_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[140]~473_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[140]~601_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~5\);

-- Location: LCCOMB_X37_Y27_N26
\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[141]~564_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[141]~472_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[141]~564_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[141]~472_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[141]~564_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[141]~472_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[141]~564_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[141]~472_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[4]~7\);

-- Location: LCCOMB_X37_Y27_N28
\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[142]~563_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[142]~471_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[142]~563_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[142]~471_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[5]~9_cout\);

-- Location: LCCOMB_X37_Y27_N30
\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\);

-- Location: LCCOMB_X37_Y24_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[148]~565\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[148]~565_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[141]~564_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[141]~564_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[148]~565_combout\);

-- Location: LCCOMB_X37_Y24_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[148]~478\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[148]~478_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[148]~478_combout\);

-- Location: LCCOMB_X38_Y24_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[147]~479\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[147]~479_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[147]~479_combout\);

-- Location: LCCOMB_X37_Y24_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[147]~566\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[147]~566_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[140]~601_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[140]~601_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[147]~566_combout\);

-- Location: LCCOMB_X37_Y24_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[146]~602\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[146]~602_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[146]~602_combout\);

-- Location: LCCOMB_X37_Y24_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[146]~480\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[146]~480_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[146]~480_combout\);

-- Location: LCCOMB_X37_Y24_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[145]~482\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[145]~482_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[145]~482_combout\);

-- Location: LCCOMB_X37_Y24_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[145]~481\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[145]~481_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[145]~481_combout\);

-- Location: LCCOMB_X37_Y24_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[144]~484\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[144]~484_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[144]~484_combout\);

-- Location: LCCOMB_X37_Y24_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[144]~483\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[144]~483_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[144]~483_combout\);

-- Location: LCCOMB_X37_Y24_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[144]~484_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[144]~483_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[144]~484_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[144]~483_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[144]~484_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[144]~483_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\);

-- Location: LCCOMB_X37_Y24_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[145]~482_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[145]~481_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[145]~482_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[145]~481_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[145]~482_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[145]~481_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[145]~482_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[145]~481_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\);

-- Location: LCCOMB_X37_Y24_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[146]~602_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[146]~480_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[146]~602_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[146]~480_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[146]~602_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[146]~480_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[146]~602_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[146]~480_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\);

-- Location: LCCOMB_X37_Y24_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[147]~479_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[147]~566_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[147]~479_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[147]~566_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[147]~479_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[147]~566_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[147]~479_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[147]~566_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7\);

-- Location: LCCOMB_X37_Y24_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[148]~565_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[148]~478_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[148]~565_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[148]~478_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~9_cout\);

-- Location: LCCOMB_X37_Y24_N26
\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\);

-- Location: LCCOMB_X36_Y24_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[154]~567\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[154]~567_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[147]~566_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[147]~566_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[154]~567_combout\);

-- Location: LCCOMB_X36_Y24_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[154]~485\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[154]~485_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[154]~485_combout\);

-- Location: LCCOMB_X36_Y24_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[153]~486\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[153]~486_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[153]~486_combout\);

-- Location: LCCOMB_X36_Y24_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[153]~568\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[153]~568_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[146]~602_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[146]~602_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[153]~568_combout\);

-- Location: LCCOMB_X36_Y24_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[152]~603\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[152]~603_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[152]~603_combout\);

-- Location: LCCOMB_X38_Y24_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[152]~487\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[152]~487_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[152]~487_combout\);

-- Location: LCCOMB_X38_Y24_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[151]~488\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[151]~488_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[151]~488_combout\);

-- Location: LCCOMB_X36_Y24_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[151]~489\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[151]~489_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[151]~489_combout\);

-- Location: LCCOMB_X36_Y24_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[150]~491\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[150]~491_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[150]~491_combout\);

-- Location: LCCOMB_X36_Y24_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[150]~490\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[150]~490_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[150]~490_combout\);

-- Location: LCCOMB_X36_Y24_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[150]~491_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[150]~490_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[150]~491_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[150]~490_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[150]~491_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[150]~490_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\);

-- Location: LCCOMB_X36_Y24_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[151]~488_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[151]~489_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[151]~488_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[151]~489_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[151]~488_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[151]~489_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[151]~488_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[151]~489_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\);

-- Location: LCCOMB_X36_Y24_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[152]~603_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[152]~487_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[152]~603_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[152]~487_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[152]~603_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[152]~487_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[152]~603_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[152]~487_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\);

-- Location: LCCOMB_X36_Y24_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[153]~486_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[153]~568_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[153]~486_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[153]~568_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[153]~486_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[153]~568_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[153]~486_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[153]~568_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\);

-- Location: LCCOMB_X36_Y24_N26
\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[154]~567_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[154]~485_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[154]~567_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[154]~485_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\);

-- Location: LCCOMB_X36_Y24_N28
\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\);

-- Location: LCCOMB_X35_Y24_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[160]~569\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[160]~569_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[153]~568_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[153]~568_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[160]~569_combout\);

-- Location: LCCOMB_X35_Y24_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[160]~492\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[160]~492_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[160]~492_combout\);

-- Location: LCCOMB_X35_Y24_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[159]~493\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[159]~493_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[159]~493_combout\);

-- Location: LCCOMB_X35_Y24_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[159]~570\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[159]~570_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[152]~603_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[152]~603_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[159]~570_combout\);

-- Location: LCCOMB_X35_Y24_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[158]~604\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[158]~604_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & 
-- ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8_combout\))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~8_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[158]~604_combout\);

-- Location: LCCOMB_X35_Y24_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[158]~494\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[158]~494_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[158]~494_combout\);

-- Location: LCCOMB_X36_Y24_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[157]~495\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[157]~495_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[157]~495_combout\);

-- Location: LCCOMB_X36_Y24_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[157]~496\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[157]~496_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[157]~496_combout\);

-- Location: LCCOMB_X35_Y24_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[156]~497\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[156]~497_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[156]~497_combout\);

-- Location: LCCOMB_X35_Y24_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[156]~498\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[156]~498_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[156]~498_combout\);

-- Location: LCCOMB_X35_Y24_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[156]~497_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[156]~498_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[156]~497_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[156]~498_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[156]~497_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[156]~498_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\);

-- Location: LCCOMB_X35_Y24_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[157]~495_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[157]~496_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[157]~495_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[157]~496_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[157]~495_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[157]~496_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[157]~495_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[157]~496_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\);

-- Location: LCCOMB_X35_Y24_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[158]~604_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[158]~494_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[158]~604_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[158]~494_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[158]~604_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[158]~494_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[158]~604_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[158]~494_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\);

-- Location: LCCOMB_X35_Y24_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[159]~493_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[159]~570_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[159]~493_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[159]~570_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[159]~493_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[159]~570_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[159]~493_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[159]~570_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\);

-- Location: LCCOMB_X35_Y24_N26
\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[160]~569_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[160]~492_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[160]~569_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[160]~492_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\);

-- Location: LCCOMB_X35_Y24_N28
\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\);

-- Location: LCCOMB_X36_Y26_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[166]~571\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[166]~571_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[159]~570_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[159]~570_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[166]~571_combout\);

-- Location: LCCOMB_X36_Y26_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[166]~499\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[166]~499_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[166]~499_combout\);

-- Location: LCCOMB_X35_Y24_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[165]~572\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[165]~572_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[158]~604_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[158]~604_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[165]~572_combout\);

-- Location: LCCOMB_X35_Y24_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[165]~500\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[165]~500_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[165]~500_combout\);

-- Location: LCCOMB_X36_Y26_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[164]~501\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[164]~501_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[164]~501_combout\);

-- Location: LCCOMB_X36_Y26_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[164]~605\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[164]~605_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~6_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[164]~605_combout\);

-- Location: LCCOMB_X36_Y26_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[163]~503\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[163]~503_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[163]~503_combout\);

-- Location: LCCOMB_X36_Y26_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[163]~502\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[163]~502_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[163]~502_combout\);

-- Location: LCCOMB_X34_Y26_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[162]~505\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[162]~505_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[162]~505_combout\);

-- Location: LCCOMB_X37_Y26_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[162]~504\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[162]~504_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[162]~504_combout\);

-- Location: LCCOMB_X36_Y26_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[162]~505_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[162]~504_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[162]~505_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[162]~504_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[162]~505_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[162]~504_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\);

-- Location: LCCOMB_X36_Y26_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[163]~503_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[163]~502_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[163]~503_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[163]~502_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[163]~503_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[163]~502_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[163]~503_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[163]~502_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\);

-- Location: LCCOMB_X36_Y26_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[164]~501_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[164]~605_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[164]~501_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[164]~605_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[164]~501_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[164]~605_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[164]~501_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[164]~605_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\);

-- Location: LCCOMB_X36_Y26_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[165]~572_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[165]~500_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[165]~572_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[165]~500_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[165]~572_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[165]~500_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[165]~572_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[165]~500_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\);

-- Location: LCCOMB_X36_Y26_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[166]~571_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[166]~499_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[166]~571_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[166]~499_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\);

-- Location: LCCOMB_X36_Y26_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\);

-- Location: LCCOMB_X35_Y26_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[172]~573\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[172]~573_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[165]~572_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[165]~572_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[172]~573_combout\);

-- Location: LCCOMB_X35_Y26_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[172]~506\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[172]~506_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[172]~506_combout\);

-- Location: LCCOMB_X35_Y26_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[171]~507\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[171]~507_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[171]~507_combout\);

-- Location: LCCOMB_X35_Y26_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[171]~574\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[171]~574_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[164]~605_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[164]~605_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[171]~574_combout\);

-- Location: LCCOMB_X36_Y26_N4
\res_img|Div0|auto_generated|divider|divider|StageOut[170]~508\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[170]~508_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[170]~508_combout\);

-- Location: LCCOMB_X36_Y26_N18
\res_img|Div0|auto_generated|divider|divider|StageOut[170]~606\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[170]~606_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & 
-- ((\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[170]~606_combout\);

-- Location: LCCOMB_X35_Y26_N12
\res_img|Div0|auto_generated|divider|divider|StageOut[169]~510\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[169]~510_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[169]~510_combout\);

-- Location: LCCOMB_X34_Y26_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[169]~509\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[169]~509_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[169]~509_combout\);

-- Location: LCCOMB_X34_Y26_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[168]~511\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[168]~511_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & (\res_img|int_res\(3) $ (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ 
-- (!\res_img|int_res\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(3),
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[168]~511_combout\);

-- Location: LCCOMB_X36_Y26_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[168]~512\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[168]~512_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ (\res_img|int_res\(3) $ 
-- (!\res_img|int_res\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datab => \res_img|int_res\(3),
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[168]~512_combout\);

-- Location: LCCOMB_X35_Y26_N16
\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[168]~511_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[168]~512_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[168]~511_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[168]~512_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[168]~511_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[168]~512_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X35_Y26_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[169]~510_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[169]~509_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[169]~510_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[169]~509_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[169]~510_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[169]~509_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[169]~510_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[169]~509_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X35_Y26_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[170]~508_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[170]~606_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[170]~508_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[170]~606_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[170]~508_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[170]~606_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[170]~508_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[170]~606_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X35_Y26_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[171]~507_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[171]~574_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[171]~507_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[171]~574_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[171]~507_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[171]~574_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[171]~507_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[171]~574_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\);

-- Location: LCCOMB_X35_Y26_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[172]~573_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[172]~506_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[172]~573_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[172]~506_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\);

-- Location: LCCOMB_X35_Y26_N26
\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\);

-- Location: LCCOMB_X31_Y26_N30
\res_img|Div0|auto_generated|divider|divider|StageOut[178]~575\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[178]~575_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[171]~574_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[171]~574_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[178]~575_combout\);

-- Location: LCCOMB_X35_Y26_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[178]~513\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[178]~513_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[178]~513_combout\);

-- Location: LCCOMB_X36_Y26_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[177]~576\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[177]~576_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[170]~606_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|StageOut[170]~606_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[177]~576_combout\);

-- Location: LCCOMB_X35_Y26_N8
\res_img|Div0|auto_generated|divider|divider|StageOut[177]~514\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[177]~514_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[177]~514_combout\);

-- Location: LCCOMB_X35_Y26_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[176]~515\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[176]~515_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[176]~515_combout\);

-- Location: LCCOMB_X34_Y26_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[176]~607\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[176]~607_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & 
-- (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\)) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[4]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[176]~607_combout\);

-- Location: LCCOMB_X35_Y26_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[175]~517\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[175]~517_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[175]~517_combout\);

-- Location: LCCOMB_X34_Y26_N10
\res_img|Div0|auto_generated|divider|divider|StageOut[175]~516\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[175]~516_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\res_img|int_res\(3) $ (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ 
-- (!\res_img|int_res\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(3),
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[175]~516_combout\);

-- Location: LCCOMB_X30_Y26_N4
\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~58_combout\ = \res_img|int_res\(2) $ (((!\res_img|int_res\(31) & ((\res_img|int_res\(1)) # (!\res_img|int_res\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(0),
	datab => \res_img|int_res\(31),
	datac => \res_img|int_res\(2),
	datad => \res_img|int_res\(1),
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~58_combout\);

-- Location: LCCOMB_X30_Y26_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[174]~519\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[174]~519_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~58_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~58_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[174]~519_combout\);

-- Location: LCCOMB_X30_Y26_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[174]~518\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[174]~518_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~58_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~58_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[174]~518_combout\);

-- Location: LCCOMB_X31_Y26_N18
\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\res_img|Div0|auto_generated|divider|divider|StageOut[174]~519_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[174]~518_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[174]~519_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[174]~518_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[174]~519_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[174]~518_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X31_Y26_N20
\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[175]~517_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[175]~516_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[175]~517_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[175]~516_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[175]~517_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[175]~516_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[175]~517_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[175]~516_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X31_Y26_N22
\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[176]~515_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[176]~607_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\res_img|Div0|auto_generated|divider|divider|StageOut[176]~515_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[176]~607_combout\)))))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[176]~515_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[176]~607_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[176]~515_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[176]~607_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X31_Y26_N24
\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (((\res_img|Div0|auto_generated|divider|divider|StageOut[177]~576_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[177]~514_combout\)))) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[177]~576_combout\ & 
-- (!\res_img|Div0|auto_generated|divider|divider|StageOut[177]~514_combout\)))
-- \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[177]~576_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[177]~514_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[177]~576_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[177]~514_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\);

-- Location: LCCOMB_X31_Y26_N26
\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[178]~575_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[178]~513_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[178]~575_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[178]~513_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\);

-- Location: LCCOMB_X31_Y26_N28
\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\);

-- Location: LCCOMB_X31_Y26_N0
\res_img|Div0|auto_generated|divider|divider|StageOut[184]~520\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[184]~520_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[184]~520_combout\);

-- Location: LCCOMB_X35_Y26_N6
\res_img|Div0|auto_generated|divider|divider|StageOut[184]~577\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[184]~577_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[177]~576_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[177]~576_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[184]~577_combout\);

-- Location: LCCOMB_X34_Y26_N22
\res_img|Div0|auto_generated|divider|divider|StageOut[183]~578\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[183]~578_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[176]~607_combout\) # 
-- ((\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|StageOut[176]~607_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[183]~578_combout\);

-- Location: LCCOMB_X31_Y26_N2
\res_img|Div0|auto_generated|divider|divider|StageOut[183]~521\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[183]~521_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[183]~521_combout\);

-- Location: LCCOMB_X34_Y26_N20
\res_img|Div0|auto_generated|divider|divider|StageOut[182]~579\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[182]~579_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[175]~516_combout\) # 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[175]~516_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[182]~579_combout\);

-- Location: LCCOMB_X31_Y26_N16
\res_img|Div0|auto_generated|divider|divider|StageOut[182]~522\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[182]~522_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[182]~522_combout\);

-- Location: LCCOMB_X30_Y26_N26
\res_img|Div0|auto_generated|divider|divider|StageOut[181]~523\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[181]~523_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~58_combout\ & \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|my_abs_num|cs2a[2]~58_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[181]~523_combout\);

-- Location: LCCOMB_X30_Y26_N24
\res_img|Div0|auto_generated|divider|divider|StageOut[181]~524\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[181]~524_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[181]~524_combout\);

-- Location: LCCOMB_X30_Y26_N14
\res_img|Div0|auto_generated|divider|divider|StageOut[180]~525\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[180]~525_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & (\res_img|int_res\(1) $ (((!\res_img|int_res\(0) & !\res_img|int_res\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(0),
	datab => \res_img|int_res\(1),
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[180]~525_combout\);

-- Location: LCCOMB_X30_Y26_N28
\res_img|Div0|auto_generated|divider|divider|StageOut[180]~526\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|StageOut[180]~526_combout\ = (!\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & (\res_img|int_res\(1) $ (((!\res_img|int_res\(0) & !\res_img|int_res\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(0),
	datab => \res_img|int_res\(1),
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|divider|StageOut[180]~526_combout\);

-- Location: LCCOMB_X31_Y26_N4
\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[180]~525_combout\) # (\res_img|Div0|auto_generated|divider|divider|StageOut[180]~526_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[180]~525_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[180]~526_combout\,
	datad => VCC,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X31_Y26_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[181]~523_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[181]~524_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[181]~523_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[181]~524_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X31_Y26_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & ((\res_img|Div0|auto_generated|divider|divider|StageOut[182]~579_combout\) # 
-- (\res_img|Div0|auto_generated|divider|divider|StageOut[182]~522_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[182]~579_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[182]~522_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X31_Y26_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\res_img|Div0|auto_generated|divider|divider|StageOut[183]~578_combout\ & (!\res_img|Div0|auto_generated|divider|divider|StageOut[183]~521_combout\ & 
-- !\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[183]~578_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[183]~521_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X31_Y26_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY((\res_img|Div0|auto_generated|divider|divider|StageOut[184]~520_combout\) # ((\res_img|Div0|auto_generated|divider|divider|StageOut[184]~577_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|StageOut[184]~520_combout\,
	datab => \res_img|Div0|auto_generated|divider|divider|StageOut[184]~577_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X31_Y26_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = !\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\);

-- Location: LCCOMB_X32_Y26_N2
\res_img|Div0|auto_generated|divider|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~0_combout\ = \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ $ (VCC)
-- \res_img|Div0|auto_generated|divider|op_1~1\ = CARRY(\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X32_Y26_N4
\res_img|Div0|auto_generated|divider|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~2_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~1\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~1\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~3\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~1\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~1\,
	combout => \res_img|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X32_Y26_N6
\res_img|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~4_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~3\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~3\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~5\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~3\,
	combout => \res_img|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X32_Y26_N8
\res_img|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~6_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~5\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~5\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~7\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~5\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~5\,
	combout => \res_img|Div0|auto_generated|divider|op_1~6_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X32_Y26_N10
\res_img|Div0|auto_generated|divider|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~8_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~7\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~7\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~9\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~7\,
	combout => \res_img|Div0|auto_generated|divider|op_1~8_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X32_Y26_N12
\res_img|Div0|auto_generated|divider|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~10_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~9\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~9\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~11\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~9\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~9\,
	combout => \res_img|Div0|auto_generated|divider|op_1~10_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X32_Y26_N14
\res_img|Div0|auto_generated|divider|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~12_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~11\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~11\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~13\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~11\,
	combout => \res_img|Div0|auto_generated|divider|op_1~12_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~13\);

-- Location: LCCOMB_X32_Y26_N16
\res_img|Div0|auto_generated|divider|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~14_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~13\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~13\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~15\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~13\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~13\,
	combout => \res_img|Div0|auto_generated|divider|op_1~14_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~15\);

-- Location: LCCOMB_X32_Y26_N18
\res_img|Div0|auto_generated|divider|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~16_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~15\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~15\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~17\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~15\,
	combout => \res_img|Div0|auto_generated|divider|op_1~16_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~17\);

-- Location: LCCOMB_X32_Y26_N20
\res_img|Div0|auto_generated|divider|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~18_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~17\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~17\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~19\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~17\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~17\,
	combout => \res_img|Div0|auto_generated|divider|op_1~18_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~19\);

-- Location: LCCOMB_X32_Y26_N22
\res_img|Div0|auto_generated|divider|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~20_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~19\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~19\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~21\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~19\,
	combout => \res_img|Div0|auto_generated|divider|op_1~20_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~21\);

-- Location: LCCOMB_X32_Y26_N24
\res_img|Div0|auto_generated|divider|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~22_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~21\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~21\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~23\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~21\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~21\,
	combout => \res_img|Div0|auto_generated|divider|op_1~22_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~23\);

-- Location: LCCOMB_X32_Y26_N26
\res_img|Div0|auto_generated|divider|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~24_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~23\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~23\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~25\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~23\,
	combout => \res_img|Div0|auto_generated|divider|op_1~24_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~25\);

-- Location: LCCOMB_X32_Y26_N28
\res_img|Div0|auto_generated|divider|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~26_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~25\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~25\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~27\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~25\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~25\,
	combout => \res_img|Div0|auto_generated|divider|op_1~26_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~27\);

-- Location: LCCOMB_X32_Y26_N30
\res_img|Div0|auto_generated|divider|op_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~28_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~27\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~27\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~29\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~27\,
	combout => \res_img|Div0|auto_generated|divider|op_1~28_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~29\);

-- Location: LCCOMB_X32_Y25_N0
\res_img|Div0|auto_generated|divider|op_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~30_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~29\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~29\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~31\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~29\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~29\,
	combout => \res_img|Div0|auto_generated|divider|op_1~30_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~31\);

-- Location: LCCOMB_X32_Y25_N2
\res_img|Div0|auto_generated|divider|op_1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~32_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~31\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~31\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~33\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~31\,
	combout => \res_img|Div0|auto_generated|divider|op_1~32_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~33\);

-- Location: LCCOMB_X32_Y25_N4
\res_img|Div0|auto_generated|divider|op_1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~34_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~33\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~33\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~35\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~33\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~33\,
	combout => \res_img|Div0|auto_generated|divider|op_1~34_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~35\);

-- Location: LCCOMB_X32_Y25_N6
\res_img|Div0|auto_generated|divider|op_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~36_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~35\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~35\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~37\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~35\,
	combout => \res_img|Div0|auto_generated|divider|op_1~36_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~37\);

-- Location: LCCOMB_X32_Y25_N8
\res_img|Div0|auto_generated|divider|op_1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~38_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~37\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~37\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~39\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~37\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~37\,
	combout => \res_img|Div0|auto_generated|divider|op_1~38_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~39\);

-- Location: LCCOMB_X32_Y25_N10
\res_img|Div0|auto_generated|divider|op_1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~40_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~39\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~39\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~41\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~39\,
	combout => \res_img|Div0|auto_generated|divider|op_1~40_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~41\);

-- Location: LCCOMB_X32_Y25_N12
\res_img|Div0|auto_generated|divider|op_1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~42_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~41\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~41\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~43\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~41\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~41\,
	combout => \res_img|Div0|auto_generated|divider|op_1~42_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~43\);

-- Location: LCCOMB_X32_Y25_N14
\res_img|Div0|auto_generated|divider|op_1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~44_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~43\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~43\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~45\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~43\,
	combout => \res_img|Div0|auto_generated|divider|op_1~44_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~45\);

-- Location: LCCOMB_X31_Y25_N6
\res_img|Div0|auto_generated|divider|quotient[22]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[22]~22_combout\ = (\res_img|int_res\(31) & ((!\res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))) # (!\res_img|int_res\(31) & 
-- (\res_img|Div0|auto_generated|divider|op_1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|op_1~44_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[22]~22_combout\);

-- Location: LCCOMB_X32_Y25_N16
\res_img|Div0|auto_generated|divider|op_1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~46_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~45\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~45\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~47\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~45\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~45\,
	combout => \res_img|Div0|auto_generated|divider|op_1~46_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~47\);

-- Location: LCCOMB_X31_Y25_N20
\res_img|Div0|auto_generated|divider|quotient[23]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[23]~23_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~46_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[23]~23_combout\);

-- Location: LCCOMB_X31_Y25_N8
\res_img|Div0|auto_generated|divider|quotient[21]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[21]~21_combout\ = (\res_img|int_res\(31) & ((!\res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))) # (!\res_img|int_res\(31) & 
-- (\res_img|Div0|auto_generated|divider|op_1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|op_1~42_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[21]~21_combout\);

-- Location: LCCOMB_X32_Y25_N18
\res_img|Div0|auto_generated|divider|op_1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~48_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~47\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~47\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~49\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~47\,
	combout => \res_img|Div0|auto_generated|divider|op_1~48_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~49\);

-- Location: LCCOMB_X31_Y25_N18
\res_img|Div0|auto_generated|divider|quotient[24]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[24]~24_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~48_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[24]~24_combout\);

-- Location: LCCOMB_X31_Y25_N30
\res_img|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~0_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[22]~22_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[23]~23_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[21]~21_combout\ & 
-- !\res_img|Div0|auto_generated|divider|quotient[24]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[22]~22_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[23]~23_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[21]~21_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[24]~24_combout\,
	combout => \res_img|Equal4~0_combout\);

-- Location: LCCOMB_X34_Y26_N8
\res_img|Div0|auto_generated|divider|quotient[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[4]~4_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~8_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[4]~4_combout\);

-- Location: LCCOMB_X32_Y27_N10
\res_img|Div0|auto_generated|divider|quotient[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[5]~5_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[5]~5_combout\);

-- Location: LCCOMB_X32_Y27_N4
\res_img|Div0|auto_generated|divider|quotient[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[6]~6_combout\ = (\res_img|int_res\(31) & ((!\res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\))) # (!\res_img|int_res\(31) & 
-- (\res_img|Div0|auto_generated|divider|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|op_1~12_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[6]~6_combout\);

-- Location: LCCOMB_X32_Y27_N8
\res_img|Div0|auto_generated|divider|quotient[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[8]~8_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~16_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[8]~8_combout\);

-- Location: LCCOMB_X32_Y27_N2
\res_img|Div0|auto_generated|divider|quotient[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[7]~7_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~14_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[7]~7_combout\);

-- Location: LCCOMB_X32_Y27_N18
\res_img|Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~5_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[5]~5_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[6]~6_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[8]~8_combout\ & 
-- !\res_img|Div0|auto_generated|divider|quotient[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[5]~5_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[6]~6_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[8]~8_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[7]~7_combout\,
	combout => \res_img|Equal4~5_combout\);

-- Location: LCCOMB_X32_Y24_N10
\res_img|Div0|auto_generated|divider|quotient[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[12]~12_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~24_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[12]~12_combout\);

-- Location: LCCOMB_X32_Y24_N24
\res_img|Div0|auto_generated|divider|quotient[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[10]~10_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|op_1~20_combout\,
	datad => \res_img|int_res\(31),
	combout => \res_img|Div0|auto_generated|divider|quotient[10]~10_combout\);

-- Location: LCCOMB_X32_Y24_N6
\res_img|Div0|auto_generated|divider|quotient[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[9]~9_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~18_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[9]~9_combout\);

-- Location: LCCOMB_X34_Y26_N18
\res_img|Div0|auto_generated|divider|quotient[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[11]~11_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|op_1~22_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[11]~11_combout\);

-- Location: LCCOMB_X32_Y24_N16
\res_img|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~4_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[12]~12_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[10]~10_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[9]~9_combout\ & 
-- !\res_img|Div0|auto_generated|divider|quotient[11]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[12]~12_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[10]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[9]~9_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[11]~11_combout\,
	combout => \res_img|Equal4~4_combout\);

-- Location: LCCOMB_X32_Y24_N18
\res_img|Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~6_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[4]~4_combout\ & (\res_img|Equal4~5_combout\ & \res_img|Equal4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[4]~4_combout\,
	datac => \res_img|Equal4~5_combout\,
	datad => \res_img|Equal4~4_combout\,
	combout => \res_img|Equal4~6_combout\);

-- Location: LCCOMB_X34_Y25_N26
\res_img|Div0|auto_generated|divider|quotient[20]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[20]~20_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~40_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[20]~20_combout\);

-- Location: LCCOMB_X34_Y25_N4
\res_img|Div0|auto_generated|divider|quotient[19]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[19]~19_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~38_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[19]~19_combout\);

-- Location: LCCOMB_X34_Y25_N30
\res_img|Div0|auto_generated|divider|quotient[14]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[14]~14_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datab => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|op_1~28_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[14]~14_combout\);

-- Location: LCCOMB_X34_Y25_N20
\res_img|Div0|auto_generated|divider|quotient[15]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[15]~15_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|op_1~30_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[15]~15_combout\);

-- Location: LCCOMB_X34_Y25_N14
\res_img|Div0|auto_generated|divider|quotient[16]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[16]~16_combout\ = (\res_img|int_res\(31) & ((!\res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\))) # (!\res_img|int_res\(31) & 
-- (\res_img|Div0|auto_generated|divider|op_1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|op_1~32_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[16]~16_combout\);

-- Location: LCCOMB_X34_Y25_N16
\res_img|Div0|auto_generated|divider|quotient[13]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[13]~13_combout\ = (\res_img|int_res\(31) & ((!\res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\))) # (!\res_img|int_res\(31) & 
-- (\res_img|Div0|auto_generated|divider|op_1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|op_1~26_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[13]~13_combout\);

-- Location: LCCOMB_X34_Y25_N22
\res_img|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~2_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[14]~14_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[15]~15_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[16]~16_combout\ & 
-- !\res_img|Div0|auto_generated|divider|quotient[13]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[14]~14_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[15]~15_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[16]~16_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[13]~13_combout\,
	combout => \res_img|Equal4~2_combout\);

-- Location: LCCOMB_X34_Y25_N12
\res_img|Div0|auto_generated|divider|quotient[17]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[17]~17_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|op_1~34_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[17]~17_combout\);

-- Location: LCCOMB_X34_Y25_N0
\res_img|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~1_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[17]~17_combout\ & ((\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((!\res_img|Div0|auto_generated|divider|op_1~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|op_1~36_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[17]~17_combout\,
	combout => \res_img|Equal4~1_combout\);

-- Location: LCCOMB_X34_Y25_N8
\res_img|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~3_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[20]~20_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[19]~19_combout\ & (\res_img|Equal4~2_combout\ & \res_img|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[20]~20_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[19]~19_combout\,
	datac => \res_img|Equal4~2_combout\,
	datad => \res_img|Equal4~1_combout\,
	combout => \res_img|Equal4~3_combout\);

-- Location: LCCOMB_X32_Y24_N4
\res_img|Div0|auto_generated|divider|quotient[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~6_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[3]~0_combout\);

-- Location: LCCOMB_X25_Y22_N30
\res_img|process_1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~17_combout\ = (!\res_img|v_count\(4) & (((!\res_img|v_count\(2)) # (!\res_img|v_count\(3))) # (!\res_img|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(1),
	datab => \res_img|v_count\(3),
	datac => \res_img|v_count\(2),
	datad => \res_img|v_count\(4),
	combout => \res_img|process_1~17_combout\);

-- Location: LCCOMB_X29_Y24_N2
\res_img|process_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~18_combout\ = (\res_img|LessThan25~0_combout\) # ((\res_img|process_1~17_combout\) # ((!\res_img|v_count\(5)) # (!\res_img|process_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan25~0_combout\,
	datab => \res_img|process_1~17_combout\,
	datac => \res_img|process_1~12_combout\,
	datad => \res_img|v_count\(5),
	combout => \res_img|process_1~18_combout\);

-- Location: LCCOMB_X32_Y24_N22
\res_img|Div0|auto_generated|divider|quotient[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[2]~1_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[2]~1_combout\);

-- Location: LCCOMB_X32_Y26_N0
\res_img|Div0|auto_generated|divider|quotient[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[1]~2_combout\ = (\res_img|int_res\(31) & ((!\res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\))) # (!\res_img|int_res\(31) & 
-- (\res_img|Div0|auto_generated|divider|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|op_1~2_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[1]~2_combout\);

-- Location: LCCOMB_X31_Y24_N16
\res_img|rgb2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~22_combout\ = (\res_img|process_1~18_combout\) # ((\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\) # (\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|process_1~18_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[2]~1_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[1]~2_combout\,
	combout => \res_img|rgb2~22_combout\);

-- Location: LCCOMB_X32_Y25_N20
\res_img|Div0|auto_generated|divider|op_1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~50_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~49\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~49\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~51\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~49\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~49\,
	combout => \res_img|Div0|auto_generated|divider|op_1~50_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~51\);

-- Location: LCCOMB_X32_Y25_N22
\res_img|Div0|auto_generated|divider|op_1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~52_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\res_img|Div0|auto_generated|divider|op_1~51\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~51\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~53\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\res_img|Div0|auto_generated|divider|op_1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~51\,
	combout => \res_img|Div0|auto_generated|divider|op_1~52_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~53\);

-- Location: LCCOMB_X32_Y25_N24
\res_img|Div0|auto_generated|divider|op_1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~54_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~53\)) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\res_img|Div0|auto_generated|divider|op_1~53\) # (GND)))
-- \res_img|Div0|auto_generated|divider|op_1~55\ = CARRY((!\res_img|Div0|auto_generated|divider|op_1~53\) # (!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~53\,
	combout => \res_img|Div0|auto_generated|divider|op_1~54_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~55\);

-- Location: LCCOMB_X32_Y25_N26
\res_img|Div0|auto_generated|divider|op_1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~56_combout\ = (\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\res_img|Div0|auto_generated|divider|op_1~55\ $ (GND))) # 
-- (!\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~55\ & VCC))
-- \res_img|Div0|auto_generated|divider|op_1~57\ = CARRY((\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\res_img|Div0|auto_generated|divider|op_1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~55\,
	combout => \res_img|Div0|auto_generated|divider|op_1~56_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~57\);

-- Location: LCCOMB_X32_Y25_N28
\res_img|Div0|auto_generated|divider|op_1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~58_combout\ = !\res_img|Div0|auto_generated|divider|op_1~57\
-- \res_img|Div0|auto_generated|divider|op_1~59\ = CARRY(!\res_img|Div0|auto_generated|divider|op_1~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~57\,
	combout => \res_img|Div0|auto_generated|divider|op_1~58_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~59\);

-- Location: LCCOMB_X31_Y25_N22
\res_img|Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~8_combout\ = (\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\res_img|int_res\(31) & (((!\res_img|Div0|auto_generated|divider|op_1~54_combout\ & 
-- !\res_img|Div0|auto_generated|divider|op_1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|op_1~54_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~58_combout\,
	combout => \res_img|Equal4~8_combout\);

-- Location: LCCOMB_X31_Y25_N4
\res_img|Div0|auto_generated|divider|quotient[25]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[25]~25_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|op_1~50_combout\,
	datad => \res_img|int_res\(31),
	combout => \res_img|Div0|auto_generated|divider|quotient[25]~25_combout\);

-- Location: LCCOMB_X31_Y25_N26
\res_img|Div0|auto_generated|divider|quotient[26]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[26]~26_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|op_1~52_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[26]~26_combout\);

-- Location: LCCOMB_X32_Y25_N30
\res_img|Div0|auto_generated|divider|op_1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~60_combout\ = \res_img|Div0|auto_generated|divider|op_1~59\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|op_1~59\,
	combout => \res_img|Div0|auto_generated|divider|op_1~60_combout\);

-- Location: LCCOMB_X31_Y25_N28
\res_img|Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~7_combout\ = (\res_img|int_res\(31) & (\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\res_img|int_res\(31) & (((!\res_img|Div0|auto_generated|divider|op_1~60_combout\ & 
-- !\res_img|Div0|auto_generated|divider|op_1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \res_img|Div0|auto_generated|divider|op_1~60_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~56_combout\,
	combout => \res_img|Equal4~7_combout\);

-- Location: LCCOMB_X31_Y25_N12
\res_img|Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~9_combout\ = (\res_img|Equal4~8_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[25]~25_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[26]~26_combout\ & \res_img|Equal4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Equal4~8_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[25]~25_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[26]~26_combout\,
	datad => \res_img|Equal4~7_combout\,
	combout => \res_img|Equal4~9_combout\);

-- Location: LCCOMB_X31_Y24_N18
\res_img|rgb2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~23_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ & (\res_img|rgb2~22_combout\ & \res_img|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[3]~0_combout\,
	datab => \res_img|rgb2~22_combout\,
	datad => \res_img|Equal4~9_combout\,
	combout => \res_img|rgb2~23_combout\);

-- Location: LCCOMB_X31_Y24_N12
\res_img|rgb2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~24_combout\ = (\res_img|Equal4~0_combout\ & (\res_img|Equal4~6_combout\ & (\res_img|Equal4~3_combout\ & \res_img|rgb2~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Equal4~0_combout\,
	datab => \res_img|Equal4~6_combout\,
	datac => \res_img|Equal4~3_combout\,
	datad => \res_img|rgb2~23_combout\,
	combout => \res_img|rgb2~24_combout\);

-- Location: LCCOMB_X29_Y22_N6
\res_img|rgb2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~30_combout\ = (!\res_img|h_count\(5) & (\res_img|LessThan0~4_combout\ & (!\res_img|h_count\(4) & \res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datab => \res_img|LessThan0~4_combout\,
	datac => \res_img|h_count\(4),
	datad => \res_img|h_count\(6),
	combout => \res_img|rgb2~30_combout\);

-- Location: LCCOMB_X27_Y22_N30
\res_img|rgb2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~29_combout\ = (\res_img|h_count\(2) & (\res_img|h_count\(1) & (\res_img|h_count\(0) & !\res_img|h_count\(3)))) # (!\res_img|h_count\(2) & (((\res_img|h_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(2),
	datab => \res_img|h_count\(1),
	datac => \res_img|h_count\(0),
	datad => \res_img|h_count\(3),
	combout => \res_img|rgb2~29_combout\);

-- Location: LCCOMB_X25_Y22_N26
\res_img|process_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~21_combout\ = (!\res_img|v_count\(9) & ((\res_img|v_count\(8) & (!\res_img|v_count\(7) & !\res_img|v_count\(5))) # (!\res_img|v_count\(8) & (\res_img|v_count\(7) & \res_img|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(8),
	datab => \res_img|v_count\(9),
	datac => \res_img|v_count\(7),
	datad => \res_img|v_count\(5),
	combout => \res_img|process_1~21_combout\);

-- Location: LCCOMB_X24_Y22_N0
\res_img|process_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~20_combout\ = (\res_img|v_count\(4) & ((\res_img|v_count\(3)) # ((\res_img|v_count\(2) & \res_img|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(4),
	datab => \res_img|v_count\(3),
	datac => \res_img|v_count\(2),
	datad => \res_img|v_count\(5),
	combout => \res_img|process_1~20_combout\);

-- Location: LCCOMB_X25_Y22_N8
\res_img|process_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~22_combout\ = ((\res_img|v_count\(6) & ((!\res_img|process_1~20_combout\) # (!\res_img|v_count\(7)))) # (!\res_img|v_count\(6) & ((\res_img|v_count\(7)) # (\res_img|process_1~20_combout\)))) # (!\res_img|process_1~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~21_combout\,
	datab => \res_img|v_count\(6),
	datac => \res_img|v_count\(7),
	datad => \res_img|process_1~20_combout\,
	combout => \res_img|process_1~22_combout\);

-- Location: LCCOMB_X29_Y22_N16
\res_img|rgb2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~31_combout\ = (\res_img|rgb2~30_combout\ & (\res_img|rgb2~29_combout\ & !\res_img|process_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~30_combout\,
	datac => \res_img|rgb2~29_combout\,
	datad => \res_img|process_1~22_combout\,
	combout => \res_img|rgb2~31_combout\);

-- Location: LCCOMB_X32_Y24_N12
\res_img|Div0|auto_generated|divider|quotient[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[0]~3_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[0]~3_combout\);

-- Location: LCCOMB_X32_Y24_N26
\res_img|rgb2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~26_combout\ = (\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ & (((\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\)))) # (!\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ & (\res_img|process_1~18_combout\ 
-- $ (((\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\) # (\res_img|Div0|auto_generated|divider|quotient[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~18_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[2]~1_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[3]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[0]~3_combout\,
	combout => \res_img|rgb2~26_combout\);

-- Location: LCCOMB_X32_Y24_N0
\res_img|rgb2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~27_combout\ = (\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\ & (\res_img|process_1~18_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\))) # (!\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\ & 
-- ((\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ & (\res_img|process_1~18_combout\)) # (!\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ & ((\res_img|Div0|auto_generated|divider|quotient[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~18_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[2]~1_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[3]~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[0]~3_combout\,
	combout => \res_img|rgb2~27_combout\);

-- Location: LCCOMB_X32_Y24_N28
\res_img|Equal4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~10_combout\ = (\res_img|Equal4~0_combout\ & (\res_img|Equal4~3_combout\ & (\res_img|Equal4~9_combout\ & \res_img|Equal4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Equal4~0_combout\,
	datab => \res_img|Equal4~3_combout\,
	datac => \res_img|Equal4~9_combout\,
	datad => \res_img|Equal4~6_combout\,
	combout => \res_img|Equal4~10_combout\);

-- Location: LCCOMB_X32_Y24_N8
\res_img|rgb2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~25_combout\ = (\res_img|Equal4~10_combout\ & (\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ $ (\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[3]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[1]~2_combout\,
	datad => \res_img|Equal4~10_combout\,
	combout => \res_img|rgb2~25_combout\);

-- Location: LCCOMB_X32_Y24_N2
\res_img|Equal4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal4~11_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\ & \res_img|Equal4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[3]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[1]~2_combout\,
	datad => \res_img|Equal4~10_combout\,
	combout => \res_img|Equal4~11_combout\);

-- Location: LCCOMB_X32_Y24_N14
\res_img|rgb2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~28_combout\ = (\res_img|rgb2~27_combout\ & ((\res_img|rgb2~25_combout\) # ((!\res_img|rgb2~26_combout\ & \res_img|Equal4~11_combout\)))) # (!\res_img|rgb2~27_combout\ & (\res_img|rgb2~26_combout\ & ((\res_img|Equal4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~26_combout\,
	datab => \res_img|rgb2~27_combout\,
	datac => \res_img|rgb2~25_combout\,
	datad => \res_img|Equal4~11_combout\,
	combout => \res_img|rgb2~28_combout\);

-- Location: LCCOMB_X29_Y22_N14
\res_img|process_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~23_combout\ = (((!\res_img|process_1~6_combout\) # (!\res_img|LessThan0~4_combout\)) # (!\res_img|LessThan20~0_combout\)) # (!\res_img|LessThan21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan21~1_combout\,
	datab => \res_img|LessThan20~0_combout\,
	datac => \res_img|LessThan0~4_combout\,
	datad => \res_img|process_1~6_combout\,
	combout => \res_img|process_1~23_combout\);

-- Location: LCCOMB_X32_Y24_N20
\res_img|rgb2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~32_combout\ = (!\res_img|process_1~23_combout\ & (!\res_img|process_1~22_combout\ & ((\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\) # (!\res_img|int_res\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~23_combout\,
	datab => \res_img|process_1~22_combout\,
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \res_img|int_res\(31),
	combout => \res_img|rgb2~32_combout\);

-- Location: LCCOMB_X31_Y24_N22
\res_img|rgb2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~33_combout\ = (\res_img|rgb2~32_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[0]~3_combout\ & ((\res_img|int_res\(31)) # (!\res_img|Div0|auto_generated|divider|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~32_combout\,
	datab => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|quotient[0]~3_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \res_img|rgb2~33_combout\);

-- Location: LCCOMB_X31_Y24_N20
\res_img|rgb2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~34_combout\ = (!\res_img|rgb2~33_combout\ & ((\res_img|process_1~18_combout\) # ((\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\ & !\res_img|Equal4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[2]~1_combout\,
	datab => \res_img|process_1~18_combout\,
	datac => \res_img|rgb2~33_combout\,
	datad => \res_img|Equal4~11_combout\,
	combout => \res_img|rgb2~34_combout\);

-- Location: LCCOMB_X31_Y24_N6
\res_img|rgb2~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~35_combout\ = (\res_img|rgb2~24_combout\ & (((\res_img|rgb2~31_combout\ & \res_img|rgb2~28_combout\)) # (!\res_img|rgb2~34_combout\))) # (!\res_img|rgb2~24_combout\ & (\res_img|rgb2~31_combout\ & (\res_img|rgb2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~24_combout\,
	datab => \res_img|rgb2~31_combout\,
	datac => \res_img|rgb2~28_combout\,
	datad => \res_img|rgb2~34_combout\,
	combout => \res_img|rgb2~35_combout\);

-- Location: LCCOMB_X31_Y24_N4
\res_img|rgb2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~36_combout\ = (\res_img|process_1~14_combout\ & (\res_img|process_1~16_combout\ & \res_img|rgb2~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~14_combout\,
	datac => \res_img|process_1~16_combout\,
	datad => \res_img|rgb2~35_combout\,
	combout => \res_img|rgb2~36_combout\);

-- Location: IOIBUF_X24_Y0_N29
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

-- Location: LCCOMB_X31_Y24_N14
\res_img|process_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~24_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[0]~3_combout\ & ((\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(31),
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[0]~3_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \res_img|process_1~24_combout\);

-- Location: LCCOMB_X31_Y24_N8
\res_img|process_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~25_combout\ = (\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\ & (((\res_img|process_1~24_combout\ & !\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\)))) # 
-- (!\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\ & ((\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[2]~1_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[1]~2_combout\,
	datac => \res_img|process_1~24_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[3]~0_combout\,
	combout => \res_img|process_1~25_combout\);

-- Location: LCCOMB_X31_Y24_N2
\res_img|process_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~26_combout\ = (!\eror~input_o\ & ((!\res_img|Equal4~10_combout\) # (!\res_img|process_1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eror~input_o\,
	datac => \res_img|process_1~25_combout\,
	datad => \res_img|Equal4~10_combout\,
	combout => \res_img|process_1~26_combout\);

-- Location: LCCOMB_X32_Y24_N30
\res_img|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal5~0_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ & (\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\ & \res_img|Equal4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[3]~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[1]~2_combout\,
	datad => \res_img|Equal4~10_combout\,
	combout => \res_img|Equal5~0_combout\);

-- Location: LCCOMB_X34_Y26_N28
\res_img|rgb2~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~37_combout\ = (\res_img|process_1~18_combout\ & ((\res_img|process_1~23_combout\) # (\res_img|process_1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~23_combout\,
	datac => \res_img|process_1~22_combout\,
	datad => \res_img|process_1~18_combout\,
	combout => \res_img|rgb2~37_combout\);

-- Location: LCCOMB_X31_Y24_N24
\res_img|rgb2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~38_combout\ = (\res_img|process_1~14_combout\ & ((\res_img|rgb2~37_combout\) # ((\res_img|process_1~26_combout\)))) # (!\res_img|process_1~14_combout\ & (((\res_img|process_1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~37_combout\,
	datab => \res_img|process_1~23_combout\,
	datac => \res_img|process_1~14_combout\,
	datad => \res_img|process_1~26_combout\,
	combout => \res_img|rgb2~38_combout\);

-- Location: LCCOMB_X31_Y24_N30
\res_img|rgb2~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~39_combout\ = (\res_img|process_1~16_combout\ & ((\res_img|rgb2~38_combout\))) # (!\res_img|process_1~16_combout\ & (\res_img|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|process_1~16_combout\,
	datac => \res_img|Equal5~0_combout\,
	datad => \res_img|rgb2~38_combout\,
	combout => \res_img|rgb2~39_combout\);

-- Location: LCCOMB_X31_Y24_N28
\res_img|rgb2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~40_combout\ = (\res_img|rgb2~39_combout\ & (\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[0]~3_combout\))) # (!\res_img|rgb2~39_combout\ & (\res_img|Equal4~11_combout\ & 
-- (\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\ $ (!\res_img|Div0|auto_generated|divider|quotient[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[2]~1_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[0]~3_combout\,
	datac => \res_img|rgb2~39_combout\,
	datad => \res_img|Equal4~11_combout\,
	combout => \res_img|rgb2~40_combout\);

-- Location: LCCOMB_X31_Y24_N26
\res_img|rgb2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~41_combout\ = (\res_img|rgb2~39_combout\ & (!\res_img|process_1~16_combout\ & ((!\res_img|rgb2~40_combout\) # (!\res_img|process_1~26_combout\)))) # (!\res_img|rgb2~39_combout\ & (((\res_img|rgb2~40_combout\) # 
-- (!\res_img|process_1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~16_combout\,
	datab => \res_img|process_1~26_combout\,
	datac => \res_img|rgb2~39_combout\,
	datad => \res_img|rgb2~40_combout\,
	combout => \res_img|rgb2~41_combout\);

-- Location: LCCOMB_X29_Y24_N24
\res_img|rgb2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~3_combout\ = (\eror~input_o\ & (\res_img|process_1~14_combout\ & (\res_img|process_1~16_combout\ & !\res_img|process_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~input_o\,
	datab => \res_img|process_1~14_combout\,
	datac => \res_img|process_1~16_combout\,
	datad => \res_img|process_1~18_combout\,
	combout => \res_img|rgb2~3_combout\);

-- Location: LCCOMB_X29_Y22_N22
\res_img|process_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~11_combout\ = (!\res_img|h_count\(6) & ((!\res_img|LessThan20~0_combout\) # (!\res_img|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datab => \res_img|h_count\(6),
	datac => \res_img|LessThan20~0_combout\,
	combout => \res_img|process_1~11_combout\);

-- Location: LCCOMB_X29_Y22_N20
\res_img|rgb2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~1_combout\ = (\res_img|rgb2~0_combout\ & (\res_img|h_count\(7) & ((\res_img|LessThan21~1_combout\) # (!\res_img|process_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~0_combout\,
	datab => \res_img|h_count\(7),
	datac => \res_img|process_1~10_combout\,
	datad => \res_img|LessThan21~1_combout\,
	combout => \res_img|rgb2~1_combout\);

-- Location: LCCOMB_X29_Y22_N4
\res_img|rgb2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~2_combout\ = (!\res_img|process_1~11_combout\ & (\res_img|process_1~8_combout\ & (\res_img|int_res[31]~4_combout\ & \res_img|rgb2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~11_combout\,
	datab => \res_img|process_1~8_combout\,
	datac => \res_img|int_res[31]~4_combout\,
	datad => \res_img|rgb2~1_combout\,
	combout => \res_img|rgb2~2_combout\);

-- Location: LCCOMB_X29_Y24_N18
\res_img|rgb2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~8_combout\ = (!\res_img|process_1~18_combout\ & \res_img|process_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|process_1~18_combout\,
	datad => \res_img|process_1~14_combout\,
	combout => \res_img|rgb2~8_combout\);

-- Location: LCCOMB_X34_Y24_N0
\res_img|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~0_combout\ = (\res_img|Div0|auto_generated|divider|quotient[0]~3_combout\ & (\res_img|int_res\(0) $ (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[0]~3_combout\ & ((GND) # (!\res_img|int_res\(0))))
-- \res_img|Add2~1\ = CARRY((!\res_img|int_res\(0)) # (!\res_img|Div0|auto_generated|divider|quotient[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[0]~3_combout\,
	datab => \res_img|int_res\(0),
	datad => VCC,
	combout => \res_img|Add2~0_combout\,
	cout => \res_img|Add2~1\);

-- Location: LCCOMB_X34_Y24_N2
\res_img|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~2_combout\ = (\res_img|int_res\(1) & ((\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\ & (!\res_img|Add2~1\)) # (!\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\ & (\res_img|Add2~1\ & VCC)))) # (!\res_img|int_res\(1) 
-- & ((\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\ & ((\res_img|Add2~1\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\ & (!\res_img|Add2~1\))))
-- \res_img|Add2~3\ = CARRY((\res_img|int_res\(1) & (\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\ & !\res_img|Add2~1\)) # (!\res_img|int_res\(1) & ((\res_img|Div0|auto_generated|divider|quotient[1]~2_combout\) # (!\res_img|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res\(1),
	datab => \res_img|Div0|auto_generated|divider|quotient[1]~2_combout\,
	datad => VCC,
	cin => \res_img|Add2~1\,
	combout => \res_img|Add2~2_combout\,
	cout => \res_img|Add2~3\);

-- Location: LCCOMB_X34_Y24_N4
\res_img|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~4_combout\ = ((\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\ $ (\res_img|int_res\(2) $ (\res_img|Add2~3\)))) # (GND)
-- \res_img|Add2~5\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\ & (\res_img|int_res\(2) & !\res_img|Add2~3\)) # (!\res_img|Div0|auto_generated|divider|quotient[2]~1_combout\ & ((\res_img|int_res\(2)) # (!\res_img|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[2]~1_combout\,
	datab => \res_img|int_res\(2),
	datad => VCC,
	cin => \res_img|Add2~3\,
	combout => \res_img|Add2~4_combout\,
	cout => \res_img|Add2~5\);

-- Location: LCCOMB_X34_Y24_N6
\res_img|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~6_combout\ = (\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ & ((\res_img|int_res\(3) & (!\res_img|Add2~5\)) # (!\res_img|int_res\(3) & ((\res_img|Add2~5\) # (GND))))) # 
-- (!\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ & ((\res_img|int_res\(3) & (\res_img|Add2~5\ & VCC)) # (!\res_img|int_res\(3) & (!\res_img|Add2~5\))))
-- \res_img|Add2~7\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ & ((!\res_img|Add2~5\) # (!\res_img|int_res\(3)))) # (!\res_img|Div0|auto_generated|divider|quotient[3]~0_combout\ & (!\res_img|int_res\(3) & !\res_img|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[3]~0_combout\,
	datab => \res_img|int_res\(3),
	datad => VCC,
	cin => \res_img|Add2~5\,
	combout => \res_img|Add2~6_combout\,
	cout => \res_img|Add2~7\);

-- Location: LCCOMB_X30_Y24_N12
\res_img|rgb2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~9_combout\ = (\res_img|process_1~16_combout\ & (\res_img|rgb2~8_combout\ & ((\res_img|Add2~6_combout\)))) # (!\res_img|process_1~16_combout\ & (((\res_img|Add2~6_combout\) # (!\res_img|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~16_combout\,
	datab => \res_img|rgb2~8_combout\,
	datac => \res_img|Add2~0_combout\,
	datad => \res_img|Add2~6_combout\,
	combout => \res_img|rgb2~9_combout\);

-- Location: LCCOMB_X30_Y24_N20
\res_img|rgb2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~6_combout\ = (\res_img|Add2~4_combout\ & ((\res_img|Add2~0_combout\ & ((!\res_img|Add2~2_combout\) # (!\res_img|process_1~16_combout\))) # (!\res_img|Add2~0_combout\ & ((\res_img|process_1~16_combout\) # (\res_img|Add2~2_combout\))))) # 
-- (!\res_img|Add2~4_combout\ & (((\res_img|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~0_combout\,
	datab => \res_img|process_1~16_combout\,
	datac => \res_img|Add2~4_combout\,
	datad => \res_img|Add2~2_combout\,
	combout => \res_img|rgb2~6_combout\);

-- Location: LCCOMB_X29_Y24_N22
\res_img|rgb2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~4_combout\ = (!\res_img|LessThan25~0_combout\ & (\res_img|process_1~12_combout\ & !\res_img|process_1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan25~0_combout\,
	datac => \res_img|process_1~12_combout\,
	datad => \res_img|process_1~17_combout\,
	combout => \res_img|rgb2~4_combout\);

-- Location: LCCOMB_X29_Y24_N16
\res_img|rgb2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~5_combout\ = (\res_img|v_count\(5) & (\res_img|rgb2~4_combout\ & \res_img|process_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(5),
	datac => \res_img|rgb2~4_combout\,
	datad => \res_img|process_1~14_combout\,
	combout => \res_img|rgb2~5_combout\);

-- Location: LCCOMB_X30_Y24_N18
\res_img|rgb2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~7_combout\ = (\res_img|rgb2~6_combout\ & (!\res_img|Add2~6_combout\ & ((\res_img|rgb2~5_combout\) # (!\res_img|process_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~16_combout\,
	datab => \res_img|rgb2~6_combout\,
	datac => \res_img|rgb2~5_combout\,
	datad => \res_img|Add2~6_combout\,
	combout => \res_img|rgb2~7_combout\);

-- Location: LCCOMB_X30_Y24_N6
\res_img|rgb2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~10_combout\ = (\res_img|rgb2~7_combout\) # ((\res_img|rgb2~9_combout\ & (!\res_img|Add2~2_combout\ & !\res_img|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~9_combout\,
	datab => \res_img|Add2~2_combout\,
	datac => \res_img|Add2~4_combout\,
	datad => \res_img|rgb2~7_combout\,
	combout => \res_img|rgb2~10_combout\);

-- Location: LCCOMB_X34_Y25_N2
\res_img|Div0|auto_generated|divider|quotient[18]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[18]~18_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~36_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[18]~18_combout\);

-- Location: LCCOMB_X34_Y24_N8
\res_img|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~8_combout\ = (\res_img|Div0|auto_generated|divider|quotient[4]~4_combout\ & (!\res_img|Add2~7\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[4]~4_combout\ & (\res_img|Add2~7\ $ (GND)))
-- \res_img|Add2~9\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[4]~4_combout\ & !\res_img|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[4]~4_combout\,
	datad => VCC,
	cin => \res_img|Add2~7\,
	combout => \res_img|Add2~8_combout\,
	cout => \res_img|Add2~9\);

-- Location: LCCOMB_X34_Y24_N10
\res_img|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~10_combout\ = (\res_img|Div0|auto_generated|divider|quotient[5]~5_combout\ & ((\res_img|Add2~9\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[5]~5_combout\ & (!\res_img|Add2~9\))
-- \res_img|Add2~11\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[5]~5_combout\) # (!\res_img|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[5]~5_combout\,
	datad => VCC,
	cin => \res_img|Add2~9\,
	combout => \res_img|Add2~10_combout\,
	cout => \res_img|Add2~11\);

-- Location: LCCOMB_X34_Y24_N12
\res_img|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~12_combout\ = (\res_img|Div0|auto_generated|divider|quotient[6]~6_combout\ & (!\res_img|Add2~11\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[6]~6_combout\ & (\res_img|Add2~11\ $ (GND)))
-- \res_img|Add2~13\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[6]~6_combout\ & !\res_img|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[6]~6_combout\,
	datad => VCC,
	cin => \res_img|Add2~11\,
	combout => \res_img|Add2~12_combout\,
	cout => \res_img|Add2~13\);

-- Location: LCCOMB_X34_Y24_N14
\res_img|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~14_combout\ = (\res_img|Div0|auto_generated|divider|quotient[7]~7_combout\ & ((\res_img|Add2~13\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[7]~7_combout\ & (!\res_img|Add2~13\))
-- \res_img|Add2~15\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[7]~7_combout\) # (!\res_img|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[7]~7_combout\,
	datad => VCC,
	cin => \res_img|Add2~13\,
	combout => \res_img|Add2~14_combout\,
	cout => \res_img|Add2~15\);

-- Location: LCCOMB_X34_Y24_N16
\res_img|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~16_combout\ = (\res_img|Div0|auto_generated|divider|quotient[8]~8_combout\ & (!\res_img|Add2~15\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[8]~8_combout\ & (\res_img|Add2~15\ $ (GND)))
-- \res_img|Add2~17\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[8]~8_combout\ & !\res_img|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[8]~8_combout\,
	datad => VCC,
	cin => \res_img|Add2~15\,
	combout => \res_img|Add2~16_combout\,
	cout => \res_img|Add2~17\);

-- Location: LCCOMB_X34_Y24_N18
\res_img|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~18_combout\ = (\res_img|Div0|auto_generated|divider|quotient[9]~9_combout\ & ((\res_img|Add2~17\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[9]~9_combout\ & (!\res_img|Add2~17\))
-- \res_img|Add2~19\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[9]~9_combout\) # (!\res_img|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[9]~9_combout\,
	datad => VCC,
	cin => \res_img|Add2~17\,
	combout => \res_img|Add2~18_combout\,
	cout => \res_img|Add2~19\);

-- Location: LCCOMB_X34_Y24_N20
\res_img|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~20_combout\ = (\res_img|Div0|auto_generated|divider|quotient[10]~10_combout\ & (!\res_img|Add2~19\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[10]~10_combout\ & (\res_img|Add2~19\ $ (GND)))
-- \res_img|Add2~21\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[10]~10_combout\ & !\res_img|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[10]~10_combout\,
	datad => VCC,
	cin => \res_img|Add2~19\,
	combout => \res_img|Add2~20_combout\,
	cout => \res_img|Add2~21\);

-- Location: LCCOMB_X34_Y24_N22
\res_img|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~22_combout\ = (\res_img|Div0|auto_generated|divider|quotient[11]~11_combout\ & ((\res_img|Add2~21\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[11]~11_combout\ & (!\res_img|Add2~21\))
-- \res_img|Add2~23\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[11]~11_combout\) # (!\res_img|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[11]~11_combout\,
	datad => VCC,
	cin => \res_img|Add2~21\,
	combout => \res_img|Add2~22_combout\,
	cout => \res_img|Add2~23\);

-- Location: LCCOMB_X34_Y24_N24
\res_img|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~24_combout\ = (\res_img|Div0|auto_generated|divider|quotient[12]~12_combout\ & (!\res_img|Add2~23\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[12]~12_combout\ & (\res_img|Add2~23\ $ (GND)))
-- \res_img|Add2~25\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[12]~12_combout\ & !\res_img|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[12]~12_combout\,
	datad => VCC,
	cin => \res_img|Add2~23\,
	combout => \res_img|Add2~24_combout\,
	cout => \res_img|Add2~25\);

-- Location: LCCOMB_X34_Y24_N26
\res_img|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~26_combout\ = (\res_img|Div0|auto_generated|divider|quotient[13]~13_combout\ & ((\res_img|Add2~25\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[13]~13_combout\ & (!\res_img|Add2~25\))
-- \res_img|Add2~27\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[13]~13_combout\) # (!\res_img|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[13]~13_combout\,
	datad => VCC,
	cin => \res_img|Add2~25\,
	combout => \res_img|Add2~26_combout\,
	cout => \res_img|Add2~27\);

-- Location: LCCOMB_X34_Y24_N28
\res_img|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~28_combout\ = (\res_img|Div0|auto_generated|divider|quotient[14]~14_combout\ & (!\res_img|Add2~27\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[14]~14_combout\ & (\res_img|Add2~27\ $ (GND)))
-- \res_img|Add2~29\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[14]~14_combout\ & !\res_img|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[14]~14_combout\,
	datad => VCC,
	cin => \res_img|Add2~27\,
	combout => \res_img|Add2~28_combout\,
	cout => \res_img|Add2~29\);

-- Location: LCCOMB_X34_Y24_N30
\res_img|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~30_combout\ = (\res_img|Div0|auto_generated|divider|quotient[15]~15_combout\ & ((\res_img|Add2~29\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[15]~15_combout\ & (!\res_img|Add2~29\))
-- \res_img|Add2~31\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[15]~15_combout\) # (!\res_img|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[15]~15_combout\,
	datad => VCC,
	cin => \res_img|Add2~29\,
	combout => \res_img|Add2~30_combout\,
	cout => \res_img|Add2~31\);

-- Location: LCCOMB_X34_Y23_N0
\res_img|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~32_combout\ = (\res_img|Div0|auto_generated|divider|quotient[16]~16_combout\ & (!\res_img|Add2~31\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[16]~16_combout\ & (\res_img|Add2~31\ $ (GND)))
-- \res_img|Add2~33\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[16]~16_combout\ & !\res_img|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[16]~16_combout\,
	datad => VCC,
	cin => \res_img|Add2~31\,
	combout => \res_img|Add2~32_combout\,
	cout => \res_img|Add2~33\);

-- Location: LCCOMB_X34_Y23_N2
\res_img|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~34_combout\ = (\res_img|Div0|auto_generated|divider|quotient[17]~17_combout\ & ((\res_img|Add2~33\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[17]~17_combout\ & (!\res_img|Add2~33\))
-- \res_img|Add2~35\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[17]~17_combout\) # (!\res_img|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[17]~17_combout\,
	datad => VCC,
	cin => \res_img|Add2~33\,
	combout => \res_img|Add2~34_combout\,
	cout => \res_img|Add2~35\);

-- Location: LCCOMB_X34_Y23_N4
\res_img|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~36_combout\ = (\res_img|Div0|auto_generated|divider|quotient[18]~18_combout\ & (!\res_img|Add2~35\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[18]~18_combout\ & (\res_img|Add2~35\ $ (GND)))
-- \res_img|Add2~37\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[18]~18_combout\ & !\res_img|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[18]~18_combout\,
	datad => VCC,
	cin => \res_img|Add2~35\,
	combout => \res_img|Add2~36_combout\,
	cout => \res_img|Add2~37\);

-- Location: LCCOMB_X34_Y23_N6
\res_img|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~38_combout\ = (\res_img|Div0|auto_generated|divider|quotient[19]~19_combout\ & ((\res_img|Add2~37\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[19]~19_combout\ & (!\res_img|Add2~37\))
-- \res_img|Add2~39\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[19]~19_combout\) # (!\res_img|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[19]~19_combout\,
	datad => VCC,
	cin => \res_img|Add2~37\,
	combout => \res_img|Add2~38_combout\,
	cout => \res_img|Add2~39\);

-- Location: LCCOMB_X34_Y23_N8
\res_img|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~40_combout\ = (\res_img|Div0|auto_generated|divider|quotient[20]~20_combout\ & (!\res_img|Add2~39\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[20]~20_combout\ & (\res_img|Add2~39\ $ (GND)))
-- \res_img|Add2~41\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[20]~20_combout\ & !\res_img|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[20]~20_combout\,
	datad => VCC,
	cin => \res_img|Add2~39\,
	combout => \res_img|Add2~40_combout\,
	cout => \res_img|Add2~41\);

-- Location: LCCOMB_X34_Y23_N10
\res_img|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~42_combout\ = (\res_img|Div0|auto_generated|divider|quotient[21]~21_combout\ & ((\res_img|Add2~41\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[21]~21_combout\ & (!\res_img|Add2~41\))
-- \res_img|Add2~43\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[21]~21_combout\) # (!\res_img|Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[21]~21_combout\,
	datad => VCC,
	cin => \res_img|Add2~41\,
	combout => \res_img|Add2~42_combout\,
	cout => \res_img|Add2~43\);

-- Location: LCCOMB_X34_Y23_N12
\res_img|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~44_combout\ = (\res_img|Div0|auto_generated|divider|quotient[22]~22_combout\ & (!\res_img|Add2~43\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[22]~22_combout\ & (\res_img|Add2~43\ $ (GND)))
-- \res_img|Add2~45\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[22]~22_combout\ & !\res_img|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[22]~22_combout\,
	datad => VCC,
	cin => \res_img|Add2~43\,
	combout => \res_img|Add2~44_combout\,
	cout => \res_img|Add2~45\);

-- Location: LCCOMB_X34_Y23_N14
\res_img|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~46_combout\ = (\res_img|Div0|auto_generated|divider|quotient[23]~23_combout\ & ((\res_img|Add2~45\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[23]~23_combout\ & (!\res_img|Add2~45\))
-- \res_img|Add2~47\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[23]~23_combout\) # (!\res_img|Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[23]~23_combout\,
	datad => VCC,
	cin => \res_img|Add2~45\,
	combout => \res_img|Add2~46_combout\,
	cout => \res_img|Add2~47\);

-- Location: LCCOMB_X30_Y24_N22
\res_img|rgb2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~16_combout\ = (!\res_img|Add2~42_combout\ & (!\res_img|Add2~40_combout\ & (!\res_img|Add2~46_combout\ & !\res_img|Add2~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~42_combout\,
	datab => \res_img|Add2~40_combout\,
	datac => \res_img|Add2~46_combout\,
	datad => \res_img|Add2~44_combout\,
	combout => \res_img|rgb2~16_combout\);

-- Location: LCCOMB_X30_Y24_N26
\res_img|rgb2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~12_combout\ = (!\res_img|Add2~20_combout\ & (!\res_img|Add2~16_combout\ & (!\res_img|Add2~18_combout\ & !\res_img|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~20_combout\,
	datab => \res_img|Add2~16_combout\,
	datac => \res_img|Add2~18_combout\,
	datad => \res_img|Add2~22_combout\,
	combout => \res_img|rgb2~12_combout\);

-- Location: LCCOMB_X30_Y24_N0
\res_img|rgb2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~11_combout\ = (!\res_img|Add2~12_combout\ & (!\res_img|Add2~8_combout\ & (!\res_img|Add2~14_combout\ & !\res_img|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~12_combout\,
	datab => \res_img|Add2~8_combout\,
	datac => \res_img|Add2~14_combout\,
	datad => \res_img|Add2~10_combout\,
	combout => \res_img|rgb2~11_combout\);

-- Location: LCCOMB_X30_Y24_N4
\res_img|rgb2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~13_combout\ = (!\res_img|Add2~30_combout\ & (!\res_img|Add2~24_combout\ & (!\res_img|Add2~28_combout\ & !\res_img|Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~30_combout\,
	datab => \res_img|Add2~24_combout\,
	datac => \res_img|Add2~28_combout\,
	datad => \res_img|Add2~26_combout\,
	combout => \res_img|rgb2~13_combout\);

-- Location: LCCOMB_X30_Y24_N2
\res_img|rgb2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~14_combout\ = (!\res_img|Add2~34_combout\ & (!\res_img|Add2~32_combout\ & (!\res_img|Add2~38_combout\ & !\res_img|Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~34_combout\,
	datab => \res_img|Add2~32_combout\,
	datac => \res_img|Add2~38_combout\,
	datad => \res_img|Add2~36_combout\,
	combout => \res_img|rgb2~14_combout\);

-- Location: LCCOMB_X30_Y24_N28
\res_img|rgb2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~15_combout\ = (\res_img|rgb2~12_combout\ & (\res_img|rgb2~11_combout\ & (\res_img|rgb2~13_combout\ & \res_img|rgb2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~12_combout\,
	datab => \res_img|rgb2~11_combout\,
	datac => \res_img|rgb2~13_combout\,
	datad => \res_img|rgb2~14_combout\,
	combout => \res_img|rgb2~15_combout\);

-- Location: LCCOMB_X35_Y23_N4
\res_img|Div0|auto_generated|divider|quotient[27]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[27]~27_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datac => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~54_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[27]~27_combout\);

-- Location: LCCOMB_X34_Y23_N16
\res_img|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~48_combout\ = (\res_img|Div0|auto_generated|divider|quotient[24]~24_combout\ & (!\res_img|Add2~47\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[24]~24_combout\ & (\res_img|Add2~47\ $ (GND)))
-- \res_img|Add2~49\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[24]~24_combout\ & !\res_img|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[24]~24_combout\,
	datad => VCC,
	cin => \res_img|Add2~47\,
	combout => \res_img|Add2~48_combout\,
	cout => \res_img|Add2~49\);

-- Location: LCCOMB_X34_Y23_N18
\res_img|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~50_combout\ = (\res_img|Div0|auto_generated|divider|quotient[25]~25_combout\ & ((\res_img|Add2~49\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[25]~25_combout\ & (!\res_img|Add2~49\))
-- \res_img|Add2~51\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[25]~25_combout\) # (!\res_img|Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|quotient[25]~25_combout\,
	datad => VCC,
	cin => \res_img|Add2~49\,
	combout => \res_img|Add2~50_combout\,
	cout => \res_img|Add2~51\);

-- Location: LCCOMB_X34_Y23_N20
\res_img|Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~52_combout\ = (\res_img|Div0|auto_generated|divider|quotient[26]~26_combout\ & (!\res_img|Add2~51\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[26]~26_combout\ & (\res_img|Add2~51\ $ (GND)))
-- \res_img|Add2~53\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[26]~26_combout\ & !\res_img|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[26]~26_combout\,
	datad => VCC,
	cin => \res_img|Add2~51\,
	combout => \res_img|Add2~52_combout\,
	cout => \res_img|Add2~53\);

-- Location: LCCOMB_X34_Y23_N22
\res_img|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~54_combout\ = (\res_img|Div0|auto_generated|divider|quotient[27]~27_combout\ & ((\res_img|Add2~53\) # (GND))) # (!\res_img|Div0|auto_generated|divider|quotient[27]~27_combout\ & (!\res_img|Add2~53\))
-- \res_img|Add2~55\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[27]~27_combout\) # (!\res_img|Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[27]~27_combout\,
	datad => VCC,
	cin => \res_img|Add2~53\,
	combout => \res_img|Add2~54_combout\,
	cout => \res_img|Add2~55\);

-- Location: LCCOMB_X30_Y24_N8
\res_img|rgb2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~17_combout\ = (!\res_img|Add2~54_combout\ & (!\res_img|Add2~48_combout\ & (!\res_img|Add2~50_combout\ & !\res_img|Add2~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~54_combout\,
	datab => \res_img|Add2~48_combout\,
	datac => \res_img|Add2~50_combout\,
	datad => \res_img|Add2~52_combout\,
	combout => \res_img|rgb2~17_combout\);

-- Location: LCCOMB_X31_Y25_N24
\res_img|Div0|auto_generated|divider|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|_~0_combout\ = (!\res_img|int_res\(31) & \res_img|Div0|auto_generated|divider|op_1~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|op_1~58_combout\,
	combout => \res_img|Div0|auto_generated|divider|_~0_combout\);

-- Location: LCCOMB_X32_Y23_N28
\res_img|Div0|auto_generated|divider|quotient[28]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[28]~28_combout\ = (\res_img|int_res\(31) & (!\res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\res_img|int_res\(31) & 
-- ((\res_img|Div0|auto_generated|divider|op_1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|op_1~56_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[28]~28_combout\);

-- Location: LCCOMB_X34_Y23_N24
\res_img|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~56_combout\ = (\res_img|Div0|auto_generated|divider|quotient[28]~28_combout\ & (!\res_img|Add2~55\ & VCC)) # (!\res_img|Div0|auto_generated|divider|quotient[28]~28_combout\ & (\res_img|Add2~55\ $ (GND)))
-- \res_img|Add2~57\ = CARRY((!\res_img|Div0|auto_generated|divider|quotient[28]~28_combout\ & !\res_img|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[28]~28_combout\,
	datad => VCC,
	cin => \res_img|Add2~55\,
	combout => \res_img|Add2~56_combout\,
	cout => \res_img|Add2~57\);

-- Location: LCCOMB_X34_Y23_N26
\res_img|Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~58_combout\ = (\res_img|Div0|auto_generated|divider|_~0_combout\ & ((\res_img|Add2~57\) # (GND))) # (!\res_img|Div0|auto_generated|divider|_~0_combout\ & (!\res_img|Add2~57\))
-- \res_img|Add2~59\ = CARRY((\res_img|Div0|auto_generated|divider|_~0_combout\) # (!\res_img|Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \res_img|Add2~57\,
	combout => \res_img|Add2~58_combout\,
	cout => \res_img|Add2~59\);

-- Location: LCCOMB_X32_Y23_N10
\res_img|Div0|auto_generated|divider|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|_~1_combout\ = (!\res_img|int_res\(31) & \res_img|Div0|auto_generated|divider|op_1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|op_1~60_combout\,
	combout => \res_img|Div0|auto_generated|divider|_~1_combout\);

-- Location: LCCOMB_X34_Y23_N28
\res_img|Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~60_combout\ = (\res_img|Div0|auto_generated|divider|_~1_combout\ & (!\res_img|Add2~59\ & VCC)) # (!\res_img|Div0|auto_generated|divider|_~1_combout\ & (\res_img|Add2~59\ $ (GND)))
-- \res_img|Add2~61\ = CARRY((!\res_img|Div0|auto_generated|divider|_~1_combout\ & !\res_img|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|_~1_combout\,
	datad => VCC,
	cin => \res_img|Add2~59\,
	combout => \res_img|Add2~60_combout\,
	cout => \res_img|Add2~61\);

-- Location: LCCOMB_X34_Y23_N30
\res_img|Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~62_combout\ = \res_img|int_res\(31) $ (\res_img|Add2~61\ $ (\res_img|Div0|auto_generated|divider|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res\(31),
	datad => \res_img|Div0|auto_generated|divider|_~1_combout\,
	cin => \res_img|Add2~61\,
	combout => \res_img|Add2~62_combout\);

-- Location: LCCOMB_X30_Y24_N10
\res_img|rgb2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~18_combout\ = (!\res_img|Add2~58_combout\ & (!\res_img|Add2~56_combout\ & (!\res_img|Add2~60_combout\ & !\res_img|Add2~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~58_combout\,
	datab => \res_img|Add2~56_combout\,
	datac => \res_img|Add2~60_combout\,
	datad => \res_img|Add2~62_combout\,
	combout => \res_img|rgb2~18_combout\);

-- Location: LCCOMB_X30_Y24_N24
\res_img|rgb2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~19_combout\ = (\res_img|rgb2~16_combout\ & (\res_img|rgb2~15_combout\ & (\res_img|rgb2~17_combout\ & \res_img|rgb2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~16_combout\,
	datab => \res_img|rgb2~15_combout\,
	datac => \res_img|rgb2~17_combout\,
	datad => \res_img|rgb2~18_combout\,
	combout => \res_img|rgb2~19_combout\);

-- Location: LCCOMB_X31_Y24_N10
\res_img|rgb2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~20_combout\ = (\res_img|rgb2~2_combout\ & ((\res_img|rgb2~3_combout\) # ((\res_img|rgb2~10_combout\ & \res_img|rgb2~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~3_combout\,
	datab => \res_img|rgb2~2_combout\,
	datac => \res_img|rgb2~10_combout\,
	datad => \res_img|rgb2~19_combout\,
	combout => \res_img|rgb2~20_combout\);

-- Location: LCCOMB_X31_Y24_N0
\res_img|rgb2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~42_combout\ = (\res_img|rgb2~20_combout\) # ((\res_img|rgb2~21_combout\ & ((\res_img|rgb2~36_combout\) # (\res_img|rgb2~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~21_combout\,
	datab => \res_img|rgb2~36_combout\,
	datac => \res_img|rgb2~41_combout\,
	datad => \res_img|rgb2~20_combout\,
	combout => \res_img|rgb2~42_combout\);

-- Location: FF_X31_Y24_N1
\res_img|rgb2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|rgb2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|rgb2\(12));

-- Location: FF_X14_Y13_N9
\res_img|r_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|rgb2\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|r_out\(7));

-- Location: FF_X1_Y13_N17
\res_img|g_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|rgb2\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|g_out\(4));

-- Location: LCCOMB_X24_Y19_N14
\res_img|g_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|g_out[6]~feeder_combout\ = \res_img|rgb2\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(21),
	combout => \res_img|g_out[6]~feeder_combout\);

-- Location: FF_X24_Y19_N15
\res_img|g_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|g_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|g_out\(6));

-- Location: LCCOMB_X24_Y19_N28
\res_img|g_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|g_out[7]~feeder_combout\ = \res_img|rgb2\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(21),
	combout => \res_img|g_out[7]~feeder_combout\);

-- Location: FF_X24_Y19_N29
\res_img|g_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|g_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|g_out\(7));

-- Location: FF_X1_Y13_N15
\res_img|b_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|rgb2\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|b_out\(4));

-- Location: FF_X1_Y13_N13
\res_img|b_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|rgb2\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|b_out\(5));

-- Location: LCCOMB_X24_Y19_N2
\res_img|b_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|b_out[6]~feeder_combout\ = \res_img|rgb2\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(21),
	combout => \res_img|b_out[6]~feeder_combout\);

-- Location: FF_X24_Y19_N3
\res_img|b_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|b_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|b_out\(6));

-- Location: FF_X1_Y13_N27
\res_img|b_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \res_img|rgb2\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|b_out\(7));

-- Location: IOIBUF_X22_Y0_N1
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


