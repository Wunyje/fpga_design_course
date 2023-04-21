module mul8_parall(
	input					clk			,
	input			[7:0]	b_i			,
	input			[7:0]	a_i			,
	output	reg		[7:0]	p_o	
);

	reg [7:0] p_o_r_0 = 0;
	reg [7:0] p_o_r_1 = 0;
	reg [7:0] p_o_r_2 = 0;
	reg [7:0] p_o_r_3 = 0;
	
	wire [7:0] a_i_sft1_w = b_i[7]? {1'b0,a_i[7:1]}:0;
	wire [7:0] a_i_sft2_w = b_i[6]? {2'b0,a_i[7:2]}:0;
	wire [7:0] a_i_sft3_w = b_i[5]? {3'b0,a_i[7:3]}:0;
	wire [7:0] a_i_sft4_w = b_i[4]? {4'b0,a_i[7:4]}:0;
	wire [7:0] a_i_sft5_w = b_i[3]? {5'b0,a_i[7:5]}:0;
	wire [7:0] a_i_sft6_w = b_i[2]? {6'b0,a_i[7:6]}:0;
	wire [7:0] a_i_sft7_w = b_i[1]? {7'b0,a_i[7]}:0;
	
	// p_o_r_0 = b_i[7]*(a_i >> 1) + b_i[6]*(a_i >> 2) 
	always@(posedge clk) begin
		p_o_r_0 <= a_i_sft1_w + a_i_sft2_w;
		p_o_r_1 <= a_i_sft3_w + a_i_sft4_w;
		p_o_r_2 <= a_i_sft5_w + a_i_sft6_w;
		p_o_r_3 <= a_i_sft7_w;
		p_o <= p_o_r_0+ p_o_r_1+ p_o_r_2+ p_o_r_3;
	end

endmodule

