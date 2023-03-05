module mul8_pipeline(
	output reg [7:0] p_o = 0	,
	output			  valid_o	,
	input			  clk		,
	input			  valid_i	,
	input 		[7:0] a_i		,
	input 		[7:0] b_i
);
	reg [7:0] 	a_shift_r0 = 0;
	reg [6:0] 	a_shift_r1 = 0;
	reg [5:0] 	a_shift_r2 = 0;
	reg [4:0] 	a_shift_r3 = 0;
	reg [3:0] 	a_shift_r4 = 0;
	reg [2:0] 	a_shift_r5 = 0;
	reg [1:0] 	a_shift_r6 = 0;
	reg   	  	a_shift_r7 = 0;

	reg [7:0] 	b_shift_r0 = 0;
	reg [6:0] 	b_shift_r1 = 0;
	reg [5:0] 	b_shift_r2 = 0;
	reg [4:0] 	b_shift_r3 = 0;
	reg [3:0] 	b_shift_r4 = 0;
	reg [2:0] 	b_shift_r5 = 0;
	reg [1:0] 	b_shift_r6 = 0;
	reg   	   	b_shift_r7 = 0;

	reg [7:0] mid_res_0 = 0;
	reg [7:0] mid_res_1 = 0;
	reg [7:0] mid_res_2 = 0;
	reg [7:0] mid_res_3 = 0;
	reg [7:0] mid_res_4 = 0;
	reg [7:0] mid_res_5 = 0;
	reg [7:0] mid_res_6 = 0;

	wire [7:0] mid_res_0_w = b_shift_r0[7]	?a_shift_r0:0;
	wire [7:0] mid_res_1_w = b_shift_r1[6]	?(mid_res_0 + {a_shift_r1,1'b0}):mid_res_0;
	wire [7:0] mid_res_2_w = b_shift_r2[5]	?(mid_res_1 + {a_shift_r2,2'b0}):mid_res_1;
	wire [7:0] mid_res_3_w = b_shift_r3[4]	?(mid_res_2 + {a_shift_r3,3'b0}):mid_res_2;
	wire [7:0] mid_res_4_w = b_shift_r4[3]	?(mid_res_3 + {a_shift_r4,4'b0}):mid_res_3;
	wire [7:0] mid_res_5_w = b_shift_r5[2]	?(mid_res_4 + {a_shift_r5,5'b0}):mid_res_4;
	wire [7:0] mid_res_6_w = b_shift_r6[1]	?(mid_res_5 + {a_shift_r6,6'b0}):mid_res_5;
	wire [7:0] mid_res_7_w = b_shift_r7	?(mid_res_6 + {a_shift_r7,7'b0}):mid_res_6;
	
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
		
	always@(posedge clk)
		if(valid_i)
			a_shift_r0 <= a_i;
		else
			a_shift_r0 <= 0;

	always@(posedge clk) begin
		a_shift_r1 <= a_shift_r0[6:0];
		a_shift_r2 <= a_shift_r1[5:0];
		a_shift_r3 <= a_shift_r2[4:0];
		a_shift_r4 <= a_shift_r3[3:0];
		a_shift_r5 <= a_shift_r4[2:0];
		a_shift_r6 <= a_shift_r5[1:0];
		a_shift_r7 <= a_shift_r6[0]  ;
	end
		
	always@(posedge clk)
		if(valid_i)
			b_shift_r0 <= b_i;
		else
			b_shift_r0 <= 0;
		
	always@(posedge clk) begin
		b_shift_r1 <= b_shift_r0[6:0];
		b_shift_r2 <= b_shift_r1[5:0];
		b_shift_r3 <= b_shift_r2[4:0];
		b_shift_r4 <= b_shift_r3[3:0];
		b_shift_r5 <= b_shift_r4[2:0];
		b_shift_r6 <= b_shift_r5[1:0];
		b_shift_r7 <= b_shift_r6[0]  ;
	end		

	always@(posedge clk) begin
		mid_res_0 <= mid_res_0_w;
		mid_res_1 <= mid_res_1_w;
		mid_res_2 <= mid_res_2_w;
		mid_res_3 <= mid_res_4_w;
		mid_res_5 <= mid_res_5_w;
		mid_res_6 <= mid_res_6_w;
		p_o <= mid_res_7_w;
	end
	
endmodule