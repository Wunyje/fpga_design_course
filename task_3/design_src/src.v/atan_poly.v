`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/22 21:19:12
// Design Name: 
// Module Name: atan_poly
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


module atan_poly(
    input           clk         ,
    input           val_i       ,
    output          val_o       ,
    input   [7:0]   atan_poly_i ,
    output  [15:0]  atan_poly_o 
    );
    reg val_r = 0;
    always@(posedge clk) begin
      val_r <= val_i;
    end

    wire [15:0] atan_poly_pow_2;
    reg  [15:0] atan_poly_pow_2_r = 0;
    pow_2_mul_wrapper atan_poly_pow_2_mul(
        .data_i(atan_poly_i),
        .data_o(atan_poly_pow_2),
        .clk(clk)
    );

    always@(posedge clk) begin
      atan_poly_pow_2_r <= atan_poly_pow_2;
    end

    mul_para_B_wrapper mul_para_B(
    
    );
    
    mul_para_A_wrapper mul_para_A(
    
    );

endmodule
