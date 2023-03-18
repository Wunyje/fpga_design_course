`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/18 13:08:22
// Design Name: 
// Module Name: median_filter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module median_filter_tb();
	localparam 						WIDTH = 9;
	localparam 						MID_IND = (WIDTH-1)/2;
	localparam 						WORD_LEN = 8;
	reg 					clk = 1;
	reg		[WORD_LEN-1:0]	dat_i = 0;
	reg						valid_i	= 0;
	wire					valid_o;
	wire	[WORD_LEN-1:0]	dat_o ;

	localparam period = 10; 
	initial begin
	   forever begin
		 #(period/2) clk = ~clk;
	   end
	end
	
	initial // initial block executes only once
        begin
			#(period*100);
			
			valid_i = 1;
            dat_i = 8'h5; #(period)
			dat_i = 8'h3; #(period)
			dat_i = 8'h4; #(period)
			dat_i = 8'h2; #(period)
			dat_i = 8'h1; #(period)
			dat_i = 8'h5; #(period)
			dat_i = 8'h3; #(period)
			dat_i = 8'h4; #(period)
			dat_i = 8'h2; #(period)
			dat_i = 8'h1; #(period)
			dat_i = 8'h0;
			valid_i = 0;
			
            // #(period*10); // 等待一个信号周期
			// valid_i = 1;
            // dat_i = 8'h5; #(period)
			// dat_i = 8'h3; #(period)
			// dat_i = 8'h4; #(period)
			// dat_i = 8'h2; #(period)
			// dat_i = 8'h1; #(period)
			// dat_i = 8'h0;
			// valid_i = 0;
    end
			
	median_filter median_filter_inst
	(
	  .clk		(clk),  		// input wire clk
	  .dat_i	(dat_i),		// input wire rst_n
	  .val_i	(valid_i),      	
	  .dat_o	(dat_o),      
	  .val_o	(valid_o)
	);

endmodule
