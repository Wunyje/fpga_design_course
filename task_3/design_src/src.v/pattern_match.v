`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/23 14:57:42
// Design Name: 
// Module Name: pattern_match
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


module pattern_match(
    input           clk         ,
    input           val_i       ,
    input [7:0]     real_i      ,
    input [7:0]     imag_i      ,
    output [7:0]    into_atan_poly,
    output [2:0]    case_flag   ,
    output          val_o       
    );

    reg [3:0] val_r = 0;
    assign    val_o = val_r[3];
    always@(posedge clk) begin
        val_r[0] <= val_i;
        val_r[1] <= val_r[0];
        val_r[2] <= val_r[1];
        val_r[3] <= val_r[2];
    end

    wire [7:0] abs_real_w = (real_i[7]? ~real_i + 1'b1 : real_i) ;
    wire [7:0] abs_imag_w = (real_i[7]? ~real_i + 1'b1 : real_i) ;
    reg  [7:0] abs_real_r = 0;
    reg  [7:0] abs_imag_r = 0;
    reg  [7:0] real_i_r = 0;
    reg  [7:0] imag_i_r = 0;
    always@(posedge clk) begin
        real_i_r <= real_i;
        imag_i_r <= imag_i;
        abs_real_r <= abs_real_w;
        abs_imag_r <= abs_imag_w;
    end

    wire real_sign = real_i_r[7];
    wire imag_sign = imag_i_r[7];
    wire div_sign = real_sign | imag_sign;
    wire imag_eq_zero = (abs_imag_r == 0)?1:0;
    wire real_eq_zero = (abs_real_r == 0)?1:0;
    wire imag_eq_real = (((abs_real_r == abs_imag_r)&&(~imag_eq_zero))?1'b1 : 1'b0);
    wire imag_ls_real = ((abs_real_r > abs_imag_r)?1'b1 : 1'b0);
    wire imag_bg_real = ((abs_real_r < abs_imag_r)?1'b1 : 1'b0);

    wire all_zero = (~(abs_real_r && abs_imag_r)); 
    wire abs_div_within_0 = ((~div_sign) && (~imag_eq_zero)) || (imag_eq_zero && (~real_sign));
    wire abs_div_within_1 = div_sign   || ( imag_eq_zero && real_sign) ;
    wire abs_div_without_0 = ((~div_sign) && (~real_eq_zero)) || (real_eq_zero  && (~imag_sign));
    wire abs_div_without_1 = div_sign || ( real_eq_zero && imag_sign) ;

    assign      case_flag = case_flag_r;
    reg [2:0]   case_flag_r = 0;
    always@(posedge clk) begin
        if(all_zero && val_r[1]) begin
            case_flag_r <= 0;
        end
        if(imag_ls_real || imag_eq_real) begin
            if(abs_div_within_0 && val_r[1]) begin
                if(real_sign)
                    case_flag_r <= 0;
                else
                    case_flag_r <= 1;
            end
            if(abs_div_within_1 && val_r[1]) begin
               if(real_sign)
                    case_flag_r <= 2;
                else
                    case_flag_r <= 3;
            end
        end
        if(imag_bg_real) begin
            if(abs_div_without_0 && val_r[1]) begin
                if(real_sign)
                    case_flag_r <= 4;
                else
                    case_flag_r <= 5;
            end
            if(abs_div_without_1 && val_r[1]) begin
                if(real_sign)
                    case_flag_r <= 6;
                else
                    case_flag_r <= 7;
            end
        end   
    end

    assign into_atan_poly = div_res[15:8];
    reg [15:0] dividened = 0;
    reg [7:0]  divisor = 0;
    wire [23:0] div_res;
    always@(*) begin
        if(all_zero && val_r[1]) begin
            dividened = 0;
            divisor = 1;
        end
        if(imag_ls_real || imag_eq_real) begin
            // mid_atan_value = (imag_value)* pow(2,7)/ (real_value);
            if(abs_div_within_0 && val_r[1]) begin
                dividened = {imag_i_r, 7'b0};
                divisor = real_i_r;
            end
            if(abs_div_within_1 && val_r[1]) begin
                // mid_atan_value = -mid_atan_value;
                dividened = {(imag_i_r[7]? ~imag_i_r + 1'b1 : imag_i_r) , 7'b0};
                divisor = real_i_r;
            end
        end
        if(imag_bg_real) begin
            // mid_atan_value = (real_value)* pow(2,7) / (imag_value);
            if(abs_div_without_0 && val_r[1]) begin
                // mid_atan_value = mid_atan_value;
                dividened = {real_i_r, 7'b0};
                divisor = imag_i_r;
            end
            if(abs_div_without_1 && val_r[1]) begin
                // mid_atan_value = -mid_atan_value;
                dividened = {(real_i_r[7]? ~real_i_r + 1'b1 : real_i_r) , 7'b0};
                divisor = imag_i_r;
            end
        end   
    end
    cal_angle_div_wrapper cal_angle_div(
        .clk      (clk) ,
        .dividened(dividened) ,  // [15:0]
        .divisor  (divisor) ,  // [7:0]
        .val_i    (val_r[1]) ,
        .val_o    () ,
        .div_res  (div_res)    // [23:0]
    );

endmodule
