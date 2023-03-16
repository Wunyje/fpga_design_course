`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/15 21:26:45
// Design Name: 
// Module Name: median_filter
// Project Name: xi_median_filter
// Target Devices: 
// Tool Versions: Vivado 2019.1
// Description: 
//--               _   _   _   _   _   _   _   _   _   _   _   _  
//-- clk          | |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_
//--              ____ ___ ___ ___ _______________ ___ ___ ___ ___
//-- dat_i[7:0]   ____X___X___X___X_______________X___X___X___X___
//--                   ___________                 _______________
//-- val_i        ____|           |_______________|               
//--              ________________ ___ ___ ___ _______________ ___
//-- dat_o[7:0]   ________________X___X___X___X_______________X___
//--                               ___________                 ___
//-- val_o        ________________|           |_______________|   
//
//   delay: 8 cycle
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module median_filter(
    input [7:0] dat_i,
    input       val_i,
    output [7:0] dat_o,
    output      val_o
    );

endmodule
