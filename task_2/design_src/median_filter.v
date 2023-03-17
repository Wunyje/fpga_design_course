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
	localparam MID_IND = (WIDTH-1)/2;
	reg [7 : 0] 		dat_i_r [0:WIDTH-1];
	reg [7 : 0] 		dat_i_pip [0:WIDTH*WIDTH-1];
	reg [WIDTH-1:0] 	valid_r = 0;
	
	integer 	width_i = 0;
	assign 	val_o = valid_r[WIDTH-1];
	assign		dat_o = dat_i_pip[76];//dat_i_pip[MID_IND + (WIDTH-1)*WIDTH];	
	
	always@(posedge clk) begin:valid_pass
		for(width_i = 0; width_i < WIDTH; width_i = width_i + 1) begin
			if(width_i == 0)
				valid_r[width_i] <= val_i;
			else
				valid_r[width_i] <= valid_r[width_i - 1];
		end
	end
		
	always@(posedge clk) begin:fit_in_width
		for(width_i = 0; width_i < WIDTH; width_i = width_i + 1) begin
			if(width_i == 0) begin
				if(val_i) 
					dat_i_r[width_i] <= dat_i;
				else
					dat_i_r[width_i] <= 0;
			end
			else
				dat_i_r[width_i] <= dat_i_r[width_i - 1];
		end
	end

	integer width_prime_i = 0;
	always@(posedge clk) begin:prime_pip
		for(width_prime_i = 0; width_prime_i < WIDTH; width_prime_i = width_prime_i + 2) begin
			if(width_prime_i == 0) 
				dat_i_pip[width_prime_i] <= dat_i_r[width_prime_i];
			else begin
				dat_i_pip[width_prime_i] <= (dat_i_r[width_prime_i]>dat_i_r[width_prime_i-1])?dat_i_r[width_prime_i]:dat_i_r[width_prime_i-1];
				dat_i_pip[width_prime_i-1] <= (dat_i_r[width_prime_i]>dat_i_r[width_prime_i-1])?dat_i_r[width_prime_i-1]:dat_i_r[width_prime_i];
			end	
		end
	end

	integer width_odd_i = 0;
	genvar stage_odd_i;
	generate
		for(stage_odd_i = 1;stage_odd_i < WIDTH; stage_odd_i = stage_odd_i+2) begin:pip_stages_odd
			always@(posedge clk) begin:odd_pip
				for(width_odd_i = 0; width_odd_i < WIDTH; width_odd_i = width_odd_i + 2) begin
					if(width_odd_i == WIDTH-1) 
						dat_i_pip[width_odd_i*(stage_odd_i)] <= dat_i_pip[width_odd_i*(stage_odd_i-1)];
					else begin
						dat_i_pip[width_odd_i*(stage_odd_i)] <= (dat_i_pip[width_odd_i*(stage_odd_i-1)]<dat_i_pip[width_odd_i*(stage_odd_i-1)+1])?dat_i_pip[width_odd_i*(stage_odd_i-1)]:dat_i_pip[width_odd_i*(stage_odd_i-1)+1];
						dat_i_pip[width_odd_i*(stage_odd_i)+1] <= (dat_i_pip[width_odd_i*(stage_odd_i-1)]<dat_i_pip[width_odd_i*(stage_odd_i-1)+1])?dat_i_pip[width_odd_i*(stage_odd_i-1)+1]:dat_i_pip[width_odd_i*(stage_odd_i-1)];
					end	
				end
			end
		end
	endgenerate
	
	integer 	width_even_i = 0;
	genvar stage_even_i;
	generate
		for(stage_even_i = 2;stage_even_i < WIDTH; stage_even_i = stage_even_i+2) begin:pip_stages_even
			always@(posedge clk) begin:even_pip
				for(width_even_i = 0; width_even_i < WIDTH; width_even_i = width_even_i + 2) begin
					if(width_even_i == 0) 
						dat_i_pip[width_even_i*(stage_even_i)] <= dat_i_pip[width_even_i*(stage_even_i-1)];
					else begin
						dat_i_pip[width_even_i*(stage_even_i)] <= (dat_i_pip[width_even_i*(stage_even_i-1)]>dat_i_pip[width_even_i*(stage_even_i-1)-1])?dat_i_pip[width_even_i*(stage_even_i-1)]:dat_i_pip[width_even_i*(stage_even_i-1)-1];
						dat_i_pip[width_even_i*(stage_even_i)-1] <= (dat_i_pip[width_even_i*(stage_even_i-1)]>dat_i_pip[width_even_i*(stage_even_i-1)-1])?dat_i_pip[width_even_i*(stage_even_i-1)-1]:dat_i_pip[width_even_i*(stage_even_i-1)];
					end	
				end
			end
		end
	endgenerate
	
endmodule
