`timescale 1 ns/10 ps  //时间单元位1ns，时间精度位10ps
module mul8_pipeline_tb();

	reg [7:0] 	a_i = 0;
	reg [7:0] 	b_i = 0;
	reg			valid_i = 0;
	reg			clk = 1;
	wire [7:0]	p_o;
	wire		valid_o;
	reg [15:0]	actual_ans_0 = 0;
	reg [15:0]	actual_ans_1 = 0;
	reg [15:0]	actual_ans_2 = 0;
	reg [15:0]	actual_ans_3 = 0;
	
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
            a_i = 8'h55;
            b_i = 8'h45;
			actual_ans_0 =  (a_i*b_i)>>8;
			valid_i = 1;
            #period; // 等待一个信号周期

            a_i = 8'h55;
            b_i = 8'h65;
			actual_ans_1 = (a_i*b_i)>>8;
			#period;
			
			a_i = 8'h65;
            b_i = 8'h65;
			actual_ans_2 = (a_i*b_i)>>8;
			#period;
			
			valid_i = 0;
			a_i = 0;
            b_i = 0;
			#(period*10);
			
			a_i = 8'h45;
            b_i = 8'h45;
			actual_ans_3 = (a_i*b_i)>>8;
			valid_i = 1;
			#period;
			
			a_i = 0;
            b_i = 0;
			valid_i = 0;
        end
	
	mul8_pipeline mul8_pipeline_inst 
	(
	  .p_o  	(p_o),  	
	  .valid_o	(valid_o),		
	  .clk		(clk),      
	  .valid_i	(valid_i),      
	  .a_i		(a_i),    
	  .b_i		(b_i)
	);

endmodule