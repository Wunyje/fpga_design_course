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
    
    reg [3:0] val_r = 0;
    assign val_o = val_r[3];
    always@(posedge clk) begin
      val_r[0] <= val_i;
      val_r[1] <= val_r[0];
      val_r[2] <= val_r[1];
      val_r[3] <= val_r[2];
    end

    wire [15:0] atan_poly_pow_2;
    unsigned_pow_2_mul_wrapper unsigned_pow_2_mul(
        .data_i(atan_poly_i),
        .data_o(atan_poly_pow_2),
        .clk(clk)
    );

    wire [15:0] mul_B_w;
    reg [15:0] add_C_r = 0;
    reg [22:0] mid_res = 0;
    mul_para_B_wrapper mul_para_B(
      .clk        (clk) ,
      .atan_poly_i(atan_poly_i) ,
      .mul_B_p    (mul_B_w) 
    );

    wire [22:0] mul_A_w;
    mul_para_A_wrapper mul_para_A(
      .clk            (clk) ,
      .atan_poly_pow_2(atan_poly_pow_2) ,
      .mul_A_p        (mul_A_w) 
    );

    assign atan_poly_o = {{3{mid_res[22]}}, mid_res[21:9]};
    always@(posedge clk) begin
        add_C_r <= mul_B_w - 16'h55 ;
        mid_res <= {add_C_r, 7'b0} + mul_A_w;
    end

endmodule
