// Copyright (C) 2016  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
// CREATED		"Tue Nov 27 11:29:13 2018"

module vga_with_hw_test_image(
	clk,
	rst,
	pixel_clk,
	h_sync,
	v_sync,
	n_blank,
	n_sync,
	blue,
	green,
	red,
	ctrl,
);


input wire clk;
input wire rst;
input wire [3:0] ctrl;
output wire	pixel_clk;
output wire	h_sync;
output wire	v_sync;
output wire	n_blank;
output wire	n_sync;
output wire	[7:0] blue;
output wire	[7:0] green;
output wire	[7:0] red;

wire	SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;

assign	pixel_clk = SYNTHESIZED_WIRE_3;
assign	SYNTHESIZED_WIRE_4 = 1;
assign	SYNTHESIZED_WIRE_5 = 0;

wire [2:0] anim2;
wire [2:0] anim;


hw_image_generator	b2v_inst(
	.disp_ena(SYNTHESIZED_WIRE_0),
	.column(SYNTHESIZED_WIRE_1),
	.row(SYNTHESIZED_WIRE_2),
	.anim(anim),
	.anim2(anim2),
	.blue(blue),
	.green(green),
	.red(red));
	defparam	b2v_inst.pixels_x = 640;
	defparam	b2v_inst.pixels_y = 480;


vga_controller	b2v_inst1(
	.pixel_clk(SYNTHESIZED_WIRE_3),
	.reset_n(SYNTHESIZED_WIRE_4),
	.h_sync(h_sync),
	.v_sync(v_sync),
	.disp_ena(SYNTHESIZED_WIRE_0),
	.n_blank(n_blank),
	.n_sync(n_sync),
	.column(SYNTHESIZED_WIRE_2),
	.row(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst1.h_bp = 48;
	defparam	b2v_inst1.h_fp = 16;
	defparam	b2v_inst1.h_pixels = 640;
	defparam	b2v_inst1.h_pol = "'0'";
	defparam	b2v_inst1.h_pulse = 96;
	defparam	b2v_inst1.v_bp = 33;
	defparam	b2v_inst1.v_fp = 10;
	defparam	b2v_inst1.v_pixels = 480;
	defparam	b2v_inst1.v_pol = "'1'";
	defparam	b2v_inst1.v_pulse = 2;


altpll0	b2v_inst2(
	.inclk0(clk),
	.areset(SYNTHESIZED_WIRE_5),
	.c0(SYNTHESIZED_WIRE_3));
	
Player p1(
	.anim(anim),
	.collision(anim2),
	.clk(clk),
	.rst(rst),
	.usb(ctrl[3:2]));

Player p2(
	.anim(anim2),
	.collision(anim),
	.clk(clk),
	.rst(rst),
	.usb(ctrl[1:0]));
endmodule

module Player (output reg [2:0] anim, input wire [2:0] collision, input clk, input rst, input [1:0] usb);
//for usb, 3 is left, 2 is right, 1 is down, 0 is button
//because the player doesn't move, we use the animation of the other player to determine collisions
reg [11:0] timer;
reg [2:0] S;
reg [2:0] NS;

/*DEFINE STATES*/
parameter STAND = 3'd0,
		CROUCH = 3'd1,
		STANDTHRUST = 3'd2,
		CROUCHTHRUST = 3'd3,
		LOSE = 3'd4;

always@(posedge clk or negedge rst)
begin
	if(rst == 1'b0)
	begin
		S <= STAND;
	end
	else
	begin
		S <= NS;
	end
end

always@(*)
begin
	case(S)
		STAND:
		begin	
			if(collision == 3'd3)
			begin
				NS<= LOSE;
			end
			else if(usb[1] == 1'b0)
			begin
				NS <= CROUCH;
			end
			else if(usb[0] == 1'b0)
			begin
				NS <= STANDTHRUST;
			end
			else
			begin
				NS <= STAND;
			end
		end
		CROUCH:
		begin	
			if(collision == 3'd2)
			begin
				NS<= LOSE;
			end
			else if(usb[1] == 1'b1)
			begin
				NS <= STAND;
			end
			else if(usb[0] == 1'b0)
			begin
				NS <= CROUCHTHRUST;
			end
			else
			begin
				NS <= CROUCH;
			end
		end
		STANDTHRUST:
		begin
//			if(collision == 1'b0)
//			begin
//				NS<= LOSE;
//			end
			/*else */ if(usb[0] == 1'b0)
			begin
				NS <= STANDTHRUST;
			end
			else
			begin
				NS <= STAND;
			end
		end
		CROUCHTHRUST:
		begin
//			if(collision == 1'b0)
//			begin
//				NS<= LOSE;
//			end
			/*else */ if(usb[0] == 1'b0)
			begin
				NS <= CROUCHTHRUST;
			end
			else
			begin
				NS <= STAND;
			end
		end
		LOSE:
		begin
			NS <= LOSE;
		end
	endcase
end

always@(posedge clk or negedge rst)
begin
	case(S)
		STAND:
		begin
			anim <= 3'd0;
		end
		STANDTHRUST:
		begin
			anim <= 3'd2;
		end
		CROUCH:
		begin
			anim <= 3'd1;
		end
		CROUCHTHRUST:
		begin
			anim <= 3'd3;
		end
		LOSE:
		begin
			anim <= 3'd4;
		end
	endcase
end

endmodule