-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "10/28/2020 01:01:12"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	data : BUFFER std_logic_vector(7 DOWNTO 0);
	address : BUFFER std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	rw : IN std_logic
	);
END main;

-- Design Ports Information
-- address[0]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[8]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[9]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[10]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[11]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[12]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[13]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[14]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[15]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \data[0]~output_o\ : std_logic;
SIGNAL \data[1]~output_o\ : std_logic;
SIGNAL \data[2]~output_o\ : std_logic;
SIGNAL \data[3]~output_o\ : std_logic;
SIGNAL \data[4]~output_o\ : std_logic;
SIGNAL \data[5]~output_o\ : std_logic;
SIGNAL \data[6]~output_o\ : std_logic;
SIGNAL \data[7]~output_o\ : std_logic;
SIGNAL \address[0]~output_o\ : std_logic;
SIGNAL \address[1]~output_o\ : std_logic;
SIGNAL \address[2]~output_o\ : std_logic;
SIGNAL \address[3]~output_o\ : std_logic;
SIGNAL \address[4]~output_o\ : std_logic;
SIGNAL \address[5]~output_o\ : std_logic;
SIGNAL \address[6]~output_o\ : std_logic;
SIGNAL \address[7]~output_o\ : std_logic;
SIGNAL \address[8]~output_o\ : std_logic;
SIGNAL \address[9]~output_o\ : std_logic;
SIGNAL \address[10]~output_o\ : std_logic;
SIGNAL \address[11]~output_o\ : std_logic;
SIGNAL \address[12]~output_o\ : std_logic;
SIGNAL \address[13]~output_o\ : std_logic;
SIGNAL \address[14]~output_o\ : std_logic;
SIGNAL \address[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \CPU|INST_Register[6]~feeder_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \CPU|dataReg[0]~feeder_combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \CPU|StepCounter[0]~23_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~10_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~24_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \CPU|dataReg[3]~feeder_combout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \CPU|StepCounter[0]~20_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~18_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~19_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[0]~51_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~15_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~14_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~57_combout\ : std_logic;
SIGNAL \CPU|Selector167~0_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~16_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~17_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~21_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~22_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~33_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~32_combout\ : std_logic;
SIGNAL \CPU|Decoder0~1_combout\ : std_logic;
SIGNAL \CPU|B_Register[7]~6_combout\ : std_logic;
SIGNAL \CPU|B_Register[7]~8_combout\ : std_logic;
SIGNAL \CPU|B_Register[7]~9_combout\ : std_logic;
SIGNAL \CPU|B_Register[7]~7_combout\ : std_logic;
SIGNAL \CPU|AND_Register~3_combout\ : std_logic;
SIGNAL \CPU|OR_Register~3_combout\ : std_logic;
SIGNAL \CPU|AND_Register~1_combout\ : std_logic;
SIGNAL \CPU|Selector159~0_combout\ : std_logic;
SIGNAL \CPU|Selector166~0_combout\ : std_logic;
SIGNAL \CPU|Add1~0_combout\ : std_logic;
SIGNAL \CPU|Selector160~2_combout\ : std_logic;
SIGNAL \CPU|Selector160~0_combout\ : std_logic;
SIGNAL \CPU|Selector160~1_combout\ : std_logic;
SIGNAL \CPU|Selector166~4_combout\ : std_logic;
SIGNAL \CPU|Selector166~5_combout\ : std_logic;
SIGNAL \CPU|Selector166~1_combout\ : std_logic;
SIGNAL \CPU|OR_Register~0_combout\ : std_logic;
SIGNAL \CPU|AND_Register~0_combout\ : std_logic;
SIGNAL \CPU|Selector166~2_combout\ : std_logic;
SIGNAL \CPU|Selector166~3_combout\ : std_logic;
SIGNAL \CPU|Selector166~6_combout\ : std_logic;
SIGNAL \CPU|Selector166~7_combout\ : std_logic;
SIGNAL \CPU|A_Register[0]~2_combout\ : std_logic;
SIGNAL \CPU|OR_Register~1_combout\ : std_logic;
SIGNAL \CPU|Selector165~0_combout\ : std_logic;
SIGNAL \CPU|Selector165~1_combout\ : std_logic;
SIGNAL \CPU|A_Register[5]~3_combout\ : std_logic;
SIGNAL \CPU|Equal1~5_combout\ : std_logic;
SIGNAL \CPU|A_Register[5]~4_combout\ : std_logic;
SIGNAL \CPU|Add1~1\ : std_logic;
SIGNAL \CPU|Add1~2_combout\ : std_logic;
SIGNAL \CPU|Selector165~2_combout\ : std_logic;
SIGNAL \CPU|Selector165~3_combout\ : std_logic;
SIGNAL \CPU|Selector165~4_combout\ : std_logic;
SIGNAL \CPU|A_Register[5]~5_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~20_combout\ : std_logic;
SIGNAL \CPU|A_Register[6]~6_combout\ : std_logic;
SIGNAL \CPU|A_Register[6]~7_combout\ : std_logic;
SIGNAL \CPU|A_Register[6]~9_combout\ : std_logic;
SIGNAL \CPU|A_Register[6]~8_combout\ : std_logic;
SIGNAL \CPU|A_Register[6]~10_combout\ : std_logic;
SIGNAL \CPU|Add1~3\ : std_logic;
SIGNAL \CPU|Add1~4_combout\ : std_logic;
SIGNAL \CPU|Equal1~6_combout\ : std_logic;
SIGNAL \CPU|Selector164~2_combout\ : std_logic;
SIGNAL \CPU|Selector164~3_combout\ : std_logic;
SIGNAL \CPU|AND_Register~2_combout\ : std_logic;
SIGNAL \CPU|OR_Register~2_combout\ : std_logic;
SIGNAL \CPU|Selector164~0_combout\ : std_logic;
SIGNAL \CPU|Selector164~1_combout\ : std_logic;
SIGNAL \CPU|Selector164~4_combout\ : std_logic;
SIGNAL \CPU|Selector163~0_combout\ : std_logic;
SIGNAL \CPU|Selector163~1_combout\ : std_logic;
SIGNAL \CPU|Equal1~7_combout\ : std_logic;
SIGNAL \CPU|Add1~5\ : std_logic;
SIGNAL \CPU|Add1~6_combout\ : std_logic;
SIGNAL \CPU|Selector163~2_combout\ : std_logic;
SIGNAL \CPU|Selector163~3_combout\ : std_logic;
SIGNAL \CPU|Selector163~4_combout\ : std_logic;
SIGNAL \CPU|SR_Register[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|OR_Register~4_combout\ : std_logic;
SIGNAL \CPU|AND_Register~4_combout\ : std_logic;
SIGNAL \CPU|Selector162~0_combout\ : std_logic;
SIGNAL \CPU|Equal1~10_combout\ : std_logic;
SIGNAL \CPU|Add1~7\ : std_logic;
SIGNAL \CPU|Add1~9\ : std_logic;
SIGNAL \CPU|Add1~11\ : std_logic;
SIGNAL \CPU|Add1~12_combout\ : std_logic;
SIGNAL \CPU|Selector160~5_combout\ : std_logic;
SIGNAL \CPU|Selector160~6_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \CPU|Selector159~1_combout\ : std_logic;
SIGNAL \CPU|B_Register[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|Equal1~11_combout\ : std_logic;
SIGNAL \CPU|Selector159~5_combout\ : std_logic;
SIGNAL \CPU|Selector159~6_combout\ : std_logic;
SIGNAL \CPU|Add1~13\ : std_logic;
SIGNAL \CPU|Add1~14_combout\ : std_logic;
SIGNAL \CPU|Selector159~7_combout\ : std_logic;
SIGNAL \CPU|Selector159~8_combout\ : std_logic;
SIGNAL \CPU|Selector159~9_combout\ : std_logic;
SIGNAL \CPU|Selector159~2_combout\ : std_logic;
SIGNAL \CPU|AND_Register~7_combout\ : std_logic;
SIGNAL \CPU|OR_Register~7_combout\ : std_logic;
SIGNAL \CPU|Selector159~3_combout\ : std_logic;
SIGNAL \CPU|Selector159~4_combout\ : std_logic;
SIGNAL \CPU|Selector159~10_combout\ : std_logic;
SIGNAL \CPU|Selector159~11_combout\ : std_logic;
SIGNAL \CPU|A_Register[7]~11_combout\ : std_logic;
SIGNAL \CPU|AND_Register~6_combout\ : std_logic;
SIGNAL \CPU|OR_Register~6_combout\ : std_logic;
SIGNAL \CPU|Selector160~3_combout\ : std_logic;
SIGNAL \CPU|Selector160~4_combout\ : std_logic;
SIGNAL \CPU|Selector160~7_combout\ : std_logic;
SIGNAL \CPU|AND_Register~5_combout\ : std_logic;
SIGNAL \CPU|OR_Register~5_combout\ : std_logic;
SIGNAL \CPU|Selector161~0_combout\ : std_logic;
SIGNAL \CPU|Selector161~1_combout\ : std_logic;
SIGNAL \CPU|Equal1~9_combout\ : std_logic;
SIGNAL \CPU|Add1~10_combout\ : std_logic;
SIGNAL \CPU|Selector161~2_combout\ : std_logic;
SIGNAL \CPU|Selector161~3_combout\ : std_logic;
SIGNAL \CPU|Selector161~4_combout\ : std_logic;
SIGNAL \CPU|SR_Register[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|Selector162~1_combout\ : std_logic;
SIGNAL \CPU|Equal1~8_combout\ : std_logic;
SIGNAL \CPU|Selector162~2_combout\ : std_logic;
SIGNAL \CPU|Add1~8_combout\ : std_logic;
SIGNAL \CPU|Selector162~3_combout\ : std_logic;
SIGNAL \CPU|Selector162~4_combout\ : std_logic;
SIGNAL \CPU|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|Equal0~1_combout\ : std_logic;
SIGNAL \CPU|Equal0~2_combout\ : std_logic;
SIGNAL \CPU|ZeroFlag~q\ : std_logic;
SIGNAL \CPU|Add1~15\ : std_logic;
SIGNAL \CPU|Add1~16_combout\ : std_logic;
SIGNAL \CPU|LessThan0~0_combout\ : std_logic;
SIGNAL \CPU|CarryFlag~1_combout\ : std_logic;
SIGNAL \CPU|Decoder0~0_combout\ : std_logic;
SIGNAL \CPU|CarryFlag~0_combout\ : std_logic;
SIGNAL \CPU|CarryFlag~2_combout\ : std_logic;
SIGNAL \CPU|CarryFlag~3_combout\ : std_logic;
SIGNAL \CPU|CarryFlag~q\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~8_combout\ : std_logic;
SIGNAL \CPU|LessThan1~1_cout\ : std_logic;
SIGNAL \CPU|LessThan1~3_cout\ : std_logic;
SIGNAL \CPU|LessThan1~5_cout\ : std_logic;
SIGNAL \CPU|LessThan1~7_cout\ : std_logic;
SIGNAL \CPU|LessThan1~9_cout\ : std_logic;
SIGNAL \CPU|LessThan1~11_cout\ : std_logic;
SIGNAL \CPU|LessThan1~13_cout\ : std_logic;
SIGNAL \CPU|LessThan1~14_combout\ : std_logic;
SIGNAL \CPU|CompareFlag~0_combout\ : std_logic;
SIGNAL \CPU|CompareFlag~1_combout\ : std_logic;
SIGNAL \CPU|CompareFlag~2_combout\ : std_logic;
SIGNAL \CPU|CompareFlag~q\ : std_logic;
SIGNAL \CPU|StepCounter[0]~12_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~13_combout\ : std_logic;
SIGNAL \CPU|Equal1~1_combout\ : std_logic;
SIGNAL \CPU|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|Equal1~2_combout\ : std_logic;
SIGNAL \CPU|Equal1~3_combout\ : std_logic;
SIGNAL \CPU|Equal1~4_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~11_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~28_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~33_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~25_combout\ : std_logic;
SIGNAL \CPU|StepCounter[0]~26_combout\ : std_logic;
SIGNAL \CPU|StepCounter~27_combout\ : std_logic;
SIGNAL \CPU|StepCounter~31_combout\ : std_logic;
SIGNAL \CPU|Add0~1_combout\ : std_logic;
SIGNAL \CPU|StepCounter~30_combout\ : std_logic;
SIGNAL \CPU|Add0~0_combout\ : std_logic;
SIGNAL \CPU|StepCounter~29_combout\ : std_logic;
SIGNAL \CPU|INST_Register[0]~0_combout\ : std_logic;
SIGNAL \CPU|A_Register[6]~12_combout\ : std_logic;
SIGNAL \CPU|Selector158~4_combout\ : std_logic;
SIGNAL \CPU|Selector158~5_combout\ : std_logic;
SIGNAL \CPU|Selector158~13_combout\ : std_logic;
SIGNAL \CPU|Selector158~3_combout\ : std_logic;
SIGNAL \CPU|Selector158~14_combout\ : std_logic;
SIGNAL \CPU|Selector158~11_combout\ : std_logic;
SIGNAL \CPU|Selector158~12_combout\ : std_logic;
SIGNAL \CPU|Selector158~6_combout\ : std_logic;
SIGNAL \CPU|Selector150~0_combout\ : std_logic;
SIGNAL \CPU|Selector158~2_combout\ : std_logic;
SIGNAL \CPU|Selector158~8_combout\ : std_logic;
SIGNAL \CPU|X_Register[0]~20_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|Add0~2_combout\ : std_logic;
SIGNAL \CPU|Selector150~1_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~3_combout\ : std_logic;
SIGNAL \CPU|X_Register[0]~26_combout\ : std_logic;
SIGNAL \CPU|X_Register[0]~27_combout\ : std_logic;
SIGNAL \CPU|X_Register[0]~59_combout\ : std_logic;
SIGNAL \CPU|X_Register[0]~60_combout\ : std_logic;
SIGNAL \CPU|Equal4~0_combout\ : std_logic;
SIGNAL \CPU|X_Register[0]~22_combout\ : std_logic;
SIGNAL \CPU|X_Register[0]~23_combout\ : std_logic;
SIGNAL \CPU|X_Register[0]~24_combout\ : std_logic;
SIGNAL \CPU|X_Register[0]~25_combout\ : std_logic;
SIGNAL \CPU|X_Register[0]~28_combout\ : std_logic;
SIGNAL \CPU|X_Register[0]~21\ : std_logic;
SIGNAL \CPU|X_Register[1]~29_combout\ : std_logic;
SIGNAL \CPU|X_Register[1]~30\ : std_logic;
SIGNAL \CPU|X_Register[2]~31_combout\ : std_logic;
SIGNAL \CPU|X_Register[2]~32\ : std_logic;
SIGNAL \CPU|X_Register[3]~33_combout\ : std_logic;
SIGNAL \CPU|X_Register[3]~34\ : std_logic;
SIGNAL \CPU|X_Register[4]~35_combout\ : std_logic;
SIGNAL \CPU|X_Register[4]~36\ : std_logic;
SIGNAL \CPU|X_Register[5]~37_combout\ : std_logic;
SIGNAL \CPU|X_Register[5]~38\ : std_logic;
SIGNAL \CPU|X_Register[6]~39_combout\ : std_logic;
SIGNAL \CPU|X_Register[6]~40\ : std_logic;
SIGNAL \CPU|X_Register[7]~41_combout\ : std_logic;
SIGNAL \CPU|X_Register[7]~42\ : std_logic;
SIGNAL \CPU|X_Register[8]~43_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~19_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~12_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~10_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~9_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~11_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~13_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~21_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~40_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~5_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~31_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~32_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~28_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~29_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~30_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~34_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~36_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~58_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~26_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~37_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~38_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~22_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~23_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~24_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~25_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~27_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~6_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~4_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~2_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~7_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~14_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~15_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~16_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~17_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~18_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~35_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~41_combout\ : std_logic;
SIGNAL \CPU|Selector150~2_combout\ : std_logic;
SIGNAL \CPU|Y_Register[0]~6_combout\ : std_logic;
SIGNAL \CPU|Selector111~0_combout\ : std_logic;
SIGNAL \CPU|Y_Register[15]~13_combout\ : std_logic;
SIGNAL \CPU|Y_Register[0]~11_combout\ : std_logic;
SIGNAL \CPU|Y_Register[0]~9_combout\ : std_logic;
SIGNAL \CPU|Y_Register[0]~20_combout\ : std_logic;
SIGNAL \CPU|Y_Register[0]~10_combout\ : std_logic;
SIGNAL \CPU|Y_Register[0]~12_combout\ : std_logic;
SIGNAL \CPU|Y_Register[0]~7_combout\ : std_logic;
SIGNAL \CPU|Y_Register[0]~19_combout\ : std_logic;
SIGNAL \CPU|Y_Register[0]~8_combout\ : std_logic;
SIGNAL \CPU|Y_Register[0]~14_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~39_combout\ : std_logic;
SIGNAL \CPU|Selector113~0_combout\ : std_logic;
SIGNAL \CPU|Selector115~0_combout\ : std_logic;
SIGNAL \CPU|StackPointer[0]~16_combout\ : std_logic;
SIGNAL \CPU|WideOr11~0_combout\ : std_logic;
SIGNAL \CPU|StackPointer[0]~18_combout\ : std_logic;
SIGNAL \CPU|StackPointer[0]~19_combout\ : std_logic;
SIGNAL \CPU|StackPointer[0]~20_combout\ : std_logic;
SIGNAL \CPU|StackPointer[0]~17\ : std_logic;
SIGNAL \CPU|StackPointer[1]~21_combout\ : std_logic;
SIGNAL \CPU|StackPointer[1]~22\ : std_logic;
SIGNAL \CPU|StackPointer[2]~23_combout\ : std_logic;
SIGNAL \CPU|Selector95~0_combout\ : std_logic;
SIGNAL \CPU|Add5~0_combout\ : std_logic;
SIGNAL \CPU|Selector97~0_combout\ : std_logic;
SIGNAL \CPU|Selector117~0_combout\ : std_logic;
SIGNAL \CPU|Selector97~1_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[0]~52_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[0]~53_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[0]~49_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[0]~48_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[0]~50_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[0]~54_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~45_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~44_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~46_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~42_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~43_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~47_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[0]~56_combout\ : std_logic;
SIGNAL \CPU|Add5~1\ : std_logic;
SIGNAL \CPU|Add5~2_combout\ : std_logic;
SIGNAL \CPU|Selector116~0_combout\ : std_logic;
SIGNAL \CPU|Selector96~0_combout\ : std_logic;
SIGNAL \CPU|Selector96~1_combout\ : std_logic;
SIGNAL \CPU|Add5~3\ : std_logic;
SIGNAL \CPU|Add5~4_combout\ : std_logic;
SIGNAL \CPU|Selector95~1_combout\ : std_logic;
SIGNAL \CPU|Add5~5\ : std_logic;
SIGNAL \CPU|Add5~6_combout\ : std_logic;
SIGNAL \CPU|StackPointer[2]~24\ : std_logic;
SIGNAL \CPU|StackPointer[3]~25_combout\ : std_logic;
SIGNAL \CPU|Selector114~0_combout\ : std_logic;
SIGNAL \CPU|Selector94~0_combout\ : std_logic;
SIGNAL \CPU|Selector94~1_combout\ : std_logic;
SIGNAL \CPU|Add5~7\ : std_logic;
SIGNAL \CPU|Add5~8_combout\ : std_logic;
SIGNAL \CPU|StackPointer[3]~26\ : std_logic;
SIGNAL \CPU|StackPointer[4]~27_combout\ : std_logic;
SIGNAL \CPU|Selector93~0_combout\ : std_logic;
SIGNAL \CPU|Selector93~1_combout\ : std_logic;
SIGNAL \CPU|Add5~9\ : std_logic;
SIGNAL \CPU|Add5~10_combout\ : std_logic;
SIGNAL \CPU|Selector112~0_combout\ : std_logic;
SIGNAL \CPU|StackPointer[4]~28\ : std_logic;
SIGNAL \CPU|StackPointer[5]~29_combout\ : std_logic;
SIGNAL \CPU|Selector92~0_combout\ : std_logic;
SIGNAL \CPU|Selector92~1_combout\ : std_logic;
SIGNAL \CPU|Add5~11\ : std_logic;
SIGNAL \CPU|Add5~12_combout\ : std_logic;
SIGNAL \CPU|StackPointer[5]~30\ : std_logic;
SIGNAL \CPU|StackPointer[6]~31_combout\ : std_logic;
SIGNAL \CPU|Selector91~0_combout\ : std_logic;
SIGNAL \CPU|Selector91~1_combout\ : std_logic;
SIGNAL \CPU|Add5~13\ : std_logic;
SIGNAL \CPU|Add5~14_combout\ : std_logic;
SIGNAL \CPU|StackPointer[6]~32\ : std_logic;
SIGNAL \CPU|StackPointer[7]~33_combout\ : std_logic;
SIGNAL \CPU|Selector110~0_combout\ : std_logic;
SIGNAL \CPU|Selector90~0_combout\ : std_logic;
SIGNAL \CPU|Selector90~1_combout\ : std_logic;
SIGNAL \CPU|Add5~15\ : std_logic;
SIGNAL \CPU|Add5~16_combout\ : std_logic;
SIGNAL \CPU|StackPointer[7]~34\ : std_logic;
SIGNAL \CPU|StackPointer[8]~35_combout\ : std_logic;
SIGNAL \CPU|Selector89~0_combout\ : std_logic;
SIGNAL \CPU|Selector89~1_combout\ : std_logic;
SIGNAL \CPU|Add4~0_combout\ : std_logic;
SIGNAL \CPU|Selector109~0_combout\ : std_logic;
SIGNAL \CPU|Y_Register[14]~15_combout\ : std_logic;
SIGNAL \CPU|Y_Register[14]~21_combout\ : std_logic;
SIGNAL \CPU|Y_Register[15]~16_combout\ : std_logic;
SIGNAL \CPU|Y_Register[15]~17_combout\ : std_logic;
SIGNAL \CPU|Y_Register[15]~18_combout\ : std_logic;
SIGNAL \CPU|Selector158~7_combout\ : std_logic;
SIGNAL \CPU|Selector158~9_combout\ : std_logic;
SIGNAL \CPU|Selector158~10_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[0]~3_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer[1]~55_combout\ : std_logic;
SIGNAL \CPU|regRw~0_combout\ : std_logic;
SIGNAL \CPU|Selector150~6_combout\ : std_logic;
SIGNAL \CPU|Selector150~9_combout\ : std_logic;
SIGNAL \CPU|Selector150~10_combout\ : std_logic;
SIGNAL \CPU|Selector150~7_combout\ : std_logic;
SIGNAL \CPU|Selector150~3_combout\ : std_logic;
SIGNAL \CPU|Selector150~4_combout\ : std_logic;
SIGNAL \CPU|Selector150~5_combout\ : std_logic;
SIGNAL \CPU|Selector150~8_combout\ : std_logic;
SIGNAL \CPU|regRw~1_combout\ : std_logic;
SIGNAL \CPU|regRw~q\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~5_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~6_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~4_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~7_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~2_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~9_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~10_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~11_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~12_combout\ : std_logic;
SIGNAL \CPU|Selector157~0_combout\ : std_logic;
SIGNAL \CPU|Selector157~1_combout\ : std_logic;
SIGNAL \CPU|Selector157~2_combout\ : std_logic;
SIGNAL \CPU|Selector157~3_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~28_combout\ : std_logic;
SIGNAL \CPU|Add4~1\ : std_logic;
SIGNAL \CPU|Add4~2_combout\ : std_logic;
SIGNAL \CPU|Add5~17\ : std_logic;
SIGNAL \CPU|Add5~18_combout\ : std_logic;
SIGNAL \CPU|StackPointer[8]~36\ : std_logic;
SIGNAL \CPU|StackPointer[9]~37_combout\ : std_logic;
SIGNAL \CPU|X_Register[8]~44\ : std_logic;
SIGNAL \CPU|X_Register[9]~45_combout\ : std_logic;
SIGNAL \CPU|Selector88~0_combout\ : std_logic;
SIGNAL \CPU|Selector88~1_combout\ : std_logic;
SIGNAL \CPU|Selector108~0_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[1]~8_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[1]~13_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[6]~14_combout\ : std_logic;
SIGNAL \CPU|X_Register[9]~46\ : std_logic;
SIGNAL \CPU|X_Register[10]~47_combout\ : std_logic;
SIGNAL \CPU|Add5~19\ : std_logic;
SIGNAL \CPU|Add5~20_combout\ : std_logic;
SIGNAL \CPU|StackPointer[9]~38\ : std_logic;
SIGNAL \CPU|StackPointer[10]~39_combout\ : std_logic;
SIGNAL \CPU|Selector87~0_combout\ : std_logic;
SIGNAL \CPU|Selector87~1_combout\ : std_logic;
SIGNAL \CPU|Add4~3\ : std_logic;
SIGNAL \CPU|Add4~4_combout\ : std_logic;
SIGNAL \CPU|Selector107~0_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[2]~15_combout\ : std_logic;
SIGNAL \CPU|Selector156~0_combout\ : std_logic;
SIGNAL \CPU|Selector156~1_combout\ : std_logic;
SIGNAL \CPU|Selector156~2_combout\ : std_logic;
SIGNAL \CPU|Selector156~3_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[2]~16_combout\ : std_logic;
SIGNAL \CPU|Selector155~0_combout\ : std_logic;
SIGNAL \CPU|Selector155~1_combout\ : std_logic;
SIGNAL \CPU|Selector155~2_combout\ : std_logic;
SIGNAL \CPU|Selector155~3_combout\ : std_logic;
SIGNAL \CPU|Add5~21\ : std_logic;
SIGNAL \CPU|Add5~22_combout\ : std_logic;
SIGNAL \CPU|StackPointer[10]~40\ : std_logic;
SIGNAL \CPU|StackPointer[11]~41_combout\ : std_logic;
SIGNAL \CPU|X_Register[10]~48\ : std_logic;
SIGNAL \CPU|X_Register[11]~49_combout\ : std_logic;
SIGNAL \CPU|Selector86~0_combout\ : std_logic;
SIGNAL \CPU|Selector86~1_combout\ : std_logic;
SIGNAL \CPU|Add4~5\ : std_logic;
SIGNAL \CPU|Add4~6_combout\ : std_logic;
SIGNAL \CPU|Selector106~0_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[3]~17_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[3]~18_combout\ : std_logic;
SIGNAL \CPU|Add5~23\ : std_logic;
SIGNAL \CPU|Add5~24_combout\ : std_logic;
SIGNAL \CPU|X_Register[11]~50\ : std_logic;
SIGNAL \CPU|X_Register[12]~51_combout\ : std_logic;
SIGNAL \CPU|StackPointer[11]~42\ : std_logic;
SIGNAL \CPU|StackPointer[12]~43_combout\ : std_logic;
SIGNAL \CPU|Selector85~0_combout\ : std_logic;
SIGNAL \CPU|Selector85~1_combout\ : std_logic;
SIGNAL \CPU|Add4~7\ : std_logic;
SIGNAL \CPU|Add4~8_combout\ : std_logic;
SIGNAL \CPU|Selector105~0_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~19_combout\ : std_logic;
SIGNAL \CPU|Selector154~0_combout\ : std_logic;
SIGNAL \CPU|Selector154~1_combout\ : std_logic;
SIGNAL \CPU|Selector154~2_combout\ : std_logic;
SIGNAL \CPU|Selector154~3_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~20_combout\ : std_logic;
SIGNAL \CPU|Add4~9\ : std_logic;
SIGNAL \CPU|Add4~10_combout\ : std_logic;
SIGNAL \CPU|Add5~25\ : std_logic;
SIGNAL \CPU|Add5~26_combout\ : std_logic;
SIGNAL \CPU|X_Register[12]~52\ : std_logic;
SIGNAL \CPU|X_Register[13]~53_combout\ : std_logic;
SIGNAL \CPU|StackPointer[12]~44\ : std_logic;
SIGNAL \CPU|StackPointer[13]~45_combout\ : std_logic;
SIGNAL \CPU|Selector84~0_combout\ : std_logic;
SIGNAL \CPU|Selector84~1_combout\ : std_logic;
SIGNAL \CPU|Selector104~0_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[5]~21_combout\ : std_logic;
SIGNAL \CPU|Selector153~0_combout\ : std_logic;
SIGNAL \CPU|Selector153~1_combout\ : std_logic;
SIGNAL \CPU|Selector153~2_combout\ : std_logic;
SIGNAL \CPU|Selector153~3_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[5]~22_combout\ : std_logic;
SIGNAL \CPU|Selector152~0_combout\ : std_logic;
SIGNAL \CPU|Selector152~1_combout\ : std_logic;
SIGNAL \CPU|Selector152~2_combout\ : std_logic;
SIGNAL \CPU|Selector152~3_combout\ : std_logic;
SIGNAL \CPU|Add5~27\ : std_logic;
SIGNAL \CPU|Add5~28_combout\ : std_logic;
SIGNAL \CPU|StackPointer[13]~46\ : std_logic;
SIGNAL \CPU|StackPointer[14]~47_combout\ : std_logic;
SIGNAL \CPU|Selector83~0_combout\ : std_logic;
SIGNAL \CPU|X_Register[13]~54\ : std_logic;
SIGNAL \CPU|X_Register[14]~55_combout\ : std_logic;
SIGNAL \CPU|Selector83~1_combout\ : std_logic;
SIGNAL \CPU|Add4~11\ : std_logic;
SIGNAL \CPU|Add4~12_combout\ : std_logic;
SIGNAL \CPU|Selector103~0_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[6]~23_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[6]~24_combout\ : std_logic;
SIGNAL \CPU|Add4~13\ : std_logic;
SIGNAL \CPU|Add4~14_combout\ : std_logic;
SIGNAL \CPU|Add5~29\ : std_logic;
SIGNAL \CPU|Add5~30_combout\ : std_logic;
SIGNAL \CPU|StackPointer[14]~48\ : std_logic;
SIGNAL \CPU|StackPointer[15]~49_combout\ : std_logic;
SIGNAL \CPU|X_Register[14]~56\ : std_logic;
SIGNAL \CPU|X_Register[15]~57_combout\ : std_logic;
SIGNAL \CPU|Selector82~0_combout\ : std_logic;
SIGNAL \CPU|Selector82~1_combout\ : std_logic;
SIGNAL \CPU|Selector102~0_combout\ : std_logic;
SIGNAL \CPU|Selector151~7_combout\ : std_logic;
SIGNAL \CPU|Selector151~8_combout\ : std_logic;
SIGNAL \CPU|Selector151~5_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer~26_combout\ : std_logic;
SIGNAL \CPU|Selector151~3_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[4]~25_combout\ : std_logic;
SIGNAL \CPU|Selector151~0_combout\ : std_logic;
SIGNAL \CPU|Selector151~10_combout\ : std_logic;
SIGNAL \CPU|Selector151~11_combout\ : std_logic;
SIGNAL \CPU|Selector151~1_combout\ : std_logic;
SIGNAL \CPU|Selector151~2_combout\ : std_logic;
SIGNAL \CPU|Selector151~4_combout\ : std_logic;
SIGNAL \CPU|Selector151~6_combout\ : std_logic;
SIGNAL \CPU|Selector151~9_combout\ : std_logic;
SIGNAL \CPU|MemoryBuffer[7]~27_combout\ : std_logic;
SIGNAL \CPU|MemoryPointer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|X_Register\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|B_Register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|StackPointer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|Y_Register\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|StepCounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|INST_Register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|A_Register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|dataReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|SR_Register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|AND_Register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|OR_Register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|SUM_Register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|SL_Register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|XOR_Register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|MemoryBuffer\ : std_logic_vector(7 DOWNTO 0);

BEGIN

data <= ww_data;
address <= ww_address;
ww_clk <= clk;
ww_rw <= rw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X34_Y19_N16
\data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryBuffer\(0),
	oe => \CPU|regRw~q\,
	devoe => ww_devoe,
	o => \data[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryBuffer\(1),
	oe => \CPU|regRw~q\,
	devoe => ww_devoe,
	o => \data[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryBuffer\(2),
	oe => \CPU|regRw~q\,
	devoe => ww_devoe,
	o => \data[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryBuffer\(3),
	oe => \CPU|regRw~q\,
	devoe => ww_devoe,
	o => \data[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryBuffer\(4),
	oe => \CPU|regRw~q\,
	devoe => ww_devoe,
	o => \data[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryBuffer\(5),
	oe => \CPU|regRw~q\,
	devoe => ww_devoe,
	o => \data[5]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryBuffer\(6),
	oe => \CPU|regRw~q\,
	devoe => ww_devoe,
	o => \data[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryBuffer\(7),
	oe => \CPU|regRw~q\,
	devoe => ww_devoe,
	o => \data[7]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\address[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryPointer\(0),
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\address[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryPointer\(1),
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\address[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryPointer\(2),
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\address[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryPointer\(3),
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\address[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryPointer\(4),
	devoe => ww_devoe,
	o => \address[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\address[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryPointer\(5),
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\address[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryPointer\(6),
	devoe => ww_devoe,
	o => \address[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\address[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MemoryPointer\(7),
	devoe => ww_devoe,
	o => \address[7]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\address[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[8]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\address[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[9]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\address[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\address[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[11]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\address[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[12]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\address[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[13]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\address[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[14]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\address[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[15]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X34_Y10_N8
\data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(6),
	o => \data[6]~input_o\);

-- Location: FF_X26_Y12_N27
\CPU|dataReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataReg\(6));

-- Location: LCCOMB_X24_Y11_N12
\CPU|INST_Register[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|INST_Register[6]~feeder_combout\ = \CPU|dataReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|dataReg\(6),
	combout => \CPU|INST_Register[6]~feeder_combout\);

-- Location: IOIBUF_X23_Y24_N15
\data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(2),
	o => \data[2]~input_o\);

-- Location: FF_X25_Y14_N5
\CPU|dataReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataReg\(2));

-- Location: FF_X25_Y12_N25
\CPU|INST_Register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(2),
	sload => VCC,
	ena => \CPU|INST_Register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INST_Register\(2));

-- Location: IOIBUF_X34_Y17_N1
\data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(1),
	o => \data[1]~input_o\);

-- Location: FF_X25_Y14_N3
\CPU|dataReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataReg\(1));

-- Location: FF_X25_Y12_N5
\CPU|INST_Register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(1),
	sload => VCC,
	ena => \CPU|INST_Register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INST_Register\(1));

-- Location: IOIBUF_X34_Y19_N15
\data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(0),
	o => \data[0]~input_o\);

-- Location: LCCOMB_X26_Y15_N30
\CPU|dataReg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|dataReg[0]~feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \CPU|dataReg[0]~feeder_combout\);

-- Location: FF_X26_Y15_N31
\CPU|dataReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|dataReg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataReg\(0));

-- Location: FF_X25_Y12_N15
\CPU|INST_Register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(0),
	sload => VCC,
	ena => \CPU|INST_Register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INST_Register\(0));

-- Location: IOIBUF_X34_Y18_N1
\data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(5),
	o => \data[5]~input_o\);

-- Location: FF_X25_Y14_N11
\CPU|dataReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataReg\(5));

-- Location: FF_X25_Y12_N13
\CPU|INST_Register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(5),
	sload => VCC,
	ena => \CPU|INST_Register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INST_Register\(5));

-- Location: LCCOMB_X23_Y12_N30
\CPU|StepCounter[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~23_combout\ = ((\CPU|INST_Register\(2) & (\CPU|INST_Register\(1) & !\CPU|INST_Register\(0)))) # (!\CPU|INST_Register\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|INST_Register\(5),
	combout => \CPU|StepCounter[0]~23_combout\);

-- Location: LCCOMB_X23_Y12_N4
\CPU|StepCounter[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~10_combout\ = (\CPU|INST_Register\(5) & ((\CPU|INST_Register\(0) $ (!\CPU|INST_Register\(1))) # (!\CPU|INST_Register\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(5),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|INST_Register\(2),
	combout => \CPU|StepCounter[0]~10_combout\);

-- Location: LCCOMB_X23_Y12_N16
\CPU|StepCounter[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~24_combout\ = (\CPU|StepCounter[0]~23_combout\ & (((\CPU|StepCounter\(2)) # (\CPU|StepCounter\(1))))) # (!\CPU|StepCounter[0]~23_combout\ & (\CPU|StepCounter[0]~10_combout\ & (\CPU|StepCounter\(2) $ (\CPU|StepCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter[0]~23_combout\,
	datab => \CPU|StepCounter[0]~10_combout\,
	datac => \CPU|StepCounter\(2),
	datad => \CPU|StepCounter\(1),
	combout => \CPU|StepCounter[0]~24_combout\);

-- Location: IOIBUF_X34_Y17_N15
\data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(3),
	o => \data[3]~input_o\);

-- Location: LCCOMB_X26_Y14_N4
\CPU|dataReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|dataReg[3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \CPU|dataReg[3]~feeder_combout\);

-- Location: FF_X26_Y14_N5
\CPU|dataReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|dataReg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataReg\(3));

-- Location: FF_X24_Y11_N23
\CPU|INST_Register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(3),
	sload => VCC,
	ena => \CPU|INST_Register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INST_Register\(3));

-- Location: IOIBUF_X34_Y17_N22
\data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(4),
	o => \data[4]~input_o\);

-- Location: FF_X25_Y14_N9
\CPU|dataReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataReg\(4));

-- Location: FF_X24_Y11_N5
\CPU|INST_Register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(4),
	sload => VCC,
	ena => \CPU|INST_Register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INST_Register\(4));

-- Location: LCCOMB_X24_Y11_N2
\CPU|StepCounter[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~20_combout\ = (\CPU|INST_Register\(0)) # ((\CPU|INST_Register\(5) & ((\CPU|INST_Register\(1)) # (\CPU|INST_Register\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(5),
	combout => \CPU|StepCounter[0]~20_combout\);

-- Location: LCCOMB_X24_Y14_N10
\CPU|StepCounter[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~18_combout\ = (\CPU|INST_Register\(1) & (((!\CPU|INST_Register\(5) & !\CPU|INST_Register\(2))))) # (!\CPU|INST_Register\(1) & (\CPU|INST_Register\(2) & (\CPU|INST_Register\(4) $ (!\CPU|INST_Register\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(5),
	datad => \CPU|INST_Register\(2),
	combout => \CPU|StepCounter[0]~18_combout\);

-- Location: LCCOMB_X24_Y14_N4
\CPU|StepCounter[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~19_combout\ = (\CPU|StepCounter[0]~18_combout\ & (\CPU|INST_Register\(0) $ (!\CPU|INST_Register\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datac => \CPU|INST_Register\(5),
	datad => \CPU|StepCounter[0]~18_combout\,
	combout => \CPU|StepCounter[0]~19_combout\);

-- Location: LCCOMB_X24_Y12_N24
\CPU|MemoryPointer[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[0]~51_combout\ = ((\CPU|StepCounter\(2)) # ((\CPU|StepCounter\(3)) # (!\CPU|StepCounter\(0)))) # (!\CPU|StepCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(1),
	datab => \CPU|StepCounter\(2),
	datac => \CPU|StepCounter\(3),
	datad => \CPU|StepCounter\(0),
	combout => \CPU|MemoryPointer[0]~51_combout\);

-- Location: LCCOMB_X23_Y11_N0
\CPU|StepCounter[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~15_combout\ = (\CPU|INST_Register\(4) & ((\CPU|MemoryPointer[0]~51_combout\) # ((\CPU|INST_Register\(2)) # (!\CPU|INST_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[0]~51_combout\,
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(4),
	datad => \CPU|INST_Register\(2),
	combout => \CPU|StepCounter[0]~15_combout\);

-- Location: LCCOMB_X23_Y11_N22
\CPU|StepCounter[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~14_combout\ = (\CPU|INST_Register\(1)) # (\CPU|StepCounter\(3) $ (((\CPU|StepCounter\(2)) # (\CPU|StepCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(2),
	datab => \CPU|StepCounter\(1),
	datac => \CPU|StepCounter\(3),
	datad => \CPU|INST_Register\(1),
	combout => \CPU|StepCounter[0]~14_combout\);

-- Location: LCCOMB_X25_Y12_N22
\CPU|MemoryPointer[1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~57_combout\ = \CPU|INST_Register\(1) $ (\CPU|INST_Register\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(1),
	datad => \CPU|INST_Register\(2),
	combout => \CPU|MemoryPointer[1]~57_combout\);

-- Location: LCCOMB_X23_Y11_N2
\CPU|Selector167~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector167~0_combout\ = (!\CPU|StepCounter\(0) & (!\CPU|StepCounter\(2) & (!\CPU|StepCounter\(3) & \CPU|StepCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(0),
	datab => \CPU|StepCounter\(2),
	datac => \CPU|StepCounter\(3),
	datad => \CPU|StepCounter\(1),
	combout => \CPU|Selector167~0_combout\);

-- Location: LCCOMB_X23_Y11_N16
\CPU|StepCounter[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~16_combout\ = (!\CPU|INST_Register\(4) & (((\CPU|Selector167~0_combout\) # (!\CPU|MemoryPointer[1]~57_combout\)) # (!\CPU|MemoryPointer[0]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[0]~51_combout\,
	datab => \CPU|INST_Register\(4),
	datac => \CPU|MemoryPointer[1]~57_combout\,
	datad => \CPU|Selector167~0_combout\,
	combout => \CPU|StepCounter[0]~16_combout\);

-- Location: LCCOMB_X23_Y11_N10
\CPU|StepCounter[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~17_combout\ = (\CPU|INST_Register\(0) & (((\CPU|StepCounter[0]~14_combout\)))) # (!\CPU|INST_Register\(0) & ((\CPU|StepCounter[0]~15_combout\) # ((\CPU|StepCounter[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|StepCounter[0]~15_combout\,
	datac => \CPU|StepCounter[0]~14_combout\,
	datad => \CPU|StepCounter[0]~16_combout\,
	combout => \CPU|StepCounter[0]~17_combout\);

-- Location: LCCOMB_X24_Y11_N0
\CPU|StepCounter[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~21_combout\ = (\CPU|INST_Register\(4) & (((\CPU|StepCounter[0]~19_combout\ & \CPU|StepCounter[0]~17_combout\)))) # (!\CPU|INST_Register\(4) & ((\CPU|StepCounter[0]~20_combout\) # ((\CPU|StepCounter[0]~19_combout\ & 
-- \CPU|StepCounter[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|StepCounter[0]~20_combout\,
	datac => \CPU|StepCounter[0]~19_combout\,
	datad => \CPU|StepCounter[0]~17_combout\,
	combout => \CPU|StepCounter[0]~21_combout\);

-- Location: LCCOMB_X24_Y11_N10
\CPU|StepCounter[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~22_combout\ = (\CPU|INST_Register\(3) & ((\CPU|INST_Register\(5)) # ((!\CPU|INST_Register\(4))))) # (!\CPU|INST_Register\(3) & (((\CPU|StepCounter[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|INST_Register\(3),
	datac => \CPU|INST_Register\(4),
	datad => \CPU|StepCounter[0]~21_combout\,
	combout => \CPU|StepCounter[0]~22_combout\);

-- Location: LCCOMB_X23_Y12_N6
\CPU|MemoryPointer[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~33_combout\ = (\CPU|INST_Register\(0) & (!\CPU|INST_Register\(5) & \CPU|INST_Register\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(5),
	datac => \CPU|INST_Register\(4),
	combout => \CPU|MemoryPointer[1]~33_combout\);

-- Location: LCCOMB_X24_Y14_N24
\CPU|StepCounter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~32_combout\ = (\CPU|INST_Register\(0) & (!\CPU|INST_Register\(4) & ((!\CPU|INST_Register\(1)) # (!\CPU|INST_Register\(2))))) # (!\CPU|INST_Register\(0) & (\CPU|INST_Register\(2) $ (((!\CPU|INST_Register\(1) & 
-- \CPU|INST_Register\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|INST_Register\(4),
	combout => \CPU|StepCounter[0]~32_combout\);

-- Location: LCCOMB_X24_Y12_N18
\CPU|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Decoder0~1_combout\ = (\CPU|StepCounter\(1) & (\CPU|StepCounter\(2) & (!\CPU|StepCounter\(3) & \CPU|StepCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(1),
	datab => \CPU|StepCounter\(2),
	datac => \CPU|StepCounter\(3),
	datad => \CPU|StepCounter\(0),
	combout => \CPU|Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y12_N26
\CPU|B_Register[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|B_Register[7]~6_combout\ = (!\CPU|INST_Register\(2) & (((!\CPU|Decoder0~1_combout\) # (!\CPU|INST_Register\(1))) # (!\CPU|INST_Register\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(2),
	datad => \CPU|Decoder0~1_combout\,
	combout => \CPU|B_Register[7]~6_combout\);

-- Location: LCCOMB_X22_Y12_N28
\CPU|B_Register[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|B_Register[7]~8_combout\ = (\CPU|INST_Register\(2) & ((\CPU|INST_Register\(0)) # ((\CPU|MemoryPointer[0]~51_combout\) # (\CPU|INST_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|INST_Register\(0),
	datac => \CPU|MemoryPointer[0]~51_combout\,
	datad => \CPU|INST_Register\(1),
	combout => \CPU|B_Register[7]~8_combout\);

-- Location: LCCOMB_X22_Y12_N14
\CPU|B_Register[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|B_Register[7]~9_combout\ = ((\CPU|INST_Register\(4)) # ((\CPU|INST_Register\(5)) # (\CPU|B_Register[7]~8_combout\))) # (!\CPU|MemoryPointer[1]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~57_combout\,
	datab => \CPU|INST_Register\(4),
	datac => \CPU|INST_Register\(5),
	datad => \CPU|B_Register[7]~8_combout\,
	combout => \CPU|B_Register[7]~9_combout\);

-- Location: LCCOMB_X22_Y12_N0
\CPU|B_Register[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|B_Register[7]~7_combout\ = (!\CPU|B_Register[7]~6_combout\ & (!\CPU|INST_Register\(3) & (!\CPU|B_Register[7]~9_combout\ & \CPU|A_Register[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register[7]~6_combout\,
	datab => \CPU|INST_Register\(3),
	datac => \CPU|B_Register[7]~9_combout\,
	datad => \CPU|A_Register[6]~12_combout\,
	combout => \CPU|B_Register[7]~7_combout\);

-- Location: FF_X26_Y13_N15
\CPU|B_Register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(3),
	sload => VCC,
	ena => \CPU|B_Register[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|B_Register\(3));

-- Location: LCCOMB_X28_Y14_N10
\CPU|AND_Register~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|AND_Register~3_combout\ = (\CPU|B_Register\(3) & \CPU|A_Register\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|B_Register\(3),
	datad => \CPU|A_Register\(3),
	combout => \CPU|AND_Register~3_combout\);

-- Location: FF_X28_Y14_N11
\CPU|AND_Register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|AND_Register~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|AND_Register\(3));

-- Location: LCCOMB_X28_Y14_N28
\CPU|OR_Register~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|OR_Register~3_combout\ = (\CPU|B_Register\(3)) # (\CPU|A_Register\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|B_Register\(3),
	datad => \CPU|A_Register\(3),
	combout => \CPU|OR_Register~3_combout\);

-- Location: FF_X28_Y14_N29
\CPU|OR_Register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|OR_Register~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|OR_Register\(3));

-- Location: FF_X25_Y13_N23
\CPU|B_Register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(2),
	sload => VCC,
	ena => \CPU|B_Register[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|B_Register\(2));

-- Location: FF_X25_Y13_N9
\CPU|B_Register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(1),
	sload => VCC,
	ena => \CPU|B_Register[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|B_Register\(1));

-- Location: LCCOMB_X26_Y12_N22
\CPU|AND_Register~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|AND_Register~1_combout\ = (\CPU|A_Register\(1) & \CPU|B_Register\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|A_Register\(1),
	datad => \CPU|B_Register\(1),
	combout => \CPU|AND_Register~1_combout\);

-- Location: FF_X26_Y12_N23
\CPU|AND_Register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|AND_Register~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|AND_Register\(1));

-- Location: LCCOMB_X25_Y11_N0
\CPU|Selector159~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~0_combout\ = (!\CPU|INST_Register\(4) & (\CPU|Decoder0~1_combout\ & (!\CPU|INST_Register\(1) & !\CPU|INST_Register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|Decoder0~1_combout\,
	datac => \CPU|INST_Register\(1),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|Selector159~0_combout\);

-- Location: LCCOMB_X26_Y15_N8
\CPU|Selector166~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector166~0_combout\ = (\CPU|Selector159~0_combout\ & (\CPU|dataReg\(0))) # (!\CPU|Selector159~0_combout\ & ((\CPU|A_Register\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(0),
	datac => \CPU|Selector159~0_combout\,
	datad => \CPU|A_Register\(0),
	combout => \CPU|Selector166~0_combout\);

-- Location: FF_X26_Y13_N23
\CPU|B_Register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(0),
	sload => VCC,
	ena => \CPU|B_Register[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|B_Register\(0));

-- Location: LCCOMB_X28_Y13_N12
\CPU|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add1~0_combout\ = (\CPU|A_Register\(0) & (\CPU|B_Register\(0) $ (VCC))) # (!\CPU|A_Register\(0) & (\CPU|B_Register\(0) & VCC))
-- \CPU|Add1~1\ = CARRY((\CPU|A_Register\(0) & \CPU|B_Register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(0),
	datab => \CPU|B_Register\(0),
	datad => VCC,
	combout => \CPU|Add1~0_combout\,
	cout => \CPU|Add1~1\);

-- Location: FF_X28_Y13_N13
\CPU|SUM_Register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SUM_Register\(0));

-- Location: LCCOMB_X25_Y15_N22
\CPU|Selector160~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector160~2_combout\ = (\CPU|MemoryPointer[0]~51_combout\ & ((\CPU|INST_Register\(3) & ((\CPU|SUM_Register\(0)))) # (!\CPU|INST_Register\(3) & (\CPU|A_Register\(0))))) # (!\CPU|MemoryPointer[0]~51_combout\ & (((\CPU|SUM_Register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[0]~51_combout\,
	datab => \CPU|A_Register\(0),
	datac => \CPU|SUM_Register\(0),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|Selector160~2_combout\);

-- Location: LCCOMB_X25_Y15_N28
\CPU|Selector160~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector160~0_combout\ = (\CPU|INST_Register\(3) & ((!\CPU|SL_Register\(1)))) # (!\CPU|INST_Register\(3) & (\CPU|SUM_Register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|SUM_Register\(0),
	datad => \CPU|SL_Register\(1),
	combout => \CPU|Selector160~0_combout\);

-- Location: LCCOMB_X25_Y15_N6
\CPU|Selector160~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector160~1_combout\ = (\CPU|MemoryPointer[0]~51_combout\ & (((\CPU|A_Register\(0))))) # (!\CPU|MemoryPointer[0]~51_combout\ & ((\CPU|INST_Register\(3) & ((\CPU|A_Register\(0)))) # (!\CPU|INST_Register\(3) & (\CPU|dataReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(0),
	datab => \CPU|A_Register\(0),
	datac => \CPU|MemoryPointer[0]~51_combout\,
	datad => \CPU|INST_Register\(3),
	combout => \CPU|Selector160~1_combout\);

-- Location: LCCOMB_X25_Y15_N20
\CPU|Selector166~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector166~4_combout\ = (\CPU|INST_Register\(1) & (((\CPU|INST_Register\(4)) # (\CPU|Selector160~1_combout\)))) # (!\CPU|INST_Register\(1) & (\CPU|A_Register\(0) & (!\CPU|INST_Register\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|A_Register\(0),
	datac => \CPU|INST_Register\(4),
	datad => \CPU|Selector160~1_combout\,
	combout => \CPU|Selector166~4_combout\);

-- Location: LCCOMB_X25_Y15_N12
\CPU|Selector166~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector166~5_combout\ = (\CPU|INST_Register\(4) & ((\CPU|Selector166~4_combout\ & (\CPU|Selector160~2_combout\)) # (!\CPU|Selector166~4_combout\ & ((\CPU|Selector160~0_combout\))))) # (!\CPU|INST_Register\(4) & (((\CPU|Selector166~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Selector160~2_combout\,
	datab => \CPU|Selector160~0_combout\,
	datac => \CPU|INST_Register\(4),
	datad => \CPU|Selector166~4_combout\,
	combout => \CPU|Selector166~5_combout\);

-- Location: FF_X26_Y14_N29
\CPU|SR_Register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|A_Register\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SR_Register\(0));

-- Location: LCCOMB_X26_Y15_N22
\CPU|Selector166~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector166~1_combout\ = (\CPU|INST_Register\(3) & (\CPU|INST_Register\(1) & \CPU|SR_Register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|SR_Register\(0),
	combout => \CPU|Selector166~1_combout\);

-- Location: LCCOMB_X26_Y15_N2
\CPU|OR_Register~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|OR_Register~0_combout\ = (\CPU|B_Register\(0)) # (\CPU|A_Register\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|B_Register\(0),
	datad => \CPU|A_Register\(0),
	combout => \CPU|OR_Register~0_combout\);

-- Location: FF_X26_Y15_N3
\CPU|OR_Register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|OR_Register~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|OR_Register\(0));

-- Location: LCCOMB_X25_Y15_N16
\CPU|AND_Register~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|AND_Register~0_combout\ = (\CPU|B_Register\(0) & \CPU|A_Register\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|B_Register\(0),
	datad => \CPU|A_Register\(0),
	combout => \CPU|AND_Register~0_combout\);

-- Location: FF_X26_Y15_N17
\CPU|AND_Register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|AND_Register~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|AND_Register\(0));

-- Location: LCCOMB_X26_Y15_N28
\CPU|Selector166~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector166~2_combout\ = (!\CPU|INST_Register\(3) & ((\CPU|INST_Register\(1) & ((\CPU|AND_Register\(0)))) # (!\CPU|INST_Register\(1) & (\CPU|OR_Register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|OR_Register\(0),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|AND_Register\(0),
	combout => \CPU|Selector166~2_combout\);

-- Location: LCCOMB_X26_Y15_N14
\CPU|Selector166~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector166~3_combout\ = (\CPU|INST_Register\(4) & (((\CPU|Selector166~1_combout\) # (\CPU|Selector166~2_combout\)))) # (!\CPU|INST_Register\(4) & (\CPU|A_Register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|A_Register\(0),
	datac => \CPU|Selector166~1_combout\,
	datad => \CPU|Selector166~2_combout\,
	combout => \CPU|Selector166~3_combout\);

-- Location: LCCOMB_X26_Y15_N20
\CPU|Selector166~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector166~6_combout\ = (\CPU|INST_Register\(0) & (((\CPU|INST_Register\(2))))) # (!\CPU|INST_Register\(0) & ((\CPU|INST_Register\(2) & ((\CPU|Selector166~3_combout\))) # (!\CPU|INST_Register\(2) & (\CPU|Selector166~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Selector166~5_combout\,
	datab => \CPU|Selector166~3_combout\,
	datac => \CPU|INST_Register\(0),
	datad => \CPU|INST_Register\(2),
	combout => \CPU|Selector166~6_combout\);

-- Location: LCCOMB_X26_Y15_N18
\CPU|Selector166~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector166~7_combout\ = (\CPU|INST_Register\(0) & ((\CPU|Selector166~6_combout\ & (\CPU|A_Register\(0))) # (!\CPU|Selector166~6_combout\ & ((\CPU|Selector166~0_combout\))))) # (!\CPU|INST_Register\(0) & (((\CPU|Selector166~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|A_Register\(0),
	datac => \CPU|Selector166~0_combout\,
	datad => \CPU|Selector166~6_combout\,
	combout => \CPU|Selector166~7_combout\);

-- Location: LCCOMB_X26_Y15_N24
\CPU|A_Register[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|A_Register[0]~2_combout\ = (\CPU|A_Register[6]~12_combout\ & ((\CPU|INST_Register\(5) & (\CPU|A_Register\(0))) # (!\CPU|INST_Register\(5) & ((\CPU|Selector166~7_combout\))))) # (!\CPU|A_Register[6]~12_combout\ & (((\CPU|A_Register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[6]~12_combout\,
	datab => \CPU|INST_Register\(5),
	datac => \CPU|A_Register\(0),
	datad => \CPU|Selector166~7_combout\,
	combout => \CPU|A_Register[0]~2_combout\);

-- Location: FF_X26_Y15_N25
\CPU|A_Register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|A_Register[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|A_Register\(0));

-- Location: FF_X26_Y12_N17
\CPU|SL_Register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|A_Register\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SL_Register\(1));

-- Location: LCCOMB_X26_Y12_N28
\CPU|OR_Register~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|OR_Register~1_combout\ = (\CPU|A_Register\(1)) # (\CPU|B_Register\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|A_Register\(1),
	datad => \CPU|B_Register\(1),
	combout => \CPU|OR_Register~1_combout\);

-- Location: FF_X26_Y12_N29
\CPU|OR_Register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|OR_Register~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|OR_Register\(1));

-- Location: LCCOMB_X26_Y12_N18
\CPU|Selector165~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector165~0_combout\ = (\CPU|INST_Register\(1) & (((\CPU|INST_Register\(3))))) # (!\CPU|INST_Register\(1) & ((\CPU|INST_Register\(3) & (\CPU|SL_Register\(1))) # (!\CPU|INST_Register\(3) & ((\CPU|OR_Register\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|SL_Register\(1),
	datac => \CPU|INST_Register\(3),
	datad => \CPU|OR_Register\(1),
	combout => \CPU|Selector165~0_combout\);

-- Location: LCCOMB_X26_Y12_N8
\CPU|Selector165~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector165~1_combout\ = (\CPU|INST_Register\(1) & ((\CPU|Selector165~0_combout\ & (\CPU|SR_Register\(1))) # (!\CPU|Selector165~0_combout\ & ((\CPU|AND_Register\(1)))))) # (!\CPU|INST_Register\(1) & (((\CPU|Selector165~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|SR_Register\(1),
	datac => \CPU|AND_Register\(1),
	datad => \CPU|Selector165~0_combout\,
	combout => \CPU|Selector165~1_combout\);

-- Location: LCCOMB_X26_Y14_N12
\CPU|A_Register[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|A_Register[5]~3_combout\ = (\CPU|INST_Register\(4) & \CPU|INST_Register\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(4),
	datac => \CPU|INST_Register\(3),
	combout => \CPU|A_Register[5]~3_combout\);

-- Location: LCCOMB_X26_Y12_N6
\CPU|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~5_combout\ = \CPU|A_Register\(1) $ (\CPU|B_Register\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|A_Register\(1),
	datad => \CPU|B_Register\(1),
	combout => \CPU|Equal1~5_combout\);

-- Location: FF_X26_Y12_N7
\CPU|XOR_Register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|XOR_Register\(1));

-- Location: LCCOMB_X25_Y12_N14
\CPU|A_Register[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|A_Register[5]~4_combout\ = (\CPU|INST_Register\(4) & ((\CPU|INST_Register\(1)) # (!\CPU|INST_Register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|INST_Register\(1),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|A_Register[5]~4_combout\);

-- Location: LCCOMB_X28_Y13_N14
\CPU|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add1~2_combout\ = (\CPU|B_Register\(1) & ((\CPU|A_Register\(1) & (\CPU|Add1~1\ & VCC)) # (!\CPU|A_Register\(1) & (!\CPU|Add1~1\)))) # (!\CPU|B_Register\(1) & ((\CPU|A_Register\(1) & (!\CPU|Add1~1\)) # (!\CPU|A_Register\(1) & ((\CPU|Add1~1\) # 
-- (GND)))))
-- \CPU|Add1~3\ = CARRY((\CPU|B_Register\(1) & (!\CPU|A_Register\(1) & !\CPU|Add1~1\)) # (!\CPU|B_Register\(1) & ((!\CPU|Add1~1\) # (!\CPU|A_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(1),
	datab => \CPU|A_Register\(1),
	datad => VCC,
	cin => \CPU|Add1~1\,
	combout => \CPU|Add1~2_combout\,
	cout => \CPU|Add1~3\);

-- Location: FF_X28_Y13_N15
\CPU|SUM_Register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SUM_Register\(1));

-- Location: LCCOMB_X28_Y13_N0
\CPU|Selector165~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector165~2_combout\ = (\CPU|A_Register[5]~4_combout\ & ((\CPU|SUM_Register\(1)) # ((\CPU|A_Register[5]~3_combout\)))) # (!\CPU|A_Register[5]~4_combout\ & (((\CPU|dataReg\(1) & !\CPU|A_Register[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[5]~4_combout\,
	datab => \CPU|SUM_Register\(1),
	datac => \CPU|dataReg\(1),
	datad => \CPU|A_Register[5]~3_combout\,
	combout => \CPU|Selector165~2_combout\);

-- Location: LCCOMB_X28_Y13_N6
\CPU|Selector165~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector165~3_combout\ = (\CPU|A_Register[5]~3_combout\ & ((\CPU|Selector165~2_combout\ & ((\CPU|XOR_Register\(1)))) # (!\CPU|Selector165~2_combout\ & (!\CPU|SR_Register\(0))))) # (!\CPU|A_Register[5]~3_combout\ & (((\CPU|Selector165~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SR_Register\(0),
	datab => \CPU|A_Register[5]~3_combout\,
	datac => \CPU|XOR_Register\(1),
	datad => \CPU|Selector165~2_combout\,
	combout => \CPU|Selector165~3_combout\);

-- Location: LCCOMB_X26_Y13_N4
\CPU|Selector165~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector165~4_combout\ = (\CPU|INST_Register\(2) & (\CPU|Selector165~1_combout\)) # (!\CPU|INST_Register\(2) & ((\CPU|Selector165~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(2),
	datac => \CPU|Selector165~1_combout\,
	datad => \CPU|Selector165~3_combout\,
	combout => \CPU|Selector165~4_combout\);

-- Location: LCCOMB_X25_Y11_N14
\CPU|A_Register[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|A_Register[5]~5_combout\ = (!\CPU|INST_Register\(2) & (!\CPU|INST_Register\(4) & (\CPU|INST_Register\(1) $ (\CPU|INST_Register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|INST_Register\(4),
	combout => \CPU|A_Register[5]~5_combout\);

-- Location: LCCOMB_X25_Y12_N18
\CPU|MemoryPointer[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~20_combout\ = \CPU|INST_Register\(0) $ (\CPU|INST_Register\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(0),
	datac => \CPU|INST_Register\(1),
	combout => \CPU|MemoryPointer[1]~20_combout\);

-- Location: LCCOMB_X25_Y11_N12
\CPU|A_Register[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|A_Register[6]~6_combout\ = (\CPU|INST_Register\(2)) # (((\CPU|A_Register[5]~5_combout\ & \CPU|INST_Register\(3))) # (!\CPU|MemoryPointer[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|A_Register[5]~5_combout\,
	datac => \CPU|INST_Register\(3),
	datad => \CPU|MemoryPointer[1]~20_combout\,
	combout => \CPU|A_Register[6]~6_combout\);

-- Location: LCCOMB_X25_Y11_N22
\CPU|A_Register[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|A_Register[6]~7_combout\ = (!\CPU|INST_Register\(4) & ((\CPU|A_Register[6]~6_combout\) # ((!\CPU|Decoder0~1_combout\ & !\CPU|INST_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|Decoder0~1_combout\,
	datac => \CPU|INST_Register\(1),
	datad => \CPU|A_Register[6]~6_combout\,
	combout => \CPU|A_Register[6]~7_combout\);

-- Location: LCCOMB_X26_Y14_N24
\CPU|A_Register[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|A_Register[6]~9_combout\ = (\CPU|INST_Register\(1) & (((!\CPU|INST_Register\(3) & !\CPU|INST_Register\(2))) # (!\CPU|INST_Register\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(4),
	datad => \CPU|INST_Register\(1),
	combout => \CPU|A_Register[6]~9_combout\);

-- Location: LCCOMB_X26_Y14_N2
\CPU|A_Register[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|A_Register[6]~8_combout\ = (\CPU|INST_Register\(5)) # (((\CPU|INST_Register\(0) & \CPU|INST_Register\(4))) # (!\CPU|A_Register[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(5),
	datac => \CPU|INST_Register\(4),
	datad => \CPU|A_Register[6]~12_combout\,
	combout => \CPU|A_Register[6]~8_combout\);

-- Location: LCCOMB_X26_Y14_N30
\CPU|A_Register[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|A_Register[6]~10_combout\ = (!\CPU|A_Register[6]~7_combout\ & (!\CPU|A_Register[6]~8_combout\ & ((!\CPU|MemoryPointer[0]~51_combout\) # (!\CPU|A_Register[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[6]~7_combout\,
	datab => \CPU|A_Register[6]~9_combout\,
	datac => \CPU|MemoryPointer[0]~51_combout\,
	datad => \CPU|A_Register[6]~8_combout\,
	combout => \CPU|A_Register[6]~10_combout\);

-- Location: FF_X26_Y13_N5
\CPU|A_Register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector165~4_combout\,
	ena => \CPU|A_Register[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|A_Register\(1));

-- Location: LCCOMB_X28_Y13_N16
\CPU|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add1~4_combout\ = ((\CPU|A_Register\(2) $ (\CPU|B_Register\(2) $ (!\CPU|Add1~3\)))) # (GND)
-- \CPU|Add1~5\ = CARRY((\CPU|A_Register\(2) & ((\CPU|B_Register\(2)) # (!\CPU|Add1~3\))) # (!\CPU|A_Register\(2) & (\CPU|B_Register\(2) & !\CPU|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(2),
	datab => \CPU|B_Register\(2),
	datad => VCC,
	cin => \CPU|Add1~3\,
	combout => \CPU|Add1~4_combout\,
	cout => \CPU|Add1~5\);

-- Location: FF_X28_Y13_N17
\CPU|SUM_Register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SUM_Register\(2));

-- Location: LCCOMB_X29_Y12_N16
\CPU|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~6_combout\ = \CPU|B_Register\(2) $ (\CPU|A_Register\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|B_Register\(2),
	datac => \CPU|A_Register\(2),
	combout => \CPU|Equal1~6_combout\);

-- Location: FF_X29_Y12_N17
\CPU|XOR_Register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|XOR_Register\(2));

-- Location: LCCOMB_X26_Y12_N10
\CPU|Selector164~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector164~2_combout\ = (\CPU|A_Register[5]~3_combout\ & (((\CPU|A_Register[5]~4_combout\) # (!\CPU|SR_Register\(1))))) # (!\CPU|A_Register[5]~3_combout\ & (\CPU|dataReg\(2) & ((!\CPU|A_Register[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(2),
	datab => \CPU|SR_Register\(1),
	datac => \CPU|A_Register[5]~3_combout\,
	datad => \CPU|A_Register[5]~4_combout\,
	combout => \CPU|Selector164~2_combout\);

-- Location: LCCOMB_X26_Y12_N20
\CPU|Selector164~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector164~3_combout\ = (\CPU|Selector164~2_combout\ & (((\CPU|XOR_Register\(2)) # (!\CPU|A_Register[5]~4_combout\)))) # (!\CPU|Selector164~2_combout\ & (\CPU|SUM_Register\(2) & ((\CPU|A_Register[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SUM_Register\(2),
	datab => \CPU|XOR_Register\(2),
	datac => \CPU|Selector164~2_combout\,
	datad => \CPU|A_Register[5]~4_combout\,
	combout => \CPU|Selector164~3_combout\);

-- Location: LCCOMB_X25_Y12_N20
\CPU|AND_Register~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|AND_Register~2_combout\ = (\CPU|B_Register\(2) & \CPU|A_Register\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(2),
	datad => \CPU|A_Register\(2),
	combout => \CPU|AND_Register~2_combout\);

-- Location: FF_X25_Y12_N21
\CPU|AND_Register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|AND_Register~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|AND_Register\(2));

-- Location: LCCOMB_X25_Y12_N30
\CPU|OR_Register~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|OR_Register~2_combout\ = (\CPU|B_Register\(2)) # (\CPU|A_Register\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(2),
	datad => \CPU|A_Register\(2),
	combout => \CPU|OR_Register~2_combout\);

-- Location: FF_X25_Y12_N31
\CPU|OR_Register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|OR_Register~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|OR_Register\(2));

-- Location: LCCOMB_X25_Y12_N4
\CPU|Selector164~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector164~0_combout\ = (\CPU|INST_Register\(3) & (((\CPU|INST_Register\(1))))) # (!\CPU|INST_Register\(3) & ((\CPU|INST_Register\(1) & (\CPU|AND_Register\(2))) # (!\CPU|INST_Register\(1) & ((\CPU|OR_Register\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|AND_Register\(2),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|OR_Register\(2),
	combout => \CPU|Selector164~0_combout\);

-- Location: LCCOMB_X26_Y12_N0
\CPU|Selector164~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector164~1_combout\ = (\CPU|Selector164~0_combout\ & (((\CPU|SR_Register\(2)) # (!\CPU|INST_Register\(3))))) # (!\CPU|Selector164~0_combout\ & (\CPU|SR_Register\(0) & (\CPU|INST_Register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SR_Register\(0),
	datab => \CPU|Selector164~0_combout\,
	datac => \CPU|INST_Register\(3),
	datad => \CPU|SR_Register\(2),
	combout => \CPU|Selector164~1_combout\);

-- Location: LCCOMB_X26_Y13_N6
\CPU|Selector164~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector164~4_combout\ = (\CPU|INST_Register\(2) & ((\CPU|Selector164~1_combout\))) # (!\CPU|INST_Register\(2) & (\CPU|Selector164~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(2),
	datac => \CPU|Selector164~3_combout\,
	datad => \CPU|Selector164~1_combout\,
	combout => \CPU|Selector164~4_combout\);

-- Location: FF_X26_Y13_N7
\CPU|A_Register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector164~4_combout\,
	ena => \CPU|A_Register[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|A_Register\(2));

-- Location: FF_X28_Y14_N21
\CPU|SR_Register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|A_Register\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SR_Register\(1));

-- Location: LCCOMB_X28_Y14_N20
\CPU|Selector163~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector163~0_combout\ = (\CPU|INST_Register\(3) & (((\CPU|SR_Register\(1)) # (\CPU|INST_Register\(1))))) # (!\CPU|INST_Register\(3) & (\CPU|OR_Register\(3) & ((!\CPU|INST_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|OR_Register\(3),
	datac => \CPU|SR_Register\(1),
	datad => \CPU|INST_Register\(1),
	combout => \CPU|Selector163~0_combout\);

-- Location: FF_X28_Y14_N15
\CPU|SR_Register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|A_Register\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SR_Register\(3));

-- Location: LCCOMB_X28_Y14_N12
\CPU|Selector163~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector163~1_combout\ = (\CPU|Selector163~0_combout\ & (((\CPU|SR_Register\(3)) # (!\CPU|INST_Register\(1))))) # (!\CPU|Selector163~0_combout\ & (\CPU|AND_Register\(3) & (\CPU|INST_Register\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|AND_Register\(3),
	datab => \CPU|Selector163~0_combout\,
	datac => \CPU|INST_Register\(1),
	datad => \CPU|SR_Register\(3),
	combout => \CPU|Selector163~1_combout\);

-- Location: LCCOMB_X29_Y14_N26
\CPU|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~7_combout\ = \CPU|B_Register\(3) $ (\CPU|A_Register\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|B_Register\(3),
	datad => \CPU|A_Register\(3),
	combout => \CPU|Equal1~7_combout\);

-- Location: FF_X29_Y14_N27
\CPU|XOR_Register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|XOR_Register\(3));

-- Location: LCCOMB_X28_Y13_N18
\CPU|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add1~6_combout\ = (\CPU|B_Register\(3) & ((\CPU|A_Register\(3) & (\CPU|Add1~5\ & VCC)) # (!\CPU|A_Register\(3) & (!\CPU|Add1~5\)))) # (!\CPU|B_Register\(3) & ((\CPU|A_Register\(3) & (!\CPU|Add1~5\)) # (!\CPU|A_Register\(3) & ((\CPU|Add1~5\) # 
-- (GND)))))
-- \CPU|Add1~7\ = CARRY((\CPU|B_Register\(3) & (!\CPU|A_Register\(3) & !\CPU|Add1~5\)) # (!\CPU|B_Register\(3) & ((!\CPU|Add1~5\) # (!\CPU|A_Register\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(3),
	datab => \CPU|A_Register\(3),
	datad => VCC,
	cin => \CPU|Add1~5\,
	combout => \CPU|Add1~6_combout\,
	cout => \CPU|Add1~7\);

-- Location: FF_X28_Y13_N19
\CPU|SUM_Register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SUM_Register\(3));

-- Location: LCCOMB_X26_Y14_N14
\CPU|Selector163~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector163~2_combout\ = (\CPU|A_Register[5]~4_combout\ & (((\CPU|SUM_Register\(3)) # (\CPU|A_Register[5]~3_combout\)))) # (!\CPU|A_Register[5]~4_combout\ & (\CPU|dataReg\(3) & ((!\CPU|A_Register[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[5]~4_combout\,
	datab => \CPU|dataReg\(3),
	datac => \CPU|SUM_Register\(3),
	datad => \CPU|A_Register[5]~3_combout\,
	combout => \CPU|Selector163~2_combout\);

-- Location: LCCOMB_X26_Y14_N20
\CPU|Selector163~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector163~3_combout\ = (\CPU|Selector163~2_combout\ & ((\CPU|XOR_Register\(3)) # ((!\CPU|A_Register[5]~3_combout\)))) # (!\CPU|Selector163~2_combout\ & (((!\CPU|SR_Register\(2) & \CPU|A_Register[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|XOR_Register\(3),
	datab => \CPU|SR_Register\(2),
	datac => \CPU|Selector163~2_combout\,
	datad => \CPU|A_Register[5]~3_combout\,
	combout => \CPU|Selector163~3_combout\);

-- Location: LCCOMB_X26_Y14_N8
\CPU|Selector163~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector163~4_combout\ = (\CPU|INST_Register\(2) & (\CPU|Selector163~1_combout\)) # (!\CPU|INST_Register\(2) & ((\CPU|Selector163~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(2),
	datac => \CPU|Selector163~1_combout\,
	datad => \CPU|Selector163~3_combout\,
	combout => \CPU|Selector163~4_combout\);

-- Location: FF_X26_Y14_N9
\CPU|A_Register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector163~4_combout\,
	ena => \CPU|A_Register[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|A_Register\(3));

-- Location: LCCOMB_X29_Y14_N28
\CPU|SR_Register[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|SR_Register[2]~feeder_combout\ = \CPU|A_Register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|A_Register\(3),
	combout => \CPU|SR_Register[2]~feeder_combout\);

-- Location: FF_X29_Y14_N29
\CPU|SR_Register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|SR_Register[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SR_Register\(2));

-- Location: FF_X26_Y13_N1
\CPU|B_Register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(4),
	sload => VCC,
	ena => \CPU|B_Register[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|B_Register\(4));

-- Location: LCCOMB_X29_Y14_N18
\CPU|OR_Register~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|OR_Register~4_combout\ = (\CPU|A_Register\(4)) # (\CPU|B_Register\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|A_Register\(4),
	datac => \CPU|B_Register\(4),
	combout => \CPU|OR_Register~4_combout\);

-- Location: FF_X29_Y14_N19
\CPU|OR_Register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|OR_Register~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|OR_Register\(4));

-- Location: LCCOMB_X29_Y14_N20
\CPU|AND_Register~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|AND_Register~4_combout\ = (\CPU|A_Register\(4) & \CPU|B_Register\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|A_Register\(4),
	datac => \CPU|B_Register\(4),
	combout => \CPU|AND_Register~4_combout\);

-- Location: FF_X29_Y14_N21
\CPU|AND_Register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|AND_Register~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|AND_Register\(4));

-- Location: LCCOMB_X29_Y14_N8
\CPU|Selector162~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector162~0_combout\ = (\CPU|INST_Register\(1) & (((\CPU|INST_Register\(3)) # (\CPU|AND_Register\(4))))) # (!\CPU|INST_Register\(1) & (\CPU|OR_Register\(4) & (!\CPU|INST_Register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|OR_Register\(4),
	datac => \CPU|INST_Register\(3),
	datad => \CPU|AND_Register\(4),
	combout => \CPU|Selector162~0_combout\);

-- Location: FF_X25_Y13_N25
\CPU|B_Register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(6),
	sload => VCC,
	ena => \CPU|B_Register[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|B_Register\(6));

-- Location: LCCOMB_X28_Y12_N24
\CPU|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~10_combout\ = \CPU|A_Register\(6) $ (\CPU|B_Register\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(6),
	datad => \CPU|B_Register\(6),
	combout => \CPU|Equal1~10_combout\);

-- Location: FF_X28_Y12_N25
\CPU|XOR_Register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|XOR_Register\(6));

-- Location: FF_X26_Y13_N19
\CPU|B_Register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(5),
	sload => VCC,
	ena => \CPU|B_Register[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|B_Register\(5));

-- Location: LCCOMB_X28_Y13_N20
\CPU|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add1~8_combout\ = ((\CPU|B_Register\(4) $ (\CPU|A_Register\(4) $ (!\CPU|Add1~7\)))) # (GND)
-- \CPU|Add1~9\ = CARRY((\CPU|B_Register\(4) & ((\CPU|A_Register\(4)) # (!\CPU|Add1~7\))) # (!\CPU|B_Register\(4) & (\CPU|A_Register\(4) & !\CPU|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(4),
	datab => \CPU|A_Register\(4),
	datad => VCC,
	cin => \CPU|Add1~7\,
	combout => \CPU|Add1~8_combout\,
	cout => \CPU|Add1~9\);

-- Location: LCCOMB_X28_Y13_N22
\CPU|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add1~10_combout\ = (\CPU|A_Register\(5) & ((\CPU|B_Register\(5) & (\CPU|Add1~9\ & VCC)) # (!\CPU|B_Register\(5) & (!\CPU|Add1~9\)))) # (!\CPU|A_Register\(5) & ((\CPU|B_Register\(5) & (!\CPU|Add1~9\)) # (!\CPU|B_Register\(5) & ((\CPU|Add1~9\) # 
-- (GND)))))
-- \CPU|Add1~11\ = CARRY((\CPU|A_Register\(5) & (!\CPU|B_Register\(5) & !\CPU|Add1~9\)) # (!\CPU|A_Register\(5) & ((!\CPU|Add1~9\) # (!\CPU|B_Register\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(5),
	datab => \CPU|B_Register\(5),
	datad => VCC,
	cin => \CPU|Add1~9\,
	combout => \CPU|Add1~10_combout\,
	cout => \CPU|Add1~11\);

-- Location: LCCOMB_X28_Y13_N24
\CPU|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add1~12_combout\ = ((\CPU|A_Register\(6) $ (\CPU|B_Register\(6) $ (!\CPU|Add1~11\)))) # (GND)
-- \CPU|Add1~13\ = CARRY((\CPU|A_Register\(6) & ((\CPU|B_Register\(6)) # (!\CPU|Add1~11\))) # (!\CPU|A_Register\(6) & (\CPU|B_Register\(6) & !\CPU|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(6),
	datab => \CPU|B_Register\(6),
	datad => VCC,
	cin => \CPU|Add1~11\,
	combout => \CPU|Add1~12_combout\,
	cout => \CPU|Add1~13\);

-- Location: FF_X28_Y13_N25
\CPU|SUM_Register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SUM_Register\(6));

-- Location: LCCOMB_X26_Y14_N10
\CPU|Selector160~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector160~5_combout\ = (\CPU|A_Register[5]~3_combout\ & (((\CPU|A_Register[5]~4_combout\)) # (!\CPU|SR_Register\(5)))) # (!\CPU|A_Register[5]~3_combout\ & (((\CPU|dataReg\(6) & !\CPU|A_Register[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[5]~3_combout\,
	datab => \CPU|SR_Register\(5),
	datac => \CPU|dataReg\(6),
	datad => \CPU|A_Register[5]~4_combout\,
	combout => \CPU|Selector160~5_combout\);

-- Location: LCCOMB_X26_Y14_N0
\CPU|Selector160~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector160~6_combout\ = (\CPU|A_Register[5]~4_combout\ & ((\CPU|Selector160~5_combout\ & (\CPU|XOR_Register\(6))) # (!\CPU|Selector160~5_combout\ & ((\CPU|SUM_Register\(6)))))) # (!\CPU|A_Register[5]~4_combout\ & (((\CPU|Selector160~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[5]~4_combout\,
	datab => \CPU|XOR_Register\(6),
	datac => \CPU|SUM_Register\(6),
	datad => \CPU|Selector160~5_combout\,
	combout => \CPU|Selector160~6_combout\);

-- Location: IOIBUF_X34_Y9_N1
\data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(7),
	o => \data[7]~input_o\);

-- Location: FF_X25_Y12_N11
\CPU|dataReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataReg\(7));

-- Location: LCCOMB_X25_Y11_N4
\CPU|Selector159~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~1_combout\ = (\CPU|Selector159~0_combout\ & ((\CPU|dataReg\(7)))) # (!\CPU|Selector159~0_combout\ & (\CPU|A_Register\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(7),
	datab => \CPU|dataReg\(7),
	datad => \CPU|Selector159~0_combout\,
	combout => \CPU|Selector159~1_combout\);

-- Location: LCCOMB_X26_Y13_N28
\CPU|B_Register[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|B_Register[7]~feeder_combout\ = \CPU|dataReg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|dataReg\(7),
	combout => \CPU|B_Register[7]~feeder_combout\);

-- Location: FF_X26_Y13_N29
\CPU|B_Register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|B_Register[7]~feeder_combout\,
	ena => \CPU|B_Register[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|B_Register\(7));

-- Location: LCCOMB_X25_Y11_N6
\CPU|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~11_combout\ = \CPU|A_Register\(7) $ (\CPU|B_Register\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|A_Register\(7),
	datac => \CPU|B_Register\(7),
	combout => \CPU|Equal1~11_combout\);

-- Location: FF_X25_Y11_N7
\CPU|XOR_Register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Equal1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|XOR_Register\(7));

-- Location: LCCOMB_X25_Y11_N24
\CPU|Selector159~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~5_combout\ = (\CPU|INST_Register\(3) & (\CPU|XOR_Register\(7))) # (!\CPU|INST_Register\(3) & ((\CPU|dataReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|XOR_Register\(7),
	datab => \CPU|dataReg\(7),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|Selector159~5_combout\);

-- Location: LCCOMB_X25_Y11_N30
\CPU|Selector159~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~6_combout\ = (\CPU|INST_Register\(4) & (\CPU|INST_Register\(3))) # (!\CPU|INST_Register\(4) & (!\CPU|INST_Register\(3) & (\CPU|INST_Register\(1) & !\CPU|MemoryPointer[0]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|INST_Register\(3),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|MemoryPointer[0]~51_combout\,
	combout => \CPU|Selector159~6_combout\);

-- Location: LCCOMB_X28_Y13_N26
\CPU|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add1~14_combout\ = (\CPU|B_Register\(7) & ((\CPU|A_Register\(7) & (\CPU|Add1~13\ & VCC)) # (!\CPU|A_Register\(7) & (!\CPU|Add1~13\)))) # (!\CPU|B_Register\(7) & ((\CPU|A_Register\(7) & (!\CPU|Add1~13\)) # (!\CPU|A_Register\(7) & ((\CPU|Add1~13\) # 
-- (GND)))))
-- \CPU|Add1~15\ = CARRY((\CPU|B_Register\(7) & (!\CPU|A_Register\(7) & !\CPU|Add1~13\)) # (!\CPU|B_Register\(7) & ((!\CPU|Add1~13\) # (!\CPU|A_Register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(7),
	datab => \CPU|A_Register\(7),
	datad => VCC,
	cin => \CPU|Add1~13\,
	combout => \CPU|Add1~14_combout\,
	cout => \CPU|Add1~15\);

-- Location: FF_X28_Y13_N27
\CPU|SUM_Register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SUM_Register\(7));

-- Location: LCCOMB_X25_Y11_N28
\CPU|Selector159~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~7_combout\ = (\CPU|INST_Register\(4) & (((!\CPU|INST_Register\(3) & !\CPU|MemoryPointer[0]~51_combout\)) # (!\CPU|INST_Register\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|INST_Register\(3),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|MemoryPointer[0]~51_combout\,
	combout => \CPU|Selector159~7_combout\);

-- Location: LCCOMB_X25_Y11_N18
\CPU|Selector159~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~8_combout\ = (\CPU|Selector159~6_combout\ & (((\CPU|Selector159~7_combout\)))) # (!\CPU|Selector159~6_combout\ & ((\CPU|Selector159~7_combout\ & ((\CPU|SUM_Register\(7)))) # (!\CPU|Selector159~7_combout\ & (\CPU|A_Register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Selector159~6_combout\,
	datab => \CPU|A_Register\(7),
	datac => \CPU|SUM_Register\(7),
	datad => \CPU|Selector159~7_combout\,
	combout => \CPU|Selector159~8_combout\);

-- Location: LCCOMB_X25_Y11_N8
\CPU|Selector159~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~9_combout\ = (\CPU|Selector159~6_combout\ & ((\CPU|Selector159~8_combout\ & (!\CPU|SR_Register\(6))) # (!\CPU|Selector159~8_combout\ & ((\CPU|Selector159~5_combout\))))) # (!\CPU|Selector159~6_combout\ & (((\CPU|Selector159~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SR_Register\(6),
	datab => \CPU|Selector159~5_combout\,
	datac => \CPU|Selector159~6_combout\,
	datad => \CPU|Selector159~8_combout\,
	combout => \CPU|Selector159~9_combout\);

-- Location: LCCOMB_X26_Y11_N28
\CPU|Selector159~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~2_combout\ = (\CPU|INST_Register\(3) & (!\CPU|INST_Register\(1) & \CPU|SR_Register\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(3),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|SR_Register\(5),
	combout => \CPU|Selector159~2_combout\);

-- Location: LCCOMB_X28_Y12_N18
\CPU|AND_Register~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|AND_Register~7_combout\ = (\CPU|B_Register\(7) & \CPU|A_Register\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(7),
	datac => \CPU|A_Register\(7),
	combout => \CPU|AND_Register~7_combout\);

-- Location: FF_X28_Y12_N19
\CPU|AND_Register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|AND_Register~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|AND_Register\(7));

-- Location: LCCOMB_X28_Y12_N8
\CPU|OR_Register~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|OR_Register~7_combout\ = (\CPU|B_Register\(7)) # (\CPU|A_Register\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(7),
	datac => \CPU|A_Register\(7),
	combout => \CPU|OR_Register~7_combout\);

-- Location: FF_X28_Y12_N9
\CPU|OR_Register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|OR_Register~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|OR_Register\(7));

-- Location: LCCOMB_X28_Y12_N30
\CPU|Selector159~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~3_combout\ = (!\CPU|INST_Register\(3) & ((\CPU|INST_Register\(1) & (\CPU|AND_Register\(7))) # (!\CPU|INST_Register\(1) & ((\CPU|OR_Register\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|AND_Register\(7),
	datac => \CPU|OR_Register\(7),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|Selector159~3_combout\);

-- Location: LCCOMB_X26_Y11_N26
\CPU|Selector159~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~4_combout\ = (\CPU|INST_Register\(4) & ((\CPU|Selector159~2_combout\) # ((\CPU|Selector159~3_combout\)))) # (!\CPU|INST_Register\(4) & (((\CPU|A_Register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|Selector159~2_combout\,
	datac => \CPU|A_Register\(7),
	datad => \CPU|Selector159~3_combout\,
	combout => \CPU|Selector159~4_combout\);

-- Location: LCCOMB_X25_Y11_N10
\CPU|Selector159~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~10_combout\ = (\CPU|INST_Register\(0) & (\CPU|INST_Register\(2))) # (!\CPU|INST_Register\(0) & ((\CPU|INST_Register\(2) & ((\CPU|Selector159~4_combout\))) # (!\CPU|INST_Register\(2) & (\CPU|Selector159~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(2),
	datac => \CPU|Selector159~9_combout\,
	datad => \CPU|Selector159~4_combout\,
	combout => \CPU|Selector159~10_combout\);

-- Location: LCCOMB_X25_Y11_N20
\CPU|Selector159~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector159~11_combout\ = (\CPU|INST_Register\(0) & ((\CPU|Selector159~10_combout\ & (\CPU|A_Register\(7))) # (!\CPU|Selector159~10_combout\ & ((\CPU|Selector159~1_combout\))))) # (!\CPU|INST_Register\(0) & (((\CPU|Selector159~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|A_Register\(7),
	datac => \CPU|Selector159~1_combout\,
	datad => \CPU|Selector159~10_combout\,
	combout => \CPU|Selector159~11_combout\);

-- Location: LCCOMB_X25_Y11_N16
\CPU|A_Register[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|A_Register[7]~11_combout\ = (\CPU|INST_Register\(5) & (((\CPU|A_Register\(7))))) # (!\CPU|INST_Register\(5) & ((\CPU|A_Register[6]~12_combout\ & ((\CPU|Selector159~11_combout\))) # (!\CPU|A_Register[6]~12_combout\ & (\CPU|A_Register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|A_Register[6]~12_combout\,
	datac => \CPU|A_Register\(7),
	datad => \CPU|Selector159~11_combout\,
	combout => \CPU|A_Register[7]~11_combout\);

-- Location: FF_X25_Y11_N17
\CPU|A_Register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|A_Register[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|A_Register\(7));

-- Location: FF_X28_Y12_N29
\CPU|SR_Register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|A_Register\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SR_Register\(6));

-- Location: LCCOMB_X28_Y12_N26
\CPU|AND_Register~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|AND_Register~6_combout\ = (\CPU|A_Register\(6) & \CPU|B_Register\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|A_Register\(6),
	datad => \CPU|B_Register\(6),
	combout => \CPU|AND_Register~6_combout\);

-- Location: FF_X28_Y12_N27
\CPU|AND_Register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|AND_Register~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|AND_Register\(6));

-- Location: LCCOMB_X28_Y12_N4
\CPU|OR_Register~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|OR_Register~6_combout\ = (\CPU|A_Register\(6)) # (\CPU|B_Register\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(6),
	datad => \CPU|B_Register\(6),
	combout => \CPU|OR_Register~6_combout\);

-- Location: FF_X28_Y12_N5
\CPU|OR_Register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|OR_Register~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|OR_Register\(6));

-- Location: LCCOMB_X28_Y12_N22
\CPU|Selector160~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector160~3_combout\ = (\CPU|INST_Register\(1) & ((\CPU|AND_Register\(6)) # ((\CPU|INST_Register\(3))))) # (!\CPU|INST_Register\(1) & (((\CPU|OR_Register\(6) & !\CPU|INST_Register\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|AND_Register\(6),
	datab => \CPU|OR_Register\(6),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|Selector160~3_combout\);

-- Location: LCCOMB_X28_Y12_N6
\CPU|Selector160~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector160~4_combout\ = (\CPU|INST_Register\(3) & ((\CPU|Selector160~3_combout\ & (\CPU|SR_Register\(6))) # (!\CPU|Selector160~3_combout\ & ((\CPU|SR_Register\(4)))))) # (!\CPU|INST_Register\(3) & (((\CPU|Selector160~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|SR_Register\(6),
	datac => \CPU|SR_Register\(4),
	datad => \CPU|Selector160~3_combout\,
	combout => \CPU|Selector160~4_combout\);

-- Location: LCCOMB_X26_Y13_N30
\CPU|Selector160~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector160~7_combout\ = (\CPU|INST_Register\(2) & ((\CPU|Selector160~4_combout\))) # (!\CPU|INST_Register\(2) & (\CPU|Selector160~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(2),
	datac => \CPU|Selector160~6_combout\,
	datad => \CPU|Selector160~4_combout\,
	combout => \CPU|Selector160~7_combout\);

-- Location: FF_X26_Y13_N31
\CPU|A_Register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector160~7_combout\,
	ena => \CPU|A_Register[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|A_Register\(6));

-- Location: FF_X28_Y12_N1
\CPU|SR_Register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|A_Register\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SR_Register\(5));

-- Location: LCCOMB_X28_Y14_N22
\CPU|AND_Register~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|AND_Register~5_combout\ = (\CPU|A_Register\(5) & \CPU|B_Register\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|A_Register\(5),
	datad => \CPU|B_Register\(5),
	combout => \CPU|AND_Register~5_combout\);

-- Location: FF_X28_Y14_N23
\CPU|AND_Register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|AND_Register~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|AND_Register\(5));

-- Location: LCCOMB_X28_Y14_N0
\CPU|OR_Register~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|OR_Register~5_combout\ = (\CPU|A_Register\(5)) # (\CPU|B_Register\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|A_Register\(5),
	datad => \CPU|B_Register\(5),
	combout => \CPU|OR_Register~5_combout\);

-- Location: FF_X28_Y14_N1
\CPU|OR_Register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|OR_Register~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|OR_Register\(5));

-- Location: LCCOMB_X29_Y14_N24
\CPU|Selector161~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector161~0_combout\ = (\CPU|INST_Register\(3) & (((\CPU|INST_Register\(1))))) # (!\CPU|INST_Register\(3) & ((\CPU|INST_Register\(1) & (\CPU|AND_Register\(5))) # (!\CPU|INST_Register\(1) & ((\CPU|OR_Register\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|AND_Register\(5),
	datac => \CPU|OR_Register\(5),
	datad => \CPU|INST_Register\(1),
	combout => \CPU|Selector161~0_combout\);

-- Location: LCCOMB_X29_Y14_N30
\CPU|Selector161~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector161~1_combout\ = (\CPU|INST_Register\(3) & ((\CPU|Selector161~0_combout\ & ((\CPU|SR_Register\(5)))) # (!\CPU|Selector161~0_combout\ & (\CPU|SR_Register\(3))))) # (!\CPU|INST_Register\(3) & (((\CPU|Selector161~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SR_Register\(3),
	datab => \CPU|SR_Register\(5),
	datac => \CPU|INST_Register\(3),
	datad => \CPU|Selector161~0_combout\,
	combout => \CPU|Selector161~1_combout\);

-- Location: LCCOMB_X28_Y14_N16
\CPU|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~9_combout\ = \CPU|A_Register\(5) $ (\CPU|B_Register\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|A_Register\(5),
	datad => \CPU|B_Register\(5),
	combout => \CPU|Equal1~9_combout\);

-- Location: FF_X28_Y14_N17
\CPU|XOR_Register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Equal1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|XOR_Register\(5));

-- Location: FF_X28_Y13_N23
\CPU|SUM_Register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SUM_Register\(5));

-- Location: LCCOMB_X28_Y14_N30
\CPU|Selector161~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector161~2_combout\ = (\CPU|A_Register[5]~4_combout\ & ((\CPU|SUM_Register\(5)) # ((\CPU|A_Register[5]~3_combout\)))) # (!\CPU|A_Register[5]~4_combout\ & (((\CPU|dataReg\(5) & !\CPU|A_Register[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SUM_Register\(5),
	datab => \CPU|dataReg\(5),
	datac => \CPU|A_Register[5]~4_combout\,
	datad => \CPU|A_Register[5]~3_combout\,
	combout => \CPU|Selector161~2_combout\);

-- Location: LCCOMB_X29_Y14_N4
\CPU|Selector161~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector161~3_combout\ = (\CPU|A_Register[5]~3_combout\ & ((\CPU|Selector161~2_combout\ & ((\CPU|XOR_Register\(5)))) # (!\CPU|Selector161~2_combout\ & (!\CPU|SR_Register\(4))))) # (!\CPU|A_Register[5]~3_combout\ & (((\CPU|Selector161~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SR_Register\(4),
	datab => \CPU|A_Register[5]~3_combout\,
	datac => \CPU|XOR_Register\(5),
	datad => \CPU|Selector161~2_combout\,
	combout => \CPU|Selector161~3_combout\);

-- Location: LCCOMB_X26_Y13_N2
\CPU|Selector161~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector161~4_combout\ = (\CPU|INST_Register\(2) & (\CPU|Selector161~1_combout\)) # (!\CPU|INST_Register\(2) & ((\CPU|Selector161~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(2),
	datac => \CPU|Selector161~1_combout\,
	datad => \CPU|Selector161~3_combout\,
	combout => \CPU|Selector161~4_combout\);

-- Location: FF_X26_Y13_N3
\CPU|A_Register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector161~4_combout\,
	ena => \CPU|A_Register[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|A_Register\(5));

-- Location: LCCOMB_X29_Y14_N10
\CPU|SR_Register[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|SR_Register[4]~feeder_combout\ = \CPU|A_Register\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|A_Register\(5),
	combout => \CPU|SR_Register[4]~feeder_combout\);

-- Location: FF_X29_Y14_N11
\CPU|SR_Register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|SR_Register[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SR_Register\(4));

-- Location: LCCOMB_X29_Y14_N12
\CPU|Selector162~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector162~1_combout\ = (\CPU|INST_Register\(3) & ((\CPU|Selector162~0_combout\ & ((\CPU|SR_Register\(4)))) # (!\CPU|Selector162~0_combout\ & (\CPU|SR_Register\(2))))) # (!\CPU|INST_Register\(3) & (((\CPU|Selector162~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|SR_Register\(2),
	datac => \CPU|Selector162~0_combout\,
	datad => \CPU|SR_Register\(4),
	combout => \CPU|Selector162~1_combout\);

-- Location: LCCOMB_X29_Y14_N6
\CPU|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~8_combout\ = \CPU|A_Register\(4) $ (\CPU|B_Register\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|A_Register\(4),
	datac => \CPU|B_Register\(4),
	combout => \CPU|Equal1~8_combout\);

-- Location: FF_X29_Y14_N7
\CPU|XOR_Register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Equal1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|XOR_Register\(4));

-- Location: LCCOMB_X26_Y14_N18
\CPU|Selector162~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector162~2_combout\ = (\CPU|A_Register[5]~4_combout\ & (((\CPU|A_Register[5]~3_combout\)))) # (!\CPU|A_Register[5]~4_combout\ & ((\CPU|A_Register[5]~3_combout\ & (!\CPU|SR_Register\(3))) # (!\CPU|A_Register[5]~3_combout\ & ((\CPU|dataReg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[5]~4_combout\,
	datab => \CPU|SR_Register\(3),
	datac => \CPU|dataReg\(4),
	datad => \CPU|A_Register[5]~3_combout\,
	combout => \CPU|Selector162~2_combout\);

-- Location: FF_X28_Y13_N21
\CPU|SUM_Register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|SUM_Register\(4));

-- Location: LCCOMB_X26_Y14_N16
\CPU|Selector162~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector162~3_combout\ = (\CPU|Selector162~2_combout\ & ((\CPU|XOR_Register\(4)) # ((!\CPU|A_Register[5]~4_combout\)))) # (!\CPU|Selector162~2_combout\ & (((\CPU|SUM_Register\(4) & \CPU|A_Register[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|XOR_Register\(4),
	datab => \CPU|Selector162~2_combout\,
	datac => \CPU|SUM_Register\(4),
	datad => \CPU|A_Register[5]~4_combout\,
	combout => \CPU|Selector162~3_combout\);

-- Location: LCCOMB_X26_Y13_N24
\CPU|Selector162~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector162~4_combout\ = (\CPU|INST_Register\(2) & (\CPU|Selector162~1_combout\)) # (!\CPU|INST_Register\(2) & ((\CPU|Selector162~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(2),
	datac => \CPU|Selector162~1_combout\,
	datad => \CPU|Selector162~3_combout\,
	combout => \CPU|Selector162~4_combout\);

-- Location: FF_X26_Y13_N25
\CPU|A_Register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector162~4_combout\,
	ena => \CPU|A_Register[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|A_Register\(4));

-- Location: LCCOMB_X26_Y14_N22
\CPU|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal0~0_combout\ = (!\CPU|A_Register\(4) & (!\CPU|A_Register\(6) & (!\CPU|A_Register\(7) & !\CPU|A_Register\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(4),
	datab => \CPU|A_Register\(6),
	datac => \CPU|A_Register\(7),
	datad => \CPU|A_Register\(5),
	combout => \CPU|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y14_N28
\CPU|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal0~1_combout\ = (!\CPU|A_Register\(0) & (!\CPU|A_Register\(2) & (!\CPU|A_Register\(1) & !\CPU|A_Register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(0),
	datab => \CPU|A_Register\(2),
	datac => \CPU|A_Register\(1),
	datad => \CPU|A_Register\(3),
	combout => \CPU|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y14_N26
\CPU|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal0~2_combout\ = (\CPU|Equal0~0_combout\ & \CPU|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|Equal0~0_combout\,
	datad => \CPU|Equal0~1_combout\,
	combout => \CPU|Equal0~2_combout\);

-- Location: FF_X25_Y12_N23
\CPU|ZeroFlag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ZeroFlag~q\);

-- Location: LCCOMB_X28_Y13_N28
\CPU|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add1~16_combout\ = !\CPU|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \CPU|Add1~15\,
	combout => \CPU|Add1~16_combout\);

-- Location: FF_X24_Y11_N27
\CPU|INST_Register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|dataReg\(7),
	sload => VCC,
	ena => \CPU|INST_Register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INST_Register\(7));

-- Location: LCCOMB_X24_Y11_N16
\CPU|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|LessThan0~0_combout\ = (\CPU|StepCounter\(3) & (\CPU|StepCounter\(1) & (\CPU|StepCounter\(0) & \CPU|StepCounter\(2)))) # (!\CPU|StepCounter\(3) & (!\CPU|StepCounter\(1) & ((!\CPU|StepCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(3),
	datab => \CPU|StepCounter\(1),
	datac => \CPU|StepCounter\(0),
	datad => \CPU|StepCounter\(2),
	combout => \CPU|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y13_N26
\CPU|CarryFlag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|CarryFlag~1_combout\ = (!\CPU|INST_Register\(6) & (!\CPU|INST_Register\(5) & (!\CPU|INST_Register\(7) & !\CPU|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(6),
	datab => \CPU|INST_Register\(5),
	datac => \CPU|INST_Register\(7),
	datad => \CPU|LessThan0~0_combout\,
	combout => \CPU|CarryFlag~1_combout\);

-- Location: LCCOMB_X23_Y11_N14
\CPU|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Decoder0~0_combout\ = (\CPU|StepCounter\(0) & (\CPU|StepCounter\(2) & (!\CPU|StepCounter\(3) & !\CPU|StepCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(0),
	datab => \CPU|StepCounter\(2),
	datac => \CPU|StepCounter\(3),
	datad => \CPU|StepCounter\(1),
	combout => \CPU|Decoder0~0_combout\);

-- Location: LCCOMB_X22_Y11_N16
\CPU|CarryFlag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|CarryFlag~0_combout\ = (!\CPU|INST_Register\(3) & (\CPU|INST_Register\(4) & (!\CPU|INST_Register\(2) & \CPU|INST_Register\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|INST_Register\(4),
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(1),
	combout => \CPU|CarryFlag~0_combout\);

-- Location: LCCOMB_X23_Y11_N4
\CPU|CarryFlag~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|CarryFlag~2_combout\ = (\CPU|CarryFlag~0_combout\ & ((\CPU|INST_Register\(0) & (\CPU|Decoder0~0_combout\)) # (!\CPU|INST_Register\(0) & ((\CPU|Selector167~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|Decoder0~0_combout\,
	datac => \CPU|CarryFlag~0_combout\,
	datad => \CPU|Selector167~0_combout\,
	combout => \CPU|CarryFlag~2_combout\);

-- Location: LCCOMB_X25_Y12_N16
\CPU|CarryFlag~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|CarryFlag~3_combout\ = (\CPU|CarryFlag~1_combout\ & ((\CPU|CarryFlag~2_combout\ & (\CPU|Add1~16_combout\)) # (!\CPU|CarryFlag~2_combout\ & ((\CPU|CarryFlag~q\))))) # (!\CPU|CarryFlag~1_combout\ & (((\CPU|CarryFlag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Add1~16_combout\,
	datab => \CPU|CarryFlag~1_combout\,
	datac => \CPU|CarryFlag~q\,
	datad => \CPU|CarryFlag~2_combout\,
	combout => \CPU|CarryFlag~3_combout\);

-- Location: FF_X25_Y12_N17
\CPU|CarryFlag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|CarryFlag~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|CarryFlag~q\);

-- Location: LCCOMB_X25_Y12_N6
\CPU|MemoryPointer[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~8_combout\ = (!\CPU|INST_Register\(2) & ((\CPU|INST_Register\(1) & ((!\CPU|CarryFlag~q\))) # (!\CPU|INST_Register\(1) & (!\CPU|ZeroFlag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ZeroFlag~q\,
	datab => \CPU|CarryFlag~q\,
	datac => \CPU|INST_Register\(1),
	datad => \CPU|INST_Register\(2),
	combout => \CPU|MemoryPointer[1]~8_combout\);

-- Location: LCCOMB_X26_Y13_N8
\CPU|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|LessThan1~1_cout\ = CARRY((!\CPU|B_Register\(0) & \CPU|A_Register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(0),
	datab => \CPU|A_Register\(0),
	datad => VCC,
	cout => \CPU|LessThan1~1_cout\);

-- Location: LCCOMB_X26_Y13_N10
\CPU|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|LessThan1~3_cout\ = CARRY((\CPU|B_Register\(1) & ((!\CPU|LessThan1~1_cout\) # (!\CPU|A_Register\(1)))) # (!\CPU|B_Register\(1) & (!\CPU|A_Register\(1) & !\CPU|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(1),
	datab => \CPU|A_Register\(1),
	datad => VCC,
	cin => \CPU|LessThan1~1_cout\,
	cout => \CPU|LessThan1~3_cout\);

-- Location: LCCOMB_X26_Y13_N12
\CPU|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|LessThan1~5_cout\ = CARRY((\CPU|A_Register\(2) & ((!\CPU|LessThan1~3_cout\) # (!\CPU|B_Register\(2)))) # (!\CPU|A_Register\(2) & (!\CPU|B_Register\(2) & !\CPU|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(2),
	datab => \CPU|B_Register\(2),
	datad => VCC,
	cin => \CPU|LessThan1~3_cout\,
	cout => \CPU|LessThan1~5_cout\);

-- Location: LCCOMB_X26_Y13_N14
\CPU|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|LessThan1~7_cout\ = CARRY((\CPU|A_Register\(3) & (\CPU|B_Register\(3) & !\CPU|LessThan1~5_cout\)) # (!\CPU|A_Register\(3) & ((\CPU|B_Register\(3)) # (!\CPU|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(3),
	datab => \CPU|B_Register\(3),
	datad => VCC,
	cin => \CPU|LessThan1~5_cout\,
	cout => \CPU|LessThan1~7_cout\);

-- Location: LCCOMB_X26_Y13_N16
\CPU|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|LessThan1~9_cout\ = CARRY((\CPU|A_Register\(4) & ((!\CPU|LessThan1~7_cout\) # (!\CPU|B_Register\(4)))) # (!\CPU|A_Register\(4) & (!\CPU|B_Register\(4) & !\CPU|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(4),
	datab => \CPU|B_Register\(4),
	datad => VCC,
	cin => \CPU|LessThan1~7_cout\,
	cout => \CPU|LessThan1~9_cout\);

-- Location: LCCOMB_X26_Y13_N18
\CPU|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|LessThan1~11_cout\ = CARRY((\CPU|B_Register\(5) & ((!\CPU|LessThan1~9_cout\) # (!\CPU|A_Register\(5)))) # (!\CPU|B_Register\(5) & (!\CPU|A_Register\(5) & !\CPU|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(5),
	datab => \CPU|A_Register\(5),
	datad => VCC,
	cin => \CPU|LessThan1~9_cout\,
	cout => \CPU|LessThan1~11_cout\);

-- Location: LCCOMB_X26_Y13_N20
\CPU|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|LessThan1~13_cout\ = CARRY((\CPU|B_Register\(6) & (\CPU|A_Register\(6) & !\CPU|LessThan1~11_cout\)) # (!\CPU|B_Register\(6) & ((\CPU|A_Register\(6)) # (!\CPU|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|B_Register\(6),
	datab => \CPU|A_Register\(6),
	datad => VCC,
	cin => \CPU|LessThan1~11_cout\,
	cout => \CPU|LessThan1~13_cout\);

-- Location: LCCOMB_X26_Y13_N22
\CPU|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|LessThan1~14_combout\ = (\CPU|B_Register\(7) & (\CPU|LessThan1~13_cout\ & \CPU|A_Register\(7))) # (!\CPU|B_Register\(7) & ((\CPU|LessThan1~13_cout\) # (\CPU|A_Register\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|B_Register\(7),
	datad => \CPU|A_Register\(7),
	cin => \CPU|LessThan1~13_cout\,
	combout => \CPU|LessThan1~14_combout\);

-- Location: LCCOMB_X25_Y12_N24
\CPU|CompareFlag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|CompareFlag~0_combout\ = (!\CPU|INST_Register\(0) & (!\CPU|INST_Register\(1) & (!\CPU|INST_Register\(2) & \CPU|INST_Register\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(5),
	combout => \CPU|CompareFlag~0_combout\);

-- Location: LCCOMB_X22_Y13_N26
\CPU|CompareFlag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|CompareFlag~1_combout\ = (\CPU|A_Register[6]~12_combout\ & (!\CPU|INST_Register\(4) & (!\CPU|INST_Register\(3) & \CPU|CompareFlag~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[6]~12_combout\,
	datab => \CPU|INST_Register\(4),
	datac => \CPU|INST_Register\(3),
	datad => \CPU|CompareFlag~0_combout\,
	combout => \CPU|CompareFlag~1_combout\);

-- Location: LCCOMB_X25_Y13_N28
\CPU|CompareFlag~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|CompareFlag~2_combout\ = (\CPU|CompareFlag~1_combout\ & (\CPU|LessThan1~14_combout\)) # (!\CPU|CompareFlag~1_combout\ & ((\CPU|CompareFlag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|LessThan1~14_combout\,
	datac => \CPU|CompareFlag~q\,
	datad => \CPU|CompareFlag~1_combout\,
	combout => \CPU|CompareFlag~2_combout\);

-- Location: FF_X25_Y13_N29
\CPU|CompareFlag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|CompareFlag~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|CompareFlag~q\);

-- Location: LCCOMB_X25_Y12_N2
\CPU|StepCounter[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~12_combout\ = (\CPU|INST_Register\(2) & (\CPU|CompareFlag~q\ & ((\CPU|INST_Register\(1)) # (\CPU|INST_Register\(0))))) # (!\CPU|INST_Register\(2) & (((!\CPU|INST_Register\(1) & !\CPU|INST_Register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|CompareFlag~q\,
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|INST_Register\(2),
	combout => \CPU|StepCounter[0]~12_combout\);

-- Location: LCCOMB_X24_Y14_N30
\CPU|StepCounter[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~13_combout\ = (\CPU|StepCounter[0]~12_combout\) # ((!\CPU|MemoryPointer[1]~8_combout\ & (\CPU|INST_Register\(0) $ (\CPU|INST_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|MemoryPointer[1]~8_combout\,
	datad => \CPU|StepCounter[0]~12_combout\,
	combout => \CPU|StepCounter[0]~13_combout\);

-- Location: LCCOMB_X25_Y13_N22
\CPU|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~1_combout\ = (\CPU|A_Register\(2) & (\CPU|B_Register\(2) & (\CPU|B_Register\(3) $ (!\CPU|A_Register\(3))))) # (!\CPU|A_Register\(2) & (!\CPU|B_Register\(2) & (\CPU|B_Register\(3) $ (!\CPU|A_Register\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(2),
	datab => \CPU|B_Register\(3),
	datac => \CPU|B_Register\(2),
	datad => \CPU|A_Register\(3),
	combout => \CPU|Equal1~1_combout\);

-- Location: LCCOMB_X25_Y13_N8
\CPU|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~0_combout\ = (\CPU|A_Register\(1) & (\CPU|B_Register\(1) & (\CPU|B_Register\(0) $ (!\CPU|A_Register\(0))))) # (!\CPU|A_Register\(1) & (!\CPU|B_Register\(1) & (\CPU|B_Register\(0) $ (!\CPU|A_Register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(1),
	datab => \CPU|B_Register\(0),
	datac => \CPU|B_Register\(1),
	datad => \CPU|A_Register\(0),
	combout => \CPU|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y13_N0
\CPU|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~2_combout\ = (\CPU|A_Register\(4) & (\CPU|B_Register\(4) & (\CPU|B_Register\(5) $ (!\CPU|A_Register\(5))))) # (!\CPU|A_Register\(4) & (!\CPU|B_Register\(4) & (\CPU|B_Register\(5) $ (!\CPU|A_Register\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(4),
	datab => \CPU|B_Register\(5),
	datac => \CPU|B_Register\(4),
	datad => \CPU|A_Register\(5),
	combout => \CPU|Equal1~2_combout\);

-- Location: LCCOMB_X25_Y13_N24
\CPU|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~3_combout\ = (\CPU|A_Register\(6) & (\CPU|B_Register\(6) & (\CPU|B_Register\(7) $ (!\CPU|A_Register\(7))))) # (!\CPU|A_Register\(6) & (!\CPU|B_Register\(6) & (\CPU|B_Register\(7) $ (!\CPU|A_Register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(6),
	datab => \CPU|B_Register\(7),
	datac => \CPU|B_Register\(6),
	datad => \CPU|A_Register\(7),
	combout => \CPU|Equal1~3_combout\);

-- Location: LCCOMB_X25_Y13_N10
\CPU|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal1~4_combout\ = (\CPU|Equal1~1_combout\ & (\CPU|Equal1~0_combout\ & (\CPU|Equal1~2_combout\ & \CPU|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Equal1~1_combout\,
	datab => \CPU|Equal1~0_combout\,
	datac => \CPU|Equal1~2_combout\,
	datad => \CPU|Equal1~3_combout\,
	combout => \CPU|Equal1~4_combout\);

-- Location: LCCOMB_X24_Y14_N12
\CPU|StepCounter[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~11_combout\ = (\CPU|Equal1~4_combout\ & (!\CPU|INST_Register\(2) & (\CPU|INST_Register\(1) $ (!\CPU|INST_Register\(0))))) # (!\CPU|Equal1~4_combout\ & (((!\CPU|INST_Register\(1) & !\CPU|INST_Register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|Equal1~4_combout\,
	combout => \CPU|StepCounter[0]~11_combout\);

-- Location: LCCOMB_X24_Y14_N6
\CPU|StepCounter[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~28_combout\ = ((\CPU|INST_Register\(3)) # ((\CPU|StepCounter[0]~13_combout\) # (\CPU|StepCounter[0]~11_combout\))) # (!\CPU|INST_Register\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|INST_Register\(3),
	datac => \CPU|StepCounter[0]~13_combout\,
	datad => \CPU|StepCounter[0]~11_combout\,
	combout => \CPU|StepCounter[0]~28_combout\);

-- Location: LCCOMB_X24_Y14_N18
\CPU|StepCounter[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~33_combout\ = (\CPU|INST_Register\(4) & (\CPU|INST_Register\(5) & ((\CPU|StepCounter[0]~32_combout\) # (\CPU|StepCounter[0]~28_combout\)))) # (!\CPU|INST_Register\(4) & (\CPU|StepCounter[0]~32_combout\ & (!\CPU|INST_Register\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|StepCounter[0]~32_combout\,
	datac => \CPU|INST_Register\(5),
	datad => \CPU|StepCounter[0]~28_combout\,
	combout => \CPU|StepCounter[0]~33_combout\);

-- Location: LCCOMB_X24_Y12_N10
\CPU|StepCounter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~25_combout\ = (\CPU|MemoryPointer[1]~33_combout\) # ((!\CPU|INST_Register\(3) & (\CPU|StepCounter[0]~33_combout\ & !\CPU|StepCounter[0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|MemoryPointer[1]~33_combout\,
	datac => \CPU|StepCounter[0]~33_combout\,
	datad => \CPU|StepCounter[0]~19_combout\,
	combout => \CPU|StepCounter[0]~25_combout\);

-- Location: LCCOMB_X24_Y12_N12
\CPU|StepCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter[0]~26_combout\ = (\CPU|StepCounter[0]~25_combout\ & (\CPU|StepCounter[0]~24_combout\ & (!\CPU|StepCounter\(3)))) # (!\CPU|StepCounter[0]~25_combout\ & (((\CPU|StepCounter[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter[0]~24_combout\,
	datab => \CPU|StepCounter\(3),
	datac => \CPU|StepCounter[0]~22_combout\,
	datad => \CPU|StepCounter[0]~25_combout\,
	combout => \CPU|StepCounter[0]~26_combout\);

-- Location: LCCOMB_X24_Y12_N28
\CPU|StepCounter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter~27_combout\ = (!\CPU|StepCounter\(0) & ((\CPU|StepCounter[0]~26_combout\) # (!\CPU|A_Register[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|A_Register[6]~12_combout\,
	datac => \CPU|StepCounter\(0),
	datad => \CPU|StepCounter[0]~26_combout\,
	combout => \CPU|StepCounter~27_combout\);

-- Location: FF_X24_Y12_N29
\CPU|StepCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StepCounter~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StepCounter\(0));

-- Location: LCCOMB_X24_Y12_N22
\CPU|StepCounter~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter~31_combout\ = (\CPU|A_Register[6]~12_combout\ & (\CPU|StepCounter[0]~26_combout\ & (\CPU|StepCounter\(0) $ (\CPU|StepCounter\(1))))) # (!\CPU|A_Register[6]~12_combout\ & (\CPU|StepCounter\(0) $ ((\CPU|StepCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(0),
	datab => \CPU|A_Register[6]~12_combout\,
	datac => \CPU|StepCounter\(1),
	datad => \CPU|StepCounter[0]~26_combout\,
	combout => \CPU|StepCounter~31_combout\);

-- Location: FF_X24_Y12_N23
\CPU|StepCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StepCounter~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StepCounter\(1));

-- Location: LCCOMB_X24_Y12_N14
\CPU|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add0~1_combout\ = \CPU|StepCounter\(2) $ (((\CPU|StepCounter\(1) & \CPU|StepCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(1),
	datac => \CPU|StepCounter\(2),
	datad => \CPU|StepCounter\(0),
	combout => \CPU|Add0~1_combout\);

-- Location: LCCOMB_X24_Y12_N26
\CPU|StepCounter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter~30_combout\ = (\CPU|Add0~1_combout\ & ((\CPU|INST_Register\(6)) # ((\CPU|INST_Register\(7)) # (\CPU|StepCounter[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(6),
	datab => \CPU|Add0~1_combout\,
	datac => \CPU|INST_Register\(7),
	datad => \CPU|StepCounter[0]~26_combout\,
	combout => \CPU|StepCounter~30_combout\);

-- Location: FF_X24_Y12_N27
\CPU|StepCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StepCounter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StepCounter\(2));

-- Location: LCCOMB_X24_Y12_N8
\CPU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add0~0_combout\ = \CPU|StepCounter\(3) $ (((\CPU|StepCounter\(2) & (\CPU|StepCounter\(1) & \CPU|StepCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(2),
	datab => \CPU|StepCounter\(1),
	datac => \CPU|StepCounter\(3),
	datad => \CPU|StepCounter\(0),
	combout => \CPU|Add0~0_combout\);

-- Location: LCCOMB_X24_Y12_N4
\CPU|StepCounter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StepCounter~29_combout\ = (\CPU|Add0~0_combout\ & ((\CPU|INST_Register\(6)) # ((\CPU|INST_Register\(7)) # (\CPU|StepCounter[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(6),
	datab => \CPU|Add0~0_combout\,
	datac => \CPU|INST_Register\(7),
	datad => \CPU|StepCounter[0]~26_combout\,
	combout => \CPU|StepCounter~29_combout\);

-- Location: FF_X24_Y12_N5
\CPU|StepCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StepCounter~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StepCounter\(3));

-- Location: LCCOMB_X24_Y11_N8
\CPU|INST_Register[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|INST_Register[0]~0_combout\ = (\CPU|StepCounter\(0) & ((\CPU|StepCounter\(3) & (\CPU|StepCounter\(1) & \CPU|StepCounter\(2))) # (!\CPU|StepCounter\(3) & (!\CPU|StepCounter\(1) & !\CPU|StepCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(3),
	datab => \CPU|StepCounter\(1),
	datac => \CPU|StepCounter\(0),
	datad => \CPU|StepCounter\(2),
	combout => \CPU|INST_Register[0]~0_combout\);

-- Location: FF_X24_Y11_N13
\CPU|INST_Register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|INST_Register[6]~feeder_combout\,
	ena => \CPU|INST_Register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INST_Register\(6));

-- Location: LCCOMB_X24_Y11_N26
\CPU|A_Register[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|A_Register[6]~12_combout\ = (!\CPU|INST_Register\(6) & (!\CPU|INST_Register\(7) & !\CPU|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(6),
	datac => \CPU|INST_Register\(7),
	datad => \CPU|LessThan0~0_combout\,
	combout => \CPU|A_Register[6]~12_combout\);

-- Location: LCCOMB_X25_Y15_N2
\CPU|Selector158~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~4_combout\ = (\CPU|INST_Register\(2) & (!\CPU|INST_Register\(3) & (\CPU|INST_Register\(1) $ (\CPU|INST_Register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|Selector158~4_combout\);

-- Location: LCCOMB_X25_Y15_N4
\CPU|Selector158~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~5_combout\ = (\CPU|Selector158~4_combout\ & ((\CPU|Decoder0~1_combout\ & ((\CPU|A_Register\(0)))) # (!\CPU|Decoder0~1_combout\ & (\CPU|MemoryBuffer\(0))))) # (!\CPU|Selector158~4_combout\ & (((\CPU|MemoryBuffer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Selector158~4_combout\,
	datab => \CPU|Decoder0~1_combout\,
	datac => \CPU|MemoryBuffer\(0),
	datad => \CPU|A_Register\(0),
	combout => \CPU|Selector158~5_combout\);

-- Location: LCCOMB_X25_Y15_N8
\CPU|Selector158~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~13_combout\ = (\CPU|Decoder0~1_combout\ & (((\CPU|SR_Register\(0))) # (!\CPU|INST_Register\(3)))) # (!\CPU|Decoder0~1_combout\ & (((\CPU|MemoryBuffer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|SR_Register\(0),
	datac => \CPU|MemoryBuffer\(0),
	datad => \CPU|Decoder0~1_combout\,
	combout => \CPU|Selector158~13_combout\);

-- Location: LCCOMB_X26_Y15_N16
\CPU|Selector158~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~3_combout\ = (\CPU|INST_Register\(3) & (\CPU|INST_Register\(1))) # (!\CPU|INST_Register\(3) & ((\CPU|INST_Register\(1) & (\CPU|AND_Register\(0))) # (!\CPU|INST_Register\(1) & ((\CPU|OR_Register\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|AND_Register\(0),
	datad => \CPU|OR_Register\(0),
	combout => \CPU|Selector158~3_combout\);

-- Location: LCCOMB_X25_Y15_N30
\CPU|Selector158~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~14_combout\ = (\CPU|Selector158~13_combout\ & ((\CPU|Selector158~3_combout\) # (!\CPU|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder0~1_combout\,
	datac => \CPU|Selector158~13_combout\,
	datad => \CPU|Selector158~3_combout\,
	combout => \CPU|Selector158~14_combout\);

-- Location: LCCOMB_X25_Y15_N0
\CPU|Selector158~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~11_combout\ = (\CPU|INST_Register\(0) & ((\CPU|Decoder0~1_combout\ & ((\CPU|SUM_Register\(0)))) # (!\CPU|Decoder0~1_combout\ & (\CPU|MemoryBuffer\(0))))) # (!\CPU|INST_Register\(0) & (\CPU|MemoryBuffer\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|MemoryBuffer\(0),
	datac => \CPU|SUM_Register\(0),
	datad => \CPU|Decoder0~1_combout\,
	combout => \CPU|Selector158~11_combout\);

-- Location: LCCOMB_X25_Y15_N10
\CPU|Selector158~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~12_combout\ = (\CPU|INST_Register\(2) & ((\CPU|INST_Register\(0) & (\CPU|Selector158~14_combout\)) # (!\CPU|INST_Register\(0) & ((\CPU|Selector158~11_combout\))))) # (!\CPU|INST_Register\(2) & (((\CPU|Selector158~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Selector158~14_combout\,
	datab => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|Selector158~11_combout\,
	combout => \CPU|Selector158~12_combout\);

-- Location: LCCOMB_X25_Y15_N26
\CPU|Selector158~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~6_combout\ = (\CPU|INST_Register\(5) & (((\CPU|INST_Register\(4))))) # (!\CPU|INST_Register\(5) & ((\CPU|INST_Register\(4) & ((\CPU|Selector158~12_combout\))) # (!\CPU|INST_Register\(4) & (\CPU|Selector158~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|Selector158~5_combout\,
	datac => \CPU|INST_Register\(4),
	datad => \CPU|Selector158~12_combout\,
	combout => \CPU|Selector158~6_combout\);

-- Location: LCCOMB_X25_Y12_N10
\CPU|Selector150~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector150~0_combout\ = (!\CPU|INST_Register\(1) & \CPU|INST_Register\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(1),
	datad => \CPU|INST_Register\(2),
	combout => \CPU|Selector150~0_combout\);

-- Location: LCCOMB_X24_Y12_N6
\CPU|Selector158~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~2_combout\ = (\CPU|INST_Register\(0) & (\CPU|Add0~0_combout\ & (\CPU|Selector150~0_combout\ & !\CPU|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|Add0~0_combout\,
	datac => \CPU|Selector150~0_combout\,
	datad => \CPU|Add0~1_combout\,
	combout => \CPU|Selector158~2_combout\);

-- Location: LCCOMB_X24_Y15_N6
\CPU|Selector158~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~8_combout\ = (!\CPU|INST_Register\(3) & (\CPU|StepCounter\(0) & \CPU|Selector158~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(3),
	datac => \CPU|StepCounter\(0),
	datad => \CPU|Selector158~2_combout\,
	combout => \CPU|Selector158~8_combout\);

-- Location: LCCOMB_X21_Y12_N0
\CPU|X_Register[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[0]~20_combout\ = (\CPU|dataReg\(0) & (\CPU|X_Register\(0) $ (VCC))) # (!\CPU|dataReg\(0) & (\CPU|X_Register\(0) & VCC))
-- \CPU|X_Register[0]~21\ = CARRY((\CPU|dataReg\(0) & \CPU|X_Register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(0),
	datab => \CPU|X_Register\(0),
	datad => VCC,
	combout => \CPU|X_Register[0]~20_combout\,
	cout => \CPU|X_Register[0]~21\);

-- Location: LCCOMB_X21_Y13_N28
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X24_Y12_N16
\CPU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add0~2_combout\ = \CPU|StepCounter\(1) $ (!\CPU|StepCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|StepCounter\(1),
	datad => \CPU|StepCounter\(0),
	combout => \CPU|Add0~2_combout\);

-- Location: LCCOMB_X24_Y11_N24
\CPU|Selector150~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector150~1_combout\ = (!\CPU|INST_Register\(3) & \CPU|INST_Register\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INST_Register\(3),
	datad => \CPU|INST_Register\(4),
	combout => \CPU|Selector150~1_combout\);

-- Location: LCCOMB_X25_Y12_N26
\CPU|MemoryPointer[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~3_combout\ = (!\CPU|INST_Register\(0) & !\CPU|INST_Register\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(0),
	datac => \CPU|INST_Register\(1),
	combout => \CPU|MemoryPointer[1]~3_combout\);

-- Location: LCCOMB_X22_Y12_N18
\CPU|X_Register[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[0]~26_combout\ = (\CPU|INST_Register\(1) & (((\CPU|INST_Register\(0) & !\CPU|Equal1~4_combout\)))) # (!\CPU|INST_Register\(1) & (!\CPU|ZeroFlag~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ZeroFlag~q\,
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|Equal1~4_combout\,
	combout => \CPU|X_Register[0]~26_combout\);

-- Location: LCCOMB_X22_Y12_N16
\CPU|X_Register[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[0]~27_combout\ = ((!\CPU|MemoryPointer[1]~3_combout\ & (!\CPU|INST_Register\(2) & \CPU|X_Register[0]~26_combout\))) # (!\CPU|Selector150~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Selector150~1_combout\,
	datab => \CPU|MemoryPointer[1]~3_combout\,
	datac => \CPU|INST_Register\(2),
	datad => \CPU|X_Register[0]~26_combout\,
	combout => \CPU|X_Register[0]~27_combout\);

-- Location: LCCOMB_X25_Y13_N30
\CPU|X_Register[0]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[0]~59_combout\ = (\CPU|INST_Register\(1) & (((!\CPU|CompareFlag~q\ & \CPU|INST_Register\(2))))) # (!\CPU|INST_Register\(1) & (\CPU|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Equal1~4_combout\,
	datab => \CPU|CompareFlag~q\,
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(1),
	combout => \CPU|X_Register[0]~59_combout\);

-- Location: LCCOMB_X22_Y12_N8
\CPU|X_Register[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[0]~60_combout\ = (\CPU|INST_Register\(2) & ((\CPU|INST_Register\(0) & (\CPU|INST_Register\(1) & \CPU|X_Register[0]~59_combout\)) # (!\CPU|INST_Register\(0) & ((\CPU|INST_Register\(1)) # (\CPU|X_Register[0]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|X_Register[0]~59_combout\,
	datad => \CPU|INST_Register\(2),
	combout => \CPU|X_Register[0]~60_combout\);

-- Location: LCCOMB_X23_Y12_N0
\CPU|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Equal4~0_combout\ = (\CPU|StepCounter\(0) & (!\CPU|StepCounter\(3) & (\CPU|StepCounter\(1) $ (\CPU|StepCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(0),
	datab => \CPU|StepCounter\(1),
	datac => \CPU|StepCounter\(2),
	datad => \CPU|StepCounter\(3),
	combout => \CPU|Equal4~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\CPU|X_Register[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[0]~22_combout\ = ((!\CPU|CarryFlag~q\ & (!\CPU|INST_Register\(2) & \CPU|INST_Register\(1)))) # (!\CPU|INST_Register\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|CarryFlag~q\,
	datab => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|INST_Register\(5),
	combout => \CPU|X_Register[0]~22_combout\);

-- Location: LCCOMB_X23_Y13_N22
\CPU|X_Register[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[0]~23_combout\ = ((\CPU|INST_Register\(4) & (\CPU|X_Register[0]~22_combout\ & !\CPU|INST_Register\(0)))) # (!\CPU|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|Equal4~0_combout\,
	datac => \CPU|X_Register[0]~22_combout\,
	datad => \CPU|INST_Register\(0),
	combout => \CPU|X_Register[0]~23_combout\);

-- Location: LCCOMB_X23_Y13_N16
\CPU|X_Register[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[0]~24_combout\ = (\CPU|INST_Register\(3)) # (\CPU|INST_Register\(0) $ (((!\CPU|INST_Register\(1)) # (!\CPU|INST_Register\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(3),
	datad => \CPU|INST_Register\(0),
	combout => \CPU|X_Register[0]~24_combout\);

-- Location: LCCOMB_X23_Y13_N18
\CPU|X_Register[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[0]~25_combout\ = (\CPU|X_Register[0]~23_combout\) # (((\CPU|X_Register[0]~24_combout\ & !\CPU|INST_Register\(4))) # (!\CPU|A_Register[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register[0]~23_combout\,
	datab => \CPU|X_Register[0]~24_combout\,
	datac => \CPU|INST_Register\(4),
	datad => \CPU|A_Register[6]~12_combout\,
	combout => \CPU|X_Register[0]~25_combout\);

-- Location: LCCOMB_X22_Y12_N10
\CPU|X_Register[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[0]~28_combout\ = (!\CPU|X_Register[0]~25_combout\ & (((!\CPU|X_Register[0]~27_combout\ & !\CPU|X_Register[0]~60_combout\)) # (!\CPU|INST_Register\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|X_Register[0]~27_combout\,
	datac => \CPU|X_Register[0]~60_combout\,
	datad => \CPU|X_Register[0]~25_combout\,
	combout => \CPU|X_Register[0]~28_combout\);

-- Location: FF_X21_Y12_N1
\CPU|X_Register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[0]~20_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(0));

-- Location: LCCOMB_X21_Y12_N2
\CPU|X_Register[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[1]~29_combout\ = (\CPU|dataReg\(1) & ((\CPU|X_Register\(1) & (\CPU|X_Register[0]~21\ & VCC)) # (!\CPU|X_Register\(1) & (!\CPU|X_Register[0]~21\)))) # (!\CPU|dataReg\(1) & ((\CPU|X_Register\(1) & (!\CPU|X_Register[0]~21\)) # 
-- (!\CPU|X_Register\(1) & ((\CPU|X_Register[0]~21\) # (GND)))))
-- \CPU|X_Register[1]~30\ = CARRY((\CPU|dataReg\(1) & (!\CPU|X_Register\(1) & !\CPU|X_Register[0]~21\)) # (!\CPU|dataReg\(1) & ((!\CPU|X_Register[0]~21\) # (!\CPU|X_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(1),
	datab => \CPU|X_Register\(1),
	datad => VCC,
	cin => \CPU|X_Register[0]~21\,
	combout => \CPU|X_Register[1]~29_combout\,
	cout => \CPU|X_Register[1]~30\);

-- Location: FF_X21_Y12_N3
\CPU|X_Register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[1]~29_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(1));

-- Location: LCCOMB_X21_Y12_N4
\CPU|X_Register[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[2]~31_combout\ = ((\CPU|dataReg\(2) $ (\CPU|X_Register\(2) $ (!\CPU|X_Register[1]~30\)))) # (GND)
-- \CPU|X_Register[2]~32\ = CARRY((\CPU|dataReg\(2) & ((\CPU|X_Register\(2)) # (!\CPU|X_Register[1]~30\))) # (!\CPU|dataReg\(2) & (\CPU|X_Register\(2) & !\CPU|X_Register[1]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(2),
	datab => \CPU|X_Register\(2),
	datad => VCC,
	cin => \CPU|X_Register[1]~30\,
	combout => \CPU|X_Register[2]~31_combout\,
	cout => \CPU|X_Register[2]~32\);

-- Location: FF_X21_Y12_N5
\CPU|X_Register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[2]~31_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(2));

-- Location: LCCOMB_X21_Y12_N6
\CPU|X_Register[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[3]~33_combout\ = (\CPU|X_Register\(3) & ((\CPU|dataReg\(3) & (\CPU|X_Register[2]~32\ & VCC)) # (!\CPU|dataReg\(3) & (!\CPU|X_Register[2]~32\)))) # (!\CPU|X_Register\(3) & ((\CPU|dataReg\(3) & (!\CPU|X_Register[2]~32\)) # (!\CPU|dataReg\(3) 
-- & ((\CPU|X_Register[2]~32\) # (GND)))))
-- \CPU|X_Register[3]~34\ = CARRY((\CPU|X_Register\(3) & (!\CPU|dataReg\(3) & !\CPU|X_Register[2]~32\)) # (!\CPU|X_Register\(3) & ((!\CPU|X_Register[2]~32\) # (!\CPU|dataReg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(3),
	datab => \CPU|dataReg\(3),
	datad => VCC,
	cin => \CPU|X_Register[2]~32\,
	combout => \CPU|X_Register[3]~33_combout\,
	cout => \CPU|X_Register[3]~34\);

-- Location: FF_X21_Y12_N7
\CPU|X_Register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[3]~33_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(3));

-- Location: LCCOMB_X21_Y12_N8
\CPU|X_Register[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[4]~35_combout\ = ((\CPU|X_Register\(4) $ (\CPU|dataReg\(4) $ (!\CPU|X_Register[3]~34\)))) # (GND)
-- \CPU|X_Register[4]~36\ = CARRY((\CPU|X_Register\(4) & ((\CPU|dataReg\(4)) # (!\CPU|X_Register[3]~34\))) # (!\CPU|X_Register\(4) & (\CPU|dataReg\(4) & !\CPU|X_Register[3]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(4),
	datab => \CPU|dataReg\(4),
	datad => VCC,
	cin => \CPU|X_Register[3]~34\,
	combout => \CPU|X_Register[4]~35_combout\,
	cout => \CPU|X_Register[4]~36\);

-- Location: FF_X21_Y12_N9
\CPU|X_Register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[4]~35_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(4));

-- Location: LCCOMB_X21_Y12_N10
\CPU|X_Register[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[5]~37_combout\ = (\CPU|X_Register\(5) & ((\CPU|dataReg\(5) & (\CPU|X_Register[4]~36\ & VCC)) # (!\CPU|dataReg\(5) & (!\CPU|X_Register[4]~36\)))) # (!\CPU|X_Register\(5) & ((\CPU|dataReg\(5) & (!\CPU|X_Register[4]~36\)) # (!\CPU|dataReg\(5) 
-- & ((\CPU|X_Register[4]~36\) # (GND)))))
-- \CPU|X_Register[5]~38\ = CARRY((\CPU|X_Register\(5) & (!\CPU|dataReg\(5) & !\CPU|X_Register[4]~36\)) # (!\CPU|X_Register\(5) & ((!\CPU|X_Register[4]~36\) # (!\CPU|dataReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(5),
	datab => \CPU|dataReg\(5),
	datad => VCC,
	cin => \CPU|X_Register[4]~36\,
	combout => \CPU|X_Register[5]~37_combout\,
	cout => \CPU|X_Register[5]~38\);

-- Location: FF_X21_Y12_N11
\CPU|X_Register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[5]~37_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(5));

-- Location: LCCOMB_X21_Y12_N12
\CPU|X_Register[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[6]~39_combout\ = ((\CPU|X_Register\(6) $ (\CPU|dataReg\(6) $ (!\CPU|X_Register[5]~38\)))) # (GND)
-- \CPU|X_Register[6]~40\ = CARRY((\CPU|X_Register\(6) & ((\CPU|dataReg\(6)) # (!\CPU|X_Register[5]~38\))) # (!\CPU|X_Register\(6) & (\CPU|dataReg\(6) & !\CPU|X_Register[5]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(6),
	datab => \CPU|dataReg\(6),
	datad => VCC,
	cin => \CPU|X_Register[5]~38\,
	combout => \CPU|X_Register[6]~39_combout\,
	cout => \CPU|X_Register[6]~40\);

-- Location: FF_X21_Y12_N13
\CPU|X_Register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[6]~39_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(6));

-- Location: LCCOMB_X21_Y12_N14
\CPU|X_Register[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[7]~41_combout\ = (\CPU|dataReg\(7) & ((\CPU|X_Register\(7) & (\CPU|X_Register[6]~40\ & VCC)) # (!\CPU|X_Register\(7) & (!\CPU|X_Register[6]~40\)))) # (!\CPU|dataReg\(7) & ((\CPU|X_Register\(7) & (!\CPU|X_Register[6]~40\)) # 
-- (!\CPU|X_Register\(7) & ((\CPU|X_Register[6]~40\) # (GND)))))
-- \CPU|X_Register[7]~42\ = CARRY((\CPU|dataReg\(7) & (!\CPU|X_Register\(7) & !\CPU|X_Register[6]~40\)) # (!\CPU|dataReg\(7) & ((!\CPU|X_Register[6]~40\) # (!\CPU|X_Register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(7),
	datab => \CPU|X_Register\(7),
	datad => VCC,
	cin => \CPU|X_Register[6]~40\,
	combout => \CPU|X_Register[7]~41_combout\,
	cout => \CPU|X_Register[7]~42\);

-- Location: FF_X21_Y12_N15
\CPU|X_Register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[7]~41_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(7));

-- Location: LCCOMB_X21_Y12_N16
\CPU|X_Register[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[8]~43_combout\ = (\CPU|X_Register\(8) & (\CPU|X_Register[7]~42\ $ (GND))) # (!\CPU|X_Register\(8) & (!\CPU|X_Register[7]~42\ & VCC))
-- \CPU|X_Register[8]~44\ = CARRY((\CPU|X_Register\(8) & !\CPU|X_Register[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|X_Register\(8),
	datad => VCC,
	cin => \CPU|X_Register[7]~42\,
	combout => \CPU|X_Register[8]~43_combout\,
	cout => \CPU|X_Register[8]~44\);

-- Location: FF_X21_Y12_N17
\CPU|X_Register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[8]~43_combout\,
	asdata => \CPU|dataReg\(0),
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(8));

-- Location: LCCOMB_X24_Y12_N0
\CPU|MemoryPointer[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~19_combout\ = (\CPU|Add0~2_combout\ & (!\CPU|INST_Register\(1) & (\CPU|Add0~1_combout\ $ (\CPU|Add0~0_combout\)))) # (!\CPU|Add0~2_combout\ & (((\CPU|Add0~1_combout\ & !\CPU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|Add0~1_combout\,
	datac => \CPU|Add0~0_combout\,
	datad => \CPU|Add0~2_combout\,
	combout => \CPU|MemoryPointer[1]~19_combout\);

-- Location: LCCOMB_X25_Y12_N28
\CPU|MemoryPointer[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~12_combout\ = (\CPU|INST_Register\(1) & \CPU|INST_Register\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INST_Register\(1),
	datad => \CPU|INST_Register\(2),
	combout => \CPU|MemoryPointer[1]~12_combout\);

-- Location: LCCOMB_X25_Y13_N12
\CPU|MemoryPointer[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~10_combout\ = (!\CPU|INST_Register\(2) & (\CPU|INST_Register\(0) & \CPU|INST_Register\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|INST_Register\(1),
	combout => \CPU|MemoryPointer[1]~10_combout\);

-- Location: LCCOMB_X25_Y12_N0
\CPU|MemoryPointer[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~9_combout\ = (\CPU|INST_Register\(1) & (!\CPU|INST_Register\(2) & ((\CPU|INST_Register\(0)) # (!\CPU|MemoryPointer[1]~8_combout\)))) # (!\CPU|INST_Register\(1) & (!\CPU|MemoryPointer[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~8_combout\,
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|INST_Register\(2),
	combout => \CPU|MemoryPointer[1]~9_combout\);

-- Location: LCCOMB_X25_Y13_N2
\CPU|MemoryPointer[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~11_combout\ = (\CPU|MemoryPointer[1]~9_combout\ & ((\CPU|Equal1~4_combout\ & ((!\CPU|Selector150~0_combout\))) # (!\CPU|Equal1~4_combout\ & (!\CPU|MemoryPointer[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~10_combout\,
	datab => \CPU|MemoryPointer[1]~9_combout\,
	datac => \CPU|Selector150~0_combout\,
	datad => \CPU|Equal1~4_combout\,
	combout => \CPU|MemoryPointer[1]~11_combout\);

-- Location: LCCOMB_X25_Y13_N6
\CPU|MemoryPointer[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~13_combout\ = ((\CPU|MemoryPointer[1]~11_combout\) # ((\CPU|MemoryPointer[1]~12_combout\ & \CPU|CompareFlag~q\))) # (!\CPU|Selector150~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~12_combout\,
	datab => \CPU|CompareFlag~q\,
	datac => \CPU|Selector150~1_combout\,
	datad => \CPU|MemoryPointer[1]~11_combout\,
	combout => \CPU|MemoryPointer[1]~13_combout\);

-- Location: LCCOMB_X25_Y13_N18
\CPU|MemoryPointer[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~21_combout\ = (\CPU|INST_Register\(2) & (!\CPU|MemoryPointer[1]~20_combout\ & ((\CPU|MemoryPointer[1]~13_combout\)))) # (!\CPU|INST_Register\(2) & (((\CPU|MemoryPointer[1]~3_combout\) # (\CPU|MemoryPointer[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|MemoryPointer[1]~20_combout\,
	datac => \CPU|MemoryPointer[1]~3_combout\,
	datad => \CPU|MemoryPointer[1]~13_combout\,
	combout => \CPU|MemoryPointer[1]~21_combout\);

-- Location: LCCOMB_X25_Y13_N20
\CPU|MemoryPointer[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~40_combout\ = (\CPU|MemoryPointer[1]~21_combout\) # ((!\CPU|INST_Register\(1) & !\CPU|MemoryPointer[1]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|MemoryPointer[1]~19_combout\,
	datad => \CPU|MemoryPointer[1]~21_combout\,
	combout => \CPU|MemoryPointer[1]~40_combout\);

-- Location: LCCOMB_X24_Y12_N2
\CPU|MemoryPointer[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~5_combout\ = (!\CPU|StepCounter\(3) & (\CPU|StepCounter\(2) $ (((\CPU|StepCounter\(1) & \CPU|StepCounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(1),
	datab => \CPU|StepCounter\(0),
	datac => \CPU|StepCounter\(2),
	datad => \CPU|StepCounter\(3),
	combout => \CPU|MemoryPointer[1]~5_combout\);

-- Location: LCCOMB_X23_Y13_N26
\CPU|MemoryPointer[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~31_combout\ = (!\CPU|INST_Register\(4) & ((\CPU|INST_Register\(2)) # ((\CPU|INST_Register\(1)) # (\CPU|INST_Register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|INST_Register\(0),
	combout => \CPU|MemoryPointer[1]~31_combout\);

-- Location: LCCOMB_X24_Y13_N4
\CPU|MemoryPointer[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~32_combout\ = (\CPU|CompareFlag~0_combout\) # ((\CPU|MemoryPointer[1]~31_combout\) # ((\CPU|StepCounter[0]~10_combout\ & \CPU|MemoryPointer[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter[0]~10_combout\,
	datab => \CPU|CompareFlag~0_combout\,
	datac => \CPU|MemoryPointer[1]~31_combout\,
	datad => \CPU|MemoryPointer[1]~13_combout\,
	combout => \CPU|MemoryPointer[1]~32_combout\);

-- Location: LCCOMB_X24_Y13_N2
\CPU|MemoryPointer[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~28_combout\ = (\CPU|Selector150~1_combout\ & (!\CPU|MemoryPointer[1]~11_combout\ & ((!\CPU|MemoryPointer[1]~12_combout\) # (!\CPU|CompareFlag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|CompareFlag~q\,
	datab => \CPU|Selector150~1_combout\,
	datac => \CPU|MemoryPointer[1]~12_combout\,
	datad => \CPU|MemoryPointer[1]~11_combout\,
	combout => \CPU|MemoryPointer[1]~28_combout\);

-- Location: LCCOMB_X24_Y13_N12
\CPU|MemoryPointer[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~29_combout\ = (!\CPU|MemoryPointer[1]~19_combout\ & (\CPU|Selector158~2_combout\ & ((\CPU|MemoryPointer[1]~20_combout\) # (\CPU|MemoryPointer[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~19_combout\,
	datab => \CPU|MemoryPointer[1]~20_combout\,
	datac => \CPU|Selector158~2_combout\,
	datad => \CPU|MemoryPointer[1]~28_combout\,
	combout => \CPU|MemoryPointer[1]~29_combout\);

-- Location: LCCOMB_X24_Y13_N6
\CPU|MemoryPointer[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~30_combout\ = (\CPU|INST_Register\(5) & ((\CPU|MemoryPointer[1]~29_combout\) # (!\CPU|INST_Register\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(5),
	datac => \CPU|INST_Register\(4),
	datad => \CPU|MemoryPointer[1]~29_combout\,
	combout => \CPU|MemoryPointer[1]~30_combout\);

-- Location: LCCOMB_X24_Y13_N18
\CPU|MemoryPointer[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~34_combout\ = (\CPU|MemoryPointer[1]~30_combout\) # ((\CPU|MemoryPointer[1]~5_combout\ & ((\CPU|MemoryPointer[1]~33_combout\) # (\CPU|MemoryPointer[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~33_combout\,
	datab => \CPU|MemoryPointer[1]~5_combout\,
	datac => \CPU|MemoryPointer[1]~32_combout\,
	datad => \CPU|MemoryPointer[1]~30_combout\,
	combout => \CPU|MemoryPointer[1]~34_combout\);

-- Location: LCCOMB_X22_Y13_N30
\CPU|MemoryPointer[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~36_combout\ = (\CPU|INST_Register\(2) & (\CPU|INST_Register\(0) $ (\CPU|INST_Register\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(0),
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(1),
	combout => \CPU|MemoryPointer[1]~36_combout\);

-- Location: LCCOMB_X24_Y12_N30
\CPU|MemoryPointer[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~58_combout\ = (\CPU|INST_Register\(1)) # (((\CPU|MemoryPointer[1]~19_combout\) # (!\CPU|INST_Register\(0))) # (!\CPU|INST_Register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|MemoryPointer[1]~19_combout\,
	combout => \CPU|MemoryPointer[1]~58_combout\);

-- Location: LCCOMB_X25_Y13_N16
\CPU|MemoryPointer[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~26_combout\ = (\CPU|Add0~0_combout\) # ((\CPU|MemoryPointer[1]~58_combout\ & !\CPU|MemoryPointer[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Add0~0_combout\,
	datac => \CPU|MemoryPointer[1]~58_combout\,
	datad => \CPU|MemoryPointer[1]~21_combout\,
	combout => \CPU|MemoryPointer[1]~26_combout\);

-- Location: LCCOMB_X25_Y13_N26
\CPU|MemoryPointer[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~37_combout\ = (\CPU|Add0~1_combout\ & (\CPU|Add0~0_combout\ & (\CPU|MemoryPointer[1]~36_combout\))) # (!\CPU|Add0~1_combout\ & ((\CPU|MemoryPointer[1]~26_combout\) # ((\CPU|Add0~0_combout\ & \CPU|MemoryPointer[1]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Add0~1_combout\,
	datab => \CPU|Add0~0_combout\,
	datac => \CPU|MemoryPointer[1]~36_combout\,
	datad => \CPU|MemoryPointer[1]~26_combout\,
	combout => \CPU|MemoryPointer[1]~37_combout\);

-- Location: LCCOMB_X24_Y13_N30
\CPU|MemoryPointer[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~38_combout\ = ((\CPU|INST_Register\(1) & (!\CPU|MemoryPointer[1]~21_combout\ & \CPU|MemoryPointer[1]~37_combout\))) # (!\CPU|INST_Register\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|MemoryPointer[1]~21_combout\,
	datac => \CPU|INST_Register\(5),
	datad => \CPU|MemoryPointer[1]~37_combout\,
	combout => \CPU|MemoryPointer[1]~38_combout\);

-- Location: LCCOMB_X23_Y13_N0
\CPU|MemoryPointer[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~22_combout\ = (\CPU|StepCounter\(1) & !\CPU|StepCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|StepCounter\(1),
	datad => \CPU|StepCounter\(0),
	combout => \CPU|MemoryPointer[1]~22_combout\);

-- Location: LCCOMB_X24_Y13_N26
\CPU|MemoryPointer[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~23_combout\ = (\CPU|MemoryPointer[1]~22_combout\ & (!\CPU|Add0~0_combout\ & ((\CPU|MemoryPointer[1]~21_combout\) # (!\CPU|MemoryPointer[1]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~22_combout\,
	datab => \CPU|MemoryPointer[1]~58_combout\,
	datac => \CPU|Add0~0_combout\,
	datad => \CPU|MemoryPointer[1]~21_combout\,
	combout => \CPU|MemoryPointer[1]~23_combout\);

-- Location: LCCOMB_X24_Y11_N6
\CPU|MemoryPointer[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~24_combout\ = (\CPU|INST_Register\(4)) # ((!\CPU|StepCounter\(3) & (!\CPU|StepCounter\(0) & \CPU|StepCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(3),
	datab => \CPU|INST_Register\(4),
	datac => \CPU|StepCounter\(0),
	datad => \CPU|StepCounter\(1),
	combout => \CPU|MemoryPointer[1]~24_combout\);

-- Location: LCCOMB_X25_Y12_N8
\CPU|MemoryPointer[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~25_combout\ = (!\CPU|INST_Register\(5) & ((\CPU|INST_Register\(2)) # ((\CPU|MemoryPointer[1]~3_combout\) # (\CPU|MemoryPointer[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|INST_Register\(2),
	datac => \CPU|MemoryPointer[1]~3_combout\,
	datad => \CPU|MemoryPointer[1]~24_combout\,
	combout => \CPU|MemoryPointer[1]~25_combout\);

-- Location: LCCOMB_X24_Y13_N8
\CPU|MemoryPointer[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~27_combout\ = (\CPU|MemoryPointer[1]~25_combout\) # ((\CPU|StepCounter[0]~10_combout\ & (!\CPU|MemoryPointer[1]~21_combout\ & \CPU|MemoryPointer[1]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter[0]~10_combout\,
	datab => \CPU|MemoryPointer[1]~21_combout\,
	datac => \CPU|MemoryPointer[1]~25_combout\,
	datad => \CPU|MemoryPointer[1]~26_combout\,
	combout => \CPU|MemoryPointer[1]~27_combout\);

-- Location: LCCOMB_X23_Y12_N24
\CPU|MemoryPointer[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~6_combout\ = (\CPU|INST_Register\(0) & (\CPU|Add0~2_combout\ & ((\CPU|MemoryPointer[1]~5_combout\)))) # (!\CPU|INST_Register\(0) & (((\CPU|INST_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|Add0~2_combout\,
	datac => \CPU|INST_Register\(1),
	datad => \CPU|MemoryPointer[1]~5_combout\,
	combout => \CPU|MemoryPointer[1]~6_combout\);

-- Location: LCCOMB_X23_Y12_N22
\CPU|MemoryPointer[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~4_combout\ = (\CPU|MemoryPointer[1]~3_combout\) # ((\CPU|Add0~2_combout\ & (\CPU|Add0~1_combout\ $ (\CPU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~3_combout\,
	datab => \CPU|Add0~1_combout\,
	datac => \CPU|Add0~0_combout\,
	datad => \CPU|Add0~2_combout\,
	combout => \CPU|MemoryPointer[1]~4_combout\);

-- Location: LCCOMB_X23_Y12_N8
\CPU|MemoryPointer[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~2_combout\ = (!\CPU|INST_Register\(4) & !\CPU|INST_Register\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INST_Register\(4),
	datad => \CPU|INST_Register\(5),
	combout => \CPU|MemoryPointer[1]~2_combout\);

-- Location: LCCOMB_X23_Y12_N10
\CPU|MemoryPointer[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~7_combout\ = (\CPU|MemoryPointer[1]~2_combout\ & ((\CPU|INST_Register\(2) & ((\CPU|MemoryPointer[1]~4_combout\))) # (!\CPU|INST_Register\(2) & (\CPU|MemoryPointer[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|MemoryPointer[1]~6_combout\,
	datac => \CPU|MemoryPointer[1]~4_combout\,
	datad => \CPU|MemoryPointer[1]~2_combout\,
	combout => \CPU|MemoryPointer[1]~7_combout\);

-- Location: LCCOMB_X25_Y12_N12
\CPU|MemoryPointer[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~14_combout\ = (\CPU|INST_Register\(5) & (((\CPU|INST_Register\(1))))) # (!\CPU|INST_Register\(5) & (\CPU|Add0~1_combout\ $ (((\CPU|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Add0~1_combout\,
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(5),
	datad => \CPU|Add0~0_combout\,
	combout => \CPU|MemoryPointer[1]~14_combout\);

-- Location: LCCOMB_X25_Y13_N0
\CPU|MemoryPointer[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~15_combout\ = (\CPU|INST_Register\(5) & (!\CPU|MemoryPointer[1]~14_combout\ & (\CPU|INST_Register\(0) $ (!\CPU|INST_Register\(2))))) # (!\CPU|INST_Register\(5) & (\CPU|INST_Register\(0) & ((\CPU|MemoryPointer[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|INST_Register\(0),
	datac => \CPU|INST_Register\(2),
	datad => \CPU|MemoryPointer[1]~14_combout\,
	combout => \CPU|MemoryPointer[1]~15_combout\);

-- Location: LCCOMB_X25_Y13_N14
\CPU|MemoryPointer[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~16_combout\ = (\CPU|INST_Register\(0) & ((\CPU|MemoryPointer[1]~14_combout\) # ((\CPU|INST_Register\(5) & !\CPU|INST_Register\(2))))) # (!\CPU|INST_Register\(0) & (\CPU|INST_Register\(5) & (\CPU|INST_Register\(2) $ 
-- (\CPU|MemoryPointer[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|INST_Register\(0),
	datac => \CPU|INST_Register\(2),
	datad => \CPU|MemoryPointer[1]~14_combout\,
	combout => \CPU|MemoryPointer[1]~16_combout\);

-- Location: LCCOMB_X25_Y13_N4
\CPU|MemoryPointer[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~17_combout\ = (\CPU|MemoryPointer[1]~5_combout\ & ((\CPU|MemoryPointer[1]~15_combout\) # ((\CPU|MemoryPointer[1]~16_combout\ & \CPU|MemoryPointer[1]~13_combout\)))) # (!\CPU|MemoryPointer[1]~5_combout\ & 
-- (\CPU|MemoryPointer[1]~15_combout\ & (\CPU|MemoryPointer[1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~5_combout\,
	datab => \CPU|MemoryPointer[1]~15_combout\,
	datac => \CPU|MemoryPointer[1]~16_combout\,
	datad => \CPU|MemoryPointer[1]~13_combout\,
	combout => \CPU|MemoryPointer[1]~17_combout\);

-- Location: LCCOMB_X24_Y13_N16
\CPU|MemoryPointer[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~18_combout\ = (\CPU|MemoryPointer[1]~7_combout\) # ((\CPU|INST_Register\(4) & (\CPU|Add0~2_combout\ & \CPU|MemoryPointer[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|Add0~2_combout\,
	datac => \CPU|MemoryPointer[1]~7_combout\,
	datad => \CPU|MemoryPointer[1]~17_combout\,
	combout => \CPU|MemoryPointer[1]~18_combout\);

-- Location: LCCOMB_X24_Y13_N24
\CPU|MemoryPointer[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~35_combout\ = (\CPU|MemoryPointer[1]~18_combout\) # ((!\CPU|MemoryPointer[1]~34_combout\ & ((\CPU|MemoryPointer[1]~23_combout\) # (\CPU|MemoryPointer[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~23_combout\,
	datab => \CPU|MemoryPointer[1]~34_combout\,
	datac => \CPU|MemoryPointer[1]~27_combout\,
	datad => \CPU|MemoryPointer[1]~18_combout\,
	combout => \CPU|MemoryPointer[1]~35_combout\);

-- Location: LCCOMB_X24_Y13_N14
\CPU|MemoryPointer[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~41_combout\ = (\CPU|MemoryPointer[1]~34_combout\) # ((\CPU|MemoryPointer[1]~35_combout\) # ((\CPU|MemoryPointer[1]~40_combout\ & !\CPU|MemoryPointer[1]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~40_combout\,
	datab => \CPU|MemoryPointer[1]~34_combout\,
	datac => \CPU|MemoryPointer[1]~38_combout\,
	datad => \CPU|MemoryPointer[1]~35_combout\,
	combout => \CPU|MemoryPointer[1]~41_combout\);

-- Location: LCCOMB_X23_Y12_N26
\CPU|Selector150~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector150~2_combout\ = (\CPU|INST_Register\(2) & !\CPU|INST_Register\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|Selector150~2_combout\);

-- Location: LCCOMB_X23_Y12_N20
\CPU|Y_Register[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[0]~6_combout\ = (((\CPU|INST_Register\(0)) # (!\CPU|INST_Register\(5))) # (!\CPU|INST_Register\(1))) # (!\CPU|Selector150~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Selector150~2_combout\,
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|INST_Register\(5),
	combout => \CPU|Y_Register[0]~6_combout\);

-- Location: LCCOMB_X23_Y14_N6
\CPU|Selector111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector111~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & ((\CPU|MemoryPointer\(6)))) # (!\CPU|Y_Register[0]~6_combout\ & (\CPU|dataReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(6),
	datac => \CPU|MemoryPointer\(6),
	datad => \CPU|Y_Register[0]~6_combout\,
	combout => \CPU|Selector111~0_combout\);

-- Location: LCCOMB_X24_Y11_N30
\CPU|Y_Register[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[15]~13_combout\ = (\CPU|A_Register[6]~12_combout\ & (((\CPU|MemoryPointer[1]~33_combout\ & \CPU|Decoder0~0_combout\)) # (!\CPU|INST_Register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[6]~12_combout\,
	datab => \CPU|INST_Register\(3),
	datac => \CPU|MemoryPointer[1]~33_combout\,
	datad => \CPU|Decoder0~0_combout\,
	combout => \CPU|Y_Register[15]~13_combout\);

-- Location: LCCOMB_X24_Y14_N20
\CPU|Y_Register[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[0]~11_combout\ = (\CPU|INST_Register\(4) & (((\CPU|INST_Register\(5))))) # (!\CPU|INST_Register\(4) & (\CPU|MemoryPointer[1]~12_combout\ & (!\CPU|INST_Register\(5) & \CPU|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|MemoryPointer[1]~12_combout\,
	datac => \CPU|INST_Register\(5),
	datad => \CPU|Decoder0~0_combout\,
	combout => \CPU|Y_Register[0]~11_combout\);

-- Location: LCCOMB_X23_Y11_N12
\CPU|Y_Register[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[0]~9_combout\ = (!\CPU|StepCounter\(0) & (\CPU|StepCounter\(2) & (!\CPU|StepCounter\(3) & !\CPU|StepCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(0),
	datab => \CPU|StepCounter\(2),
	datac => \CPU|StepCounter\(3),
	datad => \CPU|StepCounter\(1),
	combout => \CPU|Y_Register[0]~9_combout\);

-- Location: LCCOMB_X23_Y11_N28
\CPU|Y_Register[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[0]~20_combout\ = (\CPU|INST_Register\(2) & ((\CPU|INST_Register\(1) & ((!\CPU|Y_Register[0]~9_combout\))) # (!\CPU|INST_Register\(1) & (!\CPU|Decoder0~0_combout\)))) # (!\CPU|INST_Register\(2) & (((!\CPU|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|Decoder0~0_combout\,
	datad => \CPU|Y_Register[0]~9_combout\,
	combout => \CPU|Y_Register[0]~20_combout\);

-- Location: LCCOMB_X23_Y14_N28
\CPU|Y_Register[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[0]~10_combout\ = (\CPU|INST_Register\(5) & ((\CPU|Y_Register[0]~20_combout\) # ((\CPU|MemoryPointer[1]~57_combout\ & !\CPU|StepCounter[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|MemoryPointer[1]~57_combout\,
	datac => \CPU|Y_Register[0]~20_combout\,
	datad => \CPU|StepCounter[0]~28_combout\,
	combout => \CPU|Y_Register[0]~10_combout\);

-- Location: LCCOMB_X23_Y14_N14
\CPU|Y_Register[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[0]~12_combout\ = (!\CPU|INST_Register\(0) & ((\CPU|Y_Register[0]~10_combout\) # (!\CPU|Y_Register[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(0),
	datac => \CPU|Y_Register[0]~11_combout\,
	datad => \CPU|Y_Register[0]~10_combout\,
	combout => \CPU|Y_Register[0]~12_combout\);

-- Location: LCCOMB_X24_Y14_N8
\CPU|Y_Register[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[0]~7_combout\ = (!\CPU|INST_Register\(4) & ((\CPU|INST_Register\(5)) # ((\CPU|INST_Register\(2) & \CPU|INST_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(5),
	datad => \CPU|INST_Register\(4),
	combout => \CPU|Y_Register[0]~7_combout\);

-- Location: LCCOMB_X24_Y14_N28
\CPU|Y_Register[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[0]~19_combout\ = (\CPU|INST_Register\(5) & (!\CPU|StepCounter[0]~28_combout\ & ((\CPU|INST_Register\(1)) # (!\CPU|INST_Register\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(5),
	datad => \CPU|StepCounter[0]~28_combout\,
	combout => \CPU|Y_Register[0]~19_combout\);

-- Location: LCCOMB_X24_Y14_N22
\CPU|Y_Register[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[0]~8_combout\ = (\CPU|INST_Register\(0) & (((\CPU|Y_Register[0]~7_combout\) # (\CPU|Y_Register[0]~19_combout\)) # (!\CPU|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder0~0_combout\,
	datab => \CPU|Y_Register[0]~7_combout\,
	datac => \CPU|INST_Register\(0),
	datad => \CPU|Y_Register[0]~19_combout\,
	combout => \CPU|Y_Register[0]~8_combout\);

-- Location: LCCOMB_X23_Y14_N0
\CPU|Y_Register[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[0]~14_combout\ = (\CPU|Y_Register[15]~13_combout\ & ((\CPU|INST_Register\(3)) # ((!\CPU|Y_Register[0]~12_combout\ & !\CPU|Y_Register[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register[15]~13_combout\,
	datab => \CPU|INST_Register\(3),
	datac => \CPU|Y_Register[0]~12_combout\,
	datad => \CPU|Y_Register[0]~8_combout\,
	combout => \CPU|Y_Register[0]~14_combout\);

-- Location: FF_X23_Y14_N7
\CPU|Y_Register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector111~0_combout\,
	ena => \CPU|Y_Register[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(6));

-- Location: LCCOMB_X24_Y13_N0
\CPU|MemoryPointer[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~39_combout\ = (\CPU|MemoryPointer[1]~35_combout\) # ((!\CPU|MemoryPointer[1]~34_combout\ & \CPU|MemoryPointer[1]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryPointer[1]~34_combout\,
	datac => \CPU|MemoryPointer[1]~38_combout\,
	datad => \CPU|MemoryPointer[1]~35_combout\,
	combout => \CPU|MemoryPointer[1]~39_combout\);

-- Location: LCCOMB_X22_Y14_N22
\CPU|Selector113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector113~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (\CPU|MemoryPointer\(4))) # (!\CPU|Y_Register[0]~6_combout\ & ((\CPU|dataReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(4),
	datac => \CPU|Y_Register[0]~6_combout\,
	datad => \CPU|dataReg\(4),
	combout => \CPU|Selector113~0_combout\);

-- Location: FF_X22_Y14_N23
\CPU|Y_Register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector113~0_combout\,
	ena => \CPU|Y_Register[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(4));

-- Location: LCCOMB_X22_Y14_N20
\CPU|Selector115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector115~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & ((\CPU|MemoryPointer\(2)))) # (!\CPU|Y_Register[0]~6_combout\ & (\CPU|dataReg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|dataReg\(2),
	datac => \CPU|Y_Register[0]~6_combout\,
	datad => \CPU|MemoryPointer\(2),
	combout => \CPU|Selector115~0_combout\);

-- Location: FF_X22_Y14_N21
\CPU|Y_Register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector115~0_combout\,
	ena => \CPU|Y_Register[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(2));

-- Location: LCCOMB_X21_Y14_N0
\CPU|StackPointer[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[0]~16_combout\ = \CPU|StackPointer\(0) $ (VCC)
-- \CPU|StackPointer[0]~17\ = CARRY(\CPU|StackPointer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|StackPointer\(0),
	datad => VCC,
	combout => \CPU|StackPointer[0]~16_combout\,
	cout => \CPU|StackPointer[0]~17\);

-- Location: LCCOMB_X22_Y12_N24
\CPU|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|WideOr11~0_combout\ = (!\CPU|StepCounter\(3) & ((\CPU|StepCounter\(1) & (!\CPU|StepCounter\(0) & !\CPU|StepCounter\(2))) # (!\CPU|StepCounter\(1) & (\CPU|StepCounter\(0) & \CPU|StepCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(3),
	datab => \CPU|StepCounter\(1),
	datac => \CPU|StepCounter\(0),
	datad => \CPU|StepCounter\(2),
	combout => \CPU|WideOr11~0_combout\);

-- Location: LCCOMB_X22_Y12_N30
\CPU|StackPointer[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[0]~18_combout\ = ((\CPU|INST_Register\(1) & ((\CPU|INST_Register\(0)) # (!\CPU|WideOr11~0_combout\)))) # (!\CPU|INST_Register\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|WideOr11~0_combout\,
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(1),
	combout => \CPU|StackPointer[0]~18_combout\);

-- Location: LCCOMB_X22_Y12_N4
\CPU|StackPointer[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[0]~19_combout\ = (\CPU|StackPointer[0]~18_combout\) # ((!\CPU|INST_Register\(1) & ((!\CPU|Decoder0~1_combout\) # (!\CPU|INST_Register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|StackPointer[0]~18_combout\,
	datad => \CPU|Decoder0~1_combout\,
	combout => \CPU|StackPointer[0]~19_combout\);

-- Location: LCCOMB_X22_Y12_N2
\CPU|StackPointer[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[0]~20_combout\ = (\CPU|INST_Register\(5) & (\CPU|A_Register[6]~12_combout\ & (!\CPU|StackPointer[0]~19_combout\ & \CPU|Selector150~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|A_Register[6]~12_combout\,
	datac => \CPU|StackPointer[0]~19_combout\,
	datad => \CPU|Selector150~1_combout\,
	combout => \CPU|StackPointer[0]~20_combout\);

-- Location: FF_X21_Y14_N1
\CPU|StackPointer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[0]~16_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(0));

-- Location: LCCOMB_X21_Y14_N2
\CPU|StackPointer[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[1]~21_combout\ = (\CPU|INST_Register\(1) & ((\CPU|StackPointer\(1) & (!\CPU|StackPointer[0]~17\)) # (!\CPU|StackPointer\(1) & ((\CPU|StackPointer[0]~17\) # (GND))))) # (!\CPU|INST_Register\(1) & ((\CPU|StackPointer\(1) & 
-- (\CPU|StackPointer[0]~17\ & VCC)) # (!\CPU|StackPointer\(1) & (!\CPU|StackPointer[0]~17\))))
-- \CPU|StackPointer[1]~22\ = CARRY((\CPU|INST_Register\(1) & ((!\CPU|StackPointer[0]~17\) # (!\CPU|StackPointer\(1)))) # (!\CPU|INST_Register\(1) & (!\CPU|StackPointer\(1) & !\CPU|StackPointer[0]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|StackPointer\(1),
	datad => VCC,
	cin => \CPU|StackPointer[0]~17\,
	combout => \CPU|StackPointer[1]~21_combout\,
	cout => \CPU|StackPointer[1]~22\);

-- Location: FF_X21_Y14_N3
\CPU|StackPointer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[1]~21_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(1));

-- Location: LCCOMB_X21_Y14_N4
\CPU|StackPointer[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[2]~23_combout\ = ((\CPU|INST_Register\(1) $ (\CPU|StackPointer\(2) $ (\CPU|StackPointer[1]~22\)))) # (GND)
-- \CPU|StackPointer[2]~24\ = CARRY((\CPU|INST_Register\(1) & (\CPU|StackPointer\(2) & !\CPU|StackPointer[1]~22\)) # (!\CPU|INST_Register\(1) & ((\CPU|StackPointer\(2)) # (!\CPU|StackPointer[1]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|StackPointer\(2),
	datad => VCC,
	cin => \CPU|StackPointer[1]~22\,
	combout => \CPU|StackPointer[2]~23_combout\,
	cout => \CPU|StackPointer[2]~24\);

-- Location: FF_X21_Y14_N5
\CPU|StackPointer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[2]~23_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(2));

-- Location: LCCOMB_X24_Y13_N10
\CPU|Selector95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector95~0_combout\ = (\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|X_Register\(2)) # ((\CPU|MemoryPointer[1]~39_combout\)))) # (!\CPU|MemoryPointer[1]~41_combout\ & (((\CPU|StackPointer\(2) & !\CPU|MemoryPointer[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(2),
	datab => \CPU|StackPointer\(2),
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|MemoryPointer[1]~39_combout\,
	combout => \CPU|Selector95~0_combout\);

-- Location: LCCOMB_X22_Y17_N0
\CPU|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~0_combout\ = \CPU|MemoryPointer\(0) $ (VCC)
-- \CPU|Add5~1\ = CARRY(\CPU|MemoryPointer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryPointer\(0),
	datad => VCC,
	combout => \CPU|Add5~0_combout\,
	cout => \CPU|Add5~1\);

-- Location: LCCOMB_X24_Y13_N20
\CPU|Selector97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector97~0_combout\ = (\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|X_Register\(0)) # ((\CPU|MemoryPointer[1]~39_combout\)))) # (!\CPU|MemoryPointer[1]~41_combout\ & (((\CPU|StackPointer\(0) & !\CPU|MemoryPointer[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(0),
	datab => \CPU|StackPointer\(0),
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|MemoryPointer[1]~39_combout\,
	combout => \CPU|Selector97~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\CPU|Selector117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector117~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (\CPU|MemoryPointer\(0))) # (!\CPU|Y_Register[0]~6_combout\ & ((\CPU|dataReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(0),
	datac => \CPU|dataReg\(0),
	datad => \CPU|Y_Register[0]~6_combout\,
	combout => \CPU|Selector117~0_combout\);

-- Location: FF_X23_Y14_N25
\CPU|Y_Register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector117~0_combout\,
	ena => \CPU|Y_Register[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(0));

-- Location: LCCOMB_X23_Y13_N28
\CPU|Selector97~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector97~1_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|Selector97~0_combout\ & (\CPU|Add5~0_combout\)) # (!\CPU|Selector97~0_combout\ & ((\CPU|Y_Register\(0)))))) # (!\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|Selector97~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Add5~0_combout\,
	datab => \CPU|MemoryPointer[1]~39_combout\,
	datac => \CPU|Selector97~0_combout\,
	datad => \CPU|Y_Register\(0),
	combout => \CPU|Selector97~1_combout\);

-- Location: LCCOMB_X22_Y11_N18
\CPU|MemoryPointer[0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[0]~52_combout\ = (!\CPU|INST_Register\(0) & (\CPU|MemoryPointer[0]~51_combout\ & \CPU|CarryFlag~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datac => \CPU|MemoryPointer[0]~51_combout\,
	datad => \CPU|CarryFlag~0_combout\,
	combout => \CPU|MemoryPointer[0]~52_combout\);

-- Location: LCCOMB_X25_Y11_N2
\CPU|MemoryPointer[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[0]~53_combout\ = (\CPU|INST_Register\(3)) # ((\CPU|INST_Register\(1) & (\CPU|INST_Register\(2) & \CPU|INST_Register\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|MemoryPointer[0]~53_combout\);

-- Location: LCCOMB_X23_Y11_N6
\CPU|MemoryPointer[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[0]~49_combout\ = (\CPU|StepCounter\(0) & (!\CPU|StepCounter\(3) & ((\CPU|StepCounter\(2)) # (\CPU|StepCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(0),
	datab => \CPU|StepCounter\(2),
	datac => \CPU|StepCounter\(3),
	datad => \CPU|StepCounter\(1),
	combout => \CPU|MemoryPointer[0]~49_combout\);

-- Location: LCCOMB_X23_Y11_N20
\CPU|MemoryPointer[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[0]~48_combout\ = (\CPU|StepCounter\(2) & (\CPU|INST_Register\(2) & \CPU|INST_Register\(1))) # (!\CPU|StepCounter\(2) & ((\CPU|INST_Register\(2)) # (\CPU|INST_Register\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|StepCounter\(2),
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(1),
	combout => \CPU|MemoryPointer[0]~48_combout\);

-- Location: LCCOMB_X23_Y11_N24
\CPU|MemoryPointer[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[0]~50_combout\ = (\CPU|MemoryPointer[0]~49_combout\ & ((\CPU|INST_Register\(0)) # ((!\CPU|INST_Register\(4) & \CPU|MemoryPointer[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[0]~49_combout\,
	datab => \CPU|INST_Register\(4),
	datac => \CPU|INST_Register\(0),
	datad => \CPU|MemoryPointer[0]~48_combout\,
	combout => \CPU|MemoryPointer[0]~50_combout\);

-- Location: LCCOMB_X22_Y11_N4
\CPU|MemoryPointer[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[0]~54_combout\ = (\CPU|MemoryPointer[0]~52_combout\) # ((\CPU|MemoryPointer[0]~50_combout\) # ((!\CPU|INST_Register\(4) & \CPU|MemoryPointer[0]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|MemoryPointer[0]~52_combout\,
	datac => \CPU|MemoryPointer[0]~53_combout\,
	datad => \CPU|MemoryPointer[0]~50_combout\,
	combout => \CPU|MemoryPointer[0]~54_combout\);

-- Location: LCCOMB_X22_Y12_N12
\CPU|MemoryPointer[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~45_combout\ = (\CPU|INST_Register\(1) & (\CPU|StepCounter\(2) $ (((!\CPU|StepCounter\(0) & \CPU|StepCounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(0),
	datab => \CPU|StepCounter\(1),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|StepCounter\(2),
	combout => \CPU|MemoryPointer[1]~45_combout\);

-- Location: LCCOMB_X22_Y13_N4
\CPU|MemoryPointer[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~44_combout\ = (\CPU|StepCounter\(0) & (!\CPU|INST_Register\(1) & (\CPU|Add0~0_combout\ $ (\CPU|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Add0~0_combout\,
	datab => \CPU|StepCounter\(0),
	datac => \CPU|Add0~1_combout\,
	datad => \CPU|INST_Register\(1),
	combout => \CPU|MemoryPointer[1]~44_combout\);

-- Location: LCCOMB_X22_Y13_N22
\CPU|MemoryPointer[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~46_combout\ = (\CPU|MemoryPointer[1]~36_combout\ & ((\CPU|MemoryPointer[1]~44_combout\) # ((\CPU|MemoryPointer[1]~45_combout\ & !\CPU|StepCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~45_combout\,
	datab => \CPU|MemoryPointer[1]~44_combout\,
	datac => \CPU|MemoryPointer[1]~36_combout\,
	datad => \CPU|StepCounter\(3),
	combout => \CPU|MemoryPointer[1]~46_combout\);

-- Location: LCCOMB_X22_Y13_N20
\CPU|MemoryPointer[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~42_combout\ = (\CPU|INST_Register\(2) & (((\CPU|MemoryPointer[1]~36_combout\) # (!\CPU|MemoryPointer[1]~13_combout\)))) # (!\CPU|INST_Register\(2) & (!\CPU|MemoryPointer[1]~3_combout\ & ((\CPU|MemoryPointer[1]~36_combout\) # 
-- (!\CPU|MemoryPointer[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|MemoryPointer[1]~3_combout\,
	datac => \CPU|MemoryPointer[1]~36_combout\,
	datad => \CPU|MemoryPointer[1]~13_combout\,
	combout => \CPU|MemoryPointer[1]~42_combout\);

-- Location: LCCOMB_X22_Y13_N6
\CPU|MemoryPointer[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~43_combout\ = (\CPU|Equal4~0_combout\ & (\CPU|INST_Register\(4) & !\CPU|MemoryPointer[1]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Equal4~0_combout\,
	datac => \CPU|INST_Register\(4),
	datad => \CPU|MemoryPointer[1]~42_combout\,
	combout => \CPU|MemoryPointer[1]~43_combout\);

-- Location: LCCOMB_X22_Y13_N28
\CPU|MemoryPointer[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~47_combout\ = (\CPU|MemoryPointer[1]~46_combout\) # ((\CPU|MemoryPointer[1]~31_combout\) # ((\CPU|INST_Register\(3)) # (\CPU|MemoryPointer[1]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~46_combout\,
	datab => \CPU|MemoryPointer[1]~31_combout\,
	datac => \CPU|INST_Register\(3),
	datad => \CPU|MemoryPointer[1]~43_combout\,
	combout => \CPU|MemoryPointer[1]~47_combout\);

-- Location: LCCOMB_X22_Y13_N14
\CPU|MemoryPointer[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[0]~56_combout\ = (\CPU|A_Register[6]~12_combout\ & ((\CPU|INST_Register\(5) & ((!\CPU|MemoryPointer[1]~47_combout\))) # (!\CPU|INST_Register\(5) & (!\CPU|MemoryPointer[0]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|MemoryPointer[0]~54_combout\,
	datac => \CPU|A_Register[6]~12_combout\,
	datad => \CPU|MemoryPointer[1]~47_combout\,
	combout => \CPU|MemoryPointer[0]~56_combout\);

-- Location: FF_X23_Y13_N29
\CPU|MemoryPointer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector97~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(0));

-- Location: LCCOMB_X22_Y17_N2
\CPU|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~2_combout\ = (\CPU|MemoryPointer\(1) & (!\CPU|Add5~1\)) # (!\CPU|MemoryPointer\(1) & ((\CPU|Add5~1\) # (GND)))
-- \CPU|Add5~3\ = CARRY((!\CPU|Add5~1\) # (!\CPU|MemoryPointer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(1),
	datad => VCC,
	cin => \CPU|Add5~1\,
	combout => \CPU|Add5~2_combout\,
	cout => \CPU|Add5~3\);

-- Location: LCCOMB_X23_Y14_N26
\CPU|Selector116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector116~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (\CPU|MemoryPointer\(1))) # (!\CPU|Y_Register[0]~6_combout\ & ((\CPU|dataReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryPointer\(1),
	datac => \CPU|dataReg\(1),
	datad => \CPU|Y_Register[0]~6_combout\,
	combout => \CPU|Selector116~0_combout\);

-- Location: FF_X23_Y14_N27
\CPU|Y_Register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector116~0_combout\,
	ena => \CPU|Y_Register[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(1));

-- Location: LCCOMB_X22_Y13_N24
\CPU|Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector96~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|Y_Register\(1)) # ((\CPU|MemoryPointer[1]~41_combout\)))) # (!\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|StackPointer\(1) & !\CPU|MemoryPointer[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(1),
	datab => \CPU|StackPointer\(1),
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|MemoryPointer[1]~41_combout\,
	combout => \CPU|Selector96~0_combout\);

-- Location: LCCOMB_X22_Y13_N8
\CPU|Selector96~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector96~1_combout\ = (\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|Selector96~0_combout\ & ((\CPU|Add5~2_combout\))) # (!\CPU|Selector96~0_combout\ & (\CPU|X_Register\(1))))) # (!\CPU|MemoryPointer[1]~41_combout\ & (((\CPU|Selector96~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(1),
	datab => \CPU|Add5~2_combout\,
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|Selector96~0_combout\,
	combout => \CPU|Selector96~1_combout\);

-- Location: FF_X22_Y13_N9
\CPU|MemoryPointer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector96~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(1));

-- Location: LCCOMB_X22_Y17_N4
\CPU|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~4_combout\ = (\CPU|MemoryPointer\(2) & (\CPU|Add5~3\ $ (GND))) # (!\CPU|MemoryPointer\(2) & (!\CPU|Add5~3\ & VCC))
-- \CPU|Add5~5\ = CARRY((\CPU|MemoryPointer\(2) & !\CPU|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryPointer\(2),
	datad => VCC,
	cin => \CPU|Add5~3\,
	combout => \CPU|Add5~4_combout\,
	cout => \CPU|Add5~5\);

-- Location: LCCOMB_X23_Y13_N14
\CPU|Selector95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector95~1_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|Selector95~0_combout\ & ((\CPU|Add5~4_combout\))) # (!\CPU|Selector95~0_combout\ & (\CPU|Y_Register\(2))))) # (!\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|Selector95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(2),
	datab => \CPU|MemoryPointer[1]~39_combout\,
	datac => \CPU|Selector95~0_combout\,
	datad => \CPU|Add5~4_combout\,
	combout => \CPU|Selector95~1_combout\);

-- Location: FF_X23_Y13_N15
\CPU|MemoryPointer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector95~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(2));

-- Location: LCCOMB_X22_Y17_N6
\CPU|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~6_combout\ = (\CPU|MemoryPointer\(3) & (!\CPU|Add5~5\)) # (!\CPU|MemoryPointer\(3) & ((\CPU|Add5~5\) # (GND)))
-- \CPU|Add5~7\ = CARRY((!\CPU|Add5~5\) # (!\CPU|MemoryPointer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(3),
	datad => VCC,
	cin => \CPU|Add5~5\,
	combout => \CPU|Add5~6_combout\,
	cout => \CPU|Add5~7\);

-- Location: LCCOMB_X21_Y14_N6
\CPU|StackPointer[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[3]~25_combout\ = (\CPU|INST_Register\(1) & ((\CPU|StackPointer\(3) & (!\CPU|StackPointer[2]~24\)) # (!\CPU|StackPointer\(3) & ((\CPU|StackPointer[2]~24\) # (GND))))) # (!\CPU|INST_Register\(1) & ((\CPU|StackPointer\(3) & 
-- (\CPU|StackPointer[2]~24\ & VCC)) # (!\CPU|StackPointer\(3) & (!\CPU|StackPointer[2]~24\))))
-- \CPU|StackPointer[3]~26\ = CARRY((\CPU|INST_Register\(1) & ((!\CPU|StackPointer[2]~24\) # (!\CPU|StackPointer\(3)))) # (!\CPU|INST_Register\(1) & (!\CPU|StackPointer\(3) & !\CPU|StackPointer[2]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|StackPointer\(3),
	datad => VCC,
	cin => \CPU|StackPointer[2]~24\,
	combout => \CPU|StackPointer[3]~25_combout\,
	cout => \CPU|StackPointer[3]~26\);

-- Location: FF_X21_Y14_N7
\CPU|StackPointer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[3]~25_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(3));

-- Location: LCCOMB_X23_Y14_N8
\CPU|Selector114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector114~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & ((\CPU|MemoryPointer\(3)))) # (!\CPU|Y_Register[0]~6_combout\ & (\CPU|dataReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(3),
	datab => \CPU|MemoryPointer\(3),
	datad => \CPU|Y_Register[0]~6_combout\,
	combout => \CPU|Selector114~0_combout\);

-- Location: FF_X23_Y14_N9
\CPU|Y_Register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector114~0_combout\,
	ena => \CPU|Y_Register[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(3));

-- Location: LCCOMB_X23_Y13_N24
\CPU|Selector94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector94~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|MemoryPointer[1]~41_combout\) # (\CPU|Y_Register\(3))))) # (!\CPU|MemoryPointer[1]~39_combout\ & (\CPU|StackPointer\(3) & (!\CPU|MemoryPointer[1]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(3),
	datab => \CPU|MemoryPointer[1]~39_combout\,
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|Y_Register\(3),
	combout => \CPU|Selector94~0_combout\);

-- Location: LCCOMB_X23_Y13_N4
\CPU|Selector94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector94~1_combout\ = (\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|Selector94~0_combout\ & ((\CPU|Add5~6_combout\))) # (!\CPU|Selector94~0_combout\ & (\CPU|X_Register\(3))))) # (!\CPU|MemoryPointer[1]~41_combout\ & (((\CPU|Selector94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(3),
	datab => \CPU|Add5~6_combout\,
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|Selector94~0_combout\,
	combout => \CPU|Selector94~1_combout\);

-- Location: FF_X23_Y13_N5
\CPU|MemoryPointer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector94~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(3));

-- Location: LCCOMB_X22_Y17_N8
\CPU|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~8_combout\ = (\CPU|MemoryPointer\(4) & (\CPU|Add5~7\ $ (GND))) # (!\CPU|MemoryPointer\(4) & (!\CPU|Add5~7\ & VCC))
-- \CPU|Add5~9\ = CARRY((\CPU|MemoryPointer\(4) & !\CPU|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryPointer\(4),
	datad => VCC,
	cin => \CPU|Add5~7\,
	combout => \CPU|Add5~8_combout\,
	cout => \CPU|Add5~9\);

-- Location: LCCOMB_X21_Y14_N8
\CPU|StackPointer[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[4]~27_combout\ = ((\CPU|INST_Register\(1) $ (\CPU|StackPointer\(4) $ (\CPU|StackPointer[3]~26\)))) # (GND)
-- \CPU|StackPointer[4]~28\ = CARRY((\CPU|INST_Register\(1) & (\CPU|StackPointer\(4) & !\CPU|StackPointer[3]~26\)) # (!\CPU|INST_Register\(1) & ((\CPU|StackPointer\(4)) # (!\CPU|StackPointer[3]~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|StackPointer\(4),
	datad => VCC,
	cin => \CPU|StackPointer[3]~26\,
	combout => \CPU|StackPointer[4]~27_combout\,
	cout => \CPU|StackPointer[4]~28\);

-- Location: FF_X21_Y14_N9
\CPU|StackPointer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[4]~27_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(4));

-- Location: LCCOMB_X21_Y13_N18
\CPU|Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector93~0_combout\ = (\CPU|MemoryPointer[1]~41_combout\ & (((\CPU|X_Register\(4)) # (\CPU|MemoryPointer[1]~39_combout\)))) # (!\CPU|MemoryPointer[1]~41_combout\ & (\CPU|StackPointer\(4) & ((!\CPU|MemoryPointer[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(4),
	datab => \CPU|X_Register\(4),
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|MemoryPointer[1]~39_combout\,
	combout => \CPU|Selector93~0_combout\);

-- Location: LCCOMB_X21_Y13_N8
\CPU|Selector93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector93~1_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|Selector93~0_combout\ & ((\CPU|Add5~8_combout\))) # (!\CPU|Selector93~0_combout\ & (\CPU|Y_Register\(4))))) # (!\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|Selector93~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(4),
	datab => \CPU|Add5~8_combout\,
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|Selector93~0_combout\,
	combout => \CPU|Selector93~1_combout\);

-- Location: FF_X21_Y13_N9
\CPU|MemoryPointer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector93~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(4));

-- Location: LCCOMB_X22_Y17_N10
\CPU|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~10_combout\ = (\CPU|MemoryPointer\(5) & (!\CPU|Add5~9\)) # (!\CPU|MemoryPointer\(5) & ((\CPU|Add5~9\) # (GND)))
-- \CPU|Add5~11\ = CARRY((!\CPU|Add5~9\) # (!\CPU|MemoryPointer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(5),
	datad => VCC,
	cin => \CPU|Add5~9\,
	combout => \CPU|Add5~10_combout\,
	cout => \CPU|Add5~11\);

-- Location: LCCOMB_X23_Y14_N30
\CPU|Selector112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector112~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (\CPU|MemoryPointer\(5))) # (!\CPU|Y_Register[0]~6_combout\ & ((\CPU|dataReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(5),
	datac => \CPU|dataReg\(5),
	datad => \CPU|Y_Register[0]~6_combout\,
	combout => \CPU|Selector112~0_combout\);

-- Location: FF_X23_Y14_N31
\CPU|Y_Register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector112~0_combout\,
	ena => \CPU|Y_Register[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(5));

-- Location: LCCOMB_X21_Y14_N10
\CPU|StackPointer[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[5]~29_combout\ = (\CPU|StackPointer\(5) & ((\CPU|INST_Register\(1) & (!\CPU|StackPointer[4]~28\)) # (!\CPU|INST_Register\(1) & (\CPU|StackPointer[4]~28\ & VCC)))) # (!\CPU|StackPointer\(5) & ((\CPU|INST_Register\(1) & 
-- ((\CPU|StackPointer[4]~28\) # (GND))) # (!\CPU|INST_Register\(1) & (!\CPU|StackPointer[4]~28\))))
-- \CPU|StackPointer[5]~30\ = CARRY((\CPU|StackPointer\(5) & (\CPU|INST_Register\(1) & !\CPU|StackPointer[4]~28\)) # (!\CPU|StackPointer\(5) & ((\CPU|INST_Register\(1)) # (!\CPU|StackPointer[4]~28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(5),
	datab => \CPU|INST_Register\(1),
	datad => VCC,
	cin => \CPU|StackPointer[4]~28\,
	combout => \CPU|StackPointer[5]~29_combout\,
	cout => \CPU|StackPointer[5]~30\);

-- Location: FF_X21_Y14_N11
\CPU|StackPointer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[5]~29_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(5));

-- Location: LCCOMB_X23_Y14_N20
\CPU|Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector92~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|Y_Register\(5)) # ((\CPU|MemoryPointer[1]~41_combout\)))) # (!\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|StackPointer\(5) & !\CPU|MemoryPointer[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(5),
	datab => \CPU|StackPointer\(5),
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|MemoryPointer[1]~41_combout\,
	combout => \CPU|Selector92~0_combout\);

-- Location: LCCOMB_X23_Y14_N12
\CPU|Selector92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector92~1_combout\ = (\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|Selector92~0_combout\ & (\CPU|Add5~10_combout\)) # (!\CPU|Selector92~0_combout\ & ((\CPU|X_Register\(5)))))) # (!\CPU|MemoryPointer[1]~41_combout\ & (((\CPU|Selector92~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~41_combout\,
	datab => \CPU|Add5~10_combout\,
	datac => \CPU|X_Register\(5),
	datad => \CPU|Selector92~0_combout\,
	combout => \CPU|Selector92~1_combout\);

-- Location: FF_X23_Y14_N13
\CPU|MemoryPointer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector92~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(5));

-- Location: LCCOMB_X22_Y17_N12
\CPU|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~12_combout\ = (\CPU|MemoryPointer\(6) & (\CPU|Add5~11\ $ (GND))) # (!\CPU|MemoryPointer\(6) & (!\CPU|Add5~11\ & VCC))
-- \CPU|Add5~13\ = CARRY((\CPU|MemoryPointer\(6) & !\CPU|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(6),
	datad => VCC,
	cin => \CPU|Add5~11\,
	combout => \CPU|Add5~12_combout\,
	cout => \CPU|Add5~13\);

-- Location: LCCOMB_X21_Y14_N12
\CPU|StackPointer[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[6]~31_combout\ = ((\CPU|INST_Register\(1) $ (\CPU|StackPointer\(6) $ (\CPU|StackPointer[5]~30\)))) # (GND)
-- \CPU|StackPointer[6]~32\ = CARRY((\CPU|INST_Register\(1) & (\CPU|StackPointer\(6) & !\CPU|StackPointer[5]~30\)) # (!\CPU|INST_Register\(1) & ((\CPU|StackPointer\(6)) # (!\CPU|StackPointer[5]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|StackPointer\(6),
	datad => VCC,
	cin => \CPU|StackPointer[5]~30\,
	combout => \CPU|StackPointer[6]~31_combout\,
	cout => \CPU|StackPointer[6]~32\);

-- Location: FF_X21_Y14_N13
\CPU|StackPointer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[6]~31_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(6));

-- Location: LCCOMB_X23_Y13_N6
\CPU|Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector91~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|MemoryPointer[1]~41_combout\)))) # (!\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|X_Register\(6)))) # (!\CPU|MemoryPointer[1]~41_combout\ & 
-- (\CPU|StackPointer\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(6),
	datab => \CPU|MemoryPointer[1]~39_combout\,
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|X_Register\(6),
	combout => \CPU|Selector91~0_combout\);

-- Location: LCCOMB_X23_Y13_N2
\CPU|Selector91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector91~1_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|Selector91~0_combout\ & ((\CPU|Add5~12_combout\))) # (!\CPU|Selector91~0_combout\ & (\CPU|Y_Register\(6))))) # (!\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|Selector91~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(6),
	datab => \CPU|MemoryPointer[1]~39_combout\,
	datac => \CPU|Add5~12_combout\,
	datad => \CPU|Selector91~0_combout\,
	combout => \CPU|Selector91~1_combout\);

-- Location: FF_X23_Y13_N3
\CPU|MemoryPointer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector91~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(6));

-- Location: LCCOMB_X22_Y17_N14
\CPU|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~14_combout\ = (\CPU|MemoryPointer\(7) & (!\CPU|Add5~13\)) # (!\CPU|MemoryPointer\(7) & ((\CPU|Add5~13\) # (GND)))
-- \CPU|Add5~15\ = CARRY((!\CPU|Add5~13\) # (!\CPU|MemoryPointer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryPointer\(7),
	datad => VCC,
	cin => \CPU|Add5~13\,
	combout => \CPU|Add5~14_combout\,
	cout => \CPU|Add5~15\);

-- Location: LCCOMB_X21_Y14_N14
\CPU|StackPointer[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[7]~33_combout\ = (\CPU|INST_Register\(1) & ((\CPU|StackPointer\(7) & (!\CPU|StackPointer[6]~32\)) # (!\CPU|StackPointer\(7) & ((\CPU|StackPointer[6]~32\) # (GND))))) # (!\CPU|INST_Register\(1) & ((\CPU|StackPointer\(7) & 
-- (\CPU|StackPointer[6]~32\ & VCC)) # (!\CPU|StackPointer\(7) & (!\CPU|StackPointer[6]~32\))))
-- \CPU|StackPointer[7]~34\ = CARRY((\CPU|INST_Register\(1) & ((!\CPU|StackPointer[6]~32\) # (!\CPU|StackPointer\(7)))) # (!\CPU|INST_Register\(1) & (!\CPU|StackPointer\(7) & !\CPU|StackPointer[6]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|StackPointer\(7),
	datad => VCC,
	cin => \CPU|StackPointer[6]~32\,
	combout => \CPU|StackPointer[7]~33_combout\,
	cout => \CPU|StackPointer[7]~34\);

-- Location: FF_X21_Y14_N15
\CPU|StackPointer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[7]~33_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(7));

-- Location: LCCOMB_X23_Y14_N4
\CPU|Selector110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector110~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (\CPU|MemoryPointer\(7))) # (!\CPU|Y_Register[0]~6_combout\ & ((\CPU|dataReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(7),
	datab => \CPU|dataReg\(7),
	datad => \CPU|Y_Register[0]~6_combout\,
	combout => \CPU|Selector110~0_combout\);

-- Location: FF_X23_Y14_N5
\CPU|Y_Register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector110~0_combout\,
	ena => \CPU|Y_Register[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(7));

-- Location: LCCOMB_X23_Y14_N2
\CPU|Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector90~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|Y_Register\(7)) # (\CPU|MemoryPointer[1]~41_combout\)))) # (!\CPU|MemoryPointer[1]~39_combout\ & (\CPU|StackPointer\(7) & ((!\CPU|MemoryPointer[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(7),
	datab => \CPU|Y_Register\(7),
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|MemoryPointer[1]~41_combout\,
	combout => \CPU|Selector90~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\CPU|Selector90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector90~1_combout\ = (\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|Selector90~0_combout\ & ((\CPU|Add5~14_combout\))) # (!\CPU|Selector90~0_combout\ & (\CPU|X_Register\(7))))) # (!\CPU|MemoryPointer[1]~41_combout\ & (((\CPU|Selector90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~41_combout\,
	datab => \CPU|X_Register\(7),
	datac => \CPU|Add5~14_combout\,
	datad => \CPU|Selector90~0_combout\,
	combout => \CPU|Selector90~1_combout\);

-- Location: FF_X23_Y14_N23
\CPU|MemoryPointer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector90~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(7));

-- Location: LCCOMB_X22_Y17_N16
\CPU|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~16_combout\ = (\CPU|MemoryPointer\(8) & (\CPU|Add5~15\ $ (GND))) # (!\CPU|MemoryPointer\(8) & (!\CPU|Add5~15\ & VCC))
-- \CPU|Add5~17\ = CARRY((\CPU|MemoryPointer\(8) & !\CPU|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(8),
	datad => VCC,
	cin => \CPU|Add5~15\,
	combout => \CPU|Add5~16_combout\,
	cout => \CPU|Add5~17\);

-- Location: LCCOMB_X21_Y14_N16
\CPU|StackPointer[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[8]~35_combout\ = ((\CPU|INST_Register\(1) $ (\CPU|StackPointer\(8) $ (\CPU|StackPointer[7]~34\)))) # (GND)
-- \CPU|StackPointer[8]~36\ = CARRY((\CPU|INST_Register\(1) & (\CPU|StackPointer\(8) & !\CPU|StackPointer[7]~34\)) # (!\CPU|INST_Register\(1) & ((\CPU|StackPointer\(8)) # (!\CPU|StackPointer[7]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|StackPointer\(8),
	datad => VCC,
	cin => \CPU|StackPointer[7]~34\,
	combout => \CPU|StackPointer[8]~35_combout\,
	cout => \CPU|StackPointer[8]~36\);

-- Location: FF_X21_Y14_N17
\CPU|StackPointer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[8]~35_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(8));

-- Location: LCCOMB_X22_Y13_N10
\CPU|Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector89~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|Y_Register\(8)) # ((\CPU|MemoryPointer[1]~41_combout\)))) # (!\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|StackPointer\(8) & !\CPU|MemoryPointer[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(8),
	datab => \CPU|StackPointer\(8),
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|MemoryPointer[1]~41_combout\,
	combout => \CPU|Selector89~0_combout\);

-- Location: LCCOMB_X22_Y13_N0
\CPU|Selector89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector89~1_combout\ = (\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|Selector89~0_combout\ & ((\CPU|Add5~16_combout\))) # (!\CPU|Selector89~0_combout\ & (\CPU|X_Register\(8))))) # (!\CPU|MemoryPointer[1]~41_combout\ & (((\CPU|Selector89~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(8),
	datab => \CPU|Add5~16_combout\,
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|Selector89~0_combout\,
	combout => \CPU|Selector89~1_combout\);

-- Location: FF_X22_Y13_N1
\CPU|MemoryPointer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector89~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(8));

-- Location: LCCOMB_X25_Y14_N0
\CPU|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add4~0_combout\ = (\CPU|Y_Register\(8) & (\CPU|dataReg\(0) $ (VCC))) # (!\CPU|Y_Register\(8) & (\CPU|dataReg\(0) & VCC))
-- \CPU|Add4~1\ = CARRY((\CPU|Y_Register\(8) & \CPU|dataReg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(8),
	datab => \CPU|dataReg\(0),
	datad => VCC,
	combout => \CPU|Add4~0_combout\,
	cout => \CPU|Add4~1\);

-- Location: LCCOMB_X22_Y13_N18
\CPU|Selector109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector109~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (((\CPU|MemoryPointer\(8))))) # (!\CPU|Y_Register[0]~6_combout\ & (\CPU|Add0~0_combout\ & ((\CPU|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Add0~0_combout\,
	datab => \CPU|MemoryPointer\(8),
	datac => \CPU|Add4~0_combout\,
	datad => \CPU|Y_Register[0]~6_combout\,
	combout => \CPU|Selector109~0_combout\);

-- Location: LCCOMB_X24_Y12_N20
\CPU|Y_Register[14]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[14]~15_combout\ = (\CPU|StepCounter\(3)) # ((\CPU|StepCounter\(1) $ (\CPU|StepCounter\(0))) # (!\CPU|StepCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(1),
	datab => \CPU|StepCounter\(3),
	datac => \CPU|StepCounter\(2),
	datad => \CPU|StepCounter\(0),
	combout => \CPU|Y_Register[14]~15_combout\);

-- Location: LCCOMB_X24_Y14_N14
\CPU|Y_Register[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[14]~21_combout\ = (\CPU|INST_Register\(2) & ((\CPU|INST_Register\(1) & (\CPU|Y_Register[14]~15_combout\)) # (!\CPU|INST_Register\(1) & ((!\CPU|Decoder0~0_combout\))))) # (!\CPU|INST_Register\(2) & (((!\CPU|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(2),
	datab => \CPU|INST_Register\(1),
	datac => \CPU|Y_Register[14]~15_combout\,
	datad => \CPU|Decoder0~0_combout\,
	combout => \CPU|Y_Register[14]~21_combout\);

-- Location: LCCOMB_X24_Y14_N26
\CPU|Y_Register[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[15]~16_combout\ = (\CPU|INST_Register\(5) & ((\CPU|Y_Register[14]~21_combout\) # ((\CPU|MemoryPointer[1]~57_combout\ & !\CPU|StepCounter[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer[1]~57_combout\,
	datab => \CPU|Y_Register[14]~21_combout\,
	datac => \CPU|INST_Register\(5),
	datad => \CPU|StepCounter[0]~28_combout\,
	combout => \CPU|Y_Register[15]~16_combout\);

-- Location: LCCOMB_X24_Y14_N16
\CPU|Y_Register[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[15]~17_combout\ = (!\CPU|INST_Register\(0) & ((\CPU|Y_Register[15]~16_combout\) # (!\CPU|Y_Register[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|Y_Register[0]~11_combout\,
	datac => \CPU|Y_Register[15]~16_combout\,
	combout => \CPU|Y_Register[15]~17_combout\);

-- Location: LCCOMB_X25_Y14_N22
\CPU|Y_Register[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Y_Register[15]~18_combout\ = (\CPU|Y_Register[15]~13_combout\ & ((\CPU|INST_Register\(3)) # ((!\CPU|Y_Register[15]~17_combout\ & !\CPU|Y_Register[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|Y_Register[15]~13_combout\,
	datac => \CPU|Y_Register[15]~17_combout\,
	datad => \CPU|Y_Register[0]~8_combout\,
	combout => \CPU|Y_Register[15]~18_combout\);

-- Location: FF_X25_Y14_N13
\CPU|Y_Register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CPU|Selector109~0_combout\,
	sload => VCC,
	ena => \CPU|Y_Register[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(8));

-- Location: LCCOMB_X24_Y15_N24
\CPU|Selector158~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~7_combout\ = (\CPU|StepCounter\(1) & ((\CPU|StepCounter\(0) & (\CPU|Y_Register\(8))) # (!\CPU|StepCounter\(0) & ((\CPU|Y_Register\(0)))))) # (!\CPU|StepCounter\(1) & ((\CPU|StepCounter\(0) & ((\CPU|Y_Register\(0)))) # 
-- (!\CPU|StepCounter\(0) & (\CPU|Y_Register\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(1),
	datab => \CPU|Y_Register\(8),
	datac => \CPU|StepCounter\(0),
	datad => \CPU|Y_Register\(0),
	combout => \CPU|Selector158~7_combout\);

-- Location: LCCOMB_X25_Y15_N24
\CPU|Selector158~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~9_combout\ = (\CPU|Selector158~8_combout\ & ((\CPU|Selector158~7_combout\))) # (!\CPU|Selector158~8_combout\ & (\CPU|MemoryBuffer\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryBuffer\(0),
	datac => \CPU|Selector158~8_combout\,
	datad => \CPU|Selector158~7_combout\,
	combout => \CPU|Selector158~9_combout\);

-- Location: LCCOMB_X25_Y15_N18
\CPU|Selector158~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector158~10_combout\ = (\CPU|Selector158~6_combout\ & (((\CPU|Selector158~9_combout\) # (!\CPU|INST_Register\(5))))) # (!\CPU|Selector158~6_combout\ & (\CPU|MemoryBuffer\(0) & (\CPU|INST_Register\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Selector158~6_combout\,
	datab => \CPU|MemoryBuffer\(0),
	datac => \CPU|INST_Register\(5),
	datad => \CPU|Selector158~9_combout\,
	combout => \CPU|Selector158~10_combout\);

-- Location: LCCOMB_X25_Y15_N14
\CPU|MemoryBuffer[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[0]~3_combout\ = (\CPU|A_Register[6]~12_combout\ & ((\CPU|Selector158~10_combout\))) # (!\CPU|A_Register[6]~12_combout\ & (\CPU|MemoryBuffer\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[6]~12_combout\,
	datac => \CPU|MemoryBuffer\(0),
	datad => \CPU|Selector158~10_combout\,
	combout => \CPU|MemoryBuffer[0]~3_combout\);

-- Location: FF_X25_Y15_N15
\CPU|MemoryBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|MemoryBuffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryBuffer\(0));

-- Location: LCCOMB_X24_Y11_N22
\CPU|MemoryPointer[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryPointer[1]~55_combout\ = (!\CPU|INST_Register\(6) & !\CPU|INST_Register\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(6),
	datad => \CPU|INST_Register\(7),
	combout => \CPU|MemoryPointer[1]~55_combout\);

-- Location: LCCOMB_X24_Y11_N14
\CPU|regRw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|regRw~0_combout\ = (\CPU|regRw~q\ & ((\CPU|INST_Register[0]~0_combout\) # ((!\CPU|MemoryPointer[1]~55_combout\ & !\CPU|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register[0]~0_combout\,
	datab => \CPU|regRw~q\,
	datac => \CPU|MemoryPointer[1]~55_combout\,
	datad => \CPU|LessThan0~0_combout\,
	combout => \CPU|regRw~0_combout\);

-- Location: LCCOMB_X23_Y11_N8
\CPU|Selector150~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector150~6_combout\ = (!\CPU|StepCounter\(3) & ((\CPU|StepCounter\(2) & ((\CPU|regRw~q\) # (\CPU|StepCounter\(1)))) # (!\CPU|StepCounter\(2) & (\CPU|regRw~q\ & \CPU|StepCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(3),
	datab => \CPU|StepCounter\(2),
	datac => \CPU|regRw~q\,
	datad => \CPU|StepCounter\(1),
	combout => \CPU|Selector150~6_combout\);

-- Location: LCCOMB_X22_Y11_N14
\CPU|Selector150~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector150~9_combout\ = (\CPU|INST_Register\(2) & (!\CPU|INST_Register\(3) & (\CPU|INST_Register\(0) $ (\CPU|INST_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(3),
	datad => \CPU|INST_Register\(1),
	combout => \CPU|Selector150~9_combout\);

-- Location: LCCOMB_X23_Y11_N26
\CPU|Selector150~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector150~10_combout\ = (\CPU|INST_Register\(4) & (\CPU|INST_Register\(0))) # (!\CPU|INST_Register\(4) & ((\CPU|INST_Register\(5) & (\CPU|INST_Register\(0))) # (!\CPU|INST_Register\(5) & ((\CPU|Selector150~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|INST_Register\(0),
	datac => \CPU|INST_Register\(5),
	datad => \CPU|Selector150~9_combout\,
	combout => \CPU|Selector150~10_combout\);

-- Location: LCCOMB_X23_Y11_N18
\CPU|Selector150~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector150~7_combout\ = (\CPU|Selector150~10_combout\ & (\CPU|Selector150~6_combout\ & ((\CPU|regRw~q\) # (!\CPU|StepCounter\(0))))) # (!\CPU|Selector150~10_combout\ & (\CPU|regRw~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|regRw~q\,
	datab => \CPU|Selector150~6_combout\,
	datac => \CPU|Selector150~10_combout\,
	datad => \CPU|StepCounter\(0),
	combout => \CPU|Selector150~7_combout\);

-- Location: LCCOMB_X24_Y11_N4
\CPU|Selector150~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector150~3_combout\ = (!\CPU|INST_Register\(1) & (\CPU|INST_Register\(2) & (\CPU|INST_Register\(4) & !\CPU|INST_Register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(4),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|Selector150~3_combout\);

-- Location: LCCOMB_X23_Y11_N30
\CPU|Selector150~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector150~4_combout\ = (\CPU|StepCounter\(2) & ((\CPU|regRw~q\) # ((!\CPU|StepCounter\(0) & \CPU|StepCounter\(1))))) # (!\CPU|StepCounter\(2) & (((\CPU|regRw~q\ & \CPU|StepCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(0),
	datab => \CPU|StepCounter\(2),
	datac => \CPU|regRw~q\,
	datad => \CPU|StepCounter\(1),
	combout => \CPU|Selector150~4_combout\);

-- Location: LCCOMB_X24_Y11_N20
\CPU|Selector150~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector150~5_combout\ = (\CPU|Selector150~3_combout\ & ((\CPU|StepCounter\(3) & (\CPU|regRw~q\ & !\CPU|Selector150~4_combout\)) # (!\CPU|StepCounter\(3) & ((\CPU|Selector150~4_combout\))))) # (!\CPU|Selector150~3_combout\ & (((\CPU|regRw~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StepCounter\(3),
	datab => \CPU|regRw~q\,
	datac => \CPU|Selector150~3_combout\,
	datad => \CPU|Selector150~4_combout\,
	combout => \CPU|Selector150~5_combout\);

-- Location: LCCOMB_X24_Y11_N18
\CPU|Selector150~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector150~8_combout\ = (\CPU|INST_Register\(5) & ((\CPU|Selector150~10_combout\ & ((\CPU|Selector150~5_combout\))) # (!\CPU|Selector150~10_combout\ & (\CPU|Selector150~7_combout\)))) # (!\CPU|INST_Register\(5) & (\CPU|Selector150~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|Selector150~7_combout\,
	datac => \CPU|Selector150~10_combout\,
	datad => \CPU|Selector150~5_combout\,
	combout => \CPU|Selector150~8_combout\);

-- Location: LCCOMB_X24_Y11_N28
\CPU|regRw~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|regRw~1_combout\ = (\CPU|regRw~0_combout\) # ((\CPU|A_Register[6]~12_combout\ & \CPU|Selector150~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[6]~12_combout\,
	datab => \CPU|regRw~0_combout\,
	datad => \CPU|Selector150~8_combout\,
	combout => \CPU|regRw~1_combout\);

-- Location: FF_X24_Y11_N29
\CPU|regRw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|regRw~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|regRw~q\);

-- Location: LCCOMB_X23_Y12_N12
\CPU|MemoryBuffer[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~5_combout\ = ((\CPU|INST_Register\(4) & (\CPU|Add0~0_combout\ & !\CPU|Add0~1_combout\))) # (!\CPU|INST_Register\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|INST_Register\(4),
	datac => \CPU|Add0~0_combout\,
	datad => \CPU|Add0~1_combout\,
	combout => \CPU|MemoryBuffer[4]~5_combout\);

-- Location: LCCOMB_X23_Y12_N14
\CPU|MemoryBuffer[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~6_combout\ = (\CPU|INST_Register\(0) & (((!\CPU|INST_Register\(1) & \CPU|MemoryBuffer[4]~5_combout\)))) # (!\CPU|INST_Register\(0) & (\CPU|MemoryPointer[1]~2_combout\ & (\CPU|INST_Register\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|MemoryPointer[1]~2_combout\,
	datac => \CPU|INST_Register\(1),
	datad => \CPU|MemoryBuffer[4]~5_combout\,
	combout => \CPU|MemoryBuffer[4]~6_combout\);

-- Location: LCCOMB_X23_Y12_N18
\CPU|MemoryBuffer[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~4_combout\ = (\CPU|MemoryPointer[1]~55_combout\ & ((\CPU|INST_Register\(5) & ((\CPU|StepCounter\(0)))) # (!\CPU|INST_Register\(5) & (\CPU|Decoder0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder0~1_combout\,
	datab => \CPU|StepCounter\(0),
	datac => \CPU|MemoryPointer[1]~55_combout\,
	datad => \CPU|INST_Register\(5),
	combout => \CPU|MemoryBuffer[4]~4_combout\);

-- Location: LCCOMB_X23_Y12_N28
\CPU|MemoryBuffer[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~7_combout\ = (\CPU|MemoryBuffer[4]~4_combout\ & ((\CPU|MemoryPointer[1]~33_combout\) # ((\CPU|Selector150~2_combout\ & \CPU|MemoryBuffer[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Selector150~2_combout\,
	datab => \CPU|MemoryBuffer[4]~6_combout\,
	datac => \CPU|MemoryPointer[1]~33_combout\,
	datad => \CPU|MemoryBuffer[4]~4_combout\,
	combout => \CPU|MemoryBuffer[4]~7_combout\);

-- Location: LCCOMB_X26_Y11_N6
\CPU|MemoryBuffer[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~2_combout\ = (!\CPU|INST_Register\(2) & \CPU|INST_Register\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(0),
	combout => \CPU|MemoryBuffer[4]~2_combout\);

-- Location: LCCOMB_X26_Y11_N0
\CPU|MemoryBuffer[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~9_combout\ = (\CPU|INST_Register\(4) & ((\CPU|INST_Register\(1) & (!\CPU|INST_Register\(3))) # (!\CPU|INST_Register\(1) & ((\CPU|MemoryBuffer[4]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|INST_Register\(3),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|MemoryBuffer[4]~2_combout\,
	combout => \CPU|MemoryBuffer[4]~9_combout\);

-- Location: LCCOMB_X26_Y12_N4
\CPU|MemoryBuffer[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~10_combout\ = (!\CPU|INST_Register\(3) & (\CPU|INST_Register\(4) & ((\CPU|INST_Register\(2)) # (!\CPU|INST_Register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(0),
	datab => \CPU|INST_Register\(3),
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(4),
	combout => \CPU|MemoryBuffer[4]~10_combout\);

-- Location: LCCOMB_X28_Y12_N16
\CPU|MemoryBuffer[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~11_combout\ = (\CPU|INST_Register\(3) & ((\CPU|INST_Register\(1)) # (!\CPU|INST_Register\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|MemoryBuffer[4]~11_combout\);

-- Location: LCCOMB_X28_Y12_N14
\CPU|MemoryBuffer[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~12_combout\ = (\CPU|INST_Register\(2) & \CPU|INST_Register\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INST_Register\(2),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|MemoryBuffer[4]~12_combout\);

-- Location: LCCOMB_X26_Y12_N16
\CPU|Selector157~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector157~0_combout\ = (\CPU|MemoryBuffer[4]~11_combout\ & (((\CPU|MemoryBuffer[4]~12_combout\)))) # (!\CPU|MemoryBuffer[4]~11_combout\ & ((\CPU|MemoryBuffer[4]~12_combout\ & ((\CPU|SL_Register\(1)))) # (!\CPU|MemoryBuffer[4]~12_combout\ & 
-- (\CPU|A_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryBuffer[4]~11_combout\,
	datab => \CPU|A_Register\(1),
	datac => \CPU|SL_Register\(1),
	datad => \CPU|MemoryBuffer[4]~12_combout\,
	combout => \CPU|Selector157~0_combout\);

-- Location: LCCOMB_X26_Y12_N14
\CPU|Selector157~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector157~1_combout\ = (\CPU|MemoryBuffer[4]~11_combout\ & ((\CPU|Selector157~0_combout\ & ((\CPU|SR_Register\(1)))) # (!\CPU|Selector157~0_combout\ & (\CPU|XOR_Register\(1))))) # (!\CPU|MemoryBuffer[4]~11_combout\ & 
-- (((\CPU|Selector157~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|XOR_Register\(1),
	datab => \CPU|MemoryBuffer[4]~11_combout\,
	datac => \CPU|SR_Register\(1),
	datad => \CPU|Selector157~0_combout\,
	combout => \CPU|Selector157~1_combout\);

-- Location: LCCOMB_X26_Y12_N24
\CPU|Selector157~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector157~2_combout\ = (\CPU|MemoryBuffer[4]~10_combout\ & ((\CPU|OR_Register\(1)) # ((\CPU|MemoryBuffer[4]~9_combout\)))) # (!\CPU|MemoryBuffer[4]~10_combout\ & (((\CPU|Selector157~1_combout\ & !\CPU|MemoryBuffer[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryBuffer[4]~10_combout\,
	datab => \CPU|OR_Register\(1),
	datac => \CPU|Selector157~1_combout\,
	datad => \CPU|MemoryBuffer[4]~9_combout\,
	combout => \CPU|Selector157~2_combout\);

-- Location: LCCOMB_X26_Y12_N30
\CPU|Selector157~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector157~3_combout\ = (\CPU|MemoryBuffer[4]~9_combout\ & ((\CPU|Selector157~2_combout\ & (\CPU|AND_Register\(1))) # (!\CPU|Selector157~2_combout\ & ((\CPU|SUM_Register\(1)))))) # (!\CPU|MemoryBuffer[4]~9_combout\ & 
-- (((\CPU|Selector157~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|AND_Register\(1),
	datab => \CPU|MemoryBuffer[4]~9_combout\,
	datac => \CPU|SUM_Register\(1),
	datad => \CPU|Selector157~2_combout\,
	combout => \CPU|Selector157~3_combout\);

-- Location: LCCOMB_X22_Y14_N14
\CPU|MemoryBuffer[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~28_combout\ = ((\CPU|INST_Register\(5) & (\CPU|StepCounter\(1) $ (\CPU|StepCounter\(0))))) # (!\CPU|MemoryBuffer[4]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|StepCounter\(1),
	datac => \CPU|StepCounter\(0),
	datad => \CPU|MemoryBuffer[4]~7_combout\,
	combout => \CPU|MemoryBuffer[4]~28_combout\);

-- Location: LCCOMB_X25_Y14_N2
\CPU|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add4~2_combout\ = (\CPU|dataReg\(1) & ((\CPU|Y_Register\(9) & (\CPU|Add4~1\ & VCC)) # (!\CPU|Y_Register\(9) & (!\CPU|Add4~1\)))) # (!\CPU|dataReg\(1) & ((\CPU|Y_Register\(9) & (!\CPU|Add4~1\)) # (!\CPU|Y_Register\(9) & ((\CPU|Add4~1\) # (GND)))))
-- \CPU|Add4~3\ = CARRY((\CPU|dataReg\(1) & (!\CPU|Y_Register\(9) & !\CPU|Add4~1\)) # (!\CPU|dataReg\(1) & ((!\CPU|Add4~1\) # (!\CPU|Y_Register\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(1),
	datab => \CPU|Y_Register\(9),
	datad => VCC,
	cin => \CPU|Add4~1\,
	combout => \CPU|Add4~2_combout\,
	cout => \CPU|Add4~3\);

-- Location: LCCOMB_X22_Y17_N18
\CPU|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~18_combout\ = (\CPU|MemoryPointer\(9) & (!\CPU|Add5~17\)) # (!\CPU|MemoryPointer\(9) & ((\CPU|Add5~17\) # (GND)))
-- \CPU|Add5~19\ = CARRY((!\CPU|Add5~17\) # (!\CPU|MemoryPointer\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(9),
	datad => VCC,
	cin => \CPU|Add5~17\,
	combout => \CPU|Add5~18_combout\,
	cout => \CPU|Add5~19\);

-- Location: LCCOMB_X21_Y14_N18
\CPU|StackPointer[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[9]~37_combout\ = (\CPU|StackPointer\(9) & ((\CPU|INST_Register\(1) & (!\CPU|StackPointer[8]~36\)) # (!\CPU|INST_Register\(1) & (\CPU|StackPointer[8]~36\ & VCC)))) # (!\CPU|StackPointer\(9) & ((\CPU|INST_Register\(1) & 
-- ((\CPU|StackPointer[8]~36\) # (GND))) # (!\CPU|INST_Register\(1) & (!\CPU|StackPointer[8]~36\))))
-- \CPU|StackPointer[9]~38\ = CARRY((\CPU|StackPointer\(9) & (\CPU|INST_Register\(1) & !\CPU|StackPointer[8]~36\)) # (!\CPU|StackPointer\(9) & ((\CPU|INST_Register\(1)) # (!\CPU|StackPointer[8]~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(9),
	datab => \CPU|INST_Register\(1),
	datad => VCC,
	cin => \CPU|StackPointer[8]~36\,
	combout => \CPU|StackPointer[9]~37_combout\,
	cout => \CPU|StackPointer[9]~38\);

-- Location: FF_X21_Y14_N19
\CPU|StackPointer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[9]~37_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(9));

-- Location: LCCOMB_X21_Y12_N18
\CPU|X_Register[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[9]~45_combout\ = (\CPU|X_Register\(9) & (!\CPU|X_Register[8]~44\)) # (!\CPU|X_Register\(9) & ((\CPU|X_Register[8]~44\) # (GND)))
-- \CPU|X_Register[9]~46\ = CARRY((!\CPU|X_Register[8]~44\) # (!\CPU|X_Register\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|X_Register\(9),
	datad => VCC,
	cin => \CPU|X_Register[8]~44\,
	combout => \CPU|X_Register[9]~45_combout\,
	cout => \CPU|X_Register[9]~46\);

-- Location: FF_X21_Y12_N19
\CPU|X_Register[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[9]~45_combout\,
	asdata => \CPU|dataReg\(1),
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(9));

-- Location: LCCOMB_X21_Y13_N16
\CPU|Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector88~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|MemoryPointer[1]~41_combout\)))) # (!\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|X_Register\(9)))) # (!\CPU|MemoryPointer[1]~41_combout\ & 
-- (\CPU|StackPointer\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(9),
	datab => \CPU|X_Register\(9),
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|MemoryPointer[1]~41_combout\,
	combout => \CPU|Selector88~0_combout\);

-- Location: LCCOMB_X21_Y13_N24
\CPU|Selector88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector88~1_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|Selector88~0_combout\ & ((\CPU|Add5~18_combout\))) # (!\CPU|Selector88~0_combout\ & (\CPU|Y_Register\(9))))) # (!\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|Selector88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(9),
	datab => \CPU|Add5~18_combout\,
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|Selector88~0_combout\,
	combout => \CPU|Selector88~1_combout\);

-- Location: FF_X21_Y13_N25
\CPU|MemoryPointer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector88~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(9));

-- Location: LCCOMB_X25_Y14_N24
\CPU|Selector108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector108~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (((\CPU|MemoryPointer\(9))))) # (!\CPU|Y_Register[0]~6_combout\ & (\CPU|Add4~2_combout\ & (\CPU|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register[0]~6_combout\,
	datab => \CPU|Add4~2_combout\,
	datac => \CPU|Add0~0_combout\,
	datad => \CPU|MemoryPointer\(9),
	combout => \CPU|Selector108~0_combout\);

-- Location: FF_X25_Y14_N25
\CPU|Y_Register[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector108~0_combout\,
	ena => \CPU|Y_Register[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(9));

-- Location: LCCOMB_X22_Y14_N24
\CPU|MemoryBuffer[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[1]~8_combout\ = (\CPU|MemoryBuffer[4]~28_combout\ & ((\CPU|Y_Register\(1)))) # (!\CPU|MemoryBuffer[4]~28_combout\ & (\CPU|Y_Register\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryBuffer[4]~28_combout\,
	datac => \CPU|Y_Register\(9),
	datad => \CPU|Y_Register\(1),
	combout => \CPU|MemoryBuffer[1]~8_combout\);

-- Location: LCCOMB_X22_Y14_N4
\CPU|MemoryBuffer[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[1]~13_combout\ = (\CPU|INST_Register\(5) & ((\CPU|MemoryBuffer[4]~7_combout\ & ((\CPU|MemoryBuffer[1]~8_combout\))) # (!\CPU|MemoryBuffer[4]~7_combout\ & (\CPU|Selector157~3_combout\)))) # (!\CPU|INST_Register\(5) & 
-- (((\CPU|Selector157~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|MemoryBuffer[4]~7_combout\,
	datac => \CPU|Selector157~3_combout\,
	datad => \CPU|MemoryBuffer[1]~8_combout\,
	combout => \CPU|MemoryBuffer[1]~13_combout\);

-- Location: LCCOMB_X22_Y14_N26
\CPU|MemoryBuffer[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[6]~14_combout\ = (!\CPU|LessThan0~0_combout\ & \CPU|MemoryBuffer[4]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|LessThan0~0_combout\,
	datad => \CPU|MemoryBuffer[4]~7_combout\,
	combout => \CPU|MemoryBuffer[6]~14_combout\);

-- Location: FF_X22_Y14_N5
\CPU|MemoryBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|MemoryBuffer[1]~13_combout\,
	ena => \CPU|MemoryBuffer[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryBuffer\(1));

-- Location: LCCOMB_X21_Y12_N20
\CPU|X_Register[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[10]~47_combout\ = (\CPU|X_Register\(10) & (\CPU|X_Register[9]~46\ $ (GND))) # (!\CPU|X_Register\(10) & (!\CPU|X_Register[9]~46\ & VCC))
-- \CPU|X_Register[10]~48\ = CARRY((\CPU|X_Register\(10) & !\CPU|X_Register[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|X_Register\(10),
	datad => VCC,
	cin => \CPU|X_Register[9]~46\,
	combout => \CPU|X_Register[10]~47_combout\,
	cout => \CPU|X_Register[10]~48\);

-- Location: FF_X21_Y12_N21
\CPU|X_Register[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[10]~47_combout\,
	asdata => \CPU|dataReg\(2),
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(10));

-- Location: LCCOMB_X22_Y17_N20
\CPU|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~20_combout\ = (\CPU|MemoryPointer\(10) & (\CPU|Add5~19\ $ (GND))) # (!\CPU|MemoryPointer\(10) & (!\CPU|Add5~19\ & VCC))
-- \CPU|Add5~21\ = CARRY((\CPU|MemoryPointer\(10) & !\CPU|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryPointer\(10),
	datad => VCC,
	cin => \CPU|Add5~19\,
	combout => \CPU|Add5~20_combout\,
	cout => \CPU|Add5~21\);

-- Location: LCCOMB_X21_Y14_N20
\CPU|StackPointer[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[10]~39_combout\ = ((\CPU|StackPointer\(10) $ (\CPU|INST_Register\(1) $ (\CPU|StackPointer[9]~38\)))) # (GND)
-- \CPU|StackPointer[10]~40\ = CARRY((\CPU|StackPointer\(10) & ((!\CPU|StackPointer[9]~38\) # (!\CPU|INST_Register\(1)))) # (!\CPU|StackPointer\(10) & (!\CPU|INST_Register\(1) & !\CPU|StackPointer[9]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(10),
	datab => \CPU|INST_Register\(1),
	datad => VCC,
	cin => \CPU|StackPointer[9]~38\,
	combout => \CPU|StackPointer[10]~39_combout\,
	cout => \CPU|StackPointer[10]~40\);

-- Location: FF_X21_Y14_N21
\CPU|StackPointer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[10]~39_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(10));

-- Location: LCCOMB_X21_Y13_N10
\CPU|Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector87~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|Y_Register\(10)) # (\CPU|MemoryPointer[1]~41_combout\)))) # (!\CPU|MemoryPointer[1]~39_combout\ & (\CPU|StackPointer\(10) & ((!\CPU|MemoryPointer[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(10),
	datab => \CPU|Y_Register\(10),
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|MemoryPointer[1]~41_combout\,
	combout => \CPU|Selector87~0_combout\);

-- Location: LCCOMB_X21_Y13_N22
\CPU|Selector87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector87~1_combout\ = (\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|Selector87~0_combout\ & ((\CPU|Add5~20_combout\))) # (!\CPU|Selector87~0_combout\ & (\CPU|X_Register\(10))))) # (!\CPU|MemoryPointer[1]~41_combout\ & 
-- (((\CPU|Selector87~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(10),
	datab => \CPU|Add5~20_combout\,
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|Selector87~0_combout\,
	combout => \CPU|Selector87~1_combout\);

-- Location: FF_X21_Y13_N23
\CPU|MemoryPointer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector87~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(10));

-- Location: LCCOMB_X25_Y14_N4
\CPU|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add4~4_combout\ = ((\CPU|Y_Register\(10) $ (\CPU|dataReg\(2) $ (!\CPU|Add4~3\)))) # (GND)
-- \CPU|Add4~5\ = CARRY((\CPU|Y_Register\(10) & ((\CPU|dataReg\(2)) # (!\CPU|Add4~3\))) # (!\CPU|Y_Register\(10) & (\CPU|dataReg\(2) & !\CPU|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(10),
	datab => \CPU|dataReg\(2),
	datad => VCC,
	cin => \CPU|Add4~3\,
	combout => \CPU|Add4~4_combout\,
	cout => \CPU|Add4~5\);

-- Location: LCCOMB_X25_Y14_N30
\CPU|Selector107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector107~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (\CPU|MemoryPointer\(10))) # (!\CPU|Y_Register[0]~6_combout\ & (((\CPU|Add4~4_combout\ & \CPU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(10),
	datab => \CPU|Add4~4_combout\,
	datac => \CPU|Add0~0_combout\,
	datad => \CPU|Y_Register[0]~6_combout\,
	combout => \CPU|Selector107~0_combout\);

-- Location: FF_X25_Y14_N31
\CPU|Y_Register[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector107~0_combout\,
	ena => \CPU|Y_Register[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(10));

-- Location: LCCOMB_X22_Y14_N8
\CPU|MemoryBuffer[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[2]~15_combout\ = (\CPU|MemoryBuffer[4]~28_combout\ & (\CPU|Y_Register\(2))) # (!\CPU|MemoryBuffer[4]~28_combout\ & ((\CPU|Y_Register\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Y_Register\(2),
	datac => \CPU|MemoryBuffer[4]~28_combout\,
	datad => \CPU|Y_Register\(10),
	combout => \CPU|MemoryBuffer[2]~15_combout\);

-- Location: LCCOMB_X29_Y12_N18
\CPU|Selector156~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector156~0_combout\ = (\CPU|MemoryBuffer[4]~11_combout\ & ((\CPU|XOR_Register\(2)) # ((\CPU|MemoryBuffer[4]~12_combout\)))) # (!\CPU|MemoryBuffer[4]~11_combout\ & (((\CPU|A_Register\(2) & !\CPU|MemoryBuffer[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|XOR_Register\(2),
	datab => \CPU|A_Register\(2),
	datac => \CPU|MemoryBuffer[4]~11_combout\,
	datad => \CPU|MemoryBuffer[4]~12_combout\,
	combout => \CPU|Selector156~0_combout\);

-- Location: LCCOMB_X29_Y12_N0
\CPU|Selector156~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector156~1_combout\ = (\CPU|MemoryBuffer[4]~12_combout\ & ((\CPU|Selector156~0_combout\ & (\CPU|SR_Register\(2))) # (!\CPU|Selector156~0_combout\ & ((\CPU|SR_Register\(0)))))) # (!\CPU|MemoryBuffer[4]~12_combout\ & 
-- (((\CPU|Selector156~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryBuffer[4]~12_combout\,
	datab => \CPU|SR_Register\(2),
	datac => \CPU|SR_Register\(0),
	datad => \CPU|Selector156~0_combout\,
	combout => \CPU|Selector156~1_combout\);

-- Location: LCCOMB_X26_Y12_N12
\CPU|Selector156~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector156~2_combout\ = (\CPU|MemoryBuffer[4]~10_combout\ & (((\CPU|MemoryBuffer[4]~9_combout\)))) # (!\CPU|MemoryBuffer[4]~10_combout\ & ((\CPU|MemoryBuffer[4]~9_combout\ & (\CPU|SUM_Register\(2))) # (!\CPU|MemoryBuffer[4]~9_combout\ & 
-- ((\CPU|Selector156~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SUM_Register\(2),
	datab => \CPU|MemoryBuffer[4]~10_combout\,
	datac => \CPU|Selector156~1_combout\,
	datad => \CPU|MemoryBuffer[4]~9_combout\,
	combout => \CPU|Selector156~2_combout\);

-- Location: LCCOMB_X26_Y12_N2
\CPU|Selector156~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector156~3_combout\ = (\CPU|MemoryBuffer[4]~10_combout\ & ((\CPU|Selector156~2_combout\ & ((\CPU|AND_Register\(2)))) # (!\CPU|Selector156~2_combout\ & (\CPU|OR_Register\(2))))) # (!\CPU|MemoryBuffer[4]~10_combout\ & 
-- (((\CPU|Selector156~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|OR_Register\(2),
	datab => \CPU|AND_Register\(2),
	datac => \CPU|MemoryBuffer[4]~10_combout\,
	datad => \CPU|Selector156~2_combout\,
	combout => \CPU|Selector156~3_combout\);

-- Location: LCCOMB_X22_Y14_N18
\CPU|MemoryBuffer[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[2]~16_combout\ = (\CPU|INST_Register\(5) & ((\CPU|MemoryBuffer[4]~7_combout\ & (\CPU|MemoryBuffer[2]~15_combout\)) # (!\CPU|MemoryBuffer[4]~7_combout\ & ((\CPU|Selector156~3_combout\))))) # (!\CPU|INST_Register\(5) & 
-- (((\CPU|Selector156~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|MemoryBuffer[4]~7_combout\,
	datac => \CPU|MemoryBuffer[2]~15_combout\,
	datad => \CPU|Selector156~3_combout\,
	combout => \CPU|MemoryBuffer[2]~16_combout\);

-- Location: FF_X22_Y14_N19
\CPU|MemoryBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|MemoryBuffer[2]~16_combout\,
	ena => \CPU|MemoryBuffer[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryBuffer\(2));

-- Location: LCCOMB_X28_Y14_N2
\CPU|Selector155~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector155~0_combout\ = (\CPU|MemoryBuffer[4]~12_combout\ & ((\CPU|SR_Register\(1)) # ((\CPU|MemoryBuffer[4]~11_combout\)))) # (!\CPU|MemoryBuffer[4]~12_combout\ & (((\CPU|A_Register\(3) & !\CPU|MemoryBuffer[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SR_Register\(1),
	datab => \CPU|A_Register\(3),
	datac => \CPU|MemoryBuffer[4]~12_combout\,
	datad => \CPU|MemoryBuffer[4]~11_combout\,
	combout => \CPU|Selector155~0_combout\);

-- Location: LCCOMB_X28_Y14_N4
\CPU|Selector155~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector155~1_combout\ = (\CPU|MemoryBuffer[4]~11_combout\ & ((\CPU|Selector155~0_combout\ & (\CPU|SR_Register\(3))) # (!\CPU|Selector155~0_combout\ & ((\CPU|XOR_Register\(3)))))) # (!\CPU|MemoryBuffer[4]~11_combout\ & 
-- (((\CPU|Selector155~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SR_Register\(3),
	datab => \CPU|XOR_Register\(3),
	datac => \CPU|MemoryBuffer[4]~11_combout\,
	datad => \CPU|Selector155~0_combout\,
	combout => \CPU|Selector155~1_combout\);

-- Location: LCCOMB_X28_Y14_N6
\CPU|Selector155~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector155~2_combout\ = (\CPU|MemoryBuffer[4]~10_combout\ & ((\CPU|OR_Register\(3)) # ((\CPU|MemoryBuffer[4]~9_combout\)))) # (!\CPU|MemoryBuffer[4]~10_combout\ & (((\CPU|Selector155~1_combout\ & !\CPU|MemoryBuffer[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryBuffer[4]~10_combout\,
	datab => \CPU|OR_Register\(3),
	datac => \CPU|Selector155~1_combout\,
	datad => \CPU|MemoryBuffer[4]~9_combout\,
	combout => \CPU|Selector155~2_combout\);

-- Location: LCCOMB_X28_Y14_N24
\CPU|Selector155~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector155~3_combout\ = (\CPU|MemoryBuffer[4]~9_combout\ & ((\CPU|Selector155~2_combout\ & (\CPU|AND_Register\(3))) # (!\CPU|Selector155~2_combout\ & ((\CPU|SUM_Register\(3)))))) # (!\CPU|MemoryBuffer[4]~9_combout\ & 
-- (((\CPU|Selector155~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|AND_Register\(3),
	datab => \CPU|SUM_Register\(3),
	datac => \CPU|MemoryBuffer[4]~9_combout\,
	datad => \CPU|Selector155~2_combout\,
	combout => \CPU|Selector155~3_combout\);

-- Location: LCCOMB_X22_Y17_N22
\CPU|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~22_combout\ = (\CPU|MemoryPointer\(11) & (!\CPU|Add5~21\)) # (!\CPU|MemoryPointer\(11) & ((\CPU|Add5~21\) # (GND)))
-- \CPU|Add5~23\ = CARRY((!\CPU|Add5~21\) # (!\CPU|MemoryPointer\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryPointer\(11),
	datad => VCC,
	cin => \CPU|Add5~21\,
	combout => \CPU|Add5~22_combout\,
	cout => \CPU|Add5~23\);

-- Location: LCCOMB_X21_Y14_N22
\CPU|StackPointer[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[11]~41_combout\ = (\CPU|StackPointer\(11) & ((\CPU|INST_Register\(1) & (!\CPU|StackPointer[10]~40\)) # (!\CPU|INST_Register\(1) & (\CPU|StackPointer[10]~40\ & VCC)))) # (!\CPU|StackPointer\(11) & ((\CPU|INST_Register\(1) & 
-- ((\CPU|StackPointer[10]~40\) # (GND))) # (!\CPU|INST_Register\(1) & (!\CPU|StackPointer[10]~40\))))
-- \CPU|StackPointer[11]~42\ = CARRY((\CPU|StackPointer\(11) & (\CPU|INST_Register\(1) & !\CPU|StackPointer[10]~40\)) # (!\CPU|StackPointer\(11) & ((\CPU|INST_Register\(1)) # (!\CPU|StackPointer[10]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(11),
	datab => \CPU|INST_Register\(1),
	datad => VCC,
	cin => \CPU|StackPointer[10]~40\,
	combout => \CPU|StackPointer[11]~41_combout\,
	cout => \CPU|StackPointer[11]~42\);

-- Location: FF_X21_Y14_N23
\CPU|StackPointer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[11]~41_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(11));

-- Location: LCCOMB_X21_Y12_N22
\CPU|X_Register[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[11]~49_combout\ = (\CPU|X_Register\(11) & (!\CPU|X_Register[10]~48\)) # (!\CPU|X_Register\(11) & ((\CPU|X_Register[10]~48\) # (GND)))
-- \CPU|X_Register[11]~50\ = CARRY((!\CPU|X_Register[10]~48\) # (!\CPU|X_Register\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(11),
	datad => VCC,
	cin => \CPU|X_Register[10]~48\,
	combout => \CPU|X_Register[11]~49_combout\,
	cout => \CPU|X_Register[11]~50\);

-- Location: FF_X21_Y12_N23
\CPU|X_Register[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[11]~49_combout\,
	asdata => \CPU|dataReg\(3),
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(11));

-- Location: LCCOMB_X23_Y13_N20
\CPU|Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector86~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|MemoryPointer[1]~41_combout\)))) # (!\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|X_Register\(11)))) # (!\CPU|MemoryPointer[1]~41_combout\ & 
-- (\CPU|StackPointer\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(11),
	datab => \CPU|MemoryPointer[1]~39_combout\,
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|X_Register\(11),
	combout => \CPU|Selector86~0_combout\);

-- Location: LCCOMB_X23_Y13_N12
\CPU|Selector86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector86~1_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|Selector86~0_combout\ & (\CPU|Add5~22_combout\)) # (!\CPU|Selector86~0_combout\ & ((\CPU|Y_Register\(11)))))) # (!\CPU|MemoryPointer[1]~39_combout\ & 
-- (((\CPU|Selector86~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Add5~22_combout\,
	datab => \CPU|MemoryPointer[1]~39_combout\,
	datac => \CPU|Y_Register\(11),
	datad => \CPU|Selector86~0_combout\,
	combout => \CPU|Selector86~1_combout\);

-- Location: FF_X23_Y13_N13
\CPU|MemoryPointer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector86~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(11));

-- Location: LCCOMB_X25_Y14_N6
\CPU|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add4~6_combout\ = (\CPU|dataReg\(3) & ((\CPU|Y_Register\(11) & (\CPU|Add4~5\ & VCC)) # (!\CPU|Y_Register\(11) & (!\CPU|Add4~5\)))) # (!\CPU|dataReg\(3) & ((\CPU|Y_Register\(11) & (!\CPU|Add4~5\)) # (!\CPU|Y_Register\(11) & ((\CPU|Add4~5\) # (GND)))))
-- \CPU|Add4~7\ = CARRY((\CPU|dataReg\(3) & (!\CPU|Y_Register\(11) & !\CPU|Add4~5\)) # (!\CPU|dataReg\(3) & ((!\CPU|Add4~5\) # (!\CPU|Y_Register\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(3),
	datab => \CPU|Y_Register\(11),
	datad => VCC,
	cin => \CPU|Add4~5\,
	combout => \CPU|Add4~6_combout\,
	cout => \CPU|Add4~7\);

-- Location: LCCOMB_X25_Y14_N28
\CPU|Selector106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector106~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (\CPU|MemoryPointer\(11))) # (!\CPU|Y_Register[0]~6_combout\ & (((\CPU|Add0~0_combout\ & \CPU|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register[0]~6_combout\,
	datab => \CPU|MemoryPointer\(11),
	datac => \CPU|Add0~0_combout\,
	datad => \CPU|Add4~6_combout\,
	combout => \CPU|Selector106~0_combout\);

-- Location: FF_X25_Y14_N29
\CPU|Y_Register[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector106~0_combout\,
	ena => \CPU|Y_Register[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(11));

-- Location: LCCOMB_X22_Y14_N2
\CPU|MemoryBuffer[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[3]~17_combout\ = (\CPU|MemoryBuffer[4]~28_combout\ & (\CPU|Y_Register\(3))) # (!\CPU|MemoryBuffer[4]~28_combout\ & ((\CPU|Y_Register\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(3),
	datac => \CPU|MemoryBuffer[4]~28_combout\,
	datad => \CPU|Y_Register\(11),
	combout => \CPU|MemoryBuffer[3]~17_combout\);

-- Location: LCCOMB_X22_Y14_N28
\CPU|MemoryBuffer[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[3]~18_combout\ = (\CPU|INST_Register\(5) & ((\CPU|MemoryBuffer[4]~7_combout\ & ((\CPU|MemoryBuffer[3]~17_combout\))) # (!\CPU|MemoryBuffer[4]~7_combout\ & (\CPU|Selector155~3_combout\)))) # (!\CPU|INST_Register\(5) & 
-- (((\CPU|Selector155~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|MemoryBuffer[4]~7_combout\,
	datac => \CPU|Selector155~3_combout\,
	datad => \CPU|MemoryBuffer[3]~17_combout\,
	combout => \CPU|MemoryBuffer[3]~18_combout\);

-- Location: FF_X22_Y14_N29
\CPU|MemoryBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|MemoryBuffer[3]~18_combout\,
	ena => \CPU|MemoryBuffer[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryBuffer\(3));

-- Location: LCCOMB_X22_Y17_N24
\CPU|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~24_combout\ = (\CPU|MemoryPointer\(12) & (\CPU|Add5~23\ $ (GND))) # (!\CPU|MemoryPointer\(12) & (!\CPU|Add5~23\ & VCC))
-- \CPU|Add5~25\ = CARRY((\CPU|MemoryPointer\(12) & !\CPU|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(12),
	datad => VCC,
	cin => \CPU|Add5~23\,
	combout => \CPU|Add5~24_combout\,
	cout => \CPU|Add5~25\);

-- Location: LCCOMB_X21_Y12_N24
\CPU|X_Register[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[12]~51_combout\ = (\CPU|X_Register\(12) & (\CPU|X_Register[11]~50\ $ (GND))) # (!\CPU|X_Register\(12) & (!\CPU|X_Register[11]~50\ & VCC))
-- \CPU|X_Register[12]~52\ = CARRY((\CPU|X_Register\(12) & !\CPU|X_Register[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|X_Register\(12),
	datad => VCC,
	cin => \CPU|X_Register[11]~50\,
	combout => \CPU|X_Register[12]~51_combout\,
	cout => \CPU|X_Register[12]~52\);

-- Location: FF_X21_Y12_N25
\CPU|X_Register[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[12]~51_combout\,
	asdata => \CPU|dataReg\(4),
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(12));

-- Location: LCCOMB_X21_Y14_N24
\CPU|StackPointer[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[12]~43_combout\ = ((\CPU|StackPointer\(12) $ (\CPU|INST_Register\(1) $ (\CPU|StackPointer[11]~42\)))) # (GND)
-- \CPU|StackPointer[12]~44\ = CARRY((\CPU|StackPointer\(12) & ((!\CPU|StackPointer[11]~42\) # (!\CPU|INST_Register\(1)))) # (!\CPU|StackPointer\(12) & (!\CPU|INST_Register\(1) & !\CPU|StackPointer[11]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(12),
	datab => \CPU|INST_Register\(1),
	datad => VCC,
	cin => \CPU|StackPointer[11]~42\,
	combout => \CPU|StackPointer[12]~43_combout\,
	cout => \CPU|StackPointer[12]~44\);

-- Location: FF_X21_Y14_N25
\CPU|StackPointer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[12]~43_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(12));

-- Location: LCCOMB_X23_Y13_N10
\CPU|Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector85~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|MemoryPointer[1]~41_combout\) # (\CPU|Y_Register\(12))))) # (!\CPU|MemoryPointer[1]~39_combout\ & (\CPU|StackPointer\(12) & (!\CPU|MemoryPointer[1]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(12),
	datab => \CPU|MemoryPointer[1]~39_combout\,
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|Y_Register\(12),
	combout => \CPU|Selector85~0_combout\);

-- Location: LCCOMB_X23_Y13_N30
\CPU|Selector85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector85~1_combout\ = (\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|Selector85~0_combout\ & (\CPU|Add5~24_combout\)) # (!\CPU|Selector85~0_combout\ & ((\CPU|X_Register\(12)))))) # (!\CPU|MemoryPointer[1]~41_combout\ & 
-- (((\CPU|Selector85~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Add5~24_combout\,
	datab => \CPU|X_Register\(12),
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|Selector85~0_combout\,
	combout => \CPU|Selector85~1_combout\);

-- Location: FF_X23_Y13_N31
\CPU|MemoryPointer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector85~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(12));

-- Location: LCCOMB_X25_Y14_N8
\CPU|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add4~8_combout\ = ((\CPU|dataReg\(4) $ (\CPU|Y_Register\(12) $ (!\CPU|Add4~7\)))) # (GND)
-- \CPU|Add4~9\ = CARRY((\CPU|dataReg\(4) & ((\CPU|Y_Register\(12)) # (!\CPU|Add4~7\))) # (!\CPU|dataReg\(4) & (\CPU|Y_Register\(12) & !\CPU|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(4),
	datab => \CPU|Y_Register\(12),
	datad => VCC,
	cin => \CPU|Add4~7\,
	combout => \CPU|Add4~8_combout\,
	cout => \CPU|Add4~9\);

-- Location: LCCOMB_X25_Y14_N18
\CPU|Selector105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector105~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (\CPU|MemoryPointer\(12))) # (!\CPU|Y_Register[0]~6_combout\ & (((\CPU|Add4~8_combout\ & \CPU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(12),
	datab => \CPU|Add4~8_combout\,
	datac => \CPU|Add0~0_combout\,
	datad => \CPU|Y_Register[0]~6_combout\,
	combout => \CPU|Selector105~0_combout\);

-- Location: FF_X25_Y14_N19
\CPU|Y_Register[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector105~0_combout\,
	ena => \CPU|Y_Register[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(12));

-- Location: LCCOMB_X22_Y14_N0
\CPU|MemoryBuffer[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~19_combout\ = (\CPU|MemoryBuffer[4]~28_combout\ & (\CPU|Y_Register\(4))) # (!\CPU|MemoryBuffer[4]~28_combout\ & ((\CPU|Y_Register\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(4),
	datab => \CPU|MemoryBuffer[4]~28_combout\,
	datad => \CPU|Y_Register\(12),
	combout => \CPU|MemoryBuffer[4]~19_combout\);

-- Location: LCCOMB_X29_Y14_N14
\CPU|Selector154~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector154~0_combout\ = (\CPU|MemoryBuffer[4]~11_combout\ & ((\CPU|XOR_Register\(4)) # ((\CPU|MemoryBuffer[4]~12_combout\)))) # (!\CPU|MemoryBuffer[4]~11_combout\ & (((\CPU|A_Register\(4) & !\CPU|MemoryBuffer[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|XOR_Register\(4),
	datab => \CPU|A_Register\(4),
	datac => \CPU|MemoryBuffer[4]~11_combout\,
	datad => \CPU|MemoryBuffer[4]~12_combout\,
	combout => \CPU|Selector154~0_combout\);

-- Location: LCCOMB_X29_Y14_N0
\CPU|Selector154~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector154~1_combout\ = (\CPU|Selector154~0_combout\ & ((\CPU|SR_Register\(4)) # ((!\CPU|MemoryBuffer[4]~12_combout\)))) # (!\CPU|Selector154~0_combout\ & (((\CPU|SR_Register\(2) & \CPU|MemoryBuffer[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SR_Register\(4),
	datab => \CPU|SR_Register\(2),
	datac => \CPU|Selector154~0_combout\,
	datad => \CPU|MemoryBuffer[4]~12_combout\,
	combout => \CPU|Selector154~1_combout\);

-- Location: LCCOMB_X29_Y14_N22
\CPU|Selector154~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector154~2_combout\ = (\CPU|MemoryBuffer[4]~10_combout\ & (((\CPU|MemoryBuffer[4]~9_combout\)))) # (!\CPU|MemoryBuffer[4]~10_combout\ & ((\CPU|MemoryBuffer[4]~9_combout\ & (\CPU|SUM_Register\(4))) # (!\CPU|MemoryBuffer[4]~9_combout\ & 
-- ((\CPU|Selector154~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SUM_Register\(4),
	datab => \CPU|MemoryBuffer[4]~10_combout\,
	datac => \CPU|MemoryBuffer[4]~9_combout\,
	datad => \CPU|Selector154~1_combout\,
	combout => \CPU|Selector154~2_combout\);

-- Location: LCCOMB_X29_Y14_N16
\CPU|Selector154~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector154~3_combout\ = (\CPU|Selector154~2_combout\ & ((\CPU|AND_Register\(4)) # ((!\CPU|MemoryBuffer[4]~10_combout\)))) # (!\CPU|Selector154~2_combout\ & (((\CPU|OR_Register\(4) & \CPU|MemoryBuffer[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|AND_Register\(4),
	datab => \CPU|OR_Register\(4),
	datac => \CPU|Selector154~2_combout\,
	datad => \CPU|MemoryBuffer[4]~10_combout\,
	combout => \CPU|Selector154~3_combout\);

-- Location: LCCOMB_X22_Y14_N10
\CPU|MemoryBuffer[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~20_combout\ = (\CPU|INST_Register\(5) & ((\CPU|MemoryBuffer[4]~7_combout\ & (\CPU|MemoryBuffer[4]~19_combout\)) # (!\CPU|MemoryBuffer[4]~7_combout\ & ((\CPU|Selector154~3_combout\))))) # (!\CPU|INST_Register\(5) & 
-- (((\CPU|Selector154~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|MemoryBuffer[4]~19_combout\,
	datac => \CPU|Selector154~3_combout\,
	datad => \CPU|MemoryBuffer[4]~7_combout\,
	combout => \CPU|MemoryBuffer[4]~20_combout\);

-- Location: FF_X22_Y14_N11
\CPU|MemoryBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|MemoryBuffer[4]~20_combout\,
	ena => \CPU|MemoryBuffer[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryBuffer\(4));

-- Location: LCCOMB_X25_Y14_N10
\CPU|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add4~10_combout\ = (\CPU|dataReg\(5) & ((\CPU|Y_Register\(13) & (\CPU|Add4~9\ & VCC)) # (!\CPU|Y_Register\(13) & (!\CPU|Add4~9\)))) # (!\CPU|dataReg\(5) & ((\CPU|Y_Register\(13) & (!\CPU|Add4~9\)) # (!\CPU|Y_Register\(13) & ((\CPU|Add4~9\) # 
-- (GND)))))
-- \CPU|Add4~11\ = CARRY((\CPU|dataReg\(5) & (!\CPU|Y_Register\(13) & !\CPU|Add4~9\)) # (!\CPU|dataReg\(5) & ((!\CPU|Add4~9\) # (!\CPU|Y_Register\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataReg\(5),
	datab => \CPU|Y_Register\(13),
	datad => VCC,
	cin => \CPU|Add4~9\,
	combout => \CPU|Add4~10_combout\,
	cout => \CPU|Add4~11\);

-- Location: LCCOMB_X22_Y17_N26
\CPU|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~26_combout\ = (\CPU|MemoryPointer\(13) & (!\CPU|Add5~25\)) # (!\CPU|MemoryPointer\(13) & ((\CPU|Add5~25\) # (GND)))
-- \CPU|Add5~27\ = CARRY((!\CPU|Add5~25\) # (!\CPU|MemoryPointer\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(13),
	datad => VCC,
	cin => \CPU|Add5~25\,
	combout => \CPU|Add5~26_combout\,
	cout => \CPU|Add5~27\);

-- Location: LCCOMB_X21_Y12_N26
\CPU|X_Register[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[13]~53_combout\ = (\CPU|X_Register\(13) & (!\CPU|X_Register[12]~52\)) # (!\CPU|X_Register\(13) & ((\CPU|X_Register[12]~52\) # (GND)))
-- \CPU|X_Register[13]~54\ = CARRY((!\CPU|X_Register[12]~52\) # (!\CPU|X_Register\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(13),
	datad => VCC,
	cin => \CPU|X_Register[12]~52\,
	combout => \CPU|X_Register[13]~53_combout\,
	cout => \CPU|X_Register[13]~54\);

-- Location: FF_X21_Y12_N27
\CPU|X_Register[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[13]~53_combout\,
	asdata => \CPU|dataReg\(5),
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(13));

-- Location: LCCOMB_X21_Y14_N26
\CPU|StackPointer[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[13]~45_combout\ = (\CPU|StackPointer\(13) & ((\CPU|INST_Register\(1) & (!\CPU|StackPointer[12]~44\)) # (!\CPU|INST_Register\(1) & (\CPU|StackPointer[12]~44\ & VCC)))) # (!\CPU|StackPointer\(13) & ((\CPU|INST_Register\(1) & 
-- ((\CPU|StackPointer[12]~44\) # (GND))) # (!\CPU|INST_Register\(1) & (!\CPU|StackPointer[12]~44\))))
-- \CPU|StackPointer[13]~46\ = CARRY((\CPU|StackPointer\(13) & (\CPU|INST_Register\(1) & !\CPU|StackPointer[12]~44\)) # (!\CPU|StackPointer\(13) & ((\CPU|INST_Register\(1)) # (!\CPU|StackPointer[12]~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(13),
	datab => \CPU|INST_Register\(1),
	datad => VCC,
	cin => \CPU|StackPointer[12]~44\,
	combout => \CPU|StackPointer[13]~45_combout\,
	cout => \CPU|StackPointer[13]~46\);

-- Location: FF_X21_Y14_N27
\CPU|StackPointer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[13]~45_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(13));

-- Location: LCCOMB_X22_Y13_N16
\CPU|Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector84~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|MemoryPointer[1]~41_combout\)))) # (!\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|MemoryPointer[1]~41_combout\ & (\CPU|X_Register\(13))) # (!\CPU|MemoryPointer[1]~41_combout\ & 
-- ((\CPU|StackPointer\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(13),
	datab => \CPU|StackPointer\(13),
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|MemoryPointer[1]~41_combout\,
	combout => \CPU|Selector84~0_combout\);

-- Location: LCCOMB_X22_Y13_N12
\CPU|Selector84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector84~1_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|Selector84~0_combout\ & ((\CPU|Add5~26_combout\))) # (!\CPU|Selector84~0_combout\ & (\CPU|Y_Register\(13))))) # (!\CPU|MemoryPointer[1]~39_combout\ & 
-- (((\CPU|Selector84~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(13),
	datab => \CPU|Add5~26_combout\,
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|Selector84~0_combout\,
	combout => \CPU|Selector84~1_combout\);

-- Location: FF_X22_Y13_N13
\CPU|MemoryPointer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector84~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(13));

-- Location: LCCOMB_X25_Y14_N20
\CPU|Selector104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector104~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (((\CPU|MemoryPointer\(13))))) # (!\CPU|Y_Register[0]~6_combout\ & (\CPU|Add4~10_combout\ & ((\CPU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Add4~10_combout\,
	datab => \CPU|MemoryPointer\(13),
	datac => \CPU|Add0~0_combout\,
	datad => \CPU|Y_Register[0]~6_combout\,
	combout => \CPU|Selector104~0_combout\);

-- Location: FF_X25_Y14_N21
\CPU|Y_Register[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector104~0_combout\,
	ena => \CPU|Y_Register[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(13));

-- Location: LCCOMB_X22_Y14_N30
\CPU|MemoryBuffer[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[5]~21_combout\ = (\CPU|MemoryBuffer[4]~28_combout\ & (\CPU|Y_Register\(5))) # (!\CPU|MemoryBuffer[4]~28_combout\ & ((\CPU|Y_Register\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(5),
	datac => \CPU|MemoryBuffer[4]~28_combout\,
	datad => \CPU|Y_Register\(13),
	combout => \CPU|MemoryBuffer[5]~21_combout\);

-- Location: LCCOMB_X28_Y14_N14
\CPU|Selector153~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector153~0_combout\ = (\CPU|MemoryBuffer[4]~12_combout\ & (((\CPU|SR_Register\(3)) # (\CPU|MemoryBuffer[4]~11_combout\)))) # (!\CPU|MemoryBuffer[4]~12_combout\ & (\CPU|A_Register\(5) & ((!\CPU|MemoryBuffer[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(5),
	datab => \CPU|MemoryBuffer[4]~12_combout\,
	datac => \CPU|SR_Register\(3),
	datad => \CPU|MemoryBuffer[4]~11_combout\,
	combout => \CPU|Selector153~0_combout\);

-- Location: LCCOMB_X28_Y14_N26
\CPU|Selector153~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector153~1_combout\ = (\CPU|Selector153~0_combout\ & ((\CPU|SR_Register\(5)) # ((!\CPU|MemoryBuffer[4]~11_combout\)))) # (!\CPU|Selector153~0_combout\ & (((\CPU|XOR_Register\(5) & \CPU|MemoryBuffer[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SR_Register\(5),
	datab => \CPU|XOR_Register\(5),
	datac => \CPU|Selector153~0_combout\,
	datad => \CPU|MemoryBuffer[4]~11_combout\,
	combout => \CPU|Selector153~1_combout\);

-- Location: LCCOMB_X28_Y14_N8
\CPU|Selector153~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector153~2_combout\ = (\CPU|MemoryBuffer[4]~10_combout\ & ((\CPU|OR_Register\(5)) # ((\CPU|MemoryBuffer[4]~9_combout\)))) # (!\CPU|MemoryBuffer[4]~10_combout\ & (((\CPU|Selector153~1_combout\ & !\CPU|MemoryBuffer[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryBuffer[4]~10_combout\,
	datab => \CPU|OR_Register\(5),
	datac => \CPU|Selector153~1_combout\,
	datad => \CPU|MemoryBuffer[4]~9_combout\,
	combout => \CPU|Selector153~2_combout\);

-- Location: LCCOMB_X28_Y14_N18
\CPU|Selector153~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector153~3_combout\ = (\CPU|Selector153~2_combout\ & (((\CPU|AND_Register\(5)) # (!\CPU|MemoryBuffer[4]~9_combout\)))) # (!\CPU|Selector153~2_combout\ & (\CPU|SUM_Register\(5) & ((\CPU|MemoryBuffer[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SUM_Register\(5),
	datab => \CPU|AND_Register\(5),
	datac => \CPU|Selector153~2_combout\,
	datad => \CPU|MemoryBuffer[4]~9_combout\,
	combout => \CPU|Selector153~3_combout\);

-- Location: LCCOMB_X22_Y14_N12
\CPU|MemoryBuffer[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[5]~22_combout\ = (\CPU|INST_Register\(5) & ((\CPU|MemoryBuffer[4]~7_combout\ & (\CPU|MemoryBuffer[5]~21_combout\)) # (!\CPU|MemoryBuffer[4]~7_combout\ & ((\CPU|Selector153~3_combout\))))) # (!\CPU|INST_Register\(5) & 
-- (((\CPU|Selector153~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|MemoryBuffer[4]~7_combout\,
	datac => \CPU|MemoryBuffer[5]~21_combout\,
	datad => \CPU|Selector153~3_combout\,
	combout => \CPU|MemoryBuffer[5]~22_combout\);

-- Location: FF_X22_Y14_N13
\CPU|MemoryBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|MemoryBuffer[5]~22_combout\,
	ena => \CPU|MemoryBuffer[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryBuffer\(5));

-- Location: LCCOMB_X28_Y12_N12
\CPU|Selector152~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector152~0_combout\ = (\CPU|MemoryBuffer[4]~12_combout\ & (((\CPU|MemoryBuffer[4]~11_combout\)))) # (!\CPU|MemoryBuffer[4]~12_combout\ & ((\CPU|MemoryBuffer[4]~11_combout\ & ((\CPU|XOR_Register\(6)))) # (!\CPU|MemoryBuffer[4]~11_combout\ & 
-- (\CPU|A_Register\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(6),
	datab => \CPU|XOR_Register\(6),
	datac => \CPU|MemoryBuffer[4]~12_combout\,
	datad => \CPU|MemoryBuffer[4]~11_combout\,
	combout => \CPU|Selector152~0_combout\);

-- Location: LCCOMB_X28_Y12_N28
\CPU|Selector152~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector152~1_combout\ = (\CPU|MemoryBuffer[4]~12_combout\ & ((\CPU|Selector152~0_combout\ & ((\CPU|SR_Register\(6)))) # (!\CPU|Selector152~0_combout\ & (\CPU|SR_Register\(4))))) # (!\CPU|MemoryBuffer[4]~12_combout\ & 
-- (((\CPU|Selector152~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SR_Register\(4),
	datab => \CPU|MemoryBuffer[4]~12_combout\,
	datac => \CPU|SR_Register\(6),
	datad => \CPU|Selector152~0_combout\,
	combout => \CPU|Selector152~1_combout\);

-- Location: LCCOMB_X28_Y12_N10
\CPU|Selector152~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector152~2_combout\ = (\CPU|MemoryBuffer[4]~10_combout\ & (((\CPU|MemoryBuffer[4]~9_combout\)))) # (!\CPU|MemoryBuffer[4]~10_combout\ & ((\CPU|MemoryBuffer[4]~9_combout\ & (\CPU|SUM_Register\(6))) # (!\CPU|MemoryBuffer[4]~9_combout\ & 
-- ((\CPU|Selector152~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryBuffer[4]~10_combout\,
	datab => \CPU|SUM_Register\(6),
	datac => \CPU|MemoryBuffer[4]~9_combout\,
	datad => \CPU|Selector152~1_combout\,
	combout => \CPU|Selector152~2_combout\);

-- Location: LCCOMB_X28_Y12_N20
\CPU|Selector152~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector152~3_combout\ = (\CPU|MemoryBuffer[4]~10_combout\ & ((\CPU|Selector152~2_combout\ & (\CPU|AND_Register\(6))) # (!\CPU|Selector152~2_combout\ & ((\CPU|OR_Register\(6)))))) # (!\CPU|MemoryBuffer[4]~10_combout\ & 
-- (((\CPU|Selector152~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|AND_Register\(6),
	datab => \CPU|OR_Register\(6),
	datac => \CPU|MemoryBuffer[4]~10_combout\,
	datad => \CPU|Selector152~2_combout\,
	combout => \CPU|Selector152~3_combout\);

-- Location: LCCOMB_X22_Y17_N28
\CPU|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~28_combout\ = (\CPU|MemoryPointer\(14) & (\CPU|Add5~27\ $ (GND))) # (!\CPU|MemoryPointer\(14) & (!\CPU|Add5~27\ & VCC))
-- \CPU|Add5~29\ = CARRY((\CPU|MemoryPointer\(14) & !\CPU|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryPointer\(14),
	datad => VCC,
	cin => \CPU|Add5~27\,
	combout => \CPU|Add5~28_combout\,
	cout => \CPU|Add5~29\);

-- Location: LCCOMB_X21_Y14_N28
\CPU|StackPointer[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[14]~47_combout\ = ((\CPU|StackPointer\(14) $ (\CPU|INST_Register\(1) $ (\CPU|StackPointer[13]~46\)))) # (GND)
-- \CPU|StackPointer[14]~48\ = CARRY((\CPU|StackPointer\(14) & ((!\CPU|StackPointer[13]~46\) # (!\CPU|INST_Register\(1)))) # (!\CPU|StackPointer\(14) & (!\CPU|INST_Register\(1) & !\CPU|StackPointer[13]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(14),
	datab => \CPU|INST_Register\(1),
	datad => VCC,
	cin => \CPU|StackPointer[13]~46\,
	combout => \CPU|StackPointer[14]~47_combout\,
	cout => \CPU|StackPointer[14]~48\);

-- Location: FF_X21_Y14_N29
\CPU|StackPointer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[14]~47_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(14));

-- Location: LCCOMB_X24_Y13_N22
\CPU|Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector83~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|MemoryPointer[1]~41_combout\) # (\CPU|Y_Register\(14))))) # (!\CPU|MemoryPointer[1]~39_combout\ & (\CPU|StackPointer\(14) & (!\CPU|MemoryPointer[1]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(14),
	datab => \CPU|MemoryPointer[1]~39_combout\,
	datac => \CPU|MemoryPointer[1]~41_combout\,
	datad => \CPU|Y_Register\(14),
	combout => \CPU|Selector83~0_combout\);

-- Location: LCCOMB_X21_Y12_N28
\CPU|X_Register[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[14]~55_combout\ = (\CPU|X_Register\(14) & (\CPU|X_Register[13]~54\ $ (GND))) # (!\CPU|X_Register\(14) & (!\CPU|X_Register[13]~54\ & VCC))
-- \CPU|X_Register[14]~56\ = CARRY((\CPU|X_Register\(14) & !\CPU|X_Register[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|X_Register\(14),
	datad => VCC,
	cin => \CPU|X_Register[13]~54\,
	combout => \CPU|X_Register[14]~55_combout\,
	cout => \CPU|X_Register[14]~56\);

-- Location: FF_X21_Y12_N29
\CPU|X_Register[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[14]~55_combout\,
	asdata => \CPU|dataReg\(6),
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(14));

-- Location: LCCOMB_X24_Y13_N28
\CPU|Selector83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector83~1_combout\ = (\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|Selector83~0_combout\ & (\CPU|Add5~28_combout\)) # (!\CPU|Selector83~0_combout\ & ((\CPU|X_Register\(14)))))) # (!\CPU|MemoryPointer[1]~41_combout\ & 
-- (((\CPU|Selector83~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Add5~28_combout\,
	datab => \CPU|MemoryPointer[1]~41_combout\,
	datac => \CPU|Selector83~0_combout\,
	datad => \CPU|X_Register\(14),
	combout => \CPU|Selector83~1_combout\);

-- Location: FF_X24_Y13_N29
\CPU|MemoryPointer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector83~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(14));

-- Location: LCCOMB_X25_Y14_N12
\CPU|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add4~12_combout\ = ((\CPU|Y_Register\(14) $ (\CPU|dataReg\(6) $ (!\CPU|Add4~11\)))) # (GND)
-- \CPU|Add4~13\ = CARRY((\CPU|Y_Register\(14) & ((\CPU|dataReg\(6)) # (!\CPU|Add4~11\))) # (!\CPU|Y_Register\(14) & (\CPU|dataReg\(6) & !\CPU|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(14),
	datab => \CPU|dataReg\(6),
	datad => VCC,
	cin => \CPU|Add4~11\,
	combout => \CPU|Add4~12_combout\,
	cout => \CPU|Add4~13\);

-- Location: LCCOMB_X25_Y14_N26
\CPU|Selector103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector103~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (\CPU|MemoryPointer\(14))) # (!\CPU|Y_Register[0]~6_combout\ & (((\CPU|Add4~12_combout\ & \CPU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryPointer\(14),
	datab => \CPU|Add4~12_combout\,
	datac => \CPU|Add0~0_combout\,
	datad => \CPU|Y_Register[0]~6_combout\,
	combout => \CPU|Selector103~0_combout\);

-- Location: FF_X25_Y14_N27
\CPU|Y_Register[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector103~0_combout\,
	ena => \CPU|Y_Register[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(14));

-- Location: LCCOMB_X22_Y14_N16
\CPU|MemoryBuffer[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[6]~23_combout\ = (\CPU|MemoryBuffer[4]~28_combout\ & (\CPU|Y_Register\(6))) # (!\CPU|MemoryBuffer[4]~28_combout\ & ((\CPU|Y_Register\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(6),
	datac => \CPU|MemoryBuffer[4]~28_combout\,
	datad => \CPU|Y_Register\(14),
	combout => \CPU|MemoryBuffer[6]~23_combout\);

-- Location: LCCOMB_X22_Y14_N6
\CPU|MemoryBuffer[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[6]~24_combout\ = (\CPU|INST_Register\(5) & ((\CPU|MemoryBuffer[4]~7_combout\ & ((\CPU|MemoryBuffer[6]~23_combout\))) # (!\CPU|MemoryBuffer[4]~7_combout\ & (\CPU|Selector152~3_combout\)))) # (!\CPU|INST_Register\(5) & 
-- (((\CPU|Selector152~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|MemoryBuffer[4]~7_combout\,
	datac => \CPU|Selector152~3_combout\,
	datad => \CPU|MemoryBuffer[6]~23_combout\,
	combout => \CPU|MemoryBuffer[6]~24_combout\);

-- Location: FF_X22_Y14_N7
\CPU|MemoryBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|MemoryBuffer[6]~24_combout\,
	ena => \CPU|MemoryBuffer[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryBuffer\(6));

-- Location: LCCOMB_X25_Y14_N14
\CPU|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add4~14_combout\ = \CPU|dataReg\(7) $ (\CPU|Add4~13\ $ (\CPU|Y_Register\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|dataReg\(7),
	datad => \CPU|Y_Register\(15),
	cin => \CPU|Add4~13\,
	combout => \CPU|Add4~14_combout\);

-- Location: LCCOMB_X22_Y17_N30
\CPU|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Add5~30_combout\ = \CPU|Add5~29\ $ (\CPU|MemoryPointer\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MemoryPointer\(15),
	cin => \CPU|Add5~29\,
	combout => \CPU|Add5~30_combout\);

-- Location: LCCOMB_X21_Y14_N30
\CPU|StackPointer[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|StackPointer[15]~49_combout\ = \CPU|INST_Register\(1) $ (\CPU|StackPointer[14]~48\ $ (!\CPU|StackPointer\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INST_Register\(1),
	datad => \CPU|StackPointer\(15),
	cin => \CPU|StackPointer[14]~48\,
	combout => \CPU|StackPointer[15]~49_combout\);

-- Location: FF_X21_Y14_N31
\CPU|StackPointer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|StackPointer[15]~49_combout\,
	ena => \CPU|StackPointer[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|StackPointer\(15));

-- Location: LCCOMB_X21_Y12_N30
\CPU|X_Register[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|X_Register[15]~57_combout\ = \CPU|X_Register\(15) $ (\CPU|X_Register[14]~56\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|X_Register\(15),
	cin => \CPU|X_Register[14]~56\,
	combout => \CPU|X_Register[15]~57_combout\);

-- Location: FF_X21_Y12_N31
\CPU|X_Register[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|X_Register[15]~57_combout\,
	asdata => \CPU|dataReg\(7),
	sload => \CPU|Add0~2_combout\,
	ena => \CPU|X_Register[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|X_Register\(15));

-- Location: LCCOMB_X23_Y14_N10
\CPU|Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector82~0_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & (((\CPU|MemoryPointer[1]~41_combout\)))) # (!\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|MemoryPointer[1]~41_combout\ & ((\CPU|X_Register\(15)))) # (!\CPU|MemoryPointer[1]~41_combout\ & 
-- (\CPU|StackPointer\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|StackPointer\(15),
	datab => \CPU|X_Register\(15),
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|MemoryPointer[1]~41_combout\,
	combout => \CPU|Selector82~0_combout\);

-- Location: LCCOMB_X23_Y14_N16
\CPU|Selector82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector82~1_combout\ = (\CPU|MemoryPointer[1]~39_combout\ & ((\CPU|Selector82~0_combout\ & ((\CPU|Add5~30_combout\))) # (!\CPU|Selector82~0_combout\ & (\CPU|Y_Register\(15))))) # (!\CPU|MemoryPointer[1]~39_combout\ & 
-- (((\CPU|Selector82~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(15),
	datab => \CPU|Add5~30_combout\,
	datac => \CPU|MemoryPointer[1]~39_combout\,
	datad => \CPU|Selector82~0_combout\,
	combout => \CPU|Selector82~1_combout\);

-- Location: FF_X23_Y14_N17
\CPU|MemoryPointer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector82~1_combout\,
	ena => \CPU|MemoryPointer[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryPointer\(15));

-- Location: LCCOMB_X25_Y14_N16
\CPU|Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector102~0_combout\ = (\CPU|Y_Register[0]~6_combout\ & (((\CPU|MemoryPointer\(15))))) # (!\CPU|Y_Register[0]~6_combout\ & (\CPU|Add4~14_combout\ & (\CPU|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register[0]~6_combout\,
	datab => \CPU|Add4~14_combout\,
	datac => \CPU|Add0~0_combout\,
	datad => \CPU|MemoryPointer\(15),
	combout => \CPU|Selector102~0_combout\);

-- Location: FF_X25_Y14_N17
\CPU|Y_Register[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|Selector102~0_combout\,
	ena => \CPU|Y_Register[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Y_Register\(15));

-- Location: LCCOMB_X23_Y14_N18
\CPU|Selector151~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~7_combout\ = (\CPU|Y_Register\(15) & ((\CPU|Y_Register\(7)) # (\CPU|StepCounter\(0) $ (!\CPU|StepCounter\(1))))) # (!\CPU|Y_Register\(15) & (\CPU|Y_Register\(7) & (\CPU|StepCounter\(0) $ (\CPU|StepCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Y_Register\(15),
	datab => \CPU|Y_Register\(7),
	datac => \CPU|StepCounter\(0),
	datad => \CPU|StepCounter\(1),
	combout => \CPU|Selector151~7_combout\);

-- Location: LCCOMB_X26_Y11_N14
\CPU|Selector151~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~8_combout\ = (\CPU|Selector158~8_combout\ & ((\CPU|Selector151~7_combout\))) # (!\CPU|Selector158~8_combout\ & (\CPU|MemoryBuffer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryBuffer\(7),
	datac => \CPU|Selector151~7_combout\,
	datad => \CPU|Selector158~8_combout\,
	combout => \CPU|Selector151~8_combout\);

-- Location: LCCOMB_X26_Y11_N30
\CPU|Selector151~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~5_combout\ = (\CPU|Decoder0~1_combout\ & ((\CPU|Selector158~4_combout\ & (\CPU|A_Register\(7))) # (!\CPU|Selector158~4_combout\ & ((\CPU|MemoryBuffer\(7)))))) # (!\CPU|Decoder0~1_combout\ & (((\CPU|MemoryBuffer\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register\(7),
	datab => \CPU|MemoryBuffer\(7),
	datac => \CPU|Decoder0~1_combout\,
	datad => \CPU|Selector158~4_combout\,
	combout => \CPU|Selector151~5_combout\);

-- Location: LCCOMB_X26_Y11_N8
\CPU|MemoryBuffer~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer~26_combout\ = (!\CPU|Decoder0~1_combout\ & \CPU|MemoryBuffer\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|Decoder0~1_combout\,
	datad => \CPU|MemoryBuffer\(7),
	combout => \CPU|MemoryBuffer~26_combout\);

-- Location: LCCOMB_X26_Y11_N22
\CPU|Selector151~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~3_combout\ = (\CPU|INST_Register\(1) & (\CPU|XOR_Register\(7) & (\CPU|Decoder0~1_combout\ & \CPU|INST_Register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|XOR_Register\(7),
	datac => \CPU|Decoder0~1_combout\,
	datad => \CPU|INST_Register\(3),
	combout => \CPU|Selector151~3_combout\);

-- Location: LCCOMB_X26_Y11_N4
\CPU|MemoryBuffer[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[4]~25_combout\ = (!\CPU|INST_Register\(2) & (\CPU|INST_Register\(0) & ((!\CPU|INST_Register\(1)) # (!\CPU|INST_Register\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datab => \CPU|INST_Register\(2),
	datac => \CPU|INST_Register\(1),
	datad => \CPU|INST_Register\(0),
	combout => \CPU|MemoryBuffer[4]~25_combout\);

-- Location: LCCOMB_X28_Y12_N2
\CPU|Selector151~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~0_combout\ = (\CPU|INST_Register\(1) & ((\CPU|AND_Register\(7)) # ((\CPU|INST_Register\(3))))) # (!\CPU|INST_Register\(1) & (((\CPU|OR_Register\(7) & !\CPU|INST_Register\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(1),
	datab => \CPU|AND_Register\(7),
	datac => \CPU|OR_Register\(7),
	datad => \CPU|INST_Register\(3),
	combout => \CPU|Selector151~0_combout\);

-- Location: LCCOMB_X28_Y12_N0
\CPU|Selector151~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~10_combout\ = (\CPU|INST_Register\(3) & (\CPU|SR_Register\(5) & !\CPU|Selector151~0_combout\)) # (!\CPU|INST_Register\(3) & ((\CPU|Selector151~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(3),
	datac => \CPU|SR_Register\(5),
	datad => \CPU|Selector151~0_combout\,
	combout => \CPU|Selector151~10_combout\);

-- Location: LCCOMB_X26_Y11_N2
\CPU|Selector151~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~11_combout\ = (\CPU|Decoder0~1_combout\ & ((\CPU|Selector151~10_combout\))) # (!\CPU|Decoder0~1_combout\ & (\CPU|MemoryBuffer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MemoryBuffer\(7),
	datac => \CPU|Decoder0~1_combout\,
	datad => \CPU|Selector151~10_combout\,
	combout => \CPU|Selector151~11_combout\);

-- Location: LCCOMB_X26_Y11_N18
\CPU|Selector151~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~1_combout\ = (\CPU|INST_Register\(0) & (((\CPU|INST_Register\(2) & \CPU|Selector151~11_combout\)))) # (!\CPU|INST_Register\(0) & (\CPU|MemoryBuffer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryBuffer\(7),
	datab => \CPU|INST_Register\(0),
	datac => \CPU|INST_Register\(2),
	datad => \CPU|Selector151~11_combout\,
	combout => \CPU|Selector151~1_combout\);

-- Location: LCCOMB_X26_Y11_N10
\CPU|Selector151~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~2_combout\ = (\CPU|Selector151~1_combout\) # ((\CPU|SUM_Register\(7) & (\CPU|MemoryBuffer[4]~25_combout\ & \CPU|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SUM_Register\(7),
	datab => \CPU|MemoryBuffer[4]~25_combout\,
	datac => \CPU|Decoder0~1_combout\,
	datad => \CPU|Selector151~1_combout\,
	combout => \CPU|Selector151~2_combout\);

-- Location: LCCOMB_X26_Y11_N12
\CPU|Selector151~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~4_combout\ = (\CPU|Selector151~2_combout\) # ((\CPU|MemoryBuffer[4]~2_combout\ & ((\CPU|MemoryBuffer~26_combout\) # (\CPU|Selector151~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MemoryBuffer[4]~2_combout\,
	datab => \CPU|MemoryBuffer~26_combout\,
	datac => \CPU|Selector151~3_combout\,
	datad => \CPU|Selector151~2_combout\,
	combout => \CPU|Selector151~4_combout\);

-- Location: LCCOMB_X26_Y11_N16
\CPU|Selector151~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~6_combout\ = (\CPU|INST_Register\(4) & ((\CPU|INST_Register\(5)) # ((\CPU|Selector151~4_combout\)))) # (!\CPU|INST_Register\(4) & (!\CPU|INST_Register\(5) & (\CPU|Selector151~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(4),
	datab => \CPU|INST_Register\(5),
	datac => \CPU|Selector151~5_combout\,
	datad => \CPU|Selector151~4_combout\,
	combout => \CPU|Selector151~6_combout\);

-- Location: LCCOMB_X26_Y11_N24
\CPU|Selector151~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|Selector151~9_combout\ = (\CPU|INST_Register\(5) & ((\CPU|Selector151~6_combout\ & ((\CPU|Selector151~8_combout\))) # (!\CPU|Selector151~6_combout\ & (\CPU|MemoryBuffer\(7))))) # (!\CPU|INST_Register\(5) & (((\CPU|Selector151~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INST_Register\(5),
	datab => \CPU|MemoryBuffer\(7),
	datac => \CPU|Selector151~8_combout\,
	datad => \CPU|Selector151~6_combout\,
	combout => \CPU|Selector151~9_combout\);

-- Location: LCCOMB_X26_Y11_N20
\CPU|MemoryBuffer[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MemoryBuffer[7]~27_combout\ = (\CPU|A_Register[6]~12_combout\ & ((\CPU|Selector151~9_combout\))) # (!\CPU|A_Register[6]~12_combout\ & (\CPU|MemoryBuffer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|A_Register[6]~12_combout\,
	datac => \CPU|MemoryBuffer\(7),
	datad => \CPU|Selector151~9_combout\,
	combout => \CPU|MemoryBuffer[7]~27_combout\);

-- Location: FF_X26_Y11_N21
\CPU|MemoryBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CPU|MemoryBuffer[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MemoryBuffer\(7));

-- Location: IOIBUF_X30_Y0_N22
\rw~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rw,
	o => \rw~input_o\);

ww_address(0) <= \address[0]~output_o\;

ww_address(1) <= \address[1]~output_o\;

ww_address(2) <= \address[2]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_address(4) <= \address[4]~output_o\;

ww_address(5) <= \address[5]~output_o\;

ww_address(6) <= \address[6]~output_o\;

ww_address(7) <= \address[7]~output_o\;

ww_address(8) <= \address[8]~output_o\;

ww_address(9) <= \address[9]~output_o\;

ww_address(10) <= \address[10]~output_o\;

ww_address(11) <= \address[11]~output_o\;

ww_address(12) <= \address[12]~output_o\;

ww_address(13) <= \address[13]~output_o\;

ww_address(14) <= \address[14]~output_o\;

ww_address(15) <= \address[15]~output_o\;

data(0) <= \data[0]~output_o\;

data(1) <= \data[1]~output_o\;

data(2) <= \data[2]~output_o\;

data(3) <= \data[3]~output_o\;

data(4) <= \data[4]~output_o\;

data(5) <= \data[5]~output_o\;

data(6) <= \data[6]~output_o\;

data(7) <= \data[7]~output_o\;
END structure;


