module mul8_loop(
	output reg [7:0] 	p_o = 0	,
	output			  	busy	, 
	input			  	clk		,
	input			  	start	,
	input 		[7:0] 	a_i		,
	input 		[7:0] 	b_i
);

	reg [7:0] a_shift = 0;
	reg [7:0] b_shift = 0;
	reg	[3:0] shift_count = 0;
	assign busy = ((~shift_count[3]))&(~start);

	// 循环次数计数
	always@(posedge clk)
		if(start)
			shift_count <= 0;
		else if(busy)
			shift_count <= shift_count + 4'b1;

	// a_i存入移位寄存器，后续右移
	always@(posedge clk)
		if(start)
			a_shift <= a_i >> 1;
		else
			a_shift <= a_shift >> 1;

	// b_i存入移位寄存器，后续左移
	always@(posedge clk)
		if(start)
			b_shift <= b_i;
		else
			b_shift <= b_shift << 1;
		
	// 循环累加
	always@(posedge clk)
		if(start)
			p_o <= 0;
		else if(b_shift[7] & busy)
			p_o <=  p_o + a_shift;
endmodule