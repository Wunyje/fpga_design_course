`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/15 21:26:45
// Design Name: 
// Module Name: median_filter
// Project Name: xi_median_filter
// Target Devices: 
// Tool Versions: Vivado 2019.1
// Description: 
//--               _   _   _   _   _   _   _   _   _   _   _   _  
//-- clk          | |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_
//--              ____ ___ ___ ___ _______________ ___ ___ ___ ___
//-- dat_i[7:0]   ____X___X___X___X_______________X___X___X___X___
//--                   ___________                 _______________
//-- val_i        ____|           |_______________|               
//--              ________________ ___ ___ ___ _______________ ___
//-- dat_o[7:0]   ________________X___X___X___X_______________X___
//--                               ___________                 ___
//-- val_o        ________________|           |_______________|   
//
//   delay: 8 cycle
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module median_filter(
	input			clk,
    input [7:0] 	dat_i,
    input       	val_i,
    output [7:0] 	dat_o,
    output      	val_o
    );

	localparam WIDTH = 9;
	reg [7 : 0] dat_i_r [0:WIDTH-1];
	always@(posedge ) begin:fit_in_width
		integer width_i = 0;
		for(width_i = 0; width_i < WIDTH; width_i = width_i + 1) begin
			if(width_i == 0)
				if(val_i) 
					dat_i_r[width_i] <= dat_i;
				else
					dat_i_r[width_i] <= 8'b0;
			else
				dat_i_r[width_i] <= dat_i_r[width_i - 1];
		end
	end
	
	reg [7:0] dat_i_pip [0:WIDTH*WIDTH-1];
	always@(posedge ) begin:buble_pip
		integer stage_0_i = 0;
		for(stage_0_i = 0; stage_0_i < WIDTH; stage_0_i = stage_0_i + 1) begin
			dat_i_pip[stage_0_i] <= dat_i_r[stage_0_i];
		end
	end
	
	always@(posedge ) begin:buble_pip
		integer stage_i = 0;
		for(stage_i = 0; stage_i < WIDTH; stage_i = stage_i + 1) begin
			if(stage_i == 0) begin
				dat_i_pip[stage_i] <= dat_i_r[stage_i];
				if(dat_i_r[stage_i] < dat_i_r[stage_i + 1]) begin
					dat_i_pip[stage_i + WIDTH + 1] <= dat_i_r[stage_i];
					dat_i_pip[stage_i + WIDTH] <= dat_i_r[stage_i + 1];
				end
				
			end
			

		end
	end
endmodule
