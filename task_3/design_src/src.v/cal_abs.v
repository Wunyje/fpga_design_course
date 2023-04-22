`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/22 20:09:05
// Design Name: 
// Module Name: cal_abs
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


module cal_abs(
    input           clk     ,
    input           val_i   ,
    input [7:0]     real_i  ,
    input [7:0]     imag_i  ,
    output [7:0]    abs_o   ,
    output          val_o
    );
    wire [15:0] real_pow_2_w;
    wire [15:0] imag_pow_2_w;
    pow_2_mul_wrapper real_pow_2_mul(
        .data_i(real_i),
        .data_o(real_pow_2_w),
        .clk(clk)
    );

    pow_2_mul_wrapper imag_pow_2_mul(
        .data_i(imag_i),
        .data_o(imag_pow_2_w),
        .clk(clk)
    );

    reg [15:0] real_pow_2_r = 0;
    reg [15:0] imag_pow_2_r = 0;
    reg        val_r = 0;
    always@(posedge clk) begin
        real_pow_2_r <= real_pow_2_w;
        imag_pow_2_r <= imag_pow_2_w;
        val_r <= val_i;
    end

    wire [15:0] sqrt_lut_in = real_pow_2_w + imag_pow_2_w;
    sqrt_lut sqrt_lut_inst(
        .clk(clk),
        .sqrt_lut_i(sqrt_lut_in),
        .val_i(val_r),
        .sqrt_lut_o(abs_o),
        .val_o(val_o)
    );

endmodule