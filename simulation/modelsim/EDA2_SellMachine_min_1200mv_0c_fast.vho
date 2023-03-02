-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "12/16/2021 19:31:03"

-- 
-- Device: Altera EP3C16Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sell_machine_2 IS
    PORT (
	clk : IN std_logic;
	in_5j : IN std_logic;
	in_1y : IN std_logic;
	in_5y : IN std_logic;
	in_buy1 : IN std_logic;
	in_buy2 : IN std_logic;
	reset : IN std_logic;
	in_refund : IN std_logic;
	out_less : OUT std_logic;
	out_take : OUT std_logic;
	out_money : OUT std_logic;
	which_seg : OUT std_logic_vector(2 DOWNTO 0);
	seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END sell_machine_2;

-- Design Ports Information
-- out_less	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_take	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_money	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- which_seg[0]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- which_seg[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- which_seg[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_152,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_buy2	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_buy1	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_refund	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_5j	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1y	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_5y	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sell_machine_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_in_5j : std_logic;
SIGNAL ww_in_1y : std_logic;
SIGNAL ww_in_5y : std_logic;
SIGNAL ww_in_buy1 : std_logic;
SIGNAL ww_in_buy2 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_in_refund : std_logic;
SIGNAL ww_out_less : std_logic;
SIGNAL ww_out_take : std_logic;
SIGNAL ww_out_money : std_logic;
SIGNAL ww_which_seg : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \de2|steady~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \de1|steady~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \num_c1[5]~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \de3|steady~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add13~14_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add13~20_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \de1|steady~q\ : std_logic;
SIGNAL \num_c1[4]~13\ : std_logic;
SIGNAL \num_c1[5]~14_combout\ : std_logic;
SIGNAL \de2|steady~q\ : std_logic;
SIGNAL \num_c2[4]~11_combout\ : std_logic;
SIGNAL \de3|steady~q\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \s1|Add0~10_combout\ : std_logic;
SIGNAL \s1|Add0~14_combout\ : std_logic;
SIGNAL \s1|Add0~24_combout\ : std_logic;
SIGNAL \s1|Add0~28_combout\ : std_logic;
SIGNAL \s1|Add0~34_combout\ : std_logic;
SIGNAL \s1|cur_data[0]~2_combout\ : std_logic;
SIGNAL \slow_clk[0]~26_combout\ : std_logic;
SIGNAL \slow_clk[2]~30_combout\ : std_logic;
SIGNAL \slow_clk[3]~32_combout\ : std_logic;
SIGNAL \slow_clk[10]~46_combout\ : std_logic;
SIGNAL \slow_clk[12]~50_combout\ : std_logic;
SIGNAL \slow_clk[18]~62_combout\ : std_logic;
SIGNAL \slow_clk[19]~65\ : std_logic;
SIGNAL \slow_clk[20]~66_combout\ : std_logic;
SIGNAL \slow_clk[20]~67\ : std_logic;
SIGNAL \slow_clk[21]~68_combout\ : std_logic;
SIGNAL \slow_clk[21]~69\ : std_logic;
SIGNAL \slow_clk[22]~70_combout\ : std_logic;
SIGNAL \slow_clk[22]~71\ : std_logic;
SIGNAL \slow_clk[23]~72_combout\ : std_logic;
SIGNAL \slow_clk[23]~73\ : std_logic;
SIGNAL \slow_clk[24]~74_combout\ : std_logic;
SIGNAL \slow_clk[24]~75\ : std_logic;
SIGNAL \slow_clk[25]~76_combout\ : std_logic;
SIGNAL \de1|old~q\ : std_logic;
SIGNAL \de2|old~q\ : std_logic;
SIGNAL \de3|old~q\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1_cout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3_cout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5_cout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7_cout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9_cout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \s1|deci_data[4]~2_cout\ : std_logic;
SIGNAL \s1|deci_data[4]~4_cout\ : std_logic;
SIGNAL \s1|deci_data[4]~6_cout\ : std_logic;
SIGNAL \s1|deci_data[4]~8_cout\ : std_logic;
SIGNAL \s1|deci_data[4]~9_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \de1|count[0]~25_combout\ : std_logic;
SIGNAL \de1|count[0]~26\ : std_logic;
SIGNAL \de1|count[1]~29_combout\ : std_logic;
SIGNAL \de1|count[1]~30\ : std_logic;
SIGNAL \de1|count[2]~31_combout\ : std_logic;
SIGNAL \de1|count[2]~32\ : std_logic;
SIGNAL \de1|count[3]~33_combout\ : std_logic;
SIGNAL \de1|count[3]~34\ : std_logic;
SIGNAL \de1|count[4]~35_combout\ : std_logic;
SIGNAL \de1|count[4]~36\ : std_logic;
SIGNAL \de1|count[5]~37_combout\ : std_logic;
SIGNAL \de1|count[5]~38\ : std_logic;
SIGNAL \de1|count[6]~39_combout\ : std_logic;
SIGNAL \de1|count[6]~40\ : std_logic;
SIGNAL \de1|count[7]~41_combout\ : std_logic;
SIGNAL \de1|count[7]~42\ : std_logic;
SIGNAL \de1|count[8]~43_combout\ : std_logic;
SIGNAL \de1|count[8]~44\ : std_logic;
SIGNAL \de1|count[9]~45_combout\ : std_logic;
SIGNAL \de1|count[9]~46\ : std_logic;
SIGNAL \de1|count[10]~47_combout\ : std_logic;
SIGNAL \de1|count[10]~48\ : std_logic;
SIGNAL \de1|count[11]~49_combout\ : std_logic;
SIGNAL \de1|count[11]~50\ : std_logic;
SIGNAL \de1|count[12]~51_combout\ : std_logic;
SIGNAL \de1|count[12]~52\ : std_logic;
SIGNAL \de1|count[13]~53_combout\ : std_logic;
SIGNAL \de1|count[13]~54\ : std_logic;
SIGNAL \de1|count[14]~55_combout\ : std_logic;
SIGNAL \de1|count[14]~56\ : std_logic;
SIGNAL \de1|count[15]~57_combout\ : std_logic;
SIGNAL \de1|count[15]~58\ : std_logic;
SIGNAL \de1|count[16]~59_combout\ : std_logic;
SIGNAL \de1|count[16]~60\ : std_logic;
SIGNAL \de1|count[17]~61_combout\ : std_logic;
SIGNAL \de1|count[17]~62\ : std_logic;
SIGNAL \de1|count[18]~63_combout\ : std_logic;
SIGNAL \de1|count[18]~64\ : std_logic;
SIGNAL \de1|count[19]~65_combout\ : std_logic;
SIGNAL \de1|count[19]~66\ : std_logic;
SIGNAL \de1|count[20]~67_combout\ : std_logic;
SIGNAL \de1|count[20]~68\ : std_logic;
SIGNAL \de1|count[21]~69_combout\ : std_logic;
SIGNAL \de1|count[21]~70\ : std_logic;
SIGNAL \de1|count[22]~71_combout\ : std_logic;
SIGNAL \de1|count[22]~72\ : std_logic;
SIGNAL \de1|count[23]~73_combout\ : std_logic;
SIGNAL \de1|count[23]~74\ : std_logic;
SIGNAL \de1|count[24]~75_combout\ : std_logic;
SIGNAL \de2|count[0]~25_combout\ : std_logic;
SIGNAL \de2|count[0]~26\ : std_logic;
SIGNAL \de2|count[1]~29_combout\ : std_logic;
SIGNAL \de2|count[1]~30\ : std_logic;
SIGNAL \de2|count[2]~31_combout\ : std_logic;
SIGNAL \de2|count[2]~32\ : std_logic;
SIGNAL \de2|count[3]~33_combout\ : std_logic;
SIGNAL \de2|count[3]~34\ : std_logic;
SIGNAL \de2|count[4]~35_combout\ : std_logic;
SIGNAL \de2|count[4]~36\ : std_logic;
SIGNAL \de2|count[5]~37_combout\ : std_logic;
SIGNAL \de2|count[5]~38\ : std_logic;
SIGNAL \de2|count[6]~39_combout\ : std_logic;
SIGNAL \de2|count[6]~40\ : std_logic;
SIGNAL \de2|count[7]~41_combout\ : std_logic;
SIGNAL \de2|count[7]~42\ : std_logic;
SIGNAL \de2|count[8]~43_combout\ : std_logic;
SIGNAL \de2|count[8]~44\ : std_logic;
SIGNAL \de2|count[9]~45_combout\ : std_logic;
SIGNAL \de2|count[9]~46\ : std_logic;
SIGNAL \de2|count[10]~47_combout\ : std_logic;
SIGNAL \de2|count[10]~48\ : std_logic;
SIGNAL \de2|count[11]~49_combout\ : std_logic;
SIGNAL \de2|count[11]~50\ : std_logic;
SIGNAL \de2|count[12]~51_combout\ : std_logic;
SIGNAL \de2|count[12]~52\ : std_logic;
SIGNAL \de2|count[13]~53_combout\ : std_logic;
SIGNAL \de2|count[13]~54\ : std_logic;
SIGNAL \de2|count[14]~55_combout\ : std_logic;
SIGNAL \de2|count[14]~56\ : std_logic;
SIGNAL \de2|count[15]~57_combout\ : std_logic;
SIGNAL \de2|count[15]~58\ : std_logic;
SIGNAL \de2|count[16]~59_combout\ : std_logic;
SIGNAL \de2|count[16]~60\ : std_logic;
SIGNAL \de2|count[17]~61_combout\ : std_logic;
SIGNAL \de2|count[17]~62\ : std_logic;
SIGNAL \de2|count[18]~63_combout\ : std_logic;
SIGNAL \de2|count[18]~64\ : std_logic;
SIGNAL \de2|count[19]~65_combout\ : std_logic;
SIGNAL \de2|count[19]~66\ : std_logic;
SIGNAL \de2|count[20]~67_combout\ : std_logic;
SIGNAL \de2|count[20]~68\ : std_logic;
SIGNAL \de2|count[21]~69_combout\ : std_logic;
SIGNAL \de2|count[21]~70\ : std_logic;
SIGNAL \de2|count[22]~71_combout\ : std_logic;
SIGNAL \de2|count[22]~72\ : std_logic;
SIGNAL \de2|count[23]~73_combout\ : std_logic;
SIGNAL \de2|count[23]~74\ : std_logic;
SIGNAL \de2|count[24]~75_combout\ : std_logic;
SIGNAL \de3|count[0]~25_combout\ : std_logic;
SIGNAL \de3|count[0]~26\ : std_logic;
SIGNAL \de3|count[1]~29_combout\ : std_logic;
SIGNAL \de3|count[1]~30\ : std_logic;
SIGNAL \de3|count[2]~31_combout\ : std_logic;
SIGNAL \de3|count[2]~32\ : std_logic;
SIGNAL \de3|count[3]~33_combout\ : std_logic;
SIGNAL \de3|count[3]~34\ : std_logic;
SIGNAL \de3|count[4]~35_combout\ : std_logic;
SIGNAL \de3|count[4]~36\ : std_logic;
SIGNAL \de3|count[5]~37_combout\ : std_logic;
SIGNAL \de3|count[5]~38\ : std_logic;
SIGNAL \de3|count[6]~39_combout\ : std_logic;
SIGNAL \de3|count[6]~40\ : std_logic;
SIGNAL \de3|count[7]~41_combout\ : std_logic;
SIGNAL \de3|count[7]~42\ : std_logic;
SIGNAL \de3|count[8]~43_combout\ : std_logic;
SIGNAL \de3|count[8]~44\ : std_logic;
SIGNAL \de3|count[9]~45_combout\ : std_logic;
SIGNAL \de3|count[9]~46\ : std_logic;
SIGNAL \de3|count[10]~47_combout\ : std_logic;
SIGNAL \de3|count[10]~48\ : std_logic;
SIGNAL \de3|count[11]~49_combout\ : std_logic;
SIGNAL \de3|count[11]~50\ : std_logic;
SIGNAL \de3|count[12]~51_combout\ : std_logic;
SIGNAL \de3|count[12]~52\ : std_logic;
SIGNAL \de3|count[13]~53_combout\ : std_logic;
SIGNAL \de3|count[13]~54\ : std_logic;
SIGNAL \de3|count[14]~55_combout\ : std_logic;
SIGNAL \de3|count[14]~56\ : std_logic;
SIGNAL \de3|count[15]~57_combout\ : std_logic;
SIGNAL \de3|count[15]~58\ : std_logic;
SIGNAL \de3|count[16]~59_combout\ : std_logic;
SIGNAL \de3|count[16]~60\ : std_logic;
SIGNAL \de3|count[17]~61_combout\ : std_logic;
SIGNAL \de3|count[17]~62\ : std_logic;
SIGNAL \de3|count[18]~63_combout\ : std_logic;
SIGNAL \de3|count[18]~64\ : std_logic;
SIGNAL \de3|count[19]~65_combout\ : std_logic;
SIGNAL \de3|count[19]~66\ : std_logic;
SIGNAL \de3|count[20]~67_combout\ : std_logic;
SIGNAL \de3|count[20]~68\ : std_logic;
SIGNAL \de3|count[21]~69_combout\ : std_logic;
SIGNAL \de3|count[21]~70\ : std_logic;
SIGNAL \de3|count[22]~71_combout\ : std_logic;
SIGNAL \de3|count[22]~72\ : std_logic;
SIGNAL \de3|count[23]~73_combout\ : std_logic;
SIGNAL \de3|count[23]~74\ : std_logic;
SIGNAL \de3|count[24]~75_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \cur_state.ERROR~q\ : std_logic;
SIGNAL \cur_state~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][4]~1_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][5]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][3]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~3_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][8]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][5]~5_combout\ : std_logic;
SIGNAL \cur_state.SHOP_1~q\ : std_logic;
SIGNAL \cur_state.SHOP_2~q\ : std_logic;
SIGNAL \elapsed_time~0_combout\ : std_logic;
SIGNAL \s1|Equal0~2_combout\ : std_logic;
SIGNAL \s1|Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \cur_state~21_combout\ : std_logic;
SIGNAL \s1|Equal3~0_combout\ : std_logic;
SIGNAL \s1|times~3_combout\ : std_logic;
SIGNAL \s1|times~4_combout\ : std_logic;
SIGNAL \de1|Equal0~0_combout\ : std_logic;
SIGNAL \de1|Equal0~1_combout\ : std_logic;
SIGNAL \de1|Equal0~2_combout\ : std_logic;
SIGNAL \de1|Equal0~3_combout\ : std_logic;
SIGNAL \de1|Equal0~4_combout\ : std_logic;
SIGNAL \de1|Equal0~5_combout\ : std_logic;
SIGNAL \de1|Equal0~6_combout\ : std_logic;
SIGNAL \de1|Equal0~7_combout\ : std_logic;
SIGNAL \de1|steady~0_combout\ : std_logic;
SIGNAL \de2|Equal0~0_combout\ : std_logic;
SIGNAL \de2|Equal0~1_combout\ : std_logic;
SIGNAL \de2|Equal0~2_combout\ : std_logic;
SIGNAL \de2|Equal0~3_combout\ : std_logic;
SIGNAL \de2|Equal0~4_combout\ : std_logic;
SIGNAL \de2|Equal0~5_combout\ : std_logic;
SIGNAL \de2|Equal0~6_combout\ : std_logic;
SIGNAL \de2|Equal0~7_combout\ : std_logic;
SIGNAL \de2|steady~0_combout\ : std_logic;
SIGNAL \de3|Equal0~0_combout\ : std_logic;
SIGNAL \de3|Equal0~1_combout\ : std_logic;
SIGNAL \de3|Equal0~2_combout\ : std_logic;
SIGNAL \de3|Equal0~3_combout\ : std_logic;
SIGNAL \de3|Equal0~4_combout\ : std_logic;
SIGNAL \de3|Equal0~5_combout\ : std_logic;
SIGNAL \de3|Equal0~6_combout\ : std_logic;
SIGNAL \de3|Equal0~7_combout\ : std_logic;
SIGNAL \de3|steady~0_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[54]~91_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[51]~97_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[50]~98_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[49]~101_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[62]~102_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[61]~103_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[60]~104_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[58]~107_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[57]~109_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[70]~110_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[69]~111_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[65]~116_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[78]~117_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[74]~121_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[73]~122_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[86]~124_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[85]~125_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[84]~126_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[83]~127_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[82]~128_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[81]~129_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[81]~130_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[43]~27_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[42]~29_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[41]~31_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[40]~32_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[48]~34_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[47]~35_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[46]~37_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[45]~38_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[53]~40_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[52]~41_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[51]~42_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[51]~43_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[50]~44_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[50]~45_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[48]~24_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[47]~27_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[46]~29_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[50]~34_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[53]~35_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[56]~38_combout\ : std_logic;
SIGNAL \de1|count[11]~27_combout\ : std_logic;
SIGNAL \de1|count[11]~28_combout\ : std_logic;
SIGNAL \de2|count[21]~27_combout\ : std_logic;
SIGNAL \de2|count[21]~28_combout\ : std_logic;
SIGNAL \de3|count[11]~27_combout\ : std_logic;
SIGNAL \de3|count[11]~28_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[54]~90_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[53]~92_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[52]~95_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[51]~96_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[62]~102_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[59]~105_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[58]~106_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[57]~109_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[69]~111_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[67]~113_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[66]~114_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[65]~115_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[75]~120_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[64]~124_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[73]~125_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[85]~126_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[83]~128_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[82]~129_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[43]~27_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[42]~28_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[41]~31_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[40]~32_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[46]~36_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[45]~38_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[51]~40_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[50]~42_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[53]~44_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[68]~133_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[77]~135_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[76]~136_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[53]~46_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[70]~140_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[68]~142_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[78]~143_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[77]~144_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[86]~148_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[59]~143_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[67]~144_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[66]~145_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[82]~147_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[52]~49_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[61]~150_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[74]~155_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[48]~50_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[47]~51_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[75]~148_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[83]~149_combout\ : std_logic;
SIGNAL \num_c2[0]~15_combout\ : std_logic;
SIGNAL \s1|deci_data[8]~11_combout\ : std_logic;
SIGNAL \in_buy2~input_o\ : std_logic;
SIGNAL \in_5j~input_o\ : std_logic;
SIGNAL \in_1y~input_o\ : std_logic;
SIGNAL \in_5y~input_o\ : std_logic;
SIGNAL \de2|steady~clkctrl_outclk\ : std_logic;
SIGNAL \de1|steady~clkctrl_outclk\ : std_logic;
SIGNAL \de3|steady~clkctrl_outclk\ : std_logic;
SIGNAL \s1|temp1[0]~feeder_combout\ : std_logic;
SIGNAL \de1|steady~feeder_combout\ : std_logic;
SIGNAL \de2|steady~feeder_combout\ : std_logic;
SIGNAL \de3|steady~feeder_combout\ : std_logic;
SIGNAL \s1|deci_data[0]~feeder_combout\ : std_logic;
SIGNAL \s1|temp2[0]~feeder_combout\ : std_logic;
SIGNAL \de1|old~feeder_combout\ : std_logic;
SIGNAL \de2|old~feeder_combout\ : std_logic;
SIGNAL \de3|old~feeder_combout\ : std_logic;
SIGNAL \out_less~output_o\ : std_logic;
SIGNAL \out_take~output_o\ : std_logic;
SIGNAL \out_money~output_o\ : std_logic;
SIGNAL \which_seg[0]~output_o\ : std_logic;
SIGNAL \which_seg[1]~output_o\ : std_logic;
SIGNAL \which_seg[2]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \in_refund~input_o\ : std_logic;
SIGNAL \in_buy1~input_o\ : std_logic;
SIGNAL \next_state~2_combout\ : std_logic;
SIGNAL \cur_state~22_combout\ : std_logic;
SIGNAL \cur_state.IDLE~feeder_combout\ : std_logic;
SIGNAL \cur_state.IDLE~q\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \cur_state~16_combout\ : std_logic;
SIGNAL \slow_clk[0]~27\ : std_logic;
SIGNAL \slow_clk[1]~28_combout\ : std_logic;
SIGNAL \slow_clk[1]~29\ : std_logic;
SIGNAL \slow_clk[2]~31\ : std_logic;
SIGNAL \slow_clk[3]~33\ : std_logic;
SIGNAL \slow_clk[4]~34_combout\ : std_logic;
SIGNAL \slow_clk[4]~35\ : std_logic;
SIGNAL \slow_clk[5]~36_combout\ : std_logic;
SIGNAL \slow_clk[5]~37\ : std_logic;
SIGNAL \slow_clk[6]~38_combout\ : std_logic;
SIGNAL \slow_clk[6]~39\ : std_logic;
SIGNAL \slow_clk[7]~40_combout\ : std_logic;
SIGNAL \slow_clk[7]~41\ : std_logic;
SIGNAL \slow_clk[8]~43\ : std_logic;
SIGNAL \slow_clk[9]~44_combout\ : std_logic;
SIGNAL \slow_clk[9]~45\ : std_logic;
SIGNAL \slow_clk[10]~47\ : std_logic;
SIGNAL \slow_clk[11]~48_combout\ : std_logic;
SIGNAL \slow_clk[8]~42_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \slow_clk[11]~49\ : std_logic;
SIGNAL \slow_clk[12]~51\ : std_logic;
SIGNAL \slow_clk[13]~52_combout\ : std_logic;
SIGNAL \slow_clk[13]~53\ : std_logic;
SIGNAL \slow_clk[14]~54_combout\ : std_logic;
SIGNAL \slow_clk[14]~55\ : std_logic;
SIGNAL \slow_clk[15]~56_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \elapsed_time~1_combout\ : std_logic;
SIGNAL \slow_clk[15]~57\ : std_logic;
SIGNAL \slow_clk[16]~59\ : std_logic;
SIGNAL \slow_clk[17]~60_combout\ : std_logic;
SIGNAL \slow_clk[17]~61\ : std_logic;
SIGNAL \slow_clk[18]~63\ : std_logic;
SIGNAL \slow_clk[19]~64_combout\ : std_logic;
SIGNAL \slow_clk[16]~58_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \elapsed_time[3]~2_combout\ : std_logic;
SIGNAL \elapsed_time[0]~3_combout\ : std_logic;
SIGNAL \elapsed_time[1]~4_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \cur_state.CHECK~feeder_combout\ : std_logic;
SIGNAL \cur_state.CHECK~q\ : std_logic;
SIGNAL \cur_state~15_combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \now_money[0]~0_combout\ : std_logic;
SIGNAL \num_c1[0]~16_combout\ : std_logic;
SIGNAL \num_c1[5]~11_combout\ : std_logic;
SIGNAL \num_c1[5]~11clkctrl_outclk\ : std_logic;
SIGNAL \num_c1[1]~6\ : std_logic;
SIGNAL \num_c1[2]~7_combout\ : std_logic;
SIGNAL \num_c1[2]~8\ : std_logic;
SIGNAL \num_c1[3]~9_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \num_c2[1]~5_combout\ : std_logic;
SIGNAL \num_c1[1]~5_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \num_c3[0]~15_combout\ : std_logic;
SIGNAL \num_c3[1]~5_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add11~1_cout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \num_c3[1]~6\ : std_logic;
SIGNAL \num_c3[2]~7_combout\ : std_logic;
SIGNAL \num_c3[2]~8\ : std_logic;
SIGNAL \num_c3[3]~10\ : std_logic;
SIGNAL \num_c3[4]~11_combout\ : std_logic;
SIGNAL \num_c3[4]~12\ : std_logic;
SIGNAL \num_c3[5]~13_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~4_combout\ : std_logic;
SIGNAL \num_c3[3]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \num_c2[1]~6\ : std_logic;
SIGNAL \num_c2[2]~7_combout\ : std_logic;
SIGNAL \num_c2[2]~8\ : std_logic;
SIGNAL \num_c2[3]~9_combout\ : std_logic;
SIGNAL \num_c2[3]~10\ : std_logic;
SIGNAL \num_c2[4]~12\ : std_logic;
SIGNAL \num_c2[5]~13_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \num_c1[3]~10\ : std_logic;
SIGNAL \num_c1[4]~12_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add10~19\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~13\ : std_logic;
SIGNAL \Add13~15\ : std_logic;
SIGNAL \Add13~17\ : std_logic;
SIGNAL \Add13~19\ : std_logic;
SIGNAL \Add13~21\ : std_logic;
SIGNAL \Add13~22_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[1][4]~5_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][7]~4_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][6]~3_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][4]~1_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Add13~18_combout\ : std_logic;
SIGNAL \Add13~16_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \now_money[0]~1\ : std_logic;
SIGNAL \now_money[1]~3\ : std_logic;
SIGNAL \now_money[2]~5\ : std_logic;
SIGNAL \now_money[3]~7\ : std_logic;
SIGNAL \now_money[4]~9\ : std_logic;
SIGNAL \now_money[5]~11\ : std_logic;
SIGNAL \now_money[6]~13\ : std_logic;
SIGNAL \now_money[7]~15\ : std_logic;
SIGNAL \now_money[8]~17\ : std_logic;
SIGNAL \now_money[9]~19\ : std_logic;
SIGNAL \now_money[10]~21\ : std_logic;
SIGNAL \now_money[11]~22_combout\ : std_logic;
SIGNAL \now_money[9]~18_combout\ : std_logic;
SIGNAL \now_money[6]~12_combout\ : std_logic;
SIGNAL \now_money[8]~16_combout\ : std_logic;
SIGNAL \now_money[7]~14_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \now_money[4]~8_combout\ : std_logic;
SIGNAL \cur_state~17_combout\ : std_logic;
SIGNAL \cur_state~18_combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \now_money[3]~6_combout\ : std_logic;
SIGNAL \now_money[1]~2_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \now_money[2]~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \cur_state~13_combout\ : std_logic;
SIGNAL \cur_state~14_combout\ : std_logic;
SIGNAL \cur_state.REFUND~feeder_combout\ : std_logic;
SIGNAL \cur_state.REFUND~q\ : std_logic;
SIGNAL \cur_state~19_combout\ : std_logic;
SIGNAL \cur_state~20_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \out_less~reg0_q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \out_take~reg0_q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \out_money~reg0_q\ : std_logic;
SIGNAL \s1|Add0~0_combout\ : std_logic;
SIGNAL \s1|times~0_combout\ : std_logic;
SIGNAL \s1|Add0~1\ : std_logic;
SIGNAL \s1|Add0~2_combout\ : std_logic;
SIGNAL \s1|Add0~3\ : std_logic;
SIGNAL \s1|Add0~4_combout\ : std_logic;
SIGNAL \s1|Add0~5\ : std_logic;
SIGNAL \s1|Add0~6_combout\ : std_logic;
SIGNAL \s1|Add0~7\ : std_logic;
SIGNAL \s1|Add0~9\ : std_logic;
SIGNAL \s1|Add0~11\ : std_logic;
SIGNAL \s1|Add0~12_combout\ : std_logic;
SIGNAL \s1|times~7_combout\ : std_logic;
SIGNAL \s1|Add0~13\ : std_logic;
SIGNAL \s1|Add0~15\ : std_logic;
SIGNAL \s1|Add0~16_combout\ : std_logic;
SIGNAL \s1|times~8_combout\ : std_logic;
SIGNAL \s1|Add0~33\ : std_logic;
SIGNAL \s1|Add0~35\ : std_logic;
SIGNAL \s1|Add0~36_combout\ : std_logic;
SIGNAL \s1|times~2_combout\ : std_logic;
SIGNAL \s1|times~1_combout\ : std_logic;
SIGNAL \s1|Add0~17\ : std_logic;
SIGNAL \s1|Add0~19\ : std_logic;
SIGNAL \s1|Add0~20_combout\ : std_logic;
SIGNAL \s1|Add0~21\ : std_logic;
SIGNAL \s1|Add0~22_combout\ : std_logic;
SIGNAL \s1|Add0~23\ : std_logic;
SIGNAL \s1|Add0~25\ : std_logic;
SIGNAL \s1|Add0~26_combout\ : std_logic;
SIGNAL \s1|Equal0~0_combout\ : std_logic;
SIGNAL \s1|Add0~8_combout\ : std_logic;
SIGNAL \s1|Equal0~1_combout\ : std_logic;
SIGNAL \s1|Add0~18_combout\ : std_logic;
SIGNAL \s1|times~5_combout\ : std_logic;
SIGNAL \s1|Equal1~1_combout\ : std_logic;
SIGNAL \s1|Equal3~1_combout\ : std_logic;
SIGNAL \s1|Add0~27\ : std_logic;
SIGNAL \s1|Add0~29\ : std_logic;
SIGNAL \s1|Add0~30_combout\ : std_logic;
SIGNAL \s1|times~6_combout\ : std_logic;
SIGNAL \s1|Add0~31\ : std_logic;
SIGNAL \s1|Add0~32_combout\ : std_logic;
SIGNAL \s1|Equal0~4_combout\ : std_logic;
SIGNAL \s1|Equal0~3_combout\ : std_logic;
SIGNAL \s1|Equal0~5_combout\ : std_logic;
SIGNAL \s1|Equal2~0_combout\ : std_logic;
SIGNAL \s1|Equal2~1_combout\ : std_logic;
SIGNAL \s1|Selector2~0_combout\ : std_logic;
SIGNAL \s1|Selector1~0_combout\ : std_logic;
SIGNAL \s1|Selector0~0_combout\ : std_logic;
SIGNAL \s1|Equal1~2_combout\ : std_logic;
SIGNAL \s1|Equal1~3_combout\ : std_logic;
SIGNAL \now_money[10]~20_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[54]~91_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[51]~97_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[50]~98_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[58]~107_combout\ : std_logic;
SIGNAL \now_money[5]~10_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[57]~108_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[62]~149_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[61]~103_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[60]~104_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[59]~152_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[70]~110_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[60]~151_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[69]~141_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[68]~112_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[67]~153_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[76]~145_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[78]~117_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[77]~118_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[76]~119_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[74]~121_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[73]~122_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[85]~146_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[84]~127_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[83]~158_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[82]~156_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[72]~132_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[72]~131_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[81]~133_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[86]~134_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[94]~135_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[84]~147_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[93]~136_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[92]~137_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[43]~26_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[41]~30_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[91]~138_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[40]~33_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[48]~47_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[47]~48_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[46]~36_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[81]~130_combout\ : std_logic;
SIGNAL \s1|Mod1|auto_generated|divider|divider|StageOut[90]~139_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|StageOut[45]~39_combout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \s1|deci_data[5]~13_combout\ : std_logic;
SIGNAL \s1|cur_data[1]~0_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[41]~30_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[40]~33_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[43]~26_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[42]~29_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[48]~34_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[47]~35_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[46]~37_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[45]~39_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[53]~49_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[52]~52_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[51]~41_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[50]~43_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[56]~47_combout\ : std_logic;
SIGNAL \s1|WideNor0~combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[54]~90_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[53]~92_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[52]~95_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[51]~96_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[50]~99_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[49]~100_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[62]~140_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[61]~141_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[60]~142_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[59]~105_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[58]~106_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[57]~108_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[48]~25_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[47]~26_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[46]~28_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[70]~131_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[69]~132_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[68]~112_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[67]~113_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[66]~114_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[65]~115_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[45]~31_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[52]~36_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[51]~32_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[78]~134_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[77]~118_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[76]~119_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[75]~120_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[74]~146_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|StageOut[73]~123_combout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\ : std_logic;
SIGNAL \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[50]~33_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[58]~39_combout\ : std_logic;
SIGNAL \s1|deci_data[7]~14_combout\ : std_logic;
SIGNAL \s1|cur_data[3]~1_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[58]~48_combout\ : std_logic;
SIGNAL \s1|deci_data[6]~12_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \s1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ : std_logic;
SIGNAL \s1|cur_data[2]~3_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \s1|Mod2|auto_generated|divider|divider|StageOut[57]~46_combout\ : std_logic;
SIGNAL \s1|deci_data[2]~feeder_combout\ : std_logic;
SIGNAL \s1|Mux6~0_combout\ : std_logic;
SIGNAL \s1|seg[5]~0_combout\ : std_logic;
SIGNAL \s1|Mux5~0_combout\ : std_logic;
SIGNAL \s1|Mux4~0_combout\ : std_logic;
SIGNAL \s1|Mux3~0_combout\ : std_logic;
SIGNAL \s1|Mux2~0_combout\ : std_logic;
SIGNAL \s1|Mux1~0_combout\ : std_logic;
SIGNAL \s1|Mux0~0_combout\ : std_logic;
SIGNAL \s1|this_seg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \s1|cur_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL num_c3 : std_logic_vector(5 DOWNTO 0);
SIGNAL \s1|seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL num_c1 : std_logic_vector(5 DOWNTO 0);
SIGNAL slow_clk : std_logic_vector(25 DOWNTO 0);
SIGNAL \s1|times\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \de3|count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL count1 : std_logic_vector(5 DOWNTO 0);
SIGNAL \de2|count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL count2 : std_logic_vector(5 DOWNTO 0);
SIGNAL elapsed_time : std_logic_vector(3 DOWNTO 0);
SIGNAL \s1|deci_data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL num_c2 : std_logic_vector(5 DOWNTO 0);
SIGNAL \s1|temp2\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \s1|temp1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \de1|count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \de3|ALT_INV_steady~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_num_c1[5]~11clkctrl_outclk\ : std_logic;
SIGNAL \de1|ALT_INV_steady~clkctrl_outclk\ : std_logic;
SIGNAL \de2|ALT_INV_steady~clkctrl_outclk\ : std_logic;
SIGNAL \s1|ALT_INV_this_seg\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_in_5j <= in_5j;
ww_in_1y <= in_1y;
ww_in_5y <= in_5y;
ww_in_buy1 <= in_buy1;
ww_in_buy2 <= in_buy2;
ww_reset <= reset;
ww_in_refund <= in_refund;
out_less <= ww_out_less;
out_take <= ww_out_take;
out_money <= ww_out_money;
which_seg <= ww_which_seg;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\de2|steady~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \de2|steady~q\);

\de1|steady~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \de1|steady~q\);

\num_c1[5]~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \num_c1[5]~11_combout\);

\de3|steady~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \de3|steady~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\de3|ALT_INV_steady~clkctrl_outclk\ <= NOT \de3|steady~clkctrl_outclk\;
\ALT_INV_num_c1[5]~11clkctrl_outclk\ <= NOT \num_c1[5]~11clkctrl_outclk\;
\de1|ALT_INV_steady~clkctrl_outclk\ <= NOT \de1|steady~clkctrl_outclk\;
\de2|ALT_INV_steady~clkctrl_outclk\ <= NOT \de2|steady~clkctrl_outclk\;
\s1|ALT_INV_this_seg\(1) <= NOT \s1|this_seg\(1);
\s1|ALT_INV_this_seg\(0) <= NOT \s1|this_seg\(0);

-- Location: LCCOMB_X22_Y22_N2
\Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (count1(1) & ((\Add11~1_cout\) # (GND))) # (!count1(1) & (!\Add11~1_cout\))
-- \Add11~3\ = CARRY((count1(1)) # (!\Add11~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(1),
	datad => VCC,
	cin => \Add11~1_cout\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X22_Y22_N6
\Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (count1(3) & ((\Add11~5\) # (GND))) # (!count1(3) & (!\Add11~5\))
-- \Add11~7\ = CARRY((count1(3)) # (!\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X22_Y22_N10
\Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (count1(5) & ((\Add11~9\) # (GND))) # (!count1(5) & (!\Add11~9\))
-- \Add11~11\ = CARRY((count1(5)) # (!\Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(5),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X22_Y22_N16
\Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = (count1(0) & (\Add11~8_combout\ $ (VCC))) # (!count1(0) & (\Add11~8_combout\ & VCC))
-- \Add12~1\ = CARRY((count1(0) & \Add11~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(0),
	datab => \Add11~8_combout\,
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X22_Y22_N18
\Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (\Add11~10_combout\ & ((count1(1) & (\Add12~1\ & VCC)) # (!count1(1) & (!\Add12~1\)))) # (!\Add11~10_combout\ & ((count1(1) & (!\Add12~1\)) # (!count1(1) & ((\Add12~1\) # (GND)))))
-- \Add12~3\ = CARRY((\Add11~10_combout\ & (!count1(1) & !\Add12~1\)) # (!\Add11~10_combout\ & ((!\Add12~1\) # (!count1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => count1(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: FF_X22_Y21_N31
\num_c1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de1|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c1[5]~14_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c1(5));

-- Location: LCCOMB_X22_Y21_N2
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (num_c1(2) & (num_c1(0) $ (VCC))) # (!num_c1(2) & (num_c1(0) & VCC))
-- \Add7~1\ = CARRY((num_c1(2) & num_c1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c1(2),
	datab => num_c1(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X22_Y21_N6
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((num_c1(2) $ (num_c1(4) $ (!\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((num_c1(2) & ((num_c1(4)) # (!\Add7~3\))) # (!num_c1(2) & (num_c1(4) & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c1(2),
	datab => num_c1(4),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X22_Y21_N8
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (num_c1(5) & ((num_c1(3) & (\Add7~5\ & VCC)) # (!num_c1(3) & (!\Add7~5\)))) # (!num_c1(5) & ((num_c1(3) & (!\Add7~5\)) # (!num_c1(3) & ((\Add7~5\) # (GND)))))
-- \Add7~7\ = CARRY((num_c1(5) & (!num_c1(3) & !\Add7~5\)) # (!num_c1(5) & ((!\Add7~5\) # (!num_c1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c1(5),
	datab => num_c1(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: FF_X24_Y21_N7
\num_c2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c2[4]~11_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c2(4));

-- Location: LCCOMB_X24_Y21_N12
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (num_c2(0) & (num_c2(2) $ (VCC))) # (!num_c2(0) & (num_c2(2) & VCC))
-- \Add8~1\ = CARRY((num_c2(0) & num_c2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c2(0),
	datab => num_c2(2),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X24_Y21_N14
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (num_c2(3) & ((num_c2(1) & (\Add8~1\ & VCC)) # (!num_c2(1) & (!\Add8~1\)))) # (!num_c2(3) & ((num_c2(1) & (!\Add8~1\)) # (!num_c2(1) & ((\Add8~1\) # (GND)))))
-- \Add8~3\ = CARRY((num_c2(3) & (!num_c2(1) & !\Add8~1\)) # (!num_c2(3) & ((!\Add8~1\) # (!num_c2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c2(3),
	datab => num_c2(1),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X23_Y21_N14
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\Add7~0_combout\ & ((num_c2(1) & (\Add9~1\ & VCC)) # (!num_c2(1) & (!\Add9~1\)))) # (!\Add7~0_combout\ & ((num_c2(1) & (!\Add9~1\)) # (!num_c2(1) & ((\Add9~1\) # (GND)))))
-- \Add9~3\ = CARRY((\Add7~0_combout\ & (!num_c2(1) & !\Add9~1\)) # (!\Add7~0_combout\ & ((!\Add9~1\) # (!num_c2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => num_c2(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X23_Y21_N20
\Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = ((\Add7~6_combout\ $ (\Add8~4_combout\ $ (!\Add9~7\)))) # (GND)
-- \Add9~9\ = CARRY((\Add7~6_combout\ & ((\Add8~4_combout\) # (!\Add9~7\))) # (!\Add7~6_combout\ & (\Add8~4_combout\ & !\Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add8~4_combout\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X23_Y20_N6
\Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\Add9~2_combout\ & ((num_c3(1) & (\Add10~1\ & VCC)) # (!num_c3(1) & (!\Add10~1\)))) # (!\Add9~2_combout\ & ((num_c3(1) & (!\Add10~1\)) # (!num_c3(1) & ((\Add10~1\) # (GND)))))
-- \Add10~3\ = CARRY((\Add9~2_combout\ & (!num_c3(1) & !\Add10~1\)) # (!\Add9~2_combout\ & ((!\Add10~1\) # (!num_c3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => num_c3(1),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X22_Y20_N6
\Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = (count1(0) & (num_c1(0) $ (VCC))) # (!count1(0) & ((num_c1(0)) # (GND)))
-- \Add13~1\ = CARRY((num_c1(0)) # (!count1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(0),
	datab => num_c1(0),
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X22_Y19_N10
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (count2(4) & (\Mult1|mult_core|romout[0][4]~1_combout\ $ (VCC))) # (!count2(4) & (\Mult1|mult_core|romout[0][4]~1_combout\ & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((count2(4) & \Mult1|mult_core|romout[0][4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(4),
	datab => \Mult1|mult_core|romout[0][4]~1_combout\,
	datad => VCC,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X22_Y19_N12
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult1|mult_core|romout[0][5]~0_combout\ & ((count2(5) & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!count2(5) & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult1|mult_core|romout[0][5]~0_combout\ & ((count2(5) & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!count2(5) & 
-- ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult1|mult_core|romout[0][5]~0_combout\ & (!count2(5) & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult1|mult_core|romout[0][5]~0_combout\ & 
-- ((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!count2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][5]~0_combout\,
	datab => count2(5),
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y22_N12
\Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = \Add11~11\ $ (GND)
-- \Add11~13\ = CARRY(!\Add11~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X22_Y21_N10
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (num_c1(4) & (\Add7~7\ $ (GND))) # (!num_c1(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((num_c1(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_c1(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X23_Y21_N22
\Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\Add7~8_combout\ & ((\Add8~6_combout\ & (\Add9~9\ & VCC)) # (!\Add8~6_combout\ & (!\Add9~9\)))) # (!\Add7~8_combout\ & ((\Add8~6_combout\ & (!\Add9~9\)) # (!\Add8~6_combout\ & ((\Add9~9\) # (GND)))))
-- \Add9~11\ = CARRY((\Add7~8_combout\ & (!\Add8~6_combout\ & !\Add9~9\)) # (!\Add7~8_combout\ & ((!\Add9~9\) # (!\Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add8~6_combout\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X23_Y20_N14
\Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\Add9~10_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\Add10~9\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add10~9\)))) # (!\Add9~10_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add10~9\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add10~9\) # (GND)))))
-- \Add10~11\ = CARRY((\Add9~10_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & !\Add10~9\)) # (!\Add9~10_combout\ & ((!\Add10~9\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X22_Y19_N14
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\Mult1|mult_core|romout[0][6]~3_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # (!\Mult1|mult_core|romout[0][6]~3_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult1|mult_core|romout[0][6]~3_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|mult_core|romout[0][6]~3_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y22_N22
\Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (count1(3) & ((\Add11~14_combout\ & (\Add12~5\ & VCC)) # (!\Add11~14_combout\ & (!\Add12~5\)))) # (!count1(3) & ((\Add11~14_combout\ & (!\Add12~5\)) # (!\Add11~14_combout\ & ((\Add12~5\) # (GND)))))
-- \Add12~7\ = CARRY((count1(3) & (!\Add11~14_combout\ & !\Add12~5\)) # (!count1(3) & ((!\Add12~5\) # (!\Add11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datab => \Add11~14_combout\,
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X22_Y21_N12
\Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (num_c1(5) & (!\Add7~9\)) # (!num_c1(5) & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!num_c1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c1(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X24_Y20_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\Mult0|mult_core|romout[0][7]~3_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # (!\Mult0|mult_core|romout[0][7]~3_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[0][7]~3_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][7]~3_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y20_N20
\Add13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~14_combout\ = (\Add12~6_combout\ & ((\Add10~12_combout\ & (!\Add13~13\)) # (!\Add10~12_combout\ & ((\Add13~13\) # (GND))))) # (!\Add12~6_combout\ & ((\Add10~12_combout\ & (\Add13~13\ & VCC)) # (!\Add10~12_combout\ & (!\Add13~13\))))
-- \Add13~15\ = CARRY((\Add12~6_combout\ & ((!\Add13~13\) # (!\Add10~12_combout\))) # (!\Add12~6_combout\ & (!\Add10~12_combout\ & !\Add13~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~6_combout\,
	datab => \Add10~12_combout\,
	datad => VCC,
	cin => \Add13~13\,
	combout => \Add13~14_combout\,
	cout => \Add13~15\);

-- Location: LCCOMB_X22_Y21_N14
\Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = !\Add7~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add7~11\,
	combout => \Add7~12_combout\);

-- Location: LCCOMB_X23_Y21_N26
\Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\Add7~12_combout\ & ((\Add8~10_combout\ & (\Add9~13\ & VCC)) # (!\Add8~10_combout\ & (!\Add9~13\)))) # (!\Add7~12_combout\ & ((\Add8~10_combout\ & (!\Add9~13\)) # (!\Add8~10_combout\ & ((\Add9~13\) # (GND)))))
-- \Add9~15\ = CARRY((\Add7~12_combout\ & (!\Add8~10_combout\ & !\Add9~13\)) # (!\Add7~12_combout\ & ((!\Add9~13\) # (!\Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datab => \Add8~10_combout\,
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X23_Y20_N18
\Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (\Add9~14_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\Add10~13\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add10~13\)))) # (!\Add9~14_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add10~13\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add10~13\) # (GND)))))
-- \Add10~15\ = CARRY((\Add9~14_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\Add10~13\)) # (!\Add9~14_combout\ & ((!\Add10~13\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X22_Y19_N18
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult1|mult_core|romout[0][8]~6_combout\ $ (\Mult1|mult_core|romout[1][4]~5_combout\ $ (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult1|mult_core|romout[0][8]~6_combout\ & ((\Mult1|mult_core|romout[1][4]~5_combout\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult1|mult_core|romout[0][8]~6_combout\ & (\Mult1|mult_core|romout[1][4]~5_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][8]~6_combout\,
	datab => \Mult1|mult_core|romout[1][4]~5_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X24_Y20_N24
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|romout[1][5]~5_combout\ $ (\Mult0|mult_core|romout[0][9]~6_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|romout[1][5]~5_combout\ & ((\Mult0|mult_core|romout[0][9]~6_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult0|mult_core|romout[1][5]~5_combout\ & (\Mult0|mult_core|romout[0][9]~6_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][5]~5_combout\,
	datab => \Mult0|mult_core|romout[0][9]~6_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X23_Y20_N20
\Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (\Add9~16_combout\ $ (!\Add10~15\)))) # (GND)
-- \Add10~17\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\Add9~16_combout\) # (!\Add10~15\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\Add9~16_combout\ & !\Add10~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Add9~16_combout\,
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: LCCOMB_X22_Y19_N20
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ & ((count2(4)) # ((!count2(5))))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ & (((!count2(4) & count2(5))) # 
-- (GND)))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((count2(4)) # ((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!count2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(4),
	datab => count2(5),
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X22_Y22_N28
\Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = (\Add11~14_combout\ & (\Add12~11\ $ (GND))) # (!\Add11~14_combout\ & (!\Add12~11\ & VCC))
-- \Add12~13\ = CARRY((\Add11~14_combout\ & !\Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add11~14_combout\,
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X22_Y20_N26
\Add13~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~20_combout\ = ((\Add12~12_combout\ $ (\Add10~18_combout\ $ (\Add13~19\)))) # (GND)
-- \Add13~21\ = CARRY((\Add12~12_combout\ & (\Add10~18_combout\ & !\Add13~19\)) # (!\Add12~12_combout\ & ((\Add10~18_combout\) # (!\Add13~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datab => \Add10~18_combout\,
	datad => VCC,
	cin => \Add13~19\,
	combout => \Add13~20_combout\,
	cout => \Add13~21\);

-- Location: FF_X14_Y19_N29
\s1|cur_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|cur_data[0]~2_combout\,
	asdata => \s1|deci_data\(0),
	sload => \s1|Equal2~1_combout\,
	ena => \s1|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|cur_data\(0));

-- Location: FF_X27_Y19_N7
\slow_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[0]~26_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(0));

-- Location: FF_X27_Y19_N11
\slow_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[2]~30_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(2));

-- Location: FF_X27_Y19_N13
\slow_clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[3]~32_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(3));

-- Location: FF_X27_Y19_N27
\slow_clk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[10]~46_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(10));

-- Location: FF_X27_Y19_N31
\slow_clk[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[12]~50_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(12));

-- Location: FF_X27_Y18_N11
\slow_clk[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[18]~62_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(18));

-- Location: FF_X27_Y18_N15
\slow_clk[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[20]~66_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(20));

-- Location: FF_X27_Y18_N21
\slow_clk[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[23]~72_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(23));

-- Location: FF_X27_Y18_N17
\slow_clk[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[21]~68_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(21));

-- Location: FF_X27_Y18_N19
\slow_clk[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[22]~70_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(22));

-- Location: FF_X27_Y18_N23
\slow_clk[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[24]~74_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(24));

-- Location: FF_X27_Y18_N25
\slow_clk[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[25]~76_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(25));

-- Location: LCCOMB_X21_Y22_N6
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = count1(0) $ (VCC)
-- \Add5~1\ = CARRY(count1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X21_Y22_N10
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (count1(2) & (\Add5~3\ $ (GND))) # (!count1(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((count1(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X21_Y22_N12
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (count1(3) & (!\Add5~5\)) # (!count1(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!count1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: FF_X15_Y16_N1
\de1|steady\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|steady~feeder_combout\,
	asdata => \in_5j~input_o\,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|steady~q\);

-- Location: LCCOMB_X22_Y21_N28
\num_c1[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c1[4]~12_combout\ = (num_c1(4) & (!\num_c1[3]~10\)) # (!num_c1(4) & ((\num_c1[3]~10\) # (GND)))
-- \num_c1[4]~13\ = CARRY((!\num_c1[3]~10\) # (!num_c1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_c1(4),
	datad => VCC,
	cin => \num_c1[3]~10\,
	combout => \num_c1[4]~12_combout\,
	cout => \num_c1[4]~13\);

-- Location: LCCOMB_X22_Y21_N30
\num_c1[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c1[5]~14_combout\ = \num_c1[4]~13\ $ (!num_c1(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => num_c1(5),
	cin => \num_c1[4]~13\,
	combout => \num_c1[5]~14_combout\);

-- Location: FF_X4_Y22_N29
\de2|steady\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|steady~feeder_combout\,
	asdata => \in_1y~input_o\,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|steady~q\);

-- Location: LCCOMB_X24_Y21_N6
\num_c2[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c2[4]~11_combout\ = (num_c2(4) & (!\num_c2[3]~10\)) # (!num_c2(4) & ((\num_c2[3]~10\) # (GND)))
-- \num_c2[4]~12\ = CARRY((!\num_c2[3]~10\) # (!num_c2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c2(4),
	datad => VCC,
	cin => \num_c2[3]~10\,
	combout => \num_c2[4]~11_combout\,
	cout => \num_c2[4]~12\);

-- Location: FF_X17_Y17_N25
\de3|steady\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|steady~feeder_combout\,
	asdata => \in_5y~input_o\,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|steady~q\);

-- Location: LCCOMB_X23_Y19_N6
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (count2(2) & (\Add6~3\ $ (GND))) # (!count2(2) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((count2(2) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X11_Y23_N24
\s1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~10_combout\ = (\s1|times\(5) & (!\s1|Add0~9\)) # (!\s1|times\(5) & ((\s1|Add0~9\) # (GND)))
-- \s1|Add0~11\ = CARRY((!\s1|Add0~9\) # (!\s1|times\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(5),
	datad => VCC,
	cin => \s1|Add0~9\,
	combout => \s1|Add0~10_combout\,
	cout => \s1|Add0~11\);

-- Location: LCCOMB_X11_Y23_N28
\s1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~14_combout\ = (\s1|times\(7) & (!\s1|Add0~13\)) # (!\s1|times\(7) & ((\s1|Add0~13\) # (GND)))
-- \s1|Add0~15\ = CARRY((!\s1|Add0~13\) # (!\s1|times\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(7),
	datad => VCC,
	cin => \s1|Add0~13\,
	combout => \s1|Add0~14_combout\,
	cout => \s1|Add0~15\);

-- Location: LCCOMB_X11_Y22_N6
\s1|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~24_combout\ = (\s1|times\(12) & (\s1|Add0~23\ $ (GND))) # (!\s1|times\(12) & (!\s1|Add0~23\ & VCC))
-- \s1|Add0~25\ = CARRY((\s1|times\(12) & !\s1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(12),
	datad => VCC,
	cin => \s1|Add0~23\,
	combout => \s1|Add0~24_combout\,
	cout => \s1|Add0~25\);

-- Location: LCCOMB_X11_Y22_N10
\s1|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~28_combout\ = (\s1|times\(14) & (\s1|Add0~27\ $ (GND))) # (!\s1|times\(14) & (!\s1|Add0~27\ & VCC))
-- \s1|Add0~29\ = CARRY((\s1|times\(14) & !\s1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(14),
	datad => VCC,
	cin => \s1|Add0~27\,
	combout => \s1|Add0~28_combout\,
	cout => \s1|Add0~29\);

-- Location: LCCOMB_X11_Y22_N16
\s1|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~34_combout\ = (\s1|times\(17) & (!\s1|Add0~33\)) # (!\s1|times\(17) & ((\s1|Add0~33\) # (GND)))
-- \s1|Add0~35\ = CARRY((!\s1|Add0~33\) # (!\s1|times\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(17),
	datad => VCC,
	cin => \s1|Add0~33\,
	combout => \s1|Add0~34_combout\,
	cout => \s1|Add0~35\);

-- Location: FF_X15_Y19_N9
\s1|deci_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|deci_data[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(4));

-- Location: LCCOMB_X14_Y19_N28
\s1|cur_data[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|cur_data[0]~2_combout\ = (\s1|Equal1~3_combout\ & (\s1|deci_data\(4))) # (!\s1|Equal1~3_combout\ & ((\s1|deci_data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal1~3_combout\,
	datab => \s1|deci_data\(4),
	datad => \s1|deci_data\(8),
	combout => \s1|cur_data[0]~2_combout\);

-- Location: LCCOMB_X27_Y19_N6
\slow_clk[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[0]~26_combout\ = slow_clk(0) $ (VCC)
-- \slow_clk[0]~27\ = CARRY(slow_clk(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(0),
	datad => VCC,
	combout => \slow_clk[0]~26_combout\,
	cout => \slow_clk[0]~27\);

-- Location: LCCOMB_X27_Y19_N10
\slow_clk[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[2]~30_combout\ = (slow_clk(2) & (\slow_clk[1]~29\ $ (GND))) # (!slow_clk(2) & (!\slow_clk[1]~29\ & VCC))
-- \slow_clk[2]~31\ = CARRY((slow_clk(2) & !\slow_clk[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(2),
	datad => VCC,
	cin => \slow_clk[1]~29\,
	combout => \slow_clk[2]~30_combout\,
	cout => \slow_clk[2]~31\);

-- Location: LCCOMB_X27_Y19_N12
\slow_clk[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[3]~32_combout\ = (slow_clk(3) & (!\slow_clk[2]~31\)) # (!slow_clk(3) & ((\slow_clk[2]~31\) # (GND)))
-- \slow_clk[3]~33\ = CARRY((!\slow_clk[2]~31\) # (!slow_clk(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(3),
	datad => VCC,
	cin => \slow_clk[2]~31\,
	combout => \slow_clk[3]~32_combout\,
	cout => \slow_clk[3]~33\);

-- Location: LCCOMB_X27_Y19_N26
\slow_clk[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[10]~46_combout\ = (slow_clk(10) & (\slow_clk[9]~45\ $ (GND))) # (!slow_clk(10) & (!\slow_clk[9]~45\ & VCC))
-- \slow_clk[10]~47\ = CARRY((slow_clk(10) & !\slow_clk[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(10),
	datad => VCC,
	cin => \slow_clk[9]~45\,
	combout => \slow_clk[10]~46_combout\,
	cout => \slow_clk[10]~47\);

-- Location: LCCOMB_X27_Y19_N30
\slow_clk[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[12]~50_combout\ = (slow_clk(12) & (\slow_clk[11]~49\ $ (GND))) # (!slow_clk(12) & (!\slow_clk[11]~49\ & VCC))
-- \slow_clk[12]~51\ = CARRY((slow_clk(12) & !\slow_clk[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(12),
	datad => VCC,
	cin => \slow_clk[11]~49\,
	combout => \slow_clk[12]~50_combout\,
	cout => \slow_clk[12]~51\);

-- Location: LCCOMB_X27_Y18_N10
\slow_clk[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[18]~62_combout\ = (slow_clk(18) & (\slow_clk[17]~61\ $ (GND))) # (!slow_clk(18) & (!\slow_clk[17]~61\ & VCC))
-- \slow_clk[18]~63\ = CARRY((slow_clk(18) & !\slow_clk[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(18),
	datad => VCC,
	cin => \slow_clk[17]~61\,
	combout => \slow_clk[18]~62_combout\,
	cout => \slow_clk[18]~63\);

-- Location: LCCOMB_X27_Y18_N12
\slow_clk[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[19]~64_combout\ = (slow_clk(19) & (!\slow_clk[18]~63\)) # (!slow_clk(19) & ((\slow_clk[18]~63\) # (GND)))
-- \slow_clk[19]~65\ = CARRY((!\slow_clk[18]~63\) # (!slow_clk(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(19),
	datad => VCC,
	cin => \slow_clk[18]~63\,
	combout => \slow_clk[19]~64_combout\,
	cout => \slow_clk[19]~65\);

-- Location: LCCOMB_X27_Y18_N14
\slow_clk[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[20]~66_combout\ = (slow_clk(20) & (\slow_clk[19]~65\ $ (GND))) # (!slow_clk(20) & (!\slow_clk[19]~65\ & VCC))
-- \slow_clk[20]~67\ = CARRY((slow_clk(20) & !\slow_clk[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(20),
	datad => VCC,
	cin => \slow_clk[19]~65\,
	combout => \slow_clk[20]~66_combout\,
	cout => \slow_clk[20]~67\);

-- Location: LCCOMB_X27_Y18_N16
\slow_clk[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[21]~68_combout\ = (slow_clk(21) & (!\slow_clk[20]~67\)) # (!slow_clk(21) & ((\slow_clk[20]~67\) # (GND)))
-- \slow_clk[21]~69\ = CARRY((!\slow_clk[20]~67\) # (!slow_clk(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(21),
	datad => VCC,
	cin => \slow_clk[20]~67\,
	combout => \slow_clk[21]~68_combout\,
	cout => \slow_clk[21]~69\);

-- Location: LCCOMB_X27_Y18_N18
\slow_clk[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[22]~70_combout\ = (slow_clk(22) & (\slow_clk[21]~69\ $ (GND))) # (!slow_clk(22) & (!\slow_clk[21]~69\ & VCC))
-- \slow_clk[22]~71\ = CARRY((slow_clk(22) & !\slow_clk[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(22),
	datad => VCC,
	cin => \slow_clk[21]~69\,
	combout => \slow_clk[22]~70_combout\,
	cout => \slow_clk[22]~71\);

-- Location: LCCOMB_X27_Y18_N20
\slow_clk[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[23]~72_combout\ = (slow_clk(23) & (!\slow_clk[22]~71\)) # (!slow_clk(23) & ((\slow_clk[22]~71\) # (GND)))
-- \slow_clk[23]~73\ = CARRY((!\slow_clk[22]~71\) # (!slow_clk(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(23),
	datad => VCC,
	cin => \slow_clk[22]~71\,
	combout => \slow_clk[23]~72_combout\,
	cout => \slow_clk[23]~73\);

-- Location: LCCOMB_X27_Y18_N22
\slow_clk[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[24]~74_combout\ = (slow_clk(24) & (\slow_clk[23]~73\ $ (GND))) # (!slow_clk(24) & (!\slow_clk[23]~73\ & VCC))
-- \slow_clk[24]~75\ = CARRY((slow_clk(24) & !\slow_clk[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(24),
	datad => VCC,
	cin => \slow_clk[23]~73\,
	combout => \slow_clk[24]~74_combout\,
	cout => \slow_clk[24]~75\);

-- Location: LCCOMB_X27_Y18_N24
\slow_clk[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[25]~76_combout\ = \slow_clk[24]~75\ $ (slow_clk(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => slow_clk(25),
	cin => \slow_clk[24]~75\,
	combout => \slow_clk[25]~76_combout\);

-- Location: FF_X15_Y16_N23
\de1|old\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|old~feeder_combout\,
	asdata => \in_5j~input_o\,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|old~q\);

-- Location: FF_X14_Y16_N9
\de1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[0]~25_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(0));

-- Location: FF_X14_Y16_N11
\de1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[1]~29_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(1));

-- Location: FF_X14_Y16_N13
\de1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[2]~31_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(2));

-- Location: FF_X14_Y16_N15
\de1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[3]~33_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(3));

-- Location: FF_X14_Y16_N19
\de1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[5]~37_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(5));

-- Location: FF_X14_Y16_N21
\de1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[6]~39_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(6));

-- Location: FF_X14_Y16_N17
\de1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[4]~35_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(4));

-- Location: FF_X14_Y16_N23
\de1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[7]~41_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(7));

-- Location: FF_X14_Y16_N25
\de1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[8]~43_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(8));

-- Location: FF_X14_Y16_N27
\de1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[9]~45_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(9));

-- Location: FF_X14_Y16_N29
\de1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[10]~47_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(10));

-- Location: FF_X14_Y16_N31
\de1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[11]~49_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(11));

-- Location: FF_X14_Y15_N3
\de1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[13]~53_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(13));

-- Location: FF_X14_Y15_N5
\de1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[14]~55_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(14));

-- Location: FF_X14_Y15_N7
\de1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[15]~57_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(15));

-- Location: FF_X14_Y15_N1
\de1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[12]~51_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(12));

-- Location: FF_X14_Y15_N11
\de1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[17]~61_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(17));

-- Location: FF_X14_Y15_N13
\de1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[18]~63_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(18));

-- Location: FF_X14_Y15_N9
\de1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[16]~59_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(16));

-- Location: FF_X14_Y15_N15
\de1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[19]~65_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(19));

-- Location: FF_X14_Y15_N17
\de1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[20]~67_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(20));

-- Location: FF_X14_Y15_N19
\de1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[21]~69_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(21));

-- Location: FF_X14_Y15_N21
\de1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[22]~71_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(22));

-- Location: FF_X14_Y15_N23
\de1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[23]~73_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(23));

-- Location: FF_X14_Y15_N25
\de1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de1|count[24]~75_combout\,
	sclr => \de1|count[11]~27_combout\,
	ena => \de1|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de1|count\(24));

-- Location: FF_X7_Y22_N29
\de2|old\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|old~feeder_combout\,
	asdata => \in_1y~input_o\,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|old~q\);

-- Location: FF_X5_Y22_N9
\de2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[0]~25_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(0));

-- Location: FF_X5_Y22_N11
\de2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[1]~29_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(1));

-- Location: FF_X5_Y22_N13
\de2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[2]~31_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(2));

-- Location: FF_X5_Y22_N15
\de2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[3]~33_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(3));

-- Location: FF_X5_Y22_N19
\de2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[5]~37_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(5));

-- Location: FF_X5_Y22_N21
\de2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[6]~39_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(6));

-- Location: FF_X5_Y22_N17
\de2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[4]~35_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(4));

-- Location: FF_X5_Y22_N23
\de2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[7]~41_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(7));

-- Location: FF_X5_Y22_N25
\de2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[8]~43_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(8));

-- Location: FF_X5_Y22_N27
\de2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[9]~45_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(9));

-- Location: FF_X5_Y22_N29
\de2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[10]~47_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(10));

-- Location: FF_X5_Y22_N31
\de2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[11]~49_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(11));

-- Location: FF_X5_Y21_N3
\de2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[13]~53_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(13));

-- Location: FF_X5_Y21_N5
\de2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[14]~55_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(14));

-- Location: FF_X5_Y21_N7
\de2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[15]~57_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(15));

-- Location: FF_X5_Y21_N1
\de2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[12]~51_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(12));

-- Location: FF_X5_Y21_N11
\de2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[17]~61_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(17));

-- Location: FF_X5_Y21_N13
\de2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[18]~63_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(18));

-- Location: FF_X5_Y21_N9
\de2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[16]~59_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(16));

-- Location: FF_X5_Y21_N15
\de2|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[19]~65_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(19));

-- Location: FF_X5_Y21_N17
\de2|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[20]~67_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(20));

-- Location: FF_X5_Y21_N19
\de2|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[21]~69_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(21));

-- Location: FF_X5_Y21_N21
\de2|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[22]~71_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(22));

-- Location: FF_X5_Y21_N23
\de2|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[23]~73_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(23));

-- Location: FF_X5_Y21_N25
\de2|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de2|count[24]~75_combout\,
	sclr => \de2|count[21]~27_combout\,
	ena => \de2|count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de2|count\(24));

-- Location: FF_X15_Y16_N19
\de3|old\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|old~feeder_combout\,
	asdata => \in_5y~input_o\,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|old~q\);

-- Location: FF_X16_Y17_N9
\de3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[0]~25_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(0));

-- Location: FF_X16_Y17_N11
\de3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[1]~29_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(1));

-- Location: FF_X16_Y17_N13
\de3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[2]~31_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(2));

-- Location: FF_X16_Y17_N15
\de3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[3]~33_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(3));

-- Location: FF_X16_Y17_N19
\de3|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[5]~37_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(5));

-- Location: FF_X16_Y17_N21
\de3|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[6]~39_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(6));

-- Location: FF_X16_Y17_N17
\de3|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[4]~35_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(4));

-- Location: FF_X16_Y17_N23
\de3|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[7]~41_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(7));

-- Location: FF_X16_Y17_N25
\de3|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[8]~43_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(8));

-- Location: FF_X16_Y17_N27
\de3|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[9]~45_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(9));

-- Location: FF_X16_Y17_N29
\de3|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[10]~47_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(10));

-- Location: FF_X16_Y17_N31
\de3|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[11]~49_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(11));

-- Location: FF_X16_Y16_N3
\de3|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[13]~53_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(13));

-- Location: FF_X16_Y16_N5
\de3|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[14]~55_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(14));

-- Location: FF_X16_Y16_N7
\de3|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[15]~57_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(15));

-- Location: FF_X16_Y16_N1
\de3|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[12]~51_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(12));

-- Location: FF_X16_Y16_N11
\de3|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[17]~61_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(17));

-- Location: FF_X16_Y16_N13
\de3|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[18]~63_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(18));

-- Location: FF_X16_Y16_N9
\de3|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[16]~59_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(16));

-- Location: FF_X16_Y16_N15
\de3|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[19]~65_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(19));

-- Location: FF_X16_Y16_N17
\de3|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[20]~67_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(20));

-- Location: FF_X16_Y16_N19
\de3|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[21]~69_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(21));

-- Location: FF_X16_Y16_N21
\de3|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[22]~71_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(22));

-- Location: FF_X16_Y16_N23
\de3|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[23]~73_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(23));

-- Location: FF_X16_Y16_N25
\de3|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \de3|count[24]~75_combout\,
	sclr => \de3|count[11]~27_combout\,
	ena => \de3|count[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de3|count\(24));

-- Location: LCCOMB_X17_Y20_N24
\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\now_money[10]~20_combout\ & (!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\now_money[10]~20_combout\ & 
-- ((\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\now_money[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \now_money[10]~20_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X17_Y20_N26
\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\now_money[11]~22_combout\ & (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\now_money[11]~22_combout\ & 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\now_money[11]~22_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[11]~22_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X16_Y20_N4
\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\s1|Div0|auto_generated|divider|divider|StageOut[49]~101_combout\) # (\s1|Div0|auto_generated|divider|divider|StageOut[49]~100_combout\)))
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\s1|Div0|auto_generated|divider|divider|StageOut[49]~101_combout\) # (\s1|Div0|auto_generated|divider|divider|StageOut[49]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[49]~101_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[49]~100_combout\,
	datad => VCC,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X16_Y20_N8
\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\s1|Div0|auto_generated|divider|divider|StageOut[51]~97_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[51]~96_combout\))))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[51]~97_combout\) # 
-- ((\s1|Div0|auto_generated|divider|divider|StageOut[51]~96_combout\) # (GND))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\s1|Div0|auto_generated|divider|divider|StageOut[51]~97_combout\) # ((\s1|Div0|auto_generated|divider|divider|StageOut[51]~96_combout\) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[51]~97_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[51]~96_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X16_Y20_N12
\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\s1|Div0|auto_generated|divider|divider|StageOut[53]~93_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[53]~92_combout\)))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\s1|Div0|auto_generated|divider|divider|StageOut[53]~93_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[53]~92_combout\)))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[53]~93_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[53]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[53]~92_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X20_Y20_N22
\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\s1|Div0|auto_generated|divider|divider|StageOut[61]~103_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[61]~141_combout\)))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\s1|Div0|auto_generated|divider|divider|StageOut[61]~103_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[61]~141_combout\)))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[61]~103_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[61]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[61]~103_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[61]~141_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X19_Y20_N14
\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = (((\s1|Div0|auto_generated|divider|divider|StageOut[65]~116_combout\) # (\s1|Div0|auto_generated|divider|divider|StageOut[65]~115_combout\)))
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY((\s1|Div0|auto_generated|divider|divider|StageOut[65]~116_combout\) # (\s1|Div0|auto_generated|divider|divider|StageOut[65]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[65]~116_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[65]~115_combout\,
	datad => VCC,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X19_Y20_N22
\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & (((\s1|Div0|auto_generated|divider|divider|StageOut[69]~111_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[69]~132_combout\)))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((((\s1|Div0|auto_generated|divider|divider|StageOut[69]~111_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[69]~132_combout\)))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[69]~111_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[69]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[69]~111_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[69]~132_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X20_Y22_N16
\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ = (((\s1|Div0|auto_generated|divider|divider|StageOut[73]~122_combout\) # (\s1|Div0|auto_generated|divider|divider|StageOut[73]~123_combout\)))
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ = CARRY((\s1|Div0|auto_generated|divider|divider|StageOut[73]~122_combout\) # (\s1|Div0|auto_generated|divider|divider|StageOut[73]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[73]~122_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[73]~123_combout\,
	datad => VCC,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\);

-- Location: LCCOMB_X20_Y22_N18
\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (((\s1|Div0|auto_generated|divider|divider|StageOut[74]~121_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[74]~146_combout\)))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[74]~121_combout\ & 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[74]~146_combout\)))
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ = CARRY((!\s1|Div0|auto_generated|divider|divider|StageOut[74]~121_combout\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[74]~146_combout\ & 
-- !\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[74]~121_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[74]~146_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\);

-- Location: LCCOMB_X20_Y22_N20
\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((((\s1|Div0|auto_generated|divider|divider|StageOut[75]~148_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[75]~120_combout\))))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[75]~148_combout\) # 
-- ((\s1|Div0|auto_generated|divider|divider|StageOut[75]~120_combout\) # (GND))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ = CARRY((\s1|Div0|auto_generated|divider|divider|StageOut[75]~148_combout\) # ((\s1|Div0|auto_generated|divider|divider|StageOut[75]~120_combout\) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[75]~148_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[75]~120_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\);

-- Location: LCCOMB_X20_Y22_N22
\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ = (\s1|Div0|auto_generated|divider|divider|StageOut[76]~136_combout\ & (((!\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)))) # 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[76]~136_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[76]~119_combout\ & (!\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)) # 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[76]~119_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\) # (GND)))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ = CARRY(((!\s1|Div0|auto_generated|divider|divider|StageOut[76]~136_combout\ & !\s1|Div0|auto_generated|divider|divider|StageOut[76]~119_combout\)) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[76]~136_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[76]~119_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\);

-- Location: LCCOMB_X20_Y22_N24
\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & (((\s1|Div0|auto_generated|divider|divider|StageOut[77]~135_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[77]~118_combout\)))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((((\s1|Div0|auto_generated|divider|divider|StageOut[77]~135_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[77]~118_combout\)))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ = CARRY((!\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[77]~135_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[77]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[77]~135_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[77]~118_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\);

-- Location: LCCOMB_X19_Y22_N0
\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1_cout\ = CARRY((\s1|Div0|auto_generated|divider|divider|StageOut[81]~129_combout\) # (\s1|Div0|auto_generated|divider|divider|StageOut[81]~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[81]~129_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[81]~130_combout\,
	datad => VCC,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1_cout\);

-- Location: LCCOMB_X19_Y22_N2
\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3_cout\ = CARRY((!\s1|Div0|auto_generated|divider|divider|StageOut[82]~128_combout\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[82]~147_combout\ & 
-- !\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[82]~128_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[82]~147_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1_cout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3_cout\);

-- Location: LCCOMB_X19_Y22_N4
\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5_cout\ = CARRY((\s1|Div0|auto_generated|divider|divider|StageOut[83]~149_combout\) # ((\s1|Div0|auto_generated|divider|divider|StageOut[83]~127_combout\) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[83]~149_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[83]~127_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3_cout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5_cout\);

-- Location: LCCOMB_X19_Y22_N6
\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7_cout\ = CARRY(((!\s1|Div0|auto_generated|divider|divider|StageOut[84]~126_combout\ & !\s1|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\)) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[84]~126_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5_cout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7_cout\);

-- Location: LCCOMB_X19_Y22_N8
\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9_cout\ = CARRY((!\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7_cout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[85]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[85]~125_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7_cout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9_cout\);

-- Location: LCCOMB_X19_Y22_N10
\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\ = CARRY((!\s1|Div0|auto_generated|divider|divider|StageOut[86]~124_combout\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\ & 
-- !\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[86]~124_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9_cout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\);

-- Location: LCCOMB_X19_Y22_N12
\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ = \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\);

-- Location: LCCOMB_X14_Y18_N10
\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\s1|temp1\(5) & (\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & VCC)) # (!\s1|temp1\(5) & 
-- (!\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\))
-- \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\s1|temp1\(5) & !\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|temp1\(5),
	datad => VCC,
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X14_Y18_N12
\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\s1|temp1\(6) & (\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ $ (GND))) # (!\s1|temp1\(6) & 
-- (!\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & VCC))
-- \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((\s1|temp1\(6) & !\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|temp1\(6),
	datad => VCC,
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X15_Y18_N0
\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\s1|Div1|auto_generated|divider|divider|StageOut[40]~32_combout\) # (\s1|Div1|auto_generated|divider|divider|StageOut[40]~33_combout\)))
-- \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\s1|Div1|auto_generated|divider|divider|StageOut[40]~32_combout\) # (\s1|Div1|auto_generated|divider|divider|StageOut[40]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[40]~32_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[40]~33_combout\,
	datad => VCC,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X15_Y18_N2
\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\s1|Div1|auto_generated|divider|divider|StageOut[41]~31_combout\) # 
-- (\s1|Div1|auto_generated|divider|divider|StageOut[41]~30_combout\)))) # (!\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\s1|Div1|auto_generated|divider|divider|StageOut[41]~31_combout\ & 
-- (!\s1|Div1|auto_generated|divider|divider|StageOut[41]~30_combout\)))
-- \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\s1|Div1|auto_generated|divider|divider|StageOut[41]~31_combout\ & (!\s1|Div1|auto_generated|divider|divider|StageOut[41]~30_combout\ & 
-- !\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[41]~31_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[41]~30_combout\,
	datad => VCC,
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X15_Y18_N4
\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\s1|Div1|auto_generated|divider|divider|StageOut[42]~29_combout\) # 
-- (\s1|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\)))) # (!\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\s1|Div1|auto_generated|divider|divider|StageOut[42]~29_combout\) # 
-- (\s1|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\)))))
-- \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\s1|Div1|auto_generated|divider|divider|StageOut[42]~29_combout\) # 
-- (\s1|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[42]~29_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\,
	datad => VCC,
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X15_Y18_N16
\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\s1|Div1|auto_generated|divider|divider|StageOut[45]~38_combout\) # (\s1|Div1|auto_generated|divider|divider|StageOut[45]~39_combout\)))
-- \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\s1|Div1|auto_generated|divider|divider|StageOut[45]~38_combout\) # (\s1|Div1|auto_generated|divider|divider|StageOut[45]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[45]~38_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[45]~39_combout\,
	datad => VCC,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X15_Y18_N18
\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\s1|Div1|auto_generated|divider|divider|StageOut[46]~37_combout\) # 
-- (\s1|Div1|auto_generated|divider|divider|StageOut[46]~36_combout\)))) # (!\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\s1|Div1|auto_generated|divider|divider|StageOut[46]~37_combout\ & 
-- (!\s1|Div1|auto_generated|divider|divider|StageOut[46]~36_combout\)))
-- \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\s1|Div1|auto_generated|divider|divider|StageOut[46]~37_combout\ & (!\s1|Div1|auto_generated|divider|divider|StageOut[46]~36_combout\ & 
-- !\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[46]~37_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[46]~36_combout\,
	datad => VCC,
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X15_Y18_N20
\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\s1|Div1|auto_generated|divider|divider|StageOut[47]~35_combout\) # 
-- (\s1|Div1|auto_generated|divider|divider|StageOut[47]~48_combout\)))) # (!\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\s1|Div1|auto_generated|divider|divider|StageOut[47]~35_combout\) # 
-- (\s1|Div1|auto_generated|divider|divider|StageOut[47]~48_combout\)))))
-- \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\s1|Div1|auto_generated|divider|divider|StageOut[47]~35_combout\) # 
-- (\s1|Div1|auto_generated|divider|divider|StageOut[47]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[47]~35_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[47]~48_combout\,
	datad => VCC,
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X15_Y19_N0
\s1|deci_data[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|deci_data[4]~2_cout\ = CARRY((\s1|Div1|auto_generated|divider|divider|StageOut[50]~44_combout\) # (\s1|Div1|auto_generated|divider|divider|StageOut[50]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[50]~44_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[50]~45_combout\,
	datad => VCC,
	cout => \s1|deci_data[4]~2_cout\);

-- Location: LCCOMB_X15_Y19_N2
\s1|deci_data[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|deci_data[4]~4_cout\ = CARRY((!\s1|Div1|auto_generated|divider|divider|StageOut[51]~43_combout\ & (!\s1|Div1|auto_generated|divider|divider|StageOut[51]~42_combout\ & !\s1|deci_data[4]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[51]~43_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[51]~42_combout\,
	datad => VCC,
	cin => \s1|deci_data[4]~2_cout\,
	cout => \s1|deci_data[4]~4_cout\);

-- Location: LCCOMB_X15_Y19_N4
\s1|deci_data[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|deci_data[4]~6_cout\ = CARRY((!\s1|deci_data[4]~4_cout\ & ((\s1|Div1|auto_generated|divider|divider|StageOut[52]~49_combout\) # (\s1|Div1|auto_generated|divider|divider|StageOut[52]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[52]~49_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[52]~41_combout\,
	datad => VCC,
	cin => \s1|deci_data[4]~4_cout\,
	cout => \s1|deci_data[4]~6_cout\);

-- Location: LCCOMB_X15_Y19_N6
\s1|deci_data[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|deci_data[4]~8_cout\ = CARRY((!\s1|Div1|auto_generated|divider|divider|StageOut[53]~46_combout\ & (!\s1|Div1|auto_generated|divider|divider|StageOut[53]~40_combout\ & !\s1|deci_data[4]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[53]~46_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[53]~40_combout\,
	datad => VCC,
	cin => \s1|deci_data[4]~6_cout\,
	cout => \s1|deci_data[4]~8_cout\);

-- Location: LCCOMB_X15_Y19_N8
\s1|deci_data[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|deci_data[4]~9_combout\ = !\s1|deci_data[4]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|deci_data[4]~8_cout\,
	combout => \s1|deci_data[4]~9_combout\);

-- Location: LCCOMB_X19_Y19_N2
\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ $ (GND)
-- \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY(!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => VCC,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X20_Y19_N6
\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\s1|Mod0|auto_generated|divider|divider|StageOut[46]~29_combout\) # 
-- (\s1|Mod0|auto_generated|divider|divider|StageOut[46]~28_combout\)))) # (!\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\s1|Mod0|auto_generated|divider|divider|StageOut[46]~29_combout\ & 
-- (!\s1|Mod0|auto_generated|divider|divider|StageOut[46]~28_combout\)))
-- \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\s1|Mod0|auto_generated|divider|divider|StageOut[46]~29_combout\ & (!\s1|Mod0|auto_generated|divider|divider|StageOut[46]~28_combout\ & 
-- !\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|StageOut[46]~29_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|StageOut[46]~28_combout\,
	datad => VCC,
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X20_Y19_N8
\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\s1|Mod0|auto_generated|divider|divider|StageOut[47]~27_combout\) # 
-- (\s1|Mod0|auto_generated|divider|divider|StageOut[47]~26_combout\)))) # (!\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\s1|Mod0|auto_generated|divider|divider|StageOut[47]~27_combout\) # 
-- (\s1|Mod0|auto_generated|divider|divider|StageOut[47]~26_combout\)))))
-- \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\s1|Mod0|auto_generated|divider|divider|StageOut[47]~27_combout\) # 
-- (\s1|Mod0|auto_generated|divider|divider|StageOut[47]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|StageOut[47]~27_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|StageOut[47]~26_combout\,
	datad => VCC,
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X21_Y19_N16
\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\ = !\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\);

-- Location: LCCOMB_X21_Y19_N20
\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\s1|Mod0|auto_generated|divider|divider|StageOut[50]~34_combout\) # (\s1|Mod0|auto_generated|divider|divider|StageOut[50]~33_combout\)))
-- \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\s1|Mod0|auto_generated|divider|divider|StageOut[50]~34_combout\) # (\s1|Mod0|auto_generated|divider|divider|StageOut[50]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|StageOut[50]~34_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|StageOut[50]~33_combout\,
	datad => VCC,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X14_Y16_N8
\de1|count[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[0]~25_combout\ = \de1|count\(0) $ (VCC)
-- \de1|count[0]~26\ = CARRY(\de1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(0),
	datad => VCC,
	combout => \de1|count[0]~25_combout\,
	cout => \de1|count[0]~26\);

-- Location: LCCOMB_X14_Y16_N10
\de1|count[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[1]~29_combout\ = (\de1|count\(1) & (!\de1|count[0]~26\)) # (!\de1|count\(1) & ((\de1|count[0]~26\) # (GND)))
-- \de1|count[1]~30\ = CARRY((!\de1|count[0]~26\) # (!\de1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(1),
	datad => VCC,
	cin => \de1|count[0]~26\,
	combout => \de1|count[1]~29_combout\,
	cout => \de1|count[1]~30\);

-- Location: LCCOMB_X14_Y16_N12
\de1|count[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[2]~31_combout\ = (\de1|count\(2) & (\de1|count[1]~30\ $ (GND))) # (!\de1|count\(2) & (!\de1|count[1]~30\ & VCC))
-- \de1|count[2]~32\ = CARRY((\de1|count\(2) & !\de1|count[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(2),
	datad => VCC,
	cin => \de1|count[1]~30\,
	combout => \de1|count[2]~31_combout\,
	cout => \de1|count[2]~32\);

-- Location: LCCOMB_X14_Y16_N14
\de1|count[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[3]~33_combout\ = (\de1|count\(3) & (!\de1|count[2]~32\)) # (!\de1|count\(3) & ((\de1|count[2]~32\) # (GND)))
-- \de1|count[3]~34\ = CARRY((!\de1|count[2]~32\) # (!\de1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(3),
	datad => VCC,
	cin => \de1|count[2]~32\,
	combout => \de1|count[3]~33_combout\,
	cout => \de1|count[3]~34\);

-- Location: LCCOMB_X14_Y16_N16
\de1|count[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[4]~35_combout\ = (\de1|count\(4) & (\de1|count[3]~34\ $ (GND))) # (!\de1|count\(4) & (!\de1|count[3]~34\ & VCC))
-- \de1|count[4]~36\ = CARRY((\de1|count\(4) & !\de1|count[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(4),
	datad => VCC,
	cin => \de1|count[3]~34\,
	combout => \de1|count[4]~35_combout\,
	cout => \de1|count[4]~36\);

-- Location: LCCOMB_X14_Y16_N18
\de1|count[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[5]~37_combout\ = (\de1|count\(5) & (!\de1|count[4]~36\)) # (!\de1|count\(5) & ((\de1|count[4]~36\) # (GND)))
-- \de1|count[5]~38\ = CARRY((!\de1|count[4]~36\) # (!\de1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(5),
	datad => VCC,
	cin => \de1|count[4]~36\,
	combout => \de1|count[5]~37_combout\,
	cout => \de1|count[5]~38\);

-- Location: LCCOMB_X14_Y16_N20
\de1|count[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[6]~39_combout\ = (\de1|count\(6) & (\de1|count[5]~38\ $ (GND))) # (!\de1|count\(6) & (!\de1|count[5]~38\ & VCC))
-- \de1|count[6]~40\ = CARRY((\de1|count\(6) & !\de1|count[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(6),
	datad => VCC,
	cin => \de1|count[5]~38\,
	combout => \de1|count[6]~39_combout\,
	cout => \de1|count[6]~40\);

-- Location: LCCOMB_X14_Y16_N22
\de1|count[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[7]~41_combout\ = (\de1|count\(7) & (!\de1|count[6]~40\)) # (!\de1|count\(7) & ((\de1|count[6]~40\) # (GND)))
-- \de1|count[7]~42\ = CARRY((!\de1|count[6]~40\) # (!\de1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(7),
	datad => VCC,
	cin => \de1|count[6]~40\,
	combout => \de1|count[7]~41_combout\,
	cout => \de1|count[7]~42\);

-- Location: LCCOMB_X14_Y16_N24
\de1|count[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[8]~43_combout\ = (\de1|count\(8) & (\de1|count[7]~42\ $ (GND))) # (!\de1|count\(8) & (!\de1|count[7]~42\ & VCC))
-- \de1|count[8]~44\ = CARRY((\de1|count\(8) & !\de1|count[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(8),
	datad => VCC,
	cin => \de1|count[7]~42\,
	combout => \de1|count[8]~43_combout\,
	cout => \de1|count[8]~44\);

-- Location: LCCOMB_X14_Y16_N26
\de1|count[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[9]~45_combout\ = (\de1|count\(9) & (!\de1|count[8]~44\)) # (!\de1|count\(9) & ((\de1|count[8]~44\) # (GND)))
-- \de1|count[9]~46\ = CARRY((!\de1|count[8]~44\) # (!\de1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(9),
	datad => VCC,
	cin => \de1|count[8]~44\,
	combout => \de1|count[9]~45_combout\,
	cout => \de1|count[9]~46\);

-- Location: LCCOMB_X14_Y16_N28
\de1|count[10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[10]~47_combout\ = (\de1|count\(10) & (\de1|count[9]~46\ $ (GND))) # (!\de1|count\(10) & (!\de1|count[9]~46\ & VCC))
-- \de1|count[10]~48\ = CARRY((\de1|count\(10) & !\de1|count[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(10),
	datad => VCC,
	cin => \de1|count[9]~46\,
	combout => \de1|count[10]~47_combout\,
	cout => \de1|count[10]~48\);

-- Location: LCCOMB_X14_Y16_N30
\de1|count[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[11]~49_combout\ = (\de1|count\(11) & (!\de1|count[10]~48\)) # (!\de1|count\(11) & ((\de1|count[10]~48\) # (GND)))
-- \de1|count[11]~50\ = CARRY((!\de1|count[10]~48\) # (!\de1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(11),
	datad => VCC,
	cin => \de1|count[10]~48\,
	combout => \de1|count[11]~49_combout\,
	cout => \de1|count[11]~50\);

-- Location: LCCOMB_X14_Y15_N0
\de1|count[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[12]~51_combout\ = (\de1|count\(12) & (\de1|count[11]~50\ $ (GND))) # (!\de1|count\(12) & (!\de1|count[11]~50\ & VCC))
-- \de1|count[12]~52\ = CARRY((\de1|count\(12) & !\de1|count[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(12),
	datad => VCC,
	cin => \de1|count[11]~50\,
	combout => \de1|count[12]~51_combout\,
	cout => \de1|count[12]~52\);

-- Location: LCCOMB_X14_Y15_N2
\de1|count[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[13]~53_combout\ = (\de1|count\(13) & (!\de1|count[12]~52\)) # (!\de1|count\(13) & ((\de1|count[12]~52\) # (GND)))
-- \de1|count[13]~54\ = CARRY((!\de1|count[12]~52\) # (!\de1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(13),
	datad => VCC,
	cin => \de1|count[12]~52\,
	combout => \de1|count[13]~53_combout\,
	cout => \de1|count[13]~54\);

-- Location: LCCOMB_X14_Y15_N4
\de1|count[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[14]~55_combout\ = (\de1|count\(14) & (\de1|count[13]~54\ $ (GND))) # (!\de1|count\(14) & (!\de1|count[13]~54\ & VCC))
-- \de1|count[14]~56\ = CARRY((\de1|count\(14) & !\de1|count[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(14),
	datad => VCC,
	cin => \de1|count[13]~54\,
	combout => \de1|count[14]~55_combout\,
	cout => \de1|count[14]~56\);

-- Location: LCCOMB_X14_Y15_N6
\de1|count[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[15]~57_combout\ = (\de1|count\(15) & (!\de1|count[14]~56\)) # (!\de1|count\(15) & ((\de1|count[14]~56\) # (GND)))
-- \de1|count[15]~58\ = CARRY((!\de1|count[14]~56\) # (!\de1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(15),
	datad => VCC,
	cin => \de1|count[14]~56\,
	combout => \de1|count[15]~57_combout\,
	cout => \de1|count[15]~58\);

-- Location: LCCOMB_X14_Y15_N8
\de1|count[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[16]~59_combout\ = (\de1|count\(16) & (\de1|count[15]~58\ $ (GND))) # (!\de1|count\(16) & (!\de1|count[15]~58\ & VCC))
-- \de1|count[16]~60\ = CARRY((\de1|count\(16) & !\de1|count[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(16),
	datad => VCC,
	cin => \de1|count[15]~58\,
	combout => \de1|count[16]~59_combout\,
	cout => \de1|count[16]~60\);

-- Location: LCCOMB_X14_Y15_N10
\de1|count[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[17]~61_combout\ = (\de1|count\(17) & (!\de1|count[16]~60\)) # (!\de1|count\(17) & ((\de1|count[16]~60\) # (GND)))
-- \de1|count[17]~62\ = CARRY((!\de1|count[16]~60\) # (!\de1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(17),
	datad => VCC,
	cin => \de1|count[16]~60\,
	combout => \de1|count[17]~61_combout\,
	cout => \de1|count[17]~62\);

-- Location: LCCOMB_X14_Y15_N12
\de1|count[18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[18]~63_combout\ = (\de1|count\(18) & (\de1|count[17]~62\ $ (GND))) # (!\de1|count\(18) & (!\de1|count[17]~62\ & VCC))
-- \de1|count[18]~64\ = CARRY((\de1|count\(18) & !\de1|count[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(18),
	datad => VCC,
	cin => \de1|count[17]~62\,
	combout => \de1|count[18]~63_combout\,
	cout => \de1|count[18]~64\);

-- Location: LCCOMB_X14_Y15_N14
\de1|count[19]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[19]~65_combout\ = (\de1|count\(19) & (!\de1|count[18]~64\)) # (!\de1|count\(19) & ((\de1|count[18]~64\) # (GND)))
-- \de1|count[19]~66\ = CARRY((!\de1|count[18]~64\) # (!\de1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(19),
	datad => VCC,
	cin => \de1|count[18]~64\,
	combout => \de1|count[19]~65_combout\,
	cout => \de1|count[19]~66\);

-- Location: LCCOMB_X14_Y15_N16
\de1|count[20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[20]~67_combout\ = (\de1|count\(20) & (\de1|count[19]~66\ $ (GND))) # (!\de1|count\(20) & (!\de1|count[19]~66\ & VCC))
-- \de1|count[20]~68\ = CARRY((\de1|count\(20) & !\de1|count[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(20),
	datad => VCC,
	cin => \de1|count[19]~66\,
	combout => \de1|count[20]~67_combout\,
	cout => \de1|count[20]~68\);

-- Location: LCCOMB_X14_Y15_N18
\de1|count[21]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[21]~69_combout\ = (\de1|count\(21) & (!\de1|count[20]~68\)) # (!\de1|count\(21) & ((\de1|count[20]~68\) # (GND)))
-- \de1|count[21]~70\ = CARRY((!\de1|count[20]~68\) # (!\de1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(21),
	datad => VCC,
	cin => \de1|count[20]~68\,
	combout => \de1|count[21]~69_combout\,
	cout => \de1|count[21]~70\);

-- Location: LCCOMB_X14_Y15_N20
\de1|count[22]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[22]~71_combout\ = (\de1|count\(22) & (\de1|count[21]~70\ $ (GND))) # (!\de1|count\(22) & (!\de1|count[21]~70\ & VCC))
-- \de1|count[22]~72\ = CARRY((\de1|count\(22) & !\de1|count[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de1|count\(22),
	datad => VCC,
	cin => \de1|count[21]~70\,
	combout => \de1|count[22]~71_combout\,
	cout => \de1|count[22]~72\);

-- Location: LCCOMB_X14_Y15_N22
\de1|count[23]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[23]~73_combout\ = (\de1|count\(23) & (!\de1|count[22]~72\)) # (!\de1|count\(23) & ((\de1|count[22]~72\) # (GND)))
-- \de1|count[23]~74\ = CARRY((!\de1|count[22]~72\) # (!\de1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(23),
	datad => VCC,
	cin => \de1|count[22]~72\,
	combout => \de1|count[23]~73_combout\,
	cout => \de1|count[23]~74\);

-- Location: LCCOMB_X14_Y15_N24
\de1|count[24]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[24]~75_combout\ = \de1|count[23]~74\ $ (!\de1|count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \de1|count\(24),
	cin => \de1|count[23]~74\,
	combout => \de1|count[24]~75_combout\);

-- Location: LCCOMB_X5_Y22_N8
\de2|count[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[0]~25_combout\ = \de2|count\(0) $ (VCC)
-- \de2|count[0]~26\ = CARRY(\de2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(0),
	datad => VCC,
	combout => \de2|count[0]~25_combout\,
	cout => \de2|count[0]~26\);

-- Location: LCCOMB_X5_Y22_N10
\de2|count[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[1]~29_combout\ = (\de2|count\(1) & (!\de2|count[0]~26\)) # (!\de2|count\(1) & ((\de2|count[0]~26\) # (GND)))
-- \de2|count[1]~30\ = CARRY((!\de2|count[0]~26\) # (!\de2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(1),
	datad => VCC,
	cin => \de2|count[0]~26\,
	combout => \de2|count[1]~29_combout\,
	cout => \de2|count[1]~30\);

-- Location: LCCOMB_X5_Y22_N12
\de2|count[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[2]~31_combout\ = (\de2|count\(2) & (\de2|count[1]~30\ $ (GND))) # (!\de2|count\(2) & (!\de2|count[1]~30\ & VCC))
-- \de2|count[2]~32\ = CARRY((\de2|count\(2) & !\de2|count[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(2),
	datad => VCC,
	cin => \de2|count[1]~30\,
	combout => \de2|count[2]~31_combout\,
	cout => \de2|count[2]~32\);

-- Location: LCCOMB_X5_Y22_N14
\de2|count[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[3]~33_combout\ = (\de2|count\(3) & (!\de2|count[2]~32\)) # (!\de2|count\(3) & ((\de2|count[2]~32\) # (GND)))
-- \de2|count[3]~34\ = CARRY((!\de2|count[2]~32\) # (!\de2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(3),
	datad => VCC,
	cin => \de2|count[2]~32\,
	combout => \de2|count[3]~33_combout\,
	cout => \de2|count[3]~34\);

-- Location: LCCOMB_X5_Y22_N16
\de2|count[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[4]~35_combout\ = (\de2|count\(4) & (\de2|count[3]~34\ $ (GND))) # (!\de2|count\(4) & (!\de2|count[3]~34\ & VCC))
-- \de2|count[4]~36\ = CARRY((\de2|count\(4) & !\de2|count[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(4),
	datad => VCC,
	cin => \de2|count[3]~34\,
	combout => \de2|count[4]~35_combout\,
	cout => \de2|count[4]~36\);

-- Location: LCCOMB_X5_Y22_N18
\de2|count[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[5]~37_combout\ = (\de2|count\(5) & (!\de2|count[4]~36\)) # (!\de2|count\(5) & ((\de2|count[4]~36\) # (GND)))
-- \de2|count[5]~38\ = CARRY((!\de2|count[4]~36\) # (!\de2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(5),
	datad => VCC,
	cin => \de2|count[4]~36\,
	combout => \de2|count[5]~37_combout\,
	cout => \de2|count[5]~38\);

-- Location: LCCOMB_X5_Y22_N20
\de2|count[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[6]~39_combout\ = (\de2|count\(6) & (\de2|count[5]~38\ $ (GND))) # (!\de2|count\(6) & (!\de2|count[5]~38\ & VCC))
-- \de2|count[6]~40\ = CARRY((\de2|count\(6) & !\de2|count[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(6),
	datad => VCC,
	cin => \de2|count[5]~38\,
	combout => \de2|count[6]~39_combout\,
	cout => \de2|count[6]~40\);

-- Location: LCCOMB_X5_Y22_N22
\de2|count[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[7]~41_combout\ = (\de2|count\(7) & (!\de2|count[6]~40\)) # (!\de2|count\(7) & ((\de2|count[6]~40\) # (GND)))
-- \de2|count[7]~42\ = CARRY((!\de2|count[6]~40\) # (!\de2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(7),
	datad => VCC,
	cin => \de2|count[6]~40\,
	combout => \de2|count[7]~41_combout\,
	cout => \de2|count[7]~42\);

-- Location: LCCOMB_X5_Y22_N24
\de2|count[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[8]~43_combout\ = (\de2|count\(8) & (\de2|count[7]~42\ $ (GND))) # (!\de2|count\(8) & (!\de2|count[7]~42\ & VCC))
-- \de2|count[8]~44\ = CARRY((\de2|count\(8) & !\de2|count[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(8),
	datad => VCC,
	cin => \de2|count[7]~42\,
	combout => \de2|count[8]~43_combout\,
	cout => \de2|count[8]~44\);

-- Location: LCCOMB_X5_Y22_N26
\de2|count[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[9]~45_combout\ = (\de2|count\(9) & (!\de2|count[8]~44\)) # (!\de2|count\(9) & ((\de2|count[8]~44\) # (GND)))
-- \de2|count[9]~46\ = CARRY((!\de2|count[8]~44\) # (!\de2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(9),
	datad => VCC,
	cin => \de2|count[8]~44\,
	combout => \de2|count[9]~45_combout\,
	cout => \de2|count[9]~46\);

-- Location: LCCOMB_X5_Y22_N28
\de2|count[10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[10]~47_combout\ = (\de2|count\(10) & (\de2|count[9]~46\ $ (GND))) # (!\de2|count\(10) & (!\de2|count[9]~46\ & VCC))
-- \de2|count[10]~48\ = CARRY((\de2|count\(10) & !\de2|count[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(10),
	datad => VCC,
	cin => \de2|count[9]~46\,
	combout => \de2|count[10]~47_combout\,
	cout => \de2|count[10]~48\);

-- Location: LCCOMB_X5_Y22_N30
\de2|count[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[11]~49_combout\ = (\de2|count\(11) & (!\de2|count[10]~48\)) # (!\de2|count\(11) & ((\de2|count[10]~48\) # (GND)))
-- \de2|count[11]~50\ = CARRY((!\de2|count[10]~48\) # (!\de2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(11),
	datad => VCC,
	cin => \de2|count[10]~48\,
	combout => \de2|count[11]~49_combout\,
	cout => \de2|count[11]~50\);

-- Location: LCCOMB_X5_Y21_N0
\de2|count[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[12]~51_combout\ = (\de2|count\(12) & (\de2|count[11]~50\ $ (GND))) # (!\de2|count\(12) & (!\de2|count[11]~50\ & VCC))
-- \de2|count[12]~52\ = CARRY((\de2|count\(12) & !\de2|count[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(12),
	datad => VCC,
	cin => \de2|count[11]~50\,
	combout => \de2|count[12]~51_combout\,
	cout => \de2|count[12]~52\);

-- Location: LCCOMB_X5_Y21_N2
\de2|count[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[13]~53_combout\ = (\de2|count\(13) & (!\de2|count[12]~52\)) # (!\de2|count\(13) & ((\de2|count[12]~52\) # (GND)))
-- \de2|count[13]~54\ = CARRY((!\de2|count[12]~52\) # (!\de2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(13),
	datad => VCC,
	cin => \de2|count[12]~52\,
	combout => \de2|count[13]~53_combout\,
	cout => \de2|count[13]~54\);

-- Location: LCCOMB_X5_Y21_N4
\de2|count[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[14]~55_combout\ = (\de2|count\(14) & (\de2|count[13]~54\ $ (GND))) # (!\de2|count\(14) & (!\de2|count[13]~54\ & VCC))
-- \de2|count[14]~56\ = CARRY((\de2|count\(14) & !\de2|count[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(14),
	datad => VCC,
	cin => \de2|count[13]~54\,
	combout => \de2|count[14]~55_combout\,
	cout => \de2|count[14]~56\);

-- Location: LCCOMB_X5_Y21_N6
\de2|count[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[15]~57_combout\ = (\de2|count\(15) & (!\de2|count[14]~56\)) # (!\de2|count\(15) & ((\de2|count[14]~56\) # (GND)))
-- \de2|count[15]~58\ = CARRY((!\de2|count[14]~56\) # (!\de2|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(15),
	datad => VCC,
	cin => \de2|count[14]~56\,
	combout => \de2|count[15]~57_combout\,
	cout => \de2|count[15]~58\);

-- Location: LCCOMB_X5_Y21_N8
\de2|count[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[16]~59_combout\ = (\de2|count\(16) & (\de2|count[15]~58\ $ (GND))) # (!\de2|count\(16) & (!\de2|count[15]~58\ & VCC))
-- \de2|count[16]~60\ = CARRY((\de2|count\(16) & !\de2|count[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(16),
	datad => VCC,
	cin => \de2|count[15]~58\,
	combout => \de2|count[16]~59_combout\,
	cout => \de2|count[16]~60\);

-- Location: LCCOMB_X5_Y21_N10
\de2|count[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[17]~61_combout\ = (\de2|count\(17) & (!\de2|count[16]~60\)) # (!\de2|count\(17) & ((\de2|count[16]~60\) # (GND)))
-- \de2|count[17]~62\ = CARRY((!\de2|count[16]~60\) # (!\de2|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(17),
	datad => VCC,
	cin => \de2|count[16]~60\,
	combout => \de2|count[17]~61_combout\,
	cout => \de2|count[17]~62\);

-- Location: LCCOMB_X5_Y21_N12
\de2|count[18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[18]~63_combout\ = (\de2|count\(18) & (\de2|count[17]~62\ $ (GND))) # (!\de2|count\(18) & (!\de2|count[17]~62\ & VCC))
-- \de2|count[18]~64\ = CARRY((\de2|count\(18) & !\de2|count[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(18),
	datad => VCC,
	cin => \de2|count[17]~62\,
	combout => \de2|count[18]~63_combout\,
	cout => \de2|count[18]~64\);

-- Location: LCCOMB_X5_Y21_N14
\de2|count[19]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[19]~65_combout\ = (\de2|count\(19) & (!\de2|count[18]~64\)) # (!\de2|count\(19) & ((\de2|count[18]~64\) # (GND)))
-- \de2|count[19]~66\ = CARRY((!\de2|count[18]~64\) # (!\de2|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(19),
	datad => VCC,
	cin => \de2|count[18]~64\,
	combout => \de2|count[19]~65_combout\,
	cout => \de2|count[19]~66\);

-- Location: LCCOMB_X5_Y21_N16
\de2|count[20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[20]~67_combout\ = (\de2|count\(20) & (\de2|count[19]~66\ $ (GND))) # (!\de2|count\(20) & (!\de2|count[19]~66\ & VCC))
-- \de2|count[20]~68\ = CARRY((\de2|count\(20) & !\de2|count[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(20),
	datad => VCC,
	cin => \de2|count[19]~66\,
	combout => \de2|count[20]~67_combout\,
	cout => \de2|count[20]~68\);

-- Location: LCCOMB_X5_Y21_N18
\de2|count[21]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[21]~69_combout\ = (\de2|count\(21) & (!\de2|count[20]~68\)) # (!\de2|count\(21) & ((\de2|count[20]~68\) # (GND)))
-- \de2|count[21]~70\ = CARRY((!\de2|count[20]~68\) # (!\de2|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(21),
	datad => VCC,
	cin => \de2|count[20]~68\,
	combout => \de2|count[21]~69_combout\,
	cout => \de2|count[21]~70\);

-- Location: LCCOMB_X5_Y21_N20
\de2|count[22]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[22]~71_combout\ = (\de2|count\(22) & (\de2|count[21]~70\ $ (GND))) # (!\de2|count\(22) & (!\de2|count[21]~70\ & VCC))
-- \de2|count[22]~72\ = CARRY((\de2|count\(22) & !\de2|count[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de2|count\(22),
	datad => VCC,
	cin => \de2|count[21]~70\,
	combout => \de2|count[22]~71_combout\,
	cout => \de2|count[22]~72\);

-- Location: LCCOMB_X5_Y21_N22
\de2|count[23]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[23]~73_combout\ = (\de2|count\(23) & (!\de2|count[22]~72\)) # (!\de2|count\(23) & ((\de2|count[22]~72\) # (GND)))
-- \de2|count[23]~74\ = CARRY((!\de2|count[22]~72\) # (!\de2|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(23),
	datad => VCC,
	cin => \de2|count[22]~72\,
	combout => \de2|count[23]~73_combout\,
	cout => \de2|count[23]~74\);

-- Location: LCCOMB_X5_Y21_N24
\de2|count[24]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[24]~75_combout\ = \de2|count[23]~74\ $ (!\de2|count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \de2|count\(24),
	cin => \de2|count[23]~74\,
	combout => \de2|count[24]~75_combout\);

-- Location: LCCOMB_X16_Y17_N8
\de3|count[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[0]~25_combout\ = \de3|count\(0) $ (VCC)
-- \de3|count[0]~26\ = CARRY(\de3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(0),
	datad => VCC,
	combout => \de3|count[0]~25_combout\,
	cout => \de3|count[0]~26\);

-- Location: LCCOMB_X16_Y17_N10
\de3|count[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[1]~29_combout\ = (\de3|count\(1) & (!\de3|count[0]~26\)) # (!\de3|count\(1) & ((\de3|count[0]~26\) # (GND)))
-- \de3|count[1]~30\ = CARRY((!\de3|count[0]~26\) # (!\de3|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(1),
	datad => VCC,
	cin => \de3|count[0]~26\,
	combout => \de3|count[1]~29_combout\,
	cout => \de3|count[1]~30\);

-- Location: LCCOMB_X16_Y17_N12
\de3|count[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[2]~31_combout\ = (\de3|count\(2) & (\de3|count[1]~30\ $ (GND))) # (!\de3|count\(2) & (!\de3|count[1]~30\ & VCC))
-- \de3|count[2]~32\ = CARRY((\de3|count\(2) & !\de3|count[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(2),
	datad => VCC,
	cin => \de3|count[1]~30\,
	combout => \de3|count[2]~31_combout\,
	cout => \de3|count[2]~32\);

-- Location: LCCOMB_X16_Y17_N14
\de3|count[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[3]~33_combout\ = (\de3|count\(3) & (!\de3|count[2]~32\)) # (!\de3|count\(3) & ((\de3|count[2]~32\) # (GND)))
-- \de3|count[3]~34\ = CARRY((!\de3|count[2]~32\) # (!\de3|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(3),
	datad => VCC,
	cin => \de3|count[2]~32\,
	combout => \de3|count[3]~33_combout\,
	cout => \de3|count[3]~34\);

-- Location: LCCOMB_X16_Y17_N16
\de3|count[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[4]~35_combout\ = (\de3|count\(4) & (\de3|count[3]~34\ $ (GND))) # (!\de3|count\(4) & (!\de3|count[3]~34\ & VCC))
-- \de3|count[4]~36\ = CARRY((\de3|count\(4) & !\de3|count[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(4),
	datad => VCC,
	cin => \de3|count[3]~34\,
	combout => \de3|count[4]~35_combout\,
	cout => \de3|count[4]~36\);

-- Location: LCCOMB_X16_Y17_N18
\de3|count[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[5]~37_combout\ = (\de3|count\(5) & (!\de3|count[4]~36\)) # (!\de3|count\(5) & ((\de3|count[4]~36\) # (GND)))
-- \de3|count[5]~38\ = CARRY((!\de3|count[4]~36\) # (!\de3|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(5),
	datad => VCC,
	cin => \de3|count[4]~36\,
	combout => \de3|count[5]~37_combout\,
	cout => \de3|count[5]~38\);

-- Location: LCCOMB_X16_Y17_N20
\de3|count[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[6]~39_combout\ = (\de3|count\(6) & (\de3|count[5]~38\ $ (GND))) # (!\de3|count\(6) & (!\de3|count[5]~38\ & VCC))
-- \de3|count[6]~40\ = CARRY((\de3|count\(6) & !\de3|count[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(6),
	datad => VCC,
	cin => \de3|count[5]~38\,
	combout => \de3|count[6]~39_combout\,
	cout => \de3|count[6]~40\);

-- Location: LCCOMB_X16_Y17_N22
\de3|count[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[7]~41_combout\ = (\de3|count\(7) & (!\de3|count[6]~40\)) # (!\de3|count\(7) & ((\de3|count[6]~40\) # (GND)))
-- \de3|count[7]~42\ = CARRY((!\de3|count[6]~40\) # (!\de3|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(7),
	datad => VCC,
	cin => \de3|count[6]~40\,
	combout => \de3|count[7]~41_combout\,
	cout => \de3|count[7]~42\);

-- Location: LCCOMB_X16_Y17_N24
\de3|count[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[8]~43_combout\ = (\de3|count\(8) & (\de3|count[7]~42\ $ (GND))) # (!\de3|count\(8) & (!\de3|count[7]~42\ & VCC))
-- \de3|count[8]~44\ = CARRY((\de3|count\(8) & !\de3|count[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(8),
	datad => VCC,
	cin => \de3|count[7]~42\,
	combout => \de3|count[8]~43_combout\,
	cout => \de3|count[8]~44\);

-- Location: LCCOMB_X16_Y17_N26
\de3|count[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[9]~45_combout\ = (\de3|count\(9) & (!\de3|count[8]~44\)) # (!\de3|count\(9) & ((\de3|count[8]~44\) # (GND)))
-- \de3|count[9]~46\ = CARRY((!\de3|count[8]~44\) # (!\de3|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(9),
	datad => VCC,
	cin => \de3|count[8]~44\,
	combout => \de3|count[9]~45_combout\,
	cout => \de3|count[9]~46\);

-- Location: LCCOMB_X16_Y17_N28
\de3|count[10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[10]~47_combout\ = (\de3|count\(10) & (\de3|count[9]~46\ $ (GND))) # (!\de3|count\(10) & (!\de3|count[9]~46\ & VCC))
-- \de3|count[10]~48\ = CARRY((\de3|count\(10) & !\de3|count[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(10),
	datad => VCC,
	cin => \de3|count[9]~46\,
	combout => \de3|count[10]~47_combout\,
	cout => \de3|count[10]~48\);

-- Location: LCCOMB_X16_Y17_N30
\de3|count[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[11]~49_combout\ = (\de3|count\(11) & (!\de3|count[10]~48\)) # (!\de3|count\(11) & ((\de3|count[10]~48\) # (GND)))
-- \de3|count[11]~50\ = CARRY((!\de3|count[10]~48\) # (!\de3|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(11),
	datad => VCC,
	cin => \de3|count[10]~48\,
	combout => \de3|count[11]~49_combout\,
	cout => \de3|count[11]~50\);

-- Location: LCCOMB_X16_Y16_N0
\de3|count[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[12]~51_combout\ = (\de3|count\(12) & (\de3|count[11]~50\ $ (GND))) # (!\de3|count\(12) & (!\de3|count[11]~50\ & VCC))
-- \de3|count[12]~52\ = CARRY((\de3|count\(12) & !\de3|count[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(12),
	datad => VCC,
	cin => \de3|count[11]~50\,
	combout => \de3|count[12]~51_combout\,
	cout => \de3|count[12]~52\);

-- Location: LCCOMB_X16_Y16_N2
\de3|count[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[13]~53_combout\ = (\de3|count\(13) & (!\de3|count[12]~52\)) # (!\de3|count\(13) & ((\de3|count[12]~52\) # (GND)))
-- \de3|count[13]~54\ = CARRY((!\de3|count[12]~52\) # (!\de3|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(13),
	datad => VCC,
	cin => \de3|count[12]~52\,
	combout => \de3|count[13]~53_combout\,
	cout => \de3|count[13]~54\);

-- Location: LCCOMB_X16_Y16_N4
\de3|count[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[14]~55_combout\ = (\de3|count\(14) & (\de3|count[13]~54\ $ (GND))) # (!\de3|count\(14) & (!\de3|count[13]~54\ & VCC))
-- \de3|count[14]~56\ = CARRY((\de3|count\(14) & !\de3|count[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(14),
	datad => VCC,
	cin => \de3|count[13]~54\,
	combout => \de3|count[14]~55_combout\,
	cout => \de3|count[14]~56\);

-- Location: LCCOMB_X16_Y16_N6
\de3|count[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[15]~57_combout\ = (\de3|count\(15) & (!\de3|count[14]~56\)) # (!\de3|count\(15) & ((\de3|count[14]~56\) # (GND)))
-- \de3|count[15]~58\ = CARRY((!\de3|count[14]~56\) # (!\de3|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(15),
	datad => VCC,
	cin => \de3|count[14]~56\,
	combout => \de3|count[15]~57_combout\,
	cout => \de3|count[15]~58\);

-- Location: LCCOMB_X16_Y16_N8
\de3|count[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[16]~59_combout\ = (\de3|count\(16) & (\de3|count[15]~58\ $ (GND))) # (!\de3|count\(16) & (!\de3|count[15]~58\ & VCC))
-- \de3|count[16]~60\ = CARRY((\de3|count\(16) & !\de3|count[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(16),
	datad => VCC,
	cin => \de3|count[15]~58\,
	combout => \de3|count[16]~59_combout\,
	cout => \de3|count[16]~60\);

-- Location: LCCOMB_X16_Y16_N10
\de3|count[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[17]~61_combout\ = (\de3|count\(17) & (!\de3|count[16]~60\)) # (!\de3|count\(17) & ((\de3|count[16]~60\) # (GND)))
-- \de3|count[17]~62\ = CARRY((!\de3|count[16]~60\) # (!\de3|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(17),
	datad => VCC,
	cin => \de3|count[16]~60\,
	combout => \de3|count[17]~61_combout\,
	cout => \de3|count[17]~62\);

-- Location: LCCOMB_X16_Y16_N12
\de3|count[18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[18]~63_combout\ = (\de3|count\(18) & (\de3|count[17]~62\ $ (GND))) # (!\de3|count\(18) & (!\de3|count[17]~62\ & VCC))
-- \de3|count[18]~64\ = CARRY((\de3|count\(18) & !\de3|count[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(18),
	datad => VCC,
	cin => \de3|count[17]~62\,
	combout => \de3|count[18]~63_combout\,
	cout => \de3|count[18]~64\);

-- Location: LCCOMB_X16_Y16_N14
\de3|count[19]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[19]~65_combout\ = (\de3|count\(19) & (!\de3|count[18]~64\)) # (!\de3|count\(19) & ((\de3|count[18]~64\) # (GND)))
-- \de3|count[19]~66\ = CARRY((!\de3|count[18]~64\) # (!\de3|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(19),
	datad => VCC,
	cin => \de3|count[18]~64\,
	combout => \de3|count[19]~65_combout\,
	cout => \de3|count[19]~66\);

-- Location: LCCOMB_X16_Y16_N16
\de3|count[20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[20]~67_combout\ = (\de3|count\(20) & (\de3|count[19]~66\ $ (GND))) # (!\de3|count\(20) & (!\de3|count[19]~66\ & VCC))
-- \de3|count[20]~68\ = CARRY((\de3|count\(20) & !\de3|count[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(20),
	datad => VCC,
	cin => \de3|count[19]~66\,
	combout => \de3|count[20]~67_combout\,
	cout => \de3|count[20]~68\);

-- Location: LCCOMB_X16_Y16_N18
\de3|count[21]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[21]~69_combout\ = (\de3|count\(21) & (!\de3|count[20]~68\)) # (!\de3|count\(21) & ((\de3|count[20]~68\) # (GND)))
-- \de3|count[21]~70\ = CARRY((!\de3|count[20]~68\) # (!\de3|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de3|count\(21),
	datad => VCC,
	cin => \de3|count[20]~68\,
	combout => \de3|count[21]~69_combout\,
	cout => \de3|count[21]~70\);

-- Location: LCCOMB_X16_Y16_N20
\de3|count[22]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[22]~71_combout\ = (\de3|count\(22) & (\de3|count[21]~70\ $ (GND))) # (!\de3|count\(22) & (!\de3|count[21]~70\ & VCC))
-- \de3|count[22]~72\ = CARRY((\de3|count\(22) & !\de3|count[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(22),
	datad => VCC,
	cin => \de3|count[21]~70\,
	combout => \de3|count[22]~71_combout\,
	cout => \de3|count[22]~72\);

-- Location: LCCOMB_X16_Y16_N22
\de3|count[23]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[23]~73_combout\ = (\de3|count\(23) & (!\de3|count[22]~72\)) # (!\de3|count\(23) & ((\de3|count[22]~72\) # (GND)))
-- \de3|count[23]~74\ = CARRY((!\de3|count[22]~72\) # (!\de3|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(23),
	datad => VCC,
	cin => \de3|count[22]~72\,
	combout => \de3|count[23]~73_combout\,
	cout => \de3|count[23]~74\);

-- Location: LCCOMB_X16_Y16_N24
\de3|count[24]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[24]~75_combout\ = \de3|count[23]~74\ $ (!\de3|count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \de3|count\(24),
	cin => \de3|count[23]~74\,
	combout => \de3|count[24]~75_combout\);

-- Location: LCCOMB_X21_Y21_N10
\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\now_money[9]~18_combout\ & ((GND) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\now_money[9]~18_combout\ & 
-- (\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\now_money[9]~18_combout\) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \now_money[9]~18_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X20_Y21_N16
\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\s1|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[50]~98_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\ & 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[50]~98_combout\)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[50]~98_combout\ & 
-- !\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[50]~98_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X20_Y21_N22
\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\s1|Mod1|auto_generated|divider|divider|StageOut[53]~92_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\s1|Mod1|auto_generated|divider|divider|StageOut[53]~92_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\)))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[53]~92_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[53]~92_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X19_Y21_N6
\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\s1|Mod1|auto_generated|divider|divider|StageOut[60]~151_combout\ & (((!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[60]~151_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[60]~104_combout\ & (!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[60]~104_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\s1|Mod1|auto_generated|divider|divider|StageOut[60]~151_combout\ & !\s1|Mod1|auto_generated|divider|divider|StageOut[60]~104_combout\)) # 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[60]~151_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[60]~104_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X16_Y21_N10
\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\s1|Mod1|auto_generated|divider|divider|StageOut[68]~142_combout\ & (((!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)))) # 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[68]~142_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[68]~112_combout\ & (!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[68]~112_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND)))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY(((!\s1|Mod1|auto_generated|divider|divider|StageOut[68]~142_combout\ & !\s1|Mod1|auto_generated|divider|divider|StageOut[68]~112_combout\)) # 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[68]~142_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[68]~112_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X16_Y21_N12
\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & (((\s1|Mod1|auto_generated|divider|divider|StageOut[69]~111_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[69]~141_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((((\s1|Mod1|auto_generated|divider|divider|StageOut[69]~111_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[69]~141_combout\)))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[69]~111_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[69]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[69]~111_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[69]~141_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X17_Y21_N12
\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\ = (\s1|Mod1|auto_generated|divider|divider|StageOut[64]~124_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|StageOut[64]~124_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\);

-- Location: LCCOMB_X15_Y21_N6
\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ = (((\s1|Mod1|auto_generated|divider|divider|StageOut[73]~125_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[73]~122_combout\)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ = CARRY((\s1|Mod1|auto_generated|divider|divider|StageOut[73]~125_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[73]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[73]~125_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[73]~122_combout\,
	datad => VCC,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\);

-- Location: LCCOMB_X15_Y21_N8
\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (((\s1|Mod1|auto_generated|divider|divider|StageOut[74]~155_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[74]~121_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[74]~155_combout\ & 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[74]~121_combout\)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|StageOut[74]~155_combout\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[74]~121_combout\ & 
-- !\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[74]~155_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[74]~121_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\);

-- Location: LCCOMB_X15_Y21_N10
\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((((\s1|Mod1|auto_generated|divider|divider|StageOut[75]~120_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\))))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[75]~120_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\) # (GND))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ = CARRY((\s1|Mod1|auto_generated|divider|divider|StageOut[75]~120_combout\) # ((\s1|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\) # 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[75]~120_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\);

-- Location: LCCOMB_X15_Y21_N12
\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ = (\s1|Mod1|auto_generated|divider|divider|StageOut[76]~145_combout\ & (((!\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)))) # 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[76]~145_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[76]~119_combout\ & (!\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)) # 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[76]~119_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\) # (GND)))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ = CARRY(((!\s1|Mod1|auto_generated|divider|divider|StageOut[76]~145_combout\ & !\s1|Mod1|auto_generated|divider|divider|StageOut[76]~119_combout\)) # 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[76]~145_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[76]~119_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\);

-- Location: LCCOMB_X14_Y21_N12
\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ = (((\s1|Mod1|auto_generated|divider|divider|StageOut[81]~130_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[81]~133_combout\)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ = CARRY((\s1|Mod1|auto_generated|divider|divider|StageOut[81]~130_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[81]~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[81]~130_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[81]~133_combout\,
	datad => VCC,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\);

-- Location: LCCOMB_X11_Y20_N4
\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = \s1|temp1\(4) $ (VCC)
-- \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY(\s1|temp1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|temp1\(4),
	datad => VCC,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X11_Y20_N8
\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\s1|temp1\(6) & (\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ $ (GND))) # (!\s1|temp1\(6) & 
-- (!\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & VCC))
-- \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((\s1|temp1\(6) & !\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|temp1\(6),
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X12_Y20_N6
\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\s1|Mod2|auto_generated|divider|divider|StageOut[46]~36_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[46]~37_combout\)))) # (!\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\s1|Mod2|auto_generated|divider|divider|StageOut[46]~36_combout\ & 
-- (!\s1|Mod2|auto_generated|divider|divider|StageOut[46]~37_combout\)))
-- \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\s1|Mod2|auto_generated|divider|divider|StageOut[46]~36_combout\ & (!\s1|Mod2|auto_generated|divider|divider|StageOut[46]~37_combout\ & 
-- !\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[46]~36_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[46]~37_combout\,
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X12_Y20_N8
\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\s1|Mod2|auto_generated|divider|divider|StageOut[47]~51_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[47]~35_combout\)))) # (!\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\s1|Mod2|auto_generated|divider|divider|StageOut[47]~51_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[47]~35_combout\)))))
-- \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\s1|Mod2|auto_generated|divider|divider|StageOut[47]~51_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[47]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[47]~51_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[47]~35_combout\,
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X15_Y20_N22
\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\s1|Mod2|auto_generated|divider|divider|StageOut[50]~42_combout\) # (\s1|Mod2|auto_generated|divider|divider|StageOut[50]~43_combout\)))
-- \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\s1|Mod2|auto_generated|divider|divider|StageOut[50]~42_combout\) # (\s1|Mod2|auto_generated|divider|divider|StageOut[50]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[50]~42_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[50]~43_combout\,
	datad => VCC,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: FF_X23_Y18_N15
\cur_state.ERROR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cur_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cur_state.ERROR~q\);

-- Location: LCCOMB_X26_Y18_N8
\cur_state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state~12_combout\ = (\cur_state.ERROR~q\ & ((!elapsed_time(0)) # (!elapsed_time(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time(1),
	datab => elapsed_time(0),
	datac => \cur_state.ERROR~q\,
	combout => \cur_state~12_combout\);

-- Location: FF_X24_Y21_N31
\num_c2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c2[0]~15_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c2(0));

-- Location: LCCOMB_X23_Y20_N26
\Mult0|mult_core|romout[0][4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][4]~1_combout\ = num_c3(0) $ (num_c3(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => num_c3(0),
	datad => num_c3(3),
	combout => \Mult0|mult_core|romout[0][4]~1_combout\);

-- Location: LCCOMB_X23_Y19_N20
\Mult1|mult_core|romout[0][5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][5]~0_combout\ = count2(2) $ (((count2(0) & (count2(3) & !count2(1))) # (!count2(0) & ((count2(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(3),
	datab => count2(0),
	datac => count2(1),
	datad => count2(2),
	combout => \Mult1|mult_core|romout[0][5]~0_combout\);

-- Location: LCCOMB_X21_Y19_N2
\Mult1|mult_core|romout[0][3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][3]~2_combout\ = count2(3) $ (count2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count2(3),
	datad => count2(0),
	combout => \Mult1|mult_core|romout[0][3]~2_combout\);

-- Location: LCCOMB_X24_Y20_N12
\Mult0|mult_core|romout[0][6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~2_combout\ = num_c3(2) $ (((num_c3(1) & ((!num_c3(0)))) # (!num_c3(1) & (num_c3(3) & num_c3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(1),
	datab => num_c3(2),
	datac => num_c3(3),
	datad => num_c3(0),
	combout => \Mult0|mult_core|romout[0][6]~2_combout\);

-- Location: LCCOMB_X24_Y20_N30
\Mult0|mult_core|romout[0][7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~3_combout\ = (num_c3(1) & (num_c3(3) $ (((!num_c3(2) & num_c3(0)))))) # (!num_c3(1) & ((num_c3(2) & ((num_c3(0)) # (!num_c3(3)))) # (!num_c3(2) & (num_c3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(1),
	datab => num_c3(2),
	datac => num_c3(3),
	datad => num_c3(0),
	combout => \Mult0|mult_core|romout[0][7]~3_combout\);

-- Location: LCCOMB_X22_Y19_N30
\Mult1|mult_core|romout[0][8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][8]~6_combout\ = (count2(3) & ((count2(2)) # ((count2(1) & count2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(1),
	datab => count2(3),
	datac => count2(2),
	datad => count2(0),
	combout => \Mult1|mult_core|romout[0][8]~6_combout\);

-- Location: LCCOMB_X24_Y20_N10
\Mult0|mult_core|romout[1][5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][5]~5_combout\ = num_c3(5) $ (num_c3(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => num_c3(5),
	datad => num_c3(4),
	combout => \Mult0|mult_core|romout[1][5]~5_combout\);

-- Location: FF_X23_Y18_N23
\cur_state.SHOP_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cur_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cur_state.SHOP_1~q\);

-- Location: FF_X23_Y18_N21
\cur_state.SHOP_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cur_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cur_state.SHOP_2~q\);

-- Location: LCCOMB_X23_Y18_N26
\elapsed_time~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \elapsed_time~0_combout\ = (!\cur_state.SHOP_1~q\ & !\cur_state.SHOP_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cur_state.SHOP_1~q\,
	datad => \cur_state.SHOP_2~q\,
	combout => \elapsed_time~0_combout\);

-- Location: FF_X11_Y22_N11
\s1|times[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(14));

-- Location: FF_X11_Y23_N9
\s1|times[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|times~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(5));

-- Location: FF_X11_Y23_N7
\s1|times[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|times~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(7));

-- Location: LCCOMB_X12_Y22_N12
\s1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal0~2_combout\ = (!\s1|times\(12) & (!\s1|times\(18) & (!\s1|times\(5) & !\s1|times\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(12),
	datab => \s1|times\(18),
	datac => \s1|times\(5),
	datad => \s1|times\(7),
	combout => \s1|Equal0~2_combout\);

-- Location: FF_X11_Y22_N17
\s1|times[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(17));

-- Location: LCCOMB_X12_Y22_N20
\s1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal1~0_combout\ = (!\s1|times\(17) & (!\s1|times\(11) & (\s1|times\(5) & \s1|times\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(17),
	datab => \s1|times\(11),
	datac => \s1|times\(5),
	datad => \s1|times\(7),
	combout => \s1|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y19_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (slow_clk(2)) # ((slow_clk(3)) # ((slow_clk(1)) # (slow_clk(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(2),
	datab => slow_clk(3),
	datac => slow_clk(1),
	datad => slow_clk(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y18_N30
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (slow_clk(23)) # (((slow_clk(20)) # (!slow_clk(21))) # (!slow_clk(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(23),
	datab => slow_clk(22),
	datac => slow_clk(20),
	datad => slow_clk(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X26_Y18_N12
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ((\Equal0~6_combout\) # (slow_clk(24))) # (!slow_clk(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(25),
	datac => \Equal0~6_combout\,
	datad => slow_clk(24),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X26_Y18_N6
\cur_state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state~21_combout\ = (\LessThan2~0_combout\ & ((\cur_state.CHECK~q\) # ((\cur_state.ERROR~q\) # (\cur_state.REFUND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \cur_state.CHECK~q\,
	datac => \cur_state.ERROR~q\,
	datad => \cur_state.REFUND~q\,
	combout => \cur_state~21_combout\);

-- Location: LCCOMB_X12_Y22_N4
\s1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal3~0_combout\ = (!\s1|times\(10) & (\s1|times\(8) & (!\s1|times\(16) & \s1|times\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(10),
	datab => \s1|times\(8),
	datac => \s1|times\(16),
	datad => \s1|times\(6),
	combout => \s1|Equal3~0_combout\);

-- Location: LCCOMB_X11_Y23_N8
\s1|times~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|times~3_combout\ = (!\s1|Equal3~1_combout\ & \s1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Equal3~1_combout\,
	datad => \s1|Add0~10_combout\,
	combout => \s1|times~3_combout\);

-- Location: LCCOMB_X11_Y23_N6
\s1|times~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|times~4_combout\ = (!\s1|Equal3~1_combout\ & \s1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Equal3~1_combout\,
	datad => \s1|Add0~14_combout\,
	combout => \s1|times~4_combout\);

-- Location: FF_X19_Y22_N15
\s1|deci_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|deci_data[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(8));

-- Location: FF_X14_Y19_N31
\s1|deci_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|deci_data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(0));

-- Location: FF_X21_Y19_N15
\s1|deci_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mod0|auto_generated|divider|divider|StageOut[56]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(9));

-- Location: LCCOMB_X14_Y16_N4
\de1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|Equal0~0_combout\ = (!\de1|count\(1) & (!\de1|count\(3) & (!\de1|count\(0) & !\de1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(1),
	datab => \de1|count\(3),
	datac => \de1|count\(0),
	datad => \de1|count\(2),
	combout => \de1|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y16_N6
\de1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|Equal0~1_combout\ = (!\de1|count\(4) & (\de1|count\(5) & (!\de1|count\(7) & \de1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(4),
	datab => \de1|count\(5),
	datac => \de1|count\(7),
	datad => \de1|count\(6),
	combout => \de1|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y16_N0
\de1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|Equal0~2_combout\ = (\de1|count\(9) & (!\de1|count\(10) & (!\de1|count\(11) & \de1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(9),
	datab => \de1|count\(10),
	datac => \de1|count\(11),
	datad => \de1|count\(8),
	combout => \de1|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y15_N30
\de1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|Equal0~3_combout\ = (!\de1|count\(12) & (\de1|count\(13) & (\de1|count\(14) & \de1|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(12),
	datab => \de1|count\(13),
	datac => \de1|count\(14),
	datad => \de1|count\(15),
	combout => \de1|Equal0~3_combout\);

-- Location: LCCOMB_X15_Y16_N20
\de1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|Equal0~4_combout\ = (\de1|Equal0~2_combout\ & (\de1|Equal0~1_combout\ & (\de1|Equal0~0_combout\ & \de1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de1|Equal0~2_combout\,
	datab => \de1|Equal0~1_combout\,
	datac => \de1|Equal0~0_combout\,
	datad => \de1|Equal0~3_combout\,
	combout => \de1|Equal0~4_combout\);

-- Location: LCCOMB_X14_Y15_N28
\de1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|Equal0~5_combout\ = (\de1|count\(17) & (!\de1|count\(19) & (!\de1|count\(16) & \de1|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(17),
	datab => \de1|count\(19),
	datac => \de1|count\(16),
	datad => \de1|count\(18),
	combout => \de1|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y15_N26
\de1|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|Equal0~6_combout\ = (!\de1|count\(21) & (!\de1|count\(22) & (!\de1|count\(23) & \de1|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de1|count\(21),
	datab => \de1|count\(22),
	datac => \de1|count\(23),
	datad => \de1|count\(20),
	combout => \de1|Equal0~6_combout\);

-- Location: LCCOMB_X15_Y16_N24
\de1|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|Equal0~7_combout\ = (\de1|Equal0~6_combout\ & (!\de1|count\(24) & (\de1|Equal0~5_combout\ & \de1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de1|Equal0~6_combout\,
	datab => \de1|count\(24),
	datac => \de1|Equal0~5_combout\,
	datad => \de1|Equal0~4_combout\,
	combout => \de1|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y16_N28
\de1|steady~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|steady~0_combout\ = (\in_5j~input_o\ & ((\de1|steady~q\) # ((\de1|old~q\ & \de1|Equal0~7_combout\)))) # (!\in_5j~input_o\ & (\de1|steady~q\ & ((\de1|old~q\) # (!\de1|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_5j~input_o\,
	datab => \de1|old~q\,
	datac => \de1|steady~q\,
	datad => \de1|Equal0~7_combout\,
	combout => \de1|steady~0_combout\);

-- Location: LCCOMB_X6_Y22_N20
\de2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|Equal0~0_combout\ = (!\de2|count\(3) & (!\de2|count\(0) & (!\de2|count\(2) & !\de2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(3),
	datab => \de2|count\(0),
	datac => \de2|count\(2),
	datad => \de2|count\(1),
	combout => \de2|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y22_N6
\de2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|Equal0~1_combout\ = (!\de2|count\(4) & (\de2|count\(5) & (\de2|count\(6) & !\de2|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(4),
	datab => \de2|count\(5),
	datac => \de2|count\(6),
	datad => \de2|count\(7),
	combout => \de2|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y22_N4
\de2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|Equal0~2_combout\ = (!\de2|count\(11) & (!\de2|count\(10) & (\de2|count\(9) & \de2|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(11),
	datab => \de2|count\(10),
	datac => \de2|count\(9),
	datad => \de2|count\(8),
	combout => \de2|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y21_N26
\de2|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|Equal0~3_combout\ = (\de2|count\(13) & (!\de2|count\(12) & (\de2|count\(14) & \de2|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(13),
	datab => \de2|count\(12),
	datac => \de2|count\(14),
	datad => \de2|count\(15),
	combout => \de2|Equal0~3_combout\);

-- Location: LCCOMB_X5_Y22_N6
\de2|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|Equal0~4_combout\ = (\de2|Equal0~0_combout\ & (\de2|Equal0~2_combout\ & (\de2|Equal0~1_combout\ & \de2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2|Equal0~0_combout\,
	datab => \de2|Equal0~2_combout\,
	datac => \de2|Equal0~1_combout\,
	datad => \de2|Equal0~3_combout\,
	combout => \de2|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y21_N28
\de2|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|Equal0~5_combout\ = (\de2|count\(18) & (!\de2|count\(19) & (!\de2|count\(16) & \de2|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(18),
	datab => \de2|count\(19),
	datac => \de2|count\(16),
	datad => \de2|count\(17),
	combout => \de2|Equal0~5_combout\);

-- Location: LCCOMB_X5_Y21_N30
\de2|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|Equal0~6_combout\ = (!\de2|count\(22) & (!\de2|count\(21) & (!\de2|count\(23) & \de2|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2|count\(22),
	datab => \de2|count\(21),
	datac => \de2|count\(23),
	datad => \de2|count\(20),
	combout => \de2|Equal0~6_combout\);

-- Location: LCCOMB_X5_Y22_N0
\de2|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|Equal0~7_combout\ = (\de2|Equal0~5_combout\ & (!\de2|count\(24) & (\de2|Equal0~6_combout\ & \de2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2|Equal0~5_combout\,
	datab => \de2|count\(24),
	datac => \de2|Equal0~6_combout\,
	datad => \de2|Equal0~4_combout\,
	combout => \de2|Equal0~7_combout\);

-- Location: LCCOMB_X4_Y22_N30
\de2|steady~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|steady~0_combout\ = (\de2|old~q\ & ((\de2|steady~q\) # ((\in_1y~input_o\ & \de2|Equal0~7_combout\)))) # (!\de2|old~q\ & (\de2|steady~q\ & ((\in_1y~input_o\) # (!\de2|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de2|old~q\,
	datab => \in_1y~input_o\,
	datac => \de2|Equal0~7_combout\,
	datad => \de2|steady~q\,
	combout => \de2|steady~0_combout\);

-- Location: LCCOMB_X15_Y17_N16
\de3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|Equal0~0_combout\ = (!\de3|count\(2) & (!\de3|count\(0) & (!\de3|count\(1) & !\de3|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(2),
	datab => \de3|count\(0),
	datac => \de3|count\(1),
	datad => \de3|count\(3),
	combout => \de3|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y17_N2
\de3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|Equal0~1_combout\ = (!\de3|count\(7) & (\de3|count\(6) & (!\de3|count\(4) & \de3|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(7),
	datab => \de3|count\(6),
	datac => \de3|count\(4),
	datad => \de3|count\(5),
	combout => \de3|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y17_N4
\de3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|Equal0~2_combout\ = (\de3|count\(9) & (!\de3|count\(10) & (!\de3|count\(11) & \de3|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(9),
	datab => \de3|count\(10),
	datac => \de3|count\(11),
	datad => \de3|count\(8),
	combout => \de3|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y16_N26
\de3|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|Equal0~3_combout\ = (!\de3|count\(12) & (\de3|count\(13) & (\de3|count\(14) & \de3|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(12),
	datab => \de3|count\(13),
	datac => \de3|count\(14),
	datad => \de3|count\(15),
	combout => \de3|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y17_N6
\de3|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|Equal0~4_combout\ = (\de3|Equal0~1_combout\ & (\de3|Equal0~2_combout\ & (\de3|Equal0~0_combout\ & \de3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de3|Equal0~1_combout\,
	datab => \de3|Equal0~2_combout\,
	datac => \de3|Equal0~0_combout\,
	datad => \de3|Equal0~3_combout\,
	combout => \de3|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y16_N28
\de3|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|Equal0~5_combout\ = (\de3|count\(18) & (!\de3|count\(19) & (!\de3|count\(16) & \de3|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(18),
	datab => \de3|count\(19),
	datac => \de3|count\(16),
	datad => \de3|count\(17),
	combout => \de3|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y16_N30
\de3|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|Equal0~6_combout\ = (!\de3|count\(22) & (!\de3|count\(21) & (!\de3|count\(23) & \de3|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(22),
	datab => \de3|count\(21),
	datac => \de3|count\(23),
	datad => \de3|count\(20),
	combout => \de3|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y17_N0
\de3|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|Equal0~7_combout\ = (!\de3|count\(24) & (\de3|Equal0~5_combout\ & (\de3|Equal0~6_combout\ & \de3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de3|count\(24),
	datab => \de3|Equal0~5_combout\,
	datac => \de3|Equal0~6_combout\,
	datad => \de3|Equal0~4_combout\,
	combout => \de3|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y17_N22
\de3|steady~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|steady~0_combout\ = (\de3|Equal0~7_combout\ & ((\in_5y~input_o\ & ((\de3|steady~q\) # (\de3|old~q\))) # (!\in_5y~input_o\ & (\de3|steady~q\ & \de3|old~q\)))) # (!\de3|Equal0~7_combout\ & (((\de3|steady~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de3|Equal0~7_combout\,
	datab => \in_5y~input_o\,
	datac => \de3|steady~q\,
	datad => \de3|old~q\,
	combout => \de3|steady~0_combout\);

-- Location: LCCOMB_X17_Y20_N4
\s1|Div0|auto_generated|divider|divider|StageOut[54]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[54]~91_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[54]~91_combout\);

-- Location: LCCOMB_X17_Y20_N2
\s1|Div0|auto_generated|divider|divider|StageOut[53]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X16_Y20_N30
\s1|Div0|auto_generated|divider|divider|StageOut[52]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\now_money[9]~18_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[9]~18_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X17_Y20_N30
\s1|Div0|auto_generated|divider|divider|StageOut[51]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[51]~97_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[51]~97_combout\);

-- Location: LCCOMB_X16_Y20_N22
\s1|Div0|auto_generated|divider|divider|StageOut[50]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[50]~98_combout\ = (\now_money[7]~14_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[7]~14_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[50]~98_combout\);

-- Location: LCCOMB_X16_Y20_N26
\s1|Div0|auto_generated|divider|divider|StageOut[49]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[49]~101_combout\ = (\now_money[6]~12_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[6]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[49]~101_combout\);

-- Location: LCCOMB_X20_Y20_N12
\s1|Div0|auto_generated|divider|divider|StageOut[62]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[62]~102_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[62]~102_combout\);

-- Location: LCCOMB_X16_Y20_N20
\s1|Div0|auto_generated|divider|divider|StageOut[61]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[61]~103_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[61]~103_combout\);

-- Location: LCCOMB_X20_Y20_N6
\s1|Div0|auto_generated|divider|divider|StageOut[60]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[60]~104_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[60]~104_combout\);

-- Location: LCCOMB_X16_Y20_N2
\s1|Div0|auto_generated|divider|divider|StageOut[58]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[58]~107_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[58]~107_combout\);

-- Location: LCCOMB_X21_Y20_N2
\s1|Div0|auto_generated|divider|divider|StageOut[57]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[57]~109_combout\ = (\now_money[5]~10_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \now_money[5]~10_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[57]~109_combout\);

-- Location: LCCOMB_X20_Y20_N30
\s1|Div0|auto_generated|divider|divider|StageOut[70]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[70]~110_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[70]~110_combout\);

-- Location: LCCOMB_X20_Y20_N4
\s1|Div0|auto_generated|divider|divider|StageOut[69]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[69]~111_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[69]~111_combout\);

-- Location: LCCOMB_X19_Y20_N30
\s1|Div0|auto_generated|divider|divider|StageOut[65]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[65]~116_combout\ = (\now_money[4]~8_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[4]~8_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[65]~116_combout\);

-- Location: LCCOMB_X19_Y20_N8
\s1|Div0|auto_generated|divider|divider|StageOut[78]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[78]~117_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[78]~117_combout\);

-- Location: LCCOMB_X19_Y20_N10
\s1|Div0|auto_generated|divider|divider|StageOut[74]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[74]~121_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[74]~121_combout\);

-- Location: LCCOMB_X20_Y22_N10
\s1|Div0|auto_generated|divider|divider|StageOut[73]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[73]~122_combout\ = (\now_money[3]~6_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[3]~6_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[73]~122_combout\);

-- Location: LCCOMB_X20_Y22_N30
\s1|Div0|auto_generated|divider|divider|StageOut[86]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[86]~124_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[86]~124_combout\);

-- Location: LCCOMB_X19_Y22_N16
\s1|Div0|auto_generated|divider|divider|StageOut[85]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[85]~125_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[85]~125_combout\);

-- Location: LCCOMB_X19_Y22_N22
\s1|Div0|auto_generated|divider|divider|StageOut[84]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[84]~126_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[84]~126_combout\);

-- Location: LCCOMB_X20_Y22_N8
\s1|Div0|auto_generated|divider|divider|StageOut[83]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[83]~127_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[83]~127_combout\);

-- Location: LCCOMB_X19_Y22_N20
\s1|Div0|auto_generated|divider|divider|StageOut[82]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[82]~128_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[82]~128_combout\);

-- Location: LCCOMB_X21_Y22_N28
\s1|Div0|auto_generated|divider|divider|StageOut[81]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[81]~129_combout\ = (\now_money[2]~4_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[2]~4_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[81]~129_combout\);

-- Location: LCCOMB_X19_Y22_N18
\s1|Div0|auto_generated|divider|divider|StageOut[81]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[81]~130_combout\ = (\now_money[2]~4_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[2]~4_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[81]~130_combout\);

-- Location: LCCOMB_X14_Y18_N26
\s1|Div1|auto_generated|divider|divider|StageOut[43]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[43]~27_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[43]~27_combout\);

-- Location: LCCOMB_X14_Y18_N2
\s1|Div1|auto_generated|divider|divider|StageOut[42]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[42]~29_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[42]~29_combout\);

-- Location: LCCOMB_X14_Y18_N0
\s1|Div1|auto_generated|divider|divider|StageOut[41]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[41]~31_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[41]~31_combout\);

-- Location: LCCOMB_X14_Y20_N20
\s1|Div1|auto_generated|divider|divider|StageOut[40]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[40]~32_combout\ = (\s1|temp1\(3) & \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(3),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[40]~32_combout\);

-- Location: LCCOMB_X15_Y18_N26
\s1|Div1|auto_generated|divider|divider|StageOut[48]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[48]~34_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datac => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[48]~34_combout\);

-- Location: LCCOMB_X15_Y18_N12
\s1|Div1|auto_generated|divider|divider|StageOut[47]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[47]~35_combout\ = (!\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[47]~35_combout\);

-- Location: LCCOMB_X15_Y18_N10
\s1|Div1|auto_generated|divider|divider|StageOut[46]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[46]~37_combout\ = (!\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[46]~37_combout\);

-- Location: LCCOMB_X16_Y18_N4
\s1|Div1|auto_generated|divider|divider|StageOut[45]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[45]~38_combout\ = (\s1|temp1\(2) & \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(2),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[45]~38_combout\);

-- Location: LCCOMB_X15_Y18_N14
\s1|Div1|auto_generated|divider|divider|StageOut[53]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[53]~40_combout\ = (!\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[53]~40_combout\);

-- Location: LCCOMB_X15_Y18_N28
\s1|Div1|auto_generated|divider|divider|StageOut[52]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[52]~41_combout\ = (!\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[52]~41_combout\);

-- Location: LCCOMB_X15_Y19_N24
\s1|Div1|auto_generated|divider|divider|StageOut[51]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[51]~42_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \s1|temp1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \s1|temp1\(2),
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[51]~42_combout\);

-- Location: LCCOMB_X15_Y18_N30
\s1|Div1|auto_generated|divider|divider|StageOut[51]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[51]~43_combout\ = (!\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[51]~43_combout\);

-- Location: LCCOMB_X16_Y19_N4
\s1|Div1|auto_generated|divider|divider|StageOut[50]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[50]~44_combout\ = (\s1|temp1\(1) & \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(1),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[50]~44_combout\);

-- Location: LCCOMB_X16_Y19_N22
\s1|Div1|auto_generated|divider|divider|StageOut[50]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[50]~45_combout\ = (\s1|temp1\(1) & !\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(1),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[50]~45_combout\);

-- Location: FF_X14_Y19_N13
\s1|temp2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|temp2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|temp2\(0));

-- Location: LCCOMB_X20_Y19_N26
\s1|Mod0|auto_generated|divider|divider|StageOut[48]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[48]~24_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[48]~24_combout\);

-- Location: LCCOMB_X20_Y19_N30
\s1|Mod0|auto_generated|divider|divider|StageOut[47]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[47]~27_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[47]~27_combout\);

-- Location: LCCOMB_X19_Y19_N12
\s1|Mod0|auto_generated|divider|divider|StageOut[46]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[46]~29_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[46]~29_combout\);

-- Location: LCCOMB_X20_Y19_N22
\s1|Mod0|auto_generated|divider|divider|StageOut[45]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\);

-- Location: LCCOMB_X21_Y19_N10
\s1|Mod0|auto_generated|divider|divider|StageOut[50]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[50]~34_combout\ = (!\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[50]~34_combout\);

-- Location: LCCOMB_X20_Y19_N14
\s1|Mod0|auto_generated|divider|divider|StageOut[53]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[53]~35_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[53]~35_combout\);

-- Location: LCCOMB_X21_Y19_N14
\s1|Mod0|auto_generated|divider|divider|StageOut[56]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[56]~38_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\s1|Mod0|auto_generated|divider|divider|StageOut[50]~34_combout\) # 
-- ((\s1|Mod0|auto_generated|divider|divider|StageOut[50]~33_combout\)))) # (!\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (((\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|StageOut[50]~34_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datac => \s1|Mod0|auto_generated|divider|divider|StageOut[50]~33_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[56]~38_combout\);

-- Location: LCCOMB_X15_Y16_N26
\de1|count[11]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[11]~27_combout\ = (\reset~input_o\) # (\de1|old~q\ $ (\in_5j~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de1|old~q\,
	datab => \reset~input_o\,
	datac => \in_5j~input_o\,
	combout => \de1|count[11]~27_combout\);

-- Location: LCCOMB_X15_Y16_N30
\de1|count[11]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|count[11]~28_combout\ = (\reset~input_o\) # ((\de1|old~q\ $ (\in_5j~input_o\)) # (!\de1|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de1|old~q\,
	datab => \reset~input_o\,
	datac => \in_5j~input_o\,
	datad => \de1|Equal0~7_combout\,
	combout => \de1|count[11]~28_combout\);

-- Location: LCCOMB_X7_Y22_N30
\de2|count[21]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[21]~27_combout\ = (\reset~input_o\) # (\in_1y~input_o\ $ (\de2|old~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \in_1y~input_o\,
	datad => \de2|old~q\,
	combout => \de2|count[21]~27_combout\);

-- Location: LCCOMB_X5_Y22_N2
\de2|count[21]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|count[21]~28_combout\ = (\reset~input_o\) # ((\in_1y~input_o\ $ (\de2|old~q\)) # (!\de2|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_1y~input_o\,
	datab => \reset~input_o\,
	datac => \de2|old~q\,
	datad => \de2|Equal0~7_combout\,
	combout => \de2|count[21]~28_combout\);

-- Location: LCCOMB_X15_Y16_N2
\de3|count[11]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[11]~27_combout\ = (\reset~input_o\) # (\in_5y~input_o\ $ (\de3|old~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \in_5y~input_o\,
	datad => \de3|old~q\,
	combout => \de3|count[11]~27_combout\);

-- Location: LCCOMB_X16_Y17_N2
\de3|count[11]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|count[11]~28_combout\ = (\reset~input_o\) # ((\in_5y~input_o\ $ (\de3|old~q\)) # (!\de3|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_5y~input_o\,
	datab => \reset~input_o\,
	datac => \de3|old~q\,
	datad => \de3|Equal0~7_combout\,
	combout => \de3|count[11]~28_combout\);

-- Location: LCCOMB_X20_Y21_N12
\s1|Mod1|auto_generated|divider|divider|StageOut[54]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[54]~90_combout\ = (\now_money[11]~22_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[11]~22_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[54]~90_combout\);

-- Location: LCCOMB_X21_Y21_N2
\s1|Mod1|auto_generated|divider|divider|StageOut[53]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[53]~92_combout\ = (\now_money[10]~20_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \now_money[10]~20_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[53]~92_combout\);

-- Location: LCCOMB_X21_Y21_N4
\s1|Mod1|auto_generated|divider|divider|StageOut[52]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[52]~95_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[52]~95_combout\);

-- Location: LCCOMB_X20_Y21_N6
\s1|Mod1|auto_generated|divider|divider|StageOut[51]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[51]~96_combout\ = (\now_money[8]~16_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[8]~16_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[51]~96_combout\);

-- Location: LCCOMB_X21_Y21_N20
\s1|Mod1|auto_generated|divider|divider|StageOut[50]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\);

-- Location: LCCOMB_X21_Y21_N30
\s1|Mod1|auto_generated|divider|divider|StageOut[49]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\ = (\now_money[6]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[6]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\);

-- Location: LCCOMB_X20_Y21_N30
\s1|Mod1|auto_generated|divider|divider|StageOut[62]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[62]~102_combout\ = (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[62]~102_combout\);

-- Location: LCCOMB_X20_Y21_N4
\s1|Mod1|auto_generated|divider|divider|StageOut[59]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[59]~105_combout\ = (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[59]~105_combout\);

-- Location: LCCOMB_X19_Y21_N26
\s1|Mod1|auto_generated|divider|divider|StageOut[58]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[58]~106_combout\ = (\now_money[6]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[6]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[58]~106_combout\);

-- Location: LCCOMB_X19_Y21_N22
\s1|Mod1|auto_generated|divider|divider|StageOut[57]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[57]~109_combout\ = (\now_money[5]~10_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[5]~10_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[57]~109_combout\);

-- Location: LCCOMB_X19_Y21_N18
\s1|Mod1|auto_generated|divider|divider|StageOut[69]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[69]~111_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[69]~111_combout\);

-- Location: LCCOMB_X16_Y21_N30
\s1|Mod1|auto_generated|divider|divider|StageOut[67]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[67]~113_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[67]~113_combout\);

-- Location: LCCOMB_X16_Y21_N26
\s1|Mod1|auto_generated|divider|divider|StageOut[66]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[66]~114_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[66]~114_combout\);

-- Location: LCCOMB_X17_Y21_N20
\s1|Mod1|auto_generated|divider|divider|StageOut[65]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[65]~115_combout\ = (\now_money[4]~8_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[4]~8_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[65]~115_combout\);

-- Location: LCCOMB_X16_Y21_N20
\s1|Mod1|auto_generated|divider|divider|StageOut[75]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[75]~120_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[75]~120_combout\);

-- Location: LCCOMB_X17_Y21_N28
\s1|Mod1|auto_generated|divider|divider|StageOut[64]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\ = (\now_money[3]~6_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[3]~6_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\);

-- Location: LCCOMB_X17_Y21_N26
\s1|Mod1|auto_generated|divider|divider|StageOut[64]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[64]~124_combout\ = (\now_money[3]~6_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[3]~6_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[64]~124_combout\);

-- Location: LCCOMB_X17_Y21_N24
\s1|Mod1|auto_generated|divider|divider|StageOut[73]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[73]~125_combout\ = (!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[73]~125_combout\);

-- Location: LCCOMB_X15_Y21_N4
\s1|Mod1|auto_generated|divider|divider|StageOut[85]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[85]~126_combout\ = (!\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[85]~126_combout\);

-- Location: LCCOMB_X14_Y21_N30
\s1|Mod1|auto_generated|divider|divider|StageOut[83]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[83]~128_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[83]~128_combout\);

-- Location: LCCOMB_X14_Y21_N10
\s1|Mod1|auto_generated|divider|divider|StageOut[82]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[82]~129_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[82]~129_combout\);

-- Location: FF_X14_Y19_N11
\s1|temp1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|temp1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|temp1\(0));

-- Location: LCCOMB_X11_Y20_N2
\s1|Mod2|auto_generated|divider|divider|StageOut[43]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[43]~27_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[43]~27_combout\);

-- Location: LCCOMB_X11_Y20_N30
\s1|Mod2|auto_generated|divider|divider|StageOut[42]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[42]~28_combout\ = (\s1|temp1\(5) & \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|temp1\(5),
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[42]~28_combout\);

-- Location: LCCOMB_X10_Y20_N10
\s1|Mod2|auto_generated|divider|divider|StageOut[41]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[41]~31_combout\ = (!\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[41]~31_combout\);

-- Location: LCCOMB_X10_Y20_N16
\s1|Mod2|auto_generated|divider|divider|StageOut[40]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[40]~32_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \s1|temp1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \s1|temp1\(3),
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[40]~32_combout\);

-- Location: LCCOMB_X12_Y20_N26
\s1|Mod2|auto_generated|divider|divider|StageOut[46]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[46]~36_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \s1|temp1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|temp1\(3),
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[46]~36_combout\);

-- Location: LCCOMB_X12_Y20_N30
\s1|Mod2|auto_generated|divider|divider|StageOut[45]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[45]~38_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \s1|temp1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|temp1\(2),
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[45]~38_combout\);

-- Location: LCCOMB_X15_Y20_N10
\s1|Mod2|auto_generated|divider|divider|StageOut[51]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[51]~40_combout\ = (\s1|temp1\(2) & \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(2),
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[51]~40_combout\);

-- Location: LCCOMB_X15_Y20_N12
\s1|Mod2|auto_generated|divider|divider|StageOut[50]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[50]~42_combout\ = (\s1|temp1\(1) & \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(1),
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[50]~42_combout\);

-- Location: LCCOMB_X12_Y20_N24
\s1|Mod2|auto_generated|divider|divider|StageOut[53]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[53]~44_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[53]~44_combout\);

-- Location: LCCOMB_X19_Y20_N12
\s1|Div0|auto_generated|divider|divider|StageOut[68]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[68]~133_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[59]~143_combout\) # 
-- ((\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|StageOut[59]~143_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[68]~133_combout\);

-- Location: LCCOMB_X20_Y22_N12
\s1|Div0|auto_generated|divider|divider|StageOut[77]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[77]~135_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[68]~133_combout\) # 
-- ((\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[68]~133_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[77]~135_combout\);

-- Location: LCCOMB_X20_Y22_N6
\s1|Div0|auto_generated|divider|divider|StageOut[76]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[76]~136_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[67]~144_combout\) # 
-- ((\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[67]~144_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[76]~136_combout\);

-- Location: LCCOMB_X19_Y22_N28
\s1|Div0|auto_generated|divider|divider|StageOut[86]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[77]~135_combout\) # 
-- ((\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[77]~135_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\);

-- Location: LCCOMB_X19_Y22_N30
\s1|Div0|auto_generated|divider|divider|StageOut[85]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[76]~136_combout\) # 
-- ((\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[76]~136_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\);

-- Location: LCCOMB_X19_Y19_N14
\s1|Div0|auto_generated|divider|divider|StageOut[84]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[75]~148_combout\) # 
-- ((!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[75]~148_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\);

-- Location: LCCOMB_X14_Y18_N18
\s1|Div1|auto_generated|divider|divider|StageOut[53]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[53]~46_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\s1|Div1|auto_generated|divider|divider|StageOut[47]~48_combout\) # 
-- ((!\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[47]~48_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[53]~46_combout\);

-- Location: LCCOMB_X16_Y21_N22
\s1|Mod1|auto_generated|divider|divider|StageOut[70]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[70]~140_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[61]~150_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|StageOut[61]~150_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[70]~140_combout\);

-- Location: LCCOMB_X19_Y21_N28
\s1|Mod1|auto_generated|divider|divider|StageOut[68]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[68]~142_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[59]~152_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|StageOut[59]~152_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[68]~142_combout\);

-- Location: LCCOMB_X15_Y21_N30
\s1|Mod1|auto_generated|divider|divider|StageOut[78]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[78]~143_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[69]~141_combout\) # 
-- ((!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[69]~141_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[78]~143_combout\);

-- Location: LCCOMB_X19_Y21_N30
\s1|Mod1|auto_generated|divider|divider|StageOut[77]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[77]~144_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[68]~142_combout\) # 
-- ((!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[68]~142_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[77]~144_combout\);

-- Location: LCCOMB_X14_Y21_N26
\s1|Mod1|auto_generated|divider|divider|StageOut[86]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[86]~148_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[77]~144_combout\) # 
-- ((!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|StageOut[77]~144_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[86]~148_combout\);

-- Location: LCCOMB_X17_Y20_N14
\s1|Div0|auto_generated|divider|divider|StageOut[59]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[59]~143_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\now_money[7]~14_combout\))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \now_money[7]~14_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[59]~143_combout\);

-- Location: LCCOMB_X19_Y20_N6
\s1|Div0|auto_generated|divider|divider|StageOut[67]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[67]~144_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\now_money[6]~12_combout\)) 
-- # (!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[6]~12_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[67]~144_combout\);

-- Location: LCCOMB_X21_Y20_N30
\s1|Div0|auto_generated|divider|divider|StageOut[66]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[66]~145_combout\ = (\now_money[5]~10_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \now_money[5]~10_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[66]~145_combout\);

-- Location: LCCOMB_X19_Y22_N24
\s1|Div0|auto_generated|divider|divider|StageOut[82]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[82]~147_combout\ = (\now_money[3]~6_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[3]~6_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[82]~147_combout\);

-- Location: LCCOMB_X15_Y19_N22
\s1|Div1|auto_generated|divider|divider|StageOut[52]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[52]~49_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\s1|temp1\(3))) # 
-- (!\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \s1|temp1\(3),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[52]~49_combout\);

-- Location: LCCOMB_X21_Y19_N12
\s1|Mod0|auto_generated|divider|divider|StageOut[51]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- ((!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))) # (!\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\);

-- Location: LCCOMB_X21_Y19_N30
\s1|Mod0|auto_generated|divider|divider|StageOut[52]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- ((!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))) # (!\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\);

-- Location: LCCOMB_X20_Y21_N2
\s1|Mod1|auto_generated|divider|divider|StageOut[61]~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[61]~150_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\now_money[9]~18_combout\)) 
-- # (!\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[9]~18_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[61]~150_combout\);

-- Location: LCCOMB_X15_Y21_N22
\s1|Mod1|auto_generated|divider|divider|StageOut[74]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[74]~155_combout\ = (\now_money[4]~8_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[4]~8_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[74]~155_combout\);

-- Location: LCCOMB_X11_Y20_N16
\s1|Mod2|auto_generated|divider|divider|StageOut[48]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[48]~50_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\s1|temp1\(5))) # 
-- (!\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \s1|temp1\(5),
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[48]~50_combout\);

-- Location: LCCOMB_X11_Y20_N14
\s1|Mod2|auto_generated|divider|divider|StageOut[47]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[47]~51_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\s1|temp1\(4)))) # 
-- (!\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \s1|temp1\(4),
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[47]~51_combout\);

-- Location: LCCOMB_X19_Y19_N24
\s1|Div0|auto_generated|divider|divider|StageOut[75]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[75]~148_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\now_money[5]~10_combout\)) 
-- # (!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[5]~10_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[75]~148_combout\);

-- Location: LCCOMB_X19_Y22_N26
\s1|Div0|auto_generated|divider|divider|StageOut[83]~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[83]~149_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & (\now_money[4]~8_combout\)) 
-- # (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[4]~8_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[83]~149_combout\);

-- Location: LCCOMB_X24_Y21_N30
\num_c2[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c2[0]~15_combout\ = !num_c2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => num_c2(0),
	combout => \num_c2[0]~15_combout\);

-- Location: LCCOMB_X19_Y22_N14
\s1|deci_data[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|deci_data[8]~11_combout\ = !\s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	combout => \s1|deci_data[8]~11_combout\);

-- Location: IOIBUF_X41_Y18_N1
\in_buy2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_buy2,
	o => \in_buy2~input_o\);

-- Location: IOIBUF_X41_Y5_N8
\in_5j~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_5j,
	o => \in_5j~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\in_1y~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1y,
	o => \in_1y~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\in_5y~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_5y,
	o => \in_5y~input_o\);

-- Location: CLKCTRL_G2
\de2|steady~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \de2|steady~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \de2|steady~clkctrl_outclk\);

-- Location: CLKCTRL_G12
\de1|steady~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \de1|steady~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \de1|steady~clkctrl_outclk\);

-- Location: CLKCTRL_G13
\de3|steady~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \de3|steady~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \de3|steady~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y19_N10
\s1|temp1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|temp1[0]~feeder_combout\ = \now_money[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \now_money[0]~0_combout\,
	combout => \s1|temp1[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y16_N0
\de1|steady~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|steady~feeder_combout\ = \de1|steady~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \de1|steady~0_combout\,
	combout => \de1|steady~feeder_combout\);

-- Location: LCCOMB_X4_Y22_N28
\de2|steady~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|steady~feeder_combout\ = \de2|steady~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \de2|steady~0_combout\,
	combout => \de2|steady~feeder_combout\);

-- Location: LCCOMB_X17_Y17_N24
\de3|steady~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|steady~feeder_combout\ = \de3|steady~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \de3|steady~0_combout\,
	combout => \de3|steady~feeder_combout\);

-- Location: LCCOMB_X14_Y19_N30
\s1|deci_data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|deci_data[0]~feeder_combout\ = \s1|temp2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s1|temp2\(0),
	combout => \s1|deci_data[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y19_N12
\s1|temp2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|temp2[0]~feeder_combout\ = \s1|temp1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s1|temp1\(0),
	combout => \s1|temp2[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y16_N22
\de1|old~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de1|old~feeder_combout\ = \in_5j~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_5j~input_o\,
	combout => \de1|old~feeder_combout\);

-- Location: LCCOMB_X7_Y22_N28
\de2|old~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de2|old~feeder_combout\ = \in_1y~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_1y~input_o\,
	combout => \de2|old~feeder_combout\);

-- Location: LCCOMB_X15_Y16_N18
\de3|old~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \de3|old~feeder_combout\ = \in_5y~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_5y~input_o\,
	combout => \de3|old~feeder_combout\);

-- Location: IOOBUF_X41_Y13_N23
\out_less~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_less~reg0_q\,
	devoe => ww_devoe,
	o => \out_less~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\out_take~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_take~reg0_q\,
	devoe => ww_devoe,
	o => \out_take~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\out_money~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_money~reg0_q\,
	devoe => ww_devoe,
	o => \out_money~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\which_seg[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|ALT_INV_this_seg\(0),
	devoe => ww_devoe,
	o => \which_seg[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\which_seg[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|ALT_INV_this_seg\(1),
	devoe => ww_devoe,
	o => \which_seg[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\which_seg[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|this_seg\(2),
	devoe => ww_devoe,
	o => \which_seg[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\seg[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|seg\(0),
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\seg[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|seg\(1),
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\seg[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|seg\(2),
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\seg[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|seg\(3),
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\seg[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|seg\(4),
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\seg[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|seg\(5),
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\seg[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|seg\(6),
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X41_Y27_N22
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X41_Y27_N15
\in_refund~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_refund,
	o => \in_refund~input_o\);

-- Location: IOIBUF_X41_Y18_N15
\in_buy1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_buy1,
	o => \in_buy1~input_o\);

-- Location: LCCOMB_X23_Y18_N6
\next_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state~2_combout\ = (!\in_buy2~input_o\ & (!\cur_state.IDLE~q\ & !\in_buy1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_buy2~input_o\,
	datac => \cur_state.IDLE~q\,
	datad => \in_buy1~input_o\,
	combout => \next_state~2_combout\);

-- Location: LCCOMB_X26_Y18_N24
\cur_state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state~22_combout\ = (!\cur_state~21_combout\ & (!\reset~input_o\ & ((\in_refund~input_o\) # (!\next_state~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cur_state~21_combout\,
	datab => \reset~input_o\,
	datac => \in_refund~input_o\,
	datad => \next_state~2_combout\,
	combout => \cur_state~22_combout\);

-- Location: LCCOMB_X26_Y18_N2
\cur_state.IDLE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state.IDLE~feeder_combout\ = \cur_state~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cur_state~22_combout\,
	combout => \cur_state.IDLE~feeder_combout\);

-- Location: FF_X26_Y18_N3
\cur_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cur_state.IDLE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cur_state.IDLE~q\);

-- Location: LCCOMB_X23_Y19_N2
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = count2(0) $ (VCC)
-- \Add6~1\ = CARRY(count2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count2(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X23_Y18_N22
\cur_state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state~16_combout\ = (!\reset~input_o\ & (!\cur_state.IDLE~q\ & (!\LessThan0~3_combout\ & \in_buy1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cur_state.IDLE~q\,
	datac => \LessThan0~3_combout\,
	datad => \in_buy1~input_o\,
	combout => \cur_state~16_combout\);

-- Location: LCCOMB_X27_Y19_N8
\slow_clk[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[1]~28_combout\ = (slow_clk(1) & (!\slow_clk[0]~27\)) # (!slow_clk(1) & ((\slow_clk[0]~27\) # (GND)))
-- \slow_clk[1]~29\ = CARRY((!\slow_clk[0]~27\) # (!slow_clk(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(1),
	datad => VCC,
	cin => \slow_clk[0]~27\,
	combout => \slow_clk[1]~28_combout\,
	cout => \slow_clk[1]~29\);

-- Location: FF_X27_Y19_N9
\slow_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[1]~28_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(1));

-- Location: LCCOMB_X27_Y19_N14
\slow_clk[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[4]~34_combout\ = (slow_clk(4) & (\slow_clk[3]~33\ $ (GND))) # (!slow_clk(4) & (!\slow_clk[3]~33\ & VCC))
-- \slow_clk[4]~35\ = CARRY((slow_clk(4) & !\slow_clk[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(4),
	datad => VCC,
	cin => \slow_clk[3]~33\,
	combout => \slow_clk[4]~34_combout\,
	cout => \slow_clk[4]~35\);

-- Location: FF_X27_Y19_N15
\slow_clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[4]~34_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(4));

-- Location: LCCOMB_X27_Y19_N16
\slow_clk[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[5]~36_combout\ = (slow_clk(5) & (!\slow_clk[4]~35\)) # (!slow_clk(5) & ((\slow_clk[4]~35\) # (GND)))
-- \slow_clk[5]~37\ = CARRY((!\slow_clk[4]~35\) # (!slow_clk(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(5),
	datad => VCC,
	cin => \slow_clk[4]~35\,
	combout => \slow_clk[5]~36_combout\,
	cout => \slow_clk[5]~37\);

-- Location: FF_X27_Y19_N17
\slow_clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[5]~36_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(5));

-- Location: LCCOMB_X27_Y19_N18
\slow_clk[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[6]~38_combout\ = (slow_clk(6) & (\slow_clk[5]~37\ $ (GND))) # (!slow_clk(6) & (!\slow_clk[5]~37\ & VCC))
-- \slow_clk[6]~39\ = CARRY((slow_clk(6) & !\slow_clk[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(6),
	datad => VCC,
	cin => \slow_clk[5]~37\,
	combout => \slow_clk[6]~38_combout\,
	cout => \slow_clk[6]~39\);

-- Location: FF_X27_Y19_N19
\slow_clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[6]~38_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(6));

-- Location: LCCOMB_X27_Y19_N20
\slow_clk[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[7]~40_combout\ = (slow_clk(7) & (!\slow_clk[6]~39\)) # (!slow_clk(7) & ((\slow_clk[6]~39\) # (GND)))
-- \slow_clk[7]~41\ = CARRY((!\slow_clk[6]~39\) # (!slow_clk(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(7),
	datad => VCC,
	cin => \slow_clk[6]~39\,
	combout => \slow_clk[7]~40_combout\,
	cout => \slow_clk[7]~41\);

-- Location: FF_X27_Y19_N21
\slow_clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[7]~40_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(7));

-- Location: LCCOMB_X27_Y19_N22
\slow_clk[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[8]~42_combout\ = (slow_clk(8) & (\slow_clk[7]~41\ $ (GND))) # (!slow_clk(8) & (!\slow_clk[7]~41\ & VCC))
-- \slow_clk[8]~43\ = CARRY((slow_clk(8) & !\slow_clk[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(8),
	datad => VCC,
	cin => \slow_clk[7]~41\,
	combout => \slow_clk[8]~42_combout\,
	cout => \slow_clk[8]~43\);

-- Location: LCCOMB_X27_Y19_N24
\slow_clk[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[9]~44_combout\ = (slow_clk(9) & (!\slow_clk[8]~43\)) # (!slow_clk(9) & ((\slow_clk[8]~43\) # (GND)))
-- \slow_clk[9]~45\ = CARRY((!\slow_clk[8]~43\) # (!slow_clk(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(9),
	datad => VCC,
	cin => \slow_clk[8]~43\,
	combout => \slow_clk[9]~44_combout\,
	cout => \slow_clk[9]~45\);

-- Location: FF_X27_Y19_N25
\slow_clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[9]~44_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(9));

-- Location: LCCOMB_X27_Y19_N28
\slow_clk[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[11]~48_combout\ = (slow_clk(11) & (!\slow_clk[10]~47\)) # (!slow_clk(11) & ((\slow_clk[10]~47\) # (GND)))
-- \slow_clk[11]~49\ = CARRY((!\slow_clk[10]~47\) # (!slow_clk(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(11),
	datad => VCC,
	cin => \slow_clk[10]~47\,
	combout => \slow_clk[11]~48_combout\,
	cout => \slow_clk[11]~49\);

-- Location: FF_X27_Y19_N29
\slow_clk[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[11]~48_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(11));

-- Location: FF_X27_Y19_N23
\slow_clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[8]~42_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(8));

-- Location: LCCOMB_X27_Y19_N0
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (slow_clk(10)) # (((slow_clk(8)) # (!slow_clk(9))) # (!slow_clk(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(10),
	datab => slow_clk(11),
	datac => slow_clk(8),
	datad => slow_clk(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X27_Y18_N0
\slow_clk[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[13]~52_combout\ = (slow_clk(13) & (!\slow_clk[12]~51\)) # (!slow_clk(13) & ((\slow_clk[12]~51\) # (GND)))
-- \slow_clk[13]~53\ = CARRY((!\slow_clk[12]~51\) # (!slow_clk(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(13),
	datad => VCC,
	cin => \slow_clk[12]~51\,
	combout => \slow_clk[13]~52_combout\,
	cout => \slow_clk[13]~53\);

-- Location: FF_X27_Y18_N1
\slow_clk[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[13]~52_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(13));

-- Location: LCCOMB_X27_Y18_N2
\slow_clk[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[14]~54_combout\ = (slow_clk(14) & (\slow_clk[13]~53\ $ (GND))) # (!slow_clk(14) & (!\slow_clk[13]~53\ & VCC))
-- \slow_clk[14]~55\ = CARRY((slow_clk(14) & !\slow_clk[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(14),
	datad => VCC,
	cin => \slow_clk[13]~53\,
	combout => \slow_clk[14]~54_combout\,
	cout => \slow_clk[14]~55\);

-- Location: FF_X27_Y18_N3
\slow_clk[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[14]~54_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(14));

-- Location: LCCOMB_X27_Y18_N4
\slow_clk[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[15]~56_combout\ = (slow_clk(15) & (!\slow_clk[14]~55\)) # (!slow_clk(15) & ((\slow_clk[14]~55\) # (GND)))
-- \slow_clk[15]~57\ = CARRY((!\slow_clk[14]~55\) # (!slow_clk(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(15),
	datad => VCC,
	cin => \slow_clk[14]~55\,
	combout => \slow_clk[15]~56_combout\,
	cout => \slow_clk[15]~57\);

-- Location: FF_X27_Y18_N5
\slow_clk[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[15]~56_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(15));

-- Location: LCCOMB_X27_Y18_N26
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (((slow_clk(15)) # (slow_clk(13))) # (!slow_clk(14))) # (!slow_clk(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(12),
	datab => slow_clk(14),
	datac => slow_clk(15),
	datad => slow_clk(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X27_Y19_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (slow_clk(7)) # ((slow_clk(6)) # ((slow_clk(4)) # (slow_clk(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(7),
	datab => slow_clk(6),
	datac => slow_clk(4),
	datad => slow_clk(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X26_Y19_N20
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\) # ((\Equal0~2_combout\) # ((\Equal0~3_combout\) # (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X26_Y18_N22
\elapsed_time~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \elapsed_time~1_combout\ = ((\reset~input_o\) # ((\LessThan2~0_combout\) # (!\cur_state.IDLE~q\))) # (!\elapsed_time~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elapsed_time~0_combout\,
	datab => \reset~input_o\,
	datac => \LessThan2~0_combout\,
	datad => \cur_state.IDLE~q\,
	combout => \elapsed_time~1_combout\);

-- Location: LCCOMB_X27_Y18_N6
\slow_clk[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[16]~58_combout\ = (slow_clk(16) & (\slow_clk[15]~57\ $ (GND))) # (!slow_clk(16) & (!\slow_clk[15]~57\ & VCC))
-- \slow_clk[16]~59\ = CARRY((slow_clk(16) & !\slow_clk[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(16),
	datad => VCC,
	cin => \slow_clk[15]~57\,
	combout => \slow_clk[16]~58_combout\,
	cout => \slow_clk[16]~59\);

-- Location: LCCOMB_X27_Y18_N8
\slow_clk[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk[17]~60_combout\ = (slow_clk(17) & (!\slow_clk[16]~59\)) # (!slow_clk(17) & ((\slow_clk[16]~59\) # (GND)))
-- \slow_clk[17]~61\ = CARRY((!\slow_clk[16]~59\) # (!slow_clk(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => slow_clk(17),
	datad => VCC,
	cin => \slow_clk[16]~59\,
	combout => \slow_clk[17]~60_combout\,
	cout => \slow_clk[17]~61\);

-- Location: FF_X27_Y18_N9
\slow_clk[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[17]~60_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(17));

-- Location: FF_X27_Y18_N13
\slow_clk[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[19]~64_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(19));

-- Location: FF_X27_Y18_N7
\slow_clk[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk[16]~58_combout\,
	sclr => \elapsed_time[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slow_clk(16));

-- Location: LCCOMB_X27_Y18_N28
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (slow_clk(18)) # ((slow_clk(19)) # ((slow_clk(16)) # (!slow_clk(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slow_clk(18),
	datab => slow_clk(19),
	datac => slow_clk(17),
	datad => slow_clk(16),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X26_Y18_N0
\elapsed_time[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \elapsed_time[3]~2_combout\ = (\elapsed_time~1_combout\) # ((!\Equal0~7_combout\ & (!\Equal0~4_combout\ & !\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \elapsed_time~1_combout\,
	datad => \Equal0~5_combout\,
	combout => \elapsed_time[3]~2_combout\);

-- Location: LCCOMB_X26_Y18_N4
\elapsed_time[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \elapsed_time[0]~3_combout\ = (elapsed_time(0) & ((!\elapsed_time[3]~2_combout\))) # (!elapsed_time(0) & (!\elapsed_time~1_combout\ & \elapsed_time[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elapsed_time~1_combout\,
	datac => elapsed_time(0),
	datad => \elapsed_time[3]~2_combout\,
	combout => \elapsed_time[0]~3_combout\);

-- Location: FF_X26_Y18_N5
\elapsed_time[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time(0));

-- Location: LCCOMB_X26_Y18_N30
\elapsed_time[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \elapsed_time[1]~4_combout\ = (\elapsed_time[3]~2_combout\ & (!\elapsed_time~1_combout\ & (elapsed_time(0) $ (elapsed_time(1))))) # (!\elapsed_time[3]~2_combout\ & (((elapsed_time(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elapsed_time~1_combout\,
	datab => elapsed_time(0),
	datac => elapsed_time(1),
	datad => \elapsed_time[3]~2_combout\,
	combout => \elapsed_time[1]~4_combout\);

-- Location: FF_X26_Y18_N31
\elapsed_time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time(1));

-- Location: LCCOMB_X26_Y18_N26
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (elapsed_time(0) & elapsed_time(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time(0),
	datac => elapsed_time(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y18_N28
\cur_state.CHECK~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state.CHECK~feeder_combout\ = \cur_state~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cur_state~15_combout\,
	combout => \cur_state.CHECK~feeder_combout\);

-- Location: FF_X26_Y18_N29
\cur_state.CHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cur_state.CHECK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cur_state.CHECK~q\);

-- Location: LCCOMB_X26_Y18_N16
\cur_state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state~15_combout\ = (!\reset~input_o\ & (((!\LessThan2~0_combout\ & \cur_state.CHECK~q\)) # (!\elapsed_time~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elapsed_time~0_combout\,
	datab => \reset~input_o\,
	datac => \LessThan2~0_combout\,
	datad => \cur_state.CHECK~q\,
	combout => \cur_state~15_combout\);

-- Location: LCCOMB_X23_Y18_N18
WideOr8 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = ((\cur_state~14_combout\) # ((\cur_state~16_combout\) # (\cur_state~15_combout\))) # (!\cur_state~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cur_state~22_combout\,
	datab => \cur_state~14_combout\,
	datac => \cur_state~16_combout\,
	datad => \cur_state~15_combout\,
	combout => \WideOr8~combout\);

-- Location: LCCOMB_X22_Y19_N6
\Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\cur_state~18_combout\ & ((\Add6~0_combout\) # ((count2(0) & \WideOr8~combout\)))) # (!\cur_state~18_combout\ & (((count2(0) & \WideOr8~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cur_state~18_combout\,
	datab => \Add6~0_combout\,
	datac => count2(0),
	datad => \WideOr8~combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X22_Y19_N7
\count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(0));

-- Location: LCCOMB_X21_Y20_N4
\now_money[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[0]~0_combout\ = (\Add13~0_combout\ & ((GND) # (!count2(0)))) # (!\Add13~0_combout\ & (count2(0) $ (GND)))
-- \now_money[0]~1\ = CARRY((\Add13~0_combout\) # (!count2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => count2(0),
	datad => VCC,
	combout => \now_money[0]~0_combout\,
	cout => \now_money[0]~1\);

-- Location: LCCOMB_X22_Y21_N20
\num_c1[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c1[0]~16_combout\ = !num_c1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => num_c1(0),
	combout => \num_c1[0]~16_combout\);

-- Location: LCCOMB_X23_Y27_N24
\num_c1[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c1[5]~11_combout\ = (\reset~input_o\) # (\in_refund~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \in_refund~input_o\,
	combout => \num_c1[5]~11_combout\);

-- Location: CLKCTRL_G11
\num_c1[5]~11clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \num_c1[5]~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \num_c1[5]~11clkctrl_outclk\);

-- Location: FF_X22_Y21_N21
\num_c1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de1|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c1[0]~16_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c1(0));

-- Location: LCCOMB_X22_Y21_N22
\num_c1[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c1[1]~5_combout\ = (num_c1(1) & (num_c1(0) $ (VCC))) # (!num_c1(1) & (num_c1(0) & VCC))
-- \num_c1[1]~6\ = CARRY((num_c1(1) & num_c1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c1(1),
	datab => num_c1(0),
	datad => VCC,
	combout => \num_c1[1]~5_combout\,
	cout => \num_c1[1]~6\);

-- Location: LCCOMB_X22_Y21_N24
\num_c1[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c1[2]~7_combout\ = (num_c1(2) & (!\num_c1[1]~6\)) # (!num_c1(2) & ((\num_c1[1]~6\) # (GND)))
-- \num_c1[2]~8\ = CARRY((!\num_c1[1]~6\) # (!num_c1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_c1(2),
	datad => VCC,
	cin => \num_c1[1]~6\,
	combout => \num_c1[2]~7_combout\,
	cout => \num_c1[2]~8\);

-- Location: FF_X22_Y21_N25
\num_c1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de1|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c1[2]~7_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c1(2));

-- Location: LCCOMB_X22_Y21_N26
\num_c1[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c1[3]~9_combout\ = (num_c1(3) & (\num_c1[2]~8\ $ (GND))) # (!num_c1(3) & (!\num_c1[2]~8\ & VCC))
-- \num_c1[3]~10\ = CARRY((num_c1(3) & !\num_c1[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c1(3),
	datad => VCC,
	cin => \num_c1[2]~8\,
	combout => \num_c1[3]~9_combout\,
	cout => \num_c1[3]~10\);

-- Location: FF_X22_Y21_N27
\num_c1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de1|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c1[3]~9_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c1(3));

-- Location: LCCOMB_X22_Y21_N4
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (num_c1(1) & ((num_c1(3) & (\Add7~1\ & VCC)) # (!num_c1(3) & (!\Add7~1\)))) # (!num_c1(1) & ((num_c1(3) & (!\Add7~1\)) # (!num_c1(3) & ((\Add7~1\) # (GND)))))
-- \Add7~3\ = CARRY((num_c1(1) & (!num_c1(3) & !\Add7~1\)) # (!num_c1(1) & ((!\Add7~1\) # (!num_c1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c1(1),
	datab => num_c1(3),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X24_Y21_N0
\num_c2[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c2[1]~5_combout\ = (num_c2(0) & (num_c2(1) $ (VCC))) # (!num_c2(0) & (num_c2(1) & VCC))
-- \num_c2[1]~6\ = CARRY((num_c2(0) & num_c2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c2(0),
	datab => num_c2(1),
	datad => VCC,
	combout => \num_c2[1]~5_combout\,
	cout => \num_c2[1]~6\);

-- Location: FF_X24_Y21_N1
\num_c2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c2[1]~5_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c2(1));

-- Location: FF_X22_Y21_N23
\num_c1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de1|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c1[1]~5_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c1(1));

-- Location: LCCOMB_X23_Y21_N12
\Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (num_c2(0) & (num_c1(1) $ (VCC))) # (!num_c2(0) & (num_c1(1) & VCC))
-- \Add9~1\ = CARRY((num_c2(0) & num_c1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c2(0),
	datab => num_c1(1),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X23_Y21_N16
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = ((\Add8~0_combout\ $ (\Add7~2_combout\ $ (!\Add9~3\)))) # (GND)
-- \Add9~5\ = CARRY((\Add8~0_combout\ & ((\Add7~2_combout\) # (!\Add9~3\))) # (!\Add8~0_combout\ & (\Add7~2_combout\ & !\Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \Add7~2_combout\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X23_Y20_N28
\num_c3[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c3[0]~15_combout\ = !num_c3(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => num_c3(0),
	combout => \num_c3[0]~15_combout\);

-- Location: FF_X23_Y20_N29
\num_c3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de3|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c3[0]~15_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c3(0));

-- Location: LCCOMB_X24_Y20_N0
\num_c3[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c3[1]~5_combout\ = (num_c3(1) & (num_c3(0) $ (VCC))) # (!num_c3(1) & (num_c3(0) & VCC))
-- \num_c3[1]~6\ = CARRY((num_c3(1) & num_c3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(1),
	datab => num_c3(0),
	datad => VCC,
	combout => \num_c3[1]~5_combout\,
	cout => \num_c3[1]~6\);

-- Location: FF_X24_Y20_N1
\num_c3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de3|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c3[1]~5_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c3(1));

-- Location: LCCOMB_X23_Y20_N4
\Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = (num_c3(0) & (\Add9~0_combout\ $ (VCC))) # (!num_c3(0) & (\Add9~0_combout\ & VCC))
-- \Add10~1\ = CARRY((num_c3(0) & \Add9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(0),
	datab => \Add9~0_combout\,
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X23_Y20_N8
\Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = ((num_c3(2) $ (\Add9~4_combout\ $ (!\Add10~3\)))) # (GND)
-- \Add10~5\ = CARRY((num_c3(2) & ((\Add9~4_combout\) # (!\Add10~3\))) # (!num_c3(2) & (\Add9~4_combout\ & !\Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(2),
	datab => \Add9~4_combout\,
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X21_Y22_N26
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Add5~6_combout\ & ((\cur_state~16_combout\) # ((count1(3) & \WideOr7~combout\)))) # (!\Add5~6_combout\ & (count1(3) & (\WideOr7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => count1(3),
	datac => \WideOr7~combout\,
	datad => \cur_state~16_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X22_Y22_N23
\count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector10~0_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(3));

-- Location: LCCOMB_X21_Y22_N22
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Add5~0_combout\ & ((\cur_state~16_combout\) # ((count1(0) & \WideOr7~combout\)))) # (!\Add5~0_combout\ & (count1(0) & (\WideOr7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => count1(0),
	datac => \WideOr7~combout\,
	datad => \cur_state~16_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X22_Y22_N27
\count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector13~0_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(0));

-- Location: LCCOMB_X21_Y22_N8
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (count1(1) & (!\Add5~1\)) # (!count1(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!count1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X21_Y22_N0
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (count1(1) & ((\WideOr7~combout\) # ((\Add5~2_combout\ & \cur_state~16_combout\)))) # (!count1(1) & (\Add5~2_combout\ & ((\cur_state~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datab => \Add5~2_combout\,
	datac => \WideOr7~combout\,
	datad => \cur_state~16_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X22_Y22_N17
\count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector12~0_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(1));

-- Location: LCCOMB_X21_Y22_N14
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (count1(4) & (\Add5~7\ $ (GND))) # (!count1(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((count1(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X21_Y22_N16
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = \Add5~9\ $ (count1(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count1(5),
	cin => \Add5~9\,
	combout => \Add5~10_combout\);

-- Location: LCCOMB_X21_Y22_N2
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\cur_state~16_combout\ & ((\Add5~10_combout\) # ((count1(5) & \WideOr7~combout\)))) # (!\cur_state~16_combout\ & (count1(5) & (\WideOr7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cur_state~16_combout\,
	datab => count1(5),
	datac => \WideOr7~combout\,
	datad => \Add5~10_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X22_Y22_N19
\count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector8~0_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(5));

-- Location: LCCOMB_X21_Y22_N4
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (count1(4) & ((\WideOr7~combout\) # ((\Add5~8_combout\ & \cur_state~16_combout\)))) # (!count1(4) & (\Add5~8_combout\ & ((\cur_state~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(4),
	datab => \Add5~8_combout\,
	datac => \WideOr7~combout\,
	datad => \cur_state~16_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X22_Y22_N21
\count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector9~0_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(4));

-- Location: LCCOMB_X22_Y22_N0
\Add11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~1_cout\ = CARRY(!count1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(0),
	datad => VCC,
	cout => \Add11~1_cout\);

-- Location: LCCOMB_X22_Y22_N4
\Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (count1(2) & (!\Add11~3\ & VCC)) # (!count1(2) & (\Add11~3\ $ (GND)))
-- \Add11~5\ = CARRY((!count1(2) & !\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(2),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X22_Y22_N8
\Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (count1(4) & (!\Add11~7\ & VCC)) # (!count1(4) & (\Add11~7\ $ (GND)))
-- \Add11~9\ = CARRY((!count1(4) & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(4),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X22_Y22_N14
\Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = !\Add11~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add11~13\,
	combout => \Add11~14_combout\);

-- Location: LCCOMB_X22_Y22_N20
\Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = ((\Add11~12_combout\ $ (count1(2) $ (!\Add12~3\)))) # (GND)
-- \Add12~5\ = CARRY((\Add11~12_combout\ & ((count1(2)) # (!\Add12~3\))) # (!\Add11~12_combout\ & (count1(2) & !\Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~12_combout\,
	datab => count1(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X22_Y22_N24
\Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = ((count1(4) $ (\Add11~14_combout\ $ (!\Add12~7\)))) # (GND)
-- \Add12~9\ = CARRY((count1(4) & ((\Add11~14_combout\) # (!\Add12~7\))) # (!count1(4) & (\Add11~14_combout\ & !\Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(4),
	datab => \Add11~14_combout\,
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X22_Y22_N26
\Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (count1(5) & ((\Add11~14_combout\ & (\Add12~9\ & VCC)) # (!\Add11~14_combout\ & (!\Add12~9\)))) # (!count1(5) & ((\Add11~14_combout\ & (!\Add12~9\)) # (!\Add11~14_combout\ & ((\Add12~9\) # (GND)))))
-- \Add12~11\ = CARRY((count1(5) & (!\Add11~14_combout\ & !\Add12~9\)) # (!count1(5) & ((!\Add12~9\) # (!\Add11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(5),
	datab => \Add11~14_combout\,
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X22_Y22_N30
\Add12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = \Add12~13\ $ (\Add11~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add11~14_combout\,
	cin => \Add12~13\,
	combout => \Add12~14_combout\);

-- Location: LCCOMB_X24_Y20_N2
\num_c3[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c3[2]~7_combout\ = (num_c3(2) & (!\num_c3[1]~6\)) # (!num_c3(2) & ((\num_c3[1]~6\) # (GND)))
-- \num_c3[2]~8\ = CARRY((!\num_c3[1]~6\) # (!num_c3(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_c3(2),
	datad => VCC,
	cin => \num_c3[1]~6\,
	combout => \num_c3[2]~7_combout\,
	cout => \num_c3[2]~8\);

-- Location: FF_X24_Y20_N3
\num_c3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de3|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c3[2]~7_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c3(2));

-- Location: LCCOMB_X24_Y20_N4
\num_c3[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c3[3]~9_combout\ = (num_c3(3) & (\num_c3[2]~8\ $ (GND))) # (!num_c3(3) & (!\num_c3[2]~8\ & VCC))
-- \num_c3[3]~10\ = CARRY((num_c3(3) & !\num_c3[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(3),
	datad => VCC,
	cin => \num_c3[2]~8\,
	combout => \num_c3[3]~9_combout\,
	cout => \num_c3[3]~10\);

-- Location: LCCOMB_X24_Y20_N6
\num_c3[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c3[4]~11_combout\ = (num_c3(4) & (!\num_c3[3]~10\)) # (!num_c3(4) & ((\num_c3[3]~10\) # (GND)))
-- \num_c3[4]~12\ = CARRY((!\num_c3[3]~10\) # (!num_c3(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(4),
	datad => VCC,
	cin => \num_c3[3]~10\,
	combout => \num_c3[4]~11_combout\,
	cout => \num_c3[4]~12\);

-- Location: FF_X24_Y20_N7
\num_c3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de3|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c3[4]~11_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c3(4));

-- Location: LCCOMB_X24_Y20_N8
\num_c3[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c3[5]~13_combout\ = \num_c3[4]~12\ $ (!num_c3(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => num_c3(5),
	cin => \num_c3[4]~12\,
	combout => \num_c3[5]~13_combout\);

-- Location: FF_X24_Y20_N9
\num_c3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de3|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c3[5]~13_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c3(5));

-- Location: LCCOMB_X23_Y20_N0
\Mult0|mult_core|romout[0][9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~6_combout\ = (num_c3(3) & ((num_c3(2)) # ((num_c3(0) & num_c3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(3),
	datab => num_c3(0),
	datac => num_c3(1),
	datad => num_c3(2),
	combout => \Mult0|mult_core|romout[0][9]~6_combout\);

-- Location: LCCOMB_X23_Y20_N30
\Mult0|mult_core|romout[0][8]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~4_combout\ = (num_c3(3) & (!num_c3(2) & ((!num_c3(1)) # (!num_c3(0))))) # (!num_c3(3) & (((num_c3(1) & num_c3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(3),
	datab => num_c3(0),
	datac => num_c3(1),
	datad => num_c3(2),
	combout => \Mult0|mult_core|romout[0][8]~4_combout\);

-- Location: FF_X24_Y20_N5
\num_c3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de3|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c3[3]~9_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c3(3));

-- Location: LCCOMB_X24_Y20_N14
\Mult0|mult_core|romout[0][5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~0_combout\ = num_c3(1) $ (((!num_c3(3) & num_c3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => num_c3(1),
	datac => num_c3(3),
	datad => num_c3(0),
	combout => \Mult0|mult_core|romout[0][5]~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (num_c3(4) & (\Mult0|mult_core|romout[0][5]~0_combout\ $ (VCC))) # (!num_c3(4) & (\Mult0|mult_core|romout[0][5]~0_combout\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((num_c3(4) & \Mult0|mult_core|romout[0][5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(4),
	datab => \Mult0|mult_core|romout[0][5]~0_combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X24_Y20_N18
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[0][6]~2_combout\ & ((num_c3(5) & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!num_c3(5) & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|romout[0][6]~2_combout\ & ((num_c3(5) & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!num_c3(5) & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[0][6]~2_combout\ & (!num_c3(5) & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[0][6]~2_combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!num_c3(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~2_combout\,
	datab => num_c3(5),
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X24_Y20_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (num_c3(4) & ((\Mult0|mult_core|romout[0][8]~4_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult0|mult_core|romout[0][8]~4_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!num_c3(4) & ((\Mult0|mult_core|romout[0][8]~4_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[0][8]~4_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((num_c3(4) & (!\Mult0|mult_core|romout[0][8]~4_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!num_c3(4) & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|romout[0][8]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(4),
	datab => \Mult0|mult_core|romout[0][8]~4_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X24_Y20_N26
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & ((num_c3(4)) # ((!num_c3(5))))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & (((!num_c3(4) & num_c3(5))) # 
-- (GND)))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((num_c3(4)) # ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!num_c3(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c3(4),
	datab => num_c3(5),
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X24_Y20_N28
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (((!num_c3(5)) # (!num_c3(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_c3(4),
	datad => num_c3(5),
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\);

-- Location: LCCOMB_X24_Y21_N2
\num_c2[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c2[2]~7_combout\ = (num_c2(2) & (!\num_c2[1]~6\)) # (!num_c2(2) & ((\num_c2[1]~6\) # (GND)))
-- \num_c2[2]~8\ = CARRY((!\num_c2[1]~6\) # (!num_c2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_c2(2),
	datad => VCC,
	cin => \num_c2[1]~6\,
	combout => \num_c2[2]~7_combout\,
	cout => \num_c2[2]~8\);

-- Location: FF_X24_Y21_N3
\num_c2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c2[2]~7_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c2(2));

-- Location: LCCOMB_X24_Y21_N4
\num_c2[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c2[3]~9_combout\ = (num_c2(3) & (\num_c2[2]~8\ $ (GND))) # (!num_c2(3) & (!\num_c2[2]~8\ & VCC))
-- \num_c2[3]~10\ = CARRY((num_c2(3) & !\num_c2[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_c2(3),
	datad => VCC,
	cin => \num_c2[2]~8\,
	combout => \num_c2[3]~9_combout\,
	cout => \num_c2[3]~10\);

-- Location: FF_X24_Y21_N5
\num_c2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c2[3]~9_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c2(3));

-- Location: LCCOMB_X24_Y21_N8
\num_c2[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_c2[5]~13_combout\ = \num_c2[4]~12\ $ (!num_c2(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => num_c2(5),
	cin => \num_c2[4]~12\,
	combout => \num_c2[5]~13_combout\);

-- Location: FF_X24_Y21_N9
\num_c2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de2|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c2[5]~13_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c2(5));

-- Location: LCCOMB_X24_Y21_N16
\Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = ((num_c2(4) $ (num_c2(2) $ (!\Add8~3\)))) # (GND)
-- \Add8~5\ = CARRY((num_c2(4) & ((num_c2(2)) # (!\Add8~3\))) # (!num_c2(4) & (num_c2(2) & !\Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c2(4),
	datab => num_c2(2),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X24_Y21_N18
\Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (num_c2(3) & ((num_c2(5) & (\Add8~5\ & VCC)) # (!num_c2(5) & (!\Add8~5\)))) # (!num_c2(3) & ((num_c2(5) & (!\Add8~5\)) # (!num_c2(5) & ((\Add8~5\) # (GND)))))
-- \Add8~7\ = CARRY((num_c2(3) & (!num_c2(5) & !\Add8~5\)) # (!num_c2(3) & ((!\Add8~5\) # (!num_c2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c2(3),
	datab => num_c2(5),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X24_Y21_N20
\Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (num_c2(4) & (\Add8~7\ $ (GND))) # (!num_c2(4) & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((num_c2(4) & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_c2(4),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X24_Y21_N22
\Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (num_c2(5) & (!\Add8~9\)) # (!num_c2(5) & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!num_c2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_c2(5),
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X24_Y21_N24
\Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = !\Add8~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add8~11\,
	combout => \Add8~12_combout\);

-- Location: FF_X22_Y21_N29
\num_c1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \de1|ALT_INV_steady~clkctrl_outclk\,
	d => \num_c1[4]~12_combout\,
	clrn => \ALT_INV_num_c1[5]~11clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_c1(4));

-- Location: LCCOMB_X23_Y21_N18
\Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\Add8~2_combout\ & ((\Add7~4_combout\ & (\Add9~5\ & VCC)) # (!\Add7~4_combout\ & (!\Add9~5\)))) # (!\Add8~2_combout\ & ((\Add7~4_combout\ & (!\Add9~5\)) # (!\Add7~4_combout\ & ((\Add9~5\) # (GND)))))
-- \Add9~7\ = CARRY((\Add8~2_combout\ & (!\Add7~4_combout\ & !\Add9~5\)) # (!\Add8~2_combout\ & ((!\Add9~5\) # (!\Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \Add7~4_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X23_Y21_N24
\Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = ((\Add7~10_combout\ $ (\Add8~8_combout\ $ (!\Add9~11\)))) # (GND)
-- \Add9~13\ = CARRY((\Add7~10_combout\ & ((\Add8~8_combout\) # (!\Add9~11\))) # (!\Add7~10_combout\ & (\Add8~8_combout\ & !\Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datab => \Add8~8_combout\,
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X23_Y21_N28
\Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = \Add9~15\ $ (!\Add8~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add8~12_combout\,
	cin => \Add9~15\,
	combout => \Add9~16_combout\);

-- Location: LCCOMB_X23_Y20_N10
\Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\Mult0|mult_core|romout[0][4]~1_combout\ & ((\Add9~6_combout\ & (\Add10~5\ & VCC)) # (!\Add9~6_combout\ & (!\Add10~5\)))) # (!\Mult0|mult_core|romout[0][4]~1_combout\ & ((\Add9~6_combout\ & (!\Add10~5\)) # (!\Add9~6_combout\ & 
-- ((\Add10~5\) # (GND)))))
-- \Add10~7\ = CARRY((\Mult0|mult_core|romout[0][4]~1_combout\ & (!\Add9~6_combout\ & !\Add10~5\)) # (!\Mult0|mult_core|romout[0][4]~1_combout\ & ((!\Add10~5\) # (!\Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][4]~1_combout\,
	datab => \Add9~6_combout\,
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X23_Y20_N12
\Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = ((\Add9~8_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (!\Add10~7\)))) # (GND)
-- \Add10~9\ = CARRY((\Add9~8_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\) # (!\Add10~7\))) # (!\Add9~8_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & !\Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X23_Y20_N16
\Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (\Add9~12_combout\ $ (!\Add10~11\)))) # (GND)
-- \Add10~13\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\Add9~12_combout\) # (!\Add10~11\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\Add9~12_combout\ & !\Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Add9~12_combout\,
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X23_Y20_N22
\Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~18_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Add10~17\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Add10~17\) # (GND)))
-- \Add10~19\ = CARRY((!\Add10~17\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add10~17\,
	combout => \Add10~18_combout\,
	cout => \Add10~19\);

-- Location: LCCOMB_X23_Y20_N24
\Add10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~20_combout\ = \Add10~19\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cin => \Add10~19\,
	combout => \Add10~20_combout\);

-- Location: LCCOMB_X22_Y20_N12
\Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (\Add11~6_combout\ & ((\Add10~4_combout\ & (!\Add13~5\)) # (!\Add10~4_combout\ & ((\Add13~5\) # (GND))))) # (!\Add11~6_combout\ & ((\Add10~4_combout\ & (\Add13~5\ & VCC)) # (!\Add10~4_combout\ & (!\Add13~5\))))
-- \Add13~7\ = CARRY((\Add11~6_combout\ & ((!\Add13~5\) # (!\Add10~4_combout\))) # (!\Add11~6_combout\ & (!\Add10~4_combout\ & !\Add13~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datab => \Add10~4_combout\,
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X22_Y20_N14
\Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = ((\Add12~0_combout\ $ (\Add10~6_combout\ $ (\Add13~7\)))) # (GND)
-- \Add13~9\ = CARRY((\Add12~0_combout\ & (\Add10~6_combout\ & !\Add13~7\)) # (!\Add12~0_combout\ & ((\Add10~6_combout\) # (!\Add13~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datab => \Add10~6_combout\,
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X22_Y20_N16
\Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (\Add12~2_combout\ & ((\Add10~8_combout\ & (!\Add13~9\)) # (!\Add10~8_combout\ & ((\Add13~9\) # (GND))))) # (!\Add12~2_combout\ & ((\Add10~8_combout\ & (\Add13~9\ & VCC)) # (!\Add10~8_combout\ & (!\Add13~9\))))
-- \Add13~11\ = CARRY((\Add12~2_combout\ & ((!\Add13~9\) # (!\Add10~8_combout\))) # (!\Add12~2_combout\ & (!\Add10~8_combout\ & !\Add13~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datab => \Add10~8_combout\,
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X22_Y20_N18
\Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = ((\Add10~10_combout\ $ (\Add12~4_combout\ $ (\Add13~11\)))) # (GND)
-- \Add13~13\ = CARRY((\Add10~10_combout\ & ((!\Add13~11\) # (!\Add12~4_combout\))) # (!\Add10~10_combout\ & (!\Add12~4_combout\ & !\Add13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~10_combout\,
	datab => \Add12~4_combout\,
	datad => VCC,
	cin => \Add13~11\,
	combout => \Add13~12_combout\,
	cout => \Add13~13\);

-- Location: LCCOMB_X22_Y20_N22
\Add13~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~16_combout\ = ((\Add10~14_combout\ $ (\Add12~8_combout\ $ (\Add13~15\)))) # (GND)
-- \Add13~17\ = CARRY((\Add10~14_combout\ & ((!\Add13~15\) # (!\Add12~8_combout\))) # (!\Add10~14_combout\ & (!\Add12~8_combout\ & !\Add13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~14_combout\,
	datab => \Add12~8_combout\,
	datad => VCC,
	cin => \Add13~15\,
	combout => \Add13~16_combout\,
	cout => \Add13~17\);

-- Location: LCCOMB_X22_Y20_N24
\Add13~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~18_combout\ = (\Add10~16_combout\ & ((\Add12~10_combout\ & (!\Add13~17\)) # (!\Add12~10_combout\ & (\Add13~17\ & VCC)))) # (!\Add10~16_combout\ & ((\Add12~10_combout\ & ((\Add13~17\) # (GND))) # (!\Add12~10_combout\ & (!\Add13~17\))))
-- \Add13~19\ = CARRY((\Add10~16_combout\ & (\Add12~10_combout\ & !\Add13~17\)) # (!\Add10~16_combout\ & ((\Add12~10_combout\) # (!\Add13~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~16_combout\,
	datab => \Add12~10_combout\,
	datad => VCC,
	cin => \Add13~17\,
	combout => \Add13~18_combout\,
	cout => \Add13~19\);

-- Location: LCCOMB_X22_Y20_N28
\Add13~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~22_combout\ = \Add12~14_combout\ $ (\Add13~21\ $ (!\Add10~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~14_combout\,
	datad => \Add10~20_combout\,
	cin => \Add13~21\,
	combout => \Add13~22_combout\);

-- Location: LCCOMB_X23_Y19_N0
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Add6~4_combout\ & ((\cur_state~18_combout\) # ((count2(2) & \WideOr8~combout\)))) # (!\Add6~4_combout\ & (((count2(2) & \WideOr8~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \cur_state~18_combout\,
	datac => count2(2),
	datad => \WideOr8~combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X23_Y19_N1
\count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(2));

-- Location: LCCOMB_X23_Y19_N4
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (count2(1) & (!\Add6~1\)) # (!count2(1) & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!count2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X23_Y19_N8
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (count2(3) & (!\Add6~5\)) # (!count2(3) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!count2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X23_Y19_N10
\Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (count2(4) & (\Add6~7\ $ (GND))) # (!count2(4) & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((count2(4) & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X23_Y19_N12
\Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = count2(5) $ (\Add6~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(5),
	cin => \Add6~9\,
	combout => \Add6~10_combout\);

-- Location: LCCOMB_X22_Y19_N0
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\WideOr8~combout\ & ((count2(5)) # ((\Add6~10_combout\ & \cur_state~18_combout\)))) # (!\WideOr8~combout\ & (\Add6~10_combout\ & ((\cur_state~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~combout\,
	datab => \Add6~10_combout\,
	datac => count2(5),
	datad => \cur_state~18_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X22_Y19_N1
\count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(5));

-- Location: LCCOMB_X22_Y19_N26
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\WideOr8~combout\ & ((count2(4)) # ((\Add6~8_combout\ & \cur_state~18_combout\)))) # (!\WideOr8~combout\ & (\Add6~8_combout\ & ((\cur_state~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~combout\,
	datab => \Add6~8_combout\,
	datac => count2(4),
	datad => \cur_state~18_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X22_Y19_N27
\count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(4));

-- Location: LCCOMB_X22_Y19_N24
\Mult1|mult_core|romout[1][4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[1][4]~5_combout\ = count2(4) $ (count2(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count2(4),
	datad => count2(5),
	combout => \Mult1|mult_core|romout[1][4]~5_combout\);

-- Location: LCCOMB_X22_Y19_N8
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\WideOr8~combout\ & ((count2(3)) # ((\Add6~6_combout\ & \cur_state~18_combout\)))) # (!\WideOr8~combout\ & (\Add6~6_combout\ & ((\cur_state~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~combout\,
	datab => \Add6~6_combout\,
	datac => count2(3),
	datad => \cur_state~18_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X22_Y19_N9
\count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(3));

-- Location: LCCOMB_X22_Y19_N2
\Mult1|mult_core|romout[0][7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][7]~4_combout\ = (count2(3) & (!count2(2) & ((!count2(0)) # (!count2(1))))) # (!count2(3) & (count2(1) & (count2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(1),
	datab => count2(3),
	datac => count2(2),
	datad => count2(0),
	combout => \Mult1|mult_core|romout[0][7]~4_combout\);

-- Location: LCCOMB_X22_Y19_N4
\Mult1|mult_core|romout[0][6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][6]~3_combout\ = (count2(1) & (count2(3) $ (((!count2(2) & count2(0)))))) # (!count2(1) & ((count2(3) & ((count2(0)) # (!count2(2)))) # (!count2(3) & (count2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(1),
	datab => count2(3),
	datac => count2(2),
	datad => count2(0),
	combout => \Mult1|mult_core|romout[0][6]~3_combout\);

-- Location: LCCOMB_X23_Y19_N30
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\WideOr8~combout\ & ((count2(1)) # ((\Add6~2_combout\ & \cur_state~18_combout\)))) # (!\WideOr8~combout\ & (\Add6~2_combout\ & ((\cur_state~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~combout\,
	datab => \Add6~2_combout\,
	datac => count2(1),
	datad => \cur_state~18_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X23_Y19_N31
\count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(1));

-- Location: LCCOMB_X22_Y19_N28
\Mult1|mult_core|romout[0][4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][4]~1_combout\ = count2(1) $ (((count2(0) & !count2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(0),
	datab => count2(3),
	datac => count2(1),
	combout => \Mult1|mult_core|romout[0][4]~1_combout\);

-- Location: LCCOMB_X22_Y19_N16
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (count2(4) & ((\Mult1|mult_core|romout[0][7]~4_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult1|mult_core|romout[0][7]~4_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!count2(4) & ((\Mult1|mult_core|romout[0][7]~4_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult1|mult_core|romout[0][7]~4_combout\ & 
-- ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((count2(4) & (!\Mult1|mult_core|romout[0][7]~4_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!count2(4) & 
-- ((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult1|mult_core|romout[0][7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(4),
	datab => \Mult1|mult_core|romout[0][7]~4_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X22_Y19_N22
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (((!count2(5)) # (!count2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(4),
	datad => count2(5),
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\);

-- Location: LCCOMB_X22_Y20_N8
\Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (\Add11~2_combout\ & ((\Add10~0_combout\ & (!\Add13~1\)) # (!\Add10~0_combout\ & ((\Add13~1\) # (GND))))) # (!\Add11~2_combout\ & ((\Add10~0_combout\ & (\Add13~1\ & VCC)) # (!\Add10~0_combout\ & (!\Add13~1\))))
-- \Add13~3\ = CARRY((\Add11~2_combout\ & ((!\Add13~1\) # (!\Add10~0_combout\))) # (!\Add11~2_combout\ & (!\Add10~0_combout\ & !\Add13~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => \Add10~0_combout\,
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X22_Y20_N10
\Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = ((\Add10~2_combout\ $ (\Add11~4_combout\ $ (\Add13~3\)))) # (GND)
-- \Add13~5\ = CARRY((\Add10~2_combout\ & ((!\Add13~3\) # (!\Add11~4_combout\))) # (!\Add10~2_combout\ & (!\Add11~4_combout\ & !\Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \Add11~4_combout\,
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X21_Y20_N6
\now_money[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[1]~2_combout\ = (count2(1) & ((\Add13~2_combout\ & (!\now_money[0]~1\)) # (!\Add13~2_combout\ & ((\now_money[0]~1\) # (GND))))) # (!count2(1) & ((\Add13~2_combout\ & (\now_money[0]~1\ & VCC)) # (!\Add13~2_combout\ & (!\now_money[0]~1\))))
-- \now_money[1]~3\ = CARRY((count2(1) & ((!\now_money[0]~1\) # (!\Add13~2_combout\))) # (!count2(1) & (!\Add13~2_combout\ & !\now_money[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(1),
	datab => \Add13~2_combout\,
	datad => VCC,
	cin => \now_money[0]~1\,
	combout => \now_money[1]~2_combout\,
	cout => \now_money[1]~3\);

-- Location: LCCOMB_X21_Y20_N8
\now_money[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[2]~4_combout\ = ((count2(2) $ (\Add13~4_combout\ $ (\now_money[1]~3\)))) # (GND)
-- \now_money[2]~5\ = CARRY((count2(2) & (\Add13~4_combout\ & !\now_money[1]~3\)) # (!count2(2) & ((\Add13~4_combout\) # (!\now_money[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(2),
	datab => \Add13~4_combout\,
	datad => VCC,
	cin => \now_money[1]~3\,
	combout => \now_money[2]~4_combout\,
	cout => \now_money[2]~5\);

-- Location: LCCOMB_X21_Y20_N10
\now_money[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[3]~6_combout\ = (\Mult1|mult_core|romout[0][3]~2_combout\ & ((\Add13~6_combout\ & (!\now_money[2]~5\)) # (!\Add13~6_combout\ & ((\now_money[2]~5\) # (GND))))) # (!\Mult1|mult_core|romout[0][3]~2_combout\ & ((\Add13~6_combout\ & 
-- (\now_money[2]~5\ & VCC)) # (!\Add13~6_combout\ & (!\now_money[2]~5\))))
-- \now_money[3]~7\ = CARRY((\Mult1|mult_core|romout[0][3]~2_combout\ & ((!\now_money[2]~5\) # (!\Add13~6_combout\))) # (!\Mult1|mult_core|romout[0][3]~2_combout\ & (!\Add13~6_combout\ & !\now_money[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][3]~2_combout\,
	datab => \Add13~6_combout\,
	datad => VCC,
	cin => \now_money[2]~5\,
	combout => \now_money[3]~6_combout\,
	cout => \now_money[3]~7\);

-- Location: LCCOMB_X21_Y20_N12
\now_money[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[4]~8_combout\ = ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (\Add13~8_combout\ $ (\now_money[3]~7\)))) # (GND)
-- \now_money[4]~9\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (\Add13~8_combout\ & !\now_money[3]~7\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\Add13~8_combout\) # (!\now_money[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \Add13~8_combout\,
	datad => VCC,
	cin => \now_money[3]~7\,
	combout => \now_money[4]~8_combout\,
	cout => \now_money[4]~9\);

-- Location: LCCOMB_X21_Y20_N14
\now_money[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[5]~10_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add13~10_combout\ & (!\now_money[4]~9\)) # (!\Add13~10_combout\ & ((\now_money[4]~9\) # (GND))))) # 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add13~10_combout\ & (\now_money[4]~9\ & VCC)) # (!\Add13~10_combout\ & (!\now_money[4]~9\))))
-- \now_money[5]~11\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((!\now_money[4]~9\) # (!\Add13~10_combout\))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add13~10_combout\ & !\now_money[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Add13~10_combout\,
	datad => VCC,
	cin => \now_money[4]~9\,
	combout => \now_money[5]~10_combout\,
	cout => \now_money[5]~11\);

-- Location: LCCOMB_X21_Y20_N16
\now_money[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[6]~12_combout\ = ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (\Add13~12_combout\ $ (\now_money[5]~11\)))) # (GND)
-- \now_money[6]~13\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\Add13~12_combout\ & !\now_money[5]~11\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\Add13~12_combout\) # (!\now_money[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Add13~12_combout\,
	datad => VCC,
	cin => \now_money[5]~11\,
	combout => \now_money[6]~12_combout\,
	cout => \now_money[6]~13\);

-- Location: LCCOMB_X21_Y20_N18
\now_money[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[7]~14_combout\ = (\Add13~14_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\now_money[6]~13\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\now_money[6]~13\ & VCC)))) # 
-- (!\Add13~14_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\now_money[6]~13\) # (GND))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\now_money[6]~13\))))
-- \now_money[7]~15\ = CARRY((\Add13~14_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\now_money[6]~13\)) # (!\Add13~14_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\) # (!\now_money[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~14_combout\,
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \now_money[6]~13\,
	combout => \now_money[7]~14_combout\,
	cout => \now_money[7]~15\);

-- Location: LCCOMB_X21_Y20_N20
\now_money[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[8]~16_combout\ = ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (\Add13~16_combout\ $ (\now_money[7]~15\)))) # (GND)
-- \now_money[8]~17\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\Add13~16_combout\ & !\now_money[7]~15\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\Add13~16_combout\) # (!\now_money[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Add13~16_combout\,
	datad => VCC,
	cin => \now_money[7]~15\,
	combout => \now_money[8]~16_combout\,
	cout => \now_money[8]~17\);

-- Location: LCCOMB_X21_Y20_N22
\now_money[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[9]~18_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Add13~18_combout\ & (!\now_money[8]~17\)) # (!\Add13~18_combout\ & ((\now_money[8]~17\) # (GND))))) # 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Add13~18_combout\ & (\now_money[8]~17\ & VCC)) # (!\Add13~18_combout\ & (!\now_money[8]~17\))))
-- \now_money[9]~19\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\now_money[8]~17\) # (!\Add13~18_combout\))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Add13~18_combout\ & 
-- !\now_money[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Add13~18_combout\,
	datad => VCC,
	cin => \now_money[8]~17\,
	combout => \now_money[9]~18_combout\,
	cout => \now_money[9]~19\);

-- Location: LCCOMB_X21_Y20_N24
\now_money[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[10]~20_combout\ = ((\Add13~20_combout\ $ (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (\now_money[9]~19\)))) # (GND)
-- \now_money[10]~21\ = CARRY((\Add13~20_combout\ & ((!\now_money[9]~19\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\))) # (!\Add13~20_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- !\now_money[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~20_combout\,
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \now_money[9]~19\,
	combout => \now_money[10]~20_combout\,
	cout => \now_money[10]~21\);

-- Location: LCCOMB_X21_Y20_N26
\now_money[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \now_money[11]~22_combout\ = \now_money[10]~21\ $ (!\Add13~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add13~22_combout\,
	cin => \now_money[10]~21\,
	combout => \now_money[11]~22_combout\);

-- Location: LCCOMB_X19_Y19_N16
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\now_money[5]~10_combout\ & (!\now_money[6]~12_combout\ & (!\now_money[8]~16_combout\ & !\now_money[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[5]~10_combout\,
	datab => \now_money[6]~12_combout\,
	datac => \now_money[8]~16_combout\,
	datad => \now_money[7]~14_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y19_N28
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\now_money[10]~20_combout\ & (!\now_money[11]~22_combout\ & (!\now_money[9]~18_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[10]~20_combout\,
	datab => \now_money[11]~22_combout\,
	datac => \now_money[9]~18_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y18_N12
\cur_state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state~17_combout\ = ((\cur_state.IDLE~q\) # ((\reset~input_o\) # (\in_buy1~input_o\))) # (!\in_buy2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_buy2~input_o\,
	datab => \cur_state.IDLE~q\,
	datac => \reset~input_o\,
	datad => \in_buy1~input_o\,
	combout => \cur_state~17_combout\);

-- Location: LCCOMB_X23_Y18_N20
\cur_state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state~18_combout\ = (!\cur_state~17_combout\ & (((!\LessThan1~0_combout\ & \now_money[4]~8_combout\)) # (!\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \now_money[4]~8_combout\,
	datad => \cur_state~17_combout\,
	combout => \cur_state~18_combout\);

-- Location: LCCOMB_X23_Y18_N0
WideOr7 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = ((\cur_state~15_combout\) # ((\cur_state~14_combout\) # (\cur_state~18_combout\))) # (!\cur_state~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cur_state~22_combout\,
	datab => \cur_state~15_combout\,
	datac => \cur_state~14_combout\,
	datad => \cur_state~18_combout\,
	combout => \WideOr7~combout\);

-- Location: LCCOMB_X21_Y22_N20
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Add5~4_combout\ & ((\cur_state~16_combout\) # ((count1(2) & \WideOr7~combout\)))) # (!\Add5~4_combout\ & (count1(2) & (\WideOr7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => count1(2),
	datac => \WideOr7~combout\,
	datad => \cur_state~16_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X22_Y22_N25
\count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector11~0_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(2));

-- Location: LCCOMB_X17_Y20_N12
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!\now_money[1]~2_combout\) # (!\now_money[3]~6_combout\)) # (!\now_money[0]~0_combout\)) # (!\now_money[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[2]~4_combout\,
	datab => \now_money[0]~0_combout\,
	datac => \now_money[3]~6_combout\,
	datad => \now_money[1]~2_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y18_N4
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\now_money[4]~8_combout\ & (\LessThan0~2_combout\ & \LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[4]~8_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y20_N10
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!\now_money[1]~2_combout\ & (!\now_money[0]~0_combout\ & !\now_money[2]~4_combout\))) # (!\now_money[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[1]~2_combout\,
	datab => \now_money[0]~0_combout\,
	datac => \now_money[3]~6_combout\,
	datad => \now_money[2]~4_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y18_N2
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan0~1_combout\ & ((\LessThan1~0_combout\) # (!\now_money[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[4]~8_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y18_N24
\cur_state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state~13_combout\ = (\in_buy1~input_o\ & (((\LessThan0~3_combout\)))) # (!\in_buy1~input_o\ & (\in_buy2~input_o\ & ((\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_buy2~input_o\,
	datab => \in_buy1~input_o\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan1~1_combout\,
	combout => \cur_state~13_combout\);

-- Location: LCCOMB_X23_Y18_N14
\cur_state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state~14_combout\ = (!\reset~input_o\ & ((\cur_state~12_combout\) # ((!\cur_state.IDLE~q\ & \cur_state~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cur_state~12_combout\,
	datab => \reset~input_o\,
	datac => \cur_state.IDLE~q\,
	datad => \cur_state~13_combout\,
	combout => \cur_state~14_combout\);

-- Location: LCCOMB_X26_Y18_N18
\cur_state.REFUND~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state.REFUND~feeder_combout\ = \cur_state~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cur_state~20_combout\,
	combout => \cur_state.REFUND~feeder_combout\);

-- Location: FF_X26_Y18_N19
\cur_state.REFUND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cur_state.REFUND~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cur_state.REFUND~q\);

-- Location: LCCOMB_X26_Y18_N20
\cur_state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state~19_combout\ = (\cur_state.REFUND~q\ & ((!elapsed_time(1)) # (!elapsed_time(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time(0),
	datac => elapsed_time(1),
	datad => \cur_state.REFUND~q\,
	combout => \cur_state~19_combout\);

-- Location: LCCOMB_X26_Y18_N10
\cur_state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cur_state~20_combout\ = (!\reset~input_o\ & ((\cur_state~19_combout\) # ((\in_refund~input_o\ & \next_state~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_refund~input_o\,
	datab => \cur_state~19_combout\,
	datac => \reset~input_o\,
	datad => \next_state~2_combout\,
	combout => \cur_state~20_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\cur_state~16_combout\ & (!\cur_state~20_combout\ & !\cur_state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cur_state~16_combout\,
	datac => \cur_state~20_combout\,
	datad => \cur_state~18_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X23_Y18_N16
\Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\cur_state~14_combout\) # ((\out_less~reg0_q\ & ((\cur_state~15_combout\) # (!\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cur_state~15_combout\,
	datab => \cur_state~14_combout\,
	datac => \out_less~reg0_q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X23_Y18_N17
\out_less~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_less~reg0_q\);

-- Location: LCCOMB_X23_Y18_N30
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\cur_state~15_combout\) # ((\out_take~reg0_q\ & ((\cur_state~14_combout\) # (!\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cur_state~15_combout\,
	datab => \cur_state~14_combout\,
	datac => \out_take~reg0_q\,
	datad => \Selector5~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X23_Y18_N31
\out_take~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_take~reg0_q\);

-- Location: LCCOMB_X23_Y18_N10
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\cur_state~16_combout\) # ((\cur_state~15_combout\) # ((\cur_state~14_combout\) # (\cur_state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cur_state~16_combout\,
	datab => \cur_state~15_combout\,
	datac => \cur_state~14_combout\,
	datad => \cur_state~18_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X23_Y18_N8
\Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\cur_state~20_combout\) # ((\out_money~reg0_q\ & \Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cur_state~20_combout\,
	datac => \out_money~reg0_q\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X23_Y18_N9
\out_money~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_money~reg0_q\);

-- Location: LCCOMB_X11_Y23_N14
\s1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~0_combout\ = \s1|times\(0) $ (VCC)
-- \s1|Add0~1\ = CARRY(\s1|times\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|times\(0),
	datad => VCC,
	combout => \s1|Add0~0_combout\,
	cout => \s1|Add0~1\);

-- Location: LCCOMB_X11_Y23_N4
\s1|times~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|times~0_combout\ = (!\s1|Equal3~1_combout\ & \s1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal3~1_combout\,
	datac => \s1|Add0~0_combout\,
	combout => \s1|times~0_combout\);

-- Location: FF_X11_Y23_N5
\s1|times[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|times~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(0));

-- Location: LCCOMB_X11_Y23_N16
\s1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~2_combout\ = (\s1|times\(1) & (!\s1|Add0~1\)) # (!\s1|times\(1) & ((\s1|Add0~1\) # (GND)))
-- \s1|Add0~3\ = CARRY((!\s1|Add0~1\) # (!\s1|times\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|times\(1),
	datad => VCC,
	cin => \s1|Add0~1\,
	combout => \s1|Add0~2_combout\,
	cout => \s1|Add0~3\);

-- Location: FF_X11_Y23_N17
\s1|times[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(1));

-- Location: LCCOMB_X11_Y23_N18
\s1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~4_combout\ = (\s1|times\(2) & (\s1|Add0~3\ $ (GND))) # (!\s1|times\(2) & (!\s1|Add0~3\ & VCC))
-- \s1|Add0~5\ = CARRY((\s1|times\(2) & !\s1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|times\(2),
	datad => VCC,
	cin => \s1|Add0~3\,
	combout => \s1|Add0~4_combout\,
	cout => \s1|Add0~5\);

-- Location: FF_X11_Y23_N19
\s1|times[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(2));

-- Location: LCCOMB_X11_Y23_N20
\s1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~6_combout\ = (\s1|times\(3) & (!\s1|Add0~5\)) # (!\s1|times\(3) & ((\s1|Add0~5\) # (GND)))
-- \s1|Add0~7\ = CARRY((!\s1|Add0~5\) # (!\s1|times\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|times\(3),
	datad => VCC,
	cin => \s1|Add0~5\,
	combout => \s1|Add0~6_combout\,
	cout => \s1|Add0~7\);

-- Location: FF_X11_Y23_N21
\s1|times[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(3));

-- Location: LCCOMB_X11_Y23_N22
\s1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~8_combout\ = (\s1|times\(4) & (\s1|Add0~7\ $ (GND))) # (!\s1|times\(4) & (!\s1|Add0~7\ & VCC))
-- \s1|Add0~9\ = CARRY((\s1|times\(4) & !\s1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(4),
	datad => VCC,
	cin => \s1|Add0~7\,
	combout => \s1|Add0~8_combout\,
	cout => \s1|Add0~9\);

-- Location: LCCOMB_X11_Y23_N26
\s1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~12_combout\ = (\s1|times\(6) & (\s1|Add0~11\ $ (GND))) # (!\s1|times\(6) & (!\s1|Add0~11\ & VCC))
-- \s1|Add0~13\ = CARRY((\s1|times\(6) & !\s1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|times\(6),
	datad => VCC,
	cin => \s1|Add0~11\,
	combout => \s1|Add0~12_combout\,
	cout => \s1|Add0~13\);

-- Location: LCCOMB_X11_Y23_N12
\s1|times~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|times~7_combout\ = (!\s1|Equal3~1_combout\ & \s1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal3~1_combout\,
	datac => \s1|Add0~12_combout\,
	combout => \s1|times~7_combout\);

-- Location: FF_X11_Y23_N13
\s1|times[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|times~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(6));

-- Location: LCCOMB_X11_Y23_N30
\s1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~16_combout\ = (\s1|times\(8) & (\s1|Add0~15\ $ (GND))) # (!\s1|times\(8) & (!\s1|Add0~15\ & VCC))
-- \s1|Add0~17\ = CARRY((\s1|times\(8) & !\s1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|times\(8),
	datad => VCC,
	cin => \s1|Add0~15\,
	combout => \s1|Add0~16_combout\,
	cout => \s1|Add0~17\);

-- Location: LCCOMB_X11_Y23_N2
\s1|times~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|times~8_combout\ = (!\s1|Equal3~1_combout\ & \s1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal3~1_combout\,
	datac => \s1|Add0~16_combout\,
	combout => \s1|times~8_combout\);

-- Location: FF_X11_Y23_N3
\s1|times[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|times~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(8));

-- Location: LCCOMB_X11_Y22_N14
\s1|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~32_combout\ = (\s1|times\(16) & (\s1|Add0~31\ $ (GND))) # (!\s1|times\(16) & (!\s1|Add0~31\ & VCC))
-- \s1|Add0~33\ = CARRY((\s1|times\(16) & !\s1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|times\(16),
	datad => VCC,
	cin => \s1|Add0~31\,
	combout => \s1|Add0~32_combout\,
	cout => \s1|Add0~33\);

-- Location: LCCOMB_X11_Y22_N18
\s1|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~36_combout\ = \s1|Add0~35\ $ (!\s1|times\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \s1|times\(18),
	cin => \s1|Add0~35\,
	combout => \s1|Add0~36_combout\);

-- Location: LCCOMB_X11_Y22_N20
\s1|times~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|times~2_combout\ = (\s1|Add0~36_combout\ & !\s1|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Add0~36_combout\,
	datac => \s1|Equal3~1_combout\,
	combout => \s1|times~2_combout\);

-- Location: FF_X11_Y22_N21
\s1|times[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|times~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(18));

-- Location: LCCOMB_X11_Y22_N26
\s1|times~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|times~1_combout\ = (\s1|Add0~24_combout\ & !\s1|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Add0~24_combout\,
	datac => \s1|Equal3~1_combout\,
	combout => \s1|times~1_combout\);

-- Location: FF_X11_Y22_N27
\s1|times[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|times~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(12));

-- Location: LCCOMB_X11_Y22_N0
\s1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~18_combout\ = (\s1|times\(9) & (!\s1|Add0~17\)) # (!\s1|times\(9) & ((\s1|Add0~17\) # (GND)))
-- \s1|Add0~19\ = CARRY((!\s1|Add0~17\) # (!\s1|times\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(9),
	datad => VCC,
	cin => \s1|Add0~17\,
	combout => \s1|Add0~18_combout\,
	cout => \s1|Add0~19\);

-- Location: LCCOMB_X11_Y22_N2
\s1|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~20_combout\ = (\s1|times\(10) & (\s1|Add0~19\ $ (GND))) # (!\s1|times\(10) & (!\s1|Add0~19\ & VCC))
-- \s1|Add0~21\ = CARRY((\s1|times\(10) & !\s1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|times\(10),
	datad => VCC,
	cin => \s1|Add0~19\,
	combout => \s1|Add0~20_combout\,
	cout => \s1|Add0~21\);

-- Location: FF_X11_Y22_N3
\s1|times[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(10));

-- Location: LCCOMB_X11_Y22_N4
\s1|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~22_combout\ = (\s1|times\(11) & (!\s1|Add0~21\)) # (!\s1|times\(11) & ((\s1|Add0~21\) # (GND)))
-- \s1|Add0~23\ = CARRY((!\s1|Add0~21\) # (!\s1|times\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|times\(11),
	datad => VCC,
	cin => \s1|Add0~21\,
	combout => \s1|Add0~22_combout\,
	cout => \s1|Add0~23\);

-- Location: FF_X11_Y22_N5
\s1|times[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(11));

-- Location: LCCOMB_X11_Y22_N8
\s1|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~26_combout\ = (\s1|times\(13) & (!\s1|Add0~25\)) # (!\s1|times\(13) & ((\s1|Add0~25\) # (GND)))
-- \s1|Add0~27\ = CARRY((!\s1|Add0~25\) # (!\s1|times\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|times\(13),
	datad => VCC,
	cin => \s1|Add0~25\,
	combout => \s1|Add0~26_combout\,
	cout => \s1|Add0~27\);

-- Location: FF_X11_Y22_N9
\s1|times[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(13));

-- Location: LCCOMB_X11_Y23_N10
\s1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal0~0_combout\ = (!\s1|times\(3) & (!\s1|times\(2) & (!\s1|times\(0) & !\s1|times\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(3),
	datab => \s1|times\(2),
	datac => \s1|times\(0),
	datad => \s1|times\(1),
	combout => \s1|Equal0~0_combout\);

-- Location: FF_X11_Y23_N23
\s1|times[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(4));

-- Location: LCCOMB_X11_Y22_N24
\s1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal0~1_combout\ = (!\s1|times\(14) & (!\s1|times\(13) & (\s1|Equal0~0_combout\ & !\s1|times\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(14),
	datab => \s1|times\(13),
	datac => \s1|Equal0~0_combout\,
	datad => \s1|times\(4),
	combout => \s1|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y22_N30
\s1|times~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|times~5_combout\ = (!\s1|Equal3~1_combout\ & \s1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Equal3~1_combout\,
	datad => \s1|Add0~18_combout\,
	combout => \s1|times~5_combout\);

-- Location: FF_X11_Y22_N31
\s1|times[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|times~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(9));

-- Location: LCCOMB_X12_Y22_N6
\s1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal1~1_combout\ = (\s1|Equal1~0_combout\ & (\s1|Equal0~1_combout\ & (\s1|times\(9) & \s1|times\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal1~0_combout\,
	datab => \s1|Equal0~1_combout\,
	datac => \s1|times\(9),
	datad => \s1|times\(15),
	combout => \s1|Equal1~1_combout\);

-- Location: LCCOMB_X11_Y22_N22
\s1|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal3~1_combout\ = (\s1|Equal3~0_combout\ & (\s1|times\(18) & (\s1|times\(12) & \s1|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal3~0_combout\,
	datab => \s1|times\(18),
	datac => \s1|times\(12),
	datad => \s1|Equal1~1_combout\,
	combout => \s1|Equal3~1_combout\);

-- Location: LCCOMB_X11_Y22_N12
\s1|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Add0~30_combout\ = (\s1|times\(15) & (!\s1|Add0~29\)) # (!\s1|times\(15) & ((\s1|Add0~29\) # (GND)))
-- \s1|Add0~31\ = CARRY((!\s1|Add0~29\) # (!\s1|times\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|times\(15),
	datad => VCC,
	cin => \s1|Add0~29\,
	combout => \s1|Add0~30_combout\,
	cout => \s1|Add0~31\);

-- Location: LCCOMB_X11_Y22_N28
\s1|times~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|times~6_combout\ = (!\s1|Equal3~1_combout\ & \s1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Equal3~1_combout\,
	datad => \s1|Add0~30_combout\,
	combout => \s1|times~6_combout\);

-- Location: FF_X11_Y22_N29
\s1|times[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|times~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(15));

-- Location: FF_X11_Y22_N15
\s1|times[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|times\(16));

-- Location: LCCOMB_X12_Y22_N0
\s1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal0~4_combout\ = (!\s1|times\(10) & (!\s1|times\(8) & (!\s1|times\(16) & !\s1|times\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(10),
	datab => \s1|times\(8),
	datac => \s1|times\(16),
	datad => \s1|times\(6),
	combout => \s1|Equal0~4_combout\);

-- Location: LCCOMB_X12_Y22_N10
\s1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal0~3_combout\ = (\s1|Equal0~2_combout\ & (!\s1|times\(15) & (!\s1|times\(9) & \s1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal0~2_combout\,
	datab => \s1|times\(15),
	datac => \s1|times\(9),
	datad => \s1|Equal0~1_combout\,
	combout => \s1|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y22_N22
\s1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal0~5_combout\ = (!\s1|times\(17) & (\s1|Equal0~4_combout\ & (!\s1|times\(11) & \s1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(17),
	datab => \s1|Equal0~4_combout\,
	datac => \s1|times\(11),
	datad => \s1|Equal0~3_combout\,
	combout => \s1|Equal0~5_combout\);

-- Location: LCCOMB_X12_Y22_N28
\s1|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal2~0_combout\ = (\s1|times\(10) & (\s1|times\(8) & (\s1|times\(16) & \s1|times\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(10),
	datab => \s1|times\(8),
	datac => \s1|times\(16),
	datad => \s1|times\(6),
	combout => \s1|Equal2~0_combout\);

-- Location: LCCOMB_X12_Y22_N26
\s1|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal2~1_combout\ = (\s1|times\(17) & (\s1|Equal2~0_combout\ & (\s1|times\(11) & \s1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(17),
	datab => \s1|Equal2~0_combout\,
	datac => \s1|times\(11),
	datad => \s1|Equal0~3_combout\,
	combout => \s1|Equal2~1_combout\);

-- Location: LCCOMB_X14_Y19_N20
\s1|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Selector2~0_combout\ = (!\s1|Equal1~3_combout\ & (!\s1|Equal0~5_combout\ & ((\s1|this_seg\(0)) # (\s1|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal1~3_combout\,
	datab => \s1|Equal0~5_combout\,
	datac => \s1|this_seg\(0),
	datad => \s1|Equal2~1_combout\,
	combout => \s1|Selector2~0_combout\);

-- Location: FF_X14_Y19_N21
\s1|this_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|this_seg\(0));

-- Location: LCCOMB_X14_Y19_N18
\s1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Selector1~0_combout\ = (!\s1|Equal0~5_combout\ & (!\s1|Equal2~1_combout\ & ((\s1|Equal1~3_combout\) # (\s1|this_seg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal1~3_combout\,
	datab => \s1|Equal0~5_combout\,
	datac => \s1|this_seg\(1),
	datad => \s1|Equal2~1_combout\,
	combout => \s1|Selector1~0_combout\);

-- Location: FF_X14_Y19_N19
\s1|this_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|this_seg\(1));

-- Location: LCCOMB_X14_Y19_N16
\s1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Selector0~0_combout\ = (\s1|Equal1~3_combout\) # ((\s1|Equal2~1_combout\) # ((!\s1|Equal0~5_combout\ & \s1|this_seg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal1~3_combout\,
	datab => \s1|Equal0~5_combout\,
	datac => \s1|this_seg\(2),
	datad => \s1|Equal2~1_combout\,
	combout => \s1|Selector0~0_combout\);

-- Location: FF_X14_Y19_N17
\s1|this_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|this_seg\(2));

-- Location: LCCOMB_X12_Y22_N24
\s1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal1~2_combout\ = (\s1|times\(10) & (!\s1|times\(8) & (\s1|times\(16) & !\s1|times\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|times\(10),
	datab => \s1|times\(8),
	datac => \s1|times\(16),
	datad => \s1|times\(6),
	combout => \s1|Equal1~2_combout\);

-- Location: LCCOMB_X12_Y22_N18
\s1|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Equal1~3_combout\ = (\s1|Equal1~1_combout\ & (!\s1|times\(18) & (!\s1|times\(12) & \s1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal1~1_combout\,
	datab => \s1|times\(18),
	datac => \s1|times\(12),
	datad => \s1|Equal1~2_combout\,
	combout => \s1|Equal1~3_combout\);

-- Location: LCCOMB_X21_Y21_N6
\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \now_money[7]~14_combout\ $ (VCC)
-- \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\now_money[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \now_money[7]~14_combout\,
	datad => VCC,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X21_Y21_N8
\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\now_money[8]~16_combout\ & (\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\now_money[8]~16_combout\ & 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\now_money[8]~16_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \now_money[8]~16_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X21_Y21_N12
\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\now_money[10]~20_combout\ & (!\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\now_money[10]~20_combout\ & 
-- ((\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\now_money[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \now_money[10]~20_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X21_Y21_N14
\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\now_money[11]~22_combout\ & (\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\now_money[11]~22_combout\ & 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\now_money[11]~22_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \now_money[11]~22_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X21_Y21_N16
\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X21_Y21_N28
\s1|Mod1|auto_generated|divider|divider|StageOut[54]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[54]~91_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[54]~91_combout\);

-- Location: LCCOMB_X21_Y21_N24
\s1|Mod1|auto_generated|divider|divider|StageOut[53]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X21_Y21_N22
\s1|Mod1|auto_generated|divider|divider|StageOut[52]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\now_money[9]~18_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[9]~18_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X21_Y21_N18
\s1|Mod1|auto_generated|divider|divider|StageOut[51]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[51]~97_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[51]~97_combout\);

-- Location: LCCOMB_X20_Y21_N0
\s1|Mod1|auto_generated|divider|divider|StageOut[50]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[50]~98_combout\ = (\now_money[7]~14_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[7]~14_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[50]~98_combout\);

-- Location: LCCOMB_X21_Y21_N0
\s1|Mod1|auto_generated|divider|divider|StageOut[49]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ = (\now_money[6]~12_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[6]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\);

-- Location: LCCOMB_X20_Y21_N14
\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\s1|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\s1|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\,
	datad => VCC,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X20_Y21_N18
\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\s1|Mod1|auto_generated|divider|divider|StageOut[51]~96_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[51]~97_combout\))))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[51]~96_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|StageOut[51]~97_combout\) # (GND))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\s1|Mod1|auto_generated|divider|divider|StageOut[51]~96_combout\) # ((\s1|Mod1|auto_generated|divider|divider|StageOut[51]~97_combout\) # 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[51]~96_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[51]~97_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X20_Y21_N20
\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\s1|Mod1|auto_generated|divider|divider|StageOut[52]~95_combout\ & (((!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[52]~95_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ & (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\s1|Mod1|auto_generated|divider|divider|StageOut[52]~95_combout\ & !\s1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\)) # 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[52]~95_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X20_Y21_N24
\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|StageOut[54]~90_combout\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[54]~91_combout\ & 
-- !\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[54]~90_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[54]~91_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X20_Y21_N26
\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X20_Y21_N28
\s1|Mod1|auto_generated|divider|divider|StageOut[58]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[58]~107_combout\ = (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[58]~107_combout\);

-- Location: LCCOMB_X19_Y21_N16
\s1|Mod1|auto_generated|divider|divider|StageOut[57]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[57]~108_combout\ = (\now_money[5]~10_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[5]~10_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[57]~108_combout\);

-- Location: LCCOMB_X19_Y21_N0
\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\s1|Mod1|auto_generated|divider|divider|StageOut[57]~109_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[57]~108_combout\)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\s1|Mod1|auto_generated|divider|divider|StageOut[57]~109_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[57]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[57]~109_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[57]~108_combout\,
	datad => VCC,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X19_Y21_N2
\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\s1|Mod1|auto_generated|divider|divider|StageOut[58]~106_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[58]~107_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[58]~106_combout\ & 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[58]~107_combout\)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|StageOut[58]~106_combout\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[58]~107_combout\ & 
-- !\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[58]~106_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[58]~107_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X19_Y21_N20
\s1|Mod1|auto_generated|divider|divider|StageOut[62]~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[62]~149_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\now_money[10]~20_combout\)) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \now_money[10]~20_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[62]~149_combout\);

-- Location: LCCOMB_X20_Y21_N8
\s1|Mod1|auto_generated|divider|divider|StageOut[61]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[61]~103_combout\ = (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[61]~103_combout\);

-- Location: LCCOMB_X20_Y21_N10
\s1|Mod1|auto_generated|divider|divider|StageOut[60]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[60]~104_combout\ = (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[60]~104_combout\);

-- Location: LCCOMB_X19_Y21_N14
\s1|Mod1|auto_generated|divider|divider|StageOut[59]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[59]~152_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\now_money[7]~14_combout\))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \now_money[7]~14_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[59]~152_combout\);

-- Location: LCCOMB_X19_Y21_N4
\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\s1|Mod1|auto_generated|divider|divider|StageOut[59]~105_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[59]~152_combout\))))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[59]~105_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|StageOut[59]~152_combout\) # (GND))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\s1|Mod1|auto_generated|divider|divider|StageOut[59]~105_combout\) # ((\s1|Mod1|auto_generated|divider|divider|StageOut[59]~152_combout\) # 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[59]~105_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[59]~152_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X19_Y21_N8
\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\s1|Mod1|auto_generated|divider|divider|StageOut[61]~150_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[61]~103_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\s1|Mod1|auto_generated|divider|divider|StageOut[61]~150_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[61]~103_combout\)))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[61]~150_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[61]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[61]~150_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[61]~103_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X19_Y21_N10
\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|StageOut[62]~102_combout\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[62]~149_combout\ & 
-- !\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[62]~102_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[62]~149_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X19_Y21_N12
\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\);

-- Location: LCCOMB_X19_Y21_N24
\s1|Mod1|auto_generated|divider|divider|StageOut[70]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[70]~110_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[70]~110_combout\);

-- Location: LCCOMB_X21_Y21_N26
\s1|Mod1|auto_generated|divider|divider|StageOut[60]~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[60]~151_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\now_money[8]~16_combout\)) 
-- # (!\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \now_money[8]~16_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[60]~151_combout\);

-- Location: LCCOMB_X16_Y21_N24
\s1|Mod1|auto_generated|divider|divider|StageOut[69]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[69]~141_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[60]~151_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|StageOut[60]~151_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[69]~141_combout\);

-- Location: LCCOMB_X16_Y21_N28
\s1|Mod1|auto_generated|divider|divider|StageOut[68]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[68]~112_combout\ = (!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[68]~112_combout\);

-- Location: LCCOMB_X16_Y21_N2
\s1|Mod1|auto_generated|divider|divider|StageOut[67]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[67]~153_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\now_money[6]~12_combout\)) 
-- # (!\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[6]~12_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[67]~153_combout\);

-- Location: LCCOMB_X17_Y21_N8
\s1|Mod1|auto_generated|divider|divider|StageOut[66]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\ = (\now_money[5]~10_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[5]~10_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\);

-- Location: LCCOMB_X17_Y21_N14
\s1|Mod1|auto_generated|divider|divider|StageOut[65]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\ = (\now_money[4]~8_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[4]~8_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\);

-- Location: LCCOMB_X16_Y21_N4
\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = (((\s1|Mod1|auto_generated|divider|divider|StageOut[65]~115_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY((\s1|Mod1|auto_generated|divider|divider|StageOut[65]~115_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[65]~115_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\,
	datad => VCC,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X16_Y21_N6
\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (((\s1|Mod1|auto_generated|divider|divider|StageOut[66]~114_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[66]~114_combout\ & 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|StageOut[66]~114_combout\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\ & 
-- !\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[66]~114_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X16_Y21_N8
\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((((\s1|Mod1|auto_generated|divider|divider|StageOut[67]~113_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[67]~153_combout\))))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[67]~113_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|StageOut[67]~153_combout\) # (GND))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((\s1|Mod1|auto_generated|divider|divider|StageOut[67]~113_combout\) # ((\s1|Mod1|auto_generated|divider|divider|StageOut[67]~153_combout\) # 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[67]~113_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[67]~153_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X16_Y21_N14
\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|StageOut[70]~140_combout\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[70]~110_combout\ & 
-- !\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[70]~140_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[70]~110_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\);

-- Location: LCCOMB_X16_Y21_N16
\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\);

-- Location: LCCOMB_X15_Y21_N28
\s1|Mod1|auto_generated|divider|divider|StageOut[76]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[76]~145_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[67]~153_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[67]~153_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[76]~145_combout\);

-- Location: LCCOMB_X16_Y21_N0
\s1|Mod1|auto_generated|divider|divider|StageOut[78]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[78]~117_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[78]~117_combout\);

-- Location: LCCOMB_X16_Y21_N18
\s1|Mod1|auto_generated|divider|divider|StageOut[77]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[77]~118_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[77]~118_combout\);

-- Location: LCCOMB_X15_Y21_N20
\s1|Mod1|auto_generated|divider|divider|StageOut[76]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[76]~119_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[76]~119_combout\);

-- Location: LCCOMB_X17_Y21_N0
\s1|Mod1|auto_generated|divider|divider|StageOut[75]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\now_money[5]~10_combout\)) 
-- # (!\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[5]~10_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\);

-- Location: LCCOMB_X15_Y21_N2
\s1|Mod1|auto_generated|divider|divider|StageOut[74]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[74]~121_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[74]~121_combout\);

-- Location: LCCOMB_X15_Y21_N24
\s1|Mod1|auto_generated|divider|divider|StageOut[73]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[73]~122_combout\ = (\now_money[3]~6_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[3]~6_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[73]~122_combout\);

-- Location: LCCOMB_X15_Y21_N14
\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & (((\s1|Mod1|auto_generated|divider|divider|StageOut[77]~144_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[77]~118_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((((\s1|Mod1|auto_generated|divider|divider|StageOut[77]~144_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[77]~118_combout\)))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[77]~144_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[77]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[77]~144_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[77]~118_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\);

-- Location: LCCOMB_X15_Y21_N16
\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|StageOut[78]~143_combout\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[78]~117_combout\ & 
-- !\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[78]~143_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[78]~117_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\);

-- Location: LCCOMB_X15_Y21_N18
\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ = \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\);

-- Location: LCCOMB_X14_Y21_N4
\s1|Mod1|auto_generated|divider|divider|StageOut[85]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[85]~146_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[76]~145_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[76]~145_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[85]~146_combout\);

-- Location: LCCOMB_X15_Y21_N26
\s1|Mod1|auto_generated|divider|divider|StageOut[84]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[84]~127_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[84]~127_combout\);

-- Location: LCCOMB_X17_Y21_N10
\s1|Mod1|auto_generated|divider|divider|StageOut[83]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[83]~158_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & (\now_money[4]~8_combout\)) 
-- # (!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datab => \now_money[4]~8_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[83]~158_combout\);

-- Location: LCCOMB_X17_Y21_N30
\s1|Mod1|auto_generated|divider|divider|StageOut[82]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[82]~156_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & 
-- ((\now_money[3]~6_combout\))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & (\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\,
	datab => \now_money[3]~6_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[82]~156_combout\);

-- Location: LCCOMB_X17_Y21_N22
\s1|Mod1|auto_generated|divider|divider|StageOut[72]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[72]~132_combout\ = (\now_money[2]~4_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \now_money[2]~4_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[72]~132_combout\);

-- Location: LCCOMB_X17_Y21_N16
\s1|Mod1|auto_generated|divider|divider|StageOut[72]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[72]~131_combout\ = (\now_money[2]~4_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \now_money[2]~4_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[72]~131_combout\);

-- Location: LCCOMB_X17_Y21_N2
\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\ = (\s1|Mod1|auto_generated|divider|divider|StageOut[72]~132_combout\) # (\s1|Mod1|auto_generated|divider|divider|StageOut[72]~131_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|StageOut[72]~132_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|StageOut[72]~131_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\);

-- Location: LCCOMB_X17_Y21_N4
\s1|Mod1|auto_generated|divider|divider|StageOut[81]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[81]~133_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[81]~133_combout\);

-- Location: LCCOMB_X14_Y21_N14
\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (((\s1|Mod1|auto_generated|divider|divider|StageOut[82]~129_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[82]~156_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[82]~129_combout\ & 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[82]~156_combout\)))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|StageOut[82]~129_combout\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[82]~156_combout\ & 
-- !\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[82]~129_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[82]~156_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\);

-- Location: LCCOMB_X14_Y21_N16
\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((((\s1|Mod1|auto_generated|divider|divider|StageOut[83]~128_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[83]~158_combout\))))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[83]~128_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|StageOut[83]~158_combout\) # (GND))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ = CARRY((\s1|Mod1|auto_generated|divider|divider|StageOut[83]~128_combout\) # ((\s1|Mod1|auto_generated|divider|divider|StageOut[83]~158_combout\) # 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[83]~128_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[83]~158_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\);

-- Location: LCCOMB_X14_Y21_N18
\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ = (\s1|Mod1|auto_generated|divider|divider|StageOut[84]~147_combout\ & (((!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)))) # 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[84]~147_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[84]~127_combout\ & (!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)) # 
-- (!\s1|Mod1|auto_generated|divider|divider|StageOut[84]~127_combout\ & ((\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\) # (GND)))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ = CARRY(((!\s1|Mod1|auto_generated|divider|divider|StageOut[84]~147_combout\ & !\s1|Mod1|auto_generated|divider|divider|StageOut[84]~127_combout\)) # 
-- (!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[84]~147_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[84]~127_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\);

-- Location: LCCOMB_X14_Y21_N20
\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & (((\s1|Mod1|auto_generated|divider|divider|StageOut[85]~126_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[85]~146_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((((\s1|Mod1|auto_generated|divider|divider|StageOut[85]~126_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[85]~146_combout\)))))
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[85]~126_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[85]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[85]~126_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[85]~146_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\);

-- Location: LCCOMB_X15_Y21_N0
\s1|Mod1|auto_generated|divider|divider|StageOut[86]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[86]~134_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ & !\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[86]~134_combout\);

-- Location: LCCOMB_X14_Y21_N22
\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\ = CARRY((!\s1|Mod1|auto_generated|divider|divider|StageOut[86]~148_combout\ & (!\s1|Mod1|auto_generated|divider|divider|StageOut[86]~134_combout\ & 
-- !\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[86]~148_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[86]~134_combout\,
	datad => VCC,
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\,
	cout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\);

-- Location: LCCOMB_X14_Y21_N24
\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ = \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\,
	combout => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\);

-- Location: LCCOMB_X14_Y21_N0
\s1|Mod1|auto_generated|divider|divider|StageOut[94]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[94]~135_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[85]~126_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|StageOut[85]~146_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & (((\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[85]~126_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|StageOut[85]~146_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[94]~135_combout\);

-- Location: FF_X14_Y21_N1
\s1|temp1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mod1|auto_generated|divider|divider|StageOut[94]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|temp1\(6));

-- Location: LCCOMB_X17_Y21_N18
\s1|Mod1|auto_generated|divider|divider|StageOut[84]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[84]~147_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\) # 
-- ((!\s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[84]~147_combout\);

-- Location: LCCOMB_X14_Y21_N2
\s1|Mod1|auto_generated|divider|divider|StageOut[93]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[93]~136_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[84]~127_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|StageOut[84]~147_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & (((\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[84]~127_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|StageOut[84]~147_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[93]~136_combout\);

-- Location: FF_X14_Y21_N3
\s1|temp1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mod1|auto_generated|divider|divider|StageOut[93]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|temp1\(5));

-- Location: LCCOMB_X14_Y21_N8
\s1|Mod1|auto_generated|divider|divider|StageOut[92]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[92]~137_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[83]~128_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|StageOut[83]~158_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & (((\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[83]~128_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|StageOut[83]~158_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[92]~137_combout\);

-- Location: FF_X14_Y21_N9
\s1|temp1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mod1|auto_generated|divider|divider|StageOut[92]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|temp1\(4));

-- Location: LCCOMB_X14_Y18_N8
\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = \s1|temp1\(4) $ (VCC)
-- \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY(\s1|temp1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|temp1\(4),
	datad => VCC,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X14_Y18_N14
\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY(!\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X14_Y18_N16
\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X14_Y18_N28
\s1|Div1|auto_generated|divider|divider|StageOut[43]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[43]~26_combout\ = (\s1|temp1\(6) & \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(6),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[43]~26_combout\);

-- Location: LCCOMB_X14_Y18_N24
\s1|Div1|auto_generated|divider|divider|StageOut[42]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\ = (\s1|temp1\(5) & \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(5),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\);

-- Location: LCCOMB_X14_Y18_N22
\s1|Div1|auto_generated|divider|divider|StageOut[41]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[41]~30_combout\ = (\s1|temp1\(4) & \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(4),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[41]~30_combout\);

-- Location: LCCOMB_X14_Y21_N6
\s1|Mod1|auto_generated|divider|divider|StageOut[91]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[91]~138_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\s1|Mod1|auto_generated|divider|divider|StageOut[82]~129_combout\) # 
-- ((\s1|Mod1|auto_generated|divider|divider|StageOut[82]~156_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & (((\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|StageOut[82]~129_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[82]~156_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[91]~138_combout\);

-- Location: FF_X14_Y21_N7
\s1|temp1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mod1|auto_generated|divider|divider|StageOut[91]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|temp1\(3));

-- Location: LCCOMB_X14_Y18_N30
\s1|Div1|auto_generated|divider|divider|StageOut[40]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[40]~33_combout\ = (\s1|temp1\(3) & !\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(3),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[40]~33_combout\);

-- Location: LCCOMB_X15_Y18_N6
\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\s1|Div1|auto_generated|divider|divider|StageOut[43]~27_combout\ & (!\s1|Div1|auto_generated|divider|divider|StageOut[43]~26_combout\ & 
-- !\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[43]~27_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[43]~26_combout\,
	datad => VCC,
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X15_Y18_N8
\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X14_Y18_N20
\s1|Div1|auto_generated|divider|divider|StageOut[48]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[48]~47_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\s1|temp1\(5)))) # 
-- (!\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \s1|temp1\(5),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[48]~47_combout\);

-- Location: LCCOMB_X14_Y18_N6
\s1|Div1|auto_generated|divider|divider|StageOut[47]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[47]~48_combout\ = (\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\s1|temp1\(4)))) # 
-- (!\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \s1|temp1\(4),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[47]~48_combout\);

-- Location: LCCOMB_X14_Y18_N4
\s1|Div1|auto_generated|divider|divider|StageOut[46]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[46]~36_combout\ = (\s1|temp1\(3) & \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(3),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[46]~36_combout\);

-- Location: LCCOMB_X17_Y21_N6
\s1|Mod1|auto_generated|divider|divider|StageOut[81]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[81]~130_combout\ = (\now_money[2]~4_combout\ & \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[2]~4_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[81]~130_combout\);

-- Location: LCCOMB_X14_Y21_N28
\s1|Mod1|auto_generated|divider|divider|StageOut[90]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod1|auto_generated|divider|divider|StageOut[90]~139_combout\ = (\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & (((\s1|Mod1|auto_generated|divider|divider|StageOut[81]~130_combout\) # 
-- (\s1|Mod1|auto_generated|divider|divider|StageOut[81]~133_combout\)))) # (!\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & (\s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	datab => \s1|Mod1|auto_generated|divider|divider|StageOut[81]~130_combout\,
	datac => \s1|Mod1|auto_generated|divider|divider|StageOut[81]~133_combout\,
	datad => \s1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	combout => \s1|Mod1|auto_generated|divider|divider|StageOut[90]~139_combout\);

-- Location: FF_X14_Y21_N29
\s1|temp1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mod1|auto_generated|divider|divider|StageOut[90]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|temp1\(2));

-- Location: LCCOMB_X16_Y18_N22
\s1|Div1|auto_generated|divider|divider|StageOut[45]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|StageOut[45]~39_combout\ = (\s1|temp1\(2) & !\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(2),
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Div1|auto_generated|divider|divider|StageOut[45]~39_combout\);

-- Location: LCCOMB_X15_Y18_N22
\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\s1|Div1|auto_generated|divider|divider|StageOut[48]~34_combout\ & (!\s1|Div1|auto_generated|divider|divider|StageOut[48]~47_combout\ & 
-- !\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div1|auto_generated|divider|divider|StageOut[48]~34_combout\,
	datab => \s1|Div1|auto_generated|divider|divider|StageOut[48]~47_combout\,
	datad => VCC,
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X15_Y18_N24
\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X14_Y19_N24
\s1|deci_data[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|deci_data[5]~13_combout\ = !\s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|deci_data[5]~13_combout\);

-- Location: FF_X14_Y19_N25
\s1|deci_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|deci_data[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(5));

-- Location: LCCOMB_X14_Y19_N8
\s1|cur_data[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|cur_data[1]~0_combout\ = (\s1|Equal1~3_combout\ & ((\s1|deci_data\(5)))) # (!\s1|Equal1~3_combout\ & (\s1|deci_data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|deci_data\(9),
	datab => \s1|Equal1~3_combout\,
	datad => \s1|deci_data\(5),
	combout => \s1|cur_data[1]~0_combout\);

-- Location: FF_X21_Y20_N7
\s1|temp1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \now_money[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|temp1\(1));

-- Location: LCCOMB_X11_Y20_N6
\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\s1|temp1\(5) & (\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & VCC)) # (!\s1|temp1\(5) & 
-- (!\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\))
-- \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\s1|temp1\(5) & !\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|temp1\(5),
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X11_Y20_N10
\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY(!\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X11_Y20_N12
\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X11_Y20_N28
\s1|Mod2|auto_generated|divider|divider|StageOut[41]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[41]~30_combout\ = (\s1|temp1\(4) & \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(4),
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[41]~30_combout\);

-- Location: LCCOMB_X10_Y20_N6
\s1|Mod2|auto_generated|divider|divider|StageOut[40]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[40]~33_combout\ = (!\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \s1|temp1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \s1|temp1\(3),
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[40]~33_combout\);

-- Location: LCCOMB_X11_Y20_N18
\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\s1|Mod2|auto_generated|divider|divider|StageOut[40]~32_combout\) # (\s1|Mod2|auto_generated|divider|divider|StageOut[40]~33_combout\)))
-- \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\s1|Mod2|auto_generated|divider|divider|StageOut[40]~32_combout\) # (\s1|Mod2|auto_generated|divider|divider|StageOut[40]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[40]~32_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[40]~33_combout\,
	datad => VCC,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X11_Y20_N20
\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\s1|Mod2|auto_generated|divider|divider|StageOut[41]~31_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[41]~30_combout\)))) # (!\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\s1|Mod2|auto_generated|divider|divider|StageOut[41]~31_combout\ & 
-- (!\s1|Mod2|auto_generated|divider|divider|StageOut[41]~30_combout\)))
-- \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\s1|Mod2|auto_generated|divider|divider|StageOut[41]~31_combout\ & (!\s1|Mod2|auto_generated|divider|divider|StageOut[41]~30_combout\ & 
-- !\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[41]~31_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[41]~30_combout\,
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X11_Y20_N0
\s1|Mod2|auto_generated|divider|divider|StageOut[43]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[43]~26_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \s1|temp1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \s1|temp1\(6),
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[43]~26_combout\);

-- Location: LCCOMB_X10_Y20_N4
\s1|Mod2|auto_generated|divider|divider|StageOut[42]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[42]~29_combout\ = (!\s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[42]~29_combout\);

-- Location: LCCOMB_X11_Y20_N22
\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\s1|Mod2|auto_generated|divider|divider|StageOut[42]~28_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[42]~29_combout\)))) # (!\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\s1|Mod2|auto_generated|divider|divider|StageOut[42]~28_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[42]~29_combout\)))))
-- \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\s1|Mod2|auto_generated|divider|divider|StageOut[42]~28_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[42]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[42]~28_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[42]~29_combout\,
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X11_Y20_N24
\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\s1|Mod2|auto_generated|divider|divider|StageOut[43]~27_combout\ & (!\s1|Mod2|auto_generated|divider|divider|StageOut[43]~26_combout\ & 
-- !\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[43]~27_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[43]~26_combout\,
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X11_Y20_N26
\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y20_N28
\s1|Mod2|auto_generated|divider|divider|StageOut[48]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[48]~34_combout\ = (!\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[48]~34_combout\);

-- Location: LCCOMB_X12_Y20_N2
\s1|Mod2|auto_generated|divider|divider|StageOut[47]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[47]~35_combout\ = (!\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[47]~35_combout\);

-- Location: LCCOMB_X12_Y20_N20
\s1|Mod2|auto_generated|divider|divider|StageOut[46]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[46]~37_combout\ = (!\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[46]~37_combout\);

-- Location: LCCOMB_X12_Y20_N0
\s1|Mod2|auto_generated|divider|divider|StageOut[45]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[45]~39_combout\ = (!\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \s1|temp1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|temp1\(2),
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[45]~39_combout\);

-- Location: LCCOMB_X12_Y20_N4
\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\s1|Mod2|auto_generated|divider|divider|StageOut[45]~38_combout\) # (\s1|Mod2|auto_generated|divider|divider|StageOut[45]~39_combout\)))
-- \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\s1|Mod2|auto_generated|divider|divider|StageOut[45]~38_combout\) # (\s1|Mod2|auto_generated|divider|divider|StageOut[45]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[45]~38_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[45]~39_combout\,
	datad => VCC,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X12_Y20_N10
\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\s1|Mod2|auto_generated|divider|divider|StageOut[48]~50_combout\ & (!\s1|Mod2|auto_generated|divider|divider|StageOut[48]~34_combout\ & 
-- !\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[48]~50_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[48]~34_combout\,
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y20_N12
\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y20_N16
\s1|Mod2|auto_generated|divider|divider|StageOut[53]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[53]~49_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\s1|Mod2|auto_generated|divider|divider|StageOut[47]~51_combout\) # 
-- ((\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[47]~51_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[53]~49_combout\);

-- Location: LCCOMB_X12_Y20_N18
\s1|Mod2|auto_generated|divider|divider|StageOut[52]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[52]~52_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\s1|temp1\(3)))) # 
-- (!\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|temp1\(3),
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[52]~52_combout\);

-- Location: LCCOMB_X12_Y20_N22
\s1|Mod2|auto_generated|divider|divider|StageOut[51]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[51]~41_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[51]~41_combout\);

-- Location: LCCOMB_X15_Y20_N18
\s1|Mod2|auto_generated|divider|divider|StageOut[50]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[50]~43_combout\ = (\s1|temp1\(1) & !\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|temp1\(1),
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[50]~43_combout\);

-- Location: LCCOMB_X15_Y20_N24
\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\s1|Mod2|auto_generated|divider|divider|StageOut[51]~40_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[51]~41_combout\)))) # (!\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\s1|Mod2|auto_generated|divider|divider|StageOut[51]~40_combout\ & 
-- (!\s1|Mod2|auto_generated|divider|divider|StageOut[51]~41_combout\)))
-- \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\s1|Mod2|auto_generated|divider|divider|StageOut[51]~40_combout\ & (!\s1|Mod2|auto_generated|divider|divider|StageOut[51]~41_combout\ & 
-- !\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[51]~40_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[51]~41_combout\,
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X15_Y20_N26
\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\s1|Mod2|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[52]~52_combout\)))) # (!\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\s1|Mod2|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[52]~52_combout\)))))
-- \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\s1|Mod2|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- (\s1|Mod2|auto_generated|divider|divider|StageOut[52]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[52]~52_combout\,
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X15_Y20_N28
\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ = CARRY((!\s1|Mod2|auto_generated|divider|divider|StageOut[53]~44_combout\ & (!\s1|Mod2|auto_generated|divider|divider|StageOut[53]~49_combout\ & 
-- !\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[53]~44_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[53]~49_combout\,
	datad => VCC,
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	cout => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\);

-- Location: LCCOMB_X15_Y20_N30
\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\,
	combout => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\);

-- Location: LCCOMB_X15_Y20_N2
\s1|Mod2|auto_generated|divider|divider|StageOut[56]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[56]~47_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\s1|temp1\(1)))) # (!\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & 
-- (\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datab => \s1|temp1\(1),
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[56]~47_combout\);

-- Location: FF_X15_Y20_N3
\s1|temp2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mod2|auto_generated|divider|divider|StageOut[56]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|temp2\(1));

-- Location: FF_X15_Y19_N13
\s1|deci_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s1|temp2\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(1));

-- Location: LCCOMB_X14_Y19_N0
\s1|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|WideNor0~combout\ = (\s1|Equal0~5_combout\) # ((\s1|Equal1~3_combout\) # (\s1|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Equal0~5_combout\,
	datac => \s1|Equal1~3_combout\,
	datad => \s1|Equal2~1_combout\,
	combout => \s1|WideNor0~combout\);

-- Location: FF_X14_Y19_N9
\s1|cur_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|cur_data[1]~0_combout\,
	asdata => \s1|deci_data\(1),
	sload => \s1|Equal2~1_combout\,
	ena => \s1|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|cur_data\(1));

-- Location: LCCOMB_X17_Y20_N18
\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \now_money[7]~14_combout\ $ (VCC)
-- \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\now_money[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \now_money[7]~14_combout\,
	datad => VCC,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X17_Y20_N20
\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\now_money[8]~16_combout\ & (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\now_money[8]~16_combout\ & 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\now_money[8]~16_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[8]~16_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X17_Y20_N22
\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\now_money[9]~18_combout\ & ((GND) # (!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\now_money[9]~18_combout\ & 
-- (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\now_money[9]~18_combout\) # (!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[9]~18_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X17_Y20_N28
\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X16_Y20_N28
\s1|Div0|auto_generated|divider|divider|StageOut[54]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[54]~90_combout\ = (\now_money[11]~22_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[11]~22_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[54]~90_combout\);

-- Location: LCCOMB_X16_Y20_N18
\s1|Div0|auto_generated|divider|divider|StageOut[53]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[53]~92_combout\ = (\now_money[10]~20_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[10]~20_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[53]~92_combout\);

-- Location: LCCOMB_X17_Y20_N8
\s1|Div0|auto_generated|divider|divider|StageOut[52]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[52]~95_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[52]~95_combout\);

-- Location: LCCOMB_X16_Y20_N0
\s1|Div0|auto_generated|divider|divider|StageOut[51]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[51]~96_combout\ = (\now_money[8]~16_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[8]~16_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[51]~96_combout\);

-- Location: LCCOMB_X17_Y20_N16
\s1|Div0|auto_generated|divider|divider|StageOut[50]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[50]~99_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[50]~99_combout\);

-- Location: LCCOMB_X16_Y20_N24
\s1|Div0|auto_generated|divider|divider|StageOut[49]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[49]~100_combout\ = (\now_money[6]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[6]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[49]~100_combout\);

-- Location: LCCOMB_X16_Y20_N6
\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\s1|Div0|auto_generated|divider|divider|StageOut[50]~98_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[50]~99_combout\)))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[50]~98_combout\ & 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[50]~99_combout\)))
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\s1|Div0|auto_generated|divider|divider|StageOut[50]~98_combout\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[50]~99_combout\ & 
-- !\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[50]~98_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[50]~99_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X16_Y20_N10
\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\s1|Div0|auto_generated|divider|divider|StageOut[52]~94_combout\ & (((!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[52]~94_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[52]~95_combout\ & (!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[52]~95_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\s1|Div0|auto_generated|divider|divider|StageOut[52]~94_combout\ & !\s1|Div0|auto_generated|divider|divider|StageOut[52]~95_combout\)) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[52]~95_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X16_Y20_N14
\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\s1|Div0|auto_generated|divider|divider|StageOut[54]~91_combout\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[54]~90_combout\ & 
-- !\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[54]~91_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[54]~90_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X16_Y20_N16
\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X20_Y20_N8
\s1|Div0|auto_generated|divider|divider|StageOut[62]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[62]~140_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\now_money[10]~20_combout\))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datab => \now_money[10]~20_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[62]~140_combout\);

-- Location: LCCOMB_X20_Y20_N2
\s1|Div0|auto_generated|divider|divider|StageOut[61]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[61]~141_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\now_money[9]~18_combout\))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datab => \now_money[9]~18_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[61]~141_combout\);

-- Location: LCCOMB_X17_Y20_N0
\s1|Div0|auto_generated|divider|divider|StageOut[60]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[60]~142_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\now_money[8]~16_combout\)) 
-- # (!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[8]~16_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[60]~142_combout\);

-- Location: LCCOMB_X21_Y20_N28
\s1|Div0|auto_generated|divider|divider|StageOut[59]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[59]~105_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[59]~105_combout\);

-- Location: LCCOMB_X20_Y20_N0
\s1|Div0|auto_generated|divider|divider|StageOut[58]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[58]~106_combout\ = (\now_money[6]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[6]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[58]~106_combout\);

-- Location: LCCOMB_X17_Y20_N6
\s1|Div0|auto_generated|divider|divider|StageOut[57]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[57]~108_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \now_money[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \now_money[5]~10_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[57]~108_combout\);

-- Location: LCCOMB_X20_Y20_N14
\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\s1|Div0|auto_generated|divider|divider|StageOut[57]~109_combout\) # (\s1|Div0|auto_generated|divider|divider|StageOut[57]~108_combout\)))
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\s1|Div0|auto_generated|divider|divider|StageOut[57]~109_combout\) # (\s1|Div0|auto_generated|divider|divider|StageOut[57]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[57]~109_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[57]~108_combout\,
	datad => VCC,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X20_Y20_N16
\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\s1|Div0|auto_generated|divider|divider|StageOut[58]~107_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[58]~106_combout\)))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[58]~107_combout\ & 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[58]~106_combout\)))
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\s1|Div0|auto_generated|divider|divider|StageOut[58]~107_combout\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[58]~106_combout\ & 
-- !\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[58]~107_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[58]~106_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X20_Y20_N18
\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\s1|Div0|auto_generated|divider|divider|StageOut[59]~143_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[59]~105_combout\))))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[59]~143_combout\) # 
-- ((\s1|Div0|auto_generated|divider|divider|StageOut[59]~105_combout\) # (GND))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\s1|Div0|auto_generated|divider|divider|StageOut[59]~143_combout\) # ((\s1|Div0|auto_generated|divider|divider|StageOut[59]~105_combout\) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[59]~143_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[59]~105_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X20_Y20_N20
\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\s1|Div0|auto_generated|divider|divider|StageOut[60]~104_combout\ & (((!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[60]~104_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[60]~142_combout\ & (!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[60]~142_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\s1|Div0|auto_generated|divider|divider|StageOut[60]~104_combout\ & !\s1|Div0|auto_generated|divider|divider|StageOut[60]~142_combout\)) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[60]~104_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[60]~142_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X20_Y20_N24
\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\s1|Div0|auto_generated|divider|divider|StageOut[62]~102_combout\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[62]~140_combout\ & 
-- !\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[62]~102_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[62]~140_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X20_Y20_N26
\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\);

-- Location: LCCOMB_X19_Y19_N4
\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & VCC))
-- \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X19_Y19_N6
\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & VCC)) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ $ (GND)))
-- \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => VCC,
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X19_Y19_N8
\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY(!\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y19_N10
\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y19_N2
\s1|Mod0|auto_generated|divider|divider|StageOut[48]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[48]~25_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[48]~25_combout\);

-- Location: LCCOMB_X20_Y19_N24
\s1|Mod0|auto_generated|divider|divider|StageOut[47]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[47]~26_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[47]~26_combout\);

-- Location: LCCOMB_X20_Y19_N0
\s1|Mod0|auto_generated|divider|divider|StageOut[46]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[46]~28_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[46]~28_combout\);

-- Location: LCCOMB_X19_Y20_N28
\s1|Div0|auto_generated|divider|divider|StageOut[70]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[70]~131_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[61]~141_combout\) # 
-- ((\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[61]~141_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[70]~131_combout\);

-- Location: LCCOMB_X20_Y20_N28
\s1|Div0|auto_generated|divider|divider|StageOut[69]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[69]~132_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[60]~142_combout\) # 
-- ((\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[60]~142_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[69]~132_combout\);

-- Location: LCCOMB_X19_Y20_N0
\s1|Div0|auto_generated|divider|divider|StageOut[68]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[68]~112_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[68]~112_combout\);

-- Location: LCCOMB_X20_Y20_N10
\s1|Div0|auto_generated|divider|divider|StageOut[67]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[67]~113_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[67]~113_combout\);

-- Location: LCCOMB_X19_Y19_N26
\s1|Div0|auto_generated|divider|divider|StageOut[66]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[66]~114_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[66]~114_combout\);

-- Location: LCCOMB_X21_Y20_N0
\s1|Div0|auto_generated|divider|divider|StageOut[65]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[65]~115_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \now_money[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \now_money[4]~8_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[65]~115_combout\);

-- Location: LCCOMB_X19_Y20_N16
\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (((\s1|Div0|auto_generated|divider|divider|StageOut[66]~145_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[66]~114_combout\)))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[66]~145_combout\ & 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[66]~114_combout\)))
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((!\s1|Div0|auto_generated|divider|divider|StageOut[66]~145_combout\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[66]~114_combout\ & 
-- !\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[66]~145_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[66]~114_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X19_Y20_N18
\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((((\s1|Div0|auto_generated|divider|divider|StageOut[67]~144_combout\) # 
-- (\s1|Div0|auto_generated|divider|divider|StageOut[67]~113_combout\))))) # (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[67]~144_combout\) # 
-- ((\s1|Div0|auto_generated|divider|divider|StageOut[67]~113_combout\) # (GND))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((\s1|Div0|auto_generated|divider|divider|StageOut[67]~144_combout\) # ((\s1|Div0|auto_generated|divider|divider|StageOut[67]~113_combout\) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[67]~144_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[67]~113_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X19_Y20_N20
\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\s1|Div0|auto_generated|divider|divider|StageOut[68]~133_combout\ & (((!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)))) # 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[68]~133_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[68]~112_combout\ & (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\s1|Div0|auto_generated|divider|divider|StageOut[68]~112_combout\ & ((\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND)))))
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY(((!\s1|Div0|auto_generated|divider|divider|StageOut[68]~133_combout\ & !\s1|Div0|auto_generated|divider|divider|StageOut[68]~112_combout\)) # 
-- (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[68]~133_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[68]~112_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X19_Y20_N24
\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ = CARRY((!\s1|Div0|auto_generated|divider|divider|StageOut[70]~110_combout\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[70]~131_combout\ & 
-- !\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[70]~110_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[70]~131_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\);

-- Location: LCCOMB_X19_Y20_N26
\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\);

-- Location: LCCOMB_X20_Y19_N20
\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\ = !\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\);

-- Location: LCCOMB_X20_Y19_N16
\s1|Mod0|auto_generated|divider|divider|StageOut[45]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[45]~31_combout\ = (!\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[45]~31_combout\);

-- Location: LCCOMB_X20_Y19_N4
\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\s1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\) # (\s1|Mod0|auto_generated|divider|divider|StageOut[45]~31_combout\)))
-- \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\s1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\) # (\s1|Mod0|auto_generated|divider|divider|StageOut[45]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|StageOut[45]~31_combout\,
	datad => VCC,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X20_Y19_N10
\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\s1|Mod0|auto_generated|divider|divider|StageOut[48]~24_combout\ & (!\s1|Mod0|auto_generated|divider|divider|StageOut[48]~25_combout\ & 
-- !\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|StageOut[48]~24_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|StageOut[48]~25_combout\,
	datad => VCC,
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y19_N12
\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y19_N28
\s1|Mod0|auto_generated|divider|divider|StageOut[52]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[52]~36_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[52]~36_combout\);

-- Location: LCCOMB_X21_Y19_N18
\s1|Mod0|auto_generated|divider|divider|StageOut[51]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[51]~32_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[51]~32_combout\);

-- Location: LCCOMB_X20_Y22_N14
\s1|Div0|auto_generated|divider|divider|StageOut[78]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[78]~134_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\s1|Div0|auto_generated|divider|divider|StageOut[69]~132_combout\) # 
-- ((!\s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|StageOut[69]~132_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[78]~134_combout\);

-- Location: LCCOMB_X19_Y20_N2
\s1|Div0|auto_generated|divider|divider|StageOut[77]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[77]~118_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[77]~118_combout\);

-- Location: LCCOMB_X20_Y22_N0
\s1|Div0|auto_generated|divider|divider|StageOut[76]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[76]~119_combout\ = (\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[76]~119_combout\);

-- Location: LCCOMB_X19_Y20_N4
\s1|Div0|auto_generated|divider|divider|StageOut[75]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[75]~120_combout\ = (!\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[75]~120_combout\);

-- Location: LCCOMB_X20_Y22_N2
\s1|Div0|auto_generated|divider|divider|StageOut[74]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[74]~146_combout\ = (\now_money[4]~8_combout\ & \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \now_money[4]~8_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[74]~146_combout\);

-- Location: LCCOMB_X20_Y22_N4
\s1|Div0|auto_generated|divider|divider|StageOut[73]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|StageOut[73]~123_combout\ = (\now_money[3]~6_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \now_money[3]~6_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \s1|Div0|auto_generated|divider|divider|StageOut[73]~123_combout\);

-- Location: LCCOMB_X20_Y22_N26
\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\ = CARRY((!\s1|Div0|auto_generated|divider|divider|StageOut[78]~117_combout\ & (!\s1|Div0|auto_generated|divider|divider|StageOut[78]~134_combout\ & 
-- !\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Div0|auto_generated|divider|divider|StageOut[78]~117_combout\,
	datab => \s1|Div0|auto_generated|divider|divider|StageOut[78]~134_combout\,
	datad => VCC,
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\,
	cout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\);

-- Location: LCCOMB_X20_Y22_N28
\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ = \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\,
	combout => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\);

-- Location: LCCOMB_X21_Y19_N4
\s1|Mod0|auto_generated|divider|divider|StageOut[50]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[50]~33_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & !\s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \s1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[50]~33_combout\);

-- Location: LCCOMB_X21_Y19_N22
\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\s1|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\) # 
-- (\s1|Mod0|auto_generated|divider|divider|StageOut[51]~32_combout\)))) # (!\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\s1|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\ & 
-- (!\s1|Mod0|auto_generated|divider|divider|StageOut[51]~32_combout\)))
-- \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\s1|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\ & (!\s1|Mod0|auto_generated|divider|divider|StageOut[51]~32_combout\ & 
-- !\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|StageOut[51]~32_combout\,
	datad => VCC,
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X21_Y19_N24
\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\s1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\) # 
-- (\s1|Mod0|auto_generated|divider|divider|StageOut[52]~36_combout\)))) # (!\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\s1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\) # 
-- (\s1|Mod0|auto_generated|divider|divider|StageOut[52]~36_combout\)))))
-- \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\s1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\) # 
-- (\s1|Mod0|auto_generated|divider|divider|StageOut[52]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|StageOut[52]~36_combout\,
	datad => VCC,
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X20_Y19_N18
\s1|Mod0|auto_generated|divider|divider|StageOut[53]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- ((!\s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))) # (!\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datac => \s1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\);

-- Location: LCCOMB_X21_Y19_N26
\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ = CARRY((!\s1|Mod0|auto_generated|divider|divider|StageOut[53]~35_combout\ & (!\s1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\ & 
-- !\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|StageOut[53]~35_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\,
	datad => VCC,
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	cout => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y19_N28
\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\,
	combout => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y19_N8
\s1|Mod0|auto_generated|divider|divider|StageOut[58]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[58]~39_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\s1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\) # 
-- ((\s1|Mod0|auto_generated|divider|divider|StageOut[52]~36_combout\)))) # (!\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (((\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datac => \s1|Mod0|auto_generated|divider|divider|StageOut[52]~36_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[58]~39_combout\);

-- Location: FF_X21_Y19_N9
\s1|deci_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mod0|auto_generated|divider|divider|StageOut[58]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(11));

-- Location: LCCOMB_X14_Y19_N2
\s1|deci_data[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|deci_data[7]~14_combout\ = !\s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \s1|deci_data[7]~14_combout\);

-- Location: FF_X14_Y19_N3
\s1|deci_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|deci_data[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(7));

-- Location: LCCOMB_X14_Y19_N22
\s1|cur_data[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|cur_data[3]~1_combout\ = (\s1|Equal1~3_combout\ & ((\s1|deci_data\(7)))) # (!\s1|Equal1~3_combout\ & (\s1|deci_data\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal1~3_combout\,
	datab => \s1|deci_data\(11),
	datad => \s1|deci_data\(7),
	combout => \s1|cur_data[3]~1_combout\);

-- Location: LCCOMB_X12_Y20_N14
\s1|Mod2|auto_generated|divider|divider|StageOut[52]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[52]~45_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[52]~45_combout\);

-- Location: LCCOMB_X15_Y20_N20
\s1|Mod2|auto_generated|divider|divider|StageOut[58]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[58]~48_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\s1|Mod2|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- ((\s1|Mod2|auto_generated|divider|divider|StageOut[52]~52_combout\)))) # (!\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (((\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|StageOut[52]~52_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[58]~48_combout\);

-- Location: FF_X15_Y20_N21
\s1|temp2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mod2|auto_generated|divider|divider|StageOut[58]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|temp2\(3));

-- Location: FF_X15_Y19_N11
\s1|deci_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s1|temp2\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(3));

-- Location: FF_X14_Y19_N23
\s1|cur_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|cur_data[3]~1_combout\,
	asdata => \s1|deci_data\(3),
	sload => \s1|Equal2~1_combout\,
	ena => \s1|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|cur_data\(3));

-- Location: LCCOMB_X14_Y19_N14
\s1|deci_data[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|deci_data[6]~12_combout\ = !\s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \s1|deci_data[6]~12_combout\);

-- Location: FF_X14_Y19_N15
\s1|deci_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|deci_data[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(6));

-- Location: LCCOMB_X21_Y19_N0
\s1|Mod0|auto_generated|divider|divider|StageOut[57]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ = (\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\s1|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\) # 
-- ((\s1|Mod0|auto_generated|divider|divider|StageOut[51]~32_combout\)))) # (!\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (((\s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\,
	datab => \s1|Mod0|auto_generated|divider|divider|StageOut[51]~32_combout\,
	datac => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \s1|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \s1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\);

-- Location: FF_X21_Y19_N1
\s1|deci_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(10));

-- Location: LCCOMB_X14_Y19_N26
\s1|cur_data[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|cur_data[2]~3_combout\ = (\s1|Equal1~3_combout\ & (\s1|deci_data\(6))) # (!\s1|Equal1~3_combout\ & ((\s1|deci_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Equal1~3_combout\,
	datab => \s1|deci_data\(6),
	datad => \s1|deci_data\(10),
	combout => \s1|cur_data[2]~3_combout\);

-- Location: LCCOMB_X15_Y20_N0
\s1|Mod2|auto_generated|divider|divider|StageOut[57]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mod2|auto_generated|divider|divider|StageOut[57]~46_combout\ = (\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\s1|Mod2|auto_generated|divider|divider|StageOut[51]~40_combout\) # 
-- ((\s1|Mod2|auto_generated|divider|divider|StageOut[51]~41_combout\)))) # (!\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (((\s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|Mod2|auto_generated|divider|divider|StageOut[51]~40_combout\,
	datab => \s1|Mod2|auto_generated|divider|divider|StageOut[51]~41_combout\,
	datac => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \s1|Mod2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \s1|Mod2|auto_generated|divider|divider|StageOut[57]~46_combout\);

-- Location: FF_X15_Y20_N1
\s1|temp2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mod2|auto_generated|divider|divider|StageOut[57]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|temp2\(2));

-- Location: LCCOMB_X15_Y19_N30
\s1|deci_data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|deci_data[2]~feeder_combout\ = \s1|temp2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s1|temp2\(2),
	combout => \s1|deci_data[2]~feeder_combout\);

-- Location: FF_X15_Y19_N31
\s1|deci_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|deci_data[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|deci_data\(2));

-- Location: FF_X14_Y19_N27
\s1|cur_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|cur_data[2]~3_combout\,
	asdata => \s1|deci_data\(2),
	sload => \s1|Equal2~1_combout\,
	ena => \s1|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|cur_data\(2));

-- Location: LCCOMB_X10_Y15_N8
\s1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mux6~0_combout\ = (!\s1|cur_data\(1) & (!\s1|cur_data\(3) & (\s1|cur_data\(0) $ (\s1|cur_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|cur_data\(0),
	datab => \s1|cur_data\(1),
	datac => \s1|cur_data\(3),
	datad => \s1|cur_data\(2),
	combout => \s1|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y15_N10
\s1|seg[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|seg[5]~0_combout\ = ((!\s1|cur_data\(1) & !\s1|cur_data\(2))) # (!\s1|cur_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1|cur_data\(1),
	datac => \s1|cur_data\(3),
	datad => \s1|cur_data\(2),
	combout => \s1|seg[5]~0_combout\);

-- Location: FF_X10_Y15_N9
\s1|seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mux6~0_combout\,
	ena => \s1|seg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|seg\(0));

-- Location: LCCOMB_X10_Y15_N26
\s1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mux5~0_combout\ = (!\s1|cur_data\(3) & (\s1|cur_data\(2) & (\s1|cur_data\(0) $ (\s1|cur_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|cur_data\(0),
	datab => \s1|cur_data\(1),
	datac => \s1|cur_data\(3),
	datad => \s1|cur_data\(2),
	combout => \s1|Mux5~0_combout\);

-- Location: FF_X10_Y15_N27
\s1|seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mux5~0_combout\,
	ena => \s1|seg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|seg\(1));

-- Location: LCCOMB_X10_Y15_N4
\s1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mux4~0_combout\ = (!\s1|cur_data\(0) & (\s1|cur_data\(1) & (!\s1|cur_data\(3) & !\s1|cur_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|cur_data\(0),
	datab => \s1|cur_data\(1),
	datac => \s1|cur_data\(3),
	datad => \s1|cur_data\(2),
	combout => \s1|Mux4~0_combout\);

-- Location: FF_X10_Y15_N5
\s1|seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mux4~0_combout\,
	ena => \s1|seg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|seg\(2));

-- Location: LCCOMB_X10_Y15_N14
\s1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mux3~0_combout\ = (!\s1|cur_data\(3) & ((\s1|cur_data\(0) & (\s1|cur_data\(1) $ (!\s1|cur_data\(2)))) # (!\s1|cur_data\(0) & (!\s1|cur_data\(1) & \s1|cur_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|cur_data\(0),
	datab => \s1|cur_data\(1),
	datac => \s1|cur_data\(3),
	datad => \s1|cur_data\(2),
	combout => \s1|Mux3~0_combout\);

-- Location: FF_X10_Y15_N15
\s1|seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mux3~0_combout\,
	ena => \s1|seg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|seg\(3));

-- Location: LCCOMB_X10_Y15_N20
\s1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mux2~0_combout\ = (\s1|cur_data\(0)) # ((!\s1|cur_data\(1) & (!\s1|cur_data\(3) & \s1|cur_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|cur_data\(0),
	datab => \s1|cur_data\(1),
	datac => \s1|cur_data\(3),
	datad => \s1|cur_data\(2),
	combout => \s1|Mux2~0_combout\);

-- Location: FF_X10_Y15_N21
\s1|seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mux2~0_combout\,
	ena => \s1|seg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|seg\(4));

-- Location: LCCOMB_X10_Y15_N18
\s1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mux1~0_combout\ = (!\s1|cur_data\(3) & ((\s1|cur_data\(0) & ((\s1|cur_data\(1)) # (!\s1|cur_data\(2)))) # (!\s1|cur_data\(0) & (\s1|cur_data\(1) & !\s1|cur_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|cur_data\(0),
	datab => \s1|cur_data\(1),
	datac => \s1|cur_data\(3),
	datad => \s1|cur_data\(2),
	combout => \s1|Mux1~0_combout\);

-- Location: FF_X10_Y15_N19
\s1|seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mux1~0_combout\,
	ena => \s1|seg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|seg\(5));

-- Location: LCCOMB_X10_Y15_N24
\s1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1|Mux0~0_combout\ = (!\s1|cur_data\(3) & ((\s1|cur_data\(1) & (\s1|cur_data\(0) & \s1|cur_data\(2))) # (!\s1|cur_data\(1) & ((!\s1|cur_data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|cur_data\(0),
	datab => \s1|cur_data\(1),
	datac => \s1|cur_data\(3),
	datad => \s1|cur_data\(2),
	combout => \s1|Mux0~0_combout\);

-- Location: FF_X10_Y15_N25
\s1|seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s1|Mux0~0_combout\,
	ena => \s1|seg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|seg\(6));

ww_out_less <= \out_less~output_o\;

ww_out_take <= \out_take~output_o\;

ww_out_money <= \out_money~output_o\;

ww_which_seg(0) <= \which_seg[0]~output_o\;

ww_which_seg(1) <= \which_seg[1]~output_o\;

ww_which_seg(2) <= \which_seg[2]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;
END structure;


