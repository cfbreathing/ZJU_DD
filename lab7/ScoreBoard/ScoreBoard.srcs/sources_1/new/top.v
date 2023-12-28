`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 02:46:59
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


module Top(
    input clk,
    input [7:0] SW,
    input [3:0] btn,
    output[3:0] AN,
    output[7:0] SEGMENT,
    output      BTN_X
);

    assign BTN_X = 1'b0;

    wire [15:0] num;

    CreateNumber create_inst(
        .btn(btn),
        .num(num)
    );

    DisplayNumber disp_inst(
        .clk(clk),
        .rst(1'b0),
        .hexs(num),
        .points(SW[7:4]),
        .LEs(SW[3:0]),
        .AN(AN),
        .SEGMENT(SEGMENT)
    );

endmodule

