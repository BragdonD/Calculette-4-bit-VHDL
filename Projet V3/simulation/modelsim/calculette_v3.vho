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

-- DATE "09/23/2021 23:20:40"

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
	res_out : OUT std_logic_vector(3 DOWNTO 0);
	vga_vs : OUT std_logic;
	vga_hs : OUT std_logic;
	vga_r : OUT std_logic_vector(3 DOWNTO 0);
	vga_g : OUT std_logic_vector(3 DOWNTO 0);
	vga_b : OUT std_logic_vector(3 DOWNTO 0)
	);
END hdmi_de10;

-- Design Ports Information
-- res_out[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_out[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_out[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_out[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- Res[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- eror	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_res_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_vs : std_logic;
SIGNAL ww_vga_hs : std_logic;
SIGNAL ww_vga_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_25~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \res_out[0]~output_o\ : std_logic;
SIGNAL \res_out[1]~output_o\ : std_logic;
SIGNAL \res_out[2]~output_o\ : std_logic;
SIGNAL \res_out[3]~output_o\ : std_logic;
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
SIGNAL \Res[0]~input_o\ : std_logic;
SIGNAL \Res[1]~input_o\ : std_logic;
SIGNAL \Res[2]~input_o\ : std_logic;
SIGNAL \Res[3]~input_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk_25~0_combout\ : std_logic;
SIGNAL \clk_25~feeder_combout\ : std_logic;
SIGNAL \clk_25~q\ : std_logic;
SIGNAL \clk_25~clkctrl_outclk\ : std_logic;
SIGNAL \res_img|v_count[0]~11_combout\ : std_logic;
SIGNAL \res_img|v_count[1]~14\ : std_logic;
SIGNAL \res_img|v_count[2]~15_combout\ : std_logic;
SIGNAL \res_img|h_count[0]~10_combout\ : std_logic;
SIGNAL \res_img|h_count[0]~11\ : std_logic;
SIGNAL \res_img|h_count[1]~12_combout\ : std_logic;
SIGNAL \res_img|h_count[1]~13\ : std_logic;
SIGNAL \res_img|h_count[2]~14_combout\ : std_logic;
SIGNAL \res_img|h_count[2]~15\ : std_logic;
SIGNAL \res_img|h_count[3]~16_combout\ : std_logic;
SIGNAL \res_img|h_count[3]~17\ : std_logic;
SIGNAL \res_img|h_count[4]~18_combout\ : std_logic;
SIGNAL \res_img|Equal0~2_combout\ : std_logic;
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
SIGNAL \res_img|Equal0~0_combout\ : std_logic;
SIGNAL \res_img|Equal0~1_combout\ : std_logic;
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
SIGNAL \res_img|v_count[7]~26\ : std_logic;
SIGNAL \res_img|v_count[8]~28_combout\ : std_logic;
SIGNAL \res_img|v_count[8]~29\ : std_logic;
SIGNAL \res_img|v_count[9]~30_combout\ : std_logic;
SIGNAL \res_img|Equal1~1_combout\ : std_logic;
SIGNAL \res_img|LessThan25~0_combout\ : std_logic;
SIGNAL \res_img|LessThan28~3_combout\ : std_logic;
SIGNAL \res_img|v_count[9]~27_combout\ : std_logic;
SIGNAL \res_img|v_count[0]~12\ : std_logic;
SIGNAL \res_img|v_count[1]~13_combout\ : std_logic;
SIGNAL \res_img|LessThan28~2_combout\ : std_logic;
SIGNAL \res_img|LessThan1~0_combout\ : std_logic;
SIGNAL \res_img|vs_1~q\ : std_logic;
SIGNAL \res_img|vs_2~feeder_combout\ : std_logic;
SIGNAL \res_img|vs_2~q\ : std_logic;
SIGNAL \res_img|vs_out~feeder_combout\ : std_logic;
SIGNAL \res_img|vs_out~q\ : std_logic;
SIGNAL \res_img|LessThan0~1_combout\ : std_logic;
SIGNAL \res_img|hs_1~q\ : std_logic;
SIGNAL \res_img|hs_2~feeder_combout\ : std_logic;
SIGNAL \res_img|hs_2~q\ : std_logic;
SIGNAL \res_img|hs_out~feeder_combout\ : std_logic;
SIGNAL \res_img|hs_out~q\ : std_logic;
SIGNAL \res_img|LessThan2~1_combout\ : std_logic;
SIGNAL \res_img|LessThan2~0_combout\ : std_logic;
SIGNAL \res_img|LessThan3~0_combout\ : std_logic;
SIGNAL \res_img|process_1~84_combout\ : std_logic;
SIGNAL \res_img|LessThan6~1_combout\ : std_logic;
SIGNAL \res_img|process_1~85_combout\ : std_logic;
SIGNAL \res_img|process_1~86_combout\ : std_logic;
SIGNAL \res_img|de_1~q\ : std_logic;
SIGNAL \res_img|LessThan28~0_combout\ : std_logic;
SIGNAL \res_img|LessThan28~1_combout\ : std_logic;
SIGNAL \res_img|Equal1~0_combout\ : std_logic;
SIGNAL \res_img|process_1~29_combout\ : std_logic;
SIGNAL \res_img|LessThan23~0_combout\ : std_logic;
SIGNAL \res_img|process_1~82_combout\ : std_logic;
SIGNAL \res_img|LessThan29~0_combout\ : std_logic;
SIGNAL \res_img|LessThan17~0_combout\ : std_logic;
SIGNAL \res_img|process_1~83_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~35_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~36_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~37_combout\ : std_logic;
SIGNAL \res_img|LessThan34~0_combout\ : std_logic;
SIGNAL \res_img|LessThan34~1_combout\ : std_logic;
SIGNAL \res_img|rgb2~38_combout\ : std_logic;
SIGNAL \res_img|LessThan20~0_combout\ : std_logic;
SIGNAL \res_img|LessThan29~2_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~25_combout\ : std_logic;
SIGNAL \res_img|LessThan10~0_combout\ : std_logic;
SIGNAL \res_img|LessThan8~0_combout\ : std_logic;
SIGNAL \res_img|LessThan6~0_combout\ : std_logic;
SIGNAL \res_img|LessThan8~1_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~26_combout\ : std_logic;
SIGNAL \res_img|process_1~76_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~27_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~28_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~39_combout\ : std_logic;
SIGNAL \res_img|LessThan26~2_combout\ : std_logic;
SIGNAL \res_img|process_1~77_combout\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \res_img|int_res~0_combout\ : std_logic;
SIGNAL \res_img|process_1~24_combout\ : std_logic;
SIGNAL \res_img|process_1~78_combout\ : std_logic;
SIGNAL \res_img|process_1~25_combout\ : std_logic;
SIGNAL \res_img|process_1~26_combout\ : std_logic;
SIGNAL \res_img|process_1~79_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~30_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~29_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~31_combout\ : std_logic;
SIGNAL \res_img|LessThan0~0_combout\ : std_logic;
SIGNAL \res_img|process_1~80_combout\ : std_logic;
SIGNAL \res_img|process_1~62_combout\ : std_logic;
SIGNAL \res_img|process_1~81_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~32_combout\ : std_logic;
SIGNAL \res_img|rgb2~33_combout\ : std_logic;
SIGNAL \res_img|process_1~21_combout\ : std_logic;
SIGNAL \res_img|process_1~23_combout\ : std_logic;
SIGNAL \res_img|LessThan29~1_combout\ : std_logic;
SIGNAL \res_img|process_1~20_combout\ : std_logic;
SIGNAL \res_img|process_1~22_combout\ : std_logic;
SIGNAL \res_img|rgb2~17_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|_~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|_~5_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ : std_logic;
SIGNAL \res_img|Add2~1\ : std_logic;
SIGNAL \res_img|Add2~3\ : std_logic;
SIGNAL \res_img|Add2~5\ : std_logic;
SIGNAL \res_img|Add2~7\ : std_logic;
SIGNAL \res_img|Add2~8_combout\ : std_logic;
SIGNAL \res_img|Add2~6_combout\ : std_logic;
SIGNAL \res_img|Add2~4_combout\ : std_logic;
SIGNAL \res_img|Add2~2_combout\ : std_logic;
SIGNAL \res_img|Add2~0_combout\ : std_logic;
SIGNAL \res_img|Add3~1\ : std_logic;
SIGNAL \res_img|Add3~3\ : std_logic;
SIGNAL \res_img|Add3~5\ : std_logic;
SIGNAL \res_img|Add3~7\ : std_logic;
SIGNAL \res_img|Add3~9\ : std_logic;
SIGNAL \res_img|Add3~11\ : std_logic;
SIGNAL \res_img|Add3~13\ : std_logic;
SIGNAL \res_img|Add3~14_combout\ : std_logic;
SIGNAL \res_img|Add3~2_combout\ : std_logic;
SIGNAL \res_img|Add3~4_combout\ : std_logic;
SIGNAL \res_img|process_1~35_combout\ : std_logic;
SIGNAL \res_img|Add3~8_combout\ : std_logic;
SIGNAL \res_img|Add3~12_combout\ : std_logic;
SIGNAL \res_img|Add3~10_combout\ : std_logic;
SIGNAL \res_img|Add3~6_combout\ : std_logic;
SIGNAL \res_img|Equal12~0_combout\ : std_logic;
SIGNAL \res_img|Add3~0_combout\ : std_logic;
SIGNAL \res_img|Add3~15\ : std_logic;
SIGNAL \res_img|Add3~16_combout\ : std_logic;
SIGNAL \res_img|process_1~36_combout\ : std_logic;
SIGNAL \res_img|Equal12~1_combout\ : std_logic;
SIGNAL \res_img|process_1~49_combout\ : std_logic;
SIGNAL \eror~input_o\ : std_logic;
SIGNAL \res_img|LessThan32~0_combout\ : std_logic;
SIGNAL \res_img|process_1~44_combout\ : std_logic;
SIGNAL \res_img|process_1~45_combout\ : std_logic;
SIGNAL \res_img|process_1~46_combout\ : std_logic;
SIGNAL \res_img|LessThan26~0_combout\ : std_logic;
SIGNAL \res_img|LessThan26~1_combout\ : std_logic;
SIGNAL \res_img|process_1~33_combout\ : std_logic;
SIGNAL \res_img|process_1~50_combout\ : std_logic;
SIGNAL \res_img|process_1~37_combout\ : std_logic;
SIGNAL \res_img|process_1~38_combout\ : std_logic;
SIGNAL \res_img|process_1~39_combout\ : std_logic;
SIGNAL \res_img|process_1~47_combout\ : std_logic;
SIGNAL \res_img|LessThan31~0_combout\ : std_logic;
SIGNAL \res_img|LessThan31~1_combout\ : std_logic;
SIGNAL \res_img|process_1~43_combout\ : std_logic;
SIGNAL \res_img|process_1~48_combout\ : std_logic;
SIGNAL \res_img|process_1~9_combout\ : std_logic;
SIGNAL \res_img|process_1~6_combout\ : std_logic;
SIGNAL \res_img|process_1~3_combout\ : std_logic;
SIGNAL \res_img|process_1~87_combout\ : std_logic;
SIGNAL \res_img|Equal12~2_combout\ : std_logic;
SIGNAL \res_img|process_1~40_combout\ : std_logic;
SIGNAL \res_img|process_1~41_combout\ : std_logic;
SIGNAL \res_img|process_1~51_combout\ : std_logic;
SIGNAL \res_img|rgb2~23_combout\ : std_logic;
SIGNAL \res_img|rgb2~8_combout\ : std_logic;
SIGNAL \res_img|rgb2~6_combout\ : std_logic;
SIGNAL \res_img|rgb2~3_combout\ : std_logic;
SIGNAL \res_img|rgb2~52_combout\ : std_logic;
SIGNAL \res_img|process_1~30_combout\ : std_logic;
SIGNAL \res_img|process_1~28_combout\ : std_logic;
SIGNAL \res_img|process_1~31_combout\ : std_logic;
SIGNAL \res_img|process_1~27_combout\ : std_logic;
SIGNAL \res_img|rgb2~18_combout\ : std_logic;
SIGNAL \res_img|rgb2~19_combout\ : std_logic;
SIGNAL \res_img|rgb2~20_combout\ : std_logic;
SIGNAL \res_img|rgb2~21_combout\ : std_logic;
SIGNAL \res_img|Equal20~0_combout\ : std_logic;
SIGNAL \res_img|process_1~32_combout\ : std_logic;
SIGNAL \res_img|process_1~34_combout\ : std_logic;
SIGNAL \res_img|process_1~42_combout\ : std_logic;
SIGNAL \res_img|rgb2~22_combout\ : std_logic;
SIGNAL \res_img|rgb2~24_combout\ : std_logic;
SIGNAL \res_img|process_1~69_combout\ : std_logic;
SIGNAL \res_img|Equal2~0_combout\ : std_logic;
SIGNAL \res_img|process_1~68_combout\ : std_logic;
SIGNAL \res_img|process_1~66_combout\ : std_logic;
SIGNAL \res_img|process_1~54_combout\ : std_logic;
SIGNAL \res_img|process_1~67_combout\ : std_logic;
SIGNAL \res_img|process_1~70_combout\ : std_logic;
SIGNAL \res_img|process_1~73_combout\ : std_logic;
SIGNAL \res_img|LessThan32~1_combout\ : std_logic;
SIGNAL \res_img|process_1~57_combout\ : std_logic;
SIGNAL \res_img|process_1~58_combout\ : std_logic;
SIGNAL \res_img|process_1~71_combout\ : std_logic;
SIGNAL \res_img|process_1~72_combout\ : std_logic;
SIGNAL \res_img|process_1~53_combout\ : std_logic;
SIGNAL \res_img|process_1~61_combout\ : std_logic;
SIGNAL \res_img|process_1~63_combout\ : std_logic;
SIGNAL \res_img|process_1~74_combout\ : std_logic;
SIGNAL \res_img|process_1~52_combout\ : std_logic;
SIGNAL \res_img|process_1~55_combout\ : std_logic;
SIGNAL \res_img|process_1~56_combout\ : std_logic;
SIGNAL \res_img|process_1~60_combout\ : std_logic;
SIGNAL \res_img|process_1~59_combout\ : std_logic;
SIGNAL \res_img|process_1~64_combout\ : std_logic;
SIGNAL \res_img|process_1~65_combout\ : std_logic;
SIGNAL \res_img|process_1~75_combout\ : std_logic;
SIGNAL \res_img|rgb2~34_combout\ : std_logic;
SIGNAL \res_img|rgb2~40_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~42_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~41_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~43_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~44_combout\ : std_logic;
SIGNAL \res_img|rgb2[13]~45_combout\ : std_logic;
SIGNAL \res_img|r_out[4]~feeder_combout\ : std_logic;
SIGNAL \res_img|rgb2~46_combout\ : std_logic;
SIGNAL \res_img|rgb2~47_combout\ : std_logic;
SIGNAL \res_img|rgb2~48_combout\ : std_logic;
SIGNAL \res_img|r_out[5]~feeder_combout\ : std_logic;
SIGNAL \res_img|r_out[6]~feeder_combout\ : std_logic;
SIGNAL \res_img|rgb2~50_combout\ : std_logic;
SIGNAL \res_img|rgb2~49_combout\ : std_logic;
SIGNAL \res_img|rgb2~51_combout\ : std_logic;
SIGNAL \res_img|r_out[7]~feeder_combout\ : std_logic;
SIGNAL \res_img|g_out[4]~feeder_combout\ : std_logic;
SIGNAL \res_img|g_out[5]~feeder_combout\ : std_logic;
SIGNAL \res_img|g_out[6]~feeder_combout\ : std_logic;
SIGNAL \res_img|g_out[7]~feeder_combout\ : std_logic;
SIGNAL \res_img|b_out[4]~feeder_combout\ : std_logic;
SIGNAL \res_img|b_out[5]~feeder_combout\ : std_logic;
SIGNAL \res_img|b_out[6]~feeder_combout\ : std_logic;
SIGNAL \res_img|b_out[7]~feeder_combout\ : std_logic;
SIGNAL \res_img|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \res_img|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \res_img|r_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \res_img|g_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \res_img|b_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \res_img|rgb2\ : std_logic_vector(23 DOWNTO 0);

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
res_out <= ww_res_out;
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

-- Location: IOOBUF_X66_Y54_N23
\res_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Res[0]~input_o\,
	devoe => ww_devoe,
	o => \res_out[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\res_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Res[1]~input_o\,
	devoe => ww_devoe,
	o => \res_out[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\res_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Res[2]~input_o\,
	devoe => ww_devoe,
	o => \res_out[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\res_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Res[3]~input_o\,
	devoe => ww_devoe,
	o => \res_out[3]~output_o\);

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
	i => \res_img|r_out\(4),
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
	i => \res_img|r_out\(6),
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
	i => \res_img|g_out\(5),
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

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: IOIBUF_X54_Y54_N29
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

-- Location: LCCOMB_X43_Y4_N26
\clk_25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_25~0_combout\ = (!\clk_25~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_25~q\,
	datac => \reset~input_o\,
	combout => \clk_25~0_combout\);

-- Location: LCCOMB_X43_Y4_N12
\clk_25~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_25~feeder_combout\ = \clk_25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_25~0_combout\,
	combout => \clk_25~feeder_combout\);

-- Location: FF_X43_Y4_N13
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

-- Location: CLKCTRL_G15
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

-- Location: LCCOMB_X25_Y17_N6
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

-- Location: LCCOMB_X25_Y17_N8
\res_img|v_count[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[1]~13_combout\ = (\res_img|v_count\(1) & (!\res_img|v_count[0]~12\)) # (!\res_img|v_count\(1) & ((\res_img|v_count[0]~12\) # (GND)))
-- \res_img|v_count[1]~14\ = CARRY((!\res_img|v_count[0]~12\) # (!\res_img|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(1),
	datad => VCC,
	cin => \res_img|v_count[0]~12\,
	combout => \res_img|v_count[1]~13_combout\,
	cout => \res_img|v_count[1]~14\);

-- Location: LCCOMB_X25_Y17_N10
\res_img|v_count[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[2]~15_combout\ = (\res_img|v_count\(2) & (\res_img|v_count[1]~14\ $ (GND))) # (!\res_img|v_count\(2) & (!\res_img|v_count[1]~14\ & VCC))
-- \res_img|v_count[2]~16\ = CARRY((\res_img|v_count\(2) & !\res_img|v_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(2),
	datad => VCC,
	cin => \res_img|v_count[1]~14\,
	combout => \res_img|v_count[2]~15_combout\,
	cout => \res_img|v_count[2]~16\);

-- Location: LCCOMB_X24_Y18_N0
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

-- Location: FF_X24_Y18_N1
\res_img|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|h_count[0]~10_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(0));

-- Location: LCCOMB_X24_Y18_N2
\res_img|h_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[1]~12_combout\ = (\res_img|h_count\(1) & (!\res_img|h_count[0]~11\)) # (!\res_img|h_count\(1) & ((\res_img|h_count[0]~11\) # (GND)))
-- \res_img|h_count[1]~13\ = CARRY((!\res_img|h_count[0]~11\) # (!\res_img|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(1),
	datad => VCC,
	cin => \res_img|h_count[0]~11\,
	combout => \res_img|h_count[1]~12_combout\,
	cout => \res_img|h_count[1]~13\);

-- Location: FF_X24_Y18_N3
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

-- Location: LCCOMB_X24_Y18_N4
\res_img|h_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[2]~14_combout\ = (\res_img|h_count\(2) & (\res_img|h_count[1]~13\ $ (GND))) # (!\res_img|h_count\(2) & (!\res_img|h_count[1]~13\ & VCC))
-- \res_img|h_count[2]~15\ = CARRY((\res_img|h_count\(2) & !\res_img|h_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(2),
	datad => VCC,
	cin => \res_img|h_count[1]~13\,
	combout => \res_img|h_count[2]~14_combout\,
	cout => \res_img|h_count[2]~15\);

-- Location: FF_X24_Y18_N5
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

-- Location: LCCOMB_X24_Y18_N6
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

-- Location: FF_X24_Y18_N7
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

-- Location: LCCOMB_X24_Y18_N8
\res_img|h_count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[4]~18_combout\ = (\res_img|h_count\(4) & (\res_img|h_count[3]~17\ $ (GND))) # (!\res_img|h_count\(4) & (!\res_img|h_count[3]~17\ & VCC))
-- \res_img|h_count[4]~19\ = CARRY((\res_img|h_count\(4) & !\res_img|h_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(4),
	datad => VCC,
	cin => \res_img|h_count[3]~17\,
	combout => \res_img|h_count[4]~18_combout\,
	cout => \res_img|h_count[4]~19\);

-- Location: FF_X24_Y18_N9
\res_img|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|h_count[4]~18_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(4));

-- Location: LCCOMB_X26_Y18_N4
\res_img|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal0~2_combout\ = (!\res_img|h_count\(3)) # (!\res_img|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|h_count\(4),
	datad => \res_img|h_count\(3),
	combout => \res_img|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y18_N10
\res_img|h_count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[5]~20_combout\ = (\res_img|h_count\(5) & (!\res_img|h_count[4]~19\)) # (!\res_img|h_count\(5) & ((\res_img|h_count[4]~19\) # (GND)))
-- \res_img|h_count[5]~21\ = CARRY((!\res_img|h_count[4]~19\) # (!\res_img|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datad => VCC,
	cin => \res_img|h_count[4]~19\,
	combout => \res_img|h_count[5]~20_combout\,
	cout => \res_img|h_count[5]~21\);

-- Location: FF_X24_Y18_N11
\res_img|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|h_count[5]~20_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(5));

-- Location: LCCOMB_X24_Y18_N12
\res_img|h_count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[6]~22_combout\ = (\res_img|h_count\(6) & (\res_img|h_count[5]~21\ $ (GND))) # (!\res_img|h_count\(6) & (!\res_img|h_count[5]~21\ & VCC))
-- \res_img|h_count[6]~23\ = CARRY((\res_img|h_count\(6) & !\res_img|h_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(6),
	datad => VCC,
	cin => \res_img|h_count[5]~21\,
	combout => \res_img|h_count[6]~22_combout\,
	cout => \res_img|h_count[6]~23\);

-- Location: FF_X24_Y18_N13
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

-- Location: LCCOMB_X24_Y18_N14
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

-- Location: FF_X24_Y18_N15
\res_img|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|h_count[7]~24_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(7));

-- Location: LCCOMB_X24_Y18_N16
\res_img|h_count[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|h_count[8]~26_combout\ = (\res_img|h_count\(8) & (\res_img|h_count[7]~25\ $ (GND))) # (!\res_img|h_count\(8) & (!\res_img|h_count[7]~25\ & VCC))
-- \res_img|h_count[8]~27\ = CARRY((\res_img|h_count\(8) & !\res_img|h_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(8),
	datad => VCC,
	cin => \res_img|h_count[7]~25\,
	combout => \res_img|h_count[8]~26_combout\,
	cout => \res_img|h_count[8]~27\);

-- Location: FF_X24_Y18_N17
\res_img|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|h_count[8]~26_combout\,
	sclr => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|h_count\(8));

-- Location: LCCOMB_X24_Y18_N18
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

-- Location: FF_X24_Y18_N19
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

-- Location: LCCOMB_X23_Y18_N30
\res_img|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal0~0_combout\ = (((!\res_img|h_count\(9)) # (!\res_img|h_count\(8))) # (!\res_img|h_count\(0))) # (!\res_img|h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(1),
	datab => \res_img|h_count\(0),
	datac => \res_img|h_count\(8),
	datad => \res_img|h_count\(9),
	combout => \res_img|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y18_N4
\res_img|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal0~1_combout\ = (\res_img|h_count\(7)) # ((\res_img|h_count\(6)) # ((\res_img|h_count\(5)) # (!\res_img|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(7),
	datab => \res_img|h_count\(6),
	datac => \res_img|h_count\(5),
	datad => \res_img|h_count\(2),
	combout => \res_img|Equal0~1_combout\);

-- Location: FF_X25_Y15_N7
reset_a : dffeas
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
	q => \reset_a~q\);

-- Location: LCCOMB_X25_Y15_N12
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

-- Location: FF_X25_Y15_N13
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

-- Location: LCCOMB_X25_Y15_N18
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

-- Location: FF_X25_Y15_N19
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

-- Location: LCCOMB_X25_Y15_N24
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

-- Location: FF_X25_Y15_N25
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

-- Location: LCCOMB_X25_Y15_N28
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

-- Location: FF_X25_Y15_N29
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

-- Location: LCCOMB_X25_Y15_N10
\res_img|v_count[9]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[9]~10_combout\ = (\reset_e~q\) # ((!\res_img|Equal0~2_combout\ & (!\res_img|Equal0~0_combout\ & !\res_img|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Equal0~2_combout\,
	datab => \res_img|Equal0~0_combout\,
	datac => \res_img|Equal0~1_combout\,
	datad => \reset_e~q\,
	combout => \res_img|v_count[9]~10_combout\);

-- Location: FF_X25_Y17_N11
\res_img|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[2]~15_combout\,
	sclr => \res_img|v_count[9]~27_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(2));

-- Location: LCCOMB_X25_Y17_N12
\res_img|v_count[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[3]~17_combout\ = (\res_img|v_count\(3) & (!\res_img|v_count[2]~16\)) # (!\res_img|v_count\(3) & ((\res_img|v_count[2]~16\) # (GND)))
-- \res_img|v_count[3]~18\ = CARRY((!\res_img|v_count[2]~16\) # (!\res_img|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(3),
	datad => VCC,
	cin => \res_img|v_count[2]~16\,
	combout => \res_img|v_count[3]~17_combout\,
	cout => \res_img|v_count[3]~18\);

-- Location: FF_X25_Y17_N13
\res_img|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[3]~17_combout\,
	sclr => \res_img|v_count[9]~27_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(3));

-- Location: LCCOMB_X25_Y17_N14
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

-- Location: FF_X25_Y17_N15
\res_img|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[4]~19_combout\,
	sclr => \res_img|v_count[9]~27_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(4));

-- Location: LCCOMB_X25_Y17_N16
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

-- Location: FF_X25_Y17_N17
\res_img|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[5]~21_combout\,
	sclr => \res_img|v_count[9]~27_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(5));

-- Location: LCCOMB_X25_Y17_N18
\res_img|v_count[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[6]~23_combout\ = (\res_img|v_count\(6) & (\res_img|v_count[5]~22\ $ (GND))) # (!\res_img|v_count\(6) & (!\res_img|v_count[5]~22\ & VCC))
-- \res_img|v_count[6]~24\ = CARRY((\res_img|v_count\(6) & !\res_img|v_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(6),
	datad => VCC,
	cin => \res_img|v_count[5]~22\,
	combout => \res_img|v_count[6]~23_combout\,
	cout => \res_img|v_count[6]~24\);

-- Location: FF_X25_Y17_N19
\res_img|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[6]~23_combout\,
	sclr => \res_img|v_count[9]~27_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(6));

-- Location: LCCOMB_X25_Y17_N20
\res_img|v_count[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[7]~25_combout\ = (\res_img|v_count\(7) & (!\res_img|v_count[6]~24\)) # (!\res_img|v_count\(7) & ((\res_img|v_count[6]~24\) # (GND)))
-- \res_img|v_count[7]~26\ = CARRY((!\res_img|v_count[6]~24\) # (!\res_img|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|v_count\(7),
	datad => VCC,
	cin => \res_img|v_count[6]~24\,
	combout => \res_img|v_count[7]~25_combout\,
	cout => \res_img|v_count[7]~26\);

-- Location: FF_X25_Y17_N21
\res_img|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[7]~25_combout\,
	sclr => \res_img|v_count[9]~27_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(7));

-- Location: LCCOMB_X25_Y17_N22
\res_img|v_count[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[8]~28_combout\ = (\res_img|v_count\(8) & (\res_img|v_count[7]~26\ $ (GND))) # (!\res_img|v_count\(8) & (!\res_img|v_count[7]~26\ & VCC))
-- \res_img|v_count[8]~29\ = CARRY((\res_img|v_count\(8) & !\res_img|v_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(8),
	datad => VCC,
	cin => \res_img|v_count[7]~26\,
	combout => \res_img|v_count[8]~28_combout\,
	cout => \res_img|v_count[8]~29\);

-- Location: FF_X25_Y17_N23
\res_img|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[8]~28_combout\,
	sclr => \res_img|v_count[9]~27_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(8));

-- Location: LCCOMB_X25_Y17_N24
\res_img|v_count[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[9]~30_combout\ = \res_img|v_count[8]~29\ $ (\res_img|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \res_img|v_count\(9),
	cin => \res_img|v_count[8]~29\,
	combout => \res_img|v_count[9]~30_combout\);

-- Location: FF_X25_Y17_N25
\res_img|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[9]~30_combout\,
	sclr => \res_img|v_count[9]~27_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(9));

-- Location: LCCOMB_X26_Y17_N26
\res_img|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal1~1_combout\ = (\res_img|v_count\(1)) # ((\res_img|v_count\(0)) # ((!\res_img|v_count\(3)) # (!\res_img|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(1),
	datab => \res_img|v_count\(0),
	datac => \res_img|v_count\(2),
	datad => \res_img|v_count\(3),
	combout => \res_img|Equal1~1_combout\);

-- Location: LCCOMB_X25_Y17_N0
\res_img|LessThan25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan25~0_combout\ = (!\res_img|v_count\(4) & !\res_img|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|v_count\(4),
	datad => \res_img|v_count\(5),
	combout => \res_img|LessThan25~0_combout\);

-- Location: LCCOMB_X24_Y17_N6
\res_img|LessThan28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan28~3_combout\ = (!\res_img|v_count\(7) & (!\res_img|v_count\(6) & (\res_img|LessThan25~0_combout\ & !\res_img|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(7),
	datab => \res_img|v_count\(6),
	datac => \res_img|LessThan25~0_combout\,
	datad => \res_img|v_count\(8),
	combout => \res_img|LessThan28~3_combout\);

-- Location: LCCOMB_X25_Y17_N26
\res_img|v_count[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|v_count[9]~27_combout\ = (\reset_e~q\) # ((\res_img|v_count\(9) & (!\res_img|Equal1~1_combout\ & \res_img|LessThan28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(9),
	datab => \res_img|Equal1~1_combout\,
	datac => \res_img|LessThan28~3_combout\,
	datad => \reset_e~q\,
	combout => \res_img|v_count[9]~27_combout\);

-- Location: FF_X25_Y17_N7
\res_img|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[0]~11_combout\,
	sclr => \res_img|v_count[9]~27_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(0));

-- Location: FF_X25_Y17_N9
\res_img|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|v_count[1]~13_combout\,
	sclr => \res_img|v_count[9]~27_combout\,
	ena => \res_img|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|v_count\(1));

-- Location: LCCOMB_X26_Y17_N16
\res_img|LessThan28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan28~2_combout\ = (!\res_img|v_count\(2) & !\res_img|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(2),
	datad => \res_img|v_count\(3),
	combout => \res_img|LessThan28~2_combout\);

-- Location: LCCOMB_X26_Y17_N12
\res_img|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan1~0_combout\ = (!\res_img|v_count\(1) & (!\res_img|v_count\(9) & (\res_img|LessThan28~3_combout\ & \res_img|LessThan28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(1),
	datab => \res_img|v_count\(9),
	datac => \res_img|LessThan28~3_combout\,
	datad => \res_img|LessThan28~2_combout\,
	combout => \res_img|LessThan1~0_combout\);

-- Location: FF_X26_Y17_N13
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

-- Location: LCCOMB_X26_Y17_N10
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

-- Location: FF_X26_Y17_N11
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

-- Location: LCCOMB_X26_Y17_N28
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

-- Location: FF_X26_Y17_N29
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

-- Location: LCCOMB_X23_Y18_N20
\res_img|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan0~1_combout\ = (!\res_img|h_count\(8) & (!\res_img|h_count\(7) & ((!\res_img|h_count\(5)) # (!\res_img|h_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datab => \res_img|h_count\(6),
	datac => \res_img|h_count\(5),
	datad => \res_img|h_count\(7),
	combout => \res_img|LessThan0~1_combout\);

-- Location: FF_X23_Y18_N21
\res_img|hs_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|LessThan0~1_combout\,
	sclr => \res_img|h_count\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|hs_1~q\);

-- Location: LCCOMB_X12_Y18_N18
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

-- Location: FF_X12_Y18_N19
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

-- Location: LCCOMB_X12_Y18_N16
\res_img|hs_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|hs_out~feeder_combout\ = \res_img|hs_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|hs_2~q\,
	combout => \res_img|hs_out~feeder_combout\);

-- Location: FF_X12_Y18_N17
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

-- Location: LCCOMB_X24_Y17_N26
\res_img|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan2~1_combout\ = (!\res_img|v_count\(7) & (!\res_img|v_count\(8) & (!\res_img|v_count\(9) & !\res_img|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(7),
	datab => \res_img|v_count\(8),
	datac => \res_img|v_count\(9),
	datad => \res_img|v_count\(6),
	combout => \res_img|LessThan2~1_combout\);

-- Location: LCCOMB_X26_Y17_N24
\res_img|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan2~0_combout\ = ((!\res_img|v_count\(2) & (!\res_img|v_count\(4) & !\res_img|v_count\(3)))) # (!\res_img|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(2),
	datab => \res_img|v_count\(4),
	datac => \res_img|v_count\(5),
	datad => \res_img|v_count\(3),
	combout => \res_img|LessThan2~0_combout\);

-- Location: LCCOMB_X24_Y17_N8
\res_img|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan3~0_combout\ = ((!\res_img|v_count\(3) & (!\res_img|v_count\(2) & \res_img|LessThan28~3_combout\))) # (!\res_img|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(9),
	datab => \res_img|v_count\(3),
	datac => \res_img|v_count\(2),
	datad => \res_img|LessThan28~3_combout\,
	combout => \res_img|LessThan3~0_combout\);

-- Location: LCCOMB_X23_Y18_N18
\res_img|process_1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~84_combout\ = (!\res_img|h_count\(4) & (!\res_img|h_count\(5) & (!\res_img|h_count\(6) & !\res_img|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(4),
	datab => \res_img|h_count\(5),
	datac => \res_img|h_count\(6),
	datad => \res_img|h_count\(7),
	combout => \res_img|process_1~84_combout\);

-- Location: LCCOMB_X23_Y18_N26
\res_img|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan6~1_combout\ = ((!\res_img|h_count\(4) & (!\res_img|h_count\(6) & !\res_img|h_count\(5)))) # (!\res_img|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(4),
	datab => \res_img|h_count\(6),
	datac => \res_img|h_count\(7),
	datad => \res_img|h_count\(5),
	combout => \res_img|LessThan6~1_combout\);

-- Location: LCCOMB_X26_Y18_N30
\res_img|process_1~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~85_combout\ = (\res_img|h_count\(8) & ((\res_img|process_1~84_combout\) # ((!\res_img|h_count\(9))))) # (!\res_img|h_count\(8) & (((\res_img|h_count\(9)) # (!\res_img|LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datab => \res_img|process_1~84_combout\,
	datac => \res_img|LessThan6~1_combout\,
	datad => \res_img|h_count\(9),
	combout => \res_img|process_1~85_combout\);

-- Location: LCCOMB_X24_Y17_N24
\res_img|process_1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~86_combout\ = (\res_img|LessThan3~0_combout\ & (\res_img|process_1~85_combout\ & ((!\res_img|LessThan2~0_combout\) # (!\res_img|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan2~1_combout\,
	datab => \res_img|LessThan2~0_combout\,
	datac => \res_img|LessThan3~0_combout\,
	datad => \res_img|process_1~85_combout\,
	combout => \res_img|process_1~86_combout\);

-- Location: FF_X24_Y17_N25
\res_img|de_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|process_1~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|de_1~q\);

-- Location: LCCOMB_X24_Y17_N4
\res_img|LessThan28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan28~0_combout\ = (((!\res_img|v_count\(2) & !\res_img|v_count\(3))) # (!\res_img|v_count\(5))) # (!\res_img|v_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(2),
	datab => \res_img|v_count\(3),
	datac => \res_img|v_count\(4),
	datad => \res_img|v_count\(5),
	combout => \res_img|LessThan28~0_combout\);

-- Location: LCCOMB_X24_Y17_N20
\res_img|LessThan28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan28~1_combout\ = (((\res_img|LessThan28~0_combout\ & !\res_img|v_count\(6))) # (!\res_img|v_count\(8))) # (!\res_img|v_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(7),
	datab => \res_img|v_count\(8),
	datac => \res_img|LessThan28~0_combout\,
	datad => \res_img|v_count\(6),
	combout => \res_img|LessThan28~1_combout\);

-- Location: LCCOMB_X25_Y17_N30
\res_img|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal1~0_combout\ = (!\res_img|v_count\(1) & !\res_img|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|v_count\(1),
	datad => \res_img|v_count\(0),
	combout => \res_img|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y17_N4
\res_img|process_1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~29_combout\ = (\res_img|LessThan25~0_combout\ & (((!\res_img|v_count\(2) & \res_img|Equal1~0_combout\)) # (!\res_img|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(3),
	datab => \res_img|v_count\(2),
	datac => \res_img|Equal1~0_combout\,
	datad => \res_img|LessThan25~0_combout\,
	combout => \res_img|process_1~29_combout\);

-- Location: LCCOMB_X25_Y20_N8
\res_img|LessThan23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan23~0_combout\ = (!\res_img|v_count\(8) & (((!\res_img|v_count\(6) & \res_img|process_1~29_combout\)) # (!\res_img|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(6),
	datab => \res_img|v_count\(8),
	datac => \res_img|v_count\(7),
	datad => \res_img|process_1~29_combout\,
	combout => \res_img|LessThan23~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\res_img|process_1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~82_combout\ = (\res_img|h_count\(8)) # ((\res_img|h_count\(6)) # ((\res_img|h_count\(9)) # (!\res_img|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datab => \res_img|h_count\(6),
	datac => \res_img|h_count\(4),
	datad => \res_img|h_count\(9),
	combout => \res_img|process_1~82_combout\);

-- Location: LCCOMB_X24_Y18_N28
\res_img|LessThan29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan29~0_combout\ = (!\res_img|h_count\(3) & (((!\res_img|h_count\(0) & !\res_img|h_count\(1))) # (!\res_img|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(3),
	datab => \res_img|h_count\(0),
	datac => \res_img|h_count\(2),
	datad => \res_img|h_count\(1),
	combout => \res_img|LessThan29~0_combout\);

-- Location: LCCOMB_X23_Y18_N28
\res_img|LessThan17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan17~0_combout\ = (!\res_img|h_count\(5) & ((\res_img|LessThan29~0_combout\) # (!\res_img|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(5),
	datac => \res_img|h_count\(4),
	datad => \res_img|LessThan29~0_combout\,
	combout => \res_img|LessThan17~0_combout\);

-- Location: LCCOMB_X23_Y20_N22
\res_img|process_1~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~83_combout\ = ((\res_img|process_1~82_combout\) # (!\res_img|LessThan17~0_combout\)) # (!\res_img|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(7),
	datab => \res_img|process_1~82_combout\,
	datad => \res_img|LessThan17~0_combout\,
	combout => \res_img|process_1~83_combout\);

-- Location: LCCOMB_X23_Y20_N20
\res_img|rgb2[13]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~35_combout\ = (\res_img|LessThan28~1_combout\ & (!\res_img|v_count\(9) & (!\res_img|LessThan23~0_combout\ & \res_img|process_1~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan28~1_combout\,
	datab => \res_img|v_count\(9),
	datac => \res_img|LessThan23~0_combout\,
	datad => \res_img|process_1~83_combout\,
	combout => \res_img|rgb2[13]~35_combout\);

-- Location: LCCOMB_X23_Y20_N10
\res_img|rgb2[13]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~36_combout\ = (\res_img|de_1~q\ & \res_img|rgb2[13]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|de_1~q\,
	datad => \res_img|rgb2[13]~35_combout\,
	combout => \res_img|rgb2[13]~36_combout\);

-- Location: LCCOMB_X23_Y20_N4
\res_img|rgb2[13]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~37_combout\ = (\res_img|h_count\(8) & !\res_img|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datad => \res_img|h_count\(9),
	combout => \res_img|rgb2[13]~37_combout\);

-- Location: LCCOMB_X24_Y18_N20
\res_img|LessThan34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan34~0_combout\ = (!\res_img|h_count\(2) & ((!\res_img|h_count\(1)) # (!\res_img|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(0),
	datac => \res_img|h_count\(2),
	datad => \res_img|h_count\(1),
	combout => \res_img|LessThan34~0_combout\);

-- Location: LCCOMB_X24_Y18_N30
\res_img|LessThan34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan34~1_combout\ = (\res_img|h_count\(5)) # ((\res_img|h_count\(4)) # ((\res_img|h_count\(3) & !\res_img|LessThan34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datab => \res_img|h_count\(4),
	datac => \res_img|h_count\(3),
	datad => \res_img|LessThan34~0_combout\,
	combout => \res_img|LessThan34~1_combout\);

-- Location: LCCOMB_X23_Y20_N30
\res_img|rgb2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~38_combout\ = (\res_img|h_count\(7) & (\res_img|h_count\(6) & (\res_img|LessThan34~1_combout\ & \res_img|LessThan17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(7),
	datab => \res_img|h_count\(6),
	datac => \res_img|LessThan34~1_combout\,
	datad => \res_img|LessThan17~0_combout\,
	combout => \res_img|rgb2~38_combout\);

-- Location: LCCOMB_X24_Y18_N24
\res_img|LessThan20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan20~0_combout\ = ((!\res_img|h_count\(4) & ((\res_img|LessThan34~0_combout\) # (!\res_img|h_count\(3))))) # (!\res_img|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datab => \res_img|h_count\(4),
	datac => \res_img|h_count\(3),
	datad => \res_img|LessThan34~0_combout\,
	combout => \res_img|LessThan20~0_combout\);

-- Location: LCCOMB_X24_Y19_N12
\res_img|LessThan29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan29~2_combout\ = (\res_img|h_count\(5) & (\res_img|h_count\(4) & !\res_img|LessThan29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datac => \res_img|h_count\(4),
	datad => \res_img|LessThan29~0_combout\,
	combout => \res_img|LessThan29~2_combout\);

-- Location: LCCOMB_X24_Y19_N18
\res_img|rgb2[13]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~25_combout\ = (!\res_img|h_count\(7) & (!\res_img|h_count\(6) & (!\res_img|LessThan20~0_combout\ & !\res_img|LessThan29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(7),
	datab => \res_img|h_count\(6),
	datac => \res_img|LessThan20~0_combout\,
	datad => \res_img|LessThan29~2_combout\,
	combout => \res_img|rgb2[13]~25_combout\);

-- Location: LCCOMB_X24_Y19_N10
\res_img|LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan10~0_combout\ = ((!\res_img|h_count\(6) & (\res_img|LessThan20~0_combout\ & !\res_img|h_count\(7)))) # (!\res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datab => \res_img|h_count\(6),
	datac => \res_img|LessThan20~0_combout\,
	datad => \res_img|h_count\(7),
	combout => \res_img|LessThan10~0_combout\);

-- Location: LCCOMB_X24_Y18_N26
\res_img|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan8~0_combout\ = ((!\res_img|h_count\(3) & ((!\res_img|h_count\(1)) # (!\res_img|h_count\(2))))) # (!\res_img|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(3),
	datab => \res_img|h_count\(4),
	datac => \res_img|h_count\(2),
	datad => \res_img|h_count\(1),
	combout => \res_img|LessThan8~0_combout\);

-- Location: LCCOMB_X23_Y18_N10
\res_img|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan6~0_combout\ = (!\res_img|h_count\(5) & !\res_img|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(5),
	datac => \res_img|h_count\(6),
	combout => \res_img|LessThan6~0_combout\);

-- Location: LCCOMB_X24_Y19_N16
\res_img|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan8~1_combout\ = (!\res_img|h_count\(8) & (((\res_img|LessThan8~0_combout\ & \res_img|LessThan6~0_combout\)) # (!\res_img|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datab => \res_img|h_count\(7),
	datac => \res_img|LessThan8~0_combout\,
	datad => \res_img|LessThan6~0_combout\,
	combout => \res_img|LessThan8~1_combout\);

-- Location: LCCOMB_X24_Y19_N26
\res_img|rgb2[13]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~26_combout\ = (\res_img|h_count\(7) & (\res_img|LessThan34~1_combout\ & \res_img|h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(7),
	datac => \res_img|LessThan34~1_combout\,
	datad => \res_img|h_count\(6),
	combout => \res_img|rgb2[13]~26_combout\);

-- Location: LCCOMB_X24_Y19_N24
\res_img|process_1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~76_combout\ = ((!\res_img|h_count\(7) & (!\res_img|h_count\(6) & !\res_img|LessThan29~2_combout\))) # (!\res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datab => \res_img|h_count\(7),
	datac => \res_img|h_count\(6),
	datad => \res_img|LessThan29~2_combout\,
	combout => \res_img|process_1~76_combout\);

-- Location: LCCOMB_X24_Y19_N20
\res_img|rgb2[13]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~27_combout\ = (\res_img|LessThan10~0_combout\ & (\res_img|LessThan8~1_combout\ & ((\res_img|rgb2[13]~26_combout\) # (\res_img|process_1~76_combout\)))) # (!\res_img|LessThan10~0_combout\ & (((\res_img|rgb2[13]~26_combout\) # 
-- (\res_img|process_1~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan10~0_combout\,
	datab => \res_img|LessThan8~1_combout\,
	datac => \res_img|rgb2[13]~26_combout\,
	datad => \res_img|process_1~76_combout\,
	combout => \res_img|rgb2[13]~27_combout\);

-- Location: LCCOMB_X24_Y19_N22
\res_img|rgb2[13]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~28_combout\ = (!\res_img|h_count\(9) & (((\res_img|h_count\(8) & \res_img|rgb2[13]~25_combout\)) # (!\res_img|rgb2[13]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datab => \res_img|rgb2[13]~25_combout\,
	datac => \res_img|h_count\(9),
	datad => \res_img|rgb2[13]~27_combout\,
	combout => \res_img|rgb2[13]~28_combout\);

-- Location: LCCOMB_X23_Y20_N16
\res_img|rgb2[13]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~39_combout\ = (\res_img|rgb2[13]~36_combout\ & (((\res_img|rgb2[13]~28_combout\) # (!\res_img|rgb2~38_combout\)) # (!\res_img|rgb2[13]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2[13]~36_combout\,
	datab => \res_img|rgb2[13]~37_combout\,
	datac => \res_img|rgb2~38_combout\,
	datad => \res_img|rgb2[13]~28_combout\,
	combout => \res_img|rgb2[13]~39_combout\);

-- Location: LCCOMB_X24_Y17_N10
\res_img|LessThan26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan26~2_combout\ = (\res_img|v_count\(3) & \res_img|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|v_count\(3),
	datad => \res_img|v_count\(2),
	combout => \res_img|LessThan26~2_combout\);

-- Location: LCCOMB_X24_Y17_N12
\res_img|process_1~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~77_combout\ = (\res_img|v_count\(5) & ((\res_img|v_count\(4)) # ((!\res_img|Equal1~0_combout\ & \res_img|LessThan26~2_combout\)))) # (!\res_img|v_count\(5) & (((!\res_img|v_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Equal1~0_combout\,
	datab => \res_img|v_count\(5),
	datac => \res_img|v_count\(4),
	datad => \res_img|LessThan26~2_combout\,
	combout => \res_img|process_1~77_combout\);

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

-- Location: LCCOMB_X26_Y18_N12
\res_img|int_res~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|int_res~0_combout\ = (\mode~input_o\ & \Res[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~input_o\,
	datad => \Res[3]~input_o\,
	combout => \res_img|int_res~0_combout\);

-- Location: LCCOMB_X24_Y17_N28
\res_img|process_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~24_combout\ = (\res_img|v_count\(8) & (!\res_img|v_count\(9) & !\res_img|v_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|v_count\(8),
	datac => \res_img|v_count\(9),
	datad => \res_img|v_count\(6),
	combout => \res_img|process_1~24_combout\);

-- Location: LCCOMB_X23_Y20_N14
\res_img|process_1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~78_combout\ = (!\res_img|v_count\(7) & (!\res_img|process_1~77_combout\ & (\res_img|int_res~0_combout\ & \res_img|process_1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(7),
	datab => \res_img|process_1~77_combout\,
	datac => \res_img|int_res~0_combout\,
	datad => \res_img|process_1~24_combout\,
	combout => \res_img|process_1~78_combout\);

-- Location: LCCOMB_X24_Y17_N2
\res_img|process_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~25_combout\ = (!\res_img|v_count\(3) & (((!\res_img|v_count\(2)) # (!\res_img|v_count\(1))) # (!\res_img|v_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(0),
	datab => \res_img|v_count\(1),
	datac => \res_img|v_count\(3),
	datad => \res_img|v_count\(2),
	combout => \res_img|process_1~25_combout\);

-- Location: LCCOMB_X24_Y17_N30
\res_img|process_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~26_combout\ = ((!\res_img|v_count\(5) & ((\res_img|process_1~25_combout\) # (!\res_img|v_count\(4))))) # (!\res_img|LessThan28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(5),
	datab => \res_img|v_count\(4),
	datac => \res_img|LessThan28~0_combout\,
	datad => \res_img|process_1~25_combout\,
	combout => \res_img|process_1~26_combout\);

-- Location: LCCOMB_X24_Y17_N22
\res_img|process_1~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~79_combout\ = (\res_img|process_1~24_combout\ & ((\res_img|v_count\(7) & (!\res_img|process_1~26_combout\)) # (!\res_img|v_count\(7) & ((!\res_img|process_1~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(7),
	datab => \res_img|process_1~24_combout\,
	datac => \res_img|process_1~26_combout\,
	datad => \res_img|process_1~77_combout\,
	combout => \res_img|process_1~79_combout\);

-- Location: LCCOMB_X24_Y19_N14
\res_img|rgb2[13]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~30_combout\ = (\res_img|LessThan8~1_combout\) # ((\res_img|h_count\(9)) # (!\res_img|LessThan10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|LessThan8~1_combout\,
	datac => \res_img|h_count\(9),
	datad => \res_img|LessThan10~0_combout\,
	combout => \res_img|rgb2[13]~30_combout\);

-- Location: LCCOMB_X24_Y19_N28
\res_img|rgb2[13]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~29_combout\ = ((\res_img|h_count\(9)) # (!\res_img|rgb2[13]~25_combout\)) # (!\res_img|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datac => \res_img|h_count\(9),
	datad => \res_img|rgb2[13]~25_combout\,
	combout => \res_img|rgb2[13]~29_combout\);

-- Location: LCCOMB_X24_Y20_N8
\res_img|rgb2[13]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~31_combout\ = (\res_img|rgb2[13]~28_combout\ & ((\res_img|rgb2[13]~29_combout\) # (!\res_img|rgb2[13]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|rgb2[13]~30_combout\,
	datac => \res_img|rgb2[13]~29_combout\,
	datad => \res_img|rgb2[13]~28_combout\,
	combout => \res_img|rgb2[13]~31_combout\);

-- Location: LCCOMB_X25_Y18_N28
\res_img|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan0~0_combout\ = (!\res_img|h_count\(8) & !\res_img|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|h_count\(8),
	datad => \res_img|h_count\(7),
	combout => \res_img|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y18_N24
\res_img|process_1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~80_combout\ = (\res_img|h_count\(9) & (((\res_img|h_count\(6) & !\res_img|LessThan20~0_combout\)) # (!\res_img|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(6),
	datab => \res_img|h_count\(9),
	datac => \res_img|LessThan20~0_combout\,
	datad => \res_img|LessThan0~0_combout\,
	combout => \res_img|process_1~80_combout\);

-- Location: LCCOMB_X25_Y18_N20
\res_img|process_1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~62_combout\ = (\res_img|h_count\(7) & (\res_img|h_count\(6) & (\res_img|h_count\(8) & !\res_img|LessThan17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(7),
	datab => \res_img|h_count\(6),
	datac => \res_img|h_count\(8),
	datad => \res_img|LessThan17~0_combout\,
	combout => \res_img|process_1~62_combout\);

-- Location: LCCOMB_X25_Y18_N18
\res_img|process_1~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~81_combout\ = (\res_img|process_1~80_combout\) # ((!\res_img|h_count\(9) & !\res_img|process_1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|process_1~80_combout\,
	datac => \res_img|h_count\(9),
	datad => \res_img|process_1~62_combout\,
	combout => \res_img|process_1~81_combout\);

-- Location: LCCOMB_X24_Y20_N10
\res_img|rgb2[13]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~32_combout\ = (\res_img|rgb2[13]~28_combout\ & (\res_img|rgb2[13]~30_combout\)) # (!\res_img|rgb2[13]~28_combout\ & ((\res_img|process_1~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|rgb2[13]~30_combout\,
	datac => \res_img|process_1~81_combout\,
	datad => \res_img|rgb2[13]~28_combout\,
	combout => \res_img|rgb2[13]~32_combout\);

-- Location: LCCOMB_X24_Y20_N0
\res_img|rgb2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~33_combout\ = (\res_img|rgb2[13]~31_combout\ & ((\res_img|rgb2[13]~32_combout\ & (\res_img|process_1~78_combout\)) # (!\res_img|rgb2[13]~32_combout\ & ((\res_img|process_1~79_combout\))))) # (!\res_img|rgb2[13]~31_combout\ & 
-- (((!\res_img|rgb2[13]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~78_combout\,
	datab => \res_img|process_1~79_combout\,
	datac => \res_img|rgb2[13]~31_combout\,
	datad => \res_img|rgb2[13]~32_combout\,
	combout => \res_img|rgb2~33_combout\);

-- Location: LCCOMB_X23_Y18_N24
\res_img|process_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~21_combout\ = (\res_img|h_count\(5) & \res_img|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|h_count\(5),
	datad => \res_img|h_count\(4),
	combout => \res_img|process_1~21_combout\);

-- Location: LCCOMB_X23_Y18_N22
\res_img|process_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~23_combout\ = (((!\res_img|LessThan0~0_combout\) # (!\res_img|h_count\(6))) # (!\res_img|process_1~21_combout\)) # (!\res_img|LessThan29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan29~0_combout\,
	datab => \res_img|process_1~21_combout\,
	datac => \res_img|h_count\(6),
	datad => \res_img|LessThan0~0_combout\,
	combout => \res_img|process_1~23_combout\);

-- Location: LCCOMB_X23_Y18_N2
\res_img|LessThan29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan29~1_combout\ = (!\res_img|h_count\(7) & (((\res_img|LessThan29~0_combout\) # (!\res_img|process_1~21_combout\)) # (!\res_img|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(7),
	datab => \res_img|h_count\(6),
	datac => \res_img|process_1~21_combout\,
	datad => \res_img|LessThan29~0_combout\,
	combout => \res_img|LessThan29~1_combout\);

-- Location: LCCOMB_X23_Y18_N6
\res_img|process_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~20_combout\ = (\res_img|h_count\(8) & ((\res_img|h_count\(6)) # ((\res_img|LessThan34~1_combout\) # (\res_img|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datab => \res_img|h_count\(6),
	datac => \res_img|LessThan34~1_combout\,
	datad => \res_img|h_count\(7),
	combout => \res_img|process_1~20_combout\);

-- Location: LCCOMB_X23_Y18_N0
\res_img|process_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~22_combout\ = (\res_img|process_1~20_combout\) # ((!\res_img|h_count\(8) & \res_img|LessThan29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datac => \res_img|LessThan29~1_combout\,
	datad => \res_img|process_1~20_combout\,
	combout => \res_img|process_1~22_combout\);

-- Location: LCCOMB_X23_Y18_N8
\res_img|rgb2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~17_combout\ = ((\res_img|process_1~22_combout\) # (!\res_img|process_1~23_combout\)) # (!\res_img|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(9),
	datac => \res_img|process_1~23_combout\,
	datad => \res_img|process_1~22_combout\,
	combout => \res_img|rgb2~17_combout\);

-- Location: LCCOMB_X27_Y19_N28
\res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ = (!\Res[1]~input_o\ & (!\Res[0]~input_o\ & (\mode~input_o\ & \Res[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res[1]~input_o\,
	datab => \Res[0]~input_o\,
	datac => \mode~input_o\,
	datad => \Res[3]~input_o\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\);

-- Location: LCCOMB_X27_Y19_N26
\res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ = (\res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ & (\Res[2]~input_o\ $ (((\Res[3]~input_o\))))) # (!\res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ 
-- & (((!\mode~input_o\ & \Res[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res[2]~input_o\,
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\,
	datac => \mode~input_o\,
	datad => \Res[3]~input_o\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\);

-- Location: LCCOMB_X27_Y19_N30
\res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ = \Res[2]~input_o\ $ (((\res_img|int_res~0_combout\ & ((\Res[0]~input_o\) # (\Res[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res[2]~input_o\,
	datab => \Res[0]~input_o\,
	datac => \Res[1]~input_o\,
	datad => \res_img|int_res~0_combout\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\);

-- Location: LCCOMB_X27_Y19_N24
\res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\ = \Res[1]~input_o\ $ (((\Res[0]~input_o\ & (\mode~input_o\ & \Res[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res[1]~input_o\,
	datab => \Res[0]~input_o\,
	datac => \mode~input_o\,
	datad => \Res[3]~input_o\,
	combout => \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\);

-- Location: LCCOMB_X27_Y19_N6
\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY(\res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[1]~4_combout\,
	datad => VCC,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X27_Y19_N8
\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[2]~3_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X27_Y19_N10
\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((\res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\ & !\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|my_abs_num|cs1a[3]~5_combout\,
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X27_Y19_N12
\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X27_Y19_N14
\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X26_Y18_N14
\res_img|Div0|auto_generated|divider|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~0_combout\ = \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (VCC)
-- \res_img|Div0|auto_generated|divider|op_1~1\ = CARRY(\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	combout => \res_img|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X26_Y18_N16
\res_img|Div0|auto_generated|divider|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~2_combout\ = !\res_img|Div0|auto_generated|divider|op_1~1\
-- \res_img|Div0|auto_generated|divider|op_1~3\ = CARRY(!\res_img|Div0|auto_generated|divider|op_1~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~1\,
	combout => \res_img|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X26_Y18_N18
\res_img|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~4_combout\ = \res_img|Div0|auto_generated|divider|op_1~3\ $ (GND)
-- \res_img|Div0|auto_generated|divider|op_1~5\ = CARRY(!\res_img|Div0|auto_generated|divider|op_1~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \res_img|Div0|auto_generated|divider|op_1~3\,
	combout => \res_img|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \res_img|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X26_Y18_N20
\res_img|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|op_1~6_combout\ = !\res_img|Div0|auto_generated|divider|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Div0|auto_generated|divider|op_1~5\,
	combout => \res_img|Div0|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X26_Y18_N24
\res_img|Div0|auto_generated|divider|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|_~4_combout\ = (\res_img|Div0|auto_generated|divider|op_1~6_combout\ & (\mode~input_o\ & \Res[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|op_1~6_combout\,
	datac => \mode~input_o\,
	datad => \Res[3]~input_o\,
	combout => \res_img|Div0|auto_generated|divider|_~4_combout\);

-- Location: LCCOMB_X26_Y18_N28
\res_img|Div0|auto_generated|divider|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|_~5_combout\ = (\res_img|Div0|auto_generated|divider|op_1~4_combout\ & (\mode~input_o\ & \Res[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|op_1~4_combout\,
	datac => \mode~input_o\,
	datad => \Res[3]~input_o\,
	combout => \res_img|Div0|auto_generated|divider|_~5_combout\);

-- Location: LCCOMB_X26_Y18_N6
\res_img|Div0|auto_generated|divider|quotient[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ = (\res_img|Div0|auto_generated|divider|op_1~2_combout\ & (\mode~input_o\ & \Res[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|op_1~2_combout\,
	datac => \mode~input_o\,
	datad => \Res[3]~input_o\,
	combout => \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\);

-- Location: LCCOMB_X26_Y18_N22
\res_img|Div0|auto_generated|divider|quotient[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ = (\Res[3]~input_o\ & ((\mode~input_o\ & (\res_img|Div0|auto_generated|divider|op_1~0_combout\)) # (!\mode~input_o\ & 
-- ((!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\Res[3]~input_o\ & (((!\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res[3]~input_o\,
	datab => \mode~input_o\,
	datac => \res_img|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \res_img|Div0|auto_generated|divider|quotient[0]~5_combout\);

-- Location: LCCOMB_X29_Y20_N20
\res_img|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~0_combout\ = (\res_img|Div0|auto_generated|divider|_~5_combout\ & (\res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ $ (VCC))) # (!\res_img|Div0|auto_generated|divider|_~5_combout\ & 
-- (\res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & VCC))
-- \res_img|Add2~1\ = CARRY((\res_img|Div0|auto_generated|divider|_~5_combout\ & \res_img|Div0|auto_generated|divider|quotient[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|_~5_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datad => VCC,
	combout => \res_img|Add2~0_combout\,
	cout => \res_img|Add2~1\);

-- Location: LCCOMB_X29_Y20_N22
\res_img|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~2_combout\ = (\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & ((\res_img|Div0|auto_generated|divider|_~4_combout\ & (\res_img|Add2~1\ & VCC)) # (!\res_img|Div0|auto_generated|divider|_~4_combout\ & (!\res_img|Add2~1\)))) # 
-- (!\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & ((\res_img|Div0|auto_generated|divider|_~4_combout\ & (!\res_img|Add2~1\)) # (!\res_img|Div0|auto_generated|divider|_~4_combout\ & ((\res_img|Add2~1\) # (GND)))))
-- \res_img|Add2~3\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & (!\res_img|Div0|auto_generated|divider|_~4_combout\ & !\res_img|Add2~1\)) # (!\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & ((!\res_img|Add2~1\) # 
-- (!\res_img|Div0|auto_generated|divider|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datab => \res_img|Div0|auto_generated|divider|_~4_combout\,
	datad => VCC,
	cin => \res_img|Add2~1\,
	combout => \res_img|Add2~2_combout\,
	cout => \res_img|Add2~3\);

-- Location: LCCOMB_X29_Y20_N24
\res_img|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~4_combout\ = ((\res_img|Div0|auto_generated|divider|_~5_combout\ $ (\res_img|Div0|auto_generated|divider|_~4_combout\ $ (!\res_img|Add2~3\)))) # (GND)
-- \res_img|Add2~5\ = CARRY((\res_img|Div0|auto_generated|divider|_~5_combout\ & ((\res_img|Div0|auto_generated|divider|_~4_combout\) # (!\res_img|Add2~3\))) # (!\res_img|Div0|auto_generated|divider|_~5_combout\ & 
-- (\res_img|Div0|auto_generated|divider|_~4_combout\ & !\res_img|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|_~5_combout\,
	datab => \res_img|Div0|auto_generated|divider|_~4_combout\,
	datad => VCC,
	cin => \res_img|Add2~3\,
	combout => \res_img|Add2~4_combout\,
	cout => \res_img|Add2~5\);

-- Location: LCCOMB_X29_Y20_N26
\res_img|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~6_combout\ = (((\res_img|Add2~5\))) # (GND)
-- \res_img|Add2~7\ = CARRY(\res_img|Div0|auto_generated|divider|_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|_~4_combout\,
	datad => VCC,
	cin => \res_img|Add2~5\,
	combout => \res_img|Add2~6_combout\,
	cout => \res_img|Add2~7\);

-- Location: LCCOMB_X29_Y20_N28
\res_img|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add2~8_combout\ = \res_img|Add2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \res_img|Add2~7\,
	combout => \res_img|Add2~8_combout\);

-- Location: LCCOMB_X27_Y20_N10
\res_img|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add3~0_combout\ = (\Res[1]~input_o\ & ((GND) # (!\res_img|Div0|auto_generated|divider|quotient[0]~5_combout\))) # (!\Res[1]~input_o\ & (\res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ $ (GND)))
-- \res_img|Add3~1\ = CARRY((\Res[1]~input_o\) # (!\res_img|Div0|auto_generated|divider|quotient[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res[1]~input_o\,
	datab => \res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datad => VCC,
	combout => \res_img|Add3~0_combout\,
	cout => \res_img|Add3~1\);

-- Location: LCCOMB_X27_Y20_N12
\res_img|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add3~2_combout\ = (\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & ((\Res[2]~input_o\ & (!\res_img|Add3~1\)) # (!\Res[2]~input_o\ & ((\res_img|Add3~1\) # (GND))))) # (!\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & 
-- ((\Res[2]~input_o\ & (\res_img|Add3~1\ & VCC)) # (!\Res[2]~input_o\ & (!\res_img|Add3~1\))))
-- \res_img|Add3~3\ = CARRY((\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & ((!\res_img|Add3~1\) # (!\Res[2]~input_o\))) # (!\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & (!\Res[2]~input_o\ & !\res_img|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datab => \Res[2]~input_o\,
	datad => VCC,
	cin => \res_img|Add3~1\,
	combout => \res_img|Add3~2_combout\,
	cout => \res_img|Add3~3\);

-- Location: LCCOMB_X27_Y20_N14
\res_img|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add3~4_combout\ = ((\res_img|Add2~0_combout\ $ (\Res[3]~input_o\ $ (\res_img|Add3~3\)))) # (GND)
-- \res_img|Add3~5\ = CARRY((\res_img|Add2~0_combout\ & (\Res[3]~input_o\ & !\res_img|Add3~3\)) # (!\res_img|Add2~0_combout\ & ((\Res[3]~input_o\) # (!\res_img|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~0_combout\,
	datab => \Res[3]~input_o\,
	datad => VCC,
	cin => \res_img|Add3~3\,
	combout => \res_img|Add3~4_combout\,
	cout => \res_img|Add3~5\);

-- Location: LCCOMB_X27_Y20_N16
\res_img|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add3~6_combout\ = (\res_img|Add2~2_combout\ & ((\res_img|int_res~0_combout\ & (!\res_img|Add3~5\)) # (!\res_img|int_res~0_combout\ & ((\res_img|Add3~5\) # (GND))))) # (!\res_img|Add2~2_combout\ & ((\res_img|int_res~0_combout\ & (\res_img|Add3~5\ 
-- & VCC)) # (!\res_img|int_res~0_combout\ & (!\res_img|Add3~5\))))
-- \res_img|Add3~7\ = CARRY((\res_img|Add2~2_combout\ & ((!\res_img|Add3~5\) # (!\res_img|int_res~0_combout\))) # (!\res_img|Add2~2_combout\ & (!\res_img|int_res~0_combout\ & !\res_img|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~2_combout\,
	datab => \res_img|int_res~0_combout\,
	datad => VCC,
	cin => \res_img|Add3~5\,
	combout => \res_img|Add3~6_combout\,
	cout => \res_img|Add3~7\);

-- Location: LCCOMB_X27_Y20_N18
\res_img|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add3~8_combout\ = ((\res_img|int_res~0_combout\ $ (\res_img|Add2~4_combout\ $ (\res_img|Add3~7\)))) # (GND)
-- \res_img|Add3~9\ = CARRY((\res_img|int_res~0_combout\ & ((!\res_img|Add3~7\) # (!\res_img|Add2~4_combout\))) # (!\res_img|int_res~0_combout\ & (!\res_img|Add2~4_combout\ & !\res_img|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res~0_combout\,
	datab => \res_img|Add2~4_combout\,
	datad => VCC,
	cin => \res_img|Add3~7\,
	combout => \res_img|Add3~8_combout\,
	cout => \res_img|Add3~9\);

-- Location: LCCOMB_X27_Y20_N20
\res_img|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add3~10_combout\ = (\res_img|Add2~6_combout\ & ((\res_img|int_res~0_combout\ & (!\res_img|Add3~9\)) # (!\res_img|int_res~0_combout\ & ((\res_img|Add3~9\) # (GND))))) # (!\res_img|Add2~6_combout\ & ((\res_img|int_res~0_combout\ & (\res_img|Add3~9\ 
-- & VCC)) # (!\res_img|int_res~0_combout\ & (!\res_img|Add3~9\))))
-- \res_img|Add3~11\ = CARRY((\res_img|Add2~6_combout\ & ((!\res_img|Add3~9\) # (!\res_img|int_res~0_combout\))) # (!\res_img|Add2~6_combout\ & (!\res_img|int_res~0_combout\ & !\res_img|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~6_combout\,
	datab => \res_img|int_res~0_combout\,
	datad => VCC,
	cin => \res_img|Add3~9\,
	combout => \res_img|Add3~10_combout\,
	cout => \res_img|Add3~11\);

-- Location: LCCOMB_X27_Y20_N22
\res_img|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add3~12_combout\ = ((\res_img|Add2~8_combout\ $ (\res_img|int_res~0_combout\ $ (\res_img|Add3~11\)))) # (GND)
-- \res_img|Add3~13\ = CARRY((\res_img|Add2~8_combout\ & (\res_img|int_res~0_combout\ & !\res_img|Add3~11\)) # (!\res_img|Add2~8_combout\ & ((\res_img|int_res~0_combout\) # (!\res_img|Add3~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add2~8_combout\,
	datab => \res_img|int_res~0_combout\,
	datad => VCC,
	cin => \res_img|Add3~11\,
	combout => \res_img|Add3~12_combout\,
	cout => \res_img|Add3~13\);

-- Location: LCCOMB_X27_Y20_N24
\res_img|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add3~14_combout\ = (\res_img|Div0|auto_generated|divider|_~4_combout\ & ((\res_img|int_res~0_combout\ & (!\res_img|Add3~13\)) # (!\res_img|int_res~0_combout\ & ((\res_img|Add3~13\) # (GND))))) # (!\res_img|Div0|auto_generated|divider|_~4_combout\ 
-- & ((\res_img|int_res~0_combout\ & (\res_img|Add3~13\ & VCC)) # (!\res_img|int_res~0_combout\ & (!\res_img|Add3~13\))))
-- \res_img|Add3~15\ = CARRY((\res_img|Div0|auto_generated|divider|_~4_combout\ & ((!\res_img|Add3~13\) # (!\res_img|int_res~0_combout\))) # (!\res_img|Div0|auto_generated|divider|_~4_combout\ & (!\res_img|int_res~0_combout\ & !\res_img|Add3~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|_~4_combout\,
	datab => \res_img|int_res~0_combout\,
	datad => VCC,
	cin => \res_img|Add3~13\,
	combout => \res_img|Add3~14_combout\,
	cout => \res_img|Add3~15\);

-- Location: LCCOMB_X26_Y20_N12
\res_img|process_1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~35_combout\ = (!\res_img|Add3~14_combout\ & ((\res_img|Add3~2_combout\ & (!\res_img|Add3~4_combout\ & !\Res[0]~input_o\)) # (!\res_img|Add3~2_combout\ & (\res_img|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add3~14_combout\,
	datab => \res_img|Add3~2_combout\,
	datac => \res_img|Add3~4_combout\,
	datad => \Res[0]~input_o\,
	combout => \res_img|process_1~35_combout\);

-- Location: LCCOMB_X26_Y20_N24
\res_img|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal12~0_combout\ = (!\res_img|Add3~8_combout\ & (!\res_img|Add3~12_combout\ & (!\res_img|Add3~10_combout\ & !\res_img|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add3~8_combout\,
	datab => \res_img|Add3~12_combout\,
	datac => \res_img|Add3~10_combout\,
	datad => \res_img|Add3~6_combout\,
	combout => \res_img|Equal12~0_combout\);

-- Location: LCCOMB_X27_Y20_N26
\res_img|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Add3~16_combout\ = \res_img|int_res~0_combout\ $ (\res_img|Add3~15\ $ (\res_img|Div0|auto_generated|divider|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \res_img|int_res~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|_~4_combout\,
	cin => \res_img|Add3~15\,
	combout => \res_img|Add3~16_combout\);

-- Location: LCCOMB_X26_Y20_N26
\res_img|process_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~36_combout\ = (((\res_img|Add3~0_combout\) # (\res_img|Add3~16_combout\)) # (!\res_img|Equal12~0_combout\)) # (!\res_img|process_1~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~35_combout\,
	datab => \res_img|Equal12~0_combout\,
	datac => \res_img|Add3~0_combout\,
	datad => \res_img|Add3~16_combout\,
	combout => \res_img|process_1~36_combout\);

-- Location: LCCOMB_X26_Y20_N2
\res_img|Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal12~1_combout\ = (!\res_img|Add3~14_combout\ & (\res_img|Equal12~0_combout\ & (!\res_img|Add3~4_combout\ & !\res_img|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add3~14_combout\,
	datab => \res_img|Equal12~0_combout\,
	datac => \res_img|Add3~4_combout\,
	datad => \res_img|Add3~16_combout\,
	combout => \res_img|Equal12~1_combout\);

-- Location: LCCOMB_X26_Y20_N14
\res_img|process_1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~49_combout\ = (\res_img|Equal12~1_combout\ & (((\Res[0]~input_o\ & \res_img|Add3~0_combout\)) # (!\res_img|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res[0]~input_o\,
	datab => \res_img|Add3~2_combout\,
	datac => \res_img|Add3~0_combout\,
	datad => \res_img|Equal12~1_combout\,
	combout => \res_img|process_1~49_combout\);

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

-- Location: LCCOMB_X24_Y18_N22
\res_img|LessThan32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan32~0_combout\ = (((!\res_img|h_count\(1) & !\res_img|h_count\(0))) # (!\res_img|h_count\(2))) # (!\res_img|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(3),
	datab => \res_img|h_count\(1),
	datac => \res_img|h_count\(2),
	datad => \res_img|h_count\(0),
	combout => \res_img|LessThan32~0_combout\);

-- Location: LCCOMB_X25_Y18_N2
\res_img|process_1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~44_combout\ = (\res_img|h_count\(5) & (\res_img|h_count\(6) & ((\res_img|h_count\(4)) # (!\res_img|LessThan32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datab => \res_img|h_count\(6),
	datac => \res_img|h_count\(4),
	datad => \res_img|LessThan32~0_combout\,
	combout => \res_img|process_1~44_combout\);

-- Location: LCCOMB_X25_Y20_N18
\res_img|process_1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~45_combout\ = (!\eror~input_o\ & ((\res_img|h_count\(8) & (!\res_img|h_count\(7))) # (!\res_img|h_count\(8) & ((\res_img|process_1~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(7),
	datab => \res_img|h_count\(8),
	datac => \eror~input_o\,
	datad => \res_img|process_1~44_combout\,
	combout => \res_img|process_1~45_combout\);

-- Location: LCCOMB_X25_Y20_N4
\res_img|process_1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~46_combout\ = (\res_img|process_1~45_combout\ & ((\res_img|h_count\(7)) # ((!\res_img|h_count\(6) & !\res_img|LessThan34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(7),
	datab => \res_img|h_count\(6),
	datac => \res_img|LessThan34~1_combout\,
	datad => \res_img|process_1~45_combout\,
	combout => \res_img|process_1~46_combout\);

-- Location: LCCOMB_X25_Y17_N2
\res_img|LessThan26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan26~0_combout\ = (\res_img|v_count\(4)) # ((\res_img|v_count\(3) & (!\res_img|Equal1~0_combout\ & \res_img|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(3),
	datab => \res_img|v_count\(4),
	datac => \res_img|Equal1~0_combout\,
	datad => \res_img|v_count\(2),
	combout => \res_img|LessThan26~0_combout\);

-- Location: LCCOMB_X24_Y20_N24
\res_img|LessThan26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan26~1_combout\ = (!\res_img|v_count\(6) & (!\res_img|v_count\(7) & ((!\res_img|LessThan26~0_combout\) # (!\res_img|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(6),
	datab => \res_img|v_count\(7),
	datac => \res_img|v_count\(5),
	datad => \res_img|LessThan26~0_combout\,
	combout => \res_img|LessThan26~1_combout\);

-- Location: LCCOMB_X25_Y20_N26
\res_img|process_1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~33_combout\ = (!\res_img|v_count\(9) & (!\res_img|LessThan23~0_combout\ & ((\res_img|LessThan26~1_combout\) # (!\res_img|v_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(9),
	datab => \res_img|v_count\(8),
	datac => \res_img|LessThan23~0_combout\,
	datad => \res_img|LessThan26~1_combout\,
	combout => \res_img|process_1~33_combout\);

-- Location: LCCOMB_X25_Y20_N16
\res_img|process_1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~50_combout\ = (\res_img|process_1~46_combout\ & (\res_img|process_1~33_combout\ & ((\res_img|process_1~49_combout\) # (!\res_img|process_1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~36_combout\,
	datab => \res_img|process_1~49_combout\,
	datac => \res_img|process_1~46_combout\,
	datad => \res_img|process_1~33_combout\,
	combout => \res_img|process_1~50_combout\);

-- Location: LCCOMB_X27_Y20_N8
\res_img|process_1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~37_combout\ = (!\res_img|Add3~16_combout\ & (\res_img|Add3~0_combout\ $ (\Res[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Add3~0_combout\,
	datac => \res_img|Add3~16_combout\,
	datad => \Res[0]~input_o\,
	combout => \res_img|process_1~37_combout\);

-- Location: LCCOMB_X26_Y20_N28
\res_img|process_1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~38_combout\ = (!\res_img|Add3~14_combout\ & (\res_img|Add3~2_combout\ & !\res_img|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add3~14_combout\,
	datab => \res_img|Add3~2_combout\,
	datac => \res_img|Add3~4_combout\,
	combout => \res_img|process_1~38_combout\);

-- Location: LCCOMB_X26_Y20_N6
\res_img|process_1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~39_combout\ = (\res_img|process_1~36_combout\ & (((!\res_img|process_1~38_combout\) # (!\res_img|process_1~37_combout\)) # (!\res_img|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~36_combout\,
	datab => \res_img|Equal12~0_combout\,
	datac => \res_img|process_1~37_combout\,
	datad => \res_img|process_1~38_combout\,
	combout => \res_img|process_1~39_combout\);

-- Location: LCCOMB_X26_Y20_N20
\res_img|process_1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~47_combout\ = ((\res_img|Add3~0_combout\ & (!\Res[0]~input_o\)) # (!\res_img|Add3~0_combout\ & ((\res_img|Add3~2_combout\)))) # (!\res_img|Equal12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res[0]~input_o\,
	datab => \res_img|Add3~2_combout\,
	datac => \res_img|Add3~0_combout\,
	datad => \res_img|Equal12~1_combout\,
	combout => \res_img|process_1~47_combout\);

-- Location: LCCOMB_X25_Y17_N28
\res_img|LessThan31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan31~0_combout\ = (\res_img|v_count\(4) & ((\res_img|v_count\(3)) # ((!\res_img|Equal1~0_combout\ & \res_img|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(3),
	datab => \res_img|v_count\(4),
	datac => \res_img|Equal1~0_combout\,
	datad => \res_img|v_count\(2),
	combout => \res_img|LessThan31~0_combout\);

-- Location: LCCOMB_X24_Y17_N14
\res_img|LessThan31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan31~1_combout\ = (\res_img|v_count\(5)) # ((\res_img|v_count\(6)) # ((\res_img|v_count\(7)) # (\res_img|LessThan31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(5),
	datab => \res_img|v_count\(6),
	datac => \res_img|v_count\(7),
	datad => \res_img|LessThan31~0_combout\,
	combout => \res_img|LessThan31~1_combout\);

-- Location: LCCOMB_X24_Y17_N18
\res_img|process_1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~43_combout\ = (!\res_img|v_count\(9) & (\res_img|v_count\(8) & (\res_img|LessThan31~1_combout\ & \res_img|LessThan28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(9),
	datab => \res_img|v_count\(8),
	datac => \res_img|LessThan31~1_combout\,
	datad => \res_img|LessThan28~1_combout\,
	combout => \res_img|process_1~43_combout\);

-- Location: LCCOMB_X25_Y20_N22
\res_img|process_1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~48_combout\ = (\res_img|process_1~46_combout\ & (\res_img|process_1~43_combout\ & ((!\res_img|process_1~47_combout\) # (!\res_img|process_1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~39_combout\,
	datab => \res_img|process_1~47_combout\,
	datac => \res_img|process_1~46_combout\,
	datad => \res_img|process_1~43_combout\,
	combout => \res_img|process_1~48_combout\);

-- Location: LCCOMB_X27_Y20_N30
\res_img|process_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~9_combout\ = (\res_img|Add3~0_combout\ & ((\res_img|Add3~4_combout\))) # (!\res_img|Add3~0_combout\ & ((\res_img|Add3~2_combout\) # (!\res_img|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add3~2_combout\,
	datab => \res_img|Add3~0_combout\,
	datac => \res_img|Add3~4_combout\,
	combout => \res_img|process_1~9_combout\);

-- Location: LCCOMB_X27_Y20_N4
\res_img|process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~6_combout\ = (\res_img|process_1~9_combout\) # ((\res_img|Add3~16_combout\) # (\Res[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~9_combout\,
	datac => \res_img|Add3~16_combout\,
	datad => \Res[0]~input_o\,
	combout => \res_img|process_1~6_combout\);

-- Location: LCCOMB_X26_Y20_N30
\res_img|process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~3_combout\ = (\res_img|Add3~10_combout\) # ((\res_img|Add3~12_combout\) # ((\res_img|Add3~14_combout\) # (\res_img|process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add3~10_combout\,
	datab => \res_img|Add3~12_combout\,
	datac => \res_img|Add3~14_combout\,
	datad => \res_img|process_1~6_combout\,
	combout => \res_img|process_1~3_combout\);

-- Location: LCCOMB_X25_Y20_N2
\res_img|process_1~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~87_combout\ = (!\eror~input_o\ & ((\res_img|process_1~3_combout\) # ((\res_img|Add3~8_combout\) # (\res_img|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~3_combout\,
	datab => \res_img|Add3~8_combout\,
	datac => \res_img|Add3~6_combout\,
	datad => \eror~input_o\,
	combout => \res_img|process_1~87_combout\);

-- Location: LCCOMB_X26_Y20_N18
\res_img|Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal12~2_combout\ = (!\Res[0]~input_o\ & (!\res_img|Add3~2_combout\ & (!\res_img|Add3~0_combout\ & \res_img|Equal12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res[0]~input_o\,
	datab => \res_img|Add3~2_combout\,
	datac => \res_img|Add3~0_combout\,
	datad => \res_img|Equal12~1_combout\,
	combout => \res_img|Equal12~2_combout\);

-- Location: LCCOMB_X23_Y18_N12
\res_img|process_1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~40_combout\ = ((\res_img|h_count\(4) & ((\res_img|h_count\(3)) # (!\res_img|LessThan34~0_combout\)))) # (!\res_img|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(3),
	datab => \res_img|h_count\(4),
	datac => \res_img|LessThan34~0_combout\,
	datad => \res_img|LessThan6~0_combout\,
	combout => \res_img|process_1~40_combout\);

-- Location: LCCOMB_X23_Y18_N14
\res_img|process_1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~41_combout\ = (\res_img|h_count\(8)) # ((\res_img|LessThan29~1_combout\) # ((\res_img|process_1~40_combout\ & \res_img|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~40_combout\,
	datab => \res_img|h_count\(7),
	datac => \res_img|h_count\(8),
	datad => \res_img|LessThan29~1_combout\,
	combout => \res_img|process_1~41_combout\);

-- Location: LCCOMB_X25_Y20_N10
\res_img|process_1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~51_combout\ = (\res_img|process_1~43_combout\ & (!\res_img|process_1~41_combout\ & ((\res_img|Equal12~2_combout\) # (!\res_img|process_1~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~87_combout\,
	datab => \res_img|Equal12~2_combout\,
	datac => \res_img|process_1~43_combout\,
	datad => \res_img|process_1~41_combout\,
	combout => \res_img|process_1~51_combout\);

-- Location: LCCOMB_X25_Y20_N0
\res_img|rgb2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~23_combout\ = (!\res_img|process_1~50_combout\ & (!\res_img|process_1~48_combout\ & !\res_img|process_1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|process_1~50_combout\,
	datac => \res_img|process_1~48_combout\,
	datad => \res_img|process_1~51_combout\,
	combout => \res_img|rgb2~23_combout\);

-- Location: LCCOMB_X27_Y20_N6
\res_img|rgb2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~8_combout\ = (\res_img|Add3~2_combout\ & ((\res_img|Add3~4_combout\) # (\res_img|Add3~0_combout\ $ (!\Res[0]~input_o\)))) # (!\res_img|Add3~2_combout\ & (\res_img|Add3~0_combout\ $ ((!\res_img|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add3~2_combout\,
	datab => \res_img|Add3~0_combout\,
	datac => \res_img|Add3~4_combout\,
	datad => \Res[0]~input_o\,
	combout => \res_img|rgb2~8_combout\);

-- Location: LCCOMB_X27_Y20_N0
\res_img|rgb2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~6_combout\ = (\res_img|rgb2~8_combout\) # (\res_img|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~8_combout\,
	datad => \res_img|Add3~14_combout\,
	combout => \res_img|rgb2~6_combout\);

-- Location: LCCOMB_X26_Y20_N0
\res_img|rgb2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~3_combout\ = (\res_img|Add3~10_combout\) # ((\res_img|Add3~12_combout\) # ((\res_img|rgb2~6_combout\) # (\res_img|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add3~10_combout\,
	datab => \res_img|Add3~12_combout\,
	datac => \res_img|rgb2~6_combout\,
	datad => \res_img|Add3~16_combout\,
	combout => \res_img|rgb2~3_combout\);

-- Location: LCCOMB_X25_Y20_N24
\res_img|rgb2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~52_combout\ = (!\eror~input_o\ & ((\res_img|Add3~6_combout\) # ((\res_img|rgb2~3_combout\) # (\res_img|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add3~6_combout\,
	datab => \eror~input_o\,
	datac => \res_img|rgb2~3_combout\,
	datad => \res_img|Add3~8_combout\,
	combout => \res_img|rgb2~52_combout\);

-- Location: LCCOMB_X26_Y17_N2
\res_img|process_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~30_combout\ = (\res_img|v_count\(3)) # ((\res_img|v_count\(4)) # ((\res_img|v_count\(2) & \res_img|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(3),
	datab => \res_img|v_count\(2),
	datac => \res_img|v_count\(4),
	datad => \res_img|v_count\(1),
	combout => \res_img|process_1~30_combout\);

-- Location: LCCOMB_X26_Y20_N22
\res_img|process_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~28_combout\ = (\res_img|v_count\(6)) # ((\res_img|v_count\(8)) # ((\res_img|v_count\(9)) # (!\res_img|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(6),
	datab => \res_img|v_count\(8),
	datac => \res_img|v_count\(9),
	datad => \res_img|v_count\(7),
	combout => \res_img|process_1~28_combout\);

-- Location: LCCOMB_X26_Y20_N16
\res_img|process_1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~31_combout\ = (\res_img|process_1~28_combout\) # ((\res_img|process_1~29_combout\) # ((\res_img|process_1~30_combout\ & \res_img|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~30_combout\,
	datab => \res_img|v_count\(5),
	datac => \res_img|process_1~28_combout\,
	datad => \res_img|process_1~29_combout\,
	combout => \res_img|process_1~31_combout\);

-- Location: LCCOMB_X24_Y17_N16
\res_img|process_1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~27_combout\ = (\res_img|v_count\(7) & (!\res_img|process_1~26_combout\ & \res_img|process_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(7),
	datac => \res_img|process_1~26_combout\,
	datad => \res_img|process_1~24_combout\,
	combout => \res_img|process_1~27_combout\);

-- Location: LCCOMB_X26_Y20_N10
\res_img|rgb2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~18_combout\ = (\res_img|Add3~14_combout\) # ((\res_img|Add3~4_combout\) # (\res_img|Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Add3~14_combout\,
	datac => \res_img|Add3~4_combout\,
	datad => \res_img|Add3~16_combout\,
	combout => \res_img|rgb2~18_combout\);

-- Location: LCCOMB_X26_Y20_N4
\res_img|rgb2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~19_combout\ = (\Res[0]~input_o\ & (((\res_img|process_1~31_combout\) # (!\res_img|Add3~0_combout\)) # (!\res_img|Add3~2_combout\))) # (!\Res[0]~input_o\ & ((\res_img|Add3~2_combout\) # ((\res_img|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res[0]~input_o\,
	datab => \res_img|Add3~2_combout\,
	datac => \res_img|Add3~0_combout\,
	datad => \res_img|process_1~31_combout\,
	combout => \res_img|rgb2~19_combout\);

-- Location: LCCOMB_X25_Y20_N20
\res_img|rgb2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~20_combout\ = (!\res_img|rgb2~18_combout\ & (\res_img|Equal12~0_combout\ & !\res_img|rgb2~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~18_combout\,
	datac => \res_img|Equal12~0_combout\,
	datad => \res_img|rgb2~19_combout\,
	combout => \res_img|rgb2~20_combout\);

-- Location: LCCOMB_X25_Y20_N30
\res_img|rgb2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~21_combout\ = (\res_img|rgb2~52_combout\ & (((\res_img|process_1~31_combout\ & !\res_img|process_1~27_combout\)) # (!\res_img|rgb2~20_combout\))) # (!\res_img|rgb2~52_combout\ & (\res_img|process_1~31_combout\ & 
-- (!\res_img|process_1~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~52_combout\,
	datab => \res_img|process_1~31_combout\,
	datac => \res_img|process_1~27_combout\,
	datad => \res_img|rgb2~20_combout\,
	combout => \res_img|rgb2~21_combout\);

-- Location: LCCOMB_X26_Y20_N8
\res_img|Equal20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal20~0_combout\ = (!\Res[0]~input_o\ & (\res_img|Add3~2_combout\ & (!\res_img|Add3~0_combout\ & \res_img|Equal12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res[0]~input_o\,
	datab => \res_img|Add3~2_combout\,
	datac => \res_img|Add3~0_combout\,
	datad => \res_img|Equal12~1_combout\,
	combout => \res_img|Equal20~0_combout\);

-- Location: LCCOMB_X24_Y20_N26
\res_img|process_1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~32_combout\ = (\res_img|v_count\(8) & (!\res_img|v_count\(9) & (!\res_img|LessThan25~0_combout\ & \res_img|LessThan26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(8),
	datab => \res_img|v_count\(9),
	datac => \res_img|LessThan25~0_combout\,
	datad => \res_img|LessThan26~1_combout\,
	combout => \res_img|process_1~32_combout\);

-- Location: LCCOMB_X25_Y20_N28
\res_img|process_1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~34_combout\ = (\eror~input_o\) # (\res_img|Equal12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~input_o\,
	datac => \res_img|Equal12~2_combout\,
	combout => \res_img|process_1~34_combout\);

-- Location: LCCOMB_X25_Y20_N6
\res_img|process_1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~42_combout\ = (\res_img|process_1~33_combout\ & (!\res_img|process_1~41_combout\ & ((\res_img|process_1~34_combout\) # (!\res_img|process_1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~39_combout\,
	datab => \res_img|process_1~34_combout\,
	datac => \res_img|process_1~33_combout\,
	datad => \res_img|process_1~41_combout\,
	combout => \res_img|process_1~42_combout\);

-- Location: LCCOMB_X25_Y20_N12
\res_img|rgb2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~22_combout\ = (!\res_img|process_1~42_combout\ & (((\res_img|rgb2~52_combout\ & !\res_img|Equal20~0_combout\)) # (!\res_img|process_1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~52_combout\,
	datab => \res_img|Equal20~0_combout\,
	datac => \res_img|process_1~32_combout\,
	datad => \res_img|process_1~42_combout\,
	combout => \res_img|rgb2~22_combout\);

-- Location: LCCOMB_X25_Y20_N14
\res_img|rgb2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~24_combout\ = (\res_img|rgb2~17_combout\) # ((\res_img|rgb2~23_combout\ & (\res_img|rgb2~21_combout\ & \res_img|rgb2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~17_combout\,
	datab => \res_img|rgb2~23_combout\,
	datac => \res_img|rgb2~21_combout\,
	datad => \res_img|rgb2~22_combout\,
	combout => \res_img|rgb2~24_combout\);

-- Location: LCCOMB_X27_Y19_N0
\res_img|process_1~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~69_combout\ = (!\res_img|Div0|auto_generated|divider|_~4_combout\ & ((\res_img|Div0|auto_generated|divider|_~5_combout\ & (\res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & 
-- \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\)) # (!\res_img|Div0|auto_generated|divider|_~5_combout\ & (!\res_img|Div0|auto_generated|divider|quotient[0]~5_combout\ & !\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|_~5_combout\,
	datab => \res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datac => \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datad => \res_img|Div0|auto_generated|divider|_~4_combout\,
	combout => \res_img|process_1~69_combout\);

-- Location: LCCOMB_X26_Y18_N2
\res_img|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|Equal2~0_combout\ = (\res_img|int_res~0_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~6_combout\ & (!\res_img|Div0|auto_generated|divider|op_1~0_combout\))) # (!\res_img|int_res~0_combout\ & 
-- (((\res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|int_res~0_combout\,
	datab => \res_img|Div0|auto_generated|divider|op_1~6_combout\,
	datac => \res_img|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \res_img|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y20_N30
\res_img|process_1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~68_combout\ = (!\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\ & (\res_img|Div0|auto_generated|divider|_~5_combout\ & (\res_img|process_1~32_combout\ & \res_img|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	datab => \res_img|Div0|auto_generated|divider|_~5_combout\,
	datac => \res_img|process_1~32_combout\,
	datad => \res_img|Equal2~0_combout\,
	combout => \res_img|process_1~68_combout\);

-- Location: LCCOMB_X25_Y19_N6
\res_img|process_1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~66_combout\ = (!\eror~input_o\ & (((!\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\) # (!\res_img|Div0|auto_generated|divider|_~5_combout\)) # (!\res_img|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~input_o\,
	datab => \res_img|Equal2~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|_~5_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	combout => \res_img|process_1~66_combout\);

-- Location: LCCOMB_X25_Y19_N16
\res_img|process_1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~54_combout\ = (\res_img|Div0|auto_generated|divider|_~4_combout\) # ((\res_img|Div0|auto_generated|divider|_~5_combout\ & ((\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|quotient[0]~5_combout\))) # (!\res_img|Div0|auto_generated|divider|_~5_combout\ & ((!\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datab => \res_img|Div0|auto_generated|divider|_~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|_~5_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	combout => \res_img|process_1~54_combout\);

-- Location: LCCOMB_X24_Y20_N28
\res_img|process_1~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~67_combout\ = (\res_img|process_1~66_combout\ & (!\res_img|process_1~54_combout\ & ((\res_img|process_1~32_combout\) # (!\res_img|process_1~31_combout\)))) # (!\res_img|process_1~66_combout\ & (((\res_img|process_1~32_combout\) # 
-- (!\res_img|process_1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~66_combout\,
	datab => \res_img|process_1~54_combout\,
	datac => \res_img|process_1~32_combout\,
	datad => \res_img|process_1~31_combout\,
	combout => \res_img|process_1~67_combout\);

-- Location: LCCOMB_X24_Y20_N12
\res_img|process_1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~70_combout\ = (\res_img|process_1~68_combout\) # ((\res_img|process_1~67_combout\) # ((\res_img|process_1~69_combout\ & !\res_img|process_1~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~69_combout\,
	datab => \res_img|process_1~31_combout\,
	datac => \res_img|process_1~68_combout\,
	datad => \res_img|process_1~67_combout\,
	combout => \res_img|process_1~70_combout\);

-- Location: LCCOMB_X25_Y19_N28
\res_img|process_1~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~73_combout\ = (\res_img|Div0|auto_generated|divider|_~4_combout\) # ((\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\) # (!\res_img|Div0|auto_generated|divider|_~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|_~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|_~5_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	combout => \res_img|process_1~73_combout\);

-- Location: LCCOMB_X25_Y18_N30
\res_img|LessThan32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|LessThan32~1_combout\ = (!\res_img|h_count\(4) & \res_img|LessThan32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|h_count\(4),
	datad => \res_img|LessThan32~0_combout\,
	combout => \res_img|LessThan32~1_combout\);

-- Location: LCCOMB_X25_Y18_N0
\res_img|process_1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~57_combout\ = (!\eror~input_o\ & (\res_img|h_count\(9) & (\res_img|h_count\(6) & \res_img|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~input_o\,
	datab => \res_img|h_count\(9),
	datac => \res_img|h_count\(6),
	datad => \res_img|LessThan0~0_combout\,
	combout => \res_img|process_1~57_combout\);

-- Location: LCCOMB_X25_Y18_N4
\res_img|process_1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~58_combout\ = (\res_img|LessThan20~0_combout\ & (\res_img|process_1~57_combout\ & ((\res_img|h_count\(5)) # (!\res_img|LessThan32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(5),
	datab => \res_img|LessThan20~0_combout\,
	datac => \res_img|LessThan32~1_combout\,
	datad => \res_img|process_1~57_combout\,
	combout => \res_img|process_1~58_combout\);

-- Location: LCCOMB_X26_Y18_N26
\res_img|process_1~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~71_combout\ = (\res_img|Div0|auto_generated|divider|op_1~0_combout\ $ (!\res_img|Div0|auto_generated|divider|op_1~2_combout\)) # (!\res_img|Div0|auto_generated|divider|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|Div0|auto_generated|divider|op_1~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \res_img|Div0|auto_generated|divider|op_1~2_combout\,
	combout => \res_img|process_1~71_combout\);

-- Location: LCCOMB_X25_Y18_N16
\res_img|process_1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~72_combout\ = (\res_img|process_1~58_combout\ & (((!\res_img|Div0|auto_generated|divider|op_1~6_combout\ & \res_img|process_1~71_combout\)) # (!\res_img|int_res~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|op_1~6_combout\,
	datab => \res_img|int_res~0_combout\,
	datac => \res_img|process_1~58_combout\,
	datad => \res_img|process_1~71_combout\,
	combout => \res_img|process_1~72_combout\);

-- Location: LCCOMB_X26_Y18_N8
\res_img|process_1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~53_combout\ = (!\eror~input_o\ & ((\res_img|Div0|auto_generated|divider|_~5_combout\ $ (\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\)) # (!\res_img|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Equal2~0_combout\,
	datab => \res_img|Div0|auto_generated|divider|_~5_combout\,
	datac => \eror~input_o\,
	datad => \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	combout => \res_img|process_1~53_combout\);

-- Location: LCCOMB_X25_Y18_N26
\res_img|process_1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~61_combout\ = (\res_img|h_count\(3)) # ((\res_img|h_count\(2)) # ((\res_img|h_count\(0) & \res_img|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(0),
	datab => \res_img|h_count\(3),
	datac => \res_img|h_count\(2),
	datad => \res_img|h_count\(1),
	combout => \res_img|process_1~61_combout\);

-- Location: LCCOMB_X25_Y18_N10
\res_img|process_1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~63_combout\ = (\res_img|h_count\(9)) # (((\res_img|process_1~61_combout\ & \res_img|process_1~21_combout\)) # (!\res_img|process_1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~61_combout\,
	datab => \res_img|h_count\(9),
	datac => \res_img|process_1~21_combout\,
	datad => \res_img|process_1~62_combout\,
	combout => \res_img|process_1~63_combout\);

-- Location: LCCOMB_X25_Y18_N22
\res_img|process_1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~74_combout\ = (\res_img|process_1~72_combout\) # ((!\res_img|process_1~63_combout\ & ((!\res_img|process_1~53_combout\) # (!\res_img|process_1~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~73_combout\,
	datab => \res_img|process_1~72_combout\,
	datac => \res_img|process_1~53_combout\,
	datad => \res_img|process_1~63_combout\,
	combout => \res_img|process_1~74_combout\);

-- Location: LCCOMB_X25_Y18_N8
\res_img|process_1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~52_combout\ = (\res_img|v_count\(7) & (\res_img|v_count\(8) & !\res_img|v_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(7),
	datab => \res_img|v_count\(8),
	datad => \res_img|v_count\(6),
	combout => \res_img|process_1~52_combout\);

-- Location: LCCOMB_X25_Y18_N14
\res_img|process_1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~55_combout\ = (\res_img|process_1~52_combout\ & (!\res_img|process_1~26_combout\ & ((!\res_img|process_1~53_combout\) # (!\res_img|process_1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~54_combout\,
	datab => \res_img|process_1~53_combout\,
	datac => \res_img|process_1~52_combout\,
	datad => \res_img|process_1~26_combout\,
	combout => \res_img|process_1~55_combout\);

-- Location: LCCOMB_X24_Y17_N0
\res_img|process_1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~56_combout\ = (\res_img|LessThan28~1_combout\ & ((\res_img|v_count\(9)) # ((\res_img|v_count\(8) & \res_img|LessThan31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(8),
	datab => \res_img|v_count\(9),
	datac => \res_img|LessThan31~1_combout\,
	datad => \res_img|LessThan28~1_combout\,
	combout => \res_img|process_1~56_combout\);

-- Location: LCCOMB_X25_Y19_N12
\res_img|process_1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~60_combout\ = (\eror~input_o\) # ((\res_img|Equal2~0_combout\ & ((\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\) # (!\res_img|Div0|auto_generated|divider|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eror~input_o\,
	datab => \res_img|Equal2~0_combout\,
	datac => \res_img|Div0|auto_generated|divider|_~5_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	combout => \res_img|process_1~60_combout\);

-- Location: LCCOMB_X25_Y19_N2
\res_img|process_1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~59_combout\ = (!\res_img|Div0|auto_generated|divider|_~4_combout\ & ((\res_img|Div0|auto_generated|divider|quotient[0]~5_combout\) # ((\res_img|Div0|auto_generated|divider|_~5_combout\) # 
-- (!\res_img|Div0|auto_generated|divider|quotient[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|Div0|auto_generated|divider|quotient[0]~5_combout\,
	datab => \res_img|Div0|auto_generated|divider|_~4_combout\,
	datac => \res_img|Div0|auto_generated|divider|_~5_combout\,
	datad => \res_img|Div0|auto_generated|divider|quotient[1]~4_combout\,
	combout => \res_img|process_1~59_combout\);

-- Location: LCCOMB_X25_Y18_N12
\res_img|process_1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~64_combout\ = (\res_img|process_1~60_combout\ & (((\res_img|process_1~59_combout\ & \res_img|process_1~58_combout\)) # (!\res_img|process_1~63_combout\))) # (!\res_img|process_1~60_combout\ & (\res_img|process_1~59_combout\ & 
-- (\res_img|process_1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~60_combout\,
	datab => \res_img|process_1~59_combout\,
	datac => \res_img|process_1~58_combout\,
	datad => \res_img|process_1~63_combout\,
	combout => \res_img|process_1~64_combout\);

-- Location: LCCOMB_X25_Y18_N6
\res_img|process_1~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~65_combout\ = (!\res_img|v_count\(9) & ((\res_img|process_1~55_combout\) # ((\res_img|process_1~56_combout\ & \res_img|process_1~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|v_count\(9),
	datab => \res_img|process_1~55_combout\,
	datac => \res_img|process_1~56_combout\,
	datad => \res_img|process_1~64_combout\,
	combout => \res_img|process_1~65_combout\);

-- Location: LCCOMB_X24_Y20_N6
\res_img|process_1~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|process_1~75_combout\ = (\res_img|process_1~70_combout\) # ((\res_img|process_1~65_combout\) # ((\res_img|process_1~33_combout\ & \res_img|process_1~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~70_combout\,
	datab => \res_img|process_1~33_combout\,
	datac => \res_img|process_1~74_combout\,
	datad => \res_img|process_1~65_combout\,
	combout => \res_img|process_1~75_combout\);

-- Location: LCCOMB_X24_Y20_N18
\res_img|rgb2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~34_combout\ = (\res_img|rgb2[13]~28_combout\ & (\res_img|rgb2~33_combout\)) # (!\res_img|rgb2[13]~28_combout\ & ((\res_img|rgb2~33_combout\ & ((\res_img|process_1~75_combout\))) # (!\res_img|rgb2~33_combout\ & (!\res_img|rgb2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2[13]~28_combout\,
	datab => \res_img|rgb2~33_combout\,
	datac => \res_img|rgb2~24_combout\,
	datad => \res_img|process_1~75_combout\,
	combout => \res_img|rgb2~34_combout\);

-- Location: LCCOMB_X24_Y20_N20
\res_img|rgb2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~40_combout\ = (\res_img|rgb2[13]~39_combout\ & \res_img|rgb2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|rgb2[13]~39_combout\,
	datad => \res_img|rgb2~34_combout\,
	combout => \res_img|rgb2~40_combout\);

-- Location: LCCOMB_X24_Y19_N8
\res_img|rgb2[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~42_combout\ = (\res_img|h_count\(9)) # ((\res_img|LessThan10~0_combout\ & ((\res_img|LessThan8~1_combout\))) # (!\res_img|LessThan10~0_combout\ & (\res_img|rgb2[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan10~0_combout\,
	datab => \res_img|h_count\(9),
	datac => \res_img|rgb2[13]~26_combout\,
	datad => \res_img|LessThan8~1_combout\,
	combout => \res_img|rgb2[13]~42_combout\);

-- Location: LCCOMB_X24_Y20_N16
\res_img|rgb2[13]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~41_combout\ = (\res_img|process_1~80_combout\) # ((!\res_img|h_count\(8) & !\res_img|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|h_count\(8),
	datac => \res_img|h_count\(9),
	datad => \res_img|process_1~80_combout\,
	combout => \res_img|rgb2[13]~41_combout\);

-- Location: LCCOMB_X23_Y18_N16
\res_img|rgb2[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~43_combout\ = ((\res_img|LessThan34~1_combout\ & (\res_img|h_count\(8) & \res_img|process_1~84_combout\))) # (!\res_img|process_1~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|LessThan34~1_combout\,
	datab => \res_img|h_count\(8),
	datac => \res_img|process_1~23_combout\,
	datad => \res_img|process_1~84_combout\,
	combout => \res_img|rgb2[13]~43_combout\);

-- Location: LCCOMB_X23_Y20_N6
\res_img|rgb2[13]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~44_combout\ = (\res_img|h_count\(9) & ((\res_img|rgb2[13]~43_combout\) # (!\res_img|process_1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|h_count\(9),
	datac => \res_img|process_1~22_combout\,
	datad => \res_img|rgb2[13]~43_combout\,
	combout => \res_img|rgb2[13]~44_combout\);

-- Location: LCCOMB_X24_Y20_N14
\res_img|rgb2[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2[13]~45_combout\ = (((\res_img|rgb2[13]~44_combout\) # (!\res_img|rgb2[13]~36_combout\)) # (!\res_img|rgb2[13]~41_combout\)) # (!\res_img|rgb2[13]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2[13]~42_combout\,
	datab => \res_img|rgb2[13]~41_combout\,
	datac => \res_img|rgb2[13]~44_combout\,
	datad => \res_img|rgb2[13]~36_combout\,
	combout => \res_img|rgb2[13]~45_combout\);

-- Location: FF_X24_Y20_N21
\res_img|rgb2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|rgb2~40_combout\,
	ena => \res_img|rgb2[13]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|rgb2\(13));

-- Location: LCCOMB_X18_Y15_N0
\res_img|r_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|r_out[4]~feeder_combout\ = \res_img|rgb2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|rgb2\(13),
	combout => \res_img|r_out[4]~feeder_combout\);

-- Location: FF_X18_Y15_N1
\res_img|r_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|r_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|r_out\(4));

-- Location: LCCOMB_X24_Y20_N4
\res_img|rgb2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~46_combout\ = (\res_img|rgb2[13]~31_combout\ & ((\res_img|rgb2[13]~32_combout\ & (!\res_img|process_1~78_combout\)) # (!\res_img|rgb2[13]~32_combout\ & ((!\res_img|process_1~79_combout\))))) # (!\res_img|rgb2[13]~31_combout\ & 
-- (((\res_img|rgb2[13]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|process_1~78_combout\,
	datab => \res_img|process_1~79_combout\,
	datac => \res_img|rgb2[13]~31_combout\,
	datad => \res_img|rgb2[13]~32_combout\,
	combout => \res_img|rgb2~46_combout\);

-- Location: LCCOMB_X24_Y20_N2
\res_img|rgb2~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~47_combout\ = (\res_img|rgb2[13]~28_combout\ & (\res_img|rgb2~46_combout\)) # (!\res_img|rgb2[13]~28_combout\ & ((\res_img|rgb2~46_combout\ & (\res_img|rgb2~24_combout\)) # (!\res_img|rgb2~46_combout\ & ((!\res_img|process_1~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2[13]~28_combout\,
	datab => \res_img|rgb2~46_combout\,
	datac => \res_img|rgb2~24_combout\,
	datad => \res_img|process_1~75_combout\,
	combout => \res_img|rgb2~47_combout\);

-- Location: LCCOMB_X24_Y20_N22
\res_img|rgb2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~48_combout\ = (\res_img|rgb2[13]~39_combout\ & ((\res_img|rgb2~47_combout\))) # (!\res_img|rgb2[13]~39_combout\ & (\res_img|de_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_img|de_1~q\,
	datac => \res_img|rgb2[13]~39_combout\,
	datad => \res_img|rgb2~47_combout\,
	combout => \res_img|rgb2~48_combout\);

-- Location: FF_X24_Y20_N23
\res_img|rgb2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|rgb2~48_combout\,
	ena => \res_img|rgb2[13]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|rgb2\(12));

-- Location: LCCOMB_X1_Y15_N16
\res_img|r_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|r_out[5]~feeder_combout\ = \res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(12),
	combout => \res_img|r_out[5]~feeder_combout\);

-- Location: FF_X1_Y15_N17
\res_img|r_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|r_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|r_out\(5));

-- Location: LCCOMB_X18_Y15_N26
\res_img|r_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|r_out[6]~feeder_combout\ = \res_img|rgb2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \res_img|rgb2\(13),
	combout => \res_img|r_out[6]~feeder_combout\);

-- Location: FF_X18_Y15_N27
\res_img|r_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|r_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|r_out\(6));

-- Location: LCCOMB_X23_Y20_N26
\res_img|rgb2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~50_combout\ = ((\res_img|h_count\(8) & ((\res_img|rgb2~38_combout\) # (\res_img|rgb2[13]~25_combout\)))) # (!\res_img|rgb2[13]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2~38_combout\,
	datab => \res_img|rgb2[13]~25_combout\,
	datac => \res_img|h_count\(8),
	datad => \res_img|rgb2[13]~27_combout\,
	combout => \res_img|rgb2~50_combout\);

-- Location: LCCOMB_X23_Y20_N24
\res_img|rgb2~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~49_combout\ = (\res_img|rgb2\(6)) # (((\res_img|rgb2[13]~44_combout\) # (!\res_img|process_1~81_combout\)) # (!\res_img|rgb2[13]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|rgb2\(6),
	datab => \res_img|rgb2[13]~35_combout\,
	datac => \res_img|process_1~81_combout\,
	datad => \res_img|rgb2[13]~44_combout\,
	combout => \res_img|rgb2~49_combout\);

-- Location: LCCOMB_X23_Y20_N12
\res_img|rgb2~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|rgb2~51_combout\ = (\res_img|de_1~q\ & ((\res_img|rgb2~49_combout\) # ((!\res_img|h_count\(9) & \res_img|rgb2~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_img|de_1~q\,
	datab => \res_img|h_count\(9),
	datac => \res_img|rgb2~50_combout\,
	datad => \res_img|rgb2~49_combout\,
	combout => \res_img|rgb2~51_combout\);

-- Location: FF_X23_Y20_N13
\res_img|rgb2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|rgb2~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|rgb2\(6));

-- Location: LCCOMB_X16_Y15_N8
\res_img|r_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|r_out[7]~feeder_combout\ = \res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(6),
	combout => \res_img|r_out[7]~feeder_combout\);

-- Location: FF_X16_Y15_N9
\res_img|r_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|r_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|r_out\(7));

-- Location: LCCOMB_X1_Y15_N26
\res_img|g_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|g_out[4]~feeder_combout\ = \res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(12),
	combout => \res_img|g_out[4]~feeder_combout\);

-- Location: FF_X1_Y15_N27
\res_img|g_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|g_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|g_out\(4));

-- Location: LCCOMB_X16_Y15_N6
\res_img|g_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|g_out[5]~feeder_combout\ = \res_img|rgb2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(13),
	combout => \res_img|g_out[5]~feeder_combout\);

-- Location: FF_X16_Y15_N7
\res_img|g_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|g_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|g_out\(5));

-- Location: LCCOMB_X3_Y15_N28
\res_img|g_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|g_out[6]~feeder_combout\ = \res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(6),
	combout => \res_img|g_out[6]~feeder_combout\);

-- Location: FF_X3_Y15_N29
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

-- Location: LCCOMB_X1_Y15_N20
\res_img|g_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|g_out[7]~feeder_combout\ = \res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(12),
	combout => \res_img|g_out[7]~feeder_combout\);

-- Location: FF_X1_Y15_N21
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

-- Location: LCCOMB_X3_Y15_N2
\res_img|b_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|b_out[4]~feeder_combout\ = \res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(6),
	combout => \res_img|b_out[4]~feeder_combout\);

-- Location: FF_X3_Y15_N3
\res_img|b_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|b_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|b_out\(4));

-- Location: LCCOMB_X1_Y15_N14
\res_img|b_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|b_out[5]~feeder_combout\ = \res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(12),
	combout => \res_img|b_out[5]~feeder_combout\);

-- Location: FF_X1_Y15_N15
\res_img|b_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|b_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|b_out\(5));

-- Location: LCCOMB_X3_Y15_N4
\res_img|b_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|b_out[6]~feeder_combout\ = \res_img|rgb2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(6),
	combout => \res_img|b_out[6]~feeder_combout\);

-- Location: FF_X3_Y15_N5
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

-- Location: LCCOMB_X1_Y15_N4
\res_img|b_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \res_img|b_out[7]~feeder_combout\ = \res_img|rgb2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \res_img|rgb2\(12),
	combout => \res_img|b_out[7]~feeder_combout\);

-- Location: FF_X1_Y15_N5
\res_img|b_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \res_img|b_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_img|b_out\(7));

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

ww_res_out(0) <= \res_out[0]~output_o\;

ww_res_out(1) <= \res_out[1]~output_o\;

ww_res_out(2) <= \res_out[2]~output_o\;

ww_res_out(3) <= \res_out[3]~output_o\;

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


