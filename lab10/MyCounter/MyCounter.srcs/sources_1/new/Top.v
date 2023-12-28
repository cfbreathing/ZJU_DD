`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/29 02:22:10
// Design Name: 
// Module Name: Top
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
    input wire clk,
    output wire LED,
    output wire [7:0] SEGMENT,
    output wire [3:0] AN
);
    
    wire Qa;
    wire Qb;
    wire Qc;
    wire Qd;
    wire [3:0] Hex;
    wire clk_1s;

    clk_1s m0(.clk(clk), .clk_1s(clk_1s));

    Counter4b m1(.clk(clk_1s), .Qa(Qa), .Qb(Qb), .Qc(Qc), .Qd(Qd), .Rc(LED));

    assign Hex = {Qd, Qc, Qb, Qa};

    DispNumber_sch display(.BTN(2'b00), .SW({4'b0001, Hex}), .SEGMENT(SEGMENT), .AN(AN));

endmodule
