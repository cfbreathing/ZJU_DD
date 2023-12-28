`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/27 09:49:54
// Design Name: 
// Module Name: HexToSeg
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


module HexToSeg(
    input [3:0] hex,
    input LE,
    input flash,
    input point,
    output[7:0] segment
);

    wire en = LE & flash;
    MyMC14495 MSEG(.D3(hex[3]), .D2(hex[2]), .D1(hex[1]), .D0(hex[0]), .LE(en), .point(point),
        .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .p(p));

    assign segment = {a, b, c, d, e, f, g, p};

endmodule