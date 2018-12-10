-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "12/06/2018 11:18:31"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	vga_with_hw_test_image IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	pixel_clk : BUFFER std_logic;
	h_sync : BUFFER std_logic;
	v_sync : BUFFER std_logic;
	n_blank : BUFFER std_logic;
	n_sync : BUFFER std_logic;
	blue : BUFFER std_logic_vector(7 DOWNTO 0);
	green : BUFFER std_logic_vector(7 DOWNTO 0);
	red : BUFFER std_logic_vector(7 DOWNTO 0);
	ctrl : IN std_logic_vector(3 DOWNTO 0)
	);
END vga_with_hw_test_image;

-- Design Ports Information
-- pixel_clk	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- h_sync	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- v_sync	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- n_blank	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- n_sync	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[3]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[2]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[1]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[0]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF vga_with_hw_test_image IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_pixel_clk : std_logic;
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL ww_n_blank : std_logic;
SIGNAL ww_n_sync : std_logic;
SIGNAL ww_blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ctrl : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|process_0~45clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \b2v_inst2|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|h_count~9_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~1\ : std_logic;
SIGNAL \b2v_inst1|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst1|h_count~8_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~3\ : std_logic;
SIGNAL \b2v_inst1|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst1|h_count~7_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~5\ : std_logic;
SIGNAL \b2v_inst1|Add0~6_combout\ : std_logic;
SIGNAL \b2v_inst1|h_count~6_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~7\ : std_logic;
SIGNAL \b2v_inst1|Add0~8_combout\ : std_logic;
SIGNAL \b2v_inst1|h_count~5_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~9\ : std_logic;
SIGNAL \b2v_inst1|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst1|h_count~4_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~11\ : std_logic;
SIGNAL \b2v_inst1|Add0~12_combout\ : std_logic;
SIGNAL \b2v_inst1|h_count~3_combout\ : std_logic;
SIGNAL \b2v_inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~13\ : std_logic;
SIGNAL \b2v_inst1|Add0~14_combout\ : std_logic;
SIGNAL \b2v_inst1|h_count~0_combout\ : std_logic;
SIGNAL \b2v_inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~15\ : std_logic;
SIGNAL \b2v_inst1|Add0~16_combout\ : std_logic;
SIGNAL \b2v_inst1|h_count~2_combout\ : std_logic;
SIGNAL \b2v_inst1|h_count[8]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst1|h_count~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~17\ : std_logic;
SIGNAL \b2v_inst1|Add0~18_combout\ : std_logic;
SIGNAL \b2v_inst1|process_0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|process_0~1_combout\ : std_logic;
SIGNAL \b2v_inst1|h_sync~q\ : std_logic;
SIGNAL \b2v_inst1|Add1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~29_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~1\ : std_logic;
SIGNAL \b2v_inst1|Add1~2_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~23_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~3\ : std_logic;
SIGNAL \b2v_inst1|Add1~4_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~21_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~5\ : std_logic;
SIGNAL \b2v_inst1|Add1~6_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~24_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~7\ : std_logic;
SIGNAL \b2v_inst1|Add1~8_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~22_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~9\ : std_logic;
SIGNAL \b2v_inst1|Add1~10_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~25_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~11\ : std_logic;
SIGNAL \b2v_inst1|Add1~12_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~26_combout\ : std_logic;
SIGNAL \b2v_inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~13\ : std_logic;
SIGNAL \b2v_inst1|Add1~14_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~27_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~15\ : std_logic;
SIGNAL \b2v_inst1|Add1~16_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~28_combout\ : std_logic;
SIGNAL \b2v_inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~17\ : std_logic;
SIGNAL \b2v_inst1|Add1~18_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~20_combout\ : std_logic;
SIGNAL \b2v_inst1|process_0~3_combout\ : std_logic;
SIGNAL \b2v_inst1|process_0~2_combout\ : std_logic;
SIGNAL \b2v_inst1|process_0~4_combout\ : std_logic;
SIGNAL \b2v_inst1|v_sync~q\ : std_logic;
SIGNAL \b2v_inst1|LessThan6~0_combout\ : std_logic;
SIGNAL \b2v_inst1|column[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~31_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~32_combout\ : std_logic;
SIGNAL \b2v_inst1|column[31]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~30_combout\ : std_logic;
SIGNAL \b2v_inst|red~0_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ctrl[0]~input_o\ : std_logic;
SIGNAL \ctrl[1]~input_o\ : std_logic;
SIGNAL \p2|Selector0~1_combout\ : std_logic;
SIGNAL \ctrl[2]~input_o\ : std_logic;
SIGNAL \ctrl[3]~input_o\ : std_logic;
SIGNAL \p1|Selector2~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \p1|S.STANDTHRUST~q\ : std_logic;
SIGNAL \p1|Selector3~0_combout\ : std_logic;
SIGNAL \p1|S.CROUCHTHRUST~q\ : std_logic;
SIGNAL \b2v_inst|Equal10~0_combout\ : std_logic;
SIGNAL \p2|Selector2~0_combout\ : std_logic;
SIGNAL \p2|Selector2~1_combout\ : std_logic;
SIGNAL \p2|S.STANDTHRUST~q\ : std_logic;
SIGNAL \p2|Selector1~0_combout\ : std_logic;
SIGNAL \p2|S.CROUCH~q\ : std_logic;
SIGNAL \b2v_inst|Equal10~1_combout\ : std_logic;
SIGNAL \p2|Selector0~0_combout\ : std_logic;
SIGNAL \p2|Selector3~0_combout\ : std_logic;
SIGNAL \p2|S.CROUCHTHRUST~q\ : std_logic;
SIGNAL \p2|Selector0~2_combout\ : std_logic;
SIGNAL \p2|Selector0~3_combout\ : std_logic;
SIGNAL \p2|S.STAND~q\ : std_logic;
SIGNAL \p2|Selector4~0_combout\ : std_logic;
SIGNAL \p2|Selector4~1_combout\ : std_logic;
SIGNAL \p2|S.LOSE~q\ : std_logic;
SIGNAL \b2v_inst|Equal14~0_combout\ : std_logic;
SIGNAL \p1|Selector2~0_combout\ : std_logic;
SIGNAL \p1|Selector1~0_combout\ : std_logic;
SIGNAL \p1|S.CROUCH~q\ : std_logic;
SIGNAL \b2v_inst|Equal14~1_combout\ : std_logic;
SIGNAL \p1|Selector0~0_combout\ : std_logic;
SIGNAL \p1|anim[1]~0_combout\ : std_logic;
SIGNAL \p1|Selector0~1_combout\ : std_logic;
SIGNAL \p1|Selector0~2_combout\ : std_logic;
SIGNAL \p1|S.STAND~q\ : std_logic;
SIGNAL \p1|Selector4~0_combout\ : std_logic;
SIGNAL \p1|Selector4~1_combout\ : std_logic;
SIGNAL \p1|S.LOSE~q\ : std_logic;
SIGNAL \b2v_inst|process_0~33_combout\ : std_logic;
SIGNAL \b2v_inst|red~9_combout\ : std_logic;
SIGNAL \b2v_inst1|LessThan7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|LessThan7~1_combout\ : std_logic;
SIGNAL \b2v_inst1|row[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|red~5_combout\ : std_logic;
SIGNAL \b2v_inst|red~6_combout\ : std_logic;
SIGNAL \b2v_inst|green~0_combout\ : std_logic;
SIGNAL \b2v_inst1|row[31]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~34_combout\ : std_logic;
SIGNAL \b2v_inst|red~7_combout\ : std_logic;
SIGNAL \b2v_inst|red~8_combout\ : std_logic;
SIGNAL \b2v_inst|red~10_combout\ : std_logic;
SIGNAL \b2v_inst|red~13_combout\ : std_logic;
SIGNAL \b2v_inst|red~11_combout\ : std_logic;
SIGNAL \b2v_inst|red~12_combout\ : std_logic;
SIGNAL \b2v_inst|red~14_combout\ : std_logic;
SIGNAL \b2v_inst|red~1_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~38_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~36_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~37_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~35_combout\ : std_logic;
SIGNAL \b2v_inst|green~1_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~39_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~40_combout\ : std_logic;
SIGNAL \b2v_inst|red~2_combout\ : std_logic;
SIGNAL \b2v_inst|red~3_combout\ : std_logic;
SIGNAL \b2v_inst|red~4_combout\ : std_logic;
SIGNAL \b2v_inst|red~15_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~1\ : std_logic;
SIGNAL \b2v_inst|Add3~3\ : std_logic;
SIGNAL \b2v_inst|Add3~5\ : std_logic;
SIGNAL \b2v_inst|Add3~7\ : std_logic;
SIGNAL \b2v_inst|Add3~9\ : std_logic;
SIGNAL \b2v_inst|Add3~11\ : std_logic;
SIGNAL \b2v_inst|Add3~13\ : std_logic;
SIGNAL \b2v_inst|Add3~15\ : std_logic;
SIGNAL \b2v_inst|Add3~17\ : std_logic;
SIGNAL \b2v_inst|Add3~19\ : std_logic;
SIGNAL \b2v_inst|Add3~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~21\ : std_logic;
SIGNAL \b2v_inst|Add3~22_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~23\ : std_logic;
SIGNAL \b2v_inst|Add3~24_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~18_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~8_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal14~2_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~44_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~42_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~43_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~45_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~45clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|p2[9][18]~combout\ : std_logic;
SIGNAL \b2v_inst|Add3~6_combout\ : std_logic;
SIGNAL \b2v_inst|p2[22][2]~combout\ : std_logic;
SIGNAL \b2v_inst|Selector13~0_combout\ : std_logic;
SIGNAL \b2v_inst|p2[9][15]~combout\ : std_logic;
SIGNAL \b2v_inst|Add3~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux54~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux54~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux54~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux54~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux54~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux54~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux54~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux54~7_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux56~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux52~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux54~8_combout\ : std_logic;
SIGNAL \b2v_inst|Selector15~0_combout\ : std_logic;
SIGNAL \b2v_inst|p2[12][14]~combout\ : std_logic;
SIGNAL \b2v_inst|Mux52~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux54~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux52~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux52~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux52~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux52~5_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~1\ : std_logic;
SIGNAL \b2v_inst|Add2~3\ : std_logic;
SIGNAL \b2v_inst|Add2~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~2_combout\ : std_logic;
SIGNAL \b2v_inst|p2[25][28]~combout\ : std_logic;
SIGNAL \b2v_inst|p2[30][23]~combout\ : std_logic;
SIGNAL \b2v_inst|p2[25][25]~combout\ : std_logic;
SIGNAL \b2v_inst|Mux62~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux62~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux62~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux62~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux62~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux62~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux45~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux60~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux60~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux60~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux59~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux59~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux60~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~3_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux56~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux56~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux56~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux56~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux57~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux57~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux56~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux50~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux50~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux50~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux50~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux50~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux48~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux48~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux48~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux48~3_combout\ : std_logic;
SIGNAL \b2v_inst|p2[15][2]~combout\ : std_logic;
SIGNAL \b2v_inst|Mux49~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux49~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux49~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux48~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux44~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux58~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux58~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux58~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux58~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux58~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux58~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux58~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux49~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux61~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux61~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux61~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux61~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux54~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux53~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux51~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux51~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux51~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux51~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux51~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux51~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux49~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux49~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux49~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux49~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux49~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux49~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux59~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux59~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux59~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux59~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux57~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux57~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux57~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux57~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux57~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux57~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~18_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~5\ : std_logic;
SIGNAL \b2v_inst|Add2~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux41~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux42~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux46~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux46~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux35~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux46~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux46~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~26_combout\ : std_logic;
SIGNAL \b2v_inst|Mux47~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux47~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux47~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux47~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux47~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux47~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux47~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux47~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux45~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux47~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux47~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux33~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux43~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux43~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux43~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux43~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~27_combout\ : std_logic;
SIGNAL \b2v_inst|Mux40~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux41~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux45~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux45~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux45~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux45~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux41~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux41~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux40~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux40~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux40~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux44~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux44~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux44~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux44~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux59~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux37~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux37~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux34~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux32~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux35~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux35~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux33~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux33~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux39~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux39~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux39~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux34~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux34~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux38~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux38~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~25_combout\ : std_logic;
SIGNAL \b2v_inst|Mux63~28_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~14_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~10_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~12_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~16_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~1_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~3_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~7\ : std_logic;
SIGNAL \b2v_inst|Add2~9\ : std_logic;
SIGNAL \b2v_inst|Add2~11\ : std_logic;
SIGNAL \b2v_inst|Add2~13\ : std_logic;
SIGNAL \b2v_inst|Add2~15\ : std_logic;
SIGNAL \b2v_inst|Add2~17\ : std_logic;
SIGNAL \b2v_inst|Add2~19\ : std_logic;
SIGNAL \b2v_inst|Add2~21\ : std_logic;
SIGNAL \b2v_inst|Add2~23\ : std_logic;
SIGNAL \b2v_inst|Add2~25\ : std_logic;
SIGNAL \b2v_inst|Add2~27\ : std_logic;
SIGNAL \b2v_inst|Add2~29\ : std_logic;
SIGNAL \b2v_inst|Add2~31\ : std_logic;
SIGNAL \b2v_inst|Add2~33\ : std_logic;
SIGNAL \b2v_inst|Add2~35\ : std_logic;
SIGNAL \b2v_inst|Add2~37\ : std_logic;
SIGNAL \b2v_inst|Add2~39\ : std_logic;
SIGNAL \b2v_inst|Add2~41\ : std_logic;
SIGNAL \b2v_inst|Add2~43\ : std_logic;
SIGNAL \b2v_inst|Add2~45\ : std_logic;
SIGNAL \b2v_inst|Add2~47\ : std_logic;
SIGNAL \b2v_inst|Add2~49\ : std_logic;
SIGNAL \b2v_inst|Add2~51\ : std_logic;
SIGNAL \b2v_inst|Add2~53\ : std_logic;
SIGNAL \b2v_inst|Add2~55\ : std_logic;
SIGNAL \b2v_inst|Add2~57\ : std_logic;
SIGNAL \b2v_inst|Add2~58_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~59\ : std_logic;
SIGNAL \b2v_inst|Add2~60_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~56_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~16_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~30_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~26_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~28_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~24_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~11_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~8_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~12_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~10_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~14_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~9_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~18_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~16_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~22_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~10_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~34_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~36_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~38_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~32_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~12_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~13_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~42_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~44_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~40_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~46_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~14_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~54_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~52_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~50_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~48_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~15_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~17_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~25\ : std_logic;
SIGNAL \b2v_inst|Add3~27\ : std_logic;
SIGNAL \b2v_inst|Add3~29\ : std_logic;
SIGNAL \b2v_inst|Add3~31\ : std_logic;
SIGNAL \b2v_inst|Add3~33\ : std_logic;
SIGNAL \b2v_inst|Add3~35\ : std_logic;
SIGNAL \b2v_inst|Add3~37\ : std_logic;
SIGNAL \b2v_inst|Add3~39\ : std_logic;
SIGNAL \b2v_inst|Add3~41\ : std_logic;
SIGNAL \b2v_inst|Add3~43\ : std_logic;
SIGNAL \b2v_inst|Add3~45\ : std_logic;
SIGNAL \b2v_inst|Add3~47\ : std_logic;
SIGNAL \b2v_inst|Add3~49\ : std_logic;
SIGNAL \b2v_inst|Add3~51\ : std_logic;
SIGNAL \b2v_inst|Add3~53\ : std_logic;
SIGNAL \b2v_inst|Add3~55\ : std_logic;
SIGNAL \b2v_inst|Add3~56_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~52_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~50_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~54_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~7_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~32_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~30_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~28_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~26_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~34_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~40_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~38_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~36_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~5_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~48_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~44_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~42_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~46_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~6_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~8_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~18_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~57\ : std_logic;
SIGNAL \b2v_inst|Add3~59\ : std_logic;
SIGNAL \b2v_inst|Add3~60_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~58_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~1\ : std_logic;
SIGNAL \b2v_inst|Add0~3\ : std_logic;
SIGNAL \b2v_inst|Add0~5\ : std_logic;
SIGNAL \b2v_inst|Add0~7\ : std_logic;
SIGNAL \b2v_inst|Add0~9\ : std_logic;
SIGNAL \b2v_inst|Add0~11\ : std_logic;
SIGNAL \b2v_inst|Add0~13\ : std_logic;
SIGNAL \b2v_inst|Add0~15\ : std_logic;
SIGNAL \b2v_inst|Add0~17\ : std_logic;
SIGNAL \b2v_inst|Add0~19\ : std_logic;
SIGNAL \b2v_inst|Add0~21\ : std_logic;
SIGNAL \b2v_inst|Add0~23\ : std_logic;
SIGNAL \b2v_inst|Add0~25\ : std_logic;
SIGNAL \b2v_inst|Add0~27\ : std_logic;
SIGNAL \b2v_inst|Add0~29\ : std_logic;
SIGNAL \b2v_inst|Add0~31\ : std_logic;
SIGNAL \b2v_inst|Add0~33\ : std_logic;
SIGNAL \b2v_inst|Add0~35\ : std_logic;
SIGNAL \b2v_inst|Add0~37\ : std_logic;
SIGNAL \b2v_inst|Add0~39\ : std_logic;
SIGNAL \b2v_inst|Add0~41\ : std_logic;
SIGNAL \b2v_inst|Add0~43\ : std_logic;
SIGNAL \b2v_inst|Add0~45\ : std_logic;
SIGNAL \b2v_inst|Add0~47\ : std_logic;
SIGNAL \b2v_inst|Add0~49\ : std_logic;
SIGNAL \b2v_inst|Add0~51\ : std_logic;
SIGNAL \b2v_inst|Add0~53\ : std_logic;
SIGNAL \b2v_inst|Add0~55\ : std_logic;
SIGNAL \b2v_inst|Add0~57\ : std_logic;
SIGNAL \b2v_inst|Add0~58_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~59\ : std_logic;
SIGNAL \b2v_inst|Add0~60_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~30_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~28_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~26_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~32_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~23_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~54_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~52_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~56_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~50_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~26_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~40_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~36_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~34_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~38_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~24_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~44_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~48_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~46_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~42_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~25_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~27_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~16_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~12_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~14_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~22_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~18_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~21_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~24_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~22_combout\ : std_logic;
SIGNAL \b2v_inst|Selector7~0_combout\ : std_logic;
SIGNAL \b2v_inst|p1[5][21]~combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~4_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~0_combout\ : std_logic;
SIGNAL \b2v_inst|p1[7][22]~combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~5_combout\ : std_logic;
SIGNAL \b2v_inst|p1[15][4]~combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal10~2_combout\ : std_logic;
SIGNAL \b2v_inst|p1[5][20]~combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~26_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux11~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux11~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux11~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~27_combout\ : std_logic;
SIGNAL \b2v_inst|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux1~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux0~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~25_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~28_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux25~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux25~2_combout\ : std_logic;
SIGNAL \b2v_inst|p1[25][28]~combout\ : std_logic;
SIGNAL \b2v_inst|Mux25~4_combout\ : std_logic;
SIGNAL \b2v_inst|p1[25][25]~combout\ : std_logic;
SIGNAL \b2v_inst|Mux25~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux25~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux25~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux26~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux25~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux25~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux27~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux27~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux27~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux27~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux27~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux27~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux26~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux26~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux26~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux26~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux26~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux26~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux24~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux24~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux24~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux24~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux24~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux24~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~2_combout\ : std_logic;
SIGNAL \b2v_inst|p1[30][14]~combout\ : std_logic;
SIGNAL \b2v_inst|Mux30~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux30~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux30~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux30~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux30~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux30~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux28~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux28~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux28~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux28~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~4_combout\ : std_logic;
SIGNAL \b2v_inst|p1[22][4]~combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux22~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux22~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux22~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux22~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux22~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux22~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux22~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux22~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux22~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux24~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux29~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux29~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux29~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux31~18_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~19_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~28_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~29_combout\ : std_logic;
SIGNAL \b2v_inst|blue[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|process_0~5_combout\ : std_logic;
SIGNAL \b2v_inst1|disp_ena~q\ : std_logic;
SIGNAL \b2v_inst|blue[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|process_0~41_combout\ : std_logic;
SIGNAL \b2v_inst|green~3_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan13~0_combout\ : std_logic;
SIGNAL \b2v_inst|green~2_combout\ : std_logic;
SIGNAL \b2v_inst|green[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|red[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst1|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst1|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst1|h_count\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
pixel_clk <= ww_pixel_clk;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
n_blank <= ww_n_blank;
n_sync <= ww_n_sync;
blue <= ww_blue;
green <= ww_green;
red <= ww_red;
ww_ctrl <= ctrl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst2|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(0) <= \b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\(0);
\b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(1) <= \b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\(1);
\b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(2) <= \b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\(2);
\b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(3) <= \b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\(3);
\b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(4) <= \b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\(4);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(0));

\b2v_inst|process_0~45clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst|process_0~45_combout\);

-- Location: IOOBUF_X47_Y73_N2
\pixel_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_pixel_clk);

-- Location: IOOBUF_X38_Y73_N16
\h_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|h_sync~q\,
	devoe => ww_devoe,
	o => ww_h_sync);

-- Location: IOOBUF_X54_Y73_N2
\v_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|v_sync~q\,
	devoe => ww_devoe,
	o => ww_v_sync);

-- Location: IOOBUF_X31_Y73_N9
\n_blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_n_blank);

-- Location: IOOBUF_X35_Y73_N16
\n_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_n_sync);

-- Location: IOOBUF_X38_Y73_N9
\blue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(0));

-- Location: IOOBUF_X38_Y73_N2
\blue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(1));

-- Location: IOOBUF_X23_Y73_N2
\blue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(2));

-- Location: IOOBUF_X42_Y73_N9
\blue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(3));

-- Location: IOOBUF_X42_Y73_N2
\blue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(4));

-- Location: IOOBUF_X52_Y73_N16
\blue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(5));

-- Location: IOOBUF_X23_Y73_N9
\blue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(6));

-- Location: IOOBUF_X52_Y73_N23
\blue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(7));

-- Location: IOOBUF_X11_Y73_N16
\green[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|green[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(0));

-- Location: IOOBUF_X25_Y73_N16
\green[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|green[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(1));

-- Location: IOOBUF_X11_Y73_N9
\green[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|green[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(2));

-- Location: IOOBUF_X25_Y73_N23
\green[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|green[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(3));

-- Location: IOOBUF_X16_Y73_N9
\green[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|green[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(4));

-- Location: IOOBUF_X16_Y73_N2
\green[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|green[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(5));

-- Location: IOOBUF_X20_Y73_N2
\green[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|green[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(6));

-- Location: IOOBUF_X23_Y73_N16
\green[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|green[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(7));

-- Location: IOOBUF_X33_Y73_N2
\red[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|red[0]~16_combout\,
	devoe => ww_devoe,
	o => ww_red(0));

-- Location: IOOBUF_X31_Y73_N2
\red[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|red[0]~16_combout\,
	devoe => ww_devoe,
	o => ww_red(1));

-- Location: IOOBUF_X35_Y73_N23
\red[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|red[0]~16_combout\,
	devoe => ww_devoe,
	o => ww_red(2));

-- Location: IOOBUF_X33_Y73_N9
\red[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|red[0]~16_combout\,
	devoe => ww_devoe,
	o => ww_red(3));

-- Location: IOOBUF_X20_Y73_N9
\red[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|red[0]~16_combout\,
	devoe => ww_devoe,
	o => ww_red(4));

-- Location: IOOBUF_X40_Y73_N9
\red[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|red[0]~16_combout\,
	devoe => ww_devoe,
	o => ww_red(5));

-- Location: IOOBUF_X11_Y73_N23
\red[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|red[0]~16_combout\,
	devoe => ww_devoe,
	o => ww_red(6));

-- Location: IOOBUF_X20_Y73_N16
\red[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|red[0]~16_combout\,
	devoe => ww_devoe,
	o => ww_red(7));

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_1
\b2v_inst2|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 8,
	c0_initial => 1,
	c0_low => 8,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 112,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 47,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 16666,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 20,
	m => 47,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 310,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \b2v_inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \b2v_inst2|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \b2v_inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y55_N6
\b2v_inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~0_combout\ = \b2v_inst1|h_count\(0) $ (VCC)
-- \b2v_inst1|Add0~1\ = CARRY(\b2v_inst1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|h_count\(0),
	datad => VCC,
	combout => \b2v_inst1|Add0~0_combout\,
	cout => \b2v_inst1|Add0~1\);

-- Location: LCCOMB_X62_Y55_N2
\b2v_inst1|h_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|h_count~9_combout\ = (\b2v_inst1|Add0~0_combout\ & \b2v_inst1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~0_combout\,
	datac => \b2v_inst1|LessThan0~2_combout\,
	combout => \b2v_inst1|h_count~9_combout\);

-- Location: FF_X62_Y55_N3
\b2v_inst1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|h_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|h_count\(0));

-- Location: LCCOMB_X62_Y55_N8
\b2v_inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~2_combout\ = (\b2v_inst1|h_count\(1) & (!\b2v_inst1|Add0~1\)) # (!\b2v_inst1|h_count\(1) & ((\b2v_inst1|Add0~1\) # (GND)))
-- \b2v_inst1|Add0~3\ = CARRY((!\b2v_inst1|Add0~1\) # (!\b2v_inst1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|h_count\(1),
	datad => VCC,
	cin => \b2v_inst1|Add0~1\,
	combout => \b2v_inst1|Add0~2_combout\,
	cout => \b2v_inst1|Add0~3\);

-- Location: LCCOMB_X62_Y55_N26
\b2v_inst1|h_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|h_count~8_combout\ = (\b2v_inst1|LessThan0~2_combout\ & \b2v_inst1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|LessThan0~2_combout\,
	datac => \b2v_inst1|Add0~2_combout\,
	combout => \b2v_inst1|h_count~8_combout\);

-- Location: FF_X62_Y55_N27
\b2v_inst1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|h_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|h_count\(1));

-- Location: LCCOMB_X62_Y55_N10
\b2v_inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~4_combout\ = (\b2v_inst1|h_count\(2) & (\b2v_inst1|Add0~3\ $ (GND))) # (!\b2v_inst1|h_count\(2) & (!\b2v_inst1|Add0~3\ & VCC))
-- \b2v_inst1|Add0~5\ = CARRY((\b2v_inst1|h_count\(2) & !\b2v_inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|h_count\(2),
	datad => VCC,
	cin => \b2v_inst1|Add0~3\,
	combout => \b2v_inst1|Add0~4_combout\,
	cout => \b2v_inst1|Add0~5\);

-- Location: LCCOMB_X62_Y55_N0
\b2v_inst1|h_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|h_count~7_combout\ = (\b2v_inst1|LessThan0~2_combout\ & \b2v_inst1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|LessThan0~2_combout\,
	datad => \b2v_inst1|Add0~4_combout\,
	combout => \b2v_inst1|h_count~7_combout\);

-- Location: FF_X62_Y55_N1
\b2v_inst1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|h_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|h_count\(2));

-- Location: LCCOMB_X62_Y55_N12
\b2v_inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~6_combout\ = (\b2v_inst1|h_count\(3) & (!\b2v_inst1|Add0~5\)) # (!\b2v_inst1|h_count\(3) & ((\b2v_inst1|Add0~5\) # (GND)))
-- \b2v_inst1|Add0~7\ = CARRY((!\b2v_inst1|Add0~5\) # (!\b2v_inst1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|h_count\(3),
	datad => VCC,
	cin => \b2v_inst1|Add0~5\,
	combout => \b2v_inst1|Add0~6_combout\,
	cout => \b2v_inst1|Add0~7\);

-- Location: LCCOMB_X63_Y55_N8
\b2v_inst1|h_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|h_count~6_combout\ = (\b2v_inst1|LessThan0~2_combout\ & \b2v_inst1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|LessThan0~2_combout\,
	datad => \b2v_inst1|Add0~6_combout\,
	combout => \b2v_inst1|h_count~6_combout\);

-- Location: FF_X63_Y55_N9
\b2v_inst1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|h_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|h_count\(3));

-- Location: LCCOMB_X62_Y55_N14
\b2v_inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~8_combout\ = (\b2v_inst1|h_count\(4) & (\b2v_inst1|Add0~7\ $ (GND))) # (!\b2v_inst1|h_count\(4) & (!\b2v_inst1|Add0~7\ & VCC))
-- \b2v_inst1|Add0~9\ = CARRY((\b2v_inst1|h_count\(4) & !\b2v_inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|h_count\(4),
	datad => VCC,
	cin => \b2v_inst1|Add0~7\,
	combout => \b2v_inst1|Add0~8_combout\,
	cout => \b2v_inst1|Add0~9\);

-- Location: LCCOMB_X62_Y54_N24
\b2v_inst1|h_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|h_count~5_combout\ = (\b2v_inst1|LessThan0~2_combout\ & \b2v_inst1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|LessThan0~2_combout\,
	datad => \b2v_inst1|Add0~8_combout\,
	combout => \b2v_inst1|h_count~5_combout\);

-- Location: FF_X62_Y54_N25
\b2v_inst1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|h_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|h_count\(4));

-- Location: LCCOMB_X62_Y55_N16
\b2v_inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~10_combout\ = (\b2v_inst1|h_count\(5) & (!\b2v_inst1|Add0~9\)) # (!\b2v_inst1|h_count\(5) & ((\b2v_inst1|Add0~9\) # (GND)))
-- \b2v_inst1|Add0~11\ = CARRY((!\b2v_inst1|Add0~9\) # (!\b2v_inst1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|h_count\(5),
	datad => VCC,
	cin => \b2v_inst1|Add0~9\,
	combout => \b2v_inst1|Add0~10_combout\,
	cout => \b2v_inst1|Add0~11\);

-- Location: LCCOMB_X62_Y54_N0
\b2v_inst1|h_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|h_count~4_combout\ = (\b2v_inst1|LessThan0~2_combout\ & \b2v_inst1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|LessThan0~2_combout\,
	datac => \b2v_inst1|Add0~10_combout\,
	combout => \b2v_inst1|h_count~4_combout\);

-- Location: FF_X62_Y54_N1
\b2v_inst1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|h_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|h_count\(5));

-- Location: LCCOMB_X62_Y55_N18
\b2v_inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~12_combout\ = (\b2v_inst1|h_count\(6) & (\b2v_inst1|Add0~11\ $ (GND))) # (!\b2v_inst1|h_count\(6) & (!\b2v_inst1|Add0~11\ & VCC))
-- \b2v_inst1|Add0~13\ = CARRY((\b2v_inst1|h_count\(6) & !\b2v_inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|h_count\(6),
	datad => VCC,
	cin => \b2v_inst1|Add0~11\,
	combout => \b2v_inst1|Add0~12_combout\,
	cout => \b2v_inst1|Add0~13\);

-- Location: LCCOMB_X62_Y54_N8
\b2v_inst1|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|h_count~3_combout\ = (\b2v_inst1|LessThan0~2_combout\ & \b2v_inst1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|LessThan0~2_combout\,
	datad => \b2v_inst1|Add0~12_combout\,
	combout => \b2v_inst1|h_count~3_combout\);

-- Location: FF_X62_Y54_N9
\b2v_inst1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|h_count\(6));

-- Location: LCCOMB_X62_Y55_N28
\b2v_inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|LessThan0~0_combout\ = (((!\b2v_inst1|h_count\(4)) # (!\b2v_inst1|h_count\(3))) # (!\b2v_inst1|h_count\(2))) # (!\b2v_inst1|h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|h_count\(1),
	datab => \b2v_inst1|h_count\(2),
	datac => \b2v_inst1|h_count\(3),
	datad => \b2v_inst1|h_count\(4),
	combout => \b2v_inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X62_Y55_N20
\b2v_inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~14_combout\ = (\b2v_inst1|h_count\(7) & (!\b2v_inst1|Add0~13\)) # (!\b2v_inst1|h_count\(7) & ((\b2v_inst1|Add0~13\) # (GND)))
-- \b2v_inst1|Add0~15\ = CARRY((!\b2v_inst1|Add0~13\) # (!\b2v_inst1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|h_count\(7),
	datad => VCC,
	cin => \b2v_inst1|Add0~13\,
	combout => \b2v_inst1|Add0~14_combout\,
	cout => \b2v_inst1|Add0~15\);

-- Location: LCCOMB_X62_Y54_N30
\b2v_inst1|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|h_count~0_combout\ = (\b2v_inst1|Add0~14_combout\ & \b2v_inst1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Add0~14_combout\,
	datac => \b2v_inst1|LessThan0~2_combout\,
	combout => \b2v_inst1|h_count~0_combout\);

-- Location: FF_X62_Y54_N31
\b2v_inst1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|h_count\(7));

-- Location: LCCOMB_X62_Y55_N4
\b2v_inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|LessThan0~1_combout\ = (\b2v_inst1|h_count\(7)) # ((\b2v_inst1|h_count\(5)) # ((\b2v_inst1|h_count\(0) & !\b2v_inst1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|h_count\(0),
	datab => \b2v_inst1|LessThan0~0_combout\,
	datac => \b2v_inst1|h_count\(7),
	datad => \b2v_inst1|h_count\(5),
	combout => \b2v_inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X62_Y55_N22
\b2v_inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~16_combout\ = (\b2v_inst1|h_count\(8) & (\b2v_inst1|Add0~15\ $ (GND))) # (!\b2v_inst1|h_count\(8) & (!\b2v_inst1|Add0~15\ & VCC))
-- \b2v_inst1|Add0~17\ = CARRY((\b2v_inst1|h_count\(8) & !\b2v_inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|h_count\(8),
	datad => VCC,
	cin => \b2v_inst1|Add0~15\,
	combout => \b2v_inst1|Add0~16_combout\,
	cout => \b2v_inst1|Add0~17\);

-- Location: LCCOMB_X62_Y54_N14
\b2v_inst1|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|h_count~2_combout\ = (\b2v_inst1|LessThan0~2_combout\ & \b2v_inst1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|LessThan0~2_combout\,
	datad => \b2v_inst1|Add0~16_combout\,
	combout => \b2v_inst1|h_count~2_combout\);

-- Location: LCCOMB_X62_Y54_N18
\b2v_inst1|h_count[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|h_count[8]~feeder_combout\ = \b2v_inst1|h_count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|h_count~2_combout\,
	combout => \b2v_inst1|h_count[8]~feeder_combout\);

-- Location: FF_X62_Y54_N19
\b2v_inst1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|h_count[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|h_count\(8));

-- Location: LCCOMB_X62_Y55_N30
\b2v_inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|LessThan0~2_combout\ = (((!\b2v_inst1|h_count\(6) & !\b2v_inst1|LessThan0~1_combout\)) # (!\b2v_inst1|h_count\(8))) # (!\b2v_inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|h_count\(9),
	datab => \b2v_inst1|h_count\(6),
	datac => \b2v_inst1|LessThan0~1_combout\,
	datad => \b2v_inst1|h_count\(8),
	combout => \b2v_inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X62_Y54_N22
\b2v_inst1|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|h_count~1_combout\ = (\b2v_inst1|LessThan0~2_combout\ & \b2v_inst1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|LessThan0~2_combout\,
	datad => \b2v_inst1|Add0~18_combout\,
	combout => \b2v_inst1|h_count~1_combout\);

-- Location: FF_X62_Y54_N23
\b2v_inst1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|h_count\(9));

-- Location: LCCOMB_X62_Y55_N24
\b2v_inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~18_combout\ = \b2v_inst1|h_count\(9) $ (\b2v_inst1|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|h_count\(9),
	cin => \b2v_inst1|Add0~17\,
	combout => \b2v_inst1|Add0~18_combout\);

-- Location: LCCOMB_X62_Y54_N20
\b2v_inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|process_0~0_combout\ = ((\b2v_inst1|Add0~10_combout\ & (\b2v_inst1|Add0~8_combout\ & \b2v_inst1|Add0~12_combout\)) # (!\b2v_inst1|Add0~10_combout\ & (!\b2v_inst1|Add0~8_combout\ & !\b2v_inst1|Add0~12_combout\))) # 
-- (!\b2v_inst1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~10_combout\,
	datab => \b2v_inst1|Add0~8_combout\,
	datac => \b2v_inst1|LessThan0~2_combout\,
	datad => \b2v_inst1|Add0~12_combout\,
	combout => \b2v_inst1|process_0~0_combout\);

-- Location: LCCOMB_X62_Y54_N26
\b2v_inst1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|process_0~1_combout\ = ((\b2v_inst1|process_0~0_combout\) # ((\b2v_inst1|Add0~16_combout\) # (!\b2v_inst1|h_count~0_combout\))) # (!\b2v_inst1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~18_combout\,
	datab => \b2v_inst1|process_0~0_combout\,
	datac => \b2v_inst1|h_count~0_combout\,
	datad => \b2v_inst1|Add0~16_combout\,
	combout => \b2v_inst1|process_0~1_combout\);

-- Location: FF_X62_Y54_N27
\b2v_inst1|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|h_sync~q\);

-- Location: FF_X67_Y54_N21
\b2v_inst1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|Add1~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|v_count\(9));

-- Location: LCCOMB_X68_Y54_N10
\b2v_inst1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~0_combout\ = \b2v_inst1|v_count\(0) $ (VCC)
-- \b2v_inst1|Add1~1\ = CARRY(\b2v_inst1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|v_count\(0),
	datad => VCC,
	combout => \b2v_inst1|Add1~0_combout\,
	cout => \b2v_inst1|Add1~1\);

-- Location: LCCOMB_X67_Y54_N10
\b2v_inst1|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~29_combout\ = (\b2v_inst1|LessThan0~2_combout\ & (((\b2v_inst1|v_count\(0))))) # (!\b2v_inst1|LessThan0~2_combout\ & (\b2v_inst1|LessThan1~2_combout\ & ((\b2v_inst1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|LessThan0~2_combout\,
	datab => \b2v_inst1|LessThan1~2_combout\,
	datac => \b2v_inst1|v_count\(0),
	datad => \b2v_inst1|Add1~0_combout\,
	combout => \b2v_inst1|Add1~29_combout\);

-- Location: FF_X67_Y54_N11
\b2v_inst1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|v_count\(0));

-- Location: LCCOMB_X68_Y54_N12
\b2v_inst1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~2_combout\ = (\b2v_inst1|v_count\(1) & (!\b2v_inst1|Add1~1\)) # (!\b2v_inst1|v_count\(1) & ((\b2v_inst1|Add1~1\) # (GND)))
-- \b2v_inst1|Add1~3\ = CARRY((!\b2v_inst1|Add1~1\) # (!\b2v_inst1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|v_count\(1),
	datad => VCC,
	cin => \b2v_inst1|Add1~1\,
	combout => \b2v_inst1|Add1~2_combout\,
	cout => \b2v_inst1|Add1~3\);

-- Location: LCCOMB_X68_Y54_N8
\b2v_inst1|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~23_combout\ = (\b2v_inst1|LessThan0~2_combout\ & (((\b2v_inst1|v_count\(1))))) # (!\b2v_inst1|LessThan0~2_combout\ & (\b2v_inst1|Add1~2_combout\ & ((\b2v_inst1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add1~2_combout\,
	datab => \b2v_inst1|LessThan0~2_combout\,
	datac => \b2v_inst1|v_count\(1),
	datad => \b2v_inst1|LessThan1~2_combout\,
	combout => \b2v_inst1|Add1~23_combout\);

-- Location: FF_X68_Y54_N9
\b2v_inst1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|v_count\(1));

-- Location: LCCOMB_X68_Y54_N14
\b2v_inst1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~4_combout\ = (\b2v_inst1|v_count\(2) & (\b2v_inst1|Add1~3\ $ (GND))) # (!\b2v_inst1|v_count\(2) & (!\b2v_inst1|Add1~3\ & VCC))
-- \b2v_inst1|Add1~5\ = CARRY((\b2v_inst1|v_count\(2) & !\b2v_inst1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|v_count\(2),
	datad => VCC,
	cin => \b2v_inst1|Add1~3\,
	combout => \b2v_inst1|Add1~4_combout\,
	cout => \b2v_inst1|Add1~5\);

-- Location: LCCOMB_X68_Y54_N2
\b2v_inst1|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~21_combout\ = (\b2v_inst1|LessThan0~2_combout\ & (((\b2v_inst1|v_count\(2))))) # (!\b2v_inst1|LessThan0~2_combout\ & (\b2v_inst1|Add1~4_combout\ & ((\b2v_inst1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add1~4_combout\,
	datab => \b2v_inst1|LessThan0~2_combout\,
	datac => \b2v_inst1|v_count\(2),
	datad => \b2v_inst1|LessThan1~2_combout\,
	combout => \b2v_inst1|Add1~21_combout\);

-- Location: FF_X68_Y54_N3
\b2v_inst1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|Add1~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|v_count\(2));

-- Location: LCCOMB_X68_Y54_N16
\b2v_inst1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~6_combout\ = (\b2v_inst1|v_count\(3) & (!\b2v_inst1|Add1~5\)) # (!\b2v_inst1|v_count\(3) & ((\b2v_inst1|Add1~5\) # (GND)))
-- \b2v_inst1|Add1~7\ = CARRY((!\b2v_inst1|Add1~5\) # (!\b2v_inst1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|v_count\(3),
	datad => VCC,
	cin => \b2v_inst1|Add1~5\,
	combout => \b2v_inst1|Add1~6_combout\,
	cout => \b2v_inst1|Add1~7\);

-- Location: LCCOMB_X68_Y54_N0
\b2v_inst1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~24_combout\ = (\b2v_inst1|LessThan0~2_combout\ & (((\b2v_inst1|v_count\(3))))) # (!\b2v_inst1|LessThan0~2_combout\ & (\b2v_inst1|LessThan1~2_combout\ & ((\b2v_inst1|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|LessThan0~2_combout\,
	datab => \b2v_inst1|LessThan1~2_combout\,
	datac => \b2v_inst1|v_count\(3),
	datad => \b2v_inst1|Add1~6_combout\,
	combout => \b2v_inst1|Add1~24_combout\);

-- Location: FF_X68_Y54_N1
\b2v_inst1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|v_count\(3));

-- Location: LCCOMB_X68_Y54_N18
\b2v_inst1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~8_combout\ = (\b2v_inst1|v_count\(4) & (\b2v_inst1|Add1~7\ $ (GND))) # (!\b2v_inst1|v_count\(4) & (!\b2v_inst1|Add1~7\ & VCC))
-- \b2v_inst1|Add1~9\ = CARRY((\b2v_inst1|v_count\(4) & !\b2v_inst1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|v_count\(4),
	datad => VCC,
	cin => \b2v_inst1|Add1~7\,
	combout => \b2v_inst1|Add1~8_combout\,
	cout => \b2v_inst1|Add1~9\);

-- Location: LCCOMB_X68_Y54_N4
\b2v_inst1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~22_combout\ = (\b2v_inst1|LessThan0~2_combout\ & (((\b2v_inst1|v_count\(4))))) # (!\b2v_inst1|LessThan0~2_combout\ & (\b2v_inst1|LessThan1~2_combout\ & ((\b2v_inst1|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|LessThan0~2_combout\,
	datab => \b2v_inst1|LessThan1~2_combout\,
	datac => \b2v_inst1|v_count\(4),
	datad => \b2v_inst1|Add1~8_combout\,
	combout => \b2v_inst1|Add1~22_combout\);

-- Location: FF_X68_Y54_N5
\b2v_inst1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|v_count\(4));

-- Location: LCCOMB_X68_Y54_N20
\b2v_inst1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~10_combout\ = (\b2v_inst1|v_count\(5) & (!\b2v_inst1|Add1~9\)) # (!\b2v_inst1|v_count\(5) & ((\b2v_inst1|Add1~9\) # (GND)))
-- \b2v_inst1|Add1~11\ = CARRY((!\b2v_inst1|Add1~9\) # (!\b2v_inst1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|v_count\(5),
	datad => VCC,
	cin => \b2v_inst1|Add1~9\,
	combout => \b2v_inst1|Add1~10_combout\,
	cout => \b2v_inst1|Add1~11\);

-- Location: LCCOMB_X67_Y54_N12
\b2v_inst1|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~25_combout\ = (\b2v_inst1|LessThan0~2_combout\ & (((\b2v_inst1|v_count\(5))))) # (!\b2v_inst1|LessThan0~2_combout\ & (\b2v_inst1|LessThan1~2_combout\ & ((\b2v_inst1|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|LessThan0~2_combout\,
	datab => \b2v_inst1|LessThan1~2_combout\,
	datac => \b2v_inst1|v_count\(5),
	datad => \b2v_inst1|Add1~10_combout\,
	combout => \b2v_inst1|Add1~25_combout\);

-- Location: FF_X67_Y54_N13
\b2v_inst1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|v_count\(5));

-- Location: LCCOMB_X68_Y54_N22
\b2v_inst1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~12_combout\ = (\b2v_inst1|v_count\(6) & (\b2v_inst1|Add1~11\ $ (GND))) # (!\b2v_inst1|v_count\(6) & (!\b2v_inst1|Add1~11\ & VCC))
-- \b2v_inst1|Add1~13\ = CARRY((\b2v_inst1|v_count\(6) & !\b2v_inst1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|v_count\(6),
	datad => VCC,
	cin => \b2v_inst1|Add1~11\,
	combout => \b2v_inst1|Add1~12_combout\,
	cout => \b2v_inst1|Add1~13\);

-- Location: LCCOMB_X67_Y54_N14
\b2v_inst1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~26_combout\ = (\b2v_inst1|LessThan0~2_combout\ & (((\b2v_inst1|v_count\(6))))) # (!\b2v_inst1|LessThan0~2_combout\ & (\b2v_inst1|LessThan1~2_combout\ & ((\b2v_inst1|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|LessThan0~2_combout\,
	datab => \b2v_inst1|LessThan1~2_combout\,
	datac => \b2v_inst1|v_count\(6),
	datad => \b2v_inst1|Add1~12_combout\,
	combout => \b2v_inst1|Add1~26_combout\);

-- Location: FF_X67_Y54_N15
\b2v_inst1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|v_count\(6));

-- Location: LCCOMB_X68_Y54_N30
\b2v_inst1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|LessThan1~1_combout\ = (!\b2v_inst1|v_count\(6) & (!\b2v_inst1|v_count\(4) & !\b2v_inst1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|v_count\(6),
	datac => \b2v_inst1|v_count\(4),
	datad => \b2v_inst1|v_count\(5),
	combout => \b2v_inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X68_Y54_N24
\b2v_inst1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~14_combout\ = (\b2v_inst1|v_count\(7) & (!\b2v_inst1|Add1~13\)) # (!\b2v_inst1|v_count\(7) & ((\b2v_inst1|Add1~13\) # (GND)))
-- \b2v_inst1|Add1~15\ = CARRY((!\b2v_inst1|Add1~13\) # (!\b2v_inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|v_count\(7),
	datad => VCC,
	cin => \b2v_inst1|Add1~13\,
	combout => \b2v_inst1|Add1~14_combout\,
	cout => \b2v_inst1|Add1~15\);

-- Location: LCCOMB_X67_Y54_N16
\b2v_inst1|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~27_combout\ = (\b2v_inst1|LessThan0~2_combout\ & (((\b2v_inst1|v_count\(7))))) # (!\b2v_inst1|LessThan0~2_combout\ & (\b2v_inst1|LessThan1~2_combout\ & ((\b2v_inst1|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|LessThan0~2_combout\,
	datab => \b2v_inst1|LessThan1~2_combout\,
	datac => \b2v_inst1|v_count\(7),
	datad => \b2v_inst1|Add1~14_combout\,
	combout => \b2v_inst1|Add1~27_combout\);

-- Location: FF_X67_Y54_N17
\b2v_inst1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|Add1~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|v_count\(7));

-- Location: LCCOMB_X68_Y54_N26
\b2v_inst1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~16_combout\ = (\b2v_inst1|v_count\(8) & (\b2v_inst1|Add1~15\ $ (GND))) # (!\b2v_inst1|v_count\(8) & (!\b2v_inst1|Add1~15\ & VCC))
-- \b2v_inst1|Add1~17\ = CARRY((\b2v_inst1|v_count\(8) & !\b2v_inst1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|v_count\(8),
	datad => VCC,
	cin => \b2v_inst1|Add1~15\,
	combout => \b2v_inst1|Add1~16_combout\,
	cout => \b2v_inst1|Add1~17\);

-- Location: LCCOMB_X67_Y54_N22
\b2v_inst1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~28_combout\ = (\b2v_inst1|LessThan0~2_combout\ & (((\b2v_inst1|v_count\(8))))) # (!\b2v_inst1|LessThan0~2_combout\ & (\b2v_inst1|LessThan1~2_combout\ & ((\b2v_inst1|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|LessThan0~2_combout\,
	datab => \b2v_inst1|LessThan1~2_combout\,
	datac => \b2v_inst1|v_count\(8),
	datad => \b2v_inst1|Add1~16_combout\,
	combout => \b2v_inst1|Add1~28_combout\);

-- Location: FF_X67_Y54_N23
\b2v_inst1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|v_count\(8));

-- Location: LCCOMB_X67_Y54_N2
\b2v_inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|LessThan1~0_combout\ = (!\b2v_inst1|v_count\(8) & (!\b2v_inst1|v_count\(7) & ((!\b2v_inst1|v_count\(2)) # (!\b2v_inst1|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|v_count\(8),
	datab => \b2v_inst1|v_count\(7),
	datac => \b2v_inst1|v_count\(3),
	datad => \b2v_inst1|v_count\(2),
	combout => \b2v_inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X67_Y54_N24
\b2v_inst1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|LessThan1~2_combout\ = ((\b2v_inst1|LessThan1~1_combout\ & \b2v_inst1|LessThan1~0_combout\)) # (!\b2v_inst1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|v_count\(9),
	datac => \b2v_inst1|LessThan1~1_combout\,
	datad => \b2v_inst1|LessThan1~0_combout\,
	combout => \b2v_inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X68_Y54_N28
\b2v_inst1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~18_combout\ = \b2v_inst1|Add1~17\ $ (\b2v_inst1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|v_count\(9),
	cin => \b2v_inst1|Add1~17\,
	combout => \b2v_inst1|Add1~18_combout\);

-- Location: LCCOMB_X67_Y54_N4
\b2v_inst1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~20_combout\ = (\b2v_inst1|LessThan0~2_combout\ & (\b2v_inst1|v_count\(9))) # (!\b2v_inst1|LessThan0~2_combout\ & (((\b2v_inst1|LessThan1~2_combout\ & \b2v_inst1|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|v_count\(9),
	datab => \b2v_inst1|LessThan1~2_combout\,
	datac => \b2v_inst1|LessThan0~2_combout\,
	datad => \b2v_inst1|Add1~18_combout\,
	combout => \b2v_inst1|Add1~20_combout\);

-- Location: LCCOMB_X67_Y54_N30
\b2v_inst1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|process_0~3_combout\ = (\b2v_inst1|Add1~28_combout\ & (\b2v_inst1|Add1~26_combout\ & (\b2v_inst1|Add1~27_combout\ & \b2v_inst1|Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add1~28_combout\,
	datab => \b2v_inst1|Add1~26_combout\,
	datac => \b2v_inst1|Add1~27_combout\,
	datad => \b2v_inst1|Add1~25_combout\,
	combout => \b2v_inst1|process_0~3_combout\);

-- Location: LCCOMB_X68_Y54_N6
\b2v_inst1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|process_0~2_combout\ = (((\b2v_inst1|Add1~21_combout\) # (\b2v_inst1|Add1~22_combout\)) # (!\b2v_inst1|Add1~24_combout\)) # (!\b2v_inst1|Add1~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add1~23_combout\,
	datab => \b2v_inst1|Add1~24_combout\,
	datac => \b2v_inst1|Add1~21_combout\,
	datad => \b2v_inst1|Add1~22_combout\,
	combout => \b2v_inst1|process_0~2_combout\);

-- Location: LCCOMB_X67_Y54_N8
\b2v_inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|process_0~4_combout\ = (!\b2v_inst1|Add1~20_combout\ & (\b2v_inst1|process_0~3_combout\ & !\b2v_inst1|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Add1~20_combout\,
	datac => \b2v_inst1|process_0~3_combout\,
	datad => \b2v_inst1|process_0~2_combout\,
	combout => \b2v_inst1|process_0~4_combout\);

-- Location: FF_X67_Y54_N9
\b2v_inst1|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|v_sync~q\);

-- Location: LCCOMB_X62_Y54_N16
\b2v_inst1|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|LessThan6~0_combout\ = (((!\b2v_inst1|Add0~14_combout\ & !\b2v_inst1|Add0~16_combout\)) # (!\b2v_inst1|LessThan0~2_combout\)) # (!\b2v_inst1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~18_combout\,
	datab => \b2v_inst1|Add0~14_combout\,
	datac => \b2v_inst1|LessThan0~2_combout\,
	datad => \b2v_inst1|Add0~16_combout\,
	combout => \b2v_inst1|LessThan6~0_combout\);

-- Location: FF_X66_Y54_N31
\b2v_inst1|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|h_count~6_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|column\(3));

-- Location: FF_X66_Y54_N13
\b2v_inst1|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|h_count~5_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|column\(4));

-- Location: FF_X66_Y54_N5
\b2v_inst1|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|h_count~7_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|column\(2));

-- Location: FF_X66_Y54_N9
\b2v_inst1|column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|h_count~8_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|column\(1));

-- Location: LCCOMB_X66_Y54_N0
\b2v_inst1|column[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|column[0]~0_combout\ = !\b2v_inst1|h_count~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|h_count~9_combout\,
	combout => \b2v_inst1|column[0]~0_combout\);

-- Location: FF_X66_Y54_N1
\b2v_inst1|column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|column[0]~0_combout\,
	ena => \b2v_inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|column\(0));

-- Location: LCCOMB_X66_Y53_N4
\b2v_inst|process_0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~31_combout\ = (\b2v_inst1|column\(1) & !\b2v_inst1|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(1),
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|process_0~31_combout\);

-- Location: LCCOMB_X66_Y54_N14
\b2v_inst|process_0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~32_combout\ = (\b2v_inst1|column\(3) & (((!\b2v_inst1|column\(2) & !\b2v_inst|process_0~31_combout\)) # (!\b2v_inst1|column\(4)))) # (!\b2v_inst1|column\(3) & ((\b2v_inst1|column\(4)) # ((\b2v_inst1|column\(2) & 
-- \b2v_inst|process_0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(3),
	datab => \b2v_inst1|column\(4),
	datac => \b2v_inst1|column\(2),
	datad => \b2v_inst|process_0~31_combout\,
	combout => \b2v_inst|process_0~32_combout\);

-- Location: LCCOMB_X62_Y54_N12
\b2v_inst1|column[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|column[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b2v_inst1|column[31]~feeder_combout\);

-- Location: FF_X62_Y54_N13
\b2v_inst1|column[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|column[31]~feeder_combout\,
	ena => \b2v_inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|column\(31));

-- Location: FF_X62_Y54_N15
\b2v_inst1|column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|h_count~1_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|column\(9));

-- Location: FF_X62_Y54_N5
\b2v_inst1|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|h_count~0_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|column\(7));

-- Location: FF_X62_Y54_N3
\b2v_inst1|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|h_count~3_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|column\(6));

-- Location: LCCOMB_X62_Y54_N6
\b2v_inst|process_0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~30_combout\ = (\b2v_inst1|column\(31) & (!\b2v_inst1|column\(9) & (!\b2v_inst1|column\(7) & !\b2v_inst1|column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(31),
	datab => \b2v_inst1|column\(9),
	datac => \b2v_inst1|column\(7),
	datad => \b2v_inst1|column\(6),
	combout => \b2v_inst|process_0~30_combout\);

-- Location: FF_X63_Y54_N13
\b2v_inst1|column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|h_count~2_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|column\(8));

-- Location: FF_X63_Y54_N19
\b2v_inst1|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|h_count~4_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|column\(5));

-- Location: LCCOMB_X63_Y54_N12
\b2v_inst|red~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~0_combout\ = (\b2v_inst|process_0~30_combout\ & (\b2v_inst1|column\(8) & \b2v_inst1|column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|process_0~30_combout\,
	datac => \b2v_inst1|column\(8),
	datad => \b2v_inst1|column\(5),
	combout => \b2v_inst|red~0_combout\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X115_Y42_N15
\ctrl[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl(0),
	o => \ctrl[0]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\ctrl[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl(1),
	o => \ctrl[1]~input_o\);

-- Location: LCCOMB_X72_Y50_N26
\p2|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2|Selector0~1_combout\ = (!\p2|S.STAND~q\ & \ctrl[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|S.STAND~q\,
	datad => \ctrl[1]~input_o\,
	combout => \p2|Selector0~1_combout\);

-- Location: IOIBUF_X115_Y40_N8
\ctrl[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl(2),
	o => \ctrl[2]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\ctrl[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl(3),
	o => \ctrl[3]~input_o\);

-- Location: LCCOMB_X69_Y54_N8
\p1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Selector2~1_combout\ = (!\ctrl[2]~input_o\ & ((\p1|S.STANDTHRUST~q\) # ((\ctrl[3]~input_o\ & \p1|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[2]~input_o\,
	datab => \ctrl[3]~input_o\,
	datac => \p1|S.STANDTHRUST~q\,
	datad => \p1|Selector2~0_combout\,
	combout => \p1|Selector2~1_combout\);

-- Location: IOIBUF_X115_Y17_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X69_Y54_N9
\p1|S.STANDTHRUST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p1|Selector2~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|S.STANDTHRUST~q\);

-- Location: LCCOMB_X69_Y54_N18
\p1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Selector3~0_combout\ = (!\ctrl[2]~input_o\ & ((\p1|S.CROUCHTHRUST~q\) # ((\p1|Selector0~0_combout\ & !\ctrl[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Selector0~0_combout\,
	datab => \ctrl[3]~input_o\,
	datac => \p1|S.CROUCHTHRUST~q\,
	datad => \ctrl[2]~input_o\,
	combout => \p1|Selector3~0_combout\);

-- Location: FF_X69_Y54_N19
\p1|S.CROUCHTHRUST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p1|Selector3~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|S.CROUCHTHRUST~q\);

-- Location: LCCOMB_X69_Y54_N0
\b2v_inst|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal10~0_combout\ = (!\p1|S.LOSE~q\ & ((\p1|S.CROUCHTHRUST~q\) # ((\p1|S.STANDTHRUST~q\ & \p1|S.CROUCH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|S.LOSE~q\,
	datab => \p1|S.STANDTHRUST~q\,
	datac => \p1|S.CROUCH~q\,
	datad => \p1|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|Equal10~0_combout\);

-- Location: LCCOMB_X72_Y50_N16
\p2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2|Selector2~0_combout\ = (!\b2v_inst|Equal10~0_combout\ & !\p2|S.STAND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Equal10~0_combout\,
	datad => \p2|S.STAND~q\,
	combout => \p2|Selector2~0_combout\);

-- Location: LCCOMB_X72_Y50_N12
\p2|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2|Selector2~1_combout\ = (!\ctrl[0]~input_o\ & ((\p2|S.STANDTHRUST~q\) # ((\p2|Selector2~0_combout\ & \ctrl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[0]~input_o\,
	datab => \p2|Selector2~0_combout\,
	datac => \p2|S.STANDTHRUST~q\,
	datad => \ctrl[1]~input_o\,
	combout => \p2|Selector2~1_combout\);

-- Location: FF_X72_Y50_N13
\p2|S.STANDTHRUST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2|Selector2~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2|S.STANDTHRUST~q\);

-- Location: LCCOMB_X72_Y50_N30
\p2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2|Selector1~0_combout\ = (!\ctrl[1]~input_o\ & ((\p2|Selector2~0_combout\) # ((\ctrl[0]~input_o\ & \p2|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[0]~input_o\,
	datab => \p2|Selector2~0_combout\,
	datac => \p2|Selector0~0_combout\,
	datad => \ctrl[1]~input_o\,
	combout => \p2|Selector1~0_combout\);

-- Location: FF_X72_Y50_N31
\p2|S.CROUCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2|Selector1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2|S.CROUCH~q\);

-- Location: LCCOMB_X69_Y54_N2
\b2v_inst|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal10~1_combout\ = (!\p1|S.LOSE~q\ & (\p1|S.STANDTHRUST~q\ & (!\p1|S.CROUCH~q\ & !\p1|S.CROUCHTHRUST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|S.LOSE~q\,
	datab => \p1|S.STANDTHRUST~q\,
	datac => \p1|S.CROUCH~q\,
	datad => \p1|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|Equal10~1_combout\);

-- Location: LCCOMB_X72_Y50_N14
\p2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2|Selector0~0_combout\ = (\p2|S.CROUCH~q\ & !\b2v_inst|Equal10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|S.CROUCH~q\,
	datac => \b2v_inst|Equal10~1_combout\,
	combout => \p2|Selector0~0_combout\);

-- Location: LCCOMB_X72_Y50_N2
\p2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2|Selector3~0_combout\ = (!\ctrl[0]~input_o\ & ((\p2|S.CROUCHTHRUST~q\) # ((\p2|Selector0~0_combout\ & !\ctrl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[0]~input_o\,
	datab => \p2|Selector0~0_combout\,
	datac => \p2|S.CROUCHTHRUST~q\,
	datad => \ctrl[1]~input_o\,
	combout => \p2|Selector3~0_combout\);

-- Location: FF_X72_Y50_N3
\p2|S.CROUCHTHRUST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2|Selector3~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2|S.CROUCHTHRUST~q\);

-- Location: LCCOMB_X72_Y50_N28
\p2|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2|Selector0~2_combout\ = (\p2|S.STANDTHRUST~q\) # ((\p2|S.CROUCHTHRUST~q\) # ((\p2|Selector0~1_combout\ & !\b2v_inst|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|Selector0~1_combout\,
	datab => \p2|S.STANDTHRUST~q\,
	datac => \b2v_inst|Equal10~0_combout\,
	datad => \p2|S.CROUCHTHRUST~q\,
	combout => \p2|Selector0~2_combout\);

-- Location: LCCOMB_X72_Y50_N10
\p2|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2|Selector0~3_combout\ = (\ctrl[0]~input_o\ & (!\p2|Selector0~2_combout\ & ((!\ctrl[1]~input_o\) # (!\p2|Selector0~0_combout\)))) # (!\ctrl[0]~input_o\ & (((!\ctrl[1]~input_o\) # (!\p2|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[0]~input_o\,
	datab => \p2|Selector0~2_combout\,
	datac => \p2|Selector0~0_combout\,
	datad => \ctrl[1]~input_o\,
	combout => \p2|Selector0~3_combout\);

-- Location: FF_X72_Y50_N11
\p2|S.STAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2|Selector0~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2|S.STAND~q\);

-- Location: LCCOMB_X72_Y50_N20
\p2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2|Selector4~0_combout\ = (\p2|S.STAND~q\ & (\b2v_inst|Equal10~1_combout\ & (\p2|S.CROUCH~q\))) # (!\p2|S.STAND~q\ & ((\b2v_inst|Equal10~0_combout\) # ((\b2v_inst|Equal10~1_combout\ & \p2|S.CROUCH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|S.STAND~q\,
	datab => \b2v_inst|Equal10~1_combout\,
	datac => \p2|S.CROUCH~q\,
	datad => \b2v_inst|Equal10~0_combout\,
	combout => \p2|Selector4~0_combout\);

-- Location: LCCOMB_X72_Y50_N8
\p2|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2|Selector4~1_combout\ = (\p2|S.LOSE~q\) # (\p2|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|S.LOSE~q\,
	datad => \p2|Selector4~0_combout\,
	combout => \p2|Selector4~1_combout\);

-- Location: FF_X72_Y50_N9
\p2|S.LOSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2|Selector4~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2|S.LOSE~q\);

-- Location: LCCOMB_X73_Y50_N16
\b2v_inst|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal14~0_combout\ = (!\p2|S.LOSE~q\ & ((\p2|S.CROUCHTHRUST~q\) # ((\p2|S.CROUCH~q\ & \p2|S.STANDTHRUST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|S.LOSE~q\,
	datab => \p2|S.CROUCH~q\,
	datac => \p2|S.STANDTHRUST~q\,
	datad => \p2|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|Equal14~0_combout\);

-- Location: LCCOMB_X69_Y54_N24
\p1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Selector2~0_combout\ = (!\p1|S.STAND~q\ & !\b2v_inst|Equal14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|S.STAND~q\,
	datad => \b2v_inst|Equal14~0_combout\,
	combout => \p1|Selector2~0_combout\);

-- Location: LCCOMB_X69_Y54_N14
\p1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Selector1~0_combout\ = (!\ctrl[3]~input_o\ & ((\p1|Selector2~0_combout\) # ((\p1|Selector0~0_combout\ & \ctrl[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Selector0~0_combout\,
	datab => \p1|Selector2~0_combout\,
	datac => \ctrl[3]~input_o\,
	datad => \ctrl[2]~input_o\,
	combout => \p1|Selector1~0_combout\);

-- Location: FF_X69_Y54_N15
\p1|S.CROUCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p1|Selector1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|S.CROUCH~q\);

-- Location: LCCOMB_X73_Y50_N18
\b2v_inst|Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal14~1_combout\ = (!\p2|S.LOSE~q\ & (!\p2|S.CROUCH~q\ & (\p2|S.STANDTHRUST~q\ & !\p2|S.CROUCHTHRUST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|S.LOSE~q\,
	datab => \p2|S.CROUCH~q\,
	datac => \p2|S.STANDTHRUST~q\,
	datad => \p2|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|Equal14~1_combout\);

-- Location: LCCOMB_X69_Y54_N10
\p1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Selector0~0_combout\ = (\p1|S.CROUCH~q\ & !\b2v_inst|Equal14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p1|S.CROUCH~q\,
	datad => \b2v_inst|Equal14~1_combout\,
	combout => \p1|Selector0~0_combout\);

-- Location: LCCOMB_X70_Y54_N24
\p1|anim[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|anim[1]~0_combout\ = (!\p1|S.STANDTHRUST~q\ & !\p1|S.CROUCHTHRUST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|S.STANDTHRUST~q\,
	datad => \p1|S.CROUCHTHRUST~q\,
	combout => \p1|anim[1]~0_combout\);

-- Location: LCCOMB_X69_Y54_N30
\p1|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Selector0~1_combout\ = ((!\p1|S.STAND~q\ & (!\b2v_inst|Equal14~0_combout\ & \ctrl[3]~input_o\))) # (!\p1|anim[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|S.STAND~q\,
	datab => \b2v_inst|Equal14~0_combout\,
	datac => \ctrl[3]~input_o\,
	datad => \p1|anim[1]~0_combout\,
	combout => \p1|Selector0~1_combout\);

-- Location: LCCOMB_X69_Y54_N22
\p1|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Selector0~2_combout\ = (\p1|Selector0~0_combout\ & (!\ctrl[3]~input_o\ & ((!\ctrl[2]~input_o\) # (!\p1|Selector0~1_combout\)))) # (!\p1|Selector0~0_combout\ & (((!\ctrl[2]~input_o\)) # (!\p1|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Selector0~0_combout\,
	datab => \p1|Selector0~1_combout\,
	datac => \ctrl[3]~input_o\,
	datad => \ctrl[2]~input_o\,
	combout => \p1|Selector0~2_combout\);

-- Location: FF_X69_Y54_N23
\p1|S.STAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p1|Selector0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|S.STAND~q\);

-- Location: LCCOMB_X69_Y54_N4
\p1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Selector4~0_combout\ = (\p1|S.STAND~q\ & (((\p1|S.CROUCH~q\ & \b2v_inst|Equal14~1_combout\)))) # (!\p1|S.STAND~q\ & ((\b2v_inst|Equal14~0_combout\) # ((\p1|S.CROUCH~q\ & \b2v_inst|Equal14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|S.STAND~q\,
	datab => \b2v_inst|Equal14~0_combout\,
	datac => \p1|S.CROUCH~q\,
	datad => \b2v_inst|Equal14~1_combout\,
	combout => \p1|Selector4~0_combout\);

-- Location: LCCOMB_X69_Y54_N12
\p1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Selector4~1_combout\ = (\p1|Selector4~0_combout\) # (\p1|S.LOSE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|Selector4~0_combout\,
	datac => \p1|S.LOSE~q\,
	combout => \p1|Selector4~1_combout\);

-- Location: FF_X69_Y54_N13
\p1|S.LOSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p1|Selector4~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|S.LOSE~q\);

-- Location: LCCOMB_X67_Y54_N18
\b2v_inst|process_0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~33_combout\ = (\b2v_inst|process_0~32_combout\ & (\b2v_inst|red~0_combout\ & (!\p1|S.LOSE~q\ & \p1|anim[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~32_combout\,
	datab => \b2v_inst|red~0_combout\,
	datac => \p1|S.LOSE~q\,
	datad => \p1|anim[1]~0_combout\,
	combout => \b2v_inst|process_0~33_combout\);

-- Location: LCCOMB_X66_Y54_N12
\b2v_inst|red~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~9_combout\ = (\b2v_inst1|column\(2) & ((\b2v_inst1|column\(1)) # ((\b2v_inst1|column\(4)) # (!\b2v_inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(1),
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst1|column\(4),
	datad => \b2v_inst1|column\(2),
	combout => \b2v_inst|red~9_combout\);

-- Location: LCCOMB_X67_Y54_N0
\b2v_inst1|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|LessThan7~0_combout\ = (!\b2v_inst1|Add1~25_combout\) # (!\b2v_inst1|Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|Add1~26_combout\,
	datad => \b2v_inst1|Add1~25_combout\,
	combout => \b2v_inst1|LessThan7~0_combout\);

-- Location: LCCOMB_X67_Y54_N20
\b2v_inst1|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|LessThan7~1_combout\ = (!\b2v_inst1|Add1~20_combout\ & (((\b2v_inst1|LessThan7~0_combout\) # (!\b2v_inst1|Add1~28_combout\)) # (!\b2v_inst1|Add1~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add1~27_combout\,
	datab => \b2v_inst1|Add1~28_combout\,
	datac => \b2v_inst1|Add1~20_combout\,
	datad => \b2v_inst1|LessThan7~0_combout\,
	combout => \b2v_inst1|LessThan7~1_combout\);

-- Location: FF_X63_Y54_N5
\b2v_inst1|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|Add1~21_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|row\(2));

-- Location: LCCOMB_X63_Y54_N14
\b2v_inst1|row[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|row[0]~0_combout\ = !\b2v_inst1|Add1~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|Add1~29_combout\,
	combout => \b2v_inst1|row[0]~0_combout\);

-- Location: FF_X63_Y54_N15
\b2v_inst1|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|row[0]~0_combout\,
	ena => \b2v_inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|row\(0));

-- Location: FF_X63_Y54_N17
\b2v_inst1|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|Add1~24_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|row\(3));

-- Location: FF_X63_Y54_N1
\b2v_inst1|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|Add1~23_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|row\(1));

-- Location: LCCOMB_X63_Y54_N16
\b2v_inst|red~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~5_combout\ = (\b2v_inst1|row\(2) & (((\b2v_inst1|row\(1))))) # (!\b2v_inst1|row\(2) & ((\b2v_inst1|row\(0) & (!\b2v_inst1|row\(3) & !\b2v_inst1|row\(1))) # (!\b2v_inst1|row\(0) & ((\b2v_inst1|row\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(2),
	datab => \b2v_inst1|row\(0),
	datac => \b2v_inst1|row\(3),
	datad => \b2v_inst1|row\(1),
	combout => \b2v_inst|red~5_combout\);

-- Location: LCCOMB_X73_Y50_N26
\b2v_inst|red~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~6_combout\ = (\b2v_inst|red~5_combout\ & (((!\p2|S.CROUCH~q\ & !\p2|S.CROUCHTHRUST~q\)) # (!\b2v_inst1|row\(2)))) # (!\b2v_inst|red~5_combout\ & ((\p2|S.CROUCH~q\) # ((\b2v_inst1|row\(2)) # (\p2|S.CROUCHTHRUST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|red~5_combout\,
	datab => \p2|S.CROUCH~q\,
	datac => \b2v_inst1|row\(2),
	datad => \p2|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|red~6_combout\);

-- Location: FF_X63_Y54_N31
\b2v_inst1|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|Add1~25_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|row\(5));

-- Location: FF_X63_Y54_N11
\b2v_inst1|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|Add1~26_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|row\(6));

-- Location: FF_X63_Y54_N3
\b2v_inst1|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|Add1~27_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|row\(7));

-- Location: LCCOMB_X63_Y54_N10
\b2v_inst|green~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|green~0_combout\ = (\b2v_inst1|row\(5) & (\b2v_inst1|row\(6) & \b2v_inst1|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(5),
	datac => \b2v_inst1|row\(6),
	datad => \b2v_inst1|row\(7),
	combout => \b2v_inst|green~0_combout\);

-- Location: FF_X63_Y54_N7
\b2v_inst1|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|Add1~22_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|row\(4));

-- Location: FF_X63_Y54_N9
\b2v_inst1|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst1|Add1~28_combout\,
	sload => VCC,
	ena => \b2v_inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|row\(8));

-- Location: LCCOMB_X63_Y54_N22
\b2v_inst1|row[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|row[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b2v_inst1|row[31]~feeder_combout\);

-- Location: FF_X63_Y54_N23
\b2v_inst1|row[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|row[31]~feeder_combout\,
	ena => \b2v_inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|row\(31));

-- Location: LCCOMB_X63_Y54_N28
\b2v_inst|process_0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~34_combout\ = (!\b2v_inst1|row\(4) & (!\b2v_inst1|row\(8) & (\b2v_inst1|row\(31) & !\b2v_inst1|row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(4),
	datab => \b2v_inst1|row\(8),
	datac => \b2v_inst1|row\(31),
	datad => \b2v_inst1|row\(3),
	combout => \b2v_inst|process_0~34_combout\);

-- Location: LCCOMB_X73_Y50_N4
\b2v_inst|red~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~7_combout\ = (!\b2v_inst|red~6_combout\ & (\b2v_inst|green~0_combout\ & \b2v_inst|process_0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|red~6_combout\,
	datab => \b2v_inst|green~0_combout\,
	datac => \b2v_inst|process_0~34_combout\,
	combout => \b2v_inst|red~7_combout\);

-- Location: LCCOMB_X73_Y50_N22
\b2v_inst|red~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~8_combout\ = (!\p2|S.LOSE~q\ & (!\p2|S.STANDTHRUST~q\ & (\b2v_inst|red~7_combout\ & !\p2|S.CROUCHTHRUST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|S.LOSE~q\,
	datab => \p2|S.STANDTHRUST~q\,
	datac => \b2v_inst|red~7_combout\,
	datad => \p2|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|red~8_combout\);

-- Location: LCCOMB_X66_Y54_N30
\b2v_inst|red~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~10_combout\ = (\b2v_inst|red~8_combout\ & (\b2v_inst1|column\(4) $ (((\b2v_inst|red~9_combout\ & \b2v_inst1|column\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|red~9_combout\,
	datab => \b2v_inst|red~8_combout\,
	datac => \b2v_inst1|column\(3),
	datad => \b2v_inst1|column\(4),
	combout => \b2v_inst|red~10_combout\);

-- Location: LCCOMB_X66_Y53_N6
\b2v_inst|red~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~13_combout\ = (\b2v_inst1|column\(4) & (((!\b2v_inst1|column\(1) & !\b2v_inst1|column\(2))) # (!\b2v_inst1|column\(3)))) # (!\b2v_inst1|column\(4) & ((\b2v_inst1|column\(3)) # ((\b2v_inst1|column\(1) & \b2v_inst1|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(4),
	datab => \b2v_inst1|column\(1),
	datac => \b2v_inst1|column\(2),
	datad => \b2v_inst1|column\(3),
	combout => \b2v_inst|red~13_combout\);

-- Location: LCCOMB_X73_Y50_N12
\b2v_inst|red~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~11_combout\ = (\b2v_inst|red~5_combout\ & (\b2v_inst|Equal14~0_combout\ & (\b2v_inst1|row\(2)))) # (!\b2v_inst|red~5_combout\ & (((!\b2v_inst1|row\(2) & \b2v_inst|Equal14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|red~5_combout\,
	datab => \b2v_inst|Equal14~0_combout\,
	datac => \b2v_inst1|row\(2),
	datad => \b2v_inst|Equal14~1_combout\,
	combout => \b2v_inst|red~11_combout\);

-- Location: LCCOMB_X73_Y50_N14
\b2v_inst|red~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~12_combout\ = (\b2v_inst|green~0_combout\ & (\b2v_inst|process_0~34_combout\ & \b2v_inst|red~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|green~0_combout\,
	datac => \b2v_inst|process_0~34_combout\,
	datad => \b2v_inst|red~11_combout\,
	combout => \b2v_inst|red~12_combout\);

-- Location: LCCOMB_X66_Y54_N2
\b2v_inst|red~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~14_combout\ = (\b2v_inst|red~0_combout\ & ((\b2v_inst|red~10_combout\) # ((\b2v_inst|red~13_combout\ & \b2v_inst|red~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|red~10_combout\,
	datab => \b2v_inst|red~13_combout\,
	datac => \b2v_inst|red~0_combout\,
	datad => \b2v_inst|red~12_combout\,
	combout => \b2v_inst|red~14_combout\);

-- Location: LCCOMB_X62_Y54_N4
\b2v_inst|red~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~1_combout\ = (!\b2v_inst1|column\(9) & (\b2v_inst1|column\(8) & (!\b2v_inst1|column\(7) & \b2v_inst1|column\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(9),
	datab => \b2v_inst1|column\(8),
	datac => \b2v_inst1|column\(7),
	datad => \b2v_inst1|column\(31),
	combout => \b2v_inst|red~1_combout\);

-- Location: LCCOMB_X66_Y54_N16
\b2v_inst|process_0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~38_combout\ = (!\b2v_inst1|column\(3) & (!\b2v_inst1|column\(1) & (!\b2v_inst1|column\(2) & !\b2v_inst1|column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(3),
	datab => \b2v_inst1|column\(1),
	datac => \b2v_inst1|column\(2),
	datad => \b2v_inst1|column\(4),
	combout => \b2v_inst|process_0~38_combout\);

-- Location: LCCOMB_X63_Y54_N26
\b2v_inst|process_0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~36_combout\ = (\b2v_inst1|row\(2)) # ((\b2v_inst1|row\(0) & (!\b2v_inst1|row\(1) & !\b2v_inst1|row\(3))) # (!\b2v_inst1|row\(0) & (\b2v_inst1|row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(0),
	datab => \b2v_inst1|row\(1),
	datac => \b2v_inst1|row\(2),
	datad => \b2v_inst1|row\(3),
	combout => \b2v_inst|process_0~36_combout\);

-- Location: LCCOMB_X63_Y54_N8
\b2v_inst|process_0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~37_combout\ = (\b2v_inst|process_0~36_combout\) # ((!\b2v_inst|process_0~34_combout\) # (!\b2v_inst|green~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~36_combout\,
	datab => \b2v_inst|green~0_combout\,
	datad => \b2v_inst|process_0~34_combout\,
	combout => \b2v_inst|process_0~37_combout\);

-- Location: LCCOMB_X63_Y54_N0
\b2v_inst|process_0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~35_combout\ = (((!\b2v_inst|process_0~34_combout\) # (!\b2v_inst1|row\(1))) # (!\b2v_inst|green~0_combout\)) # (!\b2v_inst1|row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(2),
	datab => \b2v_inst|green~0_combout\,
	datac => \b2v_inst1|row\(1),
	datad => \b2v_inst|process_0~34_combout\,
	combout => \b2v_inst|process_0~35_combout\);

-- Location: LCCOMB_X69_Y54_N20
\b2v_inst|green~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|green~1_combout\ = (\b2v_inst|process_0~37_combout\ & (!\b2v_inst|process_0~35_combout\ & (\b2v_inst|Equal10~0_combout\))) # (!\b2v_inst|process_0~37_combout\ & ((\b2v_inst|Equal10~1_combout\) # ((!\b2v_inst|process_0~35_combout\ & 
-- \b2v_inst|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~37_combout\,
	datab => \b2v_inst|process_0~35_combout\,
	datac => \b2v_inst|Equal10~0_combout\,
	datad => \b2v_inst|Equal10~1_combout\,
	combout => \b2v_inst|green~1_combout\);

-- Location: LCCOMB_X62_Y54_N10
\b2v_inst|process_0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~39_combout\ = (\b2v_inst1|column\(2)) # ((!\b2v_inst1|column\(0) & \b2v_inst1|column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datac => \b2v_inst1|column\(1),
	datad => \b2v_inst1|column\(2),
	combout => \b2v_inst|process_0~39_combout\);

-- Location: LCCOMB_X62_Y54_N28
\b2v_inst|process_0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~40_combout\ = (!\b2v_inst1|column\(6) & (!\b2v_inst1|column\(4) & ((!\b2v_inst|process_0~39_combout\) # (!\b2v_inst1|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(3),
	datab => \b2v_inst1|column\(6),
	datac => \b2v_inst1|column\(4),
	datad => \b2v_inst|process_0~39_combout\,
	combout => \b2v_inst|process_0~40_combout\);

-- Location: LCCOMB_X63_Y54_N18
\b2v_inst|red~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~2_combout\ = (\b2v_inst|green~1_combout\ & (!\b2v_inst|process_0~40_combout\ & ((\b2v_inst|process_0~38_combout\) # (\b2v_inst1|column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~38_combout\,
	datab => \b2v_inst|green~1_combout\,
	datac => \b2v_inst1|column\(5),
	datad => \b2v_inst|process_0~40_combout\,
	combout => \b2v_inst|red~2_combout\);

-- Location: LCCOMB_X62_Y54_N2
\b2v_inst|red~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~3_combout\ = (\b2v_inst|red~1_combout\ & (\b2v_inst|red~2_combout\ & ((!\b2v_inst1|column\(6)) # (!\b2v_inst1|column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|red~1_combout\,
	datab => \b2v_inst1|column\(5),
	datac => \b2v_inst1|column\(6),
	datad => \b2v_inst|red~2_combout\,
	combout => \b2v_inst|red~3_combout\);

-- Location: LCCOMB_X69_Y54_N6
\b2v_inst|red~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~4_combout\ = (\p1|S.CROUCH~q\ & (((\b2v_inst|process_0~35_combout\)))) # (!\p1|S.CROUCH~q\ & ((\p1|S.CROUCHTHRUST~q\ & ((\b2v_inst|process_0~35_combout\))) # (!\p1|S.CROUCHTHRUST~q\ & (\b2v_inst|process_0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~37_combout\,
	datab => \b2v_inst|process_0~35_combout\,
	datac => \p1|S.CROUCH~q\,
	datad => \p1|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|red~4_combout\);

-- Location: LCCOMB_X66_Y54_N26
\b2v_inst|red~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red~15_combout\ = (!\b2v_inst|red~14_combout\ & (!\b2v_inst|red~3_combout\ & ((\b2v_inst|red~4_combout\) # (!\b2v_inst|process_0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~33_combout\,
	datab => \b2v_inst|red~14_combout\,
	datac => \b2v_inst|red~3_combout\,
	datad => \b2v_inst|red~4_combout\,
	combout => \b2v_inst|red~15_combout\);

-- Location: LCCOMB_X63_Y53_N2
\b2v_inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~0_combout\ = \b2v_inst1|column\(1) $ (VCC)
-- \b2v_inst|Add3~1\ = CARRY(\b2v_inst1|column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(1),
	datad => VCC,
	combout => \b2v_inst|Add3~0_combout\,
	cout => \b2v_inst|Add3~1\);

-- Location: LCCOMB_X63_Y53_N4
\b2v_inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~2_combout\ = (\b2v_inst1|column\(2) & (!\b2v_inst|Add3~1\)) # (!\b2v_inst1|column\(2) & ((\b2v_inst|Add3~1\) # (GND)))
-- \b2v_inst|Add3~3\ = CARRY((!\b2v_inst|Add3~1\) # (!\b2v_inst1|column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(2),
	datad => VCC,
	cin => \b2v_inst|Add3~1\,
	combout => \b2v_inst|Add3~2_combout\,
	cout => \b2v_inst|Add3~3\);

-- Location: LCCOMB_X63_Y53_N6
\b2v_inst|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~4_combout\ = (\b2v_inst1|column\(3) & ((GND) # (!\b2v_inst|Add3~3\))) # (!\b2v_inst1|column\(3) & (\b2v_inst|Add3~3\ $ (GND)))
-- \b2v_inst|Add3~5\ = CARRY((\b2v_inst1|column\(3)) # (!\b2v_inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(3),
	datad => VCC,
	cin => \b2v_inst|Add3~3\,
	combout => \b2v_inst|Add3~4_combout\,
	cout => \b2v_inst|Add3~5\);

-- Location: LCCOMB_X63_Y53_N8
\b2v_inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~6_combout\ = (\b2v_inst1|column\(4) & (!\b2v_inst|Add3~5\)) # (!\b2v_inst1|column\(4) & ((\b2v_inst|Add3~5\) # (GND)))
-- \b2v_inst|Add3~7\ = CARRY((!\b2v_inst|Add3~5\) # (!\b2v_inst1|column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(4),
	datad => VCC,
	cin => \b2v_inst|Add3~5\,
	combout => \b2v_inst|Add3~6_combout\,
	cout => \b2v_inst|Add3~7\);

-- Location: LCCOMB_X63_Y53_N10
\b2v_inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~8_combout\ = (\b2v_inst1|column\(5) & (\b2v_inst|Add3~7\ $ (GND))) # (!\b2v_inst1|column\(5) & (!\b2v_inst|Add3~7\ & VCC))
-- \b2v_inst|Add3~9\ = CARRY((\b2v_inst1|column\(5) & !\b2v_inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(5),
	datad => VCC,
	cin => \b2v_inst|Add3~7\,
	combout => \b2v_inst|Add3~8_combout\,
	cout => \b2v_inst|Add3~9\);

-- Location: LCCOMB_X63_Y53_N12
\b2v_inst|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~10_combout\ = (\b2v_inst1|column\(6) & (\b2v_inst|Add3~9\ & VCC)) # (!\b2v_inst1|column\(6) & (!\b2v_inst|Add3~9\))
-- \b2v_inst|Add3~11\ = CARRY((!\b2v_inst1|column\(6) & !\b2v_inst|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(6),
	datad => VCC,
	cin => \b2v_inst|Add3~9\,
	combout => \b2v_inst|Add3~10_combout\,
	cout => \b2v_inst|Add3~11\);

-- Location: LCCOMB_X63_Y53_N14
\b2v_inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~12_combout\ = (\b2v_inst1|column\(7) & ((GND) # (!\b2v_inst|Add3~11\))) # (!\b2v_inst1|column\(7) & (\b2v_inst|Add3~11\ $ (GND)))
-- \b2v_inst|Add3~13\ = CARRY((\b2v_inst1|column\(7)) # (!\b2v_inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(7),
	datad => VCC,
	cin => \b2v_inst|Add3~11\,
	combout => \b2v_inst|Add3~12_combout\,
	cout => \b2v_inst|Add3~13\);

-- Location: LCCOMB_X63_Y53_N16
\b2v_inst|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~14_combout\ = (\b2v_inst1|column\(8) & (!\b2v_inst|Add3~13\)) # (!\b2v_inst1|column\(8) & ((\b2v_inst|Add3~13\) # (GND)))
-- \b2v_inst|Add3~15\ = CARRY((!\b2v_inst|Add3~13\) # (!\b2v_inst1|column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(8),
	datad => VCC,
	cin => \b2v_inst|Add3~13\,
	combout => \b2v_inst|Add3~14_combout\,
	cout => \b2v_inst|Add3~15\);

-- Location: LCCOMB_X63_Y53_N18
\b2v_inst|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~16_combout\ = (\b2v_inst1|column\(9) & ((GND) # (!\b2v_inst|Add3~15\))) # (!\b2v_inst1|column\(9) & (\b2v_inst|Add3~15\ $ (GND)))
-- \b2v_inst|Add3~17\ = CARRY((\b2v_inst1|column\(9)) # (!\b2v_inst|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(9),
	datad => VCC,
	cin => \b2v_inst|Add3~15\,
	combout => \b2v_inst|Add3~16_combout\,
	cout => \b2v_inst|Add3~17\);

-- Location: LCCOMB_X63_Y53_N20
\b2v_inst|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~18_combout\ = !\b2v_inst|Add3~17\
-- \b2v_inst|Add3~19\ = CARRY(!\b2v_inst|Add3~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~17\,
	combout => \b2v_inst|Add3~18_combout\,
	cout => \b2v_inst|Add3~19\);

-- Location: LCCOMB_X63_Y53_N22
\b2v_inst|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~20_combout\ = \b2v_inst|Add3~19\ $ (GND)
-- \b2v_inst|Add3~21\ = CARRY(!\b2v_inst|Add3~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~19\,
	combout => \b2v_inst|Add3~20_combout\,
	cout => \b2v_inst|Add3~21\);

-- Location: LCCOMB_X63_Y53_N24
\b2v_inst|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~22_combout\ = !\b2v_inst|Add3~21\
-- \b2v_inst|Add3~23\ = CARRY(!\b2v_inst|Add3~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~21\,
	combout => \b2v_inst|Add3~22_combout\,
	cout => \b2v_inst|Add3~23\);

-- Location: LCCOMB_X63_Y53_N26
\b2v_inst|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~24_combout\ = \b2v_inst|Add3~23\ $ (GND)
-- \b2v_inst|Add3~25\ = CARRY(!\b2v_inst|Add3~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~23\,
	combout => \b2v_inst|Add3~24_combout\,
	cout => \b2v_inst|Add3~25\);

-- Location: LCCOMB_X63_Y53_N0
\b2v_inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~2_combout\ = (!\b2v_inst|Add3~20_combout\ & (!\b2v_inst|Add3~22_combout\ & (!\b2v_inst|Add3~24_combout\ & !\b2v_inst|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~20_combout\,
	datab => \b2v_inst|Add3~22_combout\,
	datac => \b2v_inst|Add3~24_combout\,
	datad => \b2v_inst|Add3~18_combout\,
	combout => \b2v_inst|process_0~2_combout\);

-- Location: LCCOMB_X73_Y50_N24
\b2v_inst|Equal14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal14~2_combout\ = (\p2|S.LOSE~q\ & (!\p2|S.CROUCH~q\ & (!\p2|S.STANDTHRUST~q\ & !\p2|S.CROUCHTHRUST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|S.LOSE~q\,
	datab => \p2|S.CROUCH~q\,
	datac => \p2|S.STANDTHRUST~q\,
	datad => \p2|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|Equal14~2_combout\);

-- Location: LCCOMB_X63_Y54_N2
\b2v_inst|process_0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~44_combout\ = (!\b2v_inst1|row\(6) & (!\b2v_inst1|column\(5) & (!\b2v_inst1|row\(7) & \b2v_inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(6),
	datab => \b2v_inst1|column\(5),
	datac => \b2v_inst1|row\(7),
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|process_0~44_combout\);

-- Location: LCCOMB_X63_Y54_N20
\b2v_inst|process_0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~42_combout\ = (!\b2v_inst1|row\(1) & (\b2v_inst1|row\(0) & (!\b2v_inst1|row\(2) & !\b2v_inst1|column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(1),
	datab => \b2v_inst1|row\(0),
	datac => \b2v_inst1|row\(2),
	datad => \b2v_inst1|column\(8),
	combout => \b2v_inst|process_0~42_combout\);

-- Location: LCCOMB_X63_Y54_N24
\b2v_inst|process_0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~43_combout\ = (\b2v_inst|process_0~38_combout\ & (\b2v_inst|process_0~34_combout\ & (\b2v_inst|process_0~30_combout\ & \b2v_inst|process_0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~38_combout\,
	datab => \b2v_inst|process_0~34_combout\,
	datac => \b2v_inst|process_0~30_combout\,
	datad => \b2v_inst|process_0~42_combout\,
	combout => \b2v_inst|process_0~43_combout\);

-- Location: LCCOMB_X63_Y54_N30
\b2v_inst|process_0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~45_combout\ = (\b2v_inst|process_0~44_combout\ & (!\b2v_inst1|row\(5) & \b2v_inst|process_0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|process_0~44_combout\,
	datac => \b2v_inst1|row\(5),
	datad => \b2v_inst|process_0~43_combout\,
	combout => \b2v_inst|process_0~45_combout\);

-- Location: CLKCTRL_G11
\b2v_inst|process_0~45clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst|process_0~45clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst|process_0~45clkctrl_outclk\);

-- Location: LCCOMB_X73_Y50_N28
\b2v_inst|p2[9][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p2[9][18]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (!\b2v_inst|Equal14~2_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p2[9][18]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Equal14~2_combout\,
	datac => \b2v_inst|process_0~45clkctrl_outclk\,
	datad => \b2v_inst|p2[9][18]~combout\,
	combout => \b2v_inst|p2[9][18]~combout\);

-- Location: LCCOMB_X70_Y53_N30
\b2v_inst|p2[22][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p2[22][2]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (\b2v_inst|Equal14~0_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p2[22][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Equal14~0_combout\,
	datac => \b2v_inst|p2[22][2]~combout\,
	datad => \b2v_inst|process_0~45clkctrl_outclk\,
	combout => \b2v_inst|p2[22][2]~combout\);

-- Location: LCCOMB_X72_Y50_N24
\b2v_inst|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector13~0_combout\ = (!\p2|S.LOSE~q\ & ((\p2|S.CROUCH~q\) # (\p2|S.CROUCHTHRUST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|S.CROUCH~q\,
	datac => \p2|S.LOSE~q\,
	datad => \p2|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|Selector13~0_combout\);

-- Location: LCCOMB_X72_Y50_N22
\b2v_inst|p2[9][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p2[9][15]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (\b2v_inst|Selector13~0_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p2[9][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Selector13~0_combout\,
	datac => \b2v_inst|p2[9][15]~combout\,
	datad => \b2v_inst|process_0~45clkctrl_outclk\,
	combout => \b2v_inst|p2[9][15]~combout\);

-- Location: LCCOMB_X70_Y53_N0
\b2v_inst|Mux54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux54~4_combout\ = (\b2v_inst1|column\(0) & (\b2v_inst|p2[22][2]~combout\ & ((\b2v_inst|Add3~2_combout\)))) # (!\b2v_inst1|column\(0) & ((\b2v_inst|Add3~2_combout\ & ((\b2v_inst|p2[9][15]~combout\))) # (!\b2v_inst|Add3~2_combout\ & 
-- (\b2v_inst|p2[22][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[22][2]~combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux54~4_combout\);

-- Location: LCCOMB_X70_Y53_N18
\b2v_inst|Mux54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux54~5_combout\ = (\b2v_inst|Add3~6_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux54~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Mux54~4_combout\,
	combout => \b2v_inst|Mux54~5_combout\);

-- Location: LCCOMB_X70_Y53_N12
\b2v_inst|Mux54~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux54~6_combout\ = (\b2v_inst|Add3~0_combout\ & (!\b2v_inst1|column\(0))) # (!\b2v_inst|Add3~0_combout\ & ((\b2v_inst|Mux54~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Mux54~5_combout\,
	combout => \b2v_inst|Mux54~6_combout\);

-- Location: LCCOMB_X70_Y53_N2
\b2v_inst|Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux54~1_combout\ = (\b2v_inst|Add3~4_combout\ & ((\b2v_inst|Add3~6_combout\) # ((!\b2v_inst|Add3~2_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (!\b2v_inst|p2[9][15]~combout\ & (\b2v_inst|Add3~6_combout\ $ (\b2v_inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Add3~4_combout\,
	datac => \b2v_inst|p2[9][15]~combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux54~1_combout\);

-- Location: LCCOMB_X70_Y53_N4
\b2v_inst|Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux54~2_combout\ = (\b2v_inst|p2[9][15]~combout\ & (\b2v_inst|Add3~2_combout\ $ (((\b2v_inst|Add3~6_combout\) # (\b2v_inst|Add3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Add3~4_combout\,
	datac => \b2v_inst|p2[9][15]~combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux54~2_combout\);

-- Location: LCCOMB_X70_Y53_N24
\b2v_inst|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux54~0_combout\ = (\b2v_inst|Add3~2_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Add3~2_combout\ & ((\b2v_inst|p2[22][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|p2[22][2]~combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux54~0_combout\);

-- Location: LCCOMB_X70_Y53_N6
\b2v_inst|Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux54~3_combout\ = (\b2v_inst|Add3~0_combout\ & (!\b2v_inst|Mux54~1_combout\ & ((\b2v_inst|Mux54~2_combout\) # (\b2v_inst|Mux54~0_combout\)))) # (!\b2v_inst|Add3~0_combout\ & (\b2v_inst|Mux54~1_combout\ & (\b2v_inst|Mux54~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datab => \b2v_inst|Mux54~1_combout\,
	datac => \b2v_inst|Mux54~2_combout\,
	datad => \b2v_inst|Mux54~0_combout\,
	combout => \b2v_inst|Mux54~3_combout\);

-- Location: LCCOMB_X70_Y53_N22
\b2v_inst|Mux54~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux54~7_combout\ = (\b2v_inst|Mux54~3_combout\) # ((\b2v_inst|Mux54~6_combout\ & (!\b2v_inst|Add3~0_combout\ & !\b2v_inst|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux54~6_combout\,
	datab => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux54~3_combout\,
	combout => \b2v_inst|Mux54~7_combout\);

-- Location: LCCOMB_X63_Y51_N2
\b2v_inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~0_combout\ = \b2v_inst1|row\(1) $ (VCC)
-- \b2v_inst|Add2~1\ = CARRY(\b2v_inst1|row\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|row\(1),
	datad => VCC,
	combout => \b2v_inst|Add2~0_combout\,
	cout => \b2v_inst|Add2~1\);

-- Location: LCCOMB_X69_Y53_N16
\b2v_inst|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux56~0_combout\ = (\b2v_inst1|column\(0) & !\b2v_inst|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|Mux56~0_combout\);

-- Location: LCCOMB_X69_Y53_N2
\b2v_inst|Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux52~2_combout\ = (!\b2v_inst|Add3~2_combout\ & (\b2v_inst|p2[9][15]~combout\ & ((!\b2v_inst|Mux56~0_combout\) # (!\b2v_inst|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~2_combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Mux56~0_combout\,
	combout => \b2v_inst|Mux52~2_combout\);

-- Location: LCCOMB_X70_Y53_N8
\b2v_inst|Mux54~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux54~8_combout\ = (\b2v_inst|Add3~6_combout\ & (((\b2v_inst|Add3~2_combout\)))) # (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Add3~2_combout\ & ((\b2v_inst|p2[9][15]~combout\))) # (!\b2v_inst|Add3~2_combout\ & (\b2v_inst|p2[22][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[22][2]~combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux54~8_combout\);

-- Location: LCCOMB_X73_Y50_N10
\b2v_inst|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector15~0_combout\ = (!\p2|S.LOSE~q\ & (!\p2|S.CROUCH~q\ & !\p2|S.CROUCHTHRUST~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|S.LOSE~q\,
	datab => \p2|S.CROUCH~q\,
	datad => \p2|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|Selector15~0_combout\);

-- Location: LCCOMB_X66_Y50_N28
\b2v_inst|p2[12][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p2[12][14]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (\b2v_inst|Selector15~0_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p2[12][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector15~0_combout\,
	datac => \b2v_inst|process_0~45clkctrl_outclk\,
	datad => \b2v_inst|p2[12][14]~combout\,
	combout => \b2v_inst|p2[12][14]~combout\);

-- Location: LCCOMB_X70_Y53_N20
\b2v_inst|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux52~0_combout\ = (\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux54~8_combout\ & ((\b2v_inst|p2[12][14]~combout\))) # (!\b2v_inst|Mux54~8_combout\ & (\b2v_inst|p2[9][18]~combout\)))) # (!\b2v_inst|Add3~6_combout\ & 
-- (((\b2v_inst|Mux54~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Mux54~8_combout\,
	datad => \b2v_inst|p2[12][14]~combout\,
	combout => \b2v_inst|Mux52~0_combout\);

-- Location: LCCOMB_X70_Y53_N10
\b2v_inst|Mux54~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux54~9_combout\ = (\b2v_inst|Add3~6_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux54~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Mux54~8_combout\,
	combout => \b2v_inst|Mux54~9_combout\);

-- Location: LCCOMB_X70_Y53_N14
\b2v_inst|Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux52~1_combout\ = (\b2v_inst|Mux54~6_combout\ & ((\b2v_inst|Mux52~0_combout\) # ((!\b2v_inst|Add3~0_combout\)))) # (!\b2v_inst|Mux54~6_combout\ & (((\b2v_inst|Add3~0_combout\ & \b2v_inst|Mux54~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux54~6_combout\,
	datab => \b2v_inst|Mux52~0_combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Mux54~9_combout\,
	combout => \b2v_inst|Mux52~1_combout\);

-- Location: LCCOMB_X67_Y50_N30
\b2v_inst|Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux52~3_combout\ = (\b2v_inst|Add3~0_combout\ & ((\b2v_inst1|column\(0) & ((\b2v_inst|p2[12][14]~combout\))) # (!\b2v_inst1|column\(0) & (\b2v_inst|p2[9][18]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|p2[9][18]~combout\,
	datad => \b2v_inst|p2[12][14]~combout\,
	combout => \b2v_inst|Mux52~3_combout\);

-- Location: LCCOMB_X67_Y50_N8
\b2v_inst|Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux52~4_combout\ = (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Mux52~3_combout\ & \b2v_inst|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Mux52~3_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux52~4_combout\);

-- Location: LCCOMB_X70_Y53_N16
\b2v_inst|Mux52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux52~5_combout\ = (\b2v_inst|Add3~4_combout\ & ((\b2v_inst|Mux52~2_combout\) # ((\b2v_inst|Mux52~4_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (((\b2v_inst|Mux52~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux52~2_combout\,
	datab => \b2v_inst|Add3~4_combout\,
	datac => \b2v_inst|Mux52~1_combout\,
	datad => \b2v_inst|Mux52~4_combout\,
	combout => \b2v_inst|Mux52~5_combout\);

-- Location: LCCOMB_X63_Y51_N4
\b2v_inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~2_combout\ = (\b2v_inst1|row\(2) & (\b2v_inst|Add2~1\ & VCC)) # (!\b2v_inst1|row\(2) & (!\b2v_inst|Add2~1\))
-- \b2v_inst|Add2~3\ = CARRY((!\b2v_inst1|row\(2) & !\b2v_inst|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|row\(2),
	datad => VCC,
	cin => \b2v_inst|Add2~1\,
	combout => \b2v_inst|Add2~2_combout\,
	cout => \b2v_inst|Add2~3\);

-- Location: LCCOMB_X63_Y51_N6
\b2v_inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~4_combout\ = (\b2v_inst1|row\(3) & ((GND) # (!\b2v_inst|Add2~3\))) # (!\b2v_inst1|row\(3) & (\b2v_inst|Add2~3\ $ (GND)))
-- \b2v_inst|Add2~5\ = CARRY((\b2v_inst1|row\(3)) # (!\b2v_inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|row\(3),
	datad => VCC,
	cin => \b2v_inst|Add2~3\,
	combout => \b2v_inst|Add2~4_combout\,
	cout => \b2v_inst|Add2~5\);

-- Location: LCCOMB_X66_Y50_N12
\b2v_inst|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~2_combout\ = (\b2v_inst|Add2~0_combout\ & ((\b2v_inst|Mux54~7_combout\) # ((\b2v_inst|Add2~4_combout\)))) # (!\b2v_inst|Add2~0_combout\ & (((\b2v_inst|Mux52~5_combout\ & !\b2v_inst|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux54~7_combout\,
	datab => \b2v_inst|Add2~0_combout\,
	datac => \b2v_inst|Mux52~5_combout\,
	datad => \b2v_inst|Add2~4_combout\,
	combout => \b2v_inst|Mux63~2_combout\);

-- Location: LCCOMB_X73_Y50_N6
\b2v_inst|p2[25][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p2[25][28]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (\b2v_inst|Equal14~2_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p2[25][28]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Equal14~2_combout\,
	datac => \b2v_inst|process_0~45clkctrl_outclk\,
	datad => \b2v_inst|p2[25][28]~combout\,
	combout => \b2v_inst|p2[25][28]~combout\);

-- Location: LCCOMB_X66_Y50_N30
\b2v_inst|p2[30][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p2[30][23]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (!\b2v_inst|Selector15~0_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p2[30][23]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector15~0_combout\,
	datac => \b2v_inst|p2[30][23]~combout\,
	datad => \b2v_inst|process_0~45clkctrl_outclk\,
	combout => \b2v_inst|p2[30][23]~combout\);

-- Location: LCCOMB_X73_Y50_N8
\b2v_inst|p2[25][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p2[25][25]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (!\b2v_inst|Selector13~0_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p2[25][25]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Selector13~0_combout\,
	datac => \b2v_inst|p2[25][25]~combout\,
	datad => \b2v_inst|process_0~45clkctrl_outclk\,
	combout => \b2v_inst|p2[25][25]~combout\);

-- Location: LCCOMB_X66_Y50_N22
\b2v_inst|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux62~0_combout\ = (\b2v_inst|Add3~0_combout\ & (\b2v_inst|p2[30][23]~combout\)) # (!\b2v_inst|Add3~0_combout\ & ((\b2v_inst|p2[25][25]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[30][23]~combout\,
	datab => \b2v_inst|p2[25][25]~combout\,
	datac => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|Mux62~0_combout\);

-- Location: LCCOMB_X66_Y50_N24
\b2v_inst|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux62~1_combout\ = (\b2v_inst1|column\(0) & ((\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Mux62~0_combout\))) # (!\b2v_inst|Add3~2_combout\ & (\b2v_inst|p2[25][28]~combout\)))) # (!\b2v_inst1|column\(0) & ((\b2v_inst|Add3~2_combout\ & 
-- (\b2v_inst|p2[25][28]~combout\)) # (!\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Mux62~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p2[25][28]~combout\,
	datac => \b2v_inst|Mux62~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux62~1_combout\);

-- Location: LCCOMB_X66_Y50_N26
\b2v_inst|Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux62~2_combout\ = (\b2v_inst|Add3~6_combout\ & (((!\b2v_inst|Add3~0_combout\ & \b2v_inst|Mux62~1_combout\)) # (!\b2v_inst|Add3~2_combout\))) # (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux62~1_combout\) # (\b2v_inst|Add3~2_combout\ $ 
-- (\b2v_inst|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Add3~2_combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Mux62~1_combout\,
	combout => \b2v_inst|Mux62~2_combout\);

-- Location: LCCOMB_X66_Y50_N20
\b2v_inst|Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux62~3_combout\ = (\b2v_inst|Add3~6_combout\ & (((\b2v_inst|Add3~0_combout\ & !\b2v_inst1|column\(0))) # (!\b2v_inst|Add3~2_combout\))) # (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Add3~0_combout\ & (!\b2v_inst1|column\(0) & 
-- !\b2v_inst|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux62~3_combout\);

-- Location: LCCOMB_X66_Y50_N6
\b2v_inst|Mux62~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux62~4_combout\ = (\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Mux62~3_combout\ & (\b2v_inst|p2[30][23]~combout\)) # (!\b2v_inst|Mux62~3_combout\ & ((\b2v_inst|p2[25][28]~combout\))))) # (!\b2v_inst|Add3~2_combout\ & 
-- (((\b2v_inst|p2[25][28]~combout\ & \b2v_inst|Mux62~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[30][23]~combout\,
	datab => \b2v_inst|Add3~2_combout\,
	datac => \b2v_inst|p2[25][28]~combout\,
	datad => \b2v_inst|Mux62~3_combout\,
	combout => \b2v_inst|Mux62~4_combout\);

-- Location: LCCOMB_X66_Y50_N8
\b2v_inst|Mux62~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux62~5_combout\ = (\b2v_inst|Add3~4_combout\ & (\b2v_inst|Mux62~2_combout\)) # (!\b2v_inst|Add3~4_combout\ & ((\b2v_inst|Mux62~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datac => \b2v_inst|Mux62~2_combout\,
	datad => \b2v_inst|Mux62~4_combout\,
	combout => \b2v_inst|Mux62~5_combout\);

-- Location: LCCOMB_X66_Y50_N4
\b2v_inst|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux45~0_combout\ = (!\b2v_inst1|column\(0) & (\b2v_inst|p2[12][14]~combout\ & \b2v_inst|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p2[12][14]~combout\,
	datac => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|Mux45~0_combout\);

-- Location: LCCOMB_X66_Y50_N14
\b2v_inst|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux60~1_combout\ = (\b2v_inst|Add3~6_combout\ & (((\b2v_inst|Add3~2_combout\)))) # (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Add3~2_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Mux45~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Mux45~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux60~1_combout\);

-- Location: LCCOMB_X66_Y50_N10
\b2v_inst|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux60~0_combout\ = ((\b2v_inst1|column\(0) & (\b2v_inst|p2[25][25]~combout\)) # (!\b2v_inst1|column\(0) & ((\b2v_inst|p2[25][28]~combout\)))) # (!\b2v_inst|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p2[25][25]~combout\,
	datac => \b2v_inst|p2[25][28]~combout\,
	datad => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|Mux60~0_combout\);

-- Location: LCCOMB_X66_Y50_N0
\b2v_inst|Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux60~2_combout\ = (\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux60~1_combout\ & (\b2v_inst|p2[25][28]~combout\)) # (!\b2v_inst|Mux60~1_combout\ & ((\b2v_inst|Mux60~0_combout\))))) # (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Mux60~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Mux60~1_combout\,
	datac => \b2v_inst|p2[25][28]~combout\,
	datad => \b2v_inst|Mux60~0_combout\,
	combout => \b2v_inst|Mux60~2_combout\);

-- Location: LCCOMB_X67_Y50_N12
\b2v_inst|Mux59~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux59~4_combout\ = (\b2v_inst|Add3~0_combout\ & (\b2v_inst|Add3~6_combout\ & (!\b2v_inst|Add3~4_combout\ & \b2v_inst|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux59~4_combout\);

-- Location: LCCOMB_X66_Y50_N16
\b2v_inst|Mux59~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux59~5_combout\ = (\b2v_inst|Mux59~4_combout\ & ((\b2v_inst|p2[9][18]~combout\) # (!\b2v_inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Mux59~4_combout\,
	combout => \b2v_inst|Mux59~5_combout\);

-- Location: LCCOMB_X66_Y50_N18
\b2v_inst|Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux60~3_combout\ = (\b2v_inst|Mux59~5_combout\) # ((\b2v_inst|Add3~4_combout\ & \b2v_inst|Mux60~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|Mux60~2_combout\,
	datad => \b2v_inst|Mux59~5_combout\,
	combout => \b2v_inst|Mux60~3_combout\);

-- Location: LCCOMB_X66_Y50_N2
\b2v_inst|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~3_combout\ = (\b2v_inst|Mux63~2_combout\ & (((\b2v_inst|Mux62~5_combout\)) # (!\b2v_inst|Add2~4_combout\))) # (!\b2v_inst|Mux63~2_combout\ & (\b2v_inst|Add2~4_combout\ & ((\b2v_inst|Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux63~2_combout\,
	datab => \b2v_inst|Add2~4_combout\,
	datac => \b2v_inst|Mux62~5_combout\,
	datad => \b2v_inst|Mux60~3_combout\,
	combout => \b2v_inst|Mux63~3_combout\);

-- Location: LCCOMB_X70_Y51_N14
\b2v_inst|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux56~1_combout\ = (\b2v_inst|Add3~0_combout\ & ((\b2v_inst|Add3~2_combout\))) # (!\b2v_inst|Add3~0_combout\ & (\b2v_inst|p2[12][14]~combout\ & !\b2v_inst|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datab => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux56~1_combout\);

-- Location: LCCOMB_X72_Y51_N8
\b2v_inst|Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux56~2_combout\ = (\b2v_inst|Add3~0_combout\) # ((\b2v_inst1|column\(0) & \b2v_inst|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux56~2_combout\);

-- Location: LCCOMB_X70_Y51_N16
\b2v_inst|Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux56~3_combout\ = (\b2v_inst|Mux56~1_combout\ & (\b2v_inst|Add3~4_combout\ $ (((\b2v_inst|Mux56~2_combout\))))) # (!\b2v_inst|Mux56~1_combout\ & (\b2v_inst|Add3~4_combout\ & (\b2v_inst|p2[25][28]~combout\ & \b2v_inst|Mux56~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|Mux56~1_combout\,
	datac => \b2v_inst|p2[25][28]~combout\,
	datad => \b2v_inst|Mux56~2_combout\,
	combout => \b2v_inst|Mux56~3_combout\);

-- Location: LCCOMB_X70_Y51_N26
\b2v_inst|Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux56~4_combout\ = (\b2v_inst|Add3~4_combout\ & (((\b2v_inst|Mux56~3_combout\)))) # (!\b2v_inst|Add3~4_combout\ & ((\b2v_inst|Mux56~3_combout\ & ((\b2v_inst|p2[9][18]~combout\))) # (!\b2v_inst|Mux56~3_combout\ & (\b2v_inst|p2[9][15]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|p2[9][18]~combout\,
	datad => \b2v_inst|Mux56~3_combout\,
	combout => \b2v_inst|Mux56~4_combout\);

-- Location: LCCOMB_X70_Y51_N24
\b2v_inst|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux57~0_combout\ = (\b2v_inst|Add3~0_combout\ & ((\b2v_inst|p2[9][18]~combout\))) # (!\b2v_inst|Add3~0_combout\ & (\b2v_inst|p2[12][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datac => \b2v_inst|p2[9][18]~combout\,
	datad => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|Mux57~0_combout\);

-- Location: LCCOMB_X70_Y51_N2
\b2v_inst|Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux57~1_combout\ = (\b2v_inst|Add3~4_combout\ & (\b2v_inst|Mux57~0_combout\ & (!\b2v_inst|Add3~6_combout\ & \b2v_inst|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|Mux57~0_combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux57~1_combout\);

-- Location: LCCOMB_X70_Y51_N4
\b2v_inst|Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux56~5_combout\ = (\b2v_inst|Mux57~1_combout\) # ((\b2v_inst|Mux56~4_combout\ & \b2v_inst|Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux56~4_combout\,
	datab => \b2v_inst|Mux57~1_combout\,
	datac => \b2v_inst|Add3~6_combout\,
	combout => \b2v_inst|Mux56~5_combout\);

-- Location: LCCOMB_X72_Y51_N14
\b2v_inst|Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux50~2_combout\ = (!\b2v_inst1|column\(0) & \b2v_inst|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|Mux50~2_combout\);

-- Location: LCCOMB_X72_Y51_N24
\b2v_inst|Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux50~3_combout\ = (\b2v_inst|Mux50~2_combout\ & ((\b2v_inst|Add3~2_combout\ & ((\b2v_inst|p2[9][18]~combout\))) # (!\b2v_inst|Add3~2_combout\ & (\b2v_inst|p2[9][15]~combout\)))) # (!\b2v_inst|Mux50~2_combout\ & (\b2v_inst|p2[9][15]~combout\ & 
-- ((\b2v_inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[9][15]~combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Mux50~2_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux50~3_combout\);

-- Location: LCCOMB_X72_Y51_N10
\b2v_inst|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux50~0_combout\ = (\b2v_inst|Add3~4_combout\ & (\b2v_inst|p2[9][15]~combout\ & ((\b2v_inst1|column\(0)) # (!\b2v_inst|Add3~0_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (((\b2v_inst|Add3~0_combout\ & !\b2v_inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[9][15]~combout\,
	datab => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add3~4_combout\,
	combout => \b2v_inst|Mux50~0_combout\);

-- Location: LCCOMB_X72_Y51_N12
\b2v_inst|Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux50~1_combout\ = (\b2v_inst|Add3~4_combout\ & (!\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Mux50~0_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (\b2v_inst|p2[9][18]~combout\ & ((!\b2v_inst|Mux50~0_combout\) # (!\b2v_inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~2_combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux50~0_combout\,
	combout => \b2v_inst|Mux50~1_combout\);

-- Location: LCCOMB_X72_Y51_N18
\b2v_inst|Mux50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux50~4_combout\ = (\b2v_inst|Add3~6_combout\ & (((\b2v_inst|Mux50~1_combout\)))) # (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Mux50~3_combout\ & (\b2v_inst|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Mux50~3_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux50~1_combout\,
	combout => \b2v_inst|Mux50~4_combout\);

-- Location: LCCOMB_X69_Y51_N26
\b2v_inst|Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux48~2_combout\ = (\b2v_inst1|column\(0) & (\b2v_inst|Add3~6_combout\ & (!\b2v_inst|Add3~0_combout\ & !\b2v_inst|Add3~2_combout\))) # (!\b2v_inst1|column\(0) & (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Add3~0_combout\ & 
-- \b2v_inst|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux48~2_combout\);

-- Location: LCCOMB_X69_Y51_N8
\b2v_inst|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux48~1_combout\ = (\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Add3~6_combout\) # ((\b2v_inst1|column\(0) & !\b2v_inst|Add3~0_combout\)))) # (!\b2v_inst|Add3~2_combout\ & (((\b2v_inst|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux48~1_combout\);

-- Location: LCCOMB_X69_Y51_N6
\b2v_inst|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux48~0_combout\ = (\b2v_inst|Add3~2_combout\ & (\b2v_inst|p2[9][15]~combout\)) # (!\b2v_inst|Add3~2_combout\ & ((\b2v_inst|p2[12][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|p2[12][14]~combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux48~0_combout\);

-- Location: LCCOMB_X69_Y51_N4
\b2v_inst|Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux48~3_combout\ = (\b2v_inst|Mux48~2_combout\ & ((\b2v_inst|Mux48~1_combout\ & ((\b2v_inst|Mux48~0_combout\))) # (!\b2v_inst|Mux48~1_combout\ & (\b2v_inst|p2[9][18]~combout\)))) # (!\b2v_inst|Mux48~2_combout\ & (((!\b2v_inst|Mux48~1_combout\ & 
-- \b2v_inst|Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux48~2_combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Mux48~1_combout\,
	datad => \b2v_inst|Mux48~0_combout\,
	combout => \b2v_inst|Mux48~3_combout\);

-- Location: LCCOMB_X70_Y52_N14
\b2v_inst|p2[15][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p2[15][2]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (\b2v_inst|Equal14~1_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p2[15][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal14~1_combout\,
	datac => \b2v_inst|p2[15][2]~combout\,
	datad => \b2v_inst|process_0~45clkctrl_outclk\,
	combout => \b2v_inst|p2[15][2]~combout\);

-- Location: LCCOMB_X70_Y52_N0
\b2v_inst|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux49~0_combout\ = (!\b2v_inst|Add3~0_combout\ & \b2v_inst1|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux49~0_combout\);

-- Location: LCCOMB_X70_Y52_N26
\b2v_inst|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux49~1_combout\ = (\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Mux49~0_combout\ & ((\b2v_inst|p2[15][2]~combout\))) # (!\b2v_inst|Mux49~0_combout\ & (\b2v_inst|p2[12][14]~combout\)))) # (!\b2v_inst|Add3~2_combout\ & (((\b2v_inst|p2[15][2]~combout\ 
-- & !\b2v_inst|Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datab => \b2v_inst|Add3~2_combout\,
	datac => \b2v_inst|p2[15][2]~combout\,
	datad => \b2v_inst|Mux49~0_combout\,
	combout => \b2v_inst|Mux49~1_combout\);

-- Location: LCCOMB_X70_Y52_N20
\b2v_inst|Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux49~2_combout\ = (\b2v_inst|Add3~6_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux49~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Mux49~1_combout\,
	datad => \b2v_inst|Add3~6_combout\,
	combout => \b2v_inst|Mux49~2_combout\);

-- Location: LCCOMB_X69_Y51_N22
\b2v_inst|Mux48~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux48~4_combout\ = (\b2v_inst|Add3~4_combout\ & (\b2v_inst|Mux48~3_combout\)) # (!\b2v_inst|Add3~4_combout\ & ((\b2v_inst|Mux49~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux48~3_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux49~2_combout\,
	combout => \b2v_inst|Mux48~4_combout\);

-- Location: LCCOMB_X68_Y51_N2
\b2v_inst|Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~4_combout\ = (\b2v_inst|Add2~4_combout\ & (((\b2v_inst|Add2~0_combout\)))) # (!\b2v_inst|Add2~4_combout\ & ((\b2v_inst|Add2~0_combout\ & (\b2v_inst|Mux50~4_combout\)) # (!\b2v_inst|Add2~0_combout\ & ((\b2v_inst|Mux48~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux50~4_combout\,
	datab => \b2v_inst|Add2~4_combout\,
	datac => \b2v_inst|Add2~0_combout\,
	datad => \b2v_inst|Mux48~4_combout\,
	combout => \b2v_inst|Mux63~4_combout\);

-- Location: LCCOMB_X69_Y50_N0
\b2v_inst|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux44~0_combout\ = (\b2v_inst1|column\(0) & ((\b2v_inst|Add3~0_combout\ & ((\b2v_inst|p2[9][18]~combout\))) # (!\b2v_inst|Add3~0_combout\ & (\b2v_inst|p2[12][14]~combout\)))) # (!\b2v_inst1|column\(0) & (((\b2v_inst|p2[9][18]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p2[12][14]~combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|p2[9][18]~combout\,
	combout => \b2v_inst|Mux44~0_combout\);

-- Location: LCCOMB_X72_Y51_N6
\b2v_inst|Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux58~2_combout\ = (\b2v_inst|Add3~4_combout\ & (\b2v_inst|p2[25][28]~combout\)) # (!\b2v_inst|Add3~4_combout\ & ((\b2v_inst|p2[9][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p2[25][28]~combout\,
	datac => \b2v_inst|p2[9][15]~combout\,
	datad => \b2v_inst|Add3~4_combout\,
	combout => \b2v_inst|Mux58~2_combout\);

-- Location: LCCOMB_X72_Y51_N16
\b2v_inst|Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux58~3_combout\ = (\b2v_inst|Add3~4_combout\ & ((\b2v_inst1|column\(0)) # (\b2v_inst|Add3~0_combout\ $ (\b2v_inst|Add3~2_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (!\b2v_inst|Add3~0_combout\ & (\b2v_inst1|column\(0) $ 
-- (\b2v_inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux58~3_combout\);

-- Location: LCCOMB_X72_Y51_N26
\b2v_inst|Mux58~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux58~4_combout\ = (\b2v_inst|Add3~4_combout\ & (!\b2v_inst|Add3~0_combout\ & !\b2v_inst|Add3~2_combout\)) # (!\b2v_inst|Add3~4_combout\ & (\b2v_inst|Add3~0_combout\ & \b2v_inst|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux58~4_combout\);

-- Location: LCCOMB_X73_Y50_N0
\b2v_inst|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux58~1_combout\ = (\b2v_inst|Add3~4_combout\ & ((\b2v_inst|p2[25][25]~combout\))) # (!\b2v_inst|Add3~4_combout\ & (\b2v_inst|p2[9][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|p2[25][25]~combout\,
	datad => \b2v_inst|Add3~4_combout\,
	combout => \b2v_inst|Mux58~1_combout\);

-- Location: LCCOMB_X72_Y51_N4
\b2v_inst|Mux58~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux58~5_combout\ = (\b2v_inst|Mux58~3_combout\ & ((\b2v_inst|Mux58~2_combout\) # ((\b2v_inst|Mux58~4_combout\)))) # (!\b2v_inst|Mux58~3_combout\ & (((\b2v_inst|Mux58~4_combout\ & \b2v_inst|Mux58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux58~2_combout\,
	datab => \b2v_inst|Mux58~3_combout\,
	datac => \b2v_inst|Mux58~4_combout\,
	datad => \b2v_inst|Mux58~1_combout\,
	combout => \b2v_inst|Mux58~5_combout\);

-- Location: LCCOMB_X72_Y51_N28
\b2v_inst|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux58~0_combout\ = (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Add3~4_combout\ & \b2v_inst|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux58~0_combout\);

-- Location: LCCOMB_X72_Y51_N22
\b2v_inst|Mux58~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux58~6_combout\ = (\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux58~5_combout\) # ((\b2v_inst|Mux44~0_combout\ & \b2v_inst|Mux58~0_combout\)))) # (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Mux44~0_combout\ & ((\b2v_inst|Mux58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Mux44~0_combout\,
	datac => \b2v_inst|Mux58~5_combout\,
	datad => \b2v_inst|Mux58~0_combout\,
	combout => \b2v_inst|Mux58~6_combout\);

-- Location: LCCOMB_X68_Y51_N20
\b2v_inst|Mux63~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~5_combout\ = (\b2v_inst|Mux63~4_combout\ & (((\b2v_inst|Mux58~6_combout\) # (!\b2v_inst|Add2~4_combout\)))) # (!\b2v_inst|Mux63~4_combout\ & (\b2v_inst|Mux56~5_combout\ & (\b2v_inst|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux56~5_combout\,
	datab => \b2v_inst|Mux63~4_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux58~6_combout\,
	combout => \b2v_inst|Mux63~5_combout\);

-- Location: LCCOMB_X67_Y50_N2
\b2v_inst|Mux63~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~6_combout\ = (\b2v_inst|Add2~2_combout\ & ((\b2v_inst|Mux63~3_combout\) # ((!\b2v_inst1|row\(0))))) # (!\b2v_inst|Add2~2_combout\ & (((\b2v_inst1|row\(0) & \b2v_inst|Mux63~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux63~3_combout\,
	datab => \b2v_inst|Add2~2_combout\,
	datac => \b2v_inst1|row\(0),
	datad => \b2v_inst|Mux63~5_combout\,
	combout => \b2v_inst|Mux63~6_combout\);

-- Location: LCCOMB_X67_Y50_N4
\b2v_inst|Mux49~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux49~9_combout\ = (\b2v_inst1|column\(0) & ((\b2v_inst|p2[9][15]~combout\))) # (!\b2v_inst1|column\(0) & (\b2v_inst|p2[9][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|p2[9][18]~combout\,
	datad => \b2v_inst|p2[9][15]~combout\,
	combout => \b2v_inst|Mux49~9_combout\);

-- Location: LCCOMB_X67_Y50_N26
\b2v_inst|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux61~2_combout\ = (\b2v_inst|Add3~2_combout\ & ((!\b2v_inst|Add3~6_combout\) # (!\b2v_inst|p2[25][28]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[25][28]~combout\,
	datab => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux61~2_combout\);

-- Location: LCCOMB_X67_Y50_N6
\b2v_inst|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux61~0_combout\ = (\b2v_inst|Add3~0_combout\ & (!\b2v_inst1|column\(0) & ((\b2v_inst|Add3~2_combout\) # (!\b2v_inst|p2[25][25]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|p2[25][25]~combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux61~0_combout\);

-- Location: LCCOMB_X67_Y50_N24
\b2v_inst|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux61~1_combout\ = (\b2v_inst|Mux61~0_combout\ & ((\b2v_inst|p2[9][15]~combout\) # ((\b2v_inst|Add3~6_combout\)))) # (!\b2v_inst|Mux61~0_combout\ & (((\b2v_inst|p2[9][18]~combout\ & !\b2v_inst|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux61~0_combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|p2[9][18]~combout\,
	datad => \b2v_inst|Add3~6_combout\,
	combout => \b2v_inst|Mux61~1_combout\);

-- Location: LCCOMB_X67_Y50_N28
\b2v_inst|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux61~3_combout\ = (\b2v_inst|Mux61~2_combout\ & (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux61~1_combout\)))) # (!\b2v_inst|Mux61~2_combout\ & ((\b2v_inst|Add3~6_combout\ & ((!\b2v_inst|Mux61~1_combout\))) # (!\b2v_inst|Add3~6_combout\ & 
-- (\b2v_inst|Mux52~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux61~2_combout\,
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Mux52~3_combout\,
	datad => \b2v_inst|Mux61~1_combout\,
	combout => \b2v_inst|Mux61~3_combout\);

-- Location: LCCOMB_X67_Y50_N14
\b2v_inst|Mux63~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~16_combout\ = (\b2v_inst|Mux59~4_combout\ & ((\b2v_inst|Mux49~9_combout\) # ((\b2v_inst|Add3~4_combout\ & \b2v_inst|Mux61~3_combout\)))) # (!\b2v_inst|Mux59~4_combout\ & (\b2v_inst|Add3~4_combout\ & ((\b2v_inst|Mux61~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux59~4_combout\,
	datab => \b2v_inst|Add3~4_combout\,
	datac => \b2v_inst|Mux49~9_combout\,
	datad => \b2v_inst|Mux61~3_combout\,
	combout => \b2v_inst|Mux63~16_combout\);

-- Location: LCCOMB_X70_Y52_N18
\b2v_inst|Mux63~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~9_combout\ = (\b2v_inst|Add2~0_combout\ & (\b2v_inst1|column\(0) & (!\b2v_inst|Add3~0_combout\))) # (!\b2v_inst|Add2~0_combout\ & (\b2v_inst|p2[9][15]~combout\ & ((\b2v_inst1|column\(0)) # (!\b2v_inst|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|p2[9][15]~combout\,
	combout => \b2v_inst|Mux63~9_combout\);

-- Location: LCCOMB_X70_Y52_N28
\b2v_inst|Mux63~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~10_combout\ = (\b2v_inst|Mux63~9_combout\ & (((\b2v_inst|p2[9][18]~combout\ & \b2v_inst|Add3~6_combout\)) # (!\b2v_inst|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst|Mux63~9_combout\,
	datac => \b2v_inst|p2[9][18]~combout\,
	datad => \b2v_inst|Add3~6_combout\,
	combout => \b2v_inst|Mux63~10_combout\);

-- Location: LCCOMB_X70_Y52_N6
\b2v_inst|Mux63~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~7_combout\ = (\b2v_inst|p2[12][14]~combout\ & (!\b2v_inst1|column\(0) & \b2v_inst|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datab => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add2~0_combout\,
	combout => \b2v_inst|Mux63~7_combout\);

-- Location: LCCOMB_X70_Y52_N24
\b2v_inst|Mux63~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~8_combout\ = (\b2v_inst|Add3~0_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Add3~0_combout\ & ((\b2v_inst|Mux63~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst|p2[9][18]~combout\,
	datad => \b2v_inst|Mux63~7_combout\,
	combout => \b2v_inst|Mux63~8_combout\);

-- Location: LCCOMB_X70_Y52_N30
\b2v_inst|Mux63~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~11_combout\ = (\b2v_inst|Add3~2_combout\ & (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux63~8_combout\)))) # (!\b2v_inst|Add3~2_combout\ & (((\b2v_inst|Mux63~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Mux63~10_combout\,
	datac => \b2v_inst|Add3~2_combout\,
	datad => \b2v_inst|Mux63~8_combout\,
	combout => \b2v_inst|Mux63~11_combout\);

-- Location: LCCOMB_X70_Y52_N16
\b2v_inst|Mux63~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~12_combout\ = \b2v_inst|Add3~2_combout\ $ (((!\b2v_inst|Add3~0_combout\ & \b2v_inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst|Add3~2_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux63~12_combout\);

-- Location: LCCOMB_X70_Y52_N10
\b2v_inst|Mux63~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~13_combout\ = (\b2v_inst|Add2~0_combout\ & ((\b2v_inst|Mux63~12_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Mux63~12_combout\ & ((\b2v_inst|p2[9][15]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[9][18]~combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|Mux63~12_combout\,
	datad => \b2v_inst|Add2~0_combout\,
	combout => \b2v_inst|Mux63~13_combout\);

-- Location: LCCOMB_X70_Y53_N26
\b2v_inst|Mux54~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux54~10_combout\ = (\b2v_inst|Add3~6_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Add3~6_combout\ & (((\b2v_inst|p2[22][2]~combout\ & \b2v_inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|p2[22][2]~combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux54~10_combout\);

-- Location: LCCOMB_X70_Y53_N28
\b2v_inst|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux53~0_combout\ = (\b2v_inst1|column\(0) & ((\b2v_inst|Add3~0_combout\ & ((\b2v_inst|Mux54~9_combout\))) # (!\b2v_inst|Add3~0_combout\ & (\b2v_inst|Mux54~10_combout\)))) # (!\b2v_inst1|column\(0) & (((\b2v_inst|Mux54~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst|Mux54~10_combout\,
	datad => \b2v_inst|Mux54~9_combout\,
	combout => \b2v_inst|Mux53~0_combout\);

-- Location: LCCOMB_X70_Y52_N12
\b2v_inst|Mux63~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~14_combout\ = (\b2v_inst|Mux63~13_combout\ & ((\b2v_inst|Add3~6_combout\) # ((\b2v_inst|Mux53~0_combout\ & !\b2v_inst|Add2~0_combout\)))) # (!\b2v_inst|Mux63~13_combout\ & (((\b2v_inst|Mux53~0_combout\ & !\b2v_inst|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux63~13_combout\,
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Mux53~0_combout\,
	datad => \b2v_inst|Add2~0_combout\,
	combout => \b2v_inst|Mux63~14_combout\);

-- Location: LCCOMB_X69_Y50_N18
\b2v_inst|Mux63~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~15_combout\ = (!\b2v_inst|Add2~4_combout\ & ((\b2v_inst|Add3~4_combout\ & (\b2v_inst|Mux63~11_combout\)) # (!\b2v_inst|Add3~4_combout\ & ((\b2v_inst|Mux63~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|Mux63~11_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux63~14_combout\,
	combout => \b2v_inst|Mux63~15_combout\);

-- Location: LCCOMB_X68_Y50_N20
\b2v_inst|Mux63~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~17_combout\ = (\b2v_inst|Mux63~15_combout\) # ((\b2v_inst|Mux63~16_combout\ & (!\b2v_inst|Add2~0_combout\ & \b2v_inst|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux63~16_combout\,
	datab => \b2v_inst|Add2~0_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux63~15_combout\,
	combout => \b2v_inst|Mux63~17_combout\);

-- Location: LCCOMB_X67_Y50_N10
\b2v_inst|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux51~0_combout\ = (\b2v_inst|Add3~4_combout\ & ((\b2v_inst|p2[9][15]~combout\))) # (!\b2v_inst|Add3~4_combout\ & (\b2v_inst|p2[9][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[9][18]~combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|Add3~4_combout\,
	combout => \b2v_inst|Mux51~0_combout\);

-- Location: LCCOMB_X67_Y50_N20
\b2v_inst|Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux51~1_combout\ = (\b2v_inst|Add3~0_combout\ & (\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Add3~4_combout\) # (!\b2v_inst1|column\(0))))) # (!\b2v_inst|Add3~0_combout\ & (\b2v_inst|Add3~4_combout\ & ((\b2v_inst1|column\(0)) # 
-- (\b2v_inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux51~1_combout\);

-- Location: LCCOMB_X67_Y50_N22
\b2v_inst|Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux51~2_combout\ = (\b2v_inst|Mux51~1_combout\ & (((\b2v_inst|p2[12][14]~combout\ & !\b2v_inst|Add3~4_combout\)))) # (!\b2v_inst|Mux51~1_combout\ & (\b2v_inst|Mux51~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux51~0_combout\,
	datab => \b2v_inst|p2[12][14]~combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux51~1_combout\,
	combout => \b2v_inst|Mux51~2_combout\);

-- Location: LCCOMB_X68_Y50_N18
\b2v_inst|Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux51~3_combout\ = (\b2v_inst1|column\(0) & (((\b2v_inst|p2[12][14]~combout\) # (!\b2v_inst|Add3~0_combout\)))) # (!\b2v_inst1|column\(0) & (\b2v_inst|p2[9][18]~combout\ & (\b2v_inst|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|p2[12][14]~combout\,
	combout => \b2v_inst|Mux51~3_combout\);

-- Location: LCCOMB_X67_Y50_N16
\b2v_inst|Mux51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux51~4_combout\ = (\b2v_inst|Add3~2_combout\ & (\b2v_inst|Mux51~3_combout\ & ((\b2v_inst|Add3~0_combout\) # (\b2v_inst|p2[9][15]~combout\)))) # (!\b2v_inst|Add3~2_combout\ & (\b2v_inst|Add3~0_combout\ & (\b2v_inst|p2[9][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datab => \b2v_inst|Add3~2_combout\,
	datac => \b2v_inst|p2[9][15]~combout\,
	datad => \b2v_inst|Mux51~3_combout\,
	combout => \b2v_inst|Mux51~4_combout\);

-- Location: LCCOMB_X67_Y50_N18
\b2v_inst|Mux51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux51~5_combout\ = (\b2v_inst|Add3~6_combout\ & (\b2v_inst|Mux51~2_combout\)) # (!\b2v_inst|Add3~6_combout\ & (((\b2v_inst|Add3~4_combout\ & \b2v_inst|Mux51~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux51~2_combout\,
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux51~4_combout\,
	combout => \b2v_inst|Mux51~5_combout\);

-- Location: LCCOMB_X69_Y51_N14
\b2v_inst|Mux49~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux49~6_combout\ = (\b2v_inst|Add3~0_combout\ & ((\b2v_inst1|column\(0) & (\b2v_inst|p2[9][15]~combout\)) # (!\b2v_inst1|column\(0) & ((\b2v_inst|p2[9][18]~combout\))))) # (!\b2v_inst|Add3~0_combout\ & (\b2v_inst|p2[9][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|p2[9][18]~combout\,
	combout => \b2v_inst|Mux49~6_combout\);

-- Location: LCCOMB_X69_Y51_N0
\b2v_inst|Mux49~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux49~7_combout\ = (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Mux49~6_combout\ & \b2v_inst|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Mux49~6_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux49~7_combout\);

-- Location: LCCOMB_X69_Y51_N16
\b2v_inst|Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux49~3_combout\ = (\b2v_inst1|column\(0) & (\b2v_inst|p2[12][14]~combout\)) # (!\b2v_inst1|column\(0) & ((\b2v_inst|p2[9][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datac => \b2v_inst|p2[12][14]~combout\,
	datad => \b2v_inst|p2[9][15]~combout\,
	combout => \b2v_inst|Mux49~3_combout\);

-- Location: LCCOMB_X69_Y51_N10
\b2v_inst|Mux49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux49~4_combout\ = (\b2v_inst|Add3~6_combout\ & ((\b2v_inst1|column\(0) & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst1|column\(0) & ((\b2v_inst|Mux49~3_combout\))))) # (!\b2v_inst|Add3~6_combout\ & (((\b2v_inst1|column\(0) & 
-- \b2v_inst|Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Mux49~3_combout\,
	combout => \b2v_inst|Mux49~4_combout\);

-- Location: LCCOMB_X69_Y51_N28
\b2v_inst|Mux49~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux49~5_combout\ = (!\b2v_inst|Add3~2_combout\ & (!\b2v_inst|Add3~0_combout\ & \b2v_inst|Mux49~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~2_combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Mux49~4_combout\,
	combout => \b2v_inst|Mux49~5_combout\);

-- Location: LCCOMB_X69_Y51_N18
\b2v_inst|Mux49~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux49~8_combout\ = (\b2v_inst|Add3~4_combout\ & (((\b2v_inst|Mux49~7_combout\) # (\b2v_inst|Mux49~5_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (\b2v_inst|Mux49~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux49~2_combout\,
	datab => \b2v_inst|Mux49~7_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux49~5_combout\,
	combout => \b2v_inst|Mux49~8_combout\);

-- Location: LCCOMB_X68_Y51_N0
\b2v_inst|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~0_combout\ = (\b2v_inst|Add2~0_combout\ & ((\b2v_inst|Add2~4_combout\) # ((\b2v_inst|Mux51~5_combout\)))) # (!\b2v_inst|Add2~0_combout\ & (!\b2v_inst|Add2~4_combout\ & ((\b2v_inst|Mux49~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst|Add2~4_combout\,
	datac => \b2v_inst|Mux51~5_combout\,
	datad => \b2v_inst|Mux49~8_combout\,
	combout => \b2v_inst|Mux63~0_combout\);

-- Location: LCCOMB_X70_Y51_N8
\b2v_inst|Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux59~2_combout\ = (\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Add3~0_combout\) # (\b2v_inst|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux59~2_combout\);

-- Location: LCCOMB_X69_Y51_N12
\b2v_inst|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux59~0_combout\ = (\b2v_inst|p2[9][18]~combout\ & (\b2v_inst|Add3~4_combout\)) # (!\b2v_inst|p2[9][18]~combout\ & (!\b2v_inst|Add3~4_combout\ & \b2v_inst1|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux59~0_combout\);

-- Location: LCCOMB_X70_Y51_N30
\b2v_inst|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux59~1_combout\ = (\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Add3~6_combout\ & (\b2v_inst|Add3~0_combout\ & !\b2v_inst|Mux59~0_combout\)) # (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux59~0_combout\))))) # (!\b2v_inst|Add3~2_combout\ & 
-- (!\b2v_inst|Add3~0_combout\ & (\b2v_inst|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~2_combout\,
	datab => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Mux59~0_combout\,
	combout => \b2v_inst|Mux59~1_combout\);

-- Location: LCCOMB_X70_Y51_N18
\b2v_inst|Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux59~3_combout\ = (\b2v_inst|Add3~4_combout\ & ((\b2v_inst|Mux59~2_combout\ & ((\b2v_inst|p2[25][28]~combout\))) # (!\b2v_inst|Mux59~2_combout\ & (\b2v_inst|Mux59~1_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (\b2v_inst|Mux59~2_combout\ & 
-- (\b2v_inst|Mux59~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|Mux59~2_combout\,
	datac => \b2v_inst|Mux59~1_combout\,
	datad => \b2v_inst|p2[25][28]~combout\,
	combout => \b2v_inst|Mux59~3_combout\);

-- Location: LCCOMB_X67_Y50_N0
\b2v_inst|Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux57~2_combout\ = (\b2v_inst1|column\(0) & (\b2v_inst|p2[12][14]~combout\)) # (!\b2v_inst1|column\(0) & ((\b2v_inst|p2[25][25]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p2[12][14]~combout\,
	datac => \b2v_inst|p2[25][25]~combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux57~2_combout\);

-- Location: LCCOMB_X70_Y51_N28
\b2v_inst|Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux57~3_combout\ = (\b2v_inst|Add3~4_combout\ & (((\b2v_inst|Mux57~2_combout\) # (\b2v_inst|Add3~0_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (\b2v_inst|p2[9][15]~combout\ & ((!\b2v_inst|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|Mux57~2_combout\,
	datad => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|Mux57~3_combout\);

-- Location: LCCOMB_X70_Y51_N6
\b2v_inst|Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux57~4_combout\ = (\b2v_inst|Add3~2_combout\ & (\b2v_inst|Add3~0_combout\)) # (!\b2v_inst|Add3~2_combout\ & (\b2v_inst|Mux57~3_combout\ & ((\b2v_inst|p2[25][28]~combout\) # (!\b2v_inst|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~2_combout\,
	datab => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst|p2[25][28]~combout\,
	datad => \b2v_inst|Mux57~3_combout\,
	combout => \b2v_inst|Mux57~4_combout\);

-- Location: LCCOMB_X70_Y51_N0
\b2v_inst|Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux57~5_combout\ = (\b2v_inst|Add3~4_combout\ & (((\b2v_inst|p2[25][28]~combout\) # (\b2v_inst|Mux57~4_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (\b2v_inst|p2[9][15]~combout\ & ((!\b2v_inst|Mux57~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|p2[25][28]~combout\,
	datad => \b2v_inst|Mux57~4_combout\,
	combout => \b2v_inst|Mux57~5_combout\);

-- Location: LCCOMB_X70_Y51_N10
\b2v_inst|Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux57~6_combout\ = (\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Mux57~5_combout\ & ((!\b2v_inst|Mux57~4_combout\))) # (!\b2v_inst|Mux57~5_combout\ & (\b2v_inst|p2[9][18]~combout\ & \b2v_inst|Mux57~4_combout\)))) # (!\b2v_inst|Add3~2_combout\ & 
-- (((\b2v_inst|Mux57~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~2_combout\,
	datab => \b2v_inst|Mux57~5_combout\,
	datac => \b2v_inst|p2[9][18]~combout\,
	datad => \b2v_inst|Mux57~4_combout\,
	combout => \b2v_inst|Mux57~6_combout\);

-- Location: LCCOMB_X70_Y51_N20
\b2v_inst|Mux57~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux57~7_combout\ = (\b2v_inst|Mux57~1_combout\) # ((\b2v_inst|Add3~6_combout\ & \b2v_inst|Mux57~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux57~1_combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Mux57~6_combout\,
	combout => \b2v_inst|Mux57~7_combout\);

-- Location: LCCOMB_X70_Y51_N12
\b2v_inst|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~1_combout\ = (\b2v_inst|Mux63~0_combout\ & ((\b2v_inst|Mux59~3_combout\) # ((!\b2v_inst|Add2~4_combout\)))) # (!\b2v_inst|Mux63~0_combout\ & (((\b2v_inst|Add2~4_combout\ & \b2v_inst|Mux57~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux63~0_combout\,
	datab => \b2v_inst|Mux59~3_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux57~7_combout\,
	combout => \b2v_inst|Mux63~1_combout\);

-- Location: LCCOMB_X68_Y50_N6
\b2v_inst|Mux63~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~18_combout\ = (\b2v_inst|Mux63~6_combout\ & ((\b2v_inst|Mux63~17_combout\) # ((\b2v_inst1|row\(0))))) # (!\b2v_inst|Mux63~6_combout\ & (((\b2v_inst|Mux63~1_combout\ & !\b2v_inst1|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux63~6_combout\,
	datab => \b2v_inst|Mux63~17_combout\,
	datac => \b2v_inst|Mux63~1_combout\,
	datad => \b2v_inst1|row\(0),
	combout => \b2v_inst|Mux63~18_combout\);

-- Location: LCCOMB_X63_Y51_N8
\b2v_inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~6_combout\ = (\b2v_inst1|row\(4) & (!\b2v_inst|Add2~5\)) # (!\b2v_inst1|row\(4) & ((\b2v_inst|Add2~5\) # (GND)))
-- \b2v_inst|Add2~7\ = CARRY((!\b2v_inst|Add2~5\) # (!\b2v_inst1|row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(4),
	datad => VCC,
	cin => \b2v_inst|Add2~5\,
	combout => \b2v_inst|Add2~6_combout\,
	cout => \b2v_inst|Add2~7\);

-- Location: LCCOMB_X69_Y52_N26
\b2v_inst|Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux41~3_combout\ = (\b2v_inst|Add3~0_combout\ & (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Add3~2_combout\ & !\b2v_inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Add3~2_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux41~3_combout\);

-- Location: LCCOMB_X69_Y52_N14
\b2v_inst|Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux42~2_combout\ = (\b2v_inst|p2[9][18]~combout\ & ((\b2v_inst|Add3~4_combout\ & (\b2v_inst|Mux41~3_combout\)) # (!\b2v_inst|Add3~4_combout\ & ((\b2v_inst|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux41~3_combout\,
	datab => \b2v_inst|Add3~4_combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|p2[9][18]~combout\,
	combout => \b2v_inst|Mux42~2_combout\);

-- Location: LCCOMB_X69_Y52_N18
\b2v_inst|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux46~0_combout\ = (\b2v_inst|Add3~4_combout\ & (\b2v_inst|p2[12][14]~combout\ & ((\b2v_inst|Add3~0_combout\) # (!\b2v_inst1|column\(0))))) # (!\b2v_inst|Add3~4_combout\ & (((\b2v_inst|Add3~0_combout\ & !\b2v_inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datab => \b2v_inst|Add3~4_combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux46~0_combout\);

-- Location: LCCOMB_X69_Y52_N12
\b2v_inst|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux46~1_combout\ = (\b2v_inst|Add3~4_combout\ & (((!\b2v_inst|Add3~2_combout\ & \b2v_inst|Mux46~0_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (\b2v_inst|p2[9][18]~combout\ & ((!\b2v_inst|Mux46~0_combout\) # (!\b2v_inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[9][18]~combout\,
	datab => \b2v_inst|Add3~4_combout\,
	datac => \b2v_inst|Add3~2_combout\,
	datad => \b2v_inst|Mux46~0_combout\,
	combout => \b2v_inst|Mux46~1_combout\);

-- Location: LCCOMB_X69_Y52_N4
\b2v_inst|Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux35~2_combout\ = (\b2v_inst|p2[12][14]~combout\ & \b2v_inst|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datac => \b2v_inst|Add3~4_combout\,
	combout => \b2v_inst|Mux35~2_combout\);

-- Location: LCCOMB_X70_Y52_N22
\b2v_inst|Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux46~2_combout\ = \b2v_inst|Add3~0_combout\ $ (((\b2v_inst|Add3~2_combout\ & \b2v_inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst|Add3~2_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux46~2_combout\);

-- Location: LCCOMB_X69_Y52_N6
\b2v_inst|Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux46~3_combout\ = (\b2v_inst|Add3~6_combout\ & (\b2v_inst|Mux46~1_combout\)) # (!\b2v_inst|Add3~6_combout\ & (((\b2v_inst|Mux35~2_combout\ & \b2v_inst|Mux46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux46~1_combout\,
	datab => \b2v_inst|Mux35~2_combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Mux46~2_combout\,
	combout => \b2v_inst|Mux46~3_combout\);

-- Location: LCCOMB_X69_Y52_N0
\b2v_inst|Mux63~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~26_combout\ = (\b2v_inst|Add2~2_combout\ & (((\b2v_inst|Mux46~3_combout\) # (!\b2v_inst1|row\(0))))) # (!\b2v_inst|Add2~2_combout\ & (\b2v_inst|Mux42~2_combout\ & (\b2v_inst1|row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~2_combout\,
	datab => \b2v_inst|Mux42~2_combout\,
	datac => \b2v_inst1|row\(0),
	datad => \b2v_inst|Mux46~3_combout\,
	combout => \b2v_inst|Mux63~26_combout\);

-- Location: LCCOMB_X69_Y53_N18
\b2v_inst|Mux47~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux47~8_combout\ = (\b2v_inst|p2[12][14]~combout\ & (!\b2v_inst|Add3~2_combout\ & ((!\b2v_inst|Mux56~0_combout\) # (!\b2v_inst|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Mux56~0_combout\,
	datac => \b2v_inst|p2[12][14]~combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux47~8_combout\);

-- Location: LCCOMB_X69_Y53_N22
\b2v_inst|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux47~0_combout\ = (\b2v_inst|Add3~6_combout\ & (((\b2v_inst|Add3~2_combout\)))) # (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Add3~2_combout\ & ((\b2v_inst|p2[12][14]~combout\))) # (!\b2v_inst|Add3~2_combout\ & (\b2v_inst|p2[15][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|p2[15][2]~combout\,
	datac => \b2v_inst|p2[12][14]~combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux47~0_combout\);

-- Location: LCCOMB_X69_Y53_N8
\b2v_inst|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux47~1_combout\ = (\b2v_inst|Add3~6_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Mux47~0_combout\,
	combout => \b2v_inst|Mux47~1_combout\);

-- Location: LCCOMB_X69_Y53_N26
\b2v_inst|Mux47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux47~5_combout\ = (\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Mux47~0_combout\ & (\b2v_inst|p2[9][15]~combout\)) # (!\b2v_inst|Mux47~0_combout\ & ((\b2v_inst|p2[9][18]~combout\))))) # (!\b2v_inst|Add3~6_combout\ & (((\b2v_inst|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|Mux47~0_combout\,
	datad => \b2v_inst|p2[9][18]~combout\,
	combout => \b2v_inst|Mux47~5_combout\);

-- Location: LCCOMB_X70_Y52_N8
\b2v_inst|Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux47~2_combout\ = (\b2v_inst1|column\(0) & (((\b2v_inst|Add3~2_combout\ & \b2v_inst|p2[15][2]~combout\)))) # (!\b2v_inst1|column\(0) & ((\b2v_inst|Add3~2_combout\ & (\b2v_inst|p2[12][14]~combout\)) # (!\b2v_inst|Add3~2_combout\ & 
-- ((\b2v_inst|p2[15][2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add3~2_combout\,
	datad => \b2v_inst|p2[15][2]~combout\,
	combout => \b2v_inst|Mux47~2_combout\);

-- Location: LCCOMB_X70_Y52_N2
\b2v_inst|Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux47~3_combout\ = (\b2v_inst|Add3~6_combout\ & ((\b2v_inst|p2[9][18]~combout\))) # (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Mux47~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux47~2_combout\,
	datac => \b2v_inst|p2[9][18]~combout\,
	datad => \b2v_inst|Add3~6_combout\,
	combout => \b2v_inst|Mux47~3_combout\);

-- Location: LCCOMB_X70_Y52_N4
\b2v_inst|Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux47~4_combout\ = (\b2v_inst|Add3~0_combout\ & (!\b2v_inst1|column\(0))) # (!\b2v_inst|Add3~0_combout\ & ((\b2v_inst|Mux47~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Mux47~3_combout\,
	combout => \b2v_inst|Mux47~4_combout\);

-- Location: LCCOMB_X69_Y53_N4
\b2v_inst|Mux47~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux47~6_combout\ = (\b2v_inst|Add3~0_combout\ & ((\b2v_inst|Mux47~4_combout\ & ((\b2v_inst|Mux47~5_combout\))) # (!\b2v_inst|Mux47~4_combout\ & (\b2v_inst|Mux47~1_combout\)))) # (!\b2v_inst|Add3~0_combout\ & (((\b2v_inst|Mux47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datab => \b2v_inst|Mux47~1_combout\,
	datac => \b2v_inst|Mux47~5_combout\,
	datad => \b2v_inst|Mux47~4_combout\,
	combout => \b2v_inst|Mux47~6_combout\);

-- Location: LCCOMB_X69_Y53_N14
\b2v_inst|Mux45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux45~5_combout\ = (!\b2v_inst1|column\(0) & \b2v_inst|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|Mux45~5_combout\);

-- Location: LCCOMB_X69_Y53_N0
\b2v_inst|Mux47~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux47~7_combout\ = (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|p2[9][18]~combout\ & (\b2v_inst|Mux45~5_combout\ & \b2v_inst|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Mux45~5_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux47~7_combout\);

-- Location: LCCOMB_X69_Y53_N28
\b2v_inst|Mux47~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux47~9_combout\ = (\b2v_inst|Add3~4_combout\ & ((\b2v_inst|Mux47~8_combout\) # ((\b2v_inst|Mux47~7_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (((\b2v_inst|Mux47~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux47~8_combout\,
	datab => \b2v_inst|Add3~4_combout\,
	datac => \b2v_inst|Mux47~6_combout\,
	datad => \b2v_inst|Mux47~7_combout\,
	combout => \b2v_inst|Mux47~9_combout\);

-- Location: LCCOMB_X69_Y53_N6
\b2v_inst|Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux33~3_combout\ = (\b2v_inst|p2[12][14]~combout\ & ((\b2v_inst|Add3~0_combout\) # (!\b2v_inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datab => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|Mux33~3_combout\);

-- Location: LCCOMB_X69_Y53_N12
\b2v_inst|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux43~0_combout\ = (\b2v_inst1|column\(0) & (((\b2v_inst|p2[9][18]~combout\)))) # (!\b2v_inst1|column\(0) & ((\b2v_inst|Add3~0_combout\ & (\b2v_inst|p2[12][14]~combout\)) # (!\b2v_inst|Add3~0_combout\ & ((\b2v_inst|p2[9][18]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|Mux43~0_combout\);

-- Location: LCCOMB_X69_Y53_N24
\b2v_inst|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux43~1_combout\ = (\b2v_inst|Add3~4_combout\ & (\b2v_inst|Mux33~3_combout\ & (!\b2v_inst|Add3~6_combout\))) # (!\b2v_inst|Add3~4_combout\ & (((\b2v_inst|Add3~6_combout\ & \b2v_inst|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux33~3_combout\,
	datab => \b2v_inst|Add3~4_combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Mux43~0_combout\,
	combout => \b2v_inst|Mux43~1_combout\);

-- Location: LCCOMB_X69_Y53_N10
\b2v_inst|Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux43~2_combout\ = (\b2v_inst|Add3~4_combout\ & (\b2v_inst|p2[12][14]~combout\ & ((\b2v_inst|Mux56~0_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (((\b2v_inst|p2[9][18]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux56~0_combout\,
	combout => \b2v_inst|Mux43~2_combout\);

-- Location: LCCOMB_X69_Y53_N20
\b2v_inst|Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux43~3_combout\ = (\b2v_inst|Add3~2_combout\ & (\b2v_inst|Mux43~1_combout\)) # (!\b2v_inst|Add3~2_combout\ & (((\b2v_inst|Add3~6_combout\ & \b2v_inst|Mux43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~2_combout\,
	datab => \b2v_inst|Mux43~1_combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Mux43~2_combout\,
	combout => \b2v_inst|Mux43~3_combout\);

-- Location: LCCOMB_X69_Y53_N30
\b2v_inst|Mux63~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~27_combout\ = (\b2v_inst1|row\(0) & (\b2v_inst|Mux63~26_combout\)) # (!\b2v_inst1|row\(0) & ((\b2v_inst|Mux63~26_combout\ & (\b2v_inst|Mux47~9_combout\)) # (!\b2v_inst|Mux63~26_combout\ & ((\b2v_inst|Mux43~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(0),
	datab => \b2v_inst|Mux63~26_combout\,
	datac => \b2v_inst|Mux47~9_combout\,
	datad => \b2v_inst|Mux43~3_combout\,
	combout => \b2v_inst|Mux63~27_combout\);

-- Location: LCCOMB_X68_Y50_N22
\b2v_inst|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux40~0_combout\ = (\b2v_inst|Add3~0_combout\ & ((!\b2v_inst|Add3~2_combout\))) # (!\b2v_inst|Add3~0_combout\ & (\b2v_inst1|column\(0) & \b2v_inst|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux40~0_combout\);

-- Location: LCCOMB_X68_Y50_N24
\b2v_inst|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux41~0_combout\ = (!\b2v_inst1|column\(0) & (\b2v_inst|Add3~0_combout\ & \b2v_inst|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux41~0_combout\);

-- Location: LCCOMB_X68_Y50_N8
\b2v_inst|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux45~1_combout\ = (\b2v_inst|Mux40~0_combout\ & ((\b2v_inst|Mux41~0_combout\ & ((\b2v_inst|p2[12][14]~combout\))) # (!\b2v_inst|Mux41~0_combout\ & (\b2v_inst|p2[9][18]~combout\)))) # (!\b2v_inst|Mux40~0_combout\ & 
-- (((\b2v_inst|p2[12][14]~combout\ & !\b2v_inst|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux40~0_combout\,
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|p2[12][14]~combout\,
	datad => \b2v_inst|Mux41~0_combout\,
	combout => \b2v_inst|Mux45~1_combout\);

-- Location: LCCOMB_X68_Y50_N26
\b2v_inst|Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux45~2_combout\ = (\b2v_inst|Add3~2_combout\) # ((!\b2v_inst1|column\(0) & \b2v_inst|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux45~2_combout\);

-- Location: LCCOMB_X68_Y50_N4
\b2v_inst|Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux45~3_combout\ = (\b2v_inst|p2[12][14]~combout\ & (\b2v_inst|Add3~6_combout\ $ (\b2v_inst|Mux45~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Mux45~2_combout\,
	datad => \b2v_inst|p2[12][14]~combout\,
	combout => \b2v_inst|Mux45~3_combout\);

-- Location: LCCOMB_X68_Y50_N30
\b2v_inst|Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux45~4_combout\ = (\b2v_inst|Add3~4_combout\ & (((\b2v_inst|Mux45~3_combout\)))) # (!\b2v_inst|Add3~4_combout\ & (\b2v_inst|Add3~6_combout\ & (\b2v_inst|Mux45~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Mux45~1_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux45~3_combout\,
	combout => \b2v_inst|Mux45~4_combout\);

-- Location: LCCOMB_X68_Y50_N10
\b2v_inst|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux41~1_combout\ = (\b2v_inst|Add3~6_combout\ & ((\b2v_inst|p2[9][18]~combout\) # (\b2v_inst|Mux41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|Add3~6_combout\,
	datad => \b2v_inst|Mux41~0_combout\,
	combout => \b2v_inst|Mux41~1_combout\);

-- Location: LCCOMB_X68_Y50_N28
\b2v_inst|Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux41~2_combout\ = (\b2v_inst|Mux41~0_combout\ & (\b2v_inst|p2[9][15]~combout\ & (\b2v_inst|Mux41~1_combout\ $ (\b2v_inst|Add3~4_combout\)))) # (!\b2v_inst|Mux41~0_combout\ & (\b2v_inst|Mux41~1_combout\ & ((!\b2v_inst|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux41~1_combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux41~0_combout\,
	combout => \b2v_inst|Mux41~2_combout\);

-- Location: LCCOMB_X69_Y51_N20
\b2v_inst|Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux40~2_combout\ = (\b2v_inst|Add3~0_combout\ & (\b2v_inst|p2[9][15]~combout\ & (!\b2v_inst1|column\(0) & \b2v_inst|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux40~2_combout\);

-- Location: LCCOMB_X69_Y51_N24
\b2v_inst|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux40~1_combout\ = (\b2v_inst|Mux40~0_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Mux40~0_combout\ & ((\b2v_inst|p2[9][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|p2[9][15]~combout\,
	datad => \b2v_inst|Mux40~0_combout\,
	combout => \b2v_inst|Mux40~1_combout\);

-- Location: LCCOMB_X69_Y51_N30
\b2v_inst|Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux40~3_combout\ = (\b2v_inst|Add3~6_combout\ & (((!\b2v_inst|Add3~4_combout\ & \b2v_inst|Mux40~1_combout\)))) # (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Mux40~2_combout\ & (\b2v_inst|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Mux40~2_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux40~1_combout\,
	combout => \b2v_inst|Mux40~3_combout\);

-- Location: LCCOMB_X69_Y50_N12
\b2v_inst|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux44~1_combout\ = (\b2v_inst|Add3~2_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Mux44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add3~2_combout\,
	datac => \b2v_inst|p2[9][18]~combout\,
	datad => \b2v_inst|Mux44~0_combout\,
	combout => \b2v_inst|Mux44~1_combout\);

-- Location: LCCOMB_X69_Y50_N8
\b2v_inst|Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux44~3_combout\ = (\b2v_inst|p2[12][14]~combout\ & ((\b2v_inst|Add3~0_combout\ & ((\b2v_inst|Add3~2_combout\))) # (!\b2v_inst|Add3~0_combout\ & (\b2v_inst|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|p2[12][14]~combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux44~3_combout\);

-- Location: LCCOMB_X69_Y50_N14
\b2v_inst|Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux44~2_combout\ = (\b2v_inst|Add3~4_combout\ & (((\b2v_inst|Add3~0_combout\) # (\b2v_inst|Add3~2_combout\)) # (!\b2v_inst|p2[12][14]~combout\))) # (!\b2v_inst|Add3~4_combout\ & (!\b2v_inst|p2[12][14]~combout\ & (\b2v_inst|Add3~0_combout\ & 
-- \b2v_inst|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|p2[12][14]~combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux44~2_combout\);

-- Location: LCCOMB_X69_Y50_N10
\b2v_inst|Mux44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux44~4_combout\ = (\b2v_inst|Mux44~3_combout\ & ((\b2v_inst|Mux44~2_combout\ $ (\b2v_inst|Add3~6_combout\)))) # (!\b2v_inst|Mux44~3_combout\ & (\b2v_inst|Mux44~1_combout\ & (!\b2v_inst|Mux44~2_combout\ & \b2v_inst|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux44~1_combout\,
	datab => \b2v_inst|Mux44~3_combout\,
	datac => \b2v_inst|Mux44~2_combout\,
	datad => \b2v_inst|Add3~6_combout\,
	combout => \b2v_inst|Mux44~4_combout\);

-- Location: LCCOMB_X69_Y50_N4
\b2v_inst|Mux63~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~19_combout\ = (\b2v_inst1|row\(0) & ((\b2v_inst|Add2~2_combout\ & ((\b2v_inst|Mux44~4_combout\))) # (!\b2v_inst|Add2~2_combout\ & (\b2v_inst|Mux40~3_combout\)))) # (!\b2v_inst1|row\(0) & (\b2v_inst|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(0),
	datab => \b2v_inst|Add2~2_combout\,
	datac => \b2v_inst|Mux40~3_combout\,
	datad => \b2v_inst|Mux44~4_combout\,
	combout => \b2v_inst|Mux63~19_combout\);

-- Location: LCCOMB_X68_Y50_N0
\b2v_inst|Mux63~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~20_combout\ = (\b2v_inst|Mux63~19_combout\ & ((\b2v_inst|Mux45~4_combout\) # ((\b2v_inst1|row\(0))))) # (!\b2v_inst|Mux63~19_combout\ & (((\b2v_inst|Mux41~2_combout\ & !\b2v_inst1|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux45~4_combout\,
	datab => \b2v_inst|Mux41~2_combout\,
	datac => \b2v_inst|Mux63~19_combout\,
	datad => \b2v_inst1|row\(0),
	combout => \b2v_inst|Mux63~20_combout\);

-- Location: LCCOMB_X69_Y50_N6
\b2v_inst|Mux59~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux59~6_combout\ = (!\b2v_inst|Add3~4_combout\ & \b2v_inst|Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Add3~6_combout\,
	combout => \b2v_inst|Mux59~6_combout\);

-- Location: LCCOMB_X69_Y51_N2
\b2v_inst|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux37~0_combout\ = (\b2v_inst|Mux40~0_combout\ & (\b2v_inst|p2[9][18]~combout\)) # (!\b2v_inst|Mux40~0_combout\ & ((\b2v_inst|p2[12][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p2[9][18]~combout\,
	datac => \b2v_inst|p2[12][14]~combout\,
	datad => \b2v_inst|Mux40~0_combout\,
	combout => \b2v_inst|Mux37~0_combout\);

-- Location: LCCOMB_X69_Y52_N30
\b2v_inst|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux37~1_combout\ = (\b2v_inst|Mux59~6_combout\ & ((\b2v_inst|Mux37~0_combout\) # ((\b2v_inst|Mux35~2_combout\ & \b2v_inst|Mux41~3_combout\)))) # (!\b2v_inst|Mux59~6_combout\ & (\b2v_inst|Mux35~2_combout\ & (\b2v_inst|Mux41~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux59~6_combout\,
	datab => \b2v_inst|Mux35~2_combout\,
	datac => \b2v_inst|Mux41~3_combout\,
	datad => \b2v_inst|Mux37~0_combout\,
	combout => \b2v_inst|Mux37~1_combout\);

-- Location: LCCOMB_X69_Y52_N22
\b2v_inst|Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux34~2_combout\ = (\b2v_inst|p2[12][14]~combout\ & (\b2v_inst|Add3~6_combout\ & !\b2v_inst|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	combout => \b2v_inst|Mux34~2_combout\);

-- Location: LCCOMB_X69_Y52_N20
\b2v_inst|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux32~2_combout\ = (\b2v_inst|Mux34~2_combout\ & ((\b2v_inst|Add3~2_combout\ & (\b2v_inst1|column\(0) & !\b2v_inst|Add3~0_combout\)) # (!\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux34~2_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add3~2_combout\,
	datad => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|Mux32~2_combout\);

-- Location: LCCOMB_X69_Y52_N16
\b2v_inst|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux35~0_combout\ = (\b2v_inst|Add3~0_combout\ & (\b2v_inst|Add3~2_combout\ & !\b2v_inst1|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst|Add3~2_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux35~0_combout\);

-- Location: LCCOMB_X69_Y52_N2
\b2v_inst|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux35~1_combout\ = (\b2v_inst|p2[12][14]~combout\ & ((\b2v_inst|Add3~6_combout\ & (!\b2v_inst|Add3~4_combout\)) # (!\b2v_inst|Add3~6_combout\ & (\b2v_inst|Add3~4_combout\ & \b2v_inst|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux35~0_combout\,
	combout => \b2v_inst|Mux35~1_combout\);

-- Location: LCCOMB_X69_Y52_N24
\b2v_inst|Mux63~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~23_combout\ = (\b2v_inst|Add2~2_combout\ & (((\b2v_inst|Mux35~1_combout\) # (!\b2v_inst1|row\(0))))) # (!\b2v_inst|Add2~2_combout\ & (\b2v_inst|Mux32~2_combout\ & (\b2v_inst1|row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~2_combout\,
	datab => \b2v_inst|Mux32~2_combout\,
	datac => \b2v_inst1|row\(0),
	datad => \b2v_inst|Mux35~1_combout\,
	combout => \b2v_inst|Mux63~23_combout\);

-- Location: LCCOMB_X69_Y52_N28
\b2v_inst|Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux33~2_combout\ = (\b2v_inst|Add3~0_combout\ & (\b2v_inst|Add3~2_combout\)) # (!\b2v_inst|Add3~0_combout\ & (!\b2v_inst|Add3~2_combout\ & \b2v_inst1|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst|Add3~2_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux33~2_combout\);

-- Location: LCCOMB_X69_Y52_N10
\b2v_inst|Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux33~4_combout\ = (\b2v_inst|p2[12][14]~combout\ & (\b2v_inst|Add3~6_combout\ & (!\b2v_inst|Add3~4_combout\ & !\b2v_inst|Mux33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p2[12][14]~combout\,
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Mux33~2_combout\,
	combout => \b2v_inst|Mux33~4_combout\);

-- Location: LCCOMB_X69_Y52_N8
\b2v_inst|Mux63~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~24_combout\ = (\b2v_inst|Mux63~23_combout\ & ((\b2v_inst|Mux37~1_combout\) # ((\b2v_inst1|row\(0))))) # (!\b2v_inst|Mux63~23_combout\ & (((!\b2v_inst1|row\(0) & \b2v_inst|Mux33~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux37~1_combout\,
	datab => \b2v_inst|Mux63~23_combout\,
	datac => \b2v_inst1|row\(0),
	datad => \b2v_inst|Mux33~4_combout\,
	combout => \b2v_inst|Mux63~24_combout\);

-- Location: LCCOMB_X68_Y50_N2
\b2v_inst|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux39~0_combout\ = (\b2v_inst|Add3~0_combout\ & (\b2v_inst1|column\(0) & (\b2v_inst|p2[9][15]~combout\))) # (!\b2v_inst|Add3~0_combout\ & (((\b2v_inst|p2[9][18]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|p2[9][18]~combout\,
	combout => \b2v_inst|Mux39~0_combout\);

-- Location: LCCOMB_X68_Y50_N12
\b2v_inst|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux39~1_combout\ = (\b2v_inst1|column\(0) & ((\b2v_inst|Add3~0_combout\ & ((\b2v_inst|p2[9][18]~combout\))) # (!\b2v_inst|Add3~0_combout\ & (\b2v_inst|p2[9][15]~combout\)))) # (!\b2v_inst1|column\(0) & (((\b2v_inst|p2[9][18]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p2[9][15]~combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|p2[9][18]~combout\,
	combout => \b2v_inst|Mux39~1_combout\);

-- Location: LCCOMB_X69_Y50_N2
\b2v_inst|Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux39~2_combout\ = (\b2v_inst|Mux59~6_combout\ & ((\b2v_inst|Add3~2_combout\ & (\b2v_inst|Mux39~0_combout\)) # (!\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Mux39~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux39~0_combout\,
	datab => \b2v_inst|Add3~2_combout\,
	datac => \b2v_inst|Mux59~6_combout\,
	datad => \b2v_inst|Mux39~1_combout\,
	combout => \b2v_inst|Mux39~2_combout\);

-- Location: LCCOMB_X69_Y50_N28
\b2v_inst|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux34~0_combout\ = (!\b2v_inst1|column\(0) & (\b2v_inst|Add3~0_combout\ & \b2v_inst|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|Mux34~0_combout\);

-- Location: LCCOMB_X69_Y50_N30
\b2v_inst|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux34~1_combout\ = (!\b2v_inst|Add3~4_combout\ & (\b2v_inst|Add3~6_combout\ & (\b2v_inst|p2[12][14]~combout\ & !\b2v_inst|Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~4_combout\,
	datab => \b2v_inst|Add3~6_combout\,
	datac => \b2v_inst|p2[12][14]~combout\,
	datad => \b2v_inst|Mux34~0_combout\,
	combout => \b2v_inst|Mux34~1_combout\);

-- Location: LCCOMB_X69_Y50_N24
\b2v_inst|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux38~0_combout\ = (\b2v_inst|Add3~0_combout\ & (\b2v_inst1|column\(0) & (\b2v_inst|p2[12][14]~combout\))) # (!\b2v_inst|Add3~0_combout\ & (((\b2v_inst|p2[9][18]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p2[12][14]~combout\,
	datac => \b2v_inst|Add3~0_combout\,
	datad => \b2v_inst|p2[9][18]~combout\,
	combout => \b2v_inst|Mux38~0_combout\);

-- Location: LCCOMB_X69_Y50_N26
\b2v_inst|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux38~1_combout\ = (\b2v_inst|Mux59~6_combout\ & ((\b2v_inst|Add3~2_combout\ & (\b2v_inst|Mux38~0_combout\)) # (!\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Mux44~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~2_combout\,
	datab => \b2v_inst|Mux38~0_combout\,
	datac => \b2v_inst|Mux59~6_combout\,
	datad => \b2v_inst|Mux44~0_combout\,
	combout => \b2v_inst|Mux38~1_combout\);

-- Location: LCCOMB_X69_Y50_N16
\b2v_inst|Mux63~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~21_combout\ = (\b2v_inst|Add2~2_combout\ & (((\b2v_inst|Mux38~1_combout\) # (!\b2v_inst1|row\(0))))) # (!\b2v_inst|Add2~2_combout\ & (\b2v_inst|Mux34~1_combout\ & ((\b2v_inst1|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux34~1_combout\,
	datab => \b2v_inst|Add2~2_combout\,
	datac => \b2v_inst|Mux38~1_combout\,
	datad => \b2v_inst1|row\(0),
	combout => \b2v_inst|Mux63~21_combout\);

-- Location: LCCOMB_X69_Y50_N20
\b2v_inst|Mux63~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~22_combout\ = (\b2v_inst1|row\(0) & (((\b2v_inst|Mux63~21_combout\)))) # (!\b2v_inst1|row\(0) & ((\b2v_inst|Mux63~21_combout\ & (\b2v_inst|Mux39~2_combout\)) # (!\b2v_inst|Mux63~21_combout\ & ((\b2v_inst|Mux35~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(0),
	datab => \b2v_inst|Mux39~2_combout\,
	datac => \b2v_inst|Mux35~1_combout\,
	datad => \b2v_inst|Mux63~21_combout\,
	combout => \b2v_inst|Mux63~22_combout\);

-- Location: LCCOMB_X69_Y50_N22
\b2v_inst|Mux63~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~25_combout\ = (\b2v_inst|Add2~0_combout\ & (((\b2v_inst|Add2~4_combout\) # (\b2v_inst|Mux63~22_combout\)))) # (!\b2v_inst|Add2~0_combout\ & (\b2v_inst|Mux63~24_combout\ & (!\b2v_inst|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux63~24_combout\,
	datab => \b2v_inst|Add2~0_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux63~22_combout\,
	combout => \b2v_inst|Mux63~25_combout\);

-- Location: LCCOMB_X68_Y50_N14
\b2v_inst|Mux63~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux63~28_combout\ = (\b2v_inst|Add2~4_combout\ & ((\b2v_inst|Mux63~25_combout\ & (\b2v_inst|Mux63~27_combout\)) # (!\b2v_inst|Mux63~25_combout\ & ((\b2v_inst|Mux63~20_combout\))))) # (!\b2v_inst|Add2~4_combout\ & 
-- (((\b2v_inst|Mux63~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux63~27_combout\,
	datab => \b2v_inst|Mux63~20_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux63~25_combout\,
	combout => \b2v_inst|Mux63~28_combout\);

-- Location: LCCOMB_X65_Y50_N24
\b2v_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~0_combout\ = (!\b2v_inst|Add3~8_combout\ & ((\b2v_inst|Add2~6_combout\ & (\b2v_inst|Mux63~18_combout\)) # (!\b2v_inst|Add2~6_combout\ & ((\b2v_inst|Mux63~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~8_combout\,
	datab => \b2v_inst|Mux63~18_combout\,
	datac => \b2v_inst|Add2~6_combout\,
	datad => \b2v_inst|Mux63~28_combout\,
	combout => \b2v_inst|process_0~0_combout\);

-- Location: LCCOMB_X68_Y50_N16
\b2v_inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan2~0_combout\ = (((!\b2v_inst|Add3~2_combout\) # (!\b2v_inst|Add3~4_combout\)) # (!\b2v_inst|Add3~0_combout\)) # (!\b2v_inst|Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~6_combout\,
	datab => \b2v_inst|Add3~0_combout\,
	datac => \b2v_inst|Add3~4_combout\,
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X65_Y50_N10
\b2v_inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~1_combout\ = (!\b2v_inst|Add3~14_combout\ & (!\b2v_inst|Add3~10_combout\ & (!\b2v_inst|Add3~12_combout\ & !\b2v_inst|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~14_combout\,
	datab => \b2v_inst|Add3~10_combout\,
	datac => \b2v_inst|Add3~12_combout\,
	datad => \b2v_inst|Add3~16_combout\,
	combout => \b2v_inst|process_0~1_combout\);

-- Location: LCCOMB_X65_Y50_N12
\b2v_inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~3_combout\ = (\b2v_inst|process_0~2_combout\ & (\b2v_inst|process_0~0_combout\ & (\b2v_inst|LessThan2~0_combout\ & \b2v_inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~2_combout\,
	datab => \b2v_inst|process_0~0_combout\,
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|process_0~1_combout\,
	combout => \b2v_inst|process_0~3_combout\);

-- Location: LCCOMB_X63_Y51_N10
\b2v_inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~8_combout\ = (\b2v_inst1|row\(5) & ((GND) # (!\b2v_inst|Add2~7\))) # (!\b2v_inst1|row\(5) & (\b2v_inst|Add2~7\ $ (GND)))
-- \b2v_inst|Add2~9\ = CARRY((\b2v_inst1|row\(5)) # (!\b2v_inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|row\(5),
	datad => VCC,
	cin => \b2v_inst|Add2~7\,
	combout => \b2v_inst|Add2~8_combout\,
	cout => \b2v_inst|Add2~9\);

-- Location: LCCOMB_X63_Y51_N12
\b2v_inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~10_combout\ = (\b2v_inst1|row\(6) & (!\b2v_inst|Add2~9\)) # (!\b2v_inst1|row\(6) & ((\b2v_inst|Add2~9\) # (GND)))
-- \b2v_inst|Add2~11\ = CARRY((!\b2v_inst|Add2~9\) # (!\b2v_inst1|row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|row\(6),
	datad => VCC,
	cin => \b2v_inst|Add2~9\,
	combout => \b2v_inst|Add2~10_combout\,
	cout => \b2v_inst|Add2~11\);

-- Location: LCCOMB_X63_Y51_N14
\b2v_inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~12_combout\ = (\b2v_inst1|row\(7) & (\b2v_inst|Add2~11\ $ (GND))) # (!\b2v_inst1|row\(7) & (!\b2v_inst|Add2~11\ & VCC))
-- \b2v_inst|Add2~13\ = CARRY((\b2v_inst1|row\(7) & !\b2v_inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(7),
	datad => VCC,
	cin => \b2v_inst|Add2~11\,
	combout => \b2v_inst|Add2~12_combout\,
	cout => \b2v_inst|Add2~13\);

-- Location: LCCOMB_X63_Y51_N16
\b2v_inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~14_combout\ = (\b2v_inst1|row\(8) & (\b2v_inst|Add2~13\ & VCC)) # (!\b2v_inst1|row\(8) & (!\b2v_inst|Add2~13\))
-- \b2v_inst|Add2~15\ = CARRY((!\b2v_inst1|row\(8) & !\b2v_inst|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(8),
	datad => VCC,
	cin => \b2v_inst|Add2~13\,
	combout => \b2v_inst|Add2~14_combout\,
	cout => \b2v_inst|Add2~15\);

-- Location: LCCOMB_X63_Y51_N18
\b2v_inst|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~16_combout\ = \b2v_inst|Add2~15\ $ (GND)
-- \b2v_inst|Add2~17\ = CARRY(!\b2v_inst|Add2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~15\,
	combout => \b2v_inst|Add2~16_combout\,
	cout => \b2v_inst|Add2~17\);

-- Location: LCCOMB_X63_Y51_N20
\b2v_inst|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~18_combout\ = !\b2v_inst|Add2~17\
-- \b2v_inst|Add2~19\ = CARRY(!\b2v_inst|Add2~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~17\,
	combout => \b2v_inst|Add2~18_combout\,
	cout => \b2v_inst|Add2~19\);

-- Location: LCCOMB_X63_Y51_N22
\b2v_inst|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~20_combout\ = \b2v_inst|Add2~19\ $ (GND)
-- \b2v_inst|Add2~21\ = CARRY(!\b2v_inst|Add2~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~19\,
	combout => \b2v_inst|Add2~20_combout\,
	cout => \b2v_inst|Add2~21\);

-- Location: LCCOMB_X63_Y51_N24
\b2v_inst|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~22_combout\ = !\b2v_inst|Add2~21\
-- \b2v_inst|Add2~23\ = CARRY(!\b2v_inst|Add2~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~21\,
	combout => \b2v_inst|Add2~22_combout\,
	cout => \b2v_inst|Add2~23\);

-- Location: LCCOMB_X63_Y51_N26
\b2v_inst|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~24_combout\ = \b2v_inst|Add2~23\ $ (GND)
-- \b2v_inst|Add2~25\ = CARRY(!\b2v_inst|Add2~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~23\,
	combout => \b2v_inst|Add2~24_combout\,
	cout => \b2v_inst|Add2~25\);

-- Location: LCCOMB_X63_Y51_N28
\b2v_inst|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~26_combout\ = !\b2v_inst|Add2~25\
-- \b2v_inst|Add2~27\ = CARRY(!\b2v_inst|Add2~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~25\,
	combout => \b2v_inst|Add2~26_combout\,
	cout => \b2v_inst|Add2~27\);

-- Location: LCCOMB_X63_Y51_N30
\b2v_inst|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~28_combout\ = \b2v_inst|Add2~27\ $ (GND)
-- \b2v_inst|Add2~29\ = CARRY(!\b2v_inst|Add2~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~27\,
	combout => \b2v_inst|Add2~28_combout\,
	cout => \b2v_inst|Add2~29\);

-- Location: LCCOMB_X63_Y50_N0
\b2v_inst|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~30_combout\ = !\b2v_inst|Add2~29\
-- \b2v_inst|Add2~31\ = CARRY(!\b2v_inst|Add2~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~29\,
	combout => \b2v_inst|Add2~30_combout\,
	cout => \b2v_inst|Add2~31\);

-- Location: LCCOMB_X63_Y50_N2
\b2v_inst|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~32_combout\ = \b2v_inst|Add2~31\ $ (GND)
-- \b2v_inst|Add2~33\ = CARRY(!\b2v_inst|Add2~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~31\,
	combout => \b2v_inst|Add2~32_combout\,
	cout => \b2v_inst|Add2~33\);

-- Location: LCCOMB_X63_Y50_N4
\b2v_inst|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~34_combout\ = !\b2v_inst|Add2~33\
-- \b2v_inst|Add2~35\ = CARRY(!\b2v_inst|Add2~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~33\,
	combout => \b2v_inst|Add2~34_combout\,
	cout => \b2v_inst|Add2~35\);

-- Location: LCCOMB_X63_Y50_N6
\b2v_inst|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~36_combout\ = \b2v_inst|Add2~35\ $ (GND)
-- \b2v_inst|Add2~37\ = CARRY(!\b2v_inst|Add2~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~35\,
	combout => \b2v_inst|Add2~36_combout\,
	cout => \b2v_inst|Add2~37\);

-- Location: LCCOMB_X63_Y50_N8
\b2v_inst|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~38_combout\ = !\b2v_inst|Add2~37\
-- \b2v_inst|Add2~39\ = CARRY(!\b2v_inst|Add2~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~37\,
	combout => \b2v_inst|Add2~38_combout\,
	cout => \b2v_inst|Add2~39\);

-- Location: LCCOMB_X63_Y50_N10
\b2v_inst|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~40_combout\ = \b2v_inst|Add2~39\ $ (GND)
-- \b2v_inst|Add2~41\ = CARRY(!\b2v_inst|Add2~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~39\,
	combout => \b2v_inst|Add2~40_combout\,
	cout => \b2v_inst|Add2~41\);

-- Location: LCCOMB_X63_Y50_N12
\b2v_inst|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~42_combout\ = !\b2v_inst|Add2~41\
-- \b2v_inst|Add2~43\ = CARRY(!\b2v_inst|Add2~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~41\,
	combout => \b2v_inst|Add2~42_combout\,
	cout => \b2v_inst|Add2~43\);

-- Location: LCCOMB_X63_Y50_N14
\b2v_inst|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~44_combout\ = \b2v_inst|Add2~43\ $ (GND)
-- \b2v_inst|Add2~45\ = CARRY(!\b2v_inst|Add2~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~43\,
	combout => \b2v_inst|Add2~44_combout\,
	cout => \b2v_inst|Add2~45\);

-- Location: LCCOMB_X63_Y50_N16
\b2v_inst|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~46_combout\ = !\b2v_inst|Add2~45\
-- \b2v_inst|Add2~47\ = CARRY(!\b2v_inst|Add2~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~45\,
	combout => \b2v_inst|Add2~46_combout\,
	cout => \b2v_inst|Add2~47\);

-- Location: LCCOMB_X63_Y50_N18
\b2v_inst|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~48_combout\ = \b2v_inst|Add2~47\ $ (GND)
-- \b2v_inst|Add2~49\ = CARRY(!\b2v_inst|Add2~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~47\,
	combout => \b2v_inst|Add2~48_combout\,
	cout => \b2v_inst|Add2~49\);

-- Location: LCCOMB_X63_Y50_N20
\b2v_inst|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~50_combout\ = !\b2v_inst|Add2~49\
-- \b2v_inst|Add2~51\ = CARRY(!\b2v_inst|Add2~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~49\,
	combout => \b2v_inst|Add2~50_combout\,
	cout => \b2v_inst|Add2~51\);

-- Location: LCCOMB_X63_Y50_N22
\b2v_inst|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~52_combout\ = \b2v_inst|Add2~51\ $ (GND)
-- \b2v_inst|Add2~53\ = CARRY(!\b2v_inst|Add2~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~51\,
	combout => \b2v_inst|Add2~52_combout\,
	cout => \b2v_inst|Add2~53\);

-- Location: LCCOMB_X63_Y50_N24
\b2v_inst|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~54_combout\ = !\b2v_inst|Add2~53\
-- \b2v_inst|Add2~55\ = CARRY(!\b2v_inst|Add2~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~53\,
	combout => \b2v_inst|Add2~54_combout\,
	cout => \b2v_inst|Add2~55\);

-- Location: LCCOMB_X63_Y50_N26
\b2v_inst|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~56_combout\ = \b2v_inst|Add2~55\ $ (GND)
-- \b2v_inst|Add2~57\ = CARRY(!\b2v_inst|Add2~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~55\,
	combout => \b2v_inst|Add2~56_combout\,
	cout => \b2v_inst|Add2~57\);

-- Location: LCCOMB_X63_Y50_N28
\b2v_inst|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~58_combout\ = !\b2v_inst|Add2~57\
-- \b2v_inst|Add2~59\ = CARRY(!\b2v_inst|Add2~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add2~57\,
	combout => \b2v_inst|Add2~58_combout\,
	cout => \b2v_inst|Add2~59\);

-- Location: LCCOMB_X63_Y50_N30
\b2v_inst|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~60_combout\ = \b2v_inst|Add2~59\ $ (!\b2v_inst1|row\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|row\(31),
	cin => \b2v_inst|Add2~59\,
	combout => \b2v_inst|Add2~60_combout\);

-- Location: LCCOMB_X62_Y50_N6
\b2v_inst|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~16_combout\ = (\b2v_inst|Add2~58_combout\) # ((\b2v_inst|Add2~60_combout\) # (\b2v_inst|Add2~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add2~58_combout\,
	datac => \b2v_inst|Add2~60_combout\,
	datad => \b2v_inst|Add2~56_combout\,
	combout => \b2v_inst|process_0~16_combout\);

-- Location: LCCOMB_X62_Y51_N10
\b2v_inst|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~11_combout\ = (\b2v_inst|Add2~30_combout\) # ((\b2v_inst|Add2~26_combout\) # ((\b2v_inst|Add2~28_combout\) # (\b2v_inst|Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~30_combout\,
	datab => \b2v_inst|Add2~26_combout\,
	datac => \b2v_inst|Add2~28_combout\,
	datad => \b2v_inst|Add2~24_combout\,
	combout => \b2v_inst|process_0~11_combout\);

-- Location: LCCOMB_X62_Y51_N24
\b2v_inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~9_combout\ = (\b2v_inst|Add2~8_combout\) # ((\b2v_inst|Add2~12_combout\) # ((\b2v_inst|Add2~10_combout\) # (\b2v_inst|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~8_combout\,
	datab => \b2v_inst|Add2~12_combout\,
	datac => \b2v_inst|Add2~10_combout\,
	datad => \b2v_inst|Add2~14_combout\,
	combout => \b2v_inst|process_0~9_combout\);

-- Location: LCCOMB_X63_Y51_N0
\b2v_inst|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~10_combout\ = (\b2v_inst|Add2~18_combout\) # ((\b2v_inst|Add2~16_combout\) # ((\b2v_inst|Add2~20_combout\) # (\b2v_inst|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~18_combout\,
	datab => \b2v_inst|Add2~16_combout\,
	datac => \b2v_inst|Add2~20_combout\,
	datad => \b2v_inst|Add2~22_combout\,
	combout => \b2v_inst|process_0~10_combout\);

-- Location: LCCOMB_X62_Y50_N0
\b2v_inst|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~12_combout\ = (\b2v_inst|Add2~34_combout\) # ((\b2v_inst|Add2~36_combout\) # ((\b2v_inst|Add2~38_combout\) # (\b2v_inst|Add2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~34_combout\,
	datab => \b2v_inst|Add2~36_combout\,
	datac => \b2v_inst|Add2~38_combout\,
	datad => \b2v_inst|Add2~32_combout\,
	combout => \b2v_inst|process_0~12_combout\);

-- Location: LCCOMB_X62_Y51_N12
\b2v_inst|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~13_combout\ = (\b2v_inst|process_0~11_combout\) # ((\b2v_inst|process_0~9_combout\) # ((\b2v_inst|process_0~10_combout\) # (\b2v_inst|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~11_combout\,
	datab => \b2v_inst|process_0~9_combout\,
	datac => \b2v_inst|process_0~10_combout\,
	datad => \b2v_inst|process_0~12_combout\,
	combout => \b2v_inst|process_0~13_combout\);

-- Location: LCCOMB_X62_Y50_N26
\b2v_inst|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~14_combout\ = (\b2v_inst|Add2~42_combout\) # ((\b2v_inst|Add2~44_combout\) # ((\b2v_inst|Add2~40_combout\) # (\b2v_inst|Add2~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~42_combout\,
	datab => \b2v_inst|Add2~44_combout\,
	datac => \b2v_inst|Add2~40_combout\,
	datad => \b2v_inst|Add2~46_combout\,
	combout => \b2v_inst|process_0~14_combout\);

-- Location: LCCOMB_X62_Y50_N12
\b2v_inst|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~15_combout\ = (\b2v_inst|Add2~54_combout\) # ((\b2v_inst|Add2~52_combout\) # ((\b2v_inst|Add2~50_combout\) # (\b2v_inst|Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~54_combout\,
	datab => \b2v_inst|Add2~52_combout\,
	datac => \b2v_inst|Add2~50_combout\,
	datad => \b2v_inst|Add2~48_combout\,
	combout => \b2v_inst|process_0~15_combout\);

-- Location: LCCOMB_X62_Y50_N8
\b2v_inst|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~17_combout\ = (\b2v_inst|process_0~16_combout\) # ((\b2v_inst|process_0~13_combout\) # ((\b2v_inst|process_0~14_combout\) # (\b2v_inst|process_0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~16_combout\,
	datab => \b2v_inst|process_0~13_combout\,
	datac => \b2v_inst|process_0~14_combout\,
	datad => \b2v_inst|process_0~15_combout\,
	combout => \b2v_inst|process_0~17_combout\);

-- Location: LCCOMB_X63_Y53_N28
\b2v_inst|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~26_combout\ = !\b2v_inst|Add3~25\
-- \b2v_inst|Add3~27\ = CARRY(!\b2v_inst|Add3~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~25\,
	combout => \b2v_inst|Add3~26_combout\,
	cout => \b2v_inst|Add3~27\);

-- Location: LCCOMB_X63_Y53_N30
\b2v_inst|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~28_combout\ = \b2v_inst|Add3~27\ $ (GND)
-- \b2v_inst|Add3~29\ = CARRY(!\b2v_inst|Add3~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~27\,
	combout => \b2v_inst|Add3~28_combout\,
	cout => \b2v_inst|Add3~29\);

-- Location: LCCOMB_X63_Y52_N0
\b2v_inst|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~30_combout\ = !\b2v_inst|Add3~29\
-- \b2v_inst|Add3~31\ = CARRY(!\b2v_inst|Add3~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~29\,
	combout => \b2v_inst|Add3~30_combout\,
	cout => \b2v_inst|Add3~31\);

-- Location: LCCOMB_X63_Y52_N2
\b2v_inst|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~32_combout\ = \b2v_inst|Add3~31\ $ (GND)
-- \b2v_inst|Add3~33\ = CARRY(!\b2v_inst|Add3~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~31\,
	combout => \b2v_inst|Add3~32_combout\,
	cout => \b2v_inst|Add3~33\);

-- Location: LCCOMB_X63_Y52_N4
\b2v_inst|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~34_combout\ = !\b2v_inst|Add3~33\
-- \b2v_inst|Add3~35\ = CARRY(!\b2v_inst|Add3~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~33\,
	combout => \b2v_inst|Add3~34_combout\,
	cout => \b2v_inst|Add3~35\);

-- Location: LCCOMB_X63_Y52_N6
\b2v_inst|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~36_combout\ = \b2v_inst|Add3~35\ $ (GND)
-- \b2v_inst|Add3~37\ = CARRY(!\b2v_inst|Add3~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~35\,
	combout => \b2v_inst|Add3~36_combout\,
	cout => \b2v_inst|Add3~37\);

-- Location: LCCOMB_X63_Y52_N8
\b2v_inst|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~38_combout\ = !\b2v_inst|Add3~37\
-- \b2v_inst|Add3~39\ = CARRY(!\b2v_inst|Add3~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~37\,
	combout => \b2v_inst|Add3~38_combout\,
	cout => \b2v_inst|Add3~39\);

-- Location: LCCOMB_X63_Y52_N10
\b2v_inst|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~40_combout\ = \b2v_inst|Add3~39\ $ (GND)
-- \b2v_inst|Add3~41\ = CARRY(!\b2v_inst|Add3~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~39\,
	combout => \b2v_inst|Add3~40_combout\,
	cout => \b2v_inst|Add3~41\);

-- Location: LCCOMB_X63_Y52_N12
\b2v_inst|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~42_combout\ = !\b2v_inst|Add3~41\
-- \b2v_inst|Add3~43\ = CARRY(!\b2v_inst|Add3~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~41\,
	combout => \b2v_inst|Add3~42_combout\,
	cout => \b2v_inst|Add3~43\);

-- Location: LCCOMB_X63_Y52_N14
\b2v_inst|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~44_combout\ = \b2v_inst|Add3~43\ $ (GND)
-- \b2v_inst|Add3~45\ = CARRY(!\b2v_inst|Add3~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~43\,
	combout => \b2v_inst|Add3~44_combout\,
	cout => \b2v_inst|Add3~45\);

-- Location: LCCOMB_X63_Y52_N16
\b2v_inst|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~46_combout\ = !\b2v_inst|Add3~45\
-- \b2v_inst|Add3~47\ = CARRY(!\b2v_inst|Add3~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~45\,
	combout => \b2v_inst|Add3~46_combout\,
	cout => \b2v_inst|Add3~47\);

-- Location: LCCOMB_X63_Y52_N18
\b2v_inst|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~48_combout\ = \b2v_inst|Add3~47\ $ (GND)
-- \b2v_inst|Add3~49\ = CARRY(!\b2v_inst|Add3~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~47\,
	combout => \b2v_inst|Add3~48_combout\,
	cout => \b2v_inst|Add3~49\);

-- Location: LCCOMB_X63_Y52_N20
\b2v_inst|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~50_combout\ = !\b2v_inst|Add3~49\
-- \b2v_inst|Add3~51\ = CARRY(!\b2v_inst|Add3~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~49\,
	combout => \b2v_inst|Add3~50_combout\,
	cout => \b2v_inst|Add3~51\);

-- Location: LCCOMB_X63_Y52_N22
\b2v_inst|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~52_combout\ = \b2v_inst|Add3~51\ $ (GND)
-- \b2v_inst|Add3~53\ = CARRY(!\b2v_inst|Add3~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~51\,
	combout => \b2v_inst|Add3~52_combout\,
	cout => \b2v_inst|Add3~53\);

-- Location: LCCOMB_X63_Y52_N24
\b2v_inst|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~54_combout\ = !\b2v_inst|Add3~53\
-- \b2v_inst|Add3~55\ = CARRY(!\b2v_inst|Add3~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~53\,
	combout => \b2v_inst|Add3~54_combout\,
	cout => \b2v_inst|Add3~55\);

-- Location: LCCOMB_X63_Y52_N26
\b2v_inst|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~56_combout\ = \b2v_inst|Add3~55\ $ (GND)
-- \b2v_inst|Add3~57\ = CARRY(!\b2v_inst|Add3~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~55\,
	combout => \b2v_inst|Add3~56_combout\,
	cout => \b2v_inst|Add3~57\);

-- Location: LCCOMB_X62_Y52_N6
\b2v_inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~7_combout\ = (!\b2v_inst|Add3~56_combout\ & (!\b2v_inst|Add3~52_combout\ & (!\b2v_inst|Add3~50_combout\ & !\b2v_inst|Add3~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~56_combout\,
	datab => \b2v_inst|Add3~52_combout\,
	datac => \b2v_inst|Add3~50_combout\,
	datad => \b2v_inst|Add3~54_combout\,
	combout => \b2v_inst|process_0~7_combout\);

-- Location: LCCOMB_X62_Y52_N24
\b2v_inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~4_combout\ = (!\b2v_inst|Add3~32_combout\ & (!\b2v_inst|Add3~30_combout\ & (!\b2v_inst|Add3~28_combout\ & !\b2v_inst|Add3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~32_combout\,
	datab => \b2v_inst|Add3~30_combout\,
	datac => \b2v_inst|Add3~28_combout\,
	datad => \b2v_inst|Add3~26_combout\,
	combout => \b2v_inst|process_0~4_combout\);

-- Location: LCCOMB_X62_Y52_N10
\b2v_inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~5_combout\ = (!\b2v_inst|Add3~34_combout\ & (!\b2v_inst|Add3~40_combout\ & (!\b2v_inst|Add3~38_combout\ & !\b2v_inst|Add3~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~34_combout\,
	datab => \b2v_inst|Add3~40_combout\,
	datac => \b2v_inst|Add3~38_combout\,
	datad => \b2v_inst|Add3~36_combout\,
	combout => \b2v_inst|process_0~5_combout\);

-- Location: LCCOMB_X62_Y52_N12
\b2v_inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~6_combout\ = (!\b2v_inst|Add3~48_combout\ & (!\b2v_inst|Add3~44_combout\ & (!\b2v_inst|Add3~42_combout\ & !\b2v_inst|Add3~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~48_combout\,
	datab => \b2v_inst|Add3~44_combout\,
	datac => \b2v_inst|Add3~42_combout\,
	datad => \b2v_inst|Add3~46_combout\,
	combout => \b2v_inst|process_0~6_combout\);

-- Location: LCCOMB_X62_Y52_N8
\b2v_inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~8_combout\ = (\b2v_inst|process_0~7_combout\ & (\b2v_inst|process_0~4_combout\ & (\b2v_inst|process_0~5_combout\ & \b2v_inst|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~7_combout\,
	datab => \b2v_inst|process_0~4_combout\,
	datac => \b2v_inst|process_0~5_combout\,
	datad => \b2v_inst|process_0~6_combout\,
	combout => \b2v_inst|process_0~8_combout\);

-- Location: LCCOMB_X62_Y50_N10
\b2v_inst|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~18_combout\ = (\b2v_inst|process_0~3_combout\ & (!\b2v_inst|process_0~17_combout\ & \b2v_inst|process_0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~3_combout\,
	datac => \b2v_inst|process_0~17_combout\,
	datad => \b2v_inst|process_0~8_combout\,
	combout => \b2v_inst|process_0~18_combout\);

-- Location: LCCOMB_X63_Y52_N28
\b2v_inst|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~58_combout\ = !\b2v_inst|Add3~57\
-- \b2v_inst|Add3~59\ = CARRY(!\b2v_inst|Add3~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add3~57\,
	combout => \b2v_inst|Add3~58_combout\,
	cout => \b2v_inst|Add3~59\);

-- Location: LCCOMB_X63_Y52_N30
\b2v_inst|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~60_combout\ = \b2v_inst1|column\(31) $ (!\b2v_inst|Add3~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(31),
	cin => \b2v_inst|Add3~59\,
	combout => \b2v_inst|Add3~60_combout\);

-- Location: LCCOMB_X65_Y54_N2
\b2v_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~0_combout\ = \b2v_inst1|column\(1) $ (VCC)
-- \b2v_inst|Add0~1\ = CARRY(\b2v_inst1|column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(1),
	datad => VCC,
	combout => \b2v_inst|Add0~0_combout\,
	cout => \b2v_inst|Add0~1\);

-- Location: LCCOMB_X65_Y54_N4
\b2v_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~2_combout\ = (\b2v_inst1|column\(2) & (!\b2v_inst|Add0~1\)) # (!\b2v_inst1|column\(2) & ((\b2v_inst|Add0~1\) # (GND)))
-- \b2v_inst|Add0~3\ = CARRY((!\b2v_inst|Add0~1\) # (!\b2v_inst1|column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(2),
	datad => VCC,
	cin => \b2v_inst|Add0~1\,
	combout => \b2v_inst|Add0~2_combout\,
	cout => \b2v_inst|Add0~3\);

-- Location: LCCOMB_X65_Y54_N6
\b2v_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~4_combout\ = (\b2v_inst1|column\(3) & (\b2v_inst|Add0~3\ $ (GND))) # (!\b2v_inst1|column\(3) & (!\b2v_inst|Add0~3\ & VCC))
-- \b2v_inst|Add0~5\ = CARRY((\b2v_inst1|column\(3) & !\b2v_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(3),
	datad => VCC,
	cin => \b2v_inst|Add0~3\,
	combout => \b2v_inst|Add0~4_combout\,
	cout => \b2v_inst|Add0~5\);

-- Location: LCCOMB_X65_Y54_N8
\b2v_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~6_combout\ = (\b2v_inst1|column\(4) & (\b2v_inst|Add0~5\ & VCC)) # (!\b2v_inst1|column\(4) & (!\b2v_inst|Add0~5\))
-- \b2v_inst|Add0~7\ = CARRY((!\b2v_inst1|column\(4) & !\b2v_inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(4),
	datad => VCC,
	cin => \b2v_inst|Add0~5\,
	combout => \b2v_inst|Add0~6_combout\,
	cout => \b2v_inst|Add0~7\);

-- Location: LCCOMB_X65_Y54_N10
\b2v_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~8_combout\ = (\b2v_inst1|column\(5) & ((GND) # (!\b2v_inst|Add0~7\))) # (!\b2v_inst1|column\(5) & (\b2v_inst|Add0~7\ $ (GND)))
-- \b2v_inst|Add0~9\ = CARRY((\b2v_inst1|column\(5)) # (!\b2v_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(5),
	datad => VCC,
	cin => \b2v_inst|Add0~7\,
	combout => \b2v_inst|Add0~8_combout\,
	cout => \b2v_inst|Add0~9\);

-- Location: LCCOMB_X65_Y54_N12
\b2v_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~10_combout\ = (\b2v_inst1|column\(6) & (\b2v_inst|Add0~9\ & VCC)) # (!\b2v_inst1|column\(6) & (!\b2v_inst|Add0~9\))
-- \b2v_inst|Add0~11\ = CARRY((!\b2v_inst1|column\(6) & !\b2v_inst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(6),
	datad => VCC,
	cin => \b2v_inst|Add0~9\,
	combout => \b2v_inst|Add0~10_combout\,
	cout => \b2v_inst|Add0~11\);

-- Location: LCCOMB_X65_Y54_N14
\b2v_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~12_combout\ = (\b2v_inst1|column\(7) & ((GND) # (!\b2v_inst|Add0~11\))) # (!\b2v_inst1|column\(7) & (\b2v_inst|Add0~11\ $ (GND)))
-- \b2v_inst|Add0~13\ = CARRY((\b2v_inst1|column\(7)) # (!\b2v_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(7),
	datad => VCC,
	cin => \b2v_inst|Add0~11\,
	combout => \b2v_inst|Add0~12_combout\,
	cout => \b2v_inst|Add0~13\);

-- Location: LCCOMB_X65_Y54_N16
\b2v_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~14_combout\ = (\b2v_inst1|column\(8) & (!\b2v_inst|Add0~13\)) # (!\b2v_inst1|column\(8) & ((\b2v_inst|Add0~13\) # (GND)))
-- \b2v_inst|Add0~15\ = CARRY((!\b2v_inst|Add0~13\) # (!\b2v_inst1|column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(8),
	datad => VCC,
	cin => \b2v_inst|Add0~13\,
	combout => \b2v_inst|Add0~14_combout\,
	cout => \b2v_inst|Add0~15\);

-- Location: LCCOMB_X65_Y54_N18
\b2v_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~16_combout\ = (\b2v_inst1|column\(9) & ((GND) # (!\b2v_inst|Add0~15\))) # (!\b2v_inst1|column\(9) & (\b2v_inst|Add0~15\ $ (GND)))
-- \b2v_inst|Add0~17\ = CARRY((\b2v_inst1|column\(9)) # (!\b2v_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(9),
	datad => VCC,
	cin => \b2v_inst|Add0~15\,
	combout => \b2v_inst|Add0~16_combout\,
	cout => \b2v_inst|Add0~17\);

-- Location: LCCOMB_X65_Y54_N20
\b2v_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~18_combout\ = !\b2v_inst|Add0~17\
-- \b2v_inst|Add0~19\ = CARRY(!\b2v_inst|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~17\,
	combout => \b2v_inst|Add0~18_combout\,
	cout => \b2v_inst|Add0~19\);

-- Location: LCCOMB_X65_Y54_N22
\b2v_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~20_combout\ = \b2v_inst|Add0~19\ $ (GND)
-- \b2v_inst|Add0~21\ = CARRY(!\b2v_inst|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~19\,
	combout => \b2v_inst|Add0~20_combout\,
	cout => \b2v_inst|Add0~21\);

-- Location: LCCOMB_X65_Y54_N24
\b2v_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~22_combout\ = !\b2v_inst|Add0~21\
-- \b2v_inst|Add0~23\ = CARRY(!\b2v_inst|Add0~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~21\,
	combout => \b2v_inst|Add0~22_combout\,
	cout => \b2v_inst|Add0~23\);

-- Location: LCCOMB_X65_Y54_N26
\b2v_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~24_combout\ = \b2v_inst|Add0~23\ $ (GND)
-- \b2v_inst|Add0~25\ = CARRY(!\b2v_inst|Add0~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~23\,
	combout => \b2v_inst|Add0~24_combout\,
	cout => \b2v_inst|Add0~25\);

-- Location: LCCOMB_X65_Y54_N28
\b2v_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~26_combout\ = !\b2v_inst|Add0~25\
-- \b2v_inst|Add0~27\ = CARRY(!\b2v_inst|Add0~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~25\,
	combout => \b2v_inst|Add0~26_combout\,
	cout => \b2v_inst|Add0~27\);

-- Location: LCCOMB_X65_Y54_N30
\b2v_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~28_combout\ = \b2v_inst|Add0~27\ $ (GND)
-- \b2v_inst|Add0~29\ = CARRY(!\b2v_inst|Add0~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~27\,
	combout => \b2v_inst|Add0~28_combout\,
	cout => \b2v_inst|Add0~29\);

-- Location: LCCOMB_X65_Y53_N0
\b2v_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~30_combout\ = !\b2v_inst|Add0~29\
-- \b2v_inst|Add0~31\ = CARRY(!\b2v_inst|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~29\,
	combout => \b2v_inst|Add0~30_combout\,
	cout => \b2v_inst|Add0~31\);

-- Location: LCCOMB_X65_Y53_N2
\b2v_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~32_combout\ = \b2v_inst|Add0~31\ $ (GND)
-- \b2v_inst|Add0~33\ = CARRY(!\b2v_inst|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~31\,
	combout => \b2v_inst|Add0~32_combout\,
	cout => \b2v_inst|Add0~33\);

-- Location: LCCOMB_X65_Y53_N4
\b2v_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~34_combout\ = !\b2v_inst|Add0~33\
-- \b2v_inst|Add0~35\ = CARRY(!\b2v_inst|Add0~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~33\,
	combout => \b2v_inst|Add0~34_combout\,
	cout => \b2v_inst|Add0~35\);

-- Location: LCCOMB_X65_Y53_N6
\b2v_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~36_combout\ = \b2v_inst|Add0~35\ $ (GND)
-- \b2v_inst|Add0~37\ = CARRY(!\b2v_inst|Add0~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~35\,
	combout => \b2v_inst|Add0~36_combout\,
	cout => \b2v_inst|Add0~37\);

-- Location: LCCOMB_X65_Y53_N8
\b2v_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~38_combout\ = !\b2v_inst|Add0~37\
-- \b2v_inst|Add0~39\ = CARRY(!\b2v_inst|Add0~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~37\,
	combout => \b2v_inst|Add0~38_combout\,
	cout => \b2v_inst|Add0~39\);

-- Location: LCCOMB_X65_Y53_N10
\b2v_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~40_combout\ = \b2v_inst|Add0~39\ $ (GND)
-- \b2v_inst|Add0~41\ = CARRY(!\b2v_inst|Add0~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~39\,
	combout => \b2v_inst|Add0~40_combout\,
	cout => \b2v_inst|Add0~41\);

-- Location: LCCOMB_X65_Y53_N12
\b2v_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~42_combout\ = !\b2v_inst|Add0~41\
-- \b2v_inst|Add0~43\ = CARRY(!\b2v_inst|Add0~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~41\,
	combout => \b2v_inst|Add0~42_combout\,
	cout => \b2v_inst|Add0~43\);

-- Location: LCCOMB_X65_Y53_N14
\b2v_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~44_combout\ = \b2v_inst|Add0~43\ $ (GND)
-- \b2v_inst|Add0~45\ = CARRY(!\b2v_inst|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~43\,
	combout => \b2v_inst|Add0~44_combout\,
	cout => \b2v_inst|Add0~45\);

-- Location: LCCOMB_X65_Y53_N16
\b2v_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~46_combout\ = !\b2v_inst|Add0~45\
-- \b2v_inst|Add0~47\ = CARRY(!\b2v_inst|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~45\,
	combout => \b2v_inst|Add0~46_combout\,
	cout => \b2v_inst|Add0~47\);

-- Location: LCCOMB_X65_Y53_N18
\b2v_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~48_combout\ = \b2v_inst|Add0~47\ $ (GND)
-- \b2v_inst|Add0~49\ = CARRY(!\b2v_inst|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~47\,
	combout => \b2v_inst|Add0~48_combout\,
	cout => \b2v_inst|Add0~49\);

-- Location: LCCOMB_X65_Y53_N20
\b2v_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~50_combout\ = !\b2v_inst|Add0~49\
-- \b2v_inst|Add0~51\ = CARRY(!\b2v_inst|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~49\,
	combout => \b2v_inst|Add0~50_combout\,
	cout => \b2v_inst|Add0~51\);

-- Location: LCCOMB_X65_Y53_N22
\b2v_inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~52_combout\ = \b2v_inst|Add0~51\ $ (GND)
-- \b2v_inst|Add0~53\ = CARRY(!\b2v_inst|Add0~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~51\,
	combout => \b2v_inst|Add0~52_combout\,
	cout => \b2v_inst|Add0~53\);

-- Location: LCCOMB_X65_Y53_N24
\b2v_inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~54_combout\ = !\b2v_inst|Add0~53\
-- \b2v_inst|Add0~55\ = CARRY(!\b2v_inst|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~53\,
	combout => \b2v_inst|Add0~54_combout\,
	cout => \b2v_inst|Add0~55\);

-- Location: LCCOMB_X65_Y53_N26
\b2v_inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~56_combout\ = \b2v_inst|Add0~55\ $ (GND)
-- \b2v_inst|Add0~57\ = CARRY(!\b2v_inst|Add0~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~55\,
	combout => \b2v_inst|Add0~56_combout\,
	cout => \b2v_inst|Add0~57\);

-- Location: LCCOMB_X65_Y53_N28
\b2v_inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~58_combout\ = !\b2v_inst|Add0~57\
-- \b2v_inst|Add0~59\ = CARRY(!\b2v_inst|Add0~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst|Add0~57\,
	combout => \b2v_inst|Add0~58_combout\,
	cout => \b2v_inst|Add0~59\);

-- Location: LCCOMB_X65_Y53_N30
\b2v_inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~60_combout\ = \b2v_inst|Add0~59\ $ (!\b2v_inst1|column\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|column\(31),
	cin => \b2v_inst|Add0~59\,
	combout => \b2v_inst|Add0~60_combout\);

-- Location: LCCOMB_X66_Y53_N22
\b2v_inst|process_0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~23_combout\ = (!\b2v_inst|Add0~30_combout\ & (!\b2v_inst|Add0~28_combout\ & (!\b2v_inst|Add0~26_combout\ & !\b2v_inst|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~30_combout\,
	datab => \b2v_inst|Add0~28_combout\,
	datac => \b2v_inst|Add0~26_combout\,
	datad => \b2v_inst|Add0~32_combout\,
	combout => \b2v_inst|process_0~23_combout\);

-- Location: LCCOMB_X66_Y53_N20
\b2v_inst|process_0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~26_combout\ = (!\b2v_inst|Add0~54_combout\ & (!\b2v_inst|Add0~52_combout\ & (!\b2v_inst|Add0~56_combout\ & !\b2v_inst|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~54_combout\,
	datab => \b2v_inst|Add0~52_combout\,
	datac => \b2v_inst|Add0~56_combout\,
	datad => \b2v_inst|Add0~50_combout\,
	combout => \b2v_inst|process_0~26_combout\);

-- Location: LCCOMB_X66_Y53_N8
\b2v_inst|process_0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~24_combout\ = (!\b2v_inst|Add0~40_combout\ & (!\b2v_inst|Add0~36_combout\ & (!\b2v_inst|Add0~34_combout\ & !\b2v_inst|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~40_combout\,
	datab => \b2v_inst|Add0~36_combout\,
	datac => \b2v_inst|Add0~34_combout\,
	datad => \b2v_inst|Add0~38_combout\,
	combout => \b2v_inst|process_0~24_combout\);

-- Location: LCCOMB_X66_Y53_N10
\b2v_inst|process_0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~25_combout\ = (!\b2v_inst|Add0~44_combout\ & (!\b2v_inst|Add0~48_combout\ & (!\b2v_inst|Add0~46_combout\ & !\b2v_inst|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~44_combout\,
	datab => \b2v_inst|Add0~48_combout\,
	datac => \b2v_inst|Add0~46_combout\,
	datad => \b2v_inst|Add0~42_combout\,
	combout => \b2v_inst|process_0~25_combout\);

-- Location: LCCOMB_X66_Y53_N30
\b2v_inst|process_0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~27_combout\ = (\b2v_inst|process_0~23_combout\ & (\b2v_inst|process_0~26_combout\ & (\b2v_inst|process_0~24_combout\ & \b2v_inst|process_0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~23_combout\,
	datab => \b2v_inst|process_0~26_combout\,
	datac => \b2v_inst|process_0~24_combout\,
	datad => \b2v_inst|process_0~25_combout\,
	combout => \b2v_inst|process_0~27_combout\);

-- Location: LCCOMB_X66_Y53_N24
\b2v_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~0_combout\ = (((!\b2v_inst|Add0~0_combout\) # (!\b2v_inst|Add0~6_combout\)) # (!\b2v_inst|Add0~2_combout\)) # (!\b2v_inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X65_Y54_N0
\b2v_inst|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~20_combout\ = (!\b2v_inst|Add0~10_combout\ & (!\b2v_inst|Add0~16_combout\ & (!\b2v_inst|Add0~12_combout\ & !\b2v_inst|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~10_combout\,
	datab => \b2v_inst|Add0~16_combout\,
	datac => \b2v_inst|Add0~12_combout\,
	datad => \b2v_inst|Add0~14_combout\,
	combout => \b2v_inst|process_0~20_combout\);

-- Location: LCCOMB_X66_Y54_N4
\b2v_inst|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~21_combout\ = (!\b2v_inst|Add0~20_combout\ & !\b2v_inst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~20_combout\,
	datad => \b2v_inst|Add0~18_combout\,
	combout => \b2v_inst|process_0~21_combout\);

-- Location: LCCOMB_X66_Y54_N28
\b2v_inst|process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~22_combout\ = (\b2v_inst|process_0~20_combout\ & (!\b2v_inst|Add0~22_combout\ & (\b2v_inst|process_0~21_combout\ & !\b2v_inst|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~20_combout\,
	datab => \b2v_inst|Add0~22_combout\,
	datac => \b2v_inst|process_0~21_combout\,
	datad => \b2v_inst|Add0~24_combout\,
	combout => \b2v_inst|process_0~22_combout\);

-- Location: LCCOMB_X69_Y54_N16
\b2v_inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector7~0_combout\ = (!\p1|S.LOSE~q\ & (!\p1|S.CROUCH~q\ & !\p1|S.CROUCHTHRUST~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|S.LOSE~q\,
	datac => \p1|S.CROUCH~q\,
	datad => \p1|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|Selector7~0_combout\);

-- Location: LCCOMB_X68_Y52_N30
\b2v_inst|p1[5][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p1[5][21]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (\b2v_inst|Selector7~0_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p1[5][21]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector7~0_combout\,
	datac => \b2v_inst|p1[5][21]~combout\,
	datad => \b2v_inst|process_0~45clkctrl_outclk\,
	combout => \b2v_inst|p1[5][21]~combout\);

-- Location: LCCOMB_X68_Y52_N0
\b2v_inst|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~4_combout\ = (\b2v_inst|Add0~0_combout\ & ((!\b2v_inst|Add0~2_combout\) # (!\b2v_inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux15~4_combout\);

-- Location: LCCOMB_X69_Y54_N28
\b2v_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~0_combout\ = (!\p1|S.LOSE~q\ & ((\p1|S.CROUCH~q\) # (\p1|S.CROUCHTHRUST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|S.LOSE~q\,
	datac => \p1|S.CROUCH~q\,
	datad => \p1|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|Selector5~0_combout\);

-- Location: LCCOMB_X65_Y52_N28
\b2v_inst|p1[7][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p1[7][22]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (\b2v_inst|Selector5~0_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p1[7][22]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Selector5~0_combout\,
	datac => \b2v_inst|process_0~45clkctrl_outclk\,
	datad => \b2v_inst|p1[7][22]~combout\,
	combout => \b2v_inst|p1[7][22]~combout\);

-- Location: LCCOMB_X68_Y52_N6
\b2v_inst|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~3_combout\ = (\b2v_inst1|column\(0) & ((!\b2v_inst|Add0~2_combout\))) # (!\b2v_inst1|column\(0) & (\b2v_inst|p1[7][22]~combout\ & \b2v_inst|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux15~3_combout\);

-- Location: LCCOMB_X68_Y52_N26
\b2v_inst|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~5_combout\ = (\b2v_inst|p1[5][21]~combout\ & (\b2v_inst|Add0~2_combout\ $ (((\b2v_inst|Mux15~4_combout\ & !\b2v_inst|Mux15~3_combout\))))) # (!\b2v_inst|p1[5][21]~combout\ & (\b2v_inst|Mux15~4_combout\ & (\b2v_inst|Add0~2_combout\ & 
-- \b2v_inst|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][21]~combout\,
	datab => \b2v_inst|Mux15~4_combout\,
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|Mux15~3_combout\,
	combout => \b2v_inst|Mux15~5_combout\);

-- Location: LCCOMB_X68_Y53_N18
\b2v_inst|p1[15][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p1[15][4]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (\b2v_inst|Equal10~1_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p1[15][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Equal10~1_combout\,
	datac => \b2v_inst|process_0~45clkctrl_outclk\,
	datad => \b2v_inst|p1[15][4]~combout\,
	combout => \b2v_inst|p1[15][4]~combout\);

-- Location: LCCOMB_X68_Y53_N8
\b2v_inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~0_combout\ = (\b2v_inst|Add0~2_combout\ & (\b2v_inst|p1[15][4]~combout\ & ((!\b2v_inst|Add0~0_combout\)))) # (!\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Add0~0_combout\ & (\b2v_inst|p1[15][4]~combout\)) # (!\b2v_inst|Add0~0_combout\ & 
-- ((\b2v_inst|p1[5][21]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[15][4]~combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|p1[5][21]~combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux15~0_combout\);

-- Location: LCCOMB_X69_Y54_N26
\b2v_inst|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal10~2_combout\ = (\p1|S.LOSE~q\ & (!\p1|S.STANDTHRUST~q\ & (!\p1|S.CROUCH~q\ & !\p1|S.CROUCHTHRUST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|S.LOSE~q\,
	datab => \p1|S.STANDTHRUST~q\,
	datac => \p1|S.CROUCH~q\,
	datad => \p1|S.CROUCHTHRUST~q\,
	combout => \b2v_inst|Equal10~2_combout\);

-- Location: LCCOMB_X67_Y54_N26
\b2v_inst|p1[5][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p1[5][20]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (!\b2v_inst|Equal10~2_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p1[5][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal10~2_combout\,
	datac => \b2v_inst|p1[5][20]~combout\,
	datad => \b2v_inst|process_0~45clkctrl_outclk\,
	combout => \b2v_inst|p1[5][20]~combout\);

-- Location: LCCOMB_X68_Y53_N2
\b2v_inst|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~1_combout\ = (\b2v_inst|Add0~6_combout\ & (\b2v_inst|Mux15~0_combout\)) # (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|p1[5][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst|Mux15~0_combout\,
	datac => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux15~1_combout\);

-- Location: LCCOMB_X68_Y52_N28
\b2v_inst|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~6_combout\ = (\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux15~1_combout\))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|Mux15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~4_combout\,
	datac => \b2v_inst|Mux15~5_combout\,
	datad => \b2v_inst|Mux15~1_combout\,
	combout => \b2v_inst|Mux15~6_combout\);

-- Location: LCCOMB_X66_Y53_N28
\b2v_inst|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~4_combout\ = (\b2v_inst|Add0~0_combout\ & ((\b2v_inst|p1[5][20]~combout\))) # (!\b2v_inst|Add0~0_combout\ & (\b2v_inst|p1[5][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p1[5][21]~combout\,
	datac => \b2v_inst|p1[5][20]~combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux5~4_combout\);

-- Location: LCCOMB_X66_Y53_N14
\b2v_inst|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~0_combout\ = (\b2v_inst|Add0~4_combout\ & (((!\b2v_inst|Add0~6_combout\ & \b2v_inst|Mux5~4_combout\)))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|p1[5][21]~combout\ & (\b2v_inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|p1[5][21]~combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Mux5~4_combout\,
	combout => \b2v_inst|Mux13~0_combout\);

-- Location: LCCOMB_X66_Y53_N0
\b2v_inst|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~1_combout\ = (\b2v_inst1|column\(0) & (\b2v_inst|Add0~4_combout\ & !\b2v_inst|Add0~0_combout\)) # (!\b2v_inst1|column\(0) & (!\b2v_inst|Add0~4_combout\ & \b2v_inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux13~1_combout\);

-- Location: LCCOMB_X66_Y53_N18
\b2v_inst|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~2_combout\ = (\b2v_inst|Mux13~1_combout\ & (\b2v_inst1|column\(0) & ((\b2v_inst|p1[5][20]~combout\)))) # (!\b2v_inst|Mux13~1_combout\ & (((\b2v_inst|p1[5][21]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p1[5][21]~combout\,
	datac => \b2v_inst|p1[5][20]~combout\,
	datad => \b2v_inst|Mux13~1_combout\,
	combout => \b2v_inst|Mux13~2_combout\);

-- Location: LCCOMB_X66_Y53_N12
\b2v_inst|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~3_combout\ = (\b2v_inst|Add0~2_combout\ & (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|Mux13~2_combout\)))) # (!\b2v_inst|Add0~2_combout\ & (((\b2v_inst|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|Mux13~0_combout\,
	datad => \b2v_inst|Mux13~2_combout\,
	combout => \b2v_inst|Mux13~3_combout\);

-- Location: LCCOMB_X68_Y51_N26
\b2v_inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~0_combout\ = (!\b2v_inst1|column\(0) & (\b2v_inst|Add0~0_combout\ & \b2v_inst|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux9~0_combout\);

-- Location: LCCOMB_X68_Y51_N28
\b2v_inst|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~1_combout\ = (\b2v_inst|Add0~4_combout\ & \b2v_inst|p1[5][20]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux9~1_combout\);

-- Location: LCCOMB_X68_Y51_N22
\b2v_inst|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~2_combout\ = (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|Mux9~0_combout\ & (\b2v_inst|p1[7][22]~combout\)) # (!\b2v_inst|Mux9~0_combout\ & ((\b2v_inst|Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|Mux9~0_combout\,
	datad => \b2v_inst|Mux9~1_combout\,
	combout => \b2v_inst|Mux9~2_combout\);

-- Location: LCCOMB_X67_Y51_N4
\b2v_inst|Mux31~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~26_combout\ = (\b2v_inst|Add2~2_combout\ & ((\b2v_inst|Mux13~3_combout\) # ((\b2v_inst|Add2~0_combout\)))) # (!\b2v_inst|Add2~2_combout\ & (((!\b2v_inst|Add2~0_combout\ & \b2v_inst|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~2_combout\,
	datab => \b2v_inst|Mux13~3_combout\,
	datac => \b2v_inst|Add2~0_combout\,
	datad => \b2v_inst|Mux9~2_combout\,
	combout => \b2v_inst|Mux31~26_combout\);

-- Location: LCCOMB_X67_Y53_N14
\b2v_inst|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~2_combout\ = (\b2v_inst1|column\(0) & (((\b2v_inst|p1[5][20]~combout\)))) # (!\b2v_inst1|column\(0) & ((\b2v_inst|Add0~0_combout\ & (\b2v_inst|p1[5][21]~combout\)) # (!\b2v_inst|Add0~0_combout\ & ((\b2v_inst|p1[5][20]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][21]~combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux14~2_combout\);

-- Location: LCCOMB_X68_Y53_N22
\b2v_inst|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux11~3_combout\ = (\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Mux14~2_combout\))) # (!\b2v_inst|Add0~2_combout\ & (\b2v_inst|p1[5][20]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|p1[5][20]~combout\,
	datad => \b2v_inst|Mux14~2_combout\,
	combout => \b2v_inst|Mux11~3_combout\);

-- Location: LCCOMB_X68_Y53_N12
\b2v_inst|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux11~2_combout\ = (\b2v_inst|p1[5][21]~combout\ & ((\b2v_inst|Add0~2_combout\ & (!\b2v_inst|Add0~6_combout\ & \b2v_inst|Add0~0_combout\)) # (!\b2v_inst|Add0~2_combout\ & (\b2v_inst|Add0~6_combout\ & !\b2v_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][21]~combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux11~2_combout\);

-- Location: LCCOMB_X68_Y53_N16
\b2v_inst|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux11~4_combout\ = (\b2v_inst|Add0~4_combout\ & (!\b2v_inst|Add0~6_combout\ & (\b2v_inst|Mux11~3_combout\))) # (!\b2v_inst|Add0~4_combout\ & (((\b2v_inst|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst|Add0~4_combout\,
	datac => \b2v_inst|Mux11~3_combout\,
	datad => \b2v_inst|Mux11~2_combout\,
	combout => \b2v_inst|Mux11~4_combout\);

-- Location: LCCOMB_X67_Y52_N26
\b2v_inst|Mux31~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~27_combout\ = (\b2v_inst|Add2~0_combout\ & ((\b2v_inst|Mux31~26_combout\ & (\b2v_inst|Mux15~6_combout\)) # (!\b2v_inst|Mux31~26_combout\ & ((\b2v_inst|Mux11~4_combout\))))) # (!\b2v_inst|Add2~0_combout\ & (((\b2v_inst|Mux31~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst|Mux15~6_combout\,
	datac => \b2v_inst|Mux31~26_combout\,
	datad => \b2v_inst|Mux11~4_combout\,
	combout => \b2v_inst|Mux31~27_combout\);

-- Location: LCCOMB_X67_Y53_N18
\b2v_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux1~0_combout\ = (\b2v_inst|Add0~0_combout\ & (\b2v_inst|Add0~2_combout\)) # (!\b2v_inst|Add0~0_combout\ & (!\b2v_inst|Add0~2_combout\ & \b2v_inst1|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~0_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y53_N28
\b2v_inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux1~1_combout\ = (\b2v_inst|Add0~4_combout\ & (!\b2v_inst|Add0~6_combout\ & (\b2v_inst|p1[5][21]~combout\ & !\b2v_inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|p1[5][21]~combout\,
	datad => \b2v_inst|Mux1~0_combout\,
	combout => \b2v_inst|Mux1~1_combout\);

-- Location: LCCOMB_X67_Y53_N16
\b2v_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~0_combout\ = ((\b2v_inst1|column\(0)) # (!\b2v_inst|Add0~2_combout\)) # (!\b2v_inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~0_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y52_N12
\b2v_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~0_combout\ = (!\b2v_inst|Add0~6_combout\ & (\b2v_inst|p1[5][21]~combout\ & ((\b2v_inst|Add0~4_combout\) # (!\b2v_inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Mux2~0_combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|p1[5][21]~combout\,
	combout => \b2v_inst|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y52_N6
\b2v_inst|Mux31~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~19_combout\ = (\b2v_inst|Add2~0_combout\ & (((\b2v_inst|Add2~2_combout\) # (\b2v_inst|Mux3~0_combout\)))) # (!\b2v_inst|Add2~0_combout\ & (\b2v_inst|Mux1~1_combout\ & (!\b2v_inst|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst|Mux1~1_combout\,
	datac => \b2v_inst|Add2~2_combout\,
	datad => \b2v_inst|Mux3~0_combout\,
	combout => \b2v_inst|Mux31~19_combout\);

-- Location: LCCOMB_X68_Y51_N30
\b2v_inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~0_combout\ = (\b2v_inst1|column\(0) & (\b2v_inst|Add0~0_combout\ $ (\b2v_inst|Add0~2_combout\))) # (!\b2v_inst1|column\(0) & (\b2v_inst|Add0~0_combout\ & \b2v_inst|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux7~0_combout\);

-- Location: LCCOMB_X68_Y51_N24
\b2v_inst|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~1_combout\ = (\b2v_inst1|column\(0) & ((\b2v_inst|Mux7~0_combout\ & ((\b2v_inst|p1[5][20]~combout\))) # (!\b2v_inst|Mux7~0_combout\ & (\b2v_inst|p1[7][22]~combout\)))) # (!\b2v_inst1|column\(0) & (((!\b2v_inst|Mux7~0_combout\ & 
-- \b2v_inst|p1[5][20]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|Mux7~0_combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux7~1_combout\);

-- Location: LCCOMB_X67_Y51_N2
\b2v_inst|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~2_combout\ = (\b2v_inst|Add0~4_combout\ & (!\b2v_inst|Add0~6_combout\ & \b2v_inst|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Mux7~1_combout\,
	combout => \b2v_inst|Mux7~2_combout\);

-- Location: LCCOMB_X68_Y53_N10
\b2v_inst|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~2_combout\ = (!\b2v_inst1|column\(0) & (\b2v_inst|Add0~2_combout\ & (!\b2v_inst|Add0~4_combout\ & \b2v_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux5~2_combout\);

-- Location: LCCOMB_X68_Y52_N2
\b2v_inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~0_combout\ = (\b2v_inst|Add0~2_combout\ & (\b2v_inst1|column\(0) & !\b2v_inst|Add0~0_combout\)) # (!\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux5~0_combout\);

-- Location: LCCOMB_X68_Y53_N24
\b2v_inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~1_combout\ = (\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux5~0_combout\ & ((\b2v_inst|p1[5][20]~combout\))) # (!\b2v_inst|Mux5~0_combout\ & (\b2v_inst|p1[5][21]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][21]~combout\,
	datab => \b2v_inst|Add0~4_combout\,
	datac => \b2v_inst|p1[5][20]~combout\,
	datad => \b2v_inst|Mux5~0_combout\,
	combout => \b2v_inst|Mux5~1_combout\);

-- Location: LCCOMB_X68_Y53_N28
\b2v_inst|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~3_combout\ = (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|Mux5~1_combout\) # ((\b2v_inst|Mux5~2_combout\ & \b2v_inst|p1[5][21]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux5~2_combout\,
	datab => \b2v_inst|p1[5][21]~combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Mux5~1_combout\,
	combout => \b2v_inst|Mux5~3_combout\);

-- Location: LCCOMB_X67_Y52_N16
\b2v_inst|Mux31~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~20_combout\ = (\b2v_inst|Mux31~19_combout\ & ((\b2v_inst|Mux7~2_combout\) # ((!\b2v_inst|Add2~2_combout\)))) # (!\b2v_inst|Mux31~19_combout\ & (((\b2v_inst|Add2~2_combout\ & \b2v_inst|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux31~19_combout\,
	datab => \b2v_inst|Mux7~2_combout\,
	datac => \b2v_inst|Add2~2_combout\,
	datad => \b2v_inst|Mux5~3_combout\,
	combout => \b2v_inst|Mux31~20_combout\);

-- Location: LCCOMB_X66_Y52_N6
\b2v_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux0~2_combout\ = (!\b2v_inst|Add0~6_combout\ & \b2v_inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	combout => \b2v_inst|Mux0~2_combout\);

-- Location: LCCOMB_X66_Y53_N26
\b2v_inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~0_combout\ = (\b2v_inst|Add0~0_combout\ & (\b2v_inst1|column\(0) & (\b2v_inst|p1[5][21]~combout\))) # (!\b2v_inst|Add0~0_combout\ & (((\b2v_inst|p1[5][20]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p1[5][21]~combout\,
	datac => \b2v_inst|p1[5][20]~combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y52_N24
\b2v_inst|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~4_combout\ = (\b2v_inst1|column\(0) & ((\b2v_inst|Add0~0_combout\ & (\b2v_inst|p1[5][20]~combout\)) # (!\b2v_inst|Add0~0_combout\ & ((\b2v_inst|p1[5][21]~combout\))))) # (!\b2v_inst1|column\(0) & (\b2v_inst|p1[5][20]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][20]~combout\,
	datab => \b2v_inst|p1[5][21]~combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux12~4_combout\);

-- Location: LCCOMB_X66_Y52_N2
\b2v_inst|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~1_combout\ = (\b2v_inst|Mux0~2_combout\ & ((\b2v_inst|Add0~2_combout\ & (\b2v_inst|Mux6~0_combout\)) # (!\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Mux12~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux0~2_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|Mux6~0_combout\,
	datad => \b2v_inst|Mux12~4_combout\,
	combout => \b2v_inst|Mux6~1_combout\);

-- Location: LCCOMB_X67_Y52_N2
\b2v_inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~1_combout\ = (\b2v_inst|Add0~4_combout\ & (\b2v_inst|Mux2~0_combout\ & (!\b2v_inst|Add0~6_combout\ & \b2v_inst|p1[5][21]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Mux2~0_combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|p1[5][21]~combout\,
	combout => \b2v_inst|Mux2~1_combout\);

-- Location: LCCOMB_X68_Y52_N20
\b2v_inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux0~1_combout\ = (!\b2v_inst|Add0~6_combout\ & (\b2v_inst|Add0~4_combout\ & (\b2v_inst|p1[5][21]~combout\ & \b2v_inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst|Add0~4_combout\,
	datac => \b2v_inst|p1[5][21]~combout\,
	datad => \b2v_inst|Mux5~0_combout\,
	combout => \b2v_inst|Mux0~1_combout\);

-- Location: LCCOMB_X67_Y52_N4
\b2v_inst|Mux31~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~23_combout\ = (\b2v_inst|Add2~0_combout\ & ((\b2v_inst|Mux2~1_combout\) # ((\b2v_inst|Add2~2_combout\)))) # (!\b2v_inst|Add2~0_combout\ & (((!\b2v_inst|Add2~2_combout\ & \b2v_inst|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst|Mux2~1_combout\,
	datac => \b2v_inst|Add2~2_combout\,
	datad => \b2v_inst|Mux0~1_combout\,
	combout => \b2v_inst|Mux31~23_combout\);

-- Location: LCCOMB_X67_Y52_N30
\b2v_inst|Mux31~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~24_combout\ = (\b2v_inst|Mux31~23_combout\ & ((\b2v_inst|Mux6~1_combout\) # ((!\b2v_inst|Add2~2_combout\)))) # (!\b2v_inst|Mux31~23_combout\ & (((\b2v_inst|Add2~2_combout\ & \b2v_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~1_combout\,
	datab => \b2v_inst|Mux31~23_combout\,
	datac => \b2v_inst|Add2~2_combout\,
	datad => \b2v_inst|Mux3~0_combout\,
	combout => \b2v_inst|Mux31~24_combout\);

-- Location: LCCOMB_X67_Y53_N26
\b2v_inst|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~0_combout\ = (\b2v_inst|Add0~0_combout\ & ((\b2v_inst|Add0~2_combout\) # (!\b2v_inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~0_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux14~0_combout\);

-- Location: LCCOMB_X67_Y53_N4
\b2v_inst|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~1_combout\ = (\b2v_inst|Add0~4_combout\ & (((\b2v_inst|Add0~2_combout\)))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|p1[5][21]~combout\ & (\b2v_inst|Mux14~0_combout\ $ (\b2v_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][21]~combout\,
	datab => \b2v_inst|Mux14~0_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux14~1_combout\);

-- Location: LCCOMB_X67_Y53_N24
\b2v_inst|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~3_combout\ = (\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux14~1_combout\ & (\b2v_inst|Mux14~2_combout\)) # (!\b2v_inst|Mux14~1_combout\ & ((\b2v_inst|p1[5][20]~combout\))))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Mux14~1_combout\,
	datac => \b2v_inst|Mux14~2_combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux14~3_combout\);

-- Location: LCCOMB_X67_Y53_N10
\b2v_inst|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~4_combout\ = (\b2v_inst|p1[5][21]~combout\ & ((\b2v_inst|Add0~0_combout\ & ((!\b2v_inst|Add0~2_combout\))) # (!\b2v_inst|Add0~0_combout\ & (\b2v_inst1|column\(0) & \b2v_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~0_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|p1[5][21]~combout\,
	datad => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux14~4_combout\);

-- Location: LCCOMB_X67_Y53_N20
\b2v_inst|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~5_combout\ = (\b2v_inst|Add0~6_combout\ & (!\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux14~4_combout\)))) # (!\b2v_inst|Add0~6_combout\ & (((\b2v_inst|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Mux14~3_combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Mux14~4_combout\,
	combout => \b2v_inst|Mux14~5_combout\);

-- Location: LCCOMB_X67_Y53_N6
\b2v_inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~0_combout\ = (!\b2v_inst|Add0~6_combout\ & (\b2v_inst|p1[5][20]~combout\ & ((\b2v_inst|Add0~4_combout\) # (!\b2v_inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst|Mux2~0_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux10~0_combout\);

-- Location: LCCOMB_X68_Y53_N6
\b2v_inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~0_combout\ = (\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux5~0_combout\ & (\b2v_inst|p1[5][20]~combout\)) # (!\b2v_inst|Mux5~0_combout\ & ((\b2v_inst|p1[7][22]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][20]~combout\,
	datab => \b2v_inst|Add0~4_combout\,
	datac => \b2v_inst|p1[7][22]~combout\,
	datad => \b2v_inst|Mux5~0_combout\,
	combout => \b2v_inst|Mux8~0_combout\);

-- Location: LCCOMB_X68_Y53_N0
\b2v_inst|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~1_combout\ = (!\b2v_inst1|column\(0) & (\b2v_inst|Add0~2_combout\ & (\b2v_inst|p1[7][22]~combout\ & \b2v_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|p1[7][22]~combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux8~1_combout\);

-- Location: LCCOMB_X68_Y53_N26
\b2v_inst|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~2_combout\ = (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|Mux8~0_combout\) # ((!\b2v_inst|Add0~4_combout\ & \b2v_inst|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~0_combout\,
	datab => \b2v_inst|Add0~4_combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Mux8~1_combout\,
	combout => \b2v_inst|Mux8~2_combout\);

-- Location: LCCOMB_X67_Y53_N8
\b2v_inst|Mux31~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~21_combout\ = (\b2v_inst|Add2~0_combout\ & ((\b2v_inst|Mux10~0_combout\) # ((\b2v_inst|Add2~2_combout\)))) # (!\b2v_inst|Add2~0_combout\ & (((!\b2v_inst|Add2~2_combout\ & \b2v_inst|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~0_combout\,
	datab => \b2v_inst|Add2~0_combout\,
	datac => \b2v_inst|Add2~2_combout\,
	datad => \b2v_inst|Mux8~2_combout\,
	combout => \b2v_inst|Mux31~21_combout\);

-- Location: LCCOMB_X67_Y53_N0
\b2v_inst|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~1_combout\ = (\b2v_inst|Add0~0_combout\ & (!\b2v_inst|Add0~2_combout\ & !\b2v_inst1|column\(0))) # (!\b2v_inst|Add0~0_combout\ & (\b2v_inst|Add0~2_combout\ & \b2v_inst1|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~0_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux12~1_combout\);

-- Location: LCCOMB_X67_Y53_N2
\b2v_inst|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~2_combout\ = (\b2v_inst|p1[5][21]~combout\ & (!\b2v_inst|Mux12~1_combout\ & (\b2v_inst|Add0~2_combout\ $ (\b2v_inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][21]~combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Mux12~1_combout\,
	combout => \b2v_inst|Mux12~2_combout\);

-- Location: LCCOMB_X67_Y53_N30
\b2v_inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~0_combout\ = (\b2v_inst|Mux1~0_combout\ & ((\b2v_inst|p1[5][21]~combout\))) # (!\b2v_inst|Mux1~0_combout\ & (\b2v_inst|p1[5][20]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][20]~combout\,
	datac => \b2v_inst|p1[5][21]~combout\,
	datad => \b2v_inst|Mux1~0_combout\,
	combout => \b2v_inst|Mux12~0_combout\);

-- Location: LCCOMB_X67_Y53_N12
\b2v_inst|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~3_combout\ = (\b2v_inst|Add0~4_combout\ & (((\b2v_inst|Mux12~0_combout\ & !\b2v_inst|Add0~6_combout\)))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Mux12~2_combout\,
	datac => \b2v_inst|Mux12~0_combout\,
	datad => \b2v_inst|Add0~6_combout\,
	combout => \b2v_inst|Mux12~3_combout\);

-- Location: LCCOMB_X67_Y53_N22
\b2v_inst|Mux31~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~22_combout\ = (\b2v_inst|Add2~2_combout\ & ((\b2v_inst|Mux31~21_combout\ & (\b2v_inst|Mux14~5_combout\)) # (!\b2v_inst|Mux31~21_combout\ & ((\b2v_inst|Mux12~3_combout\))))) # (!\b2v_inst|Add2~2_combout\ & (((\b2v_inst|Mux31~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~2_combout\,
	datab => \b2v_inst|Mux14~5_combout\,
	datac => \b2v_inst|Mux31~21_combout\,
	datad => \b2v_inst|Mux12~3_combout\,
	combout => \b2v_inst|Mux31~22_combout\);

-- Location: LCCOMB_X67_Y52_N0
\b2v_inst|Mux31~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~25_combout\ = (\b2v_inst|Add2~4_combout\ & (((\b2v_inst|Mux31~22_combout\) # (!\b2v_inst1|row\(0))))) # (!\b2v_inst|Add2~4_combout\ & (\b2v_inst|Mux31~24_combout\ & ((\b2v_inst1|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux31~24_combout\,
	datab => \b2v_inst|Add2~4_combout\,
	datac => \b2v_inst|Mux31~22_combout\,
	datad => \b2v_inst1|row\(0),
	combout => \b2v_inst|Mux31~25_combout\);

-- Location: LCCOMB_X67_Y52_N28
\b2v_inst|Mux31~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~28_combout\ = (\b2v_inst|Mux31~25_combout\ & ((\b2v_inst|Mux31~27_combout\) # ((\b2v_inst1|row\(0))))) # (!\b2v_inst|Mux31~25_combout\ & (((\b2v_inst|Mux31~20_combout\ & !\b2v_inst1|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux31~27_combout\,
	datab => \b2v_inst|Mux31~20_combout\,
	datac => \b2v_inst|Mux31~25_combout\,
	datad => \b2v_inst1|row\(0),
	combout => \b2v_inst|Mux31~28_combout\);

-- Location: LCCOMB_X65_Y52_N16
\b2v_inst|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux25~1_combout\ = (\b2v_inst1|column\(0) & (!\b2v_inst|Add0~0_combout\ & ((\b2v_inst|Add0~4_combout\) # (!\b2v_inst|Add0~2_combout\)))) # (!\b2v_inst1|column\(0) & (\b2v_inst|Add0~0_combout\ & ((\b2v_inst|Add0~4_combout\) # 
-- (\b2v_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux25~1_combout\);

-- Location: LCCOMB_X65_Y52_N26
\b2v_inst|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux25~2_combout\ = (\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Add0~2_combout\ & (\b2v_inst1|column\(0) & !\b2v_inst|Add0~0_combout\)) # (!\b2v_inst|Add0~2_combout\ & (!\b2v_inst1|column\(0) & \b2v_inst|Add0~0_combout\)))) # 
-- (!\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Add0~2_combout\ & (\b2v_inst1|column\(0) $ (!\b2v_inst|Add0~0_combout\))) # (!\b2v_inst|Add0~2_combout\ & (\b2v_inst1|column\(0) & !\b2v_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux25~2_combout\);

-- Location: LCCOMB_X67_Y54_N28
\b2v_inst|p1[25][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p1[25][28]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|Equal10~2_combout\))) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (\b2v_inst|p1[25][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p1[25][28]~combout\,
	datac => \b2v_inst|Equal10~2_combout\,
	datad => \b2v_inst|process_0~45clkctrl_outclk\,
	combout => \b2v_inst|p1[25][28]~combout\);

-- Location: LCCOMB_X65_Y52_N22
\b2v_inst|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux25~4_combout\ = (\b2v_inst|Add0~4_combout\ & (\b2v_inst|p1[7][22]~combout\)) # (!\b2v_inst|Add0~4_combout\ & ((\b2v_inst|p1[25][28]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|p1[25][28]~combout\,
	combout => \b2v_inst|Mux25~4_combout\);

-- Location: LCCOMB_X65_Y52_N18
\b2v_inst|p1[25][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p1[25][25]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (!\b2v_inst|Selector5~0_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p1[25][25]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Selector5~0_combout\,
	datac => \b2v_inst|process_0~45clkctrl_outclk\,
	datad => \b2v_inst|p1[25][25]~combout\,
	combout => \b2v_inst|p1[25][25]~combout\);

-- Location: LCCOMB_X65_Y52_N4
\b2v_inst|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux25~3_combout\ = (\b2v_inst1|column\(0) & ((\b2v_inst|p1[5][21]~combout\))) # (!\b2v_inst1|column\(0) & (\b2v_inst|p1[25][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p1[25][25]~combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|p1[5][21]~combout\,
	combout => \b2v_inst|Mux25~3_combout\);

-- Location: LCCOMB_X65_Y52_N24
\b2v_inst|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux25~5_combout\ = (\b2v_inst|Mux25~2_combout\ & ((\b2v_inst|Mux25~3_combout\))) # (!\b2v_inst|Mux25~2_combout\ & (\b2v_inst|Mux25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux25~4_combout\,
	datab => \b2v_inst|Mux25~3_combout\,
	datac => \b2v_inst|Mux25~2_combout\,
	combout => \b2v_inst|Mux25~5_combout\);

-- Location: LCCOMB_X65_Y52_N2
\b2v_inst|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux25~6_combout\ = (\b2v_inst|Mux25~1_combout\ & (\b2v_inst|p1[5][20]~combout\ & (!\b2v_inst|Mux25~2_combout\))) # (!\b2v_inst|Mux25~1_combout\ & (((\b2v_inst|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][20]~combout\,
	datab => \b2v_inst|Mux25~1_combout\,
	datac => \b2v_inst|Mux25~2_combout\,
	datad => \b2v_inst|Mux25~5_combout\,
	combout => \b2v_inst|Mux25~6_combout\);

-- Location: LCCOMB_X66_Y52_N26
\b2v_inst|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux26~0_combout\ = (\b2v_inst|Add0~6_combout\ & (!\b2v_inst|Add0~4_combout\ & !\b2v_inst|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux26~0_combout\);

-- Location: LCCOMB_X66_Y52_N16
\b2v_inst|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux25~0_combout\ = (\b2v_inst1|column\(0) & ((\b2v_inst|Add0~0_combout\ & ((\b2v_inst|p1[5][21]~combout\))) # (!\b2v_inst|Add0~0_combout\ & (\b2v_inst|p1[5][20]~combout\)))) # (!\b2v_inst1|column\(0) & (((\b2v_inst|p1[5][21]~combout\ & 
-- !\b2v_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][20]~combout\,
	datab => \b2v_inst|p1[5][21]~combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux25~0_combout\);

-- Location: LCCOMB_X66_Y52_N12
\b2v_inst|Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux25~7_combout\ = (\b2v_inst|Mux25~6_combout\ & (((\b2v_inst|Mux26~0_combout\ & \b2v_inst|Mux25~0_combout\)) # (!\b2v_inst|Add0~6_combout\))) # (!\b2v_inst|Mux25~6_combout\ & (((\b2v_inst|Mux26~0_combout\ & \b2v_inst|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux25~6_combout\,
	datab => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|Mux26~0_combout\,
	datad => \b2v_inst|Mux25~0_combout\,
	combout => \b2v_inst|Mux25~7_combout\);

-- Location: LCCOMB_X65_Y51_N8
\b2v_inst|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux27~0_combout\ = (\b2v_inst|Add0~4_combout\ & (\b2v_inst|Add0~2_combout\ $ (!\b2v_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|Add0~4_combout\,
	combout => \b2v_inst|Mux27~0_combout\);

-- Location: LCCOMB_X65_Y51_N2
\b2v_inst|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux27~1_combout\ = (\b2v_inst|Add0~6_combout\ & (\b2v_inst|p1[25][28]~combout\ & ((\b2v_inst|Add0~0_combout\)))) # (!\b2v_inst|Add0~6_combout\ & (((\b2v_inst|p1[5][20]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[25][28]~combout\,
	datab => \b2v_inst|p1[5][20]~combout\,
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|Add0~6_combout\,
	combout => \b2v_inst|Mux27~1_combout\);

-- Location: LCCOMB_X65_Y51_N4
\b2v_inst|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux27~2_combout\ = (\b2v_inst|Mux27~0_combout\ & (\b2v_inst|Mux27~1_combout\ & (\b2v_inst1|column\(0) $ (\b2v_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Mux27~0_combout\,
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|Mux27~1_combout\,
	combout => \b2v_inst|Mux27~2_combout\);

-- Location: LCCOMB_X65_Y51_N30
\b2v_inst|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux27~3_combout\ = (\b2v_inst|Add0~2_combout\ & (\b2v_inst1|column\(0) & (!\b2v_inst|Add0~0_combout\))) # (!\b2v_inst|Add0~2_combout\ & (\b2v_inst|p1[5][20]~combout\ & ((\b2v_inst1|column\(0)) # (!\b2v_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux27~3_combout\);

-- Location: LCCOMB_X65_Y51_N24
\b2v_inst|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux27~4_combout\ = (\b2v_inst|Add0~6_combout\ & (\b2v_inst|Mux27~3_combout\ & (!\b2v_inst|Add0~2_combout\))) # (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|p1[25][28]~combout\) # ((!\b2v_inst|Mux27~3_combout\ & \b2v_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux27~3_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|p1[25][28]~combout\,
	datad => \b2v_inst|Add0~6_combout\,
	combout => \b2v_inst|Mux27~4_combout\);

-- Location: LCCOMB_X65_Y51_N10
\b2v_inst|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux27~5_combout\ = (\b2v_inst|Mux27~2_combout\) # ((!\b2v_inst|Add0~4_combout\ & \b2v_inst|Mux27~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux27~2_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Mux27~4_combout\,
	combout => \b2v_inst|Mux27~5_combout\);

-- Location: LCCOMB_X68_Y51_N12
\b2v_inst|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~3_combout\ = (\b2v_inst1|column\(0) & ((\b2v_inst|p1[5][21]~combout\) # (\b2v_inst|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datac => \b2v_inst|p1[5][21]~combout\,
	datad => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux19~3_combout\);

-- Location: LCCOMB_X68_Y51_N14
\b2v_inst|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~4_combout\ = (\b2v_inst|Add0~0_combout\ & (!\b2v_inst|Add0~2_combout\ & (\b2v_inst|p1[7][22]~combout\))) # (!\b2v_inst|Add0~0_combout\ & (\b2v_inst|Mux19~3_combout\ & ((\b2v_inst|p1[7][22]~combout\) # (!\b2v_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~2_combout\,
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|Mux19~3_combout\,
	combout => \b2v_inst|Mux19~4_combout\);

-- Location: LCCOMB_X68_Y51_N6
\b2v_inst|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~0_combout\ = (\b2v_inst|Add0~0_combout\ & ((\b2v_inst|Add0~2_combout\ & (\b2v_inst|p1[5][21]~combout\)) # (!\b2v_inst|Add0~2_combout\ & ((\b2v_inst|p1[7][22]~combout\))))) # (!\b2v_inst|Add0~0_combout\ & (((\b2v_inst|p1[7][22]~combout\ & 
-- \b2v_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][21]~combout\,
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux19~0_combout\);

-- Location: LCCOMB_X68_Y51_N16
\b2v_inst|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~1_combout\ = (\b2v_inst|Mux19~0_combout\ & ((!\b2v_inst|Add0~0_combout\) # (!\b2v_inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|Mux19~0_combout\,
	combout => \b2v_inst|Mux19~1_combout\);

-- Location: LCCOMB_X68_Y51_N10
\b2v_inst|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~2_combout\ = (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|Add0~4_combout\ & (\b2v_inst|p1[5][20]~combout\)) # (!\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst|p1[5][20]~combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Mux19~1_combout\,
	combout => \b2v_inst|Mux19~2_combout\);

-- Location: LCCOMB_X68_Y51_N8
\b2v_inst|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~5_combout\ = (\b2v_inst|Mux19~2_combout\) # ((\b2v_inst|Add0~6_combout\ & (\b2v_inst|Mux19~4_combout\ & !\b2v_inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst|Mux19~4_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Mux19~2_combout\,
	combout => \b2v_inst|Mux19~5_combout\);

-- Location: LCCOMB_X68_Y52_N12
\b2v_inst|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~2_combout\ = (\b2v_inst|Add0~2_combout\ & \b2v_inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux17~2_combout\);

-- Location: LCCOMB_X68_Y52_N8
\b2v_inst|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~0_combout\ = (\b2v_inst|Add0~6_combout\ & (\b2v_inst|p1[5][21]~combout\)) # (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|p1[5][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][21]~combout\,
	datab => \b2v_inst|p1[5][20]~combout\,
	datac => \b2v_inst|Add0~6_combout\,
	combout => \b2v_inst|Mux17~0_combout\);

-- Location: LCCOMB_X68_Y52_N18
\b2v_inst|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~1_combout\ = (\b2v_inst1|column\(0) & (\b2v_inst|Add0~6_combout\ & (!\b2v_inst|Add0~2_combout\))) # (!\b2v_inst1|column\(0) & (!\b2v_inst|Add0~0_combout\ & (\b2v_inst|Add0~6_combout\ $ (\b2v_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux17~1_combout\);

-- Location: LCCOMB_X68_Y52_N22
\b2v_inst|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~3_combout\ = (\b2v_inst|Mux17~2_combout\ & (((\b2v_inst|Mux17~0_combout\ & !\b2v_inst|Mux17~1_combout\)))) # (!\b2v_inst|Mux17~2_combout\ & (\b2v_inst|p1[7][22]~combout\ & ((\b2v_inst|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~2_combout\,
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|Mux17~0_combout\,
	datad => \b2v_inst|Mux17~1_combout\,
	combout => \b2v_inst|Mux17~3_combout\);

-- Location: LCCOMB_X68_Y52_N24
\b2v_inst|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~4_combout\ = (\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux15~1_combout\))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|Mux17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~4_combout\,
	datac => \b2v_inst|Mux17~3_combout\,
	datad => \b2v_inst|Mux15~1_combout\,
	combout => \b2v_inst|Mux17~4_combout\);

-- Location: LCCOMB_X67_Y52_N24
\b2v_inst|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~0_combout\ = (\b2v_inst|Add2~0_combout\ & ((\b2v_inst|Mux19~5_combout\) # ((\b2v_inst|Add2~4_combout\)))) # (!\b2v_inst|Add2~0_combout\ & (((!\b2v_inst|Add2~4_combout\ & \b2v_inst|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst|Mux19~5_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux17~4_combout\,
	combout => \b2v_inst|Mux31~0_combout\);

-- Location: LCCOMB_X67_Y52_N10
\b2v_inst|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~1_combout\ = (\b2v_inst|Add2~4_combout\ & ((\b2v_inst|Mux31~0_combout\ & ((\b2v_inst|Mux27~5_combout\))) # (!\b2v_inst|Mux31~0_combout\ & (\b2v_inst|Mux25~7_combout\)))) # (!\b2v_inst|Add2~4_combout\ & (((\b2v_inst|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux25~7_combout\,
	datab => \b2v_inst|Mux27~5_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux31~0_combout\,
	combout => \b2v_inst|Mux31~1_combout\);

-- Location: LCCOMB_X65_Y52_N20
\b2v_inst|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux26~1_combout\ = (\b2v_inst1|column\(0) & (((\b2v_inst|p1[25][28]~combout\) # (\b2v_inst|Add0~0_combout\)))) # (!\b2v_inst1|column\(0) & (\b2v_inst|p1[5][20]~combout\ & ((\b2v_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][20]~combout\,
	datab => \b2v_inst|p1[25][28]~combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux26~1_combout\);

-- Location: LCCOMB_X65_Y52_N30
\b2v_inst|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux26~2_combout\ = (\b2v_inst|Mux26~1_combout\) # ((\b2v_inst|p1[25][25]~combout\ & (!\b2v_inst1|column\(0) & !\b2v_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[25][25]~combout\,
	datab => \b2v_inst|Mux26~1_combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux26~2_combout\);

-- Location: LCCOMB_X65_Y52_N8
\b2v_inst|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux26~3_combout\ = (\b2v_inst|Add0~4_combout\ & (((\b2v_inst|Add0~2_combout\)))) # (!\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Mux26~2_combout\))) # (!\b2v_inst|Add0~2_combout\ & (\b2v_inst|p1[25][28]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|p1[25][28]~combout\,
	datac => \b2v_inst|Mux26~2_combout\,
	datad => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux26~3_combout\);

-- Location: LCCOMB_X66_Y52_N28
\b2v_inst|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux26~5_combout\ = (\b2v_inst|p1[5][20]~combout\ & ((\b2v_inst|p1[7][22]~combout\) # (\b2v_inst1|column\(0) $ (\b2v_inst|Add0~0_combout\)))) # (!\b2v_inst|p1[5][20]~combout\ & (\b2v_inst|p1[7][22]~combout\ & (\b2v_inst1|column\(0) $ 
-- (!\b2v_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][20]~combout\,
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux26~5_combout\);

-- Location: LCCOMB_X66_Y52_N30
\b2v_inst|Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux26~6_combout\ = (\b2v_inst|Add0~4_combout\ & (\b2v_inst|Mux26~5_combout\ & (\b2v_inst|Mux26~3_combout\ $ (!\b2v_inst|Add0~0_combout\)))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|Mux26~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux26~3_combout\,
	datab => \b2v_inst|Add0~0_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Mux26~5_combout\,
	combout => \b2v_inst|Mux26~6_combout\);

-- Location: LCCOMB_X66_Y52_N8
\b2v_inst|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux26~4_combout\ = (\b2v_inst|Mux26~6_combout\ & (((\b2v_inst|Mux6~0_combout\ & \b2v_inst|Mux26~0_combout\)) # (!\b2v_inst|Add0~6_combout\))) # (!\b2v_inst|Mux26~6_combout\ & (((\b2v_inst|Mux6~0_combout\ & \b2v_inst|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux26~6_combout\,
	datab => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|Mux6~0_combout\,
	datad => \b2v_inst|Mux26~0_combout\,
	combout => \b2v_inst|Mux26~4_combout\);

-- Location: LCCOMB_X68_Y51_N18
\b2v_inst|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~5_combout\ = (\b2v_inst|p1[7][22]~combout\ & ((\b2v_inst1|column\(0)) # (!\b2v_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux17~5_combout\);

-- Location: LCCOMB_X68_Y51_N4
\b2v_inst|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~0_combout\ = (\b2v_inst|Add0~4_combout\ & (((\b2v_inst|p1[5][20]~combout\)))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~2_combout\,
	datab => \b2v_inst|p1[5][20]~combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Mux17~5_combout\,
	combout => \b2v_inst|Mux18~0_combout\);

-- Location: LCCOMB_X67_Y51_N0
\b2v_inst|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~1_combout\ = (\b2v_inst|Mux18~0_combout\ & (((\b2v_inst|p1[7][22]~combout\ & \b2v_inst|Mux26~0_combout\)) # (!\b2v_inst|Add0~6_combout\))) # (!\b2v_inst|Mux18~0_combout\ & (((\b2v_inst|p1[7][22]~combout\ & \b2v_inst|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~0_combout\,
	datab => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|p1[7][22]~combout\,
	datad => \b2v_inst|Mux26~0_combout\,
	combout => \b2v_inst|Mux18~1_combout\);

-- Location: LCCOMB_X68_Y52_N10
\b2v_inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~0_combout\ = (\b2v_inst|Add0~6_combout\ & (\b2v_inst|p1[7][22]~combout\ & (!\b2v_inst|Add0~2_combout\ & !\b2v_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux16~0_combout\);

-- Location: LCCOMB_X68_Y52_N4
\b2v_inst|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~1_combout\ = (\b2v_inst|Add0~6_combout\ & (\b2v_inst|p1[5][21]~combout\)) # (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|Add0~0_combout\ & ((\b2v_inst|p1[5][20]~combout\))) # (!\b2v_inst|Add0~0_combout\ & (\b2v_inst|p1[5][21]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][21]~combout\,
	datab => \b2v_inst|p1[5][20]~combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux16~1_combout\);

-- Location: LCCOMB_X68_Y52_N14
\b2v_inst|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~2_combout\ = (\b2v_inst|Add0~2_combout\ & (\b2v_inst|Mux16~1_combout\ & ((\b2v_inst|Add0~0_combout\) # (!\b2v_inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add0~0_combout\,
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|Mux16~1_combout\,
	combout => \b2v_inst|Mux16~2_combout\);

-- Location: LCCOMB_X68_Y52_N16
\b2v_inst|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~3_combout\ = (\b2v_inst|Add0~4_combout\ & (((\b2v_inst|Mux15~1_combout\)))) # (!\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux16~0_combout\) # ((\b2v_inst|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux16~0_combout\,
	datab => \b2v_inst|Add0~4_combout\,
	datac => \b2v_inst|Mux16~2_combout\,
	datad => \b2v_inst|Mux15~1_combout\,
	combout => \b2v_inst|Mux16~3_combout\);

-- Location: LCCOMB_X67_Y52_N20
\b2v_inst|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~4_combout\ = (\b2v_inst|Add2~0_combout\ & ((\b2v_inst|Mux18~1_combout\) # ((\b2v_inst|Add2~4_combout\)))) # (!\b2v_inst|Add2~0_combout\ & (((!\b2v_inst|Add2~4_combout\ & \b2v_inst|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst|Mux18~1_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux16~3_combout\,
	combout => \b2v_inst|Mux31~4_combout\);

-- Location: LCCOMB_X65_Y52_N10
\b2v_inst|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux24~2_combout\ = (\b2v_inst|Add0~4_combout\ & (\b2v_inst|p1[7][22]~combout\)) # (!\b2v_inst|Add0~4_combout\ & ((\b2v_inst|p1[25][28]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|p1[25][28]~combout\,
	combout => \b2v_inst|Mux24~2_combout\);

-- Location: LCCOMB_X66_Y52_N0
\b2v_inst|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux24~1_combout\ = (\b2v_inst|Add0~4_combout\) # (\b2v_inst|Add0~0_combout\ $ (((\b2v_inst|Add0~2_combout\ & \b2v_inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux24~1_combout\);

-- Location: LCCOMB_X66_Y52_N10
\b2v_inst|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux24~3_combout\ = (\b2v_inst|Mux24~1_combout\ & (\b2v_inst|Mux24~2_combout\)) # (!\b2v_inst|Mux24~1_combout\ & ((\b2v_inst|p1[5][21]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux24~2_combout\,
	datab => \b2v_inst|p1[5][21]~combout\,
	datad => \b2v_inst|Mux24~1_combout\,
	combout => \b2v_inst|Mux24~3_combout\);

-- Location: LCCOMB_X66_Y52_N22
\b2v_inst|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux24~0_combout\ = (\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Add0~2_combout\ & (!\b2v_inst1|column\(0) & \b2v_inst|Add0~0_combout\)) # (!\b2v_inst|Add0~2_combout\ & (\b2v_inst1|column\(0) & !\b2v_inst|Add0~0_combout\)))) # 
-- (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Add0~0_combout\) # (!\b2v_inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux24~0_combout\);

-- Location: LCCOMB_X66_Y52_N20
\b2v_inst|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux24~4_combout\ = (\b2v_inst|Mux24~1_combout\ & ((\b2v_inst|Mux24~0_combout\ & ((\b2v_inst|p1[5][20]~combout\))) # (!\b2v_inst|Mux24~0_combout\ & (\b2v_inst|Mux24~3_combout\)))) # (!\b2v_inst|Mux24~1_combout\ & (\b2v_inst|Mux24~3_combout\ & 
-- ((\b2v_inst|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux24~3_combout\,
	datab => \b2v_inst|Mux24~1_combout\,
	datac => \b2v_inst|p1[5][20]~combout\,
	datad => \b2v_inst|Mux24~0_combout\,
	combout => \b2v_inst|Mux24~4_combout\);

-- Location: LCCOMB_X66_Y52_N14
\b2v_inst|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux24~5_combout\ = (\b2v_inst|Add0~6_combout\ & (((\b2v_inst|Mux26~0_combout\ & \b2v_inst|Mux25~0_combout\)))) # (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|Mux24~4_combout\) # ((\b2v_inst|Mux26~0_combout\ & \b2v_inst|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst|Mux24~4_combout\,
	datac => \b2v_inst|Mux26~0_combout\,
	datad => \b2v_inst|Mux25~0_combout\,
	combout => \b2v_inst|Mux24~5_combout\);

-- Location: LCCOMB_X67_Y52_N22
\b2v_inst|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~5_combout\ = (\b2v_inst|Mux31~4_combout\ & ((\b2v_inst|Mux26~4_combout\) # ((!\b2v_inst|Add2~4_combout\)))) # (!\b2v_inst|Mux31~4_combout\ & (((\b2v_inst|Add2~4_combout\ & \b2v_inst|Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux26~4_combout\,
	datab => \b2v_inst|Mux31~4_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux24~5_combout\,
	combout => \b2v_inst|Mux31~5_combout\);

-- Location: LCCOMB_X65_Y51_N20
\b2v_inst|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~2_combout\ = (\b2v_inst|Add0~6_combout\ & \b2v_inst|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux15~2_combout\);

-- Location: LCCOMB_X68_Y53_N20
\b2v_inst|p1[30][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p1[30][14]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (!\b2v_inst|Selector7~0_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p1[30][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector7~0_combout\,
	datac => \b2v_inst|process_0~45clkctrl_outclk\,
	datad => \b2v_inst|p1[30][14]~combout\,
	combout => \b2v_inst|p1[30][14]~combout\);

-- Location: LCCOMB_X68_Y53_N30
\b2v_inst|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux30~1_combout\ = (\b2v_inst1|column\(0) & ((\b2v_inst|Add0~2_combout\) # ((\b2v_inst|p1[30][14]~combout\ & \b2v_inst|Add0~6_combout\)))) # (!\b2v_inst1|column\(0) & (\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Add0~6_combout\) # 
-- (!\b2v_inst|p1[30][14]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p1[30][14]~combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux30~1_combout\);

-- Location: LCCOMB_X68_Y53_N4
\b2v_inst|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux30~0_combout\ = (\b2v_inst1|column\(0) & (\b2v_inst|Add0~6_combout\ & ((\b2v_inst|Add0~2_combout\) # (!\b2v_inst|p1[30][14]~combout\)))) # (!\b2v_inst1|column\(0) & ((\b2v_inst|Add0~6_combout\) # ((\b2v_inst|p1[30][14]~combout\ & 
-- \b2v_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|p1[30][14]~combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux30~0_combout\);

-- Location: LCCOMB_X65_Y52_N6
\b2v_inst|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux30~3_combout\ = (\b2v_inst1|column\(0) & (!\b2v_inst|Mux30~1_combout\ & ((!\b2v_inst|Mux30~0_combout\) # (!\b2v_inst|Add0~0_combout\)))) # (!\b2v_inst1|column\(0) & (\b2v_inst|Mux30~1_combout\ & (\b2v_inst|Add0~0_combout\ $ 
-- (\b2v_inst|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add0~0_combout\,
	datac => \b2v_inst|Mux30~1_combout\,
	datad => \b2v_inst|Mux30~0_combout\,
	combout => \b2v_inst|Mux30~3_combout\);

-- Location: LCCOMB_X65_Y52_N12
\b2v_inst|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux30~2_combout\ = (\b2v_inst|Add0~0_combout\ & (((\b2v_inst1|column\(0) & !\b2v_inst|Mux30~0_combout\)) # (!\b2v_inst|Mux30~1_combout\))) # (!\b2v_inst|Add0~0_combout\ & ((\b2v_inst|Mux30~1_combout\) # ((!\b2v_inst1|column\(0) & 
-- \b2v_inst|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add0~0_combout\,
	datac => \b2v_inst|Mux30~1_combout\,
	datad => \b2v_inst|Mux30~0_combout\,
	combout => \b2v_inst|Mux30~2_combout\);

-- Location: LCCOMB_X65_Y52_N0
\b2v_inst|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux30~4_combout\ = (\b2v_inst|Mux30~3_combout\ & (((\b2v_inst|p1[25][25]~combout\ & \b2v_inst|Mux30~2_combout\)))) # (!\b2v_inst|Mux30~3_combout\ & ((\b2v_inst|p1[25][28]~combout\) # ((\b2v_inst|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux30~3_combout\,
	datab => \b2v_inst|p1[25][28]~combout\,
	datac => \b2v_inst|p1[25][25]~combout\,
	datad => \b2v_inst|Mux30~2_combout\,
	combout => \b2v_inst|Mux30~4_combout\);

-- Location: LCCOMB_X65_Y51_N14
\b2v_inst|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux30~5_combout\ = (\b2v_inst|Add0~4_combout\ & (\b2v_inst|p1[25][28]~combout\ & (!\b2v_inst|Mux15~2_combout\))) # (!\b2v_inst|Add0~4_combout\ & (((\b2v_inst|Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[25][28]~combout\,
	datab => \b2v_inst|Mux15~2_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Mux30~4_combout\,
	combout => \b2v_inst|Mux30~5_combout\);

-- Location: LCCOMB_X65_Y51_N28
\b2v_inst|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux28~0_combout\ = (\b2v_inst|Add0~0_combout\ & (((!\b2v_inst1|column\(0) & \b2v_inst|Add0~6_combout\)))) # (!\b2v_inst|Add0~0_combout\ & (!\b2v_inst|p1[25][25]~combout\ & (\b2v_inst1|column\(0) & !\b2v_inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[25][25]~combout\,
	datab => \b2v_inst|Add0~0_combout\,
	datac => \b2v_inst1|column\(0),
	datad => \b2v_inst|Add0~6_combout\,
	combout => \b2v_inst|Mux28~0_combout\);

-- Location: LCCOMB_X65_Y51_N6
\b2v_inst|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux28~1_combout\ = (\b2v_inst|Add0~2_combout\ & (((\b2v_inst|Mux28~0_combout\)))) # (!\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Mux28~0_combout\ & (\b2v_inst|p1[5][21]~combout\)) # (!\b2v_inst|Mux28~0_combout\ & ((\b2v_inst|p1[5][20]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][21]~combout\,
	datab => \b2v_inst|p1[5][20]~combout\,
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|Mux28~0_combout\,
	combout => \b2v_inst|Mux28~1_combout\);

-- Location: LCCOMB_X65_Y51_N0
\b2v_inst|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux28~2_combout\ = (\b2v_inst|Add0~2_combout\ & (!\b2v_inst|Mux28~1_combout\ & ((!\b2v_inst|Add0~6_combout\)))) # (!\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Add0~6_combout\ & (\b2v_inst|Mux28~1_combout\)) # (!\b2v_inst|Add0~6_combout\ & 
-- ((\b2v_inst|p1[25][28]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux28~1_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|p1[25][28]~combout\,
	datad => \b2v_inst|Add0~6_combout\,
	combout => \b2v_inst|Mux28~2_combout\);

-- Location: LCCOMB_X65_Y51_N18
\b2v_inst|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux28~3_combout\ = (\b2v_inst|Mux27~2_combout\) # ((!\b2v_inst|Add0~4_combout\ & \b2v_inst|Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux27~2_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Mux28~2_combout\,
	combout => \b2v_inst|Mux28~3_combout\);

-- Location: LCCOMB_X66_Y51_N26
\b2v_inst|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~3_combout\ = (\b2v_inst|Add0~2_combout\ & (!\b2v_inst1|column\(0) & (!\b2v_inst|Add0~6_combout\ & \b2v_inst|Add0~0_combout\))) # (!\b2v_inst|Add0~2_combout\ & (\b2v_inst1|column\(0) & (\b2v_inst|Add0~6_combout\ & 
-- !\b2v_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~2_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux20~3_combout\);

-- Location: LCCOMB_X66_Y51_N0
\b2v_inst|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~2_combout\ = (\b2v_inst|Add0~2_combout\ & (((\b2v_inst|Add0~6_combout\) # (!\b2v_inst|Add0~0_combout\)))) # (!\b2v_inst|Add0~2_combout\ & (!\b2v_inst1|column\(0) & ((\b2v_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~2_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux20~2_combout\);

-- Location: LCCOMB_X66_Y51_N28
\b2v_inst|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~4_combout\ = (\b2v_inst|Mux20~3_combout\ & (((\b2v_inst|p1[5][21]~combout\ & !\b2v_inst|Mux20~2_combout\)))) # (!\b2v_inst|Mux20~3_combout\ & (\b2v_inst|p1[7][22]~combout\ & ((\b2v_inst|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~3_combout\,
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|p1[5][21]~combout\,
	datad => \b2v_inst|Mux20~2_combout\,
	combout => \b2v_inst|Mux20~4_combout\);

-- Location: LCCOMB_X67_Y51_N30
\b2v_inst|p1[22][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|p1[22][4]~combout\ = (GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & (\b2v_inst|Equal10~0_combout\)) # (!GLOBAL(\b2v_inst|process_0~45clkctrl_outclk\) & ((\b2v_inst|p1[22][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal10~0_combout\,
	datac => \b2v_inst|p1[22][4]~combout\,
	datad => \b2v_inst|process_0~45clkctrl_outclk\,
	combout => \b2v_inst|p1[22][4]~combout\);

-- Location: LCCOMB_X67_Y51_N20
\b2v_inst|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~0_combout\ = (\b2v_inst|Add0~2_combout\ & (\b2v_inst|p1[22][4]~combout\ & (!\b2v_inst|Add0~0_combout\))) # (!\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Add0~0_combout\ & (\b2v_inst|p1[22][4]~combout\)) # (!\b2v_inst|Add0~0_combout\ & 
-- ((\b2v_inst|p1[7][22]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[22][4]~combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|p1[7][22]~combout\,
	combout => \b2v_inst|Mux20~0_combout\);

-- Location: LCCOMB_X67_Y51_N22
\b2v_inst|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~1_combout\ = (\b2v_inst|Add0~6_combout\ & (\b2v_inst|Mux20~0_combout\)) # (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|p1[5][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|Mux20~0_combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux20~1_combout\);

-- Location: LCCOMB_X66_Y51_N30
\b2v_inst|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~5_combout\ = (\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux20~1_combout\))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|Mux20~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux20~4_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Mux20~1_combout\,
	combout => \b2v_inst|Mux20~5_combout\);

-- Location: LCCOMB_X67_Y51_N28
\b2v_inst|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux22~5_combout\ = (\b2v_inst|Add0~0_combout\ & ((\b2v_inst1|column\(0)) # (!\b2v_inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|Add0~6_combout\,
	combout => \b2v_inst|Mux22~5_combout\);

-- Location: LCCOMB_X67_Y51_N14
\b2v_inst|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux22~6_combout\ = (\b2v_inst|Mux22~5_combout\ & ((\b2v_inst1|column\(0) & (\b2v_inst|p1[7][22]~combout\)) # (!\b2v_inst1|column\(0) & ((\b2v_inst|p1[5][20]~combout\))))) # (!\b2v_inst|Mux22~5_combout\ & (!\b2v_inst1|column\(0) & 
-- (\b2v_inst|p1[7][22]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux22~5_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|p1[7][22]~combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux22~6_combout\);

-- Location: LCCOMB_X67_Y51_N8
\b2v_inst|Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux22~7_combout\ = (\b2v_inst|Mux22~6_combout\ & \b2v_inst|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux22~6_combout\,
	datac => \b2v_inst|Add0~2_combout\,
	combout => \b2v_inst|Mux22~7_combout\);

-- Location: LCCOMB_X67_Y51_N24
\b2v_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux0~0_combout\ = (!\b2v_inst|Add0~0_combout\ & \b2v_inst1|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux0~0_combout\);

-- Location: LCCOMB_X67_Y51_N26
\b2v_inst|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux22~4_combout\ = (\b2v_inst|Mux0~0_combout\ & (\b2v_inst|Add0~6_combout\ & (!\b2v_inst|Add0~2_combout\ & \b2v_inst|p1[5][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux0~0_combout\,
	datab => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux22~4_combout\);

-- Location: LCCOMB_X67_Y51_N16
\b2v_inst|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux22~0_combout\ = (\b2v_inst|Add0~6_combout\ & (((\b2v_inst|Add0~2_combout\)))) # (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|Add0~0_combout\ & (!\b2v_inst|Add0~2_combout\ & !\b2v_inst1|column\(0))) # (!\b2v_inst|Add0~0_combout\ & 
-- (\b2v_inst|Add0~2_combout\ & \b2v_inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~6_combout\,
	datab => \b2v_inst|Add0~0_combout\,
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst1|column\(0),
	combout => \b2v_inst|Mux22~0_combout\);

-- Location: LCCOMB_X67_Y51_N10
\b2v_inst|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux22~1_combout\ = (\b2v_inst|Mux22~0_combout\ & ((\b2v_inst|Add0~6_combout\) # ((\b2v_inst|p1[7][22]~combout\)))) # (!\b2v_inst|Mux22~0_combout\ & (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|p1[5][20]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux22~0_combout\,
	datab => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|p1[7][22]~combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux22~1_combout\);

-- Location: LCCOMB_X67_Y51_N12
\b2v_inst|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux22~2_combout\ = (\b2v_inst|Add0~0_combout\ & (\b2v_inst|p1[22][4]~combout\ & ((!\b2v_inst|Mux22~1_combout\)))) # (!\b2v_inst|Add0~0_combout\ & ((\b2v_inst|Mux22~1_combout\ & (\b2v_inst|p1[22][4]~combout\)) # (!\b2v_inst|Mux22~1_combout\ & 
-- ((\b2v_inst|p1[7][22]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[22][4]~combout\,
	datab => \b2v_inst|Add0~0_combout\,
	datac => \b2v_inst|p1[7][22]~combout\,
	datad => \b2v_inst|Mux22~1_combout\,
	combout => \b2v_inst|Mux22~2_combout\);

-- Location: LCCOMB_X67_Y51_N6
\b2v_inst|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux22~3_combout\ = (\b2v_inst|Add0~6_combout\ & (\b2v_inst|Mux22~2_combout\)) # (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|Mux22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux22~2_combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Mux22~1_combout\,
	combout => \b2v_inst|Mux22~3_combout\);

-- Location: LCCOMB_X67_Y51_N18
\b2v_inst|Mux22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux22~8_combout\ = (\b2v_inst|Add0~4_combout\ & (((\b2v_inst|Mux22~3_combout\)))) # (!\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux22~7_combout\) # ((\b2v_inst|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|Mux22~7_combout\,
	datac => \b2v_inst|Mux22~4_combout\,
	datad => \b2v_inst|Mux22~3_combout\,
	combout => \b2v_inst|Mux22~8_combout\);

-- Location: LCCOMB_X66_Y51_N16
\b2v_inst|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~2_combout\ = (\b2v_inst|Add2~0_combout\ & ((\b2v_inst|Add2~4_combout\) # ((\b2v_inst|Mux22~8_combout\)))) # (!\b2v_inst|Add2~0_combout\ & (!\b2v_inst|Add2~4_combout\ & (\b2v_inst|Mux20~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst|Add2~4_combout\,
	datac => \b2v_inst|Mux20~5_combout\,
	datad => \b2v_inst|Mux22~8_combout\,
	combout => \b2v_inst|Mux31~2_combout\);

-- Location: LCCOMB_X66_Y51_N2
\b2v_inst|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~3_combout\ = (\b2v_inst|Add2~4_combout\ & ((\b2v_inst|Mux31~2_combout\ & (\b2v_inst|Mux30~5_combout\)) # (!\b2v_inst|Mux31~2_combout\ & ((\b2v_inst|Mux28~3_combout\))))) # (!\b2v_inst|Add2~4_combout\ & (((\b2v_inst|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux30~5_combout\,
	datab => \b2v_inst|Mux28~3_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux31~2_combout\,
	combout => \b2v_inst|Mux31~3_combout\);

-- Location: LCCOMB_X67_Y52_N8
\b2v_inst|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~6_combout\ = (\b2v_inst|Add2~2_combout\ & (((\b2v_inst|Mux31~3_combout\) # (!\b2v_inst1|row\(0))))) # (!\b2v_inst|Add2~2_combout\ & (\b2v_inst|Mux31~5_combout\ & ((\b2v_inst1|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux31~5_combout\,
	datab => \b2v_inst|Mux31~3_combout\,
	datac => \b2v_inst|Add2~2_combout\,
	datad => \b2v_inst1|row\(0),
	combout => \b2v_inst|Mux31~6_combout\);

-- Location: LCCOMB_X66_Y51_N6
\b2v_inst|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux24~6_combout\ = (\b2v_inst|Add0~0_combout\ & ((\b2v_inst1|column\(0) & (\b2v_inst|p1[7][22]~combout\)) # (!\b2v_inst1|column\(0) & ((\b2v_inst|p1[5][20]~combout\))))) # (!\b2v_inst|Add0~0_combout\ & (((\b2v_inst|p1[7][22]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~0_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|p1[7][22]~combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux24~6_combout\);

-- Location: LCCOMB_X66_Y51_N8
\b2v_inst|Mux31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~12_combout\ = (\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Add0~6_combout\ & (\b2v_inst|p1[7][22]~combout\)) # (!\b2v_inst|Add0~6_combout\ & ((\b2v_inst|Mux24~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~2_combout\,
	datab => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|p1[7][22]~combout\,
	datad => \b2v_inst|Mux24~6_combout\,
	combout => \b2v_inst|Mux31~12_combout\);

-- Location: LCCOMB_X66_Y51_N10
\b2v_inst|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~10_combout\ = (\b2v_inst1|column\(0) & (((\b2v_inst|p1[5][20]~combout\)))) # (!\b2v_inst1|column\(0) & (\b2v_inst|Add2~0_combout\ & (\b2v_inst|p1[5][21]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|p1[5][21]~combout\,
	datad => \b2v_inst|p1[5][20]~combout\,
	combout => \b2v_inst|Mux31~10_combout\);

-- Location: LCCOMB_X66_Y51_N12
\b2v_inst|Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~11_combout\ = (!\b2v_inst|Add0~0_combout\ & (!\b2v_inst|Add0~2_combout\ & (\b2v_inst|Add0~6_combout\ & \b2v_inst|Mux31~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~0_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Mux31~10_combout\,
	combout => \b2v_inst|Mux31~11_combout\);

-- Location: LCCOMB_X66_Y51_N18
\b2v_inst|Mux31~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~13_combout\ = (!\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux31~11_combout\) # ((!\b2v_inst|Add2~0_combout\ & \b2v_inst|Mux31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst|Mux31~12_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Mux31~11_combout\,
	combout => \b2v_inst|Mux31~13_combout\);

-- Location: LCCOMB_X66_Y52_N18
\b2v_inst|Mux31~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~14_combout\ = (\b2v_inst|Add0~2_combout\ & (\b2v_inst|Add0~4_combout\ $ (\b2v_inst|Add0~0_combout\))) # (!\b2v_inst|Add0~2_combout\ & (\b2v_inst|Add0~4_combout\ & \b2v_inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~2_combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux31~14_combout\);

-- Location: LCCOMB_X66_Y52_N4
\b2v_inst|Mux31~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~15_combout\ = (\b2v_inst|Add0~4_combout\ & ((\b2v_inst|Mux31~14_combout\ & ((\b2v_inst|p1[7][22]~combout\))) # (!\b2v_inst|Mux31~14_combout\ & (\b2v_inst|p1[5][20]~combout\)))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|p1[5][20]~combout\ 
-- & ((\b2v_inst|Mux31~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[5][20]~combout\,
	datab => \b2v_inst|p1[7][22]~combout\,
	datac => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|Mux31~14_combout\,
	combout => \b2v_inst|Mux31~15_combout\);

-- Location: LCCOMB_X66_Y51_N20
\b2v_inst|Mux31~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~16_combout\ = (\b2v_inst|Mux31~13_combout\) # ((\b2v_inst|Add2~0_combout\ & (!\b2v_inst|Add0~6_combout\ & \b2v_inst|Mux31~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst|Mux31~13_combout\,
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Mux31~15_combout\,
	combout => \b2v_inst|Mux31~16_combout\);

-- Location: LCCOMB_X65_Y51_N16
\b2v_inst|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux29~0_combout\ = (\b2v_inst1|column\(0) & (!\b2v_inst|Add0~0_combout\ & (\b2v_inst|p1[5][21]~combout\ & \b2v_inst|Add0~6_combout\))) # (!\b2v_inst1|column\(0) & (\b2v_inst|Add0~0_combout\ & ((!\b2v_inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|column\(0),
	datab => \b2v_inst|Add0~0_combout\,
	datac => \b2v_inst|p1[5][21]~combout\,
	datad => \b2v_inst|Add0~6_combout\,
	combout => \b2v_inst|Mux29~0_combout\);

-- Location: LCCOMB_X65_Y51_N26
\b2v_inst|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux29~1_combout\ = (\b2v_inst|Mux29~0_combout\ & (((\b2v_inst|Add0~2_combout\) # (\b2v_inst|p1[25][25]~combout\)))) # (!\b2v_inst|Mux29~0_combout\ & (\b2v_inst|p1[25][28]~combout\ & (!\b2v_inst|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|p1[25][28]~combout\,
	datab => \b2v_inst|Mux29~0_combout\,
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|p1[25][25]~combout\,
	combout => \b2v_inst|Mux29~1_combout\);

-- Location: LCCOMB_X65_Y51_N12
\b2v_inst|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux29~2_combout\ = (\b2v_inst|Mux29~1_combout\ & ((\b2v_inst|p1[5][20]~combout\) # (\b2v_inst|Add0~2_combout\ $ (!\b2v_inst|Add0~6_combout\)))) # (!\b2v_inst|Mux29~1_combout\ & ((\b2v_inst|Add0~2_combout\ & ((!\b2v_inst|Add0~6_combout\))) # 
-- (!\b2v_inst|Add0~2_combout\ & (\b2v_inst|p1[5][20]~combout\ & \b2v_inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux29~1_combout\,
	datab => \b2v_inst|p1[5][20]~combout\,
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|Add0~6_combout\,
	combout => \b2v_inst|Mux29~2_combout\);

-- Location: LCCOMB_X66_Y51_N4
\b2v_inst|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~7_combout\ = (\b2v_inst|p1[7][22]~combout\ & ((\b2v_inst|Add0~2_combout\ & (!\b2v_inst1|column\(0) & \b2v_inst|Add0~0_combout\)) # (!\b2v_inst|Add0~2_combout\ & (\b2v_inst1|column\(0) & !\b2v_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~2_combout\,
	datab => \b2v_inst1|column\(0),
	datac => \b2v_inst|p1[7][22]~combout\,
	datad => \b2v_inst|Add0~0_combout\,
	combout => \b2v_inst|Mux31~7_combout\);

-- Location: LCCOMB_X66_Y51_N22
\b2v_inst|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~8_combout\ = (\b2v_inst|Add2~4_combout\ & (!\b2v_inst|Add0~6_combout\ & (\b2v_inst|Mux31~7_combout\))) # (!\b2v_inst|Add2~4_combout\ & (((\b2v_inst|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~4_combout\,
	datab => \b2v_inst|Add0~6_combout\,
	datac => \b2v_inst|Mux31~7_combout\,
	datad => \b2v_inst|Mux20~1_combout\,
	combout => \b2v_inst|Mux31~8_combout\);

-- Location: LCCOMB_X66_Y51_N24
\b2v_inst|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~9_combout\ = (\b2v_inst|Add0~4_combout\ & (((\b2v_inst|Mux31~8_combout\)))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|Mux29~2_combout\ & (\b2v_inst|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux29~2_combout\,
	datab => \b2v_inst|Add2~4_combout\,
	datac => \b2v_inst|Mux31~8_combout\,
	datad => \b2v_inst|Add0~4_combout\,
	combout => \b2v_inst|Mux31~9_combout\);

-- Location: LCCOMB_X66_Y51_N14
\b2v_inst|Mux31~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~17_combout\ = (\b2v_inst|Add2~0_combout\ & (\b2v_inst|Mux31~16_combout\ & (!\b2v_inst|Add2~4_combout\))) # (!\b2v_inst|Add2~0_combout\ & ((\b2v_inst|Mux31~9_combout\) # ((\b2v_inst|Mux31~16_combout\ & !\b2v_inst|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~0_combout\,
	datab => \b2v_inst|Mux31~16_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|Mux31~9_combout\,
	combout => \b2v_inst|Mux31~17_combout\);

-- Location: LCCOMB_X67_Y52_N18
\b2v_inst|Mux31~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux31~18_combout\ = (\b2v_inst|Mux31~6_combout\ & (((\b2v_inst|Mux31~17_combout\) # (\b2v_inst1|row\(0))))) # (!\b2v_inst|Mux31~6_combout\ & (\b2v_inst|Mux31~1_combout\ & ((!\b2v_inst1|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux31~1_combout\,
	datab => \b2v_inst|Mux31~6_combout\,
	datac => \b2v_inst|Mux31~17_combout\,
	datad => \b2v_inst1|row\(0),
	combout => \b2v_inst|Mux31~18_combout\);

-- Location: LCCOMB_X67_Y52_N14
\b2v_inst|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~19_combout\ = (!\b2v_inst|Add0~8_combout\ & ((\b2v_inst|Add2~6_combout\ & ((\b2v_inst|Mux31~18_combout\))) # (!\b2v_inst|Add2~6_combout\ & (\b2v_inst|Mux31~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~6_combout\,
	datab => \b2v_inst|Mux31~28_combout\,
	datac => \b2v_inst|Add0~8_combout\,
	datad => \b2v_inst|Mux31~18_combout\,
	combout => \b2v_inst|process_0~19_combout\);

-- Location: LCCOMB_X66_Y53_N16
\b2v_inst|process_0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~28_combout\ = (\b2v_inst|process_0~27_combout\ & (\b2v_inst|LessThan0~0_combout\ & (\b2v_inst|process_0~22_combout\ & \b2v_inst|process_0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~27_combout\,
	datab => \b2v_inst|LessThan0~0_combout\,
	datac => \b2v_inst|process_0~22_combout\,
	datad => \b2v_inst|process_0~19_combout\,
	combout => \b2v_inst|process_0~28_combout\);

-- Location: LCCOMB_X66_Y53_N2
\b2v_inst|process_0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~29_combout\ = (!\b2v_inst|process_0~17_combout\ & (!\b2v_inst|Add0~58_combout\ & (!\b2v_inst|Add0~60_combout\ & \b2v_inst|process_0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~17_combout\,
	datab => \b2v_inst|Add0~58_combout\,
	datac => \b2v_inst|Add0~60_combout\,
	datad => \b2v_inst|process_0~28_combout\,
	combout => \b2v_inst|process_0~29_combout\);

-- Location: LCCOMB_X66_Y54_N24
\b2v_inst|blue[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|blue[0]~0_combout\ = (!\b2v_inst|process_0~29_combout\ & (((\b2v_inst|Add3~60_combout\) # (\b2v_inst|Add3~58_combout\)) # (!\b2v_inst|process_0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~18_combout\,
	datab => \b2v_inst|Add3~60_combout\,
	datac => \b2v_inst|Add3~58_combout\,
	datad => \b2v_inst|process_0~29_combout\,
	combout => \b2v_inst|blue[0]~0_combout\);

-- Location: LCCOMB_X66_Y54_N18
\b2v_inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|process_0~5_combout\ = (\b2v_inst1|LessThan6~0_combout\ & (!\b2v_inst1|process_0~3_combout\ & !\b2v_inst1|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|LessThan6~0_combout\,
	datac => \b2v_inst1|process_0~3_combout\,
	datad => \b2v_inst1|Add1~20_combout\,
	combout => \b2v_inst1|process_0~5_combout\);

-- Location: FF_X66_Y54_N19
\b2v_inst1|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|disp_ena~q\);

-- Location: LCCOMB_X66_Y54_N8
\b2v_inst|blue[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|blue[0]~1_combout\ = (!\b2v_inst|red~15_combout\ & (\b2v_inst|blue[0]~0_combout\ & \b2v_inst1|disp_ena~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|red~15_combout\,
	datab => \b2v_inst|blue[0]~0_combout\,
	datad => \b2v_inst1|disp_ena~q\,
	combout => \b2v_inst|blue[0]~1_combout\);

-- Location: LCCOMB_X66_Y54_N20
\b2v_inst|process_0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|process_0~41_combout\ = (!\b2v_inst|Add3~58_combout\ & !\b2v_inst|Add3~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add3~58_combout\,
	datad => \b2v_inst|Add3~60_combout\,
	combout => \b2v_inst|process_0~41_combout\);

-- Location: LCCOMB_X66_Y54_N6
\b2v_inst|green~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|green~3_combout\ = (!\b2v_inst|process_0~29_combout\ & (\b2v_inst|red~15_combout\ & ((!\b2v_inst|process_0~41_combout\) # (!\b2v_inst|process_0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|process_0~18_combout\,
	datab => \b2v_inst|process_0~29_combout\,
	datac => \b2v_inst|red~15_combout\,
	datad => \b2v_inst|process_0~41_combout\,
	combout => \b2v_inst|green~3_combout\);

-- Location: LCCOMB_X63_Y54_N4
\b2v_inst|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan13~0_combout\ = ((\b2v_inst1|row\(1)) # ((\b2v_inst1|row\(2)) # (\b2v_inst1|row\(3)))) # (!\b2v_inst1|row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(0),
	datab => \b2v_inst1|row\(1),
	datac => \b2v_inst1|row\(2),
	datad => \b2v_inst1|row\(3),
	combout => \b2v_inst|LessThan13~0_combout\);

-- Location: LCCOMB_X63_Y54_N6
\b2v_inst|green~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|green~2_combout\ = (\b2v_inst1|row\(8)) # ((\b2v_inst|LessThan13~0_combout\ & (\b2v_inst1|row\(4) & \b2v_inst|green~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|row\(8),
	datab => \b2v_inst|LessThan13~0_combout\,
	datac => \b2v_inst1|row\(4),
	datad => \b2v_inst|green~0_combout\,
	combout => \b2v_inst|green~2_combout\);

-- Location: LCCOMB_X66_Y54_N10
\b2v_inst|green[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|green[0]~4_combout\ = (\b2v_inst1|disp_ena~q\ & (((\b2v_inst1|row\(31) & \b2v_inst|green~2_combout\)) # (!\b2v_inst|green~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|green~3_combout\,
	datab => \b2v_inst1|row\(31),
	datac => \b2v_inst|green~2_combout\,
	datad => \b2v_inst1|disp_ena~q\,
	combout => \b2v_inst|green[0]~4_combout\);

-- Location: LCCOMB_X66_Y54_N22
\b2v_inst|red[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|red[0]~16_combout\ = (!\b2v_inst|green~3_combout\ & \b2v_inst1|disp_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|green~3_combout\,
	datad => \b2v_inst1|disp_ena~q\,
	combout => \b2v_inst|red[0]~16_combout\);
END structure;


