--------------------------------------------------------------------------------
--
--   FileName:         hw_image_generator.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 12.1 Build 177 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 05/10/2013 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY hw_image_generator IS
	GENERIC(
		pixels_y :	INTEGER := 478;    --row that first color will persist until
		pixels_x	:	INTEGER := 600);    --column that first color will persist until		
	PORT(
		disp_ena		:	IN		STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		row			:	IN		INTEGER;		--row pixel coordinate
		column		:	IN		INTEGER;		--column pixel coordinate
		anim			:	IN		INTEGER;		--the animation to use
		anim2			:	IN		INTEGER;		--the animation to use
		red			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS

	type IMG IS array (30 DOWNTO 0) OF STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal stand	:	IMG := (others => (others => '0'));
	signal standthrust : IMG := (others => (others => '0'));
	signal crouch	:	IMG := (others => (others => '0'));
	signal crouchthrust : IMG := (others => (others => '0'));
	signal lose : IMG := (others => (others => '0'));
	signal p1		:	IMG := (others => (others => '0'));
	signal p2		:	IMG := (others => (others => '0'));
	signal y			:	INTEGER := 210;
	signal x			:	INTEGER := 270;
	signal x2		:	INTEGER := 310;

BEGIN
	PROCESS(disp_ena, row, column)
	
	BEGIN
	
	--fill arrays for sprites
	stand (0) <= "00000000000111000000000000000000";
	stand (1) <= "00000000001111100000000000000000";
	stand (2) <= "00000000011111110000000000000000";
	stand (3) <= "00000000111111111000000000000000";
	stand (4) <= "00000000111111111000000000000000";
	stand (5) <= "00000000111111111000000000000000";
	stand (6) <= "00000000011111110000000000000000";
	stand (7) <= "00000000001111100000000000000000";
	stand (8) <= "00000000000111000000000000000000";
	stand (9) <= "00000000011111110000000000000000";
	stand (10) <= "00000000111111111000000000000000";
	stand (11) <= "00000001111111111110000000000000";
	stand (12) <= "00000011111111111111000000000000";
	stand (13) <= "00000111011111111111100000000000";
	stand (14) <= "00001110011111111001110000000000";
	stand (15) <= "00001110011111111000111111100000";
	stand (16) <= "00000011111111111000001111100000";
	stand (17) <= "00000001111111111000000111100000";
	stand (18) <= "00000000011111111000000000000000";
	stand (19) <= "00000000111111111100000000000000";
	stand (20) <= "00000000111111111100000000000000";
	stand (21) <= "00000000111111111100000000000000";
	stand (22) <= "00000000111100111100000000000000";
	stand (23) <= "00000001111000011110000000000000";
	stand (24) <= "00000011110000001111000000000000";
	stand (25) <= "00000011110000001111000000000000";
	stand (26) <= "00000011110000001111000000000000";
	stand (27) <= "00000011110000001111000000000000";
	stand (28) <= "00000111110000001111100000000000";
	stand (29) <= "00001111100000000111110000000000";
	stand (30) <= "00011111000000000011111000000000";
	
	crouch (0) <= "00000000000000000000000000000000";
	crouch (1) <= "00000000000000000000000000000000";
	crouch (2) <= "00000000000000000000000000000000";
	crouch (3) <= "00000000000000000000000000000000";
	crouch (4) <= "00000000000000000000000000000000";
	crouch (5) <= "00000000000111000000000000000000";
	crouch (6) <= "00000000001111100000000000000000";
	crouch (7) <= "00000000011111110000000000000000";
	crouch (8) <= "00000000111111111000000000000000";
	crouch (9) <= "00000000111111111000000000000000";
	crouch (10) <= "00000000111111111000000000000000";
	crouch (11) <= "00000000011111110000000000000000";
	crouch (12) <= "00000000001111100000000000000000";
	crouch (13) <= "00000000000111000000000000000000";
	crouch (14) <= "00000000011111110000000000000000";
	crouch (15) <= "00000000111111111000000000000000";
	crouch (16) <= "00000001111111111110000000000000";
	crouch (17) <= "00000011111111111111000000000000";
	crouch (18) <= "00000111011111111111100000000000";
	crouch (19) <= "00001110011111111001110000000000";
	crouch (20) <= "00001110011111111000111111100000";
	crouch (21) <= "00000111111111111100011111100000";
	crouch (22) <= "00000011111111111100001111100000";
	crouch (23) <= "00000001111111111100000000000000";
	crouch (24) <= "00000000111111111100000000000000";
	crouch (25) <= "00000000111100111100000000000000";
	crouch (26) <= "00000001111000011110000000000000";
	crouch (27) <= "00000011110000001111000000000000";
	crouch (28) <= "00000011110000001111000000000000";
	crouch (29) <= "00000111110000001111100000000000";
	crouch (30) <= "00001111100000000111110000000000";
	
	standthrust(0) <= "00000000000111000000000000000000";
	standthrust(1) <= "00000000001111100000000000000000";
	standthrust(2) <= "00000000011111110000000000000000";
	standthrust(3) <= "00000000111111111000000000000000";
	standthrust(4) <= "00000000111111111000000000000000";
	standthrust(5) <= "00000000111111111000000000000000";
	standthrust(6) <= "00000000011111110000000000000000";
	standthrust(7) <= "00000000001111100000000000000000";
	standthrust(8) <= "00000000000111000000000000000000";
	standthrust(9) <= "00000000011111110000000000000000";
	standthrust(10) <= "00000000111111111000000000000000";
	standthrust(11) <= "00000001111111111110000000000000";
	standthrust(12) <= "00000011111111111111000000000000";
	standthrust(13) <= "00000111011111111111100000000000";
	standthrust(14) <= "00001110011111111001110000000000";
	standthrust(15) <= "00001110011111111000111111111110";
	standthrust(16) <= "00000011111111111000001111111110";
	standthrust(17) <= "00000001111111111000000111111110";
	standthrust(18) <= "00000000011111111000000000000000";
	standthrust(19) <= "00000000111111111100000000000000";
	standthrust(20) <= "00000000111111111100000000000000";
	standthrust(21) <= "00000000111111111100000000000000";
	standthrust(22) <= "00000000111100111100000000000000";
	standthrust(23) <= "00000001111000011110000000000000";
	standthrust(24) <= "00000011110000001111000000000000";
	standthrust(25) <= "00000011110000001111000000000000";
	standthrust(26) <= "00000011110000001111000000000000";
	standthrust(27) <= "00000011110000001111000000000000";
	standthrust(28) <= "00000111110000001111100000000000";
	standthrust(29) <= "00001111100000000111110000000000";
	standthrust(30) <= "00011111000000000011111000000000";
	
	crouchthrust (0) <= "00000000000000000000000000000000";
	crouchthrust (1) <= "00000000000000000000000000000000";
	crouchthrust (2) <= "00000000000000000000000000000000";
	crouchthrust (3) <= "00000000000000000000000000000000";
	crouchthrust (4) <= "00000000000000000000000000000000";
	crouchthrust (5) <= "00000000000111000000000000000000";
	crouchthrust (6) <= "00000000001111100000000000000000";
	crouchthrust (7) <= "00000000011111110000000000000000";
	crouchthrust (8) <= "00000000111111111000000000000000";
	crouchthrust (9) <= "00000000111111111000000000000000";
	crouchthrust (10) <= "00000000111111111000000000000000";
	crouchthrust (11) <= "00000000011111110000000000000000";
	crouchthrust (12) <= "00000000001111100000000000000000";
	crouchthrust (13) <= "00000000000111000000000000000000";
	crouchthrust (14) <= "00000000011111110000000000000000";
	crouchthrust (15) <= "00000000111111111000000000000000";
	crouchthrust (16) <= "00000001111111111110000000000000";
	crouchthrust (17) <= "00000011111111111111000000000000";
	crouchthrust (18) <= "00000111011111111111100000000000";
	crouchthrust (19) <= "00001110011111111001110000000000";
	crouchthrust (20) <= "00001110011111111000111111111110";
	crouchthrust (21) <= "00000111111111111100011111111110";
	crouchthrust (22) <= "00000011111111111100001111111110";
	crouchthrust (23) <= "00000001111111111100000000000000";
	crouchthrust (24) <= "00000000111111111100000000000000";
	crouchthrust (25) <= "00000000111100111100000000000000";
	crouchthrust (26) <= "00000001111000011110000000000000";
	crouchthrust (27) <= "00000011110000001111000000000000";
	crouchthrust (28) <= "00000011110000001111000000000000";
	crouchthrust (29) <= "00000111110000001111100000000000";
	crouchthrust (30) <= "00001111100000000111110000000000";	
	
	lose (0) <= "00000000000000000000000000000000";
	lose (1) <= "00000000000000000000000000000000";
	lose (2) <= "00000000000000000000000000000000";
	lose (3) <= "00000000000000000000000000000000";
	lose (4) <= "00000000000000000000000000000000";
	lose (5) <= "00000000000000000000000000000000";
	lose (6) <= "00000000000000000000000000000000";
	lose (7) <= "00000000000000000000000000000000";
	lose (8) <= "00000000000000000000000000000000";
	lose (9) <= "00000000000000000000000000000000";
	lose (10) <= "00000000000000000000000000000000";
	lose (11) <= "00000000000000000000000000000000";
	lose (12) <= "00000000000000000000000000000000";
	lose (13) <= "00000000000000000000000000000000";
	lose (14) <= "00000000000000000000000000000000";
	lose (15) <= "00000000000000000000000000000000";
	lose (16) <= "00000000000000000000000000000000";
	lose (17) <= "00000000000000000000000000000000";
	lose (18) <= "00000000000000000000000000000000";
	lose (19) <= "00000000000000000000000000000000";
	lose (20) <= "00000000000000000000000000000000";
	lose (21) <= "00000000000000000000000000000000";
	lose (22) <= "00000000000000000000000000000000";
	lose (23) <= "00000000000000000000000000000000";
	lose (24) <= "00011100000000000000000000000000";
	lose (25) <= "00111110000000000000000000000000";
	lose (26) <= "01111111000000000000000000000000";
	lose (27) <= "11111111100000000000000000000000";
	lose (28) <= "11111111100000000000000000000000";
	lose (29) <= "01111111000000000000000000000000";
	lose (30) <= "00111111111111111111111111111000";

	--this ensure the fgpa gets the correct sprite for the state once, and only once
		IF(column = 0 AND row = 0) THEN
			C1: case anim is
				when 1 => p1 <= crouch;
				when 2 => p1 <= standthrust;
				when 3 => p1 <= crouchthrust;
				when 4 => p1 <= lose;
				when others => p1 <= stand;
			end case C1;
			C2: case anim2 is
				when 1 => p2 <= crouch;
				when 2 => p2 <= standthrust;
				when 3 => p2 <= crouchthrust;
				when 4 => p2 <= lose;
				when others => p2 <= stand;
			end case C2;
		END IF;
		
		--now for the actual drawing	
		IF(disp_ena = '1') THEN		--display time
			--for drawing left-hand player
			IF((((row - x) < 30) AND ((row - x) > -1)) AND (((column - y) < 32) AND ((column - y) > -1)) AND (p1 (column - y)(30 - (row - x)) = '1')) THEN
				red <= (OTHERS => p1 (column - y)(30 - (row - x)));
				green <= (OTHERS => p1 (column - y)(30 - (row - x)));
				blue <= (OTHERS => '0');
			--now draw the right-hand player
			ELSIF(((((row - x2) < 30) AND ((row - x2) > -1)) AND (((column - y) < 32) AND ((column - y) > -1))) AND (p2 (column - y)(row - x2) = '1')) THEN
				red <= (OTHERS => p2 (column - y)(row - x2));
				green <= (OTHERS => p2 (column - y)(row - x2));
				blue <= (OTHERS => '0');
			--draw rapier for p1
			--stand
				ELSIF(((column < (y + 17) AND column > (y + 14)) AND (row > (x + 24) AND row < (x + 45))) AND anim = 0) THEN
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				--crouch
				ELSIF(((column < (y + 22) AND column > (y + 19)) AND (row > (x + 24) AND row < (x + 45))) AND anim = 1) THEN
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				--standthrust
				ELSIF(((column < (y + 17) AND column > (y + 14)) AND (row > (x + 28) AND row < (x + 52))) AND anim = 2) THEN
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				--crouchthrust
				ELSIF(((column < (y + 22) AND column > (y + 19)) AND (row > (x + 28) AND row < (x + 52))) AND anim = 3) THEN
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
			--draw rapier for p2
			--stand
				ELSIF(((column < (y + 17) AND column > (y + 14)) AND (row > (x2 - 10) AND row < (x2 + 6))) AND anim2 = 0) THEN
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				--crouch
				ELSIF(((column < (y + 22) AND column > (y + 19)) AND (row > (x2 - 10) AND row < (x2 + 6))) AND anim2 = 1) THEN
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				--standthrust
				ELSIF(((column < (y + 17) AND column > (y + 14)) AND (row > (x2 - 17) AND row < (x2 + 4))) AND anim2 = 2) THEN
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				--crouchthrust
				ELSIF(((column < (y + 22) AND column > (y + 19)) AND (row > (x2 - 17) AND row < (x2 + 4))) AND anim2 = 3) THEN
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
			--draw ground
			ELSIF(column > 240) THEN
				red <= (OTHERS => '0');
				green <= (OTHERS => '1');
				blue <= (OTHERS => '0');
			ELSE
				red <= (OTHERS => '0');
				green <= (OTHERS => '0');
				blue <= (OTHERS => '0');
			END IF;
			
		ELSE								--blanking time
			red <= (OTHERS => '0');
			green <= (OTHERS => '0');
			blue <= (OTHERS => '0');
		END IF;
		
		
	
	END PROCESS;
END behavior;