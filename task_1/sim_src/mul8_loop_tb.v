`timescale 1 ns/10 ps  //时间单元位1ns，时间精度位10ps
module mul8_loop_tb();

	reg [7:0] 	a_i = 0;
	reg [7:0] 	b_i = 0;
	reg			start = 0;
	reg			clk = 1;
	wire [7:0]	p_o;
	wire		busy;
	reg [15:0]	actual_ans = 0;
	
	localparam period = 10; 
	initial begin
	   forever begin
		 #(period/2) clk = ~clk;
	   end
	end
	
	initial // initial block executes only once
        begin
			#(period*100);
			
            // 产生用于测试的a、b信号值
            a_i = 8'h45;
            b_i = 8'h55;
			actual_ans = (a_i*b_i)>>8;
			start = 1;
            #period; // 等待一个信号周期

            a_i = 0;
            b_i = 0;
			start = 0;
        end
	
	mul8_loop mul8_loop_inst 
	(
	  .p_o		(p_o),  	
	  .busy		(busy),		
	  .clk		(clk),      
	  .start	(start),      
	  .a_i		(a_i),    
	  .b_i		(b_i)
	);

endmodule