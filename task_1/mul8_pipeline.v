module mul8_pipeline(
	output reg 	[7:0] p_o = 0,
	output			  valid_o,
	input			  clk,
	input			  valid_i,
	input 		[7:0] a_i,
	input 		[7:0] b_i
);

reg [7:0] a_shift = 0;
reg [7:0] b_shift = 0;
reg [7:0] mid_res_0 = 0;
reg [7:0] mid_res_1 = 0;
reg [7:0] mid_res_2 = 0;
reg [7:0] mid_res_3 = 0;
reg [7:0] mid_res_4 = 0;
reg [7:0] mid_res_5 = 0;

always@(posedge clk)
	if(valid_i)
		a_shift <= a_i;
	else
		a_shift <= a_shift << 1;

always@(posedge clk)
	if(valid_i)
		b_shift <= b_i;
	else
		b_shift <= b_shift << 1;

always@(posedge clk)
	if(valid_i)
		mid_res_0 = 0;
		mid_res_1 = 0;
		mid_res_2 = 0;
		mid_res_3 = 0;
		mid_res_4 = 0;
		mid_res_5 = 0;
		p_o <= 0;
	else if(b_shift[7] & busy)
		p_o <=  p_o + a_shift;
endmodule