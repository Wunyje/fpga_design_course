module mul8_parall_tb();

	reg [7:0] 	a_i = 0;
	reg [7:0] 	b_i = 0;
	reg			clk = 1;
	wire [7:0]	p_o;
	reg [15:0]	actual_ans_0 = 0;
	reg [15:0]	actual_ans_1 = 0;

	localparam period = 10; 
	initial begin
	   forever begin
		 #(period*0.5) clk = ~clk;
	   end
	end
	
	initial // initial block executes only once
        begin
			#(period*100);
			
            // 产生用于测试的a、b信号值
            a_i = 8'h45;
            b_i = 8'h55;
			actual_ans_0 = (a_i*b_i)>>8;
            #period; // 等待一个信号周期

            a_i = 8'h55;
            b_i = 8'h65;
			actual_ans_1 = (a_i*b_i)>>8;
			#period;
			
			a_i = 0;
            b_i = 0;
        end
	
	mul8_parall mul8_parall_inst 
	(
	  .p_o  	(p_o),  			
	  .clk		(clk),       
	  .a_i		(a_i),    
	  .b_i		(b_i)
	);

endmodule

