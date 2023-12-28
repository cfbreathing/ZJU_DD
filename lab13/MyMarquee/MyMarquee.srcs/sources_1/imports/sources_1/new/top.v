`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/20 18:03:24
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input [4:0]SW,
    output [7:0] Q,
    output [3:0] AN,
    output [7:0] SEGMENT
    );
    
    wire [3:0] reg_A, reg_B;
    wire [7:0] dummy_reg; 
    wire clk_1s;
    
    clk_1s a0 (.clk(clk), .clk_1s(clk_1s));
    CreateNumber a1 (.btn({2'b0, SW[1], SW[0]}), .num({dummy_reg, reg_B, reg_A}));
    DisplayNumber a2 (.clk(clk), .hexs({24'b0, reg_B, reg_A}), 
                .points(4'b0000), .rst(1'b0), .LEs(4'b0000), .AN(AN), .SEGMENT(SEGMENT));
    shift_reg #(.BIT_WIDTH(8))
            a3 (.clk(clk_1s), .shiftn_loadp(SW[2]), .shift_in(SW[3]), .par_in({reg_B, reg_A}), .Q(Q));

endmodule

