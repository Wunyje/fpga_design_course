`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Huazhong Univercity of Science and Technology
// Engineer: Wunyje
// 
// Create Date: 2023/03/15 21:26:45
// Design Name: median_filter
// Module Name: median_filter
// Project Name: xi_median_filter
// Target Devices: xa7a12tcpg238-2I
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
//   delay: 13 cycle(window width + mid position)
//	
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module median_filter(
	input			clk		,
    input [7:0] 	dat_i	,
    input       	val_i	,
    output [7:0] 	dat_o	,
    output      	val_o
    );

	localparam 						WIDTH = 9;
	localparam 						WORD_LEN = 8;
	localparam 						MID_IND = (WIDTH-1)/2;

	reg [WORD_LEN-1 : 0] 			dat_i_r [0:WIDTH-1];
	reg [WORD_LEN*WIDTH-1 : 0] 		dat_i_pip [0:WIDTH-1];
	reg [MID_IND+WIDTH:0] 			valid_r = 0;
	
	integer 	width_i = 0;
	assign 		val_o = valid_r[MID_IND+WIDTH];
	assign		dat_o = dat_i_pip[WIDTH-1][MID_IND*WORD_LEN +: WORD_LEN];	
	
	// valid信号控制
	always@(posedge clk) begin:valid_pass
		for(width_i = 0; width_i < MID_IND+WIDTH+1; width_i = width_i + 1) begin
			if(width_i == 0)
				valid_r[width_i] <= val_i;
			else
				valid_r[width_i] <= valid_r[width_i - 1];
		end
	end
	
	// 接收寄存器，接收输入的dat_i
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
	
	// ---------冒泡排序流水线设计-----------
	// -  最大值最终在流水线最低层
	// -  最小值最终在流水线最高层
	// --------------------------------------
	// 第0级流水，从dat_i_r中接收，进行相应置换
	integer width_prime_i = 0;
	always@(posedge clk) begin:prime_pip
		for(width_prime_i = 0; width_prime_i < WIDTH; width_prime_i = width_prime_i + 2) begin
			if(width_prime_i == 0) 
				dat_i_pip[0][width_prime_i*WORD_LEN +: WORD_LEN] <= dat_i_r[width_prime_i];
			else begin
				dat_i_pip[0][width_prime_i*WORD_LEN +: WORD_LEN] <= (dat_i_r[width_prime_i]<dat_i_r[width_prime_i-1])?dat_i_r[width_prime_i]:dat_i_r[width_prime_i-1];
				dat_i_pip[0][(width_prime_i-1)*WORD_LEN +: WORD_LEN] <= (dat_i_r[width_prime_i]<dat_i_r[width_prime_i-1])?dat_i_r[width_prime_i-1]:dat_i_r[width_prime_i];
			end	
		end
	end
	
	// 奇数级流水，最高层值直接传递
	integer width_odd_i = 0;
	genvar 	stage_odd_i;
	generate
		for(stage_odd_i = 1;stage_odd_i < WIDTH; stage_odd_i = stage_odd_i+2) begin:pip_stages_odd
			always@(posedge clk) begin:odd_pip
				for(width_odd_i = 0; width_odd_i < WIDTH; width_odd_i = width_odd_i + 2) begin
					if(width_odd_i == WIDTH-1) // 传递最高层数值
						dat_i_pip[stage_odd_i][width_odd_i*WORD_LEN +: WORD_LEN] <= dat_i_pip[(stage_odd_i-1)][width_odd_i*WORD_LEN +: WORD_LEN];
					else begin // 比较交换传递给下一级
						dat_i_pip[stage_odd_i][width_odd_i*WORD_LEN +: WORD_LEN] <= (dat_i_pip[(stage_odd_i-1)][width_odd_i*WORD_LEN +: WORD_LEN]>dat_i_pip[(stage_odd_i-1)][(width_odd_i+1)*WORD_LEN +: WORD_LEN])?dat_i_pip[(stage_odd_i-1)][width_odd_i*WORD_LEN +: WORD_LEN]:dat_i_pip[(stage_odd_i-1)][(width_odd_i+1)*WORD_LEN +: WORD_LEN];
					
						dat_i_pip[stage_odd_i][(width_odd_i+1)*WORD_LEN +: WORD_LEN] <= (dat_i_pip[(stage_odd_i-1)][width_odd_i*WORD_LEN +: WORD_LEN]>dat_i_pip[(stage_odd_i-1)][(width_odd_i+1)*WORD_LEN +: WORD_LEN])?dat_i_pip[(stage_odd_i-1)][(width_odd_i+1)*WORD_LEN +: WORD_LEN]:dat_i_pip[(stage_odd_i-1)][width_odd_i*WORD_LEN +: WORD_LEN];
					end	
				end
			end
		end
	endgenerate
	
	// 偶数级流水，最低层值直接传递
	integer 	width_even_i = 0;
	genvar 		stage_even_i;
	generate
		for(stage_even_i = 2;stage_even_i < WIDTH; stage_even_i = stage_even_i+2) begin:pip_stages_even
			always@(posedge clk) begin:even_pip
				for(width_even_i = 0; width_even_i < WIDTH; width_even_i = width_even_i + 2) begin
					if(width_even_i == 0) 	// 传递最低层数值
						dat_i_pip[(stage_even_i)][width_even_i*WORD_LEN +: WORD_LEN] <= dat_i_pip[(stage_even_i-1)][width_even_i*WORD_LEN +: WORD_LEN];
					else begin	// 比较交换传递给下一级
						dat_i_pip[(stage_even_i)][width_even_i*WORD_LEN +: WORD_LEN] <= (dat_i_pip[(stage_even_i-1)][width_even_i*WORD_LEN +: WORD_LEN]<dat_i_pip[(stage_even_i-1)][(width_even_i-1)*WORD_LEN +: WORD_LEN])?dat_i_pip[(stage_even_i-1)][width_even_i*WORD_LEN +: WORD_LEN]:dat_i_pip[(stage_even_i-1)][(width_even_i-1)*WORD_LEN +: WORD_LEN];
					
						dat_i_pip[(stage_even_i)][(width_even_i-1)*WORD_LEN +: WORD_LEN] <= (dat_i_pip[(stage_even_i-1)][width_even_i*WORD_LEN +: WORD_LEN]<dat_i_pip[(stage_even_i-1)][(width_even_i-1)*WORD_LEN +: WORD_LEN])?dat_i_pip[(stage_even_i-1)][(width_even_i-1)*WORD_LEN +: WORD_LEN]:dat_i_pip[(stage_even_i-1)][width_even_i*WORD_LEN +: WORD_LEN];
					end	
				end
			end
		end
	endgenerate
	
endmodule
