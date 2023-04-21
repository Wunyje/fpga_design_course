module mul8_pipeline(
	output reg [7:0] p_o = 0	, // 乘积结果
	output			  valid_o	, // 数据输出有效
	input			  clk		, // 时钟
	input			  valid_i	, // 输入数据有效
	input 		[7:0] a_i		,
	input 		[7:0] b_i
);
	// a_i流水线寄存器
	reg [6:0] 	a_shift_r0 = 0;
	reg [5:0] 	a_shift_r1 = 0;
	reg [4:0] 	a_shift_r2 = 0;
	reg [3:0] 	a_shift_r3 = 0;
	reg [2:0] 	a_shift_r4 = 0;
	reg [1:0] 	a_shift_r5 = 0;
	reg     	a_shift_r6 = 0;
	
	// b_i流水线寄存器
	reg [7:0] 	b_shift_r0 = 0;
	reg [6:0] 	b_shift_r1 = 0;
	reg [5:0] 	b_shift_r2 = 0;
	reg [4:0] 	b_shift_r3 = 0;
	reg [3:0] 	b_shift_r4 = 0;
	reg [2:0] 	b_shift_r5 = 0;
	reg [1:0] 	b_shift_r6 = 0;

	// 中间结果流水线寄存器
	reg [7:0] mid_res_0 = 0;
	reg [7:0] mid_res_1 = 0;
	reg [7:0] mid_res_2 = 0;
	reg [7:0] mid_res_3 = 0;
	reg [7:0] mid_res_4 = 0;
	reg [7:0] mid_res_5 = 0;

	// 中间加运算
	wire [7:0] mid_res_0_w = b_shift_r0[7]	?a_shift_r0:0;
	wire [7:0] mid_res_1_w = b_shift_r1[6]	?(mid_res_0 + a_shift_r1):mid_res_0;
	wire [7:0] mid_res_2_w = b_shift_r2[5]	?(mid_res_1 + a_shift_r2):mid_res_1;
	wire [7:0] mid_res_3_w = b_shift_r3[4]	?(mid_res_2 + a_shift_r3):mid_res_2;
	wire [7:0] mid_res_4_w = b_shift_r4[3]	?(mid_res_3 + a_shift_r4):mid_res_3;
	wire [7:0] mid_res_5_w = b_shift_r5[2]	?(mid_res_4 + a_shift_r5):mid_res_4;
	wire [7:0] mid_res_6_w = b_shift_r6[1]	?(mid_res_5 + a_shift_r6):mid_res_5;
	
	reg [7:0] valid_r = 0;
	assign valid_o = valid_r[7];
	always@(posedge clk) begin
		valid_r[0] <= valid_i;
		valid_r[1] <= valid_r[0];
		valid_r[2] <= valid_r[1];
		valid_r[3] <= valid_r[2];
		valid_r[4] <= valid_r[3];
		valid_r[5] <= valid_r[4];
		valid_r[6] <= valid_r[5];
		valid_r[7] <= valid_r[6];
	end
	
	// a_i存入移位寄存器，加入到流水线中
	always@(posedge clk)
		if(valid_i)
			a_shift_r0 <= a_i >> 1;
		else
			a_shift_r0 <= 0;
	
	// a_i右移位流水线
	always@(posedge clk) begin
		a_shift_r1 <= a_shift_r0[6:1];
		a_shift_r2 <= a_shift_r1[5:1];
		a_shift_r3 <= a_shift_r2[4:1];
		a_shift_r4 <= a_shift_r3[3:1];
		a_shift_r5 <= a_shift_r4[2:1];
		a_shift_r6 <= a_shift_r5[1];
	end
	
	// b_i存入移位寄存器，加入到流水线中	
	always@(posedge clk)
		if(valid_i)
			b_shift_r0 <= b_i;
		else
			b_shift_r0 <= 0;
	
	// b_i左移位流水线
	always@(posedge clk) begin
		b_shift_r1 <= b_shift_r0[6:0];
		b_shift_r2 <= b_shift_r1[5:0];
		b_shift_r3 <= b_shift_r2[4:0];
		b_shift_r4 <= b_shift_r3[3:0];
		b_shift_r5 <= b_shift_r4[2:0];
		b_shift_r6 <= b_shift_r5[1:0];
	end		

	// 中间结果流水线
	always@(posedge clk) begin
		mid_res_0 <= mid_res_0_w;
		mid_res_1 <= mid_res_1_w;
		mid_res_2 <= mid_res_2_w;
		mid_res_3 <= mid_res_3_w;
		mid_res_4 <= mid_res_4_w;
		mid_res_5 <= mid_res_5_w;
		p_o <= mid_res_6_w;
	end
	
endmodule