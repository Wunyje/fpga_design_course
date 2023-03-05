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
	
	always@(*) begin
		if(b_i[0] &  b_i[1])
			p_o_r_0 = a_i + {a_i[6:0],1'b0};
		if(b_i[0] & ~b_i[1])
			p_o_r_0 = a_i;
		if(~b_i[0] & b_i[1])
			p_o_r_0 = {a_i[6:0],1'b0};
	end
	
	always@(*) begin
		if(b_i[2] &  b_i[3])
			p_o_r_1 = {a_i[5:0],2'b0} + {a_i[4:0],3'b0};
		if(b_i[2] & ~b_i[3])
			p_o_r_1 = {a_i[5:0],2'b0};
		if(~b_i[2] & b_i[3])
			p_o_r_1 = {a_i[4:0],3'b0};
	end
		
	always@(*) begin
		if(b_i[4] &  b_i[5])
			p_o_r_2 = {a_i[3:0],4'b0} + {a_i[2:0],5'b0};
		if(b_i[4] & ~b_i[5])
			p_o_r_2 = {a_i[3:0],4'b0};
		if(~b_i[4] & b_i[5])
			p_o_r_2 = {a_i[2:0],5'b0};
	end
		
	always@(*) begin
		if(b_i[6] &  b_i[7])
			p_o_r_3 = {a_i[1:0],6'b0} + {a_i[0],7'b0};
		if(b_i[6] & ~b_i[7])
			p_o_r_3 = {a_i[1:0],6'b0};
		if(~b_i[6] & b_i[7])
			p_o_r_3 = {a_i[0],7'b0};
	end
	
	// Sequential logic
	always@(posedge clk) begin
		p_o <= p_o_r_0+ p_o_r_1+ p_o_r_2+ p_o_r_3;
	end

endmodule

