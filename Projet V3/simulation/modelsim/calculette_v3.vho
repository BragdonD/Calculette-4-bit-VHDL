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

-- DATE "09/27/2021 15:16:26"

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
	reset : IN std_logic
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
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \irRec|data_bit~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \irRec|clock_counter[0]~17_combout\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \irRec|data~0_combout\ : std_logic;
SIGNAL \irRec|data~q\ : std_logic;
SIGNAL \irRec|data_follow~0_combout\ : std_logic;
SIGNAL \irRec|data_follow~q\ : std_logic;
SIGNAL \irRec|state~13_combout\ : std_logic;
SIGNAL \irRec|Add3~0_combout\ : std_logic;
SIGNAL \irRec|Add3~1\ : std_logic;
SIGNAL \irRec|Add3~2_combout\ : std_logic;
SIGNAL \irRec|data_counter[1]~5_combout\ : std_logic;
SIGNAL \irRec|Add3~3\ : std_logic;
SIGNAL \irRec|Add3~4_combout\ : std_logic;
SIGNAL \irRec|data_counter[2]~4_combout\ : std_logic;
SIGNAL \irRec|Add3~5\ : std_logic;
SIGNAL \irRec|Add3~6_combout\ : std_logic;
SIGNAL \irRec|data_counter[3]~2_combout\ : std_logic;
SIGNAL \irRec|Add3~7\ : std_logic;
SIGNAL \irRec|Add3~8_combout\ : std_logic;
SIGNAL \irRec|data_counter[4]~1_combout\ : std_logic;
SIGNAL \irRec|Add3~9\ : std_logic;
SIGNAL \irRec|Add3~10_combout\ : std_logic;
SIGNAL \irRec|data_counter[5]~3_combout\ : std_logic;
SIGNAL \irRec|Equal3~0_combout\ : std_logic;
SIGNAL \irRec|Add3~11\ : std_logic;
SIGNAL \irRec|Add3~12_combout\ : std_logic;
SIGNAL \irRec|data_counter[6]~31_combout\ : std_logic;
SIGNAL \irRec|Add3~13\ : std_logic;
SIGNAL \irRec|Add3~14_combout\ : std_logic;
SIGNAL \irRec|data_counter[7]~30_combout\ : std_logic;
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
SIGNAL \irRec|Equal5~5_combout\ : std_logic;
SIGNAL \irRec|Equal5~7_combout\ : std_logic;
SIGNAL \irRec|Equal5~6_combout\ : std_logic;
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
SIGNAL \irRec|Equal5~3_combout\ : std_logic;
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
SIGNAL \irRec|Equal5~1_combout\ : std_logic;
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
SIGNAL \irRec|Equal5~0_combout\ : std_logic;
SIGNAL \irRec|Equal5~2_combout\ : std_logic;
SIGNAL \irRec|Equal5~4_combout\ : std_logic;
SIGNAL \irRec|Equal5~8_combout\ : std_logic;
SIGNAL \irRec|Equal3~1_combout\ : std_logic;
SIGNAL \irRec|data_reg[22]~1_combout\ : std_logic;
SIGNAL \irRec|data_counter[0]~0_combout\ : std_logic;
SIGNAL \irRec|Equal5~9_combout\ : std_logic;
SIGNAL \irRec|Equal5~10_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[0]~18_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[5]~50_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[14]~47\ : std_logic;
SIGNAL \irRec|LC_off_counter[15]~48_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[15]~49\ : std_logic;
SIGNAL \irRec|LC_off_counter[16]~52_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[16]~53\ : std_logic;
SIGNAL \irRec|LC_off_counter[17]~54_combout\ : std_logic;
SIGNAL \irRec|Equal1~3_combout\ : std_logic;
SIGNAL \irRec|Equal1~0_combout\ : std_logic;
SIGNAL \irRec|Equal1~5_combout\ : std_logic;
SIGNAL \irRec|Equal1~4_combout\ : std_logic;
SIGNAL \irRec|Equal1~1_combout\ : std_logic;
SIGNAL \irRec|Equal1~2_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[5]~51_combout\ : std_logic;
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
SIGNAL \irRec|LC_off_counter[13]~44_combout\ : std_logic;
SIGNAL \irRec|LC_off_counter[13]~45\ : std_logic;
SIGNAL \irRec|LC_off_counter[14]~46_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~0_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~1_combout\ : std_logic;
SIGNAL \irRec|LessThan3~0_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~2_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~3_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~4_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~5_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~6_combout\ : std_logic;
SIGNAL \irRec|state~12_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[0]~19_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[12]~51_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[14]~48\ : std_logic;
SIGNAL \irRec|LC_on_counter[15]~49_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[15]~50\ : std_logic;
SIGNAL \irRec|LC_on_counter[16]~53_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[16]~54\ : std_logic;
SIGNAL \irRec|LC_on_counter[17]~55_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[17]~56\ : std_logic;
SIGNAL \irRec|LC_on_counter[18]~57_combout\ : std_logic;
SIGNAL \irRec|Equal0~4_combout\ : std_logic;
SIGNAL \irRec|Equal0~5_combout\ : std_logic;
SIGNAL \irRec|Equal0~0_combout\ : std_logic;
SIGNAL \irRec|Equal0~1_combout\ : std_logic;
SIGNAL \irRec|LC_on_counter[12]~52_combout\ : std_logic;
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
SIGNAL \irRec|Equal0~2_combout\ : std_logic;
SIGNAL \irRec|Equal0~3_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~7_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~8_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~9_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~10_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~11_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~12_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~13_combout\ : std_logic;
SIGNAL \irRec|nxt_state_proc~14_combout\ : std_logic;
SIGNAL \irRec|state~14_combout\ : std_logic;
SIGNAL \irRec|state.init~q\ : std_logic;
SIGNAL \irRec|Selector1~0_combout\ : std_logic;
SIGNAL \irRec|state.read_LC_on~q\ : std_logic;
SIGNAL \irRec|state~11_combout\ : std_logic;
SIGNAL \irRec|state.check_LC_on_count~q\ : std_logic;
SIGNAL \irRec|Selector2~0_combout\ : std_logic;
SIGNAL \irRec|state.read_LC_off~q\ : std_logic;
SIGNAL \irRec|state~10_combout\ : std_logic;
SIGNAL \irRec|state.check_LC_off_count~q\ : std_logic;
SIGNAL \irRec|Selector3~0_combout\ : std_logic;
SIGNAL \irRec|Selector3~1_combout\ : std_logic;
SIGNAL \irRec|state.read_data~q\ : std_logic;
SIGNAL \irRec|state~9_combout\ : std_logic;
SIGNAL \irRec|state.check_data~q\ : std_logic;
SIGNAL \irRec|clock_counter[13]~44\ : std_logic;
SIGNAL \irRec|clock_counter[14]~45_combout\ : std_logic;
SIGNAL \irRec|Equal2~0_combout\ : std_logic;
SIGNAL \irRec|Equal2~1_combout\ : std_logic;
SIGNAL \irRec|Equal2~4_combout\ : std_logic;
SIGNAL \irRec|clock_counter[14]~46\ : std_logic;
SIGNAL \irRec|clock_counter[15]~47_combout\ : std_logic;
SIGNAL \irRec|clock_counter[15]~48\ : std_logic;
SIGNAL \irRec|clock_counter[16]~50_combout\ : std_logic;
SIGNAL \irRec|Equal2~2_combout\ : std_logic;
SIGNAL \irRec|Equal2~3_combout\ : std_logic;
SIGNAL \irRec|Equal2~5_combout\ : std_logic;
SIGNAL \irRec|clock_counter[3]~49_combout\ : std_logic;
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
SIGNAL \irRec|data_bit_proc~6_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~7_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~5_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~8_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~9_combout\ : std_logic;
SIGNAL \irRec|data_bit~6_combout\ : std_logic;
SIGNAL \irRec|data_bit~7_combout\ : std_logic;
SIGNAL \irRec|data_bit~8_combout\ : std_logic;
SIGNAL \irRec|data_bit~4_combout\ : std_logic;
SIGNAL \irRec|data_bit~5_combout\ : std_logic;
SIGNAL \irRec|data_bit~1_combout\ : std_logic;
SIGNAL \irRec|data_bit~0_combout\ : std_logic;
SIGNAL \irRec|data_bit~2_combout\ : std_logic;
SIGNAL \irRec|shift_proc~0_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~2_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~3_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~4_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~0_combout\ : std_logic;
SIGNAL \irRec|data_bit_proc~1_combout\ : std_logic;
SIGNAL \irRec|data_bit~3_combout\ : std_logic;
SIGNAL \irRec|data_bit~9_combout\ : std_logic;
SIGNAL \irRec|data_bit~q\ : std_logic;
SIGNAL \irRec|data_bit~clkctrl_outclk\ : std_logic;
SIGNAL \irRec|shift_reg~7_combout\ : std_logic;
SIGNAL \irRec|shift_proc~1_combout\ : std_logic;
SIGNAL \irRec|shift_proc~2_combout\ : std_logic;
SIGNAL \irRec|shift_reg[19]~0_combout\ : std_logic;
SIGNAL \irRec|shift_reg~6_combout\ : std_logic;
SIGNAL \irRec|shift_reg~5_combout\ : std_logic;
SIGNAL \irRec|shift_reg~4_combout\ : std_logic;
SIGNAL \irRec|shift_reg~3_combout\ : std_logic;
SIGNAL \irRec|shift_reg~2_combout\ : std_logic;
SIGNAL \irRec|shift_reg~1_combout\ : std_logic;
SIGNAL \irRec|data_reg~3_combout\ : std_logic;
SIGNAL \irRec|data_reg~8_combout\ : std_logic;
SIGNAL \irRec|data_reg~6_combout\ : std_logic;
SIGNAL \irRec|data_reg~5_combout\ : std_logic;
SIGNAL \irRec|shift_reg[21]~feeder_combout\ : std_logic;
SIGNAL \irRec|data_reg~2_combout\ : std_logic;
SIGNAL \irRec|data_reg~0_combout\ : std_logic;
SIGNAL \irRec|data_reg~4_combout\ : std_logic;
SIGNAL \irRec|data_reg~7_combout\ : std_logic;
SIGNAL \irRec|Mux3~3_combout\ : std_logic;
SIGNAL \irRec|Mux3~2_combout\ : std_logic;
SIGNAL \irRec|Mux3~0_combout\ : std_logic;
SIGNAL \irRec|Mux3~1_combout\ : std_logic;
SIGNAL \irRec|Mux3~4_combout\ : std_logic;
SIGNAL \irRec|Mux2~2_combout\ : std_logic;
SIGNAL \irRec|Mux2~1_combout\ : std_logic;
SIGNAL \irRec|Mux2~0_combout\ : std_logic;
SIGNAL \irRec|Mux2~3_combout\ : std_logic;
SIGNAL \irRec|Mux0~0_combout\ : std_logic;
SIGNAL \irRec|Mux0~1_combout\ : std_logic;
SIGNAL \irRec|Mux0~2_combout\ : std_logic;
SIGNAL \irRec|Mux0~3_combout\ : std_logic;
SIGNAL \irRec|Mux1~0_combout\ : std_logic;
SIGNAL \irRec|Mux1~1_combout\ : std_logic;
SIGNAL \irRec|Mux1~2_combout\ : std_logic;
SIGNAL \irRec|Mux1~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \analyse_data:counter[0]~0_combout\ : std_logic;
SIGNAL \analyse_data:counter[0]~q\ : std_logic;
SIGNAL \analyse_data:counter[1]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[1]~q\ : std_logic;
SIGNAL \analyse_data:counter[1]~2\ : std_logic;
SIGNAL \analyse_data:counter[2]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[2]~q\ : std_logic;
SIGNAL \analyse_data:counter[2]~2\ : std_logic;
SIGNAL \analyse_data:counter[3]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[3]~q\ : std_logic;
SIGNAL \analyse_data:counter[3]~2\ : std_logic;
SIGNAL \analyse_data:counter[4]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[4]~q\ : std_logic;
SIGNAL \analyse_data:counter[4]~2\ : std_logic;
SIGNAL \analyse_data:counter[5]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[5]~q\ : std_logic;
SIGNAL \analyse_data:counter[5]~2\ : std_logic;
SIGNAL \analyse_data:counter[6]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[6]~q\ : std_logic;
SIGNAL \analyse_data:counter[6]~2\ : std_logic;
SIGNAL \analyse_data:counter[7]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[7]~q\ : std_logic;
SIGNAL \analyse_data:counter[7]~2\ : std_logic;
SIGNAL \analyse_data:counter[8]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[8]~q\ : std_logic;
SIGNAL \analyse_data:counter[8]~2\ : std_logic;
SIGNAL \analyse_data:counter[9]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[9]~q\ : std_logic;
SIGNAL \analyse_data:counter[9]~2\ : std_logic;
SIGNAL \analyse_data:counter[10]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[10]~q\ : std_logic;
SIGNAL \analyse_data:counter[10]~2\ : std_logic;
SIGNAL \analyse_data:counter[11]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[11]~q\ : std_logic;
SIGNAL \analyse_data:counter[11]~2\ : std_logic;
SIGNAL \analyse_data:counter[12]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[12]~q\ : std_logic;
SIGNAL \analyse_data:counter[12]~2\ : std_logic;
SIGNAL \analyse_data:counter[13]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[13]~q\ : std_logic;
SIGNAL \analyse_data:counter[13]~2\ : std_logic;
SIGNAL \analyse_data:counter[14]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[14]~q\ : std_logic;
SIGNAL \analyse_data:counter[14]~2\ : std_logic;
SIGNAL \analyse_data:counter[15]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[15]~q\ : std_logic;
SIGNAL \analyse_data:counter[15]~2\ : std_logic;
SIGNAL \analyse_data:counter[16]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[16]~q\ : std_logic;
SIGNAL \analyse_data:counter[16]~2\ : std_logic;
SIGNAL \analyse_data:counter[17]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[17]~q\ : std_logic;
SIGNAL \analyse_data:counter[17]~2\ : std_logic;
SIGNAL \analyse_data:counter[18]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[18]~q\ : std_logic;
SIGNAL \analyse_data:counter[18]~2\ : std_logic;
SIGNAL \analyse_data:counter[19]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[19]~q\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \analyse_data:counter[19]~2\ : std_logic;
SIGNAL \analyse_data:counter[20]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[20]~q\ : std_logic;
SIGNAL \analyse_data:counter[20]~2\ : std_logic;
SIGNAL \analyse_data:counter[21]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[21]~q\ : std_logic;
SIGNAL \analyse_data:counter[21]~2\ : std_logic;
SIGNAL \analyse_data:counter[22]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[22]~q\ : std_logic;
SIGNAL \analyse_data:counter[22]~2\ : std_logic;
SIGNAL \analyse_data:counter[23]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[23]~q\ : std_logic;
SIGNAL \analyse_data:counter[23]~2\ : std_logic;
SIGNAL \analyse_data:counter[24]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[24]~q\ : std_logic;
SIGNAL \analyse_data:counter[24]~2\ : std_logic;
SIGNAL \analyse_data:counter[25]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[25]~q\ : std_logic;
SIGNAL \analyse_data:counter[25]~2\ : std_logic;
SIGNAL \analyse_data:counter[26]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[26]~q\ : std_logic;
SIGNAL \analyse_data:counter[26]~2\ : std_logic;
SIGNAL \analyse_data:counter[27]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[27]~q\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \analyse_data:counter[27]~2\ : std_logic;
SIGNAL \analyse_data:counter[28]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[28]~q\ : std_logic;
SIGNAL \analyse_data:counter[28]~2\ : std_logic;
SIGNAL \analyse_data:counter[29]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[29]~q\ : std_logic;
SIGNAL \analyse_data:counter[29]~2\ : std_logic;
SIGNAL \analyse_data:counter[30]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[30]~q\ : std_logic;
SIGNAL \analyse_data:counter[30]~2\ : std_logic;
SIGNAL \analyse_data:counter[31]~1_combout\ : std_logic;
SIGNAL \analyse_data:counter[31]~q\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \old_data_1[0]~0_combout\ : std_logic;
SIGNAL \old_data_1[1]~feeder_combout\ : std_logic;
SIGNAL \old_data_1[2]~feeder_combout\ : std_logic;
SIGNAL \old_data_1[3]~feeder_combout\ : std_logic;
SIGNAL \old_data_2[0]~0_combout\ : std_logic;
SIGNAL \old_data_2[1]~feeder_combout\ : std_logic;
SIGNAL \old_data_2[2]~feeder_combout\ : std_logic;
SIGNAL \old_data_2[3]~feeder_combout\ : std_logic;
SIGNAL \irRec|clock_counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \irRec|LC_off_counter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \irRec|LC_on_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL old_data_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL old_data_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \irRec|data_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \irRec|shift_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \irRec|data_counter\ : std_logic_vector(31 DOWNTO 0);
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
ww_clk <= clk;
ww_data_in <= data_in;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\irRec|data_bit~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \irRec|data_bit~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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
	i => old_data_1(0),
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
	i => old_data_1(1),
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
	i => old_data_1(2),
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
	i => old_data_1(3),
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
	i => old_data_2(0),
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
	i => old_data_2(1),
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
	i => old_data_2(2),
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
	i => old_data_2(3),
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

-- Location: LCCOMB_X41_Y38_N16
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

-- Location: LCCOMB_X40_Y37_N18
\irRec|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data~0_combout\ = (\data_in~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in~input_o\,
	datad => \reset~input_o\,
	combout => \irRec|data~0_combout\);

-- Location: FF_X40_Y37_N19
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

-- Location: LCCOMB_X40_Y37_N16
\irRec|data_follow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_follow~0_combout\ = (!\irRec|data~q\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data~q\,
	datad => \reset~input_o\,
	combout => \irRec|data_follow~0_combout\);

-- Location: FF_X40_Y37_N17
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

-- Location: LCCOMB_X40_Y37_N26
\irRec|state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~13_combout\ = ((\irRec|data~q\ & !\irRec|state.init~q\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data~q\,
	datac => \irRec|state.init~q\,
	datad => \reset~input_o\,
	combout => \irRec|state~13_combout\);

-- Location: LCCOMB_X43_Y38_N0
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

-- Location: LCCOMB_X43_Y38_N2
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

-- Location: LCCOMB_X42_Y38_N12
\irRec|data_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[1]~5_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~2_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~2_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(1),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[1]~5_combout\);

-- Location: FF_X42_Y38_N13
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

-- Location: LCCOMB_X43_Y38_N4
\irRec|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~4_combout\ = (\irRec|data_counter\(2) & (\irRec|Add3~3\ $ (GND))) # (!\irRec|data_counter\(2) & (!\irRec|Add3~3\ & VCC))
-- \irRec|Add3~5\ = CARRY((\irRec|data_counter\(2) & !\irRec|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(2),
	datad => VCC,
	cin => \irRec|Add3~3\,
	combout => \irRec|Add3~4_combout\,
	cout => \irRec|Add3~5\);

-- Location: LCCOMB_X44_Y38_N20
\irRec|data_counter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[2]~4_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~4_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~4_combout\,
	datac => \irRec|data_counter\(2),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[2]~4_combout\);

-- Location: FF_X44_Y38_N21
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

-- Location: LCCOMB_X43_Y38_N6
\irRec|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~6_combout\ = (\irRec|data_counter\(3) & (!\irRec|Add3~5\)) # (!\irRec|data_counter\(3) & ((\irRec|Add3~5\) # (GND)))
-- \irRec|Add3~7\ = CARRY((!\irRec|Add3~5\) # (!\irRec|data_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(3),
	datad => VCC,
	cin => \irRec|Add3~5\,
	combout => \irRec|Add3~6_combout\,
	cout => \irRec|Add3~7\);

-- Location: LCCOMB_X45_Y38_N18
\irRec|data_counter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[3]~2_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~6_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~6_combout\,
	datac => \irRec|data_counter\(3),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[3]~2_combout\);

-- Location: FF_X45_Y38_N19
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

-- Location: LCCOMB_X43_Y38_N8
\irRec|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~8_combout\ = (\irRec|data_counter\(4) & (\irRec|Add3~7\ $ (GND))) # (!\irRec|data_counter\(4) & (!\irRec|Add3~7\ & VCC))
-- \irRec|Add3~9\ = CARRY((\irRec|data_counter\(4) & !\irRec|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(4),
	datad => VCC,
	cin => \irRec|Add3~7\,
	combout => \irRec|Add3~8_combout\,
	cout => \irRec|Add3~9\);

-- Location: LCCOMB_X45_Y38_N28
\irRec|data_counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[4]~1_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~8_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~8_combout\,
	datac => \irRec|data_counter\(4),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[4]~1_combout\);

-- Location: FF_X45_Y38_N29
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

-- Location: LCCOMB_X43_Y38_N10
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

-- Location: LCCOMB_X44_Y38_N6
\irRec|data_counter[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[5]~3_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~10_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~10_combout\,
	datac => \irRec|data_counter\(5),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[5]~3_combout\);

-- Location: FF_X44_Y38_N7
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

-- Location: LCCOMB_X45_Y38_N20
\irRec|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal3~0_combout\ = (\irRec|data_counter\(0)) # ((\irRec|data_counter\(3)) # ((\irRec|data_counter\(4)) # (!\irRec|data_counter\(5))))

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
	combout => \irRec|Equal3~0_combout\);

-- Location: LCCOMB_X43_Y38_N12
\irRec|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~12_combout\ = (\irRec|data_counter\(6) & (\irRec|Add3~11\ $ (GND))) # (!\irRec|data_counter\(6) & (!\irRec|Add3~11\ & VCC))
-- \irRec|Add3~13\ = CARRY((\irRec|data_counter\(6) & !\irRec|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(6),
	datad => VCC,
	cin => \irRec|Add3~11\,
	combout => \irRec|Add3~12_combout\,
	cout => \irRec|Add3~13\);

-- Location: LCCOMB_X44_Y38_N22
\irRec|data_counter[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[6]~31_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~12_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~12_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(6),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[6]~31_combout\);

-- Location: FF_X44_Y38_N23
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

-- Location: LCCOMB_X43_Y38_N14
\irRec|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~14_combout\ = (\irRec|data_counter\(7) & (!\irRec|Add3~13\)) # (!\irRec|data_counter\(7) & ((\irRec|Add3~13\) # (GND)))
-- \irRec|Add3~15\ = CARRY((!\irRec|Add3~13\) # (!\irRec|data_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(7),
	datad => VCC,
	cin => \irRec|Add3~13\,
	combout => \irRec|Add3~14_combout\,
	cout => \irRec|Add3~15\);

-- Location: LCCOMB_X45_Y38_N12
\irRec|data_counter[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[7]~30_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~14_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~14_combout\,
	datac => \irRec|data_counter\(7),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[7]~30_combout\);

-- Location: FF_X45_Y38_N13
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

-- Location: LCCOMB_X43_Y38_N16
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

-- Location: LCCOMB_X44_Y38_N10
\irRec|data_counter[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[8]~29_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~16_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~16_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(8),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[8]~29_combout\);

-- Location: FF_X44_Y38_N11
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

-- Location: LCCOMB_X43_Y38_N18
\irRec|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~18_combout\ = (\irRec|data_counter\(9) & (!\irRec|Add3~17\)) # (!\irRec|data_counter\(9) & ((\irRec|Add3~17\) # (GND)))
-- \irRec|Add3~19\ = CARRY((!\irRec|Add3~17\) # (!\irRec|data_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(9),
	datad => VCC,
	cin => \irRec|Add3~17\,
	combout => \irRec|Add3~18_combout\,
	cout => \irRec|Add3~19\);

-- Location: LCCOMB_X44_Y38_N12
\irRec|data_counter[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[9]~28_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~18_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~18_combout\,
	datac => \irRec|data_counter\(9),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[9]~28_combout\);

-- Location: FF_X44_Y38_N13
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

-- Location: LCCOMB_X43_Y38_N20
\irRec|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~20_combout\ = (\irRec|data_counter\(10) & (\irRec|Add3~19\ $ (GND))) # (!\irRec|data_counter\(10) & (!\irRec|Add3~19\ & VCC))
-- \irRec|Add3~21\ = CARRY((\irRec|data_counter\(10) & !\irRec|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(10),
	datad => VCC,
	cin => \irRec|Add3~19\,
	combout => \irRec|Add3~20_combout\,
	cout => \irRec|Add3~21\);

-- Location: LCCOMB_X44_Y38_N14
\irRec|data_counter[10]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[10]~27_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~20_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~20_combout\,
	datac => \irRec|data_counter\(10),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[10]~27_combout\);

-- Location: FF_X44_Y38_N15
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

-- Location: LCCOMB_X43_Y38_N22
\irRec|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~22_combout\ = (\irRec|data_counter\(11) & (!\irRec|Add3~21\)) # (!\irRec|data_counter\(11) & ((\irRec|Add3~21\) # (GND)))
-- \irRec|Add3~23\ = CARRY((!\irRec|Add3~21\) # (!\irRec|data_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(11),
	datad => VCC,
	cin => \irRec|Add3~21\,
	combout => \irRec|Add3~22_combout\,
	cout => \irRec|Add3~23\);

-- Location: LCCOMB_X44_Y38_N24
\irRec|data_counter[11]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[11]~26_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~22_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~22_combout\,
	datac => \irRec|data_counter\(11),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[11]~26_combout\);

-- Location: FF_X44_Y38_N25
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

-- Location: LCCOMB_X43_Y38_N24
\irRec|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~24_combout\ = (\irRec|data_counter\(12) & (\irRec|Add3~23\ $ (GND))) # (!\irRec|data_counter\(12) & (!\irRec|Add3~23\ & VCC))
-- \irRec|Add3~25\ = CARRY((\irRec|data_counter\(12) & !\irRec|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(12),
	datad => VCC,
	cin => \irRec|Add3~23\,
	combout => \irRec|Add3~24_combout\,
	cout => \irRec|Add3~25\);

-- Location: LCCOMB_X44_Y38_N2
\irRec|data_counter[12]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[12]~25_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~24_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~24_combout\,
	datac => \irRec|data_counter\(12),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[12]~25_combout\);

-- Location: FF_X44_Y38_N3
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

-- Location: LCCOMB_X43_Y38_N26
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

-- Location: LCCOMB_X44_Y38_N8
\irRec|data_counter[13]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[13]~24_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~26_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~26_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(13),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[13]~24_combout\);

-- Location: FF_X44_Y38_N9
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

-- Location: LCCOMB_X43_Y38_N28
\irRec|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~28_combout\ = (\irRec|data_counter\(14) & (\irRec|Add3~27\ $ (GND))) # (!\irRec|data_counter\(14) & (!\irRec|Add3~27\ & VCC))
-- \irRec|Add3~29\ = CARRY((\irRec|data_counter\(14) & !\irRec|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(14),
	datad => VCC,
	cin => \irRec|Add3~27\,
	combout => \irRec|Add3~28_combout\,
	cout => \irRec|Add3~29\);

-- Location: LCCOMB_X44_Y37_N14
\irRec|data_counter[14]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[14]~23_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~28_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~28_combout\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(14),
	datad => \irRec|state.check_data~q\,
	combout => \irRec|data_counter[14]~23_combout\);

-- Location: FF_X44_Y37_N15
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

-- Location: LCCOMB_X43_Y38_N30
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

-- Location: LCCOMB_X44_Y37_N0
\irRec|data_counter[15]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[15]~22_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~30_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(15),
	datad => \irRec|Add3~30_combout\,
	combout => \irRec|data_counter[15]~22_combout\);

-- Location: FF_X44_Y37_N1
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

-- Location: LCCOMB_X44_Y37_N12
\irRec|Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~5_combout\ = (!\irRec|data_counter\(12) & (!\irRec|data_counter\(15) & (!\irRec|data_counter\(14) & !\irRec|data_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(12),
	datab => \irRec|data_counter\(15),
	datac => \irRec|data_counter\(14),
	datad => \irRec|data_counter\(13),
	combout => \irRec|Equal5~5_combout\);

-- Location: LCCOMB_X45_Y38_N30
\irRec|Equal5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~7_combout\ = (!\irRec|data_counter\(7) & !\irRec|data_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(7),
	datad => \irRec|data_counter\(6),
	combout => \irRec|Equal5~7_combout\);

-- Location: LCCOMB_X44_Y38_N28
\irRec|Equal5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~6_combout\ = (!\irRec|data_counter\(8) & (!\irRec|data_counter\(11) & (!\irRec|data_counter\(10) & !\irRec|data_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(8),
	datab => \irRec|data_counter\(11),
	datac => \irRec|data_counter\(10),
	datad => \irRec|data_counter\(9),
	combout => \irRec|Equal5~6_combout\);

-- Location: LCCOMB_X43_Y37_N0
\irRec|Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~32_combout\ = (\irRec|data_counter\(16) & (\irRec|Add3~31\ $ (GND))) # (!\irRec|data_counter\(16) & (!\irRec|Add3~31\ & VCC))
-- \irRec|Add3~33\ = CARRY((\irRec|data_counter\(16) & !\irRec|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(16),
	datad => VCC,
	cin => \irRec|Add3~31\,
	combout => \irRec|Add3~32_combout\,
	cout => \irRec|Add3~33\);

-- Location: LCCOMB_X44_Y38_N16
\irRec|data_counter[16]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[16]~21_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~32_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|Add3~32_combout\,
	datac => \irRec|data_counter\(16),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[16]~21_combout\);

-- Location: FF_X44_Y38_N17
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

-- Location: LCCOMB_X43_Y37_N2
\irRec|Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~34_combout\ = (\irRec|data_counter\(17) & (!\irRec|Add3~33\)) # (!\irRec|data_counter\(17) & ((\irRec|Add3~33\) # (GND)))
-- \irRec|Add3~35\ = CARRY((!\irRec|Add3~33\) # (!\irRec|data_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(17),
	datad => VCC,
	cin => \irRec|Add3~33\,
	combout => \irRec|Add3~34_combout\,
	cout => \irRec|Add3~35\);

-- Location: LCCOMB_X44_Y38_N18
\irRec|data_counter[17]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[17]~20_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~34_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(17),
	datad => \irRec|Add3~34_combout\,
	combout => \irRec|data_counter[17]~20_combout\);

-- Location: FF_X44_Y38_N19
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

-- Location: LCCOMB_X43_Y37_N4
\irRec|Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~36_combout\ = (\irRec|data_counter\(18) & (\irRec|Add3~35\ $ (GND))) # (!\irRec|data_counter\(18) & (!\irRec|Add3~35\ & VCC))
-- \irRec|Add3~37\ = CARRY((\irRec|data_counter\(18) & !\irRec|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(18),
	datad => VCC,
	cin => \irRec|Add3~35\,
	combout => \irRec|Add3~36_combout\,
	cout => \irRec|Add3~37\);

-- Location: LCCOMB_X44_Y38_N4
\irRec|data_counter[18]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[18]~19_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~36_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(18),
	datad => \irRec|Add3~36_combout\,
	combout => \irRec|data_counter[18]~19_combout\);

-- Location: FF_X44_Y38_N5
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

-- Location: LCCOMB_X43_Y37_N6
\irRec|Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~38_combout\ = (\irRec|data_counter\(19) & (!\irRec|Add3~37\)) # (!\irRec|data_counter\(19) & ((\irRec|Add3~37\) # (GND)))
-- \irRec|Add3~39\ = CARRY((!\irRec|Add3~37\) # (!\irRec|data_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(19),
	datad => VCC,
	cin => \irRec|Add3~37\,
	combout => \irRec|Add3~38_combout\,
	cout => \irRec|Add3~39\);

-- Location: LCCOMB_X44_Y38_N26
\irRec|data_counter[19]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[19]~18_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~38_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(19),
	datad => \irRec|Add3~38_combout\,
	combout => \irRec|data_counter[19]~18_combout\);

-- Location: FF_X44_Y38_N27
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

-- Location: LCCOMB_X44_Y38_N30
\irRec|Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~3_combout\ = (!\irRec|data_counter\(19) & (!\irRec|data_counter\(17) & (!\irRec|data_counter\(18) & !\irRec|data_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(19),
	datab => \irRec|data_counter\(17),
	datac => \irRec|data_counter\(18),
	datad => \irRec|data_counter\(16),
	combout => \irRec|Equal5~3_combout\);

-- Location: LCCOMB_X43_Y37_N8
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

-- Location: LCCOMB_X44_Y37_N6
\irRec|data_counter[20]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[20]~17_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~40_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(20),
	datad => \irRec|Add3~40_combout\,
	combout => \irRec|data_counter[20]~17_combout\);

-- Location: FF_X44_Y37_N7
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

-- Location: LCCOMB_X43_Y37_N10
\irRec|Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~42_combout\ = (\irRec|data_counter\(21) & (!\irRec|Add3~41\)) # (!\irRec|data_counter\(21) & ((\irRec|Add3~41\) # (GND)))
-- \irRec|Add3~43\ = CARRY((!\irRec|Add3~41\) # (!\irRec|data_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(21),
	datad => VCC,
	cin => \irRec|Add3~41\,
	combout => \irRec|Add3~42_combout\,
	cout => \irRec|Add3~43\);

-- Location: LCCOMB_X44_Y37_N24
\irRec|data_counter[21]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[21]~16_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~42_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(21),
	datad => \irRec|Add3~42_combout\,
	combout => \irRec|data_counter[21]~16_combout\);

-- Location: FF_X44_Y37_N25
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

-- Location: LCCOMB_X43_Y37_N12
\irRec|Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~44_combout\ = (\irRec|data_counter\(22) & (\irRec|Add3~43\ $ (GND))) # (!\irRec|data_counter\(22) & (!\irRec|Add3~43\ & VCC))
-- \irRec|Add3~45\ = CARRY((\irRec|data_counter\(22) & !\irRec|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(22),
	datad => VCC,
	cin => \irRec|Add3~43\,
	combout => \irRec|Add3~44_combout\,
	cout => \irRec|Add3~45\);

-- Location: LCCOMB_X42_Y37_N22
\irRec|data_counter[22]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[22]~15_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~44_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg[22]~1_combout\,
	datab => \irRec|Add3~44_combout\,
	datac => \irRec|data_counter\(22),
	datad => \irRec|state.check_data~q\,
	combout => \irRec|data_counter[22]~15_combout\);

-- Location: FF_X42_Y37_N23
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

-- Location: LCCOMB_X43_Y37_N14
\irRec|Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~46_combout\ = (\irRec|data_counter\(23) & (!\irRec|Add3~45\)) # (!\irRec|data_counter\(23) & ((\irRec|Add3~45\) # (GND)))
-- \irRec|Add3~47\ = CARRY((!\irRec|Add3~45\) # (!\irRec|data_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(23),
	datad => VCC,
	cin => \irRec|Add3~45\,
	combout => \irRec|Add3~46_combout\,
	cout => \irRec|Add3~47\);

-- Location: LCCOMB_X44_Y37_N30
\irRec|data_counter[23]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[23]~14_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~46_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(23),
	datad => \irRec|Add3~46_combout\,
	combout => \irRec|data_counter[23]~14_combout\);

-- Location: FF_X44_Y37_N31
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

-- Location: LCCOMB_X43_Y37_N16
\irRec|Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~48_combout\ = (\irRec|data_counter\(24) & (\irRec|Add3~47\ $ (GND))) # (!\irRec|data_counter\(24) & (!\irRec|Add3~47\ & VCC))
-- \irRec|Add3~49\ = CARRY((\irRec|data_counter\(24) & !\irRec|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(24),
	datad => VCC,
	cin => \irRec|Add3~47\,
	combout => \irRec|Add3~48_combout\,
	cout => \irRec|Add3~49\);

-- Location: LCCOMB_X42_Y37_N26
\irRec|data_counter[24]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[24]~13_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~48_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(24),
	datad => \irRec|Add3~48_combout\,
	combout => \irRec|data_counter[24]~13_combout\);

-- Location: FF_X42_Y37_N27
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

-- Location: LCCOMB_X43_Y37_N18
\irRec|Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~50_combout\ = (\irRec|data_counter\(25) & (!\irRec|Add3~49\)) # (!\irRec|data_counter\(25) & ((\irRec|Add3~49\) # (GND)))
-- \irRec|Add3~51\ = CARRY((!\irRec|Add3~49\) # (!\irRec|data_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(25),
	datad => VCC,
	cin => \irRec|Add3~49\,
	combout => \irRec|Add3~50_combout\,
	cout => \irRec|Add3~51\);

-- Location: LCCOMB_X42_Y37_N8
\irRec|data_counter[25]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[25]~12_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~50_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(25),
	datad => \irRec|Add3~50_combout\,
	combout => \irRec|data_counter[25]~12_combout\);

-- Location: FF_X42_Y37_N9
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

-- Location: LCCOMB_X43_Y37_N20
\irRec|Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~52_combout\ = (\irRec|data_counter\(26) & (\irRec|Add3~51\ $ (GND))) # (!\irRec|data_counter\(26) & (!\irRec|Add3~51\ & VCC))
-- \irRec|Add3~53\ = CARRY((\irRec|data_counter\(26) & !\irRec|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(26),
	datad => VCC,
	cin => \irRec|Add3~51\,
	combout => \irRec|Add3~52_combout\,
	cout => \irRec|Add3~53\);

-- Location: LCCOMB_X42_Y37_N16
\irRec|data_counter[26]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[26]~11_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~52_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg[22]~1_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(26),
	datad => \irRec|Add3~52_combout\,
	combout => \irRec|data_counter[26]~11_combout\);

-- Location: FF_X42_Y37_N17
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

-- Location: LCCOMB_X43_Y37_N22
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

-- Location: LCCOMB_X42_Y37_N24
\irRec|data_counter[27]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[27]~10_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~54_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(27),
	datad => \irRec|Add3~54_combout\,
	combout => \irRec|data_counter[27]~10_combout\);

-- Location: FF_X42_Y37_N25
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

-- Location: LCCOMB_X42_Y37_N10
\irRec|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~1_combout\ = (!\irRec|data_counter\(24) & (!\irRec|data_counter\(27) & (!\irRec|data_counter\(25) & !\irRec|data_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(24),
	datab => \irRec|data_counter\(27),
	datac => \irRec|data_counter\(25),
	datad => \irRec|data_counter\(26),
	combout => \irRec|Equal5~1_combout\);

-- Location: LCCOMB_X43_Y37_N24
\irRec|Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Add3~56_combout\ = (\irRec|data_counter\(28) & (\irRec|Add3~55\ $ (GND))) # (!\irRec|data_counter\(28) & (!\irRec|Add3~55\ & VCC))
-- \irRec|Add3~57\ = CARRY((\irRec|data_counter\(28) & !\irRec|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_counter\(28),
	datad => VCC,
	cin => \irRec|Add3~55\,
	combout => \irRec|Add3~56_combout\,
	cout => \irRec|Add3~57\);

-- Location: LCCOMB_X42_Y37_N30
\irRec|data_counter[28]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[28]~9_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~56_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(28),
	datad => \irRec|Add3~56_combout\,
	combout => \irRec|data_counter[28]~9_combout\);

-- Location: FF_X42_Y37_N31
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

-- Location: LCCOMB_X43_Y37_N26
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

-- Location: LCCOMB_X44_Y37_N18
\irRec|data_counter[29]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[29]~8_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~58_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~58_combout\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(29),
	datad => \irRec|state.check_data~q\,
	combout => \irRec|data_counter[29]~8_combout\);

-- Location: FF_X44_Y37_N19
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

-- Location: LCCOMB_X43_Y37_N28
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

-- Location: LCCOMB_X44_Y37_N8
\irRec|data_counter[30]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[30]~7_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~60_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(30),
	datad => \irRec|Add3~60_combout\,
	combout => \irRec|data_counter[30]~7_combout\);

-- Location: FF_X44_Y37_N9
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

-- Location: LCCOMB_X43_Y37_N30
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

-- Location: LCCOMB_X42_Y37_N14
\irRec|data_counter[31]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[31]~6_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & ((\irRec|Add3~62_combout\))) # (!\irRec|state.check_data~q\ & (\irRec|data_counter\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|data_reg[22]~1_combout\,
	datac => \irRec|data_counter\(31),
	datad => \irRec|Add3~62_combout\,
	combout => \irRec|data_counter[31]~6_combout\);

-- Location: FF_X42_Y37_N15
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

-- Location: LCCOMB_X44_Y37_N4
\irRec|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~0_combout\ = (!\irRec|data_counter\(30) & (!\irRec|data_counter\(29) & (!\irRec|data_counter\(31) & !\irRec|data_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(30),
	datab => \irRec|data_counter\(29),
	datac => \irRec|data_counter\(31),
	datad => \irRec|data_counter\(28),
	combout => \irRec|Equal5~0_combout\);

-- Location: LCCOMB_X44_Y37_N28
\irRec|Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~2_combout\ = (!\irRec|data_counter\(20) & (!\irRec|data_counter\(21) & (!\irRec|data_counter\(23) & !\irRec|data_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(20),
	datab => \irRec|data_counter\(21),
	datac => \irRec|data_counter\(23),
	datad => \irRec|data_counter\(22),
	combout => \irRec|Equal5~2_combout\);

-- Location: LCCOMB_X44_Y37_N2
\irRec|Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~4_combout\ = (\irRec|Equal5~3_combout\ & (\irRec|Equal5~1_combout\ & (\irRec|Equal5~0_combout\ & \irRec|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal5~3_combout\,
	datab => \irRec|Equal5~1_combout\,
	datac => \irRec|Equal5~0_combout\,
	datad => \irRec|Equal5~2_combout\,
	combout => \irRec|Equal5~4_combout\);

-- Location: LCCOMB_X44_Y37_N22
\irRec|Equal5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~8_combout\ = (\irRec|Equal5~5_combout\ & (\irRec|Equal5~7_combout\ & (\irRec|Equal5~6_combout\ & \irRec|Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal5~5_combout\,
	datab => \irRec|Equal5~7_combout\,
	datac => \irRec|Equal5~6_combout\,
	datad => \irRec|Equal5~4_combout\,
	combout => \irRec|Equal5~8_combout\);

-- Location: LCCOMB_X45_Y38_N2
\irRec|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal3~1_combout\ = (\irRec|data_counter\(1)) # (\irRec|data_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(1),
	datad => \irRec|data_counter\(2),
	combout => \irRec|Equal3~1_combout\);

-- Location: LCCOMB_X44_Y37_N16
\irRec|data_reg[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg[22]~1_combout\ = ((!\irRec|Equal3~0_combout\ & (\irRec|Equal5~8_combout\ & !\irRec|Equal3~1_combout\))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal3~0_combout\,
	datab => \reset~input_o\,
	datac => \irRec|Equal5~8_combout\,
	datad => \irRec|Equal3~1_combout\,
	combout => \irRec|data_reg[22]~1_combout\);

-- Location: LCCOMB_X44_Y38_N0
\irRec|data_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_counter[0]~0_combout\ = (!\irRec|data_reg[22]~1_combout\ & ((\irRec|state.check_data~q\ & (\irRec|Add3~0_combout\)) # (!\irRec|state.check_data~q\ & ((\irRec|data_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Add3~0_combout\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_counter\(0),
	datad => \irRec|data_reg[22]~1_combout\,
	combout => \irRec|data_counter[0]~0_combout\);

-- Location: FF_X44_Y38_N1
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

-- Location: LCCOMB_X45_Y38_N24
\irRec|Equal5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~9_combout\ = (\irRec|data_counter\(0) & (\irRec|data_counter\(3) & (!\irRec|data_counter\(5) & \irRec|data_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_counter\(0),
	datab => \irRec|data_counter\(3),
	datac => \irRec|data_counter\(5),
	datad => \irRec|data_counter\(4),
	combout => \irRec|Equal5~9_combout\);

-- Location: LCCOMB_X44_Y37_N10
\irRec|Equal5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal5~10_combout\ = (\irRec|Equal5~9_combout\ & (\irRec|data_counter\(2) & (\irRec|Equal5~8_combout\ & \irRec|data_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal5~9_combout\,
	datab => \irRec|data_counter\(2),
	datac => \irRec|Equal5~8_combout\,
	datad => \irRec|data_counter\(1),
	combout => \irRec|Equal5~10_combout\);

-- Location: LCCOMB_X36_Y38_N14
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

-- Location: LCCOMB_X40_Y37_N28
\irRec|LC_off_counter[5]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[5]~50_combout\ = (\irRec|state.read_LC_off~q\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|state.read_LC_off~q\,
	datad => \reset~input_o\,
	combout => \irRec|LC_off_counter[5]~50_combout\);

-- Location: LCCOMB_X36_Y37_N10
\irRec|LC_off_counter[14]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[14]~46_combout\ = (\irRec|LC_off_counter\(14) & (\irRec|LC_off_counter[13]~45\ $ (GND))) # (!\irRec|LC_off_counter\(14) & (!\irRec|LC_off_counter[13]~45\ & VCC))
-- \irRec|LC_off_counter[14]~47\ = CARRY((\irRec|LC_off_counter\(14) & !\irRec|LC_off_counter[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(14),
	datad => VCC,
	cin => \irRec|LC_off_counter[13]~45\,
	combout => \irRec|LC_off_counter[14]~46_combout\,
	cout => \irRec|LC_off_counter[14]~47\);

-- Location: LCCOMB_X36_Y37_N12
\irRec|LC_off_counter[15]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[15]~48_combout\ = (\irRec|LC_off_counter\(15) & (!\irRec|LC_off_counter[14]~47\)) # (!\irRec|LC_off_counter\(15) & ((\irRec|LC_off_counter[14]~47\) # (GND)))
-- \irRec|LC_off_counter[15]~49\ = CARRY((!\irRec|LC_off_counter[14]~47\) # (!\irRec|LC_off_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(15),
	datad => VCC,
	cin => \irRec|LC_off_counter[14]~47\,
	combout => \irRec|LC_off_counter[15]~48_combout\,
	cout => \irRec|LC_off_counter[15]~49\);

-- Location: FF_X36_Y37_N13
\irRec|LC_off_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[15]~48_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(15));

-- Location: LCCOMB_X36_Y37_N14
\irRec|LC_off_counter[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[16]~52_combout\ = (\irRec|LC_off_counter\(16) & (\irRec|LC_off_counter[15]~49\ $ (GND))) # (!\irRec|LC_off_counter\(16) & (!\irRec|LC_off_counter[15]~49\ & VCC))
-- \irRec|LC_off_counter[16]~53\ = CARRY((\irRec|LC_off_counter\(16) & !\irRec|LC_off_counter[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(16),
	datad => VCC,
	cin => \irRec|LC_off_counter[15]~49\,
	combout => \irRec|LC_off_counter[16]~52_combout\,
	cout => \irRec|LC_off_counter[16]~53\);

-- Location: FF_X36_Y37_N15
\irRec|LC_off_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[16]~52_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(16));

-- Location: LCCOMB_X36_Y37_N16
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

-- Location: FF_X36_Y37_N17
\irRec|LC_off_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[17]~54_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(17));

-- Location: LCCOMB_X36_Y37_N28
\irRec|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~3_combout\ = (\irRec|LC_off_counter\(16) & \irRec|LC_off_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|LC_off_counter\(16),
	datad => \irRec|LC_off_counter\(17),
	combout => \irRec|Equal1~3_combout\);

-- Location: LCCOMB_X36_Y38_N2
\irRec|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~0_combout\ = (!\irRec|LC_off_counter\(2) & (!\irRec|LC_off_counter\(1) & (!\irRec|LC_off_counter\(0) & !\irRec|LC_off_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(2),
	datab => \irRec|LC_off_counter\(1),
	datac => \irRec|LC_off_counter\(0),
	datad => \irRec|LC_off_counter\(3),
	combout => \irRec|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y37_N20
\irRec|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~5_combout\ = (\irRec|LC_off_counter\(12) & (\irRec|Equal1~3_combout\ & (\irRec|Equal1~0_combout\ & \irRec|LC_off_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(12),
	datab => \irRec|Equal1~3_combout\,
	datac => \irRec|Equal1~0_combout\,
	datad => \irRec|LC_off_counter\(15),
	combout => \irRec|Equal1~5_combout\);

-- Location: LCCOMB_X37_Y37_N30
\irRec|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~4_combout\ = (!\irRec|LC_off_counter\(13) & (\irRec|LC_off_counter\(4) & (\irRec|LC_off_counter\(9) & !\irRec|LC_off_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(13),
	datab => \irRec|LC_off_counter\(4),
	datac => \irRec|LC_off_counter\(9),
	datad => \irRec|LC_off_counter\(14),
	combout => \irRec|Equal1~4_combout\);

-- Location: LCCOMB_X36_Y38_N10
\irRec|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~1_combout\ = (!\irRec|LC_off_counter\(6) & (!\irRec|LC_off_counter\(5) & (!\irRec|LC_off_counter\(10) & !\irRec|LC_off_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(6),
	datab => \irRec|LC_off_counter\(5),
	datac => \irRec|LC_off_counter\(10),
	datad => \irRec|LC_off_counter\(11),
	combout => \irRec|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y38_N12
\irRec|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal1~2_combout\ = (!\irRec|LC_off_counter\(7) & (!\irRec|LC_off_counter\(8) & \irRec|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(7),
	datac => \irRec|LC_off_counter\(8),
	datad => \irRec|Equal1~1_combout\,
	combout => \irRec|Equal1~2_combout\);

-- Location: LCCOMB_X36_Y37_N22
\irRec|LC_off_counter[5]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[5]~51_combout\ = ((\irRec|Equal1~5_combout\ & (\irRec|Equal1~4_combout\ & \irRec|Equal1~2_combout\))) # (!\irRec|LC_off_counter[5]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter[5]~50_combout\,
	datab => \irRec|Equal1~5_combout\,
	datac => \irRec|Equal1~4_combout\,
	datad => \irRec|Equal1~2_combout\,
	combout => \irRec|LC_off_counter[5]~51_combout\);

-- Location: FF_X36_Y38_N15
\irRec|LC_off_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[0]~18_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(0));

-- Location: LCCOMB_X36_Y38_N16
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

-- Location: FF_X36_Y38_N17
\irRec|LC_off_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[1]~20_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(1));

-- Location: LCCOMB_X36_Y38_N18
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

-- Location: FF_X36_Y38_N19
\irRec|LC_off_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[2]~22_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(2));

-- Location: LCCOMB_X36_Y38_N20
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

-- Location: FF_X36_Y38_N21
\irRec|LC_off_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[3]~24_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(3));

-- Location: LCCOMB_X36_Y38_N22
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

-- Location: FF_X36_Y38_N23
\irRec|LC_off_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[4]~26_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(4));

-- Location: LCCOMB_X36_Y38_N24
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

-- Location: FF_X36_Y38_N25
\irRec|LC_off_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[5]~28_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(5));

-- Location: LCCOMB_X36_Y38_N26
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

-- Location: FF_X36_Y38_N27
\irRec|LC_off_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[6]~30_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(6));

-- Location: LCCOMB_X36_Y38_N28
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

-- Location: FF_X36_Y38_N29
\irRec|LC_off_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[7]~32_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(7));

-- Location: LCCOMB_X36_Y38_N30
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

-- Location: FF_X36_Y38_N31
\irRec|LC_off_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[8]~34_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(8));

-- Location: LCCOMB_X36_Y37_N0
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

-- Location: FF_X36_Y37_N1
\irRec|LC_off_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[9]~36_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(9));

-- Location: LCCOMB_X36_Y37_N2
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

-- Location: FF_X36_Y37_N3
\irRec|LC_off_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[10]~38_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(10));

-- Location: LCCOMB_X36_Y37_N4
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

-- Location: FF_X36_Y37_N5
\irRec|LC_off_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[11]~40_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(11));

-- Location: LCCOMB_X36_Y37_N6
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

-- Location: FF_X36_Y37_N7
\irRec|LC_off_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[12]~42_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(12));

-- Location: LCCOMB_X36_Y37_N8
\irRec|LC_off_counter[13]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_off_counter[13]~44_combout\ = (\irRec|LC_off_counter\(13) & (!\irRec|LC_off_counter[12]~43\)) # (!\irRec|LC_off_counter\(13) & ((\irRec|LC_off_counter[12]~43\) # (GND)))
-- \irRec|LC_off_counter[13]~45\ = CARRY((!\irRec|LC_off_counter[12]~43\) # (!\irRec|LC_off_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_off_counter\(13),
	datad => VCC,
	cin => \irRec|LC_off_counter[12]~43\,
	combout => \irRec|LC_off_counter[13]~44_combout\,
	cout => \irRec|LC_off_counter[13]~45\);

-- Location: FF_X36_Y37_N9
\irRec|LC_off_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[13]~44_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(13));

-- Location: FF_X36_Y37_N11
\irRec|LC_off_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_off_counter[14]~46_combout\,
	sclr => \irRec|LC_off_counter[5]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_off_counter\(14));

-- Location: LCCOMB_X37_Y37_N4
\irRec|nxt_state_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~0_combout\ = (\irRec|LC_off_counter\(14) & (\irRec|LC_off_counter\(15))) # (!\irRec|LC_off_counter\(14) & ((\irRec|LC_off_counter\(13)) # (!\irRec|LC_off_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(14),
	datac => \irRec|LC_off_counter\(15),
	datad => \irRec|LC_off_counter\(13),
	combout => \irRec|nxt_state_proc~0_combout\);

-- Location: LCCOMB_X36_Y37_N30
\irRec|nxt_state_proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~1_combout\ = (\irRec|LC_off_counter\(12)) # ((\irRec|LC_off_counter\(13)) # (\irRec|LC_off_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(12),
	datac => \irRec|LC_off_counter\(13),
	datad => \irRec|LC_off_counter\(15),
	combout => \irRec|nxt_state_proc~1_combout\);

-- Location: LCCOMB_X36_Y38_N0
\irRec|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LessThan3~0_combout\ = (\irRec|LC_off_counter\(8) & (\irRec|LC_off_counter\(7) & (\irRec|LC_off_counter\(6) & \irRec|LC_off_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(8),
	datab => \irRec|LC_off_counter\(7),
	datac => \irRec|LC_off_counter\(6),
	datad => \irRec|LC_off_counter\(9),
	combout => \irRec|LessThan3~0_combout\);

-- Location: LCCOMB_X36_Y38_N8
\irRec|nxt_state_proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~2_combout\ = (\irRec|LessThan3~0_combout\ & ((\irRec|LC_off_counter\(5)) # ((\irRec|LC_off_counter\(4)) # (!\irRec|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(5),
	datab => \irRec|Equal1~0_combout\,
	datac => \irRec|LC_off_counter\(4),
	datad => \irRec|LessThan3~0_combout\,
	combout => \irRec|nxt_state_proc~2_combout\);

-- Location: LCCOMB_X36_Y37_N24
\irRec|nxt_state_proc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~3_combout\ = (!\irRec|nxt_state_proc~1_combout\ & (((!\irRec|LC_off_counter\(10) & !\irRec|nxt_state_proc~2_combout\)) # (!\irRec|LC_off_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|nxt_state_proc~1_combout\,
	datab => \irRec|LC_off_counter\(10),
	datac => \irRec|LC_off_counter\(11),
	datad => \irRec|nxt_state_proc~2_combout\,
	combout => \irRec|nxt_state_proc~3_combout\);

-- Location: LCCOMB_X36_Y37_N26
\irRec|nxt_state_proc~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~4_combout\ = (\irRec|LC_off_counter\(12) & ((\irRec|LC_off_counter\(10)) # ((\irRec|LC_off_counter\(11)) # (\irRec|LC_off_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(12),
	datab => \irRec|LC_off_counter\(10),
	datac => \irRec|LC_off_counter\(11),
	datad => \irRec|LC_off_counter\(9),
	combout => \irRec|nxt_state_proc~4_combout\);

-- Location: LCCOMB_X36_Y38_N6
\irRec|nxt_state_proc~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~5_combout\ = (\irRec|LC_off_counter\(15) & (\irRec|nxt_state_proc~4_combout\ & ((\irRec|LC_off_counter\(4)) # (!\irRec|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_off_counter\(15),
	datab => \irRec|nxt_state_proc~4_combout\,
	datac => \irRec|LC_off_counter\(4),
	datad => \irRec|Equal1~2_combout\,
	combout => \irRec|nxt_state_proc~5_combout\);

-- Location: LCCOMB_X36_Y37_N18
\irRec|nxt_state_proc~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~6_combout\ = (\irRec|nxt_state_proc~0_combout\) # (((\irRec|nxt_state_proc~3_combout\) # (\irRec|nxt_state_proc~5_combout\)) # (!\irRec|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|nxt_state_proc~0_combout\,
	datab => \irRec|Equal1~3_combout\,
	datac => \irRec|nxt_state_proc~3_combout\,
	datad => \irRec|nxt_state_proc~5_combout\,
	combout => \irRec|nxt_state_proc~6_combout\);

-- Location: LCCOMB_X40_Y37_N8
\irRec|state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~12_combout\ = (\irRec|state.check_LC_off_count~q\ & ((\irRec|nxt_state_proc~6_combout\) # ((\irRec|state.check_data~q\ & \irRec|Equal5~10_combout\)))) # (!\irRec|state.check_LC_off_count~q\ & (\irRec|state.check_data~q\ & 
-- (\irRec|Equal5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_LC_off_count~q\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|Equal5~10_combout\,
	datad => \irRec|nxt_state_proc~6_combout\,
	combout => \irRec|state~12_combout\);

-- Location: LCCOMB_X39_Y36_N14
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

-- Location: LCCOMB_X40_Y37_N20
\irRec|LC_on_counter[12]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[12]~51_combout\ = (\reset~input_o\ & \irRec|state.read_LC_on~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \irRec|state.read_LC_on~q\,
	combout => \irRec|LC_on_counter[12]~51_combout\);

-- Location: LCCOMB_X39_Y35_N10
\irRec|LC_on_counter[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[14]~47_combout\ = (\irRec|LC_on_counter\(14) & (\irRec|LC_on_counter[13]~46\ $ (GND))) # (!\irRec|LC_on_counter\(14) & (!\irRec|LC_on_counter[13]~46\ & VCC))
-- \irRec|LC_on_counter[14]~48\ = CARRY((\irRec|LC_on_counter\(14) & !\irRec|LC_on_counter[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(14),
	datad => VCC,
	cin => \irRec|LC_on_counter[13]~46\,
	combout => \irRec|LC_on_counter[14]~47_combout\,
	cout => \irRec|LC_on_counter[14]~48\);

-- Location: LCCOMB_X39_Y35_N12
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

-- Location: FF_X39_Y35_N13
\irRec|LC_on_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[15]~49_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(15));

-- Location: LCCOMB_X39_Y35_N14
\irRec|LC_on_counter[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[16]~53_combout\ = (\irRec|LC_on_counter\(16) & (\irRec|LC_on_counter[15]~50\ $ (GND))) # (!\irRec|LC_on_counter\(16) & (!\irRec|LC_on_counter[15]~50\ & VCC))
-- \irRec|LC_on_counter[16]~54\ = CARRY((\irRec|LC_on_counter\(16) & !\irRec|LC_on_counter[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(16),
	datad => VCC,
	cin => \irRec|LC_on_counter[15]~50\,
	combout => \irRec|LC_on_counter[16]~53_combout\,
	cout => \irRec|LC_on_counter[16]~54\);

-- Location: FF_X39_Y35_N15
\irRec|LC_on_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[16]~53_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(16));

-- Location: LCCOMB_X39_Y35_N16
\irRec|LC_on_counter[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[17]~55_combout\ = (\irRec|LC_on_counter\(17) & (!\irRec|LC_on_counter[16]~54\)) # (!\irRec|LC_on_counter\(17) & ((\irRec|LC_on_counter[16]~54\) # (GND)))
-- \irRec|LC_on_counter[17]~56\ = CARRY((!\irRec|LC_on_counter[16]~54\) # (!\irRec|LC_on_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(17),
	datad => VCC,
	cin => \irRec|LC_on_counter[16]~54\,
	combout => \irRec|LC_on_counter[17]~55_combout\,
	cout => \irRec|LC_on_counter[17]~56\);

-- Location: FF_X39_Y35_N17
\irRec|LC_on_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[17]~55_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(17));

-- Location: LCCOMB_X39_Y35_N18
\irRec|LC_on_counter[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[18]~57_combout\ = \irRec|LC_on_counter\(18) $ (!\irRec|LC_on_counter[17]~56\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(18),
	cin => \irRec|LC_on_counter[17]~56\,
	combout => \irRec|LC_on_counter[18]~57_combout\);

-- Location: FF_X39_Y35_N19
\irRec|LC_on_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[18]~57_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(18));

-- Location: LCCOMB_X39_Y36_N6
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

-- Location: LCCOMB_X39_Y36_N12
\irRec|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal0~5_combout\ = (\irRec|LC_on_counter\(18) & (\irRec|LC_on_counter\(17) & (\irRec|LC_on_counter\(16) & \irRec|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(18),
	datab => \irRec|LC_on_counter\(17),
	datac => \irRec|LC_on_counter\(16),
	datad => \irRec|Equal0~4_combout\,
	combout => \irRec|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y36_N10
\irRec|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal0~0_combout\ = (\irRec|LC_on_counter\(4) & (\irRec|LC_on_counter\(3) & (\irRec|LC_on_counter\(6) & \irRec|LC_on_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(4),
	datab => \irRec|LC_on_counter\(3),
	datac => \irRec|LC_on_counter\(6),
	datad => \irRec|LC_on_counter\(5),
	combout => \irRec|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y36_N8
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

-- Location: LCCOMB_X39_Y35_N26
\irRec|LC_on_counter[12]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[12]~52_combout\ = ((\irRec|Equal0~3_combout\ & (\irRec|Equal0~5_combout\ & \irRec|Equal0~1_combout\))) # (!\irRec|LC_on_counter[12]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal0~3_combout\,
	datab => \irRec|LC_on_counter[12]~51_combout\,
	datac => \irRec|Equal0~5_combout\,
	datad => \irRec|Equal0~1_combout\,
	combout => \irRec|LC_on_counter[12]~52_combout\);

-- Location: FF_X39_Y36_N15
\irRec|LC_on_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[0]~19_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(0));

-- Location: LCCOMB_X39_Y36_N16
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

-- Location: FF_X39_Y36_N17
\irRec|LC_on_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[1]~21_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(1));

-- Location: LCCOMB_X39_Y36_N18
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

-- Location: FF_X39_Y36_N19
\irRec|LC_on_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[2]~23_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(2));

-- Location: LCCOMB_X39_Y36_N20
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

-- Location: FF_X39_Y36_N21
\irRec|LC_on_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[3]~25_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(3));

-- Location: LCCOMB_X39_Y36_N22
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

-- Location: FF_X39_Y36_N23
\irRec|LC_on_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[4]~27_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(4));

-- Location: LCCOMB_X39_Y36_N24
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

-- Location: FF_X39_Y36_N25
\irRec|LC_on_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[5]~29_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(5));

-- Location: LCCOMB_X39_Y36_N26
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

-- Location: FF_X39_Y36_N27
\irRec|LC_on_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[6]~31_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(6));

-- Location: LCCOMB_X39_Y36_N28
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

-- Location: FF_X39_Y36_N29
\irRec|LC_on_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[7]~33_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(7));

-- Location: LCCOMB_X39_Y36_N30
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

-- Location: FF_X39_Y36_N31
\irRec|LC_on_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[8]~35_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(8));

-- Location: LCCOMB_X39_Y35_N0
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

-- Location: FF_X39_Y35_N1
\irRec|LC_on_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[9]~37_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(9));

-- Location: LCCOMB_X39_Y35_N2
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

-- Location: FF_X39_Y35_N3
\irRec|LC_on_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[10]~39_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(10));

-- Location: LCCOMB_X39_Y35_N4
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

-- Location: FF_X39_Y35_N5
\irRec|LC_on_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[11]~41_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(11));

-- Location: LCCOMB_X39_Y35_N6
\irRec|LC_on_counter[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|LC_on_counter[12]~43_combout\ = (\irRec|LC_on_counter\(12) & (\irRec|LC_on_counter[11]~42\ $ (GND))) # (!\irRec|LC_on_counter\(12) & (!\irRec|LC_on_counter[11]~42\ & VCC))
-- \irRec|LC_on_counter[12]~44\ = CARRY((\irRec|LC_on_counter\(12) & !\irRec|LC_on_counter[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irRec|LC_on_counter\(12),
	datad => VCC,
	cin => \irRec|LC_on_counter[11]~42\,
	combout => \irRec|LC_on_counter[12]~43_combout\,
	cout => \irRec|LC_on_counter[12]~44\);

-- Location: FF_X39_Y35_N7
\irRec|LC_on_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[12]~43_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(12));

-- Location: LCCOMB_X39_Y35_N8
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

-- Location: FF_X39_Y35_N9
\irRec|LC_on_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[13]~45_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(13));

-- Location: FF_X39_Y35_N11
\irRec|LC_on_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|LC_on_counter[14]~47_combout\,
	sclr => \irRec|LC_on_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|LC_on_counter\(14));

-- Location: LCCOMB_X39_Y35_N28
\irRec|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal0~2_combout\ = (!\irRec|LC_on_counter\(8) & (!\irRec|LC_on_counter\(9) & (!\irRec|LC_on_counter\(11) & !\irRec|LC_on_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(8),
	datab => \irRec|LC_on_counter\(9),
	datac => \irRec|LC_on_counter\(11),
	datad => \irRec|LC_on_counter\(10),
	combout => \irRec|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y35_N22
\irRec|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal0~3_combout\ = (!\irRec|LC_on_counter\(14) & (!\irRec|LC_on_counter\(13) & (!\irRec|LC_on_counter\(12) & \irRec|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(14),
	datab => \irRec|LC_on_counter\(13),
	datac => \irRec|LC_on_counter\(12),
	datad => \irRec|Equal0~2_combout\,
	combout => \irRec|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y35_N24
\irRec|nxt_state_proc~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~7_combout\ = (((\irRec|LC_on_counter\(15) & \irRec|LC_on_counter\(16))) # (!\irRec|LC_on_counter\(17))) # (!\irRec|LC_on_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(15),
	datab => \irRec|LC_on_counter\(18),
	datac => \irRec|LC_on_counter\(17),
	datad => \irRec|LC_on_counter\(16),
	combout => \irRec|nxt_state_proc~7_combout\);

-- Location: LCCOMB_X38_Y35_N16
\irRec|nxt_state_proc~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~8_combout\ = ((!\irRec|LC_on_counter\(11)) # (!\irRec|LC_on_counter\(13))) # (!\irRec|LC_on_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(12),
	datac => \irRec|LC_on_counter\(13),
	datad => \irRec|LC_on_counter\(11),
	combout => \irRec|nxt_state_proc~8_combout\);

-- Location: LCCOMB_X39_Y36_N0
\irRec|nxt_state_proc~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~9_combout\ = (!\irRec|LC_on_counter\(4) & (!\irRec|LC_on_counter\(1) & (!\irRec|LC_on_counter\(0) & !\irRec|LC_on_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(4),
	datab => \irRec|LC_on_counter\(1),
	datac => \irRec|LC_on_counter\(0),
	datad => \irRec|LC_on_counter\(2),
	combout => \irRec|nxt_state_proc~9_combout\);

-- Location: LCCOMB_X39_Y36_N2
\irRec|nxt_state_proc~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~10_combout\ = (\irRec|LC_on_counter\(5) & (!\irRec|nxt_state_proc~9_combout\ & ((\irRec|LC_on_counter\(4)) # (\irRec|LC_on_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(4),
	datab => \irRec|LC_on_counter\(3),
	datac => \irRec|LC_on_counter\(5),
	datad => \irRec|nxt_state_proc~9_combout\,
	combout => \irRec|nxt_state_proc~10_combout\);

-- Location: LCCOMB_X39_Y36_N4
\irRec|nxt_state_proc~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~11_combout\ = (\irRec|LC_on_counter\(8)) # ((\irRec|LC_on_counter\(7) & ((\irRec|LC_on_counter\(6)) # (\irRec|nxt_state_proc~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(6),
	datab => \irRec|LC_on_counter\(7),
	datac => \irRec|LC_on_counter\(8),
	datad => \irRec|nxt_state_proc~10_combout\,
	combout => \irRec|nxt_state_proc~11_combout\);

-- Location: LCCOMB_X39_Y35_N20
\irRec|nxt_state_proc~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~12_combout\ = (\irRec|nxt_state_proc~8_combout\) # ((!\irRec|LC_on_counter\(10) & ((!\irRec|nxt_state_proc~11_combout\) # (!\irRec|LC_on_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|nxt_state_proc~8_combout\,
	datab => \irRec|LC_on_counter\(9),
	datac => \irRec|LC_on_counter\(10),
	datad => \irRec|nxt_state_proc~11_combout\,
	combout => \irRec|nxt_state_proc~12_combout\);

-- Location: LCCOMB_X39_Y35_N30
\irRec|nxt_state_proc~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~13_combout\ = (\irRec|nxt_state_proc~7_combout\) # ((!\irRec|LC_on_counter\(14) & (!\irRec|LC_on_counter\(16) & \irRec|nxt_state_proc~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|LC_on_counter\(14),
	datab => \irRec|nxt_state_proc~7_combout\,
	datac => \irRec|LC_on_counter\(16),
	datad => \irRec|nxt_state_proc~12_combout\,
	combout => \irRec|nxt_state_proc~13_combout\);

-- Location: LCCOMB_X39_Y35_N24
\irRec|nxt_state_proc~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|nxt_state_proc~14_combout\ = (\irRec|nxt_state_proc~13_combout\) # ((!\irRec|LC_on_counter\(15) & ((\irRec|Equal0~1_combout\) # (!\irRec|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal0~3_combout\,
	datab => \irRec|Equal0~1_combout\,
	datac => \irRec|nxt_state_proc~13_combout\,
	datad => \irRec|LC_on_counter\(15),
	combout => \irRec|nxt_state_proc~14_combout\);

-- Location: LCCOMB_X40_Y37_N14
\irRec|state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~14_combout\ = (!\irRec|state~13_combout\ & (!\irRec|state~12_combout\ & ((!\irRec|nxt_state_proc~14_combout\) # (!\irRec|state.check_LC_on_count~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_LC_on_count~q\,
	datab => \irRec|state~13_combout\,
	datac => \irRec|state~12_combout\,
	datad => \irRec|nxt_state_proc~14_combout\,
	combout => \irRec|state~14_combout\);

-- Location: FF_X40_Y37_N15
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

-- Location: LCCOMB_X40_Y37_N12
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

-- Location: FF_X40_Y37_N13
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

-- Location: LCCOMB_X40_Y37_N22
\irRec|state~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~11_combout\ = (\irRec|state.read_LC_on~q\ & (\irRec|data~q\ & (\irRec|data_follow~q\ & \reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.read_LC_on~q\,
	datab => \irRec|data~q\,
	datac => \irRec|data_follow~q\,
	datad => \reset~input_o\,
	combout => \irRec|state~11_combout\);

-- Location: FF_X40_Y37_N23
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

-- Location: LCCOMB_X40_Y37_N30
\irRec|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Selector2~0_combout\ = (\irRec|state.check_LC_on_count~q\ & (((\irRec|data~q\ & \irRec|state.read_LC_off~q\)) # (!\irRec|nxt_state_proc~14_combout\))) # (!\irRec|state.check_LC_on_count~q\ & (\irRec|data~q\ & (\irRec|state.read_LC_off~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_LC_on_count~q\,
	datab => \irRec|data~q\,
	datac => \irRec|state.read_LC_off~q\,
	datad => \irRec|nxt_state_proc~14_combout\,
	combout => \irRec|Selector2~0_combout\);

-- Location: FF_X40_Y37_N31
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

-- Location: LCCOMB_X40_Y37_N4
\irRec|state~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~10_combout\ = (!\irRec|data~q\ & (\irRec|state.read_LC_off~q\ & \reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data~q\,
	datac => \irRec|state.read_LC_off~q\,
	datad => \reset~input_o\,
	combout => \irRec|state~10_combout\);

-- Location: FF_X40_Y37_N5
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

-- Location: LCCOMB_X40_Y37_N10
\irRec|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Selector3~0_combout\ = (\irRec|state.check_LC_off_count~q\ & (((\irRec|state.check_data~q\ & !\irRec|Equal5~10_combout\)) # (!\irRec|nxt_state_proc~6_combout\))) # (!\irRec|state.check_LC_off_count~q\ & (\irRec|state.check_data~q\ & 
-- (!\irRec|Equal5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_LC_off_count~q\,
	datab => \irRec|state.check_data~q\,
	datac => \irRec|Equal5~10_combout\,
	datad => \irRec|nxt_state_proc~6_combout\,
	combout => \irRec|Selector3~0_combout\);

-- Location: LCCOMB_X40_Y37_N24
\irRec|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Selector3~1_combout\ = (\irRec|Selector3~0_combout\) # ((\irRec|state.read_data~q\ & ((!\irRec|data~q\) # (!\irRec|data_follow~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_follow~q\,
	datab => \irRec|data~q\,
	datac => \irRec|state.read_data~q\,
	datad => \irRec|Selector3~0_combout\,
	combout => \irRec|Selector3~1_combout\);

-- Location: FF_X40_Y37_N25
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

-- Location: LCCOMB_X40_Y37_N2
\irRec|state~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|state~9_combout\ = (\irRec|state.read_data~q\ & (\irRec|data~q\ & (\irRec|data_follow~q\ & \reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.read_data~q\,
	datab => \irRec|data~q\,
	datac => \irRec|data_follow~q\,
	datad => \reset~input_o\,
	combout => \irRec|state~9_combout\);

-- Location: FF_X40_Y37_N3
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

-- Location: LCCOMB_X41_Y37_N10
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

-- Location: LCCOMB_X41_Y37_N12
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

-- Location: FF_X41_Y37_N13
\irRec|clock_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[14]~45_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(14));

-- Location: LCCOMB_X41_Y37_N24
\irRec|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~0_combout\ = (\irRec|clock_counter\(14) & (\irRec|clock_counter\(12) & \irRec|clock_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(14),
	datac => \irRec|clock_counter\(12),
	datad => \irRec|clock_counter\(11),
	combout => \irRec|Equal2~0_combout\);

-- Location: LCCOMB_X41_Y38_N0
\irRec|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~1_combout\ = (\irRec|clock_counter\(2) & (\irRec|clock_counter\(3) & \irRec|clock_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|clock_counter\(2),
	datac => \irRec|clock_counter\(3),
	datad => \irRec|clock_counter\(4),
	combout => \irRec|Equal2~1_combout\);

-- Location: LCCOMB_X41_Y37_N26
\irRec|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~4_combout\ = (\irRec|clock_counter\(7) & (\irRec|Equal2~0_combout\ & (\irRec|clock_counter\(9) & \irRec|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(7),
	datab => \irRec|Equal2~0_combout\,
	datac => \irRec|clock_counter\(9),
	datad => \irRec|Equal2~1_combout\,
	combout => \irRec|Equal2~4_combout\);

-- Location: LCCOMB_X41_Y37_N14
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

-- Location: FF_X41_Y37_N15
\irRec|clock_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[15]~47_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(15));

-- Location: LCCOMB_X41_Y37_N16
\irRec|clock_counter[16]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[16]~50_combout\ = \irRec|clock_counter[15]~48\ $ (!\irRec|clock_counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irRec|clock_counter\(16),
	cin => \irRec|clock_counter[15]~48\,
	combout => \irRec|clock_counter[16]~50_combout\);

-- Location: FF_X41_Y37_N17
\irRec|clock_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[16]~50_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(16));

-- Location: LCCOMB_X41_Y38_N4
\irRec|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~2_combout\ = (!\irRec|clock_counter\(5) & (!\irRec|clock_counter\(0) & (!\irRec|clock_counter\(6) & !\irRec|clock_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(5),
	datab => \irRec|clock_counter\(0),
	datac => \irRec|clock_counter\(6),
	datad => \irRec|clock_counter\(1),
	combout => \irRec|Equal2~2_combout\);

-- Location: LCCOMB_X41_Y37_N28
\irRec|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~3_combout\ = (!\irRec|clock_counter\(13) & (!\irRec|clock_counter\(8) & (!\irRec|clock_counter\(10) & \irRec|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(13),
	datab => \irRec|clock_counter\(8),
	datac => \irRec|clock_counter\(10),
	datad => \irRec|Equal2~2_combout\,
	combout => \irRec|Equal2~3_combout\);

-- Location: LCCOMB_X41_Y37_N20
\irRec|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Equal2~5_combout\ = (\irRec|Equal2~4_combout\ & (\irRec|clock_counter\(16) & (\irRec|clock_counter\(15) & \irRec|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal2~4_combout\,
	datab => \irRec|clock_counter\(16),
	datac => \irRec|clock_counter\(15),
	datad => \irRec|Equal2~3_combout\,
	combout => \irRec|Equal2~5_combout\);

-- Location: LCCOMB_X41_Y37_N30
\irRec|clock_counter[3]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|clock_counter[3]~49_combout\ = (\irRec|state.check_data~q\) # (((\irRec|Equal2~5_combout\) # (!\reset~input_o\)) # (!\irRec|state.read_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|state.check_data~q\,
	datab => \irRec|state.read_data~q\,
	datac => \reset~input_o\,
	datad => \irRec|Equal2~5_combout\,
	combout => \irRec|clock_counter[3]~49_combout\);

-- Location: FF_X41_Y38_N17
\irRec|clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[0]~17_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(0));

-- Location: LCCOMB_X41_Y38_N18
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

-- Location: FF_X41_Y38_N19
\irRec|clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[1]~19_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(1));

-- Location: LCCOMB_X41_Y38_N20
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

-- Location: FF_X41_Y38_N21
\irRec|clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[2]~21_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(2));

-- Location: LCCOMB_X41_Y38_N22
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

-- Location: FF_X41_Y38_N23
\irRec|clock_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[3]~23_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(3));

-- Location: LCCOMB_X41_Y38_N24
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

-- Location: FF_X41_Y38_N25
\irRec|clock_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[4]~25_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(4));

-- Location: LCCOMB_X41_Y38_N26
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

-- Location: FF_X41_Y38_N27
\irRec|clock_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[5]~27_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(5));

-- Location: LCCOMB_X41_Y38_N28
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

-- Location: FF_X41_Y38_N29
\irRec|clock_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[6]~29_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(6));

-- Location: LCCOMB_X41_Y38_N30
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

-- Location: FF_X41_Y38_N31
\irRec|clock_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[7]~31_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(7));

-- Location: LCCOMB_X41_Y37_N0
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

-- Location: FF_X41_Y37_N1
\irRec|clock_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[8]~33_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(8));

-- Location: LCCOMB_X41_Y37_N2
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

-- Location: FF_X41_Y37_N3
\irRec|clock_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[9]~35_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(9));

-- Location: LCCOMB_X41_Y37_N4
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

-- Location: FF_X41_Y37_N5
\irRec|clock_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[10]~37_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(10));

-- Location: LCCOMB_X41_Y37_N6
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

-- Location: FF_X41_Y37_N7
\irRec|clock_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[11]~39_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(11));

-- Location: LCCOMB_X41_Y37_N8
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

-- Location: FF_X41_Y37_N9
\irRec|clock_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[12]~41_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(12));

-- Location: FF_X41_Y37_N11
\irRec|clock_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|clock_counter[13]~43_combout\,
	sclr => \irRec|clock_counter[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|clock_counter\(13));

-- Location: LCCOMB_X41_Y38_N8
\irRec|data_bit_proc~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~6_combout\ = (!\irRec|clock_counter\(2) & (!\irRec|clock_counter\(3) & ((!\irRec|clock_counter\(0)) # (!\irRec|clock_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(1),
	datab => \irRec|clock_counter\(2),
	datac => \irRec|clock_counter\(3),
	datad => \irRec|clock_counter\(0),
	combout => \irRec|data_bit_proc~6_combout\);

-- Location: LCCOMB_X42_Y38_N26
\irRec|data_bit_proc~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~7_combout\ = (!\irRec|clock_counter\(6) & (!\irRec|clock_counter\(5) & ((\irRec|data_bit_proc~6_combout\) # (!\irRec|clock_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(6),
	datab => \irRec|clock_counter\(5),
	datac => \irRec|clock_counter\(4),
	datad => \irRec|data_bit_proc~6_combout\,
	combout => \irRec|data_bit_proc~7_combout\);

-- Location: LCCOMB_X41_Y37_N22
\irRec|data_bit_proc~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~5_combout\ = (!\irRec|clock_counter\(14) & (!\irRec|clock_counter\(9) & (!\irRec|clock_counter\(10) & !\irRec|clock_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(14),
	datab => \irRec|clock_counter\(9),
	datac => \irRec|clock_counter\(10),
	datad => \irRec|clock_counter\(8),
	combout => \irRec|data_bit_proc~5_combout\);

-- Location: LCCOMB_X42_Y38_N4
\irRec|data_bit_proc~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~8_combout\ = (\irRec|data_bit_proc~5_combout\ & ((\irRec|data_bit_proc~7_combout\) # (!\irRec|clock_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(7),
	datac => \irRec|data_bit_proc~7_combout\,
	datad => \irRec|data_bit_proc~5_combout\,
	combout => \irRec|data_bit_proc~8_combout\);

-- Location: LCCOMB_X41_Y38_N10
\irRec|data_bit_proc~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~9_combout\ = (\irRec|clock_counter\(3)) # ((\irRec|clock_counter\(1)) # ((\irRec|clock_counter\(4)) # (\irRec|clock_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(3),
	datab => \irRec|clock_counter\(1),
	datac => \irRec|clock_counter\(4),
	datad => \irRec|clock_counter\(2),
	combout => \irRec|data_bit_proc~9_combout\);

-- Location: LCCOMB_X42_Y38_N18
\irRec|data_bit~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~6_combout\ = (\irRec|clock_counter\(7) & (\irRec|clock_counter\(5) & (\irRec|clock_counter\(6) & \irRec|data_bit_proc~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(7),
	datab => \irRec|clock_counter\(5),
	datac => \irRec|clock_counter\(6),
	datad => \irRec|data_bit_proc~9_combout\,
	combout => \irRec|data_bit~6_combout\);

-- Location: LCCOMB_X42_Y38_N16
\irRec|data_bit~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~7_combout\ = (\irRec|Equal2~0_combout\ & (\irRec|clock_counter\(9) & ((\irRec|clock_counter\(8)) # (\irRec|data_bit~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal2~0_combout\,
	datab => \irRec|clock_counter\(8),
	datac => \irRec|clock_counter\(9),
	datad => \irRec|data_bit~6_combout\,
	combout => \irRec|data_bit~7_combout\);

-- Location: LCCOMB_X42_Y38_N30
\irRec|data_bit~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~8_combout\ = (\irRec|data_bit_proc~8_combout\) # ((\irRec|clock_counter\(13) & (\irRec|clock_counter\(10) & \irRec|data_bit~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(13),
	datab => \irRec|clock_counter\(10),
	datac => \irRec|data_bit_proc~8_combout\,
	datad => \irRec|data_bit~7_combout\,
	combout => \irRec|data_bit~8_combout\);

-- Location: LCCOMB_X42_Y37_N18
\irRec|data_bit~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~4_combout\ = (!\irRec|clock_counter\(14) & (((!\irRec|clock_counter\(13)) # (!\irRec|clock_counter\(11))) # (!\irRec|clock_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(14),
	datab => \irRec|clock_counter\(12),
	datac => \irRec|clock_counter\(11),
	datad => \irRec|clock_counter\(13),
	combout => \irRec|data_bit~4_combout\);

-- Location: LCCOMB_X42_Y37_N20
\irRec|data_bit~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~5_combout\ = ((\irRec|data_bit~4_combout\) # ((\irRec|clock_counter\(16)) # (!\irRec|state.check_data~q\))) # (!\irRec|clock_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(15),
	datab => \irRec|data_bit~4_combout\,
	datac => \irRec|clock_counter\(16),
	datad => \irRec|state.check_data~q\,
	combout => \irRec|data_bit~5_combout\);

-- Location: LCCOMB_X41_Y37_N18
\irRec|data_bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~1_combout\ = (\irRec|clock_counter\(16) & ((\irRec|clock_counter\(14)) # ((\irRec|clock_counter\(12)) # (\irRec|clock_counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(14),
	datab => \irRec|clock_counter\(12),
	datac => \irRec|clock_counter\(13),
	datad => \irRec|clock_counter\(16),
	combout => \irRec|data_bit~1_combout\);

-- Location: LCCOMB_X42_Y37_N0
\irRec|data_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~0_combout\ = (\irRec|clock_counter\(14) & (((!\irRec|clock_counter\(13))))) # (!\irRec|clock_counter\(14) & ((\irRec|clock_counter\(11)) # ((\irRec|clock_counter\(10)) # (\irRec|clock_counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(14),
	datab => \irRec|clock_counter\(11),
	datac => \irRec|clock_counter\(10),
	datad => \irRec|clock_counter\(13),
	combout => \irRec|data_bit~0_combout\);

-- Location: LCCOMB_X42_Y38_N28
\irRec|data_bit~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~2_combout\ = (\irRec|clock_counter\(15) & (\irRec|state.check_data~q\ & (\irRec|data_bit~1_combout\ & \irRec|data_bit~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(15),
	datab => \irRec|state.check_data~q\,
	datac => \irRec|data_bit~1_combout\,
	datad => \irRec|data_bit~0_combout\,
	combout => \irRec|data_bit~2_combout\);

-- Location: LCCOMB_X42_Y38_N8
\irRec|shift_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_proc~0_combout\ = (!\irRec|clock_counter\(11) & (!\irRec|clock_counter\(9) & (!\irRec|clock_counter\(7) & !\irRec|clock_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(11),
	datab => \irRec|clock_counter\(9),
	datac => \irRec|clock_counter\(7),
	datad => \irRec|clock_counter\(14),
	combout => \irRec|shift_proc~0_combout\);

-- Location: LCCOMB_X41_Y38_N12
\irRec|data_bit_proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~2_combout\ = (((!\irRec|clock_counter\(1) & !\irRec|clock_counter\(0))) # (!\irRec|clock_counter\(2))) # (!\irRec|clock_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(1),
	datab => \irRec|clock_counter\(0),
	datac => \irRec|clock_counter\(3),
	datad => \irRec|clock_counter\(2),
	combout => \irRec|data_bit_proc~2_combout\);

-- Location: LCCOMB_X41_Y38_N2
\irRec|data_bit_proc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~3_combout\ = ((!\irRec|clock_counter\(5) & (!\irRec|clock_counter\(4) & \irRec|data_bit_proc~2_combout\))) # (!\irRec|clock_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(5),
	datab => \irRec|clock_counter\(6),
	datac => \irRec|clock_counter\(4),
	datad => \irRec|data_bit_proc~2_combout\,
	combout => \irRec|data_bit_proc~3_combout\);

-- Location: LCCOMB_X42_Y38_N22
\irRec|data_bit_proc~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~4_combout\ = (!\irRec|clock_counter\(13) & (!\irRec|clock_counter\(8) & (\irRec|shift_proc~0_combout\ & \irRec|data_bit_proc~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(13),
	datab => \irRec|clock_counter\(8),
	datac => \irRec|shift_proc~0_combout\,
	datad => \irRec|data_bit_proc~3_combout\,
	combout => \irRec|data_bit_proc~4_combout\);

-- Location: LCCOMB_X41_Y38_N14
\irRec|data_bit_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~0_combout\ = (\irRec|clock_counter\(7) & ((\irRec|clock_counter\(5)) # ((\irRec|clock_counter\(6)) # (\irRec|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(5),
	datab => \irRec|clock_counter\(6),
	datac => \irRec|clock_counter\(7),
	datad => \irRec|Equal2~1_combout\,
	combout => \irRec|data_bit_proc~0_combout\);

-- Location: LCCOMB_X42_Y38_N2
\irRec|data_bit_proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit_proc~1_combout\ = (\irRec|clock_counter\(10)) # ((\irRec|clock_counter\(9) & ((\irRec|clock_counter\(8)) # (\irRec|data_bit_proc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(9),
	datab => \irRec|clock_counter\(8),
	datac => \irRec|clock_counter\(10),
	datad => \irRec|data_bit_proc~0_combout\,
	combout => \irRec|data_bit_proc~1_combout\);

-- Location: LCCOMB_X42_Y38_N20
\irRec|data_bit~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~3_combout\ = (\irRec|data_bit~2_combout\ & (!\irRec|data_bit_proc~4_combout\ & ((!\irRec|data_bit_proc~1_combout\) # (!\irRec|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Equal2~0_combout\,
	datab => \irRec|data_bit~2_combout\,
	datac => \irRec|data_bit_proc~4_combout\,
	datad => \irRec|data_bit_proc~1_combout\,
	combout => \irRec|data_bit~3_combout\);

-- Location: LCCOMB_X42_Y37_N4
\irRec|data_bit~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_bit~9_combout\ = (\irRec|data_bit~3_combout\) # ((\irRec|data_bit~q\ & ((\irRec|data_bit~8_combout\) # (\irRec|data_bit~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_bit~8_combout\,
	datab => \irRec|data_bit~5_combout\,
	datac => \irRec|data_bit~3_combout\,
	datad => \irRec|data_bit~q\,
	combout => \irRec|data_bit~9_combout\);

-- Location: FF_X42_Y37_N29
\irRec|data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_bit~9_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_bit~q\);

-- Location: CLKCTRL_G14
\irRec|data_bit~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \irRec|data_bit~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \irRec|data_bit~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y37_N12
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

-- Location: LCCOMB_X41_Y38_N6
\irRec|shift_proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_proc~1_combout\ = (\irRec|clock_counter\(12)) # ((\irRec|clock_counter\(4)) # ((\irRec|clock_counter\(3)) # (\irRec|clock_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(12),
	datab => \irRec|clock_counter\(4),
	datac => \irRec|clock_counter\(3),
	datad => \irRec|clock_counter\(2),
	combout => \irRec|shift_proc~1_combout\);

-- Location: LCCOMB_X44_Y37_N20
\irRec|shift_proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_proc~2_combout\ = (\irRec|shift_proc~1_combout\) # (((\irRec|Equal5~10_combout\) # (!\irRec|Equal2~3_combout\)) # (!\irRec|shift_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|shift_proc~1_combout\,
	datab => \irRec|shift_proc~0_combout\,
	datac => \irRec|Equal2~3_combout\,
	datad => \irRec|Equal5~10_combout\,
	combout => \irRec|shift_proc~2_combout\);

-- Location: LCCOMB_X44_Y37_N26
\irRec|shift_reg[19]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg[19]~0_combout\ = ((!\irRec|clock_counter\(16) & (!\irRec|clock_counter\(15) & !\irRec|shift_proc~2_combout\))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|clock_counter\(16),
	datab => \reset~input_o\,
	datac => \irRec|clock_counter\(15),
	datad => \irRec|shift_proc~2_combout\,
	combout => \irRec|shift_reg[19]~0_combout\);

-- Location: FF_X43_Y37_N11
\irRec|shift_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|shift_reg~7_combout\,
	sload => VCC,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(31));

-- Location: LCCOMB_X45_Y37_N26
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

-- Location: FF_X45_Y37_N27
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

-- Location: LCCOMB_X45_Y37_N24
\irRec|shift_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~5_combout\ = (\reset~input_o\ & \irRec|shift_reg\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \irRec|shift_reg\(30),
	combout => \irRec|shift_reg~5_combout\);

-- Location: FF_X45_Y37_N25
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

-- Location: LCCOMB_X46_Y37_N22
\irRec|shift_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~4_combout\ = (\irRec|shift_reg\(29) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|shift_reg\(29),
	datad => \reset~input_o\,
	combout => \irRec|shift_reg~4_combout\);

-- Location: FF_X46_Y37_N23
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

-- Location: LCCOMB_X46_Y37_N28
\irRec|shift_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~3_combout\ = (\irRec|shift_reg\(28) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|shift_reg\(28),
	datad => \reset~input_o\,
	combout => \irRec|shift_reg~3_combout\);

-- Location: FF_X46_Y37_N29
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

-- Location: LCCOMB_X46_Y37_N30
\irRec|shift_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~2_combout\ = (\irRec|shift_reg\(27) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|shift_reg\(27),
	datad => \reset~input_o\,
	combout => \irRec|shift_reg~2_combout\);

-- Location: FF_X46_Y37_N31
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

-- Location: LCCOMB_X46_Y37_N18
\irRec|shift_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg~1_combout\ = (\irRec|shift_reg\(26) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|shift_reg\(26),
	datad => \reset~input_o\,
	combout => \irRec|shift_reg~1_combout\);

-- Location: FF_X46_Y37_N19
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

-- Location: LCCOMB_X46_Y37_N26
\irRec|data_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~3_combout\ = (\irRec|shift_reg\(25) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|shift_reg\(25),
	datad => \reset~input_o\,
	combout => \irRec|data_reg~3_combout\);

-- Location: FF_X46_Y37_N11
\irRec|shift_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~3_combout\,
	sload => VCC,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(24));

-- Location: LCCOMB_X46_Y37_N8
\irRec|data_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~8_combout\ = (\reset~input_o\ & \irRec|shift_reg\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \irRec|shift_reg\(24),
	combout => \irRec|data_reg~8_combout\);

-- Location: FF_X43_Y37_N23
\irRec|shift_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~8_combout\,
	sload => VCC,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(23));

-- Location: LCCOMB_X45_Y37_N16
\irRec|data_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~6_combout\ = (\irRec|shift_reg\(23) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|shift_reg\(23),
	datad => \reset~input_o\,
	combout => \irRec|data_reg~6_combout\);

-- Location: FF_X45_Y37_N5
\irRec|shift_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~6_combout\,
	sload => VCC,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(22));

-- Location: LCCOMB_X45_Y37_N6
\irRec|data_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~5_combout\ = (\irRec|shift_reg\(22) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|shift_reg\(22),
	datad => \reset~input_o\,
	combout => \irRec|data_reg~5_combout\);

-- Location: LCCOMB_X45_Y37_N10
\irRec|shift_reg[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|shift_reg[21]~feeder_combout\ = \irRec|data_reg~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irRec|data_reg~5_combout\,
	combout => \irRec|shift_reg[21]~feeder_combout\);

-- Location: FF_X45_Y37_N11
\irRec|shift_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|shift_reg[21]~feeder_combout\,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(21));

-- Location: LCCOMB_X45_Y37_N12
\irRec|data_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~2_combout\ = (\irRec|shift_reg\(21) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|shift_reg\(21),
	datad => \reset~input_o\,
	combout => \irRec|data_reg~2_combout\);

-- Location: FF_X45_Y37_N13
\irRec|shift_reg[20]\ : dffeas
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
	q => \irRec|shift_reg\(20));

-- Location: LCCOMB_X45_Y37_N28
\irRec|data_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~0_combout\ = (\reset~input_o\ & \irRec|shift_reg\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \irRec|shift_reg\(20),
	combout => \irRec|data_reg~0_combout\);

-- Location: FF_X45_Y37_N9
\irRec|data_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~0_combout\,
	sload => VCC,
	ena => \irRec|data_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(18));

-- Location: FF_X46_Y37_N27
\irRec|data_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~8_combout\,
	sload => VCC,
	ena => \irRec|data_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(22));

-- Location: FF_X45_Y37_N23
\irRec|shift_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~0_combout\,
	sload => VCC,
	ena => \irRec|shift_reg[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|shift_reg\(19));

-- Location: LCCOMB_X46_Y37_N16
\irRec|data_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~4_combout\ = (\irRec|shift_reg\(19) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|shift_reg\(19),
	datad => \reset~input_o\,
	combout => \irRec|data_reg~4_combout\);

-- Location: FF_X46_Y37_N17
\irRec|shift_reg[18]\ : dffeas
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
	q => \irRec|shift_reg\(18));

-- Location: LCCOMB_X46_Y37_N12
\irRec|data_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|data_reg~7_combout\ = (\irRec|shift_reg\(18) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|shift_reg\(18),
	datad => \reset~input_o\,
	combout => \irRec|data_reg~7_combout\);

-- Location: FF_X46_Y37_N13
\irRec|data_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_reg~7_combout\,
	ena => \irRec|data_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(16));

-- Location: LCCOMB_X46_Y37_N24
\irRec|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux3~3_combout\ = (!\irRec|data_reg\(22) & \irRec|data_reg\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|data_reg\(22),
	datad => \irRec|data_reg\(16),
	combout => \irRec|Mux3~3_combout\);

-- Location: FF_X45_Y37_N17
\irRec|data_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~3_combout\,
	sload => VCC,
	ena => \irRec|data_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(23));

-- Location: FF_X45_Y37_N7
\irRec|data_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \irRec|data_reg~5_combout\,
	ena => \irRec|data_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(20));

-- Location: FF_X46_Y37_N9
\irRec|data_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~4_combout\,
	sload => VCC,
	ena => \irRec|data_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(17));

-- Location: FF_X45_Y37_N31
\irRec|data_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~2_combout\,
	sload => VCC,
	ena => \irRec|data_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(19));

-- Location: LCCOMB_X46_Y37_N14
\irRec|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux3~2_combout\ = (\irRec|data_reg\(23)) # (((\irRec|data_reg\(17)) # (\irRec|data_reg\(19))) # (!\irRec|data_reg\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(20),
	datac => \irRec|data_reg\(17),
	datad => \irRec|data_reg\(19),
	combout => \irRec|Mux3~2_combout\);

-- Location: FF_X45_Y37_N29
\irRec|data_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \irRec|data_reg~6_combout\,
	sload => VCC,
	ena => \irRec|data_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irRec|data_reg\(21));

-- Location: LCCOMB_X46_Y37_N2
\irRec|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux3~0_combout\ = (\irRec|data_reg\(17) & (((\irRec|data_reg\(20)) # (\irRec|data_reg\(21))))) # (!\irRec|data_reg\(17) & (((!\irRec|data_reg\(23) & \irRec|data_reg\(20))) # (!\irRec|data_reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(17),
	datac => \irRec|data_reg\(20),
	datad => \irRec|data_reg\(21),
	combout => \irRec|Mux3~0_combout\);

-- Location: LCCOMB_X46_Y37_N0
\irRec|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux3~1_combout\ = (\irRec|data_reg\(19) & ((\irRec|data_reg\(23)) # ((\irRec|Mux3~0_combout\)))) # (!\irRec|data_reg\(19) & (\irRec|data_reg\(18) & ((\irRec|Mux3~0_combout\) # (!\irRec|data_reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(18),
	datac => \irRec|data_reg\(19),
	datad => \irRec|Mux3~0_combout\,
	combout => \irRec|Mux3~1_combout\);

-- Location: LCCOMB_X46_Y37_N6
\irRec|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux3~4_combout\ = ((\irRec|Mux3~1_combout\) # ((!\irRec|data_reg\(18) & \irRec|Mux3~2_combout\))) # (!\irRec|Mux3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(18),
	datab => \irRec|Mux3~3_combout\,
	datac => \irRec|Mux3~2_combout\,
	datad => \irRec|Mux3~1_combout\,
	combout => \irRec|Mux3~4_combout\);

-- Location: LCCOMB_X46_Y37_N10
\irRec|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux2~2_combout\ = (!\irRec|data_reg\(18)) # (!\irRec|data_reg\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|data_reg\(17),
	datad => \irRec|data_reg\(18),
	combout => \irRec|Mux2~2_combout\);

-- Location: LCCOMB_X46_Y37_N4
\irRec|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux2~1_combout\ = (\irRec|data_reg\(23) & ((\irRec|data_reg\(19)) # ((\irRec|data_reg\(17) & \irRec|data_reg\(21))))) # (!\irRec|data_reg\(23) & ((\irRec|data_reg\(17)) # ((!\irRec|data_reg\(19) & \irRec|data_reg\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|data_reg\(17),
	datac => \irRec|data_reg\(19),
	datad => \irRec|data_reg\(21),
	combout => \irRec|Mux2~1_combout\);

-- Location: LCCOMB_X45_Y37_N20
\irRec|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux2~0_combout\ = (\irRec|data_reg\(20) & ((\irRec|data_reg\(23) & ((\irRec|data_reg\(21)) # (!\irRec|data_reg\(18)))) # (!\irRec|data_reg\(23) & (\irRec|data_reg\(18))))) # (!\irRec|data_reg\(20) & (((!\irRec|data_reg\(21)) # 
-- (!\irRec|data_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(20),
	datab => \irRec|data_reg\(23),
	datac => \irRec|data_reg\(18),
	datad => \irRec|data_reg\(21),
	combout => \irRec|Mux2~0_combout\);

-- Location: LCCOMB_X46_Y37_N20
\irRec|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux2~3_combout\ = ((\irRec|Mux2~1_combout\) # (\irRec|Mux2~2_combout\ $ (!\irRec|Mux2~0_combout\))) # (!\irRec|Mux3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux2~2_combout\,
	datab => \irRec|Mux3~3_combout\,
	datac => \irRec|Mux2~1_combout\,
	datad => \irRec|Mux2~0_combout\,
	combout => \irRec|Mux2~3_combout\);

-- Location: LCCOMB_X45_Y37_N2
\irRec|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux0~0_combout\ = (\irRec|data_reg\(20) & ((\irRec|data_reg\(18) & ((!\irRec|data_reg\(23)) # (!\irRec|data_reg\(21)))) # (!\irRec|data_reg\(18) & ((\irRec|data_reg\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(20),
	datab => \irRec|data_reg\(21),
	datac => \irRec|data_reg\(18),
	datad => \irRec|data_reg\(23),
	combout => \irRec|Mux0~0_combout\);

-- Location: LCCOMB_X45_Y37_N30
\irRec|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux0~1_combout\ = (\irRec|data_reg\(18) & ((\irRec|data_reg\(21) & (\irRec|data_reg\(19) & !\irRec|data_reg\(23))) # (!\irRec|data_reg\(21) & (!\irRec|data_reg\(19) & \irRec|data_reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(18),
	datab => \irRec|data_reg\(21),
	datac => \irRec|data_reg\(19),
	datad => \irRec|data_reg\(23),
	combout => \irRec|Mux0~1_combout\);

-- Location: LCCOMB_X45_Y37_N0
\irRec|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux0~2_combout\ = ((\irRec|data_reg\(17)) # ((!\irRec|data_reg\(20) & !\irRec|Mux0~1_combout\))) # (!\irRec|Mux3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(20),
	datab => \irRec|Mux3~3_combout\,
	datac => \irRec|data_reg\(17),
	datad => \irRec|Mux0~1_combout\,
	combout => \irRec|Mux0~2_combout\);

-- Location: LCCOMB_X45_Y37_N22
\irRec|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux0~3_combout\ = (\irRec|Mux0~0_combout\) # (\irRec|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irRec|Mux0~0_combout\,
	datad => \irRec|Mux0~2_combout\,
	combout => \irRec|Mux0~3_combout\);

-- Location: LCCOMB_X45_Y37_N18
\irRec|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux1~0_combout\ = (\irRec|data_reg\(19) & (\irRec|data_reg\(20) $ (((\irRec|data_reg\(21)) # (\irRec|data_reg\(18)))))) # (!\irRec|data_reg\(19) & (\irRec|data_reg\(21) & (!\irRec|data_reg\(18) & \irRec|data_reg\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(19),
	datab => \irRec|data_reg\(21),
	datac => \irRec|data_reg\(18),
	datad => \irRec|data_reg\(20),
	combout => \irRec|Mux1~0_combout\);

-- Location: LCCOMB_X45_Y37_N8
\irRec|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux1~1_combout\ = (\irRec|data_reg\(18) & (\irRec|data_reg\(19) $ (\irRec|data_reg\(20) $ (\irRec|data_reg\(21))))) # (!\irRec|data_reg\(18) & (\irRec|data_reg\(19) & (!\irRec|data_reg\(20) & \irRec|data_reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(19),
	datab => \irRec|data_reg\(20),
	datac => \irRec|data_reg\(18),
	datad => \irRec|data_reg\(21),
	combout => \irRec|Mux1~1_combout\);

-- Location: LCCOMB_X45_Y37_N4
\irRec|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux1~2_combout\ = (\irRec|Mux1~1_combout\ & (!\irRec|data_reg\(17))) # (!\irRec|Mux1~1_combout\ & (\irRec|data_reg\(17) & \irRec|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux1~1_combout\,
	datab => \irRec|data_reg\(17),
	datad => \irRec|Mux1~0_combout\,
	combout => \irRec|Mux1~2_combout\);

-- Location: LCCOMB_X45_Y37_N14
\irRec|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \irRec|Mux1~3_combout\ = ((\irRec|data_reg\(23) & ((\irRec|Mux1~0_combout\) # (!\irRec|Mux1~2_combout\))) # (!\irRec|data_reg\(23) & ((\irRec|Mux1~2_combout\) # (!\irRec|Mux1~0_combout\)))) # (!\irRec|Mux3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|data_reg\(23),
	datab => \irRec|Mux1~0_combout\,
	datac => \irRec|Mux1~2_combout\,
	datad => \irRec|Mux3~3_combout\,
	combout => \irRec|Mux1~3_combout\);

-- Location: LCCOMB_X50_Y37_N22
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((!\irRec|Mux1~3_combout\) # (!\irRec|Mux3~4_combout\)) # (!\irRec|Mux0~3_combout\)) # (!\irRec|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irRec|Mux2~3_combout\,
	datab => \irRec|Mux0~3_combout\,
	datac => \irRec|Mux3~4_combout\,
	datad => \irRec|Mux1~3_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X51_Y38_N0
\analyse_data:counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[0]~0_combout\ = \analyse_data:counter[0]~q\ $ (\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \analyse_data:counter[0]~q\,
	datad => \Equal0~0_combout\,
	combout => \analyse_data:counter[0]~0_combout\);

-- Location: FF_X51_Y38_N1
\analyse_data:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[0]~q\);

-- Location: LCCOMB_X51_Y38_N2
\analyse_data:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[1]~1_combout\ = (\analyse_data:counter[0]~q\ & (\analyse_data:counter[1]~q\ $ (VCC))) # (!\analyse_data:counter[0]~q\ & (\analyse_data:counter[1]~q\ & VCC))
-- \analyse_data:counter[1]~2\ = CARRY((\analyse_data:counter[0]~q\ & \analyse_data:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[0]~q\,
	datab => \analyse_data:counter[1]~q\,
	datad => VCC,
	combout => \analyse_data:counter[1]~1_combout\,
	cout => \analyse_data:counter[1]~2\);

-- Location: FF_X51_Y38_N3
\analyse_data:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[1]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[1]~q\);

-- Location: LCCOMB_X51_Y38_N4
\analyse_data:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[2]~1_combout\ = (\analyse_data:counter[2]~q\ & (!\analyse_data:counter[1]~2\)) # (!\analyse_data:counter[2]~q\ & ((\analyse_data:counter[1]~2\) # (GND)))
-- \analyse_data:counter[2]~2\ = CARRY((!\analyse_data:counter[1]~2\) # (!\analyse_data:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[2]~q\,
	datad => VCC,
	cin => \analyse_data:counter[1]~2\,
	combout => \analyse_data:counter[2]~1_combout\,
	cout => \analyse_data:counter[2]~2\);

-- Location: FF_X51_Y38_N5
\analyse_data:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[2]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[2]~q\);

-- Location: LCCOMB_X51_Y38_N6
\analyse_data:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[3]~1_combout\ = (\analyse_data:counter[3]~q\ & (\analyse_data:counter[2]~2\ $ (GND))) # (!\analyse_data:counter[3]~q\ & (!\analyse_data:counter[2]~2\ & VCC))
-- \analyse_data:counter[3]~2\ = CARRY((\analyse_data:counter[3]~q\ & !\analyse_data:counter[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[3]~q\,
	datad => VCC,
	cin => \analyse_data:counter[2]~2\,
	combout => \analyse_data:counter[3]~1_combout\,
	cout => \analyse_data:counter[3]~2\);

-- Location: FF_X51_Y38_N7
\analyse_data:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[3]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[3]~q\);

-- Location: LCCOMB_X51_Y38_N8
\analyse_data:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[4]~1_combout\ = (\analyse_data:counter[4]~q\ & (!\analyse_data:counter[3]~2\)) # (!\analyse_data:counter[4]~q\ & ((\analyse_data:counter[3]~2\) # (GND)))
-- \analyse_data:counter[4]~2\ = CARRY((!\analyse_data:counter[3]~2\) # (!\analyse_data:counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[4]~q\,
	datad => VCC,
	cin => \analyse_data:counter[3]~2\,
	combout => \analyse_data:counter[4]~1_combout\,
	cout => \analyse_data:counter[4]~2\);

-- Location: FF_X51_Y38_N9
\analyse_data:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[4]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[4]~q\);

-- Location: LCCOMB_X51_Y38_N10
\analyse_data:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[5]~1_combout\ = (\analyse_data:counter[5]~q\ & (\analyse_data:counter[4]~2\ $ (GND))) # (!\analyse_data:counter[5]~q\ & (!\analyse_data:counter[4]~2\ & VCC))
-- \analyse_data:counter[5]~2\ = CARRY((\analyse_data:counter[5]~q\ & !\analyse_data:counter[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[5]~q\,
	datad => VCC,
	cin => \analyse_data:counter[4]~2\,
	combout => \analyse_data:counter[5]~1_combout\,
	cout => \analyse_data:counter[5]~2\);

-- Location: FF_X51_Y38_N11
\analyse_data:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[5]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[5]~q\);

-- Location: LCCOMB_X51_Y38_N12
\analyse_data:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[6]~1_combout\ = (\analyse_data:counter[6]~q\ & (!\analyse_data:counter[5]~2\)) # (!\analyse_data:counter[6]~q\ & ((\analyse_data:counter[5]~2\) # (GND)))
-- \analyse_data:counter[6]~2\ = CARRY((!\analyse_data:counter[5]~2\) # (!\analyse_data:counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[6]~q\,
	datad => VCC,
	cin => \analyse_data:counter[5]~2\,
	combout => \analyse_data:counter[6]~1_combout\,
	cout => \analyse_data:counter[6]~2\);

-- Location: FF_X51_Y38_N13
\analyse_data:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[6]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[6]~q\);

-- Location: LCCOMB_X51_Y38_N14
\analyse_data:counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[7]~1_combout\ = (\analyse_data:counter[7]~q\ & (\analyse_data:counter[6]~2\ $ (GND))) # (!\analyse_data:counter[7]~q\ & (!\analyse_data:counter[6]~2\ & VCC))
-- \analyse_data:counter[7]~2\ = CARRY((\analyse_data:counter[7]~q\ & !\analyse_data:counter[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[7]~q\,
	datad => VCC,
	cin => \analyse_data:counter[6]~2\,
	combout => \analyse_data:counter[7]~1_combout\,
	cout => \analyse_data:counter[7]~2\);

-- Location: FF_X51_Y38_N15
\analyse_data:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[7]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[7]~q\);

-- Location: LCCOMB_X51_Y38_N16
\analyse_data:counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[8]~1_combout\ = (\analyse_data:counter[8]~q\ & (!\analyse_data:counter[7]~2\)) # (!\analyse_data:counter[8]~q\ & ((\analyse_data:counter[7]~2\) # (GND)))
-- \analyse_data:counter[8]~2\ = CARRY((!\analyse_data:counter[7]~2\) # (!\analyse_data:counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[8]~q\,
	datad => VCC,
	cin => \analyse_data:counter[7]~2\,
	combout => \analyse_data:counter[8]~1_combout\,
	cout => \analyse_data:counter[8]~2\);

-- Location: FF_X51_Y38_N17
\analyse_data:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[8]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[8]~q\);

-- Location: LCCOMB_X51_Y38_N18
\analyse_data:counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[9]~1_combout\ = (\analyse_data:counter[9]~q\ & (\analyse_data:counter[8]~2\ $ (GND))) # (!\analyse_data:counter[9]~q\ & (!\analyse_data:counter[8]~2\ & VCC))
-- \analyse_data:counter[9]~2\ = CARRY((\analyse_data:counter[9]~q\ & !\analyse_data:counter[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[9]~q\,
	datad => VCC,
	cin => \analyse_data:counter[8]~2\,
	combout => \analyse_data:counter[9]~1_combout\,
	cout => \analyse_data:counter[9]~2\);

-- Location: FF_X51_Y38_N19
\analyse_data:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[9]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[9]~q\);

-- Location: LCCOMB_X51_Y38_N20
\analyse_data:counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[10]~1_combout\ = (\analyse_data:counter[10]~q\ & (!\analyse_data:counter[9]~2\)) # (!\analyse_data:counter[10]~q\ & ((\analyse_data:counter[9]~2\) # (GND)))
-- \analyse_data:counter[10]~2\ = CARRY((!\analyse_data:counter[9]~2\) # (!\analyse_data:counter[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[10]~q\,
	datad => VCC,
	cin => \analyse_data:counter[9]~2\,
	combout => \analyse_data:counter[10]~1_combout\,
	cout => \analyse_data:counter[10]~2\);

-- Location: FF_X51_Y38_N21
\analyse_data:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[10]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[10]~q\);

-- Location: LCCOMB_X51_Y38_N22
\analyse_data:counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[11]~1_combout\ = (\analyse_data:counter[11]~q\ & (\analyse_data:counter[10]~2\ $ (GND))) # (!\analyse_data:counter[11]~q\ & (!\analyse_data:counter[10]~2\ & VCC))
-- \analyse_data:counter[11]~2\ = CARRY((\analyse_data:counter[11]~q\ & !\analyse_data:counter[10]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[11]~q\,
	datad => VCC,
	cin => \analyse_data:counter[10]~2\,
	combout => \analyse_data:counter[11]~1_combout\,
	cout => \analyse_data:counter[11]~2\);

-- Location: FF_X51_Y38_N23
\analyse_data:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[11]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[11]~q\);

-- Location: LCCOMB_X51_Y38_N24
\analyse_data:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[12]~1_combout\ = (\analyse_data:counter[12]~q\ & (!\analyse_data:counter[11]~2\)) # (!\analyse_data:counter[12]~q\ & ((\analyse_data:counter[11]~2\) # (GND)))
-- \analyse_data:counter[12]~2\ = CARRY((!\analyse_data:counter[11]~2\) # (!\analyse_data:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[12]~q\,
	datad => VCC,
	cin => \analyse_data:counter[11]~2\,
	combout => \analyse_data:counter[12]~1_combout\,
	cout => \analyse_data:counter[12]~2\);

-- Location: FF_X51_Y38_N25
\analyse_data:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[12]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[12]~q\);

-- Location: LCCOMB_X51_Y38_N26
\analyse_data:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[13]~1_combout\ = (\analyse_data:counter[13]~q\ & (\analyse_data:counter[12]~2\ $ (GND))) # (!\analyse_data:counter[13]~q\ & (!\analyse_data:counter[12]~2\ & VCC))
-- \analyse_data:counter[13]~2\ = CARRY((\analyse_data:counter[13]~q\ & !\analyse_data:counter[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[13]~q\,
	datad => VCC,
	cin => \analyse_data:counter[12]~2\,
	combout => \analyse_data:counter[13]~1_combout\,
	cout => \analyse_data:counter[13]~2\);

-- Location: FF_X51_Y38_N27
\analyse_data:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[13]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[13]~q\);

-- Location: LCCOMB_X51_Y38_N28
\analyse_data:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[14]~1_combout\ = (\analyse_data:counter[14]~q\ & (!\analyse_data:counter[13]~2\)) # (!\analyse_data:counter[14]~q\ & ((\analyse_data:counter[13]~2\) # (GND)))
-- \analyse_data:counter[14]~2\ = CARRY((!\analyse_data:counter[13]~2\) # (!\analyse_data:counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[14]~q\,
	datad => VCC,
	cin => \analyse_data:counter[13]~2\,
	combout => \analyse_data:counter[14]~1_combout\,
	cout => \analyse_data:counter[14]~2\);

-- Location: FF_X51_Y38_N29
\analyse_data:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[14]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[14]~q\);

-- Location: LCCOMB_X51_Y38_N30
\analyse_data:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[15]~1_combout\ = (\analyse_data:counter[15]~q\ & (\analyse_data:counter[14]~2\ $ (GND))) # (!\analyse_data:counter[15]~q\ & (!\analyse_data:counter[14]~2\ & VCC))
-- \analyse_data:counter[15]~2\ = CARRY((\analyse_data:counter[15]~q\ & !\analyse_data:counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[15]~q\,
	datad => VCC,
	cin => \analyse_data:counter[14]~2\,
	combout => \analyse_data:counter[15]~1_combout\,
	cout => \analyse_data:counter[15]~2\);

-- Location: FF_X51_Y38_N31
\analyse_data:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[15]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[15]~q\);

-- Location: LCCOMB_X51_Y37_N0
\analyse_data:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[16]~1_combout\ = (\analyse_data:counter[16]~q\ & (!\analyse_data:counter[15]~2\)) # (!\analyse_data:counter[16]~q\ & ((\analyse_data:counter[15]~2\) # (GND)))
-- \analyse_data:counter[16]~2\ = CARRY((!\analyse_data:counter[15]~2\) # (!\analyse_data:counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[16]~q\,
	datad => VCC,
	cin => \analyse_data:counter[15]~2\,
	combout => \analyse_data:counter[16]~1_combout\,
	cout => \analyse_data:counter[16]~2\);

-- Location: FF_X51_Y37_N1
\analyse_data:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[16]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[16]~q\);

-- Location: LCCOMB_X51_Y37_N2
\analyse_data:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[17]~1_combout\ = (\analyse_data:counter[17]~q\ & (\analyse_data:counter[16]~2\ $ (GND))) # (!\analyse_data:counter[17]~q\ & (!\analyse_data:counter[16]~2\ & VCC))
-- \analyse_data:counter[17]~2\ = CARRY((\analyse_data:counter[17]~q\ & !\analyse_data:counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[17]~q\,
	datad => VCC,
	cin => \analyse_data:counter[16]~2\,
	combout => \analyse_data:counter[17]~1_combout\,
	cout => \analyse_data:counter[17]~2\);

-- Location: FF_X51_Y37_N3
\analyse_data:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[17]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[17]~q\);

-- Location: LCCOMB_X51_Y37_N4
\analyse_data:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[18]~1_combout\ = (\analyse_data:counter[18]~q\ & (!\analyse_data:counter[17]~2\)) # (!\analyse_data:counter[18]~q\ & ((\analyse_data:counter[17]~2\) # (GND)))
-- \analyse_data:counter[18]~2\ = CARRY((!\analyse_data:counter[17]~2\) # (!\analyse_data:counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[18]~q\,
	datad => VCC,
	cin => \analyse_data:counter[17]~2\,
	combout => \analyse_data:counter[18]~1_combout\,
	cout => \analyse_data:counter[18]~2\);

-- Location: FF_X51_Y37_N5
\analyse_data:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[18]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[18]~q\);

-- Location: LCCOMB_X51_Y37_N6
\analyse_data:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[19]~1_combout\ = (\analyse_data:counter[19]~q\ & (\analyse_data:counter[18]~2\ $ (GND))) # (!\analyse_data:counter[19]~q\ & (!\analyse_data:counter[18]~2\ & VCC))
-- \analyse_data:counter[19]~2\ = CARRY((\analyse_data:counter[19]~q\ & !\analyse_data:counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[19]~q\,
	datad => VCC,
	cin => \analyse_data:counter[18]~2\,
	combout => \analyse_data:counter[19]~1_combout\,
	cout => \analyse_data:counter[19]~2\);

-- Location: FF_X51_Y37_N7
\analyse_data:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[19]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[19]~q\);

-- Location: LCCOMB_X50_Y37_N30
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\analyse_data:counter[18]~q\ & (!\analyse_data:counter[19]~q\ & (!\analyse_data:counter[16]~q\ & !\analyse_data:counter[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[18]~q\,
	datab => \analyse_data:counter[19]~q\,
	datac => \analyse_data:counter[16]~q\,
	datad => \analyse_data:counter[17]~q\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X51_Y37_N8
\analyse_data:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[20]~1_combout\ = (\analyse_data:counter[20]~q\ & (!\analyse_data:counter[19]~2\)) # (!\analyse_data:counter[20]~q\ & ((\analyse_data:counter[19]~2\) # (GND)))
-- \analyse_data:counter[20]~2\ = CARRY((!\analyse_data:counter[19]~2\) # (!\analyse_data:counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[20]~q\,
	datad => VCC,
	cin => \analyse_data:counter[19]~2\,
	combout => \analyse_data:counter[20]~1_combout\,
	cout => \analyse_data:counter[20]~2\);

-- Location: FF_X51_Y37_N9
\analyse_data:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[20]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[20]~q\);

-- Location: LCCOMB_X51_Y37_N10
\analyse_data:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[21]~1_combout\ = (\analyse_data:counter[21]~q\ & (\analyse_data:counter[20]~2\ $ (GND))) # (!\analyse_data:counter[21]~q\ & (!\analyse_data:counter[20]~2\ & VCC))
-- \analyse_data:counter[21]~2\ = CARRY((\analyse_data:counter[21]~q\ & !\analyse_data:counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[21]~q\,
	datad => VCC,
	cin => \analyse_data:counter[20]~2\,
	combout => \analyse_data:counter[21]~1_combout\,
	cout => \analyse_data:counter[21]~2\);

-- Location: FF_X51_Y37_N11
\analyse_data:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[21]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[21]~q\);

-- Location: LCCOMB_X51_Y37_N12
\analyse_data:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[22]~1_combout\ = (\analyse_data:counter[22]~q\ & (!\analyse_data:counter[21]~2\)) # (!\analyse_data:counter[22]~q\ & ((\analyse_data:counter[21]~2\) # (GND)))
-- \analyse_data:counter[22]~2\ = CARRY((!\analyse_data:counter[21]~2\) # (!\analyse_data:counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[22]~q\,
	datad => VCC,
	cin => \analyse_data:counter[21]~2\,
	combout => \analyse_data:counter[22]~1_combout\,
	cout => \analyse_data:counter[22]~2\);

-- Location: FF_X51_Y37_N13
\analyse_data:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[22]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[22]~q\);

-- Location: LCCOMB_X51_Y37_N14
\analyse_data:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[23]~1_combout\ = (\analyse_data:counter[23]~q\ & (\analyse_data:counter[22]~2\ $ (GND))) # (!\analyse_data:counter[23]~q\ & (!\analyse_data:counter[22]~2\ & VCC))
-- \analyse_data:counter[23]~2\ = CARRY((\analyse_data:counter[23]~q\ & !\analyse_data:counter[22]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[23]~q\,
	datad => VCC,
	cin => \analyse_data:counter[22]~2\,
	combout => \analyse_data:counter[23]~1_combout\,
	cout => \analyse_data:counter[23]~2\);

-- Location: FF_X51_Y37_N15
\analyse_data:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[23]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[23]~q\);

-- Location: LCCOMB_X51_Y37_N16
\analyse_data:counter[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[24]~1_combout\ = (\analyse_data:counter[24]~q\ & (!\analyse_data:counter[23]~2\)) # (!\analyse_data:counter[24]~q\ & ((\analyse_data:counter[23]~2\) # (GND)))
-- \analyse_data:counter[24]~2\ = CARRY((!\analyse_data:counter[23]~2\) # (!\analyse_data:counter[24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[24]~q\,
	datad => VCC,
	cin => \analyse_data:counter[23]~2\,
	combout => \analyse_data:counter[24]~1_combout\,
	cout => \analyse_data:counter[24]~2\);

-- Location: FF_X51_Y37_N17
\analyse_data:counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[24]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[24]~q\);

-- Location: LCCOMB_X51_Y37_N18
\analyse_data:counter[25]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[25]~1_combout\ = (\analyse_data:counter[25]~q\ & (\analyse_data:counter[24]~2\ $ (GND))) # (!\analyse_data:counter[25]~q\ & (!\analyse_data:counter[24]~2\ & VCC))
-- \analyse_data:counter[25]~2\ = CARRY((\analyse_data:counter[25]~q\ & !\analyse_data:counter[24]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[25]~q\,
	datad => VCC,
	cin => \analyse_data:counter[24]~2\,
	combout => \analyse_data:counter[25]~1_combout\,
	cout => \analyse_data:counter[25]~2\);

-- Location: FF_X51_Y37_N19
\analyse_data:counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[25]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[25]~q\);

-- Location: LCCOMB_X51_Y37_N20
\analyse_data:counter[26]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[26]~1_combout\ = (\analyse_data:counter[26]~q\ & (!\analyse_data:counter[25]~2\)) # (!\analyse_data:counter[26]~q\ & ((\analyse_data:counter[25]~2\) # (GND)))
-- \analyse_data:counter[26]~2\ = CARRY((!\analyse_data:counter[25]~2\) # (!\analyse_data:counter[26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[26]~q\,
	datad => VCC,
	cin => \analyse_data:counter[25]~2\,
	combout => \analyse_data:counter[26]~1_combout\,
	cout => \analyse_data:counter[26]~2\);

-- Location: FF_X51_Y37_N21
\analyse_data:counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[26]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[26]~q\);

-- Location: LCCOMB_X51_Y37_N22
\analyse_data:counter[27]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[27]~1_combout\ = (\analyse_data:counter[27]~q\ & (\analyse_data:counter[26]~2\ $ (GND))) # (!\analyse_data:counter[27]~q\ & (!\analyse_data:counter[26]~2\ & VCC))
-- \analyse_data:counter[27]~2\ = CARRY((\analyse_data:counter[27]~q\ & !\analyse_data:counter[26]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[27]~q\,
	datad => VCC,
	cin => \analyse_data:counter[26]~2\,
	combout => \analyse_data:counter[27]~1_combout\,
	cout => \analyse_data:counter[27]~2\);

-- Location: FF_X51_Y37_N23
\analyse_data:counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[27]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[27]~q\);

-- Location: LCCOMB_X50_Y37_N26
\Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!\analyse_data:counter[26]~q\ & !\analyse_data:counter[27]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \analyse_data:counter[26]~q\,
	datad => \analyse_data:counter[27]~q\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X51_Y37_N24
\analyse_data:counter[28]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[28]~1_combout\ = (\analyse_data:counter[28]~q\ & (!\analyse_data:counter[27]~2\)) # (!\analyse_data:counter[28]~q\ & ((\analyse_data:counter[27]~2\) # (GND)))
-- \analyse_data:counter[28]~2\ = CARRY((!\analyse_data:counter[27]~2\) # (!\analyse_data:counter[28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[28]~q\,
	datad => VCC,
	cin => \analyse_data:counter[27]~2\,
	combout => \analyse_data:counter[28]~1_combout\,
	cout => \analyse_data:counter[28]~2\);

-- Location: FF_X51_Y37_N25
\analyse_data:counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[28]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[28]~q\);

-- Location: LCCOMB_X51_Y37_N26
\analyse_data:counter[29]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[29]~1_combout\ = (\analyse_data:counter[29]~q\ & (\analyse_data:counter[28]~2\ $ (GND))) # (!\analyse_data:counter[29]~q\ & (!\analyse_data:counter[28]~2\ & VCC))
-- \analyse_data:counter[29]~2\ = CARRY((\analyse_data:counter[29]~q\ & !\analyse_data:counter[28]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[29]~q\,
	datad => VCC,
	cin => \analyse_data:counter[28]~2\,
	combout => \analyse_data:counter[29]~1_combout\,
	cout => \analyse_data:counter[29]~2\);

-- Location: FF_X51_Y37_N27
\analyse_data:counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[29]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[29]~q\);

-- Location: LCCOMB_X51_Y37_N28
\analyse_data:counter[30]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[30]~1_combout\ = (\analyse_data:counter[30]~q\ & (!\analyse_data:counter[29]~2\)) # (!\analyse_data:counter[30]~q\ & ((\analyse_data:counter[29]~2\) # (GND)))
-- \analyse_data:counter[30]~2\ = CARRY((!\analyse_data:counter[29]~2\) # (!\analyse_data:counter[30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \analyse_data:counter[30]~q\,
	datad => VCC,
	cin => \analyse_data:counter[29]~2\,
	combout => \analyse_data:counter[30]~1_combout\,
	cout => \analyse_data:counter[30]~2\);

-- Location: FF_X51_Y37_N29
\analyse_data:counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[30]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[30]~q\);

-- Location: LCCOMB_X51_Y37_N30
\analyse_data:counter[31]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \analyse_data:counter[31]~1_combout\ = \analyse_data:counter[31]~q\ $ (!\analyse_data:counter[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[31]~q\,
	cin => \analyse_data:counter[30]~2\,
	combout => \analyse_data:counter[31]~1_combout\);

-- Location: FF_X51_Y37_N31
\analyse_data:counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \analyse_data:counter[31]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \analyse_data:counter[31]~q\);

-- Location: LCCOMB_X50_Y37_N8
\Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!\analyse_data:counter[31]~q\ & (!\analyse_data:counter[28]~q\ & (!\analyse_data:counter[30]~q\ & !\analyse_data:counter[29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[31]~q\,
	datab => \analyse_data:counter[28]~q\,
	datac => \analyse_data:counter[30]~q\,
	datad => \analyse_data:counter[29]~q\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X50_Y37_N14
\Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~7_combout\ & (!\analyse_data:counter[25]~q\ & (\Equal1~8_combout\ & !\analyse_data:counter[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => \analyse_data:counter[25]~q\,
	datac => \Equal1~8_combout\,
	datad => \analyse_data:counter[24]~q\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X50_Y37_N4
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!\analyse_data:counter[23]~q\ & (!\analyse_data:counter[21]~q\ & (!\analyse_data:counter[20]~q\ & !\analyse_data:counter[22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[23]~q\,
	datab => \analyse_data:counter[21]~q\,
	datac => \analyse_data:counter[20]~q\,
	datad => \analyse_data:counter[22]~q\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X50_Y38_N30
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\analyse_data:counter[5]~q\ & (!\analyse_data:counter[6]~q\ & (!\analyse_data:counter[7]~q\ & !\analyse_data:counter[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[5]~q\,
	datab => \analyse_data:counter[6]~q\,
	datac => \analyse_data:counter[7]~q\,
	datad => \analyse_data:counter[4]~q\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X50_Y38_N12
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\analyse_data:counter[2]~q\ & (!\analyse_data:counter[0]~q\ & (!\analyse_data:counter[1]~q\ & !\analyse_data:counter[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[2]~q\,
	datab => \analyse_data:counter[0]~q\,
	datac => \analyse_data:counter[1]~q\,
	datad => \analyse_data:counter[3]~q\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X50_Y38_N18
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\analyse_data:counter[15]~q\ & (!\analyse_data:counter[12]~q\ & (!\analyse_data:counter[13]~q\ & !\analyse_data:counter[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[15]~q\,
	datab => \analyse_data:counter[12]~q\,
	datac => \analyse_data:counter[13]~q\,
	datad => \analyse_data:counter[14]~q\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X50_Y38_N8
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\analyse_data:counter[8]~q\ & (!\analyse_data:counter[11]~q\ & (!\analyse_data:counter[10]~q\ & !\analyse_data:counter[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analyse_data:counter[8]~q\,
	datab => \analyse_data:counter[11]~q\,
	datac => \analyse_data:counter[10]~q\,
	datad => \analyse_data:counter[9]~q\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X50_Y37_N20
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\Equal1~3_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X50_Y37_N24
\Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~5_combout\ & (\Equal1~9_combout\ & (\Equal1~6_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~9_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X50_Y37_N16
\old_data_1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_1[0]~0_combout\ = (\Equal1~10_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Equal0~0_combout\,
	combout => \old_data_1[0]~0_combout\);

-- Location: FF_X50_Y37_N17
\old_data_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	asdata => \irRec|Mux3~4_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \old_data_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_1(0));

-- Location: LCCOMB_X50_Y37_N10
\old_data_1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_1[1]~feeder_combout\ = \irRec|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irRec|Mux2~3_combout\,
	combout => \old_data_1[1]~feeder_combout\);

-- Location: FF_X50_Y37_N11
\old_data_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \old_data_1[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_1(1));

-- Location: LCCOMB_X50_Y37_N12
\old_data_1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_1[2]~feeder_combout\ = \irRec|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|Mux1~3_combout\,
	combout => \old_data_1[2]~feeder_combout\);

-- Location: FF_X50_Y37_N13
\old_data_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \old_data_1[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_1(2));

-- Location: LCCOMB_X50_Y37_N2
\old_data_1[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_1[3]~feeder_combout\ = \irRec|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irRec|Mux0~3_combout\,
	combout => \old_data_1[3]~feeder_combout\);

-- Location: FF_X50_Y37_N3
\old_data_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \old_data_1[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_1(3));

-- Location: LCCOMB_X50_Y37_N28
\old_data_2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_2[0]~0_combout\ = (\Equal0~0_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \old_data_2[0]~0_combout\);

-- Location: FF_X50_Y37_N29
\old_data_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	asdata => \irRec|Mux3~4_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \old_data_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_2(0));

-- Location: LCCOMB_X50_Y37_N18
\old_data_2[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_2[1]~feeder_combout\ = \irRec|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irRec|Mux2~3_combout\,
	combout => \old_data_2[1]~feeder_combout\);

-- Location: FF_X50_Y37_N19
\old_data_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \old_data_2[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_2(1));

-- Location: LCCOMB_X50_Y37_N0
\old_data_2[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_2[2]~feeder_combout\ = \irRec|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irRec|Mux1~3_combout\,
	combout => \old_data_2[2]~feeder_combout\);

-- Location: FF_X50_Y37_N1
\old_data_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \old_data_2[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_2(2));

-- Location: LCCOMB_X50_Y37_N6
\old_data_2[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \old_data_2[3]~feeder_combout\ = \irRec|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irRec|Mux0~3_combout\,
	combout => \old_data_2[3]~feeder_combout\);

-- Location: FF_X50_Y37_N7
\old_data_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \irRec|data_bit~clkctrl_outclk\,
	d => \old_data_2[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \old_data_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => old_data_2(3));

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
END structure;


