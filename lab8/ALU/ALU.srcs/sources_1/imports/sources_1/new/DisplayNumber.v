`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 02:32:28
// Design Name: 
// Module Name: DisplayNumber
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


module DisplayNumber(
    clk,
    rst,
    hexs,
    points,
    LEs,
    
    SEGMENT,
    AN
    );
    
    input clk;
    input rst;
    input[15:0] hexs;
    input[3:0] points;
    input[3:0] LEs;
    
    output[7:0] SEGMENT; 
    output[3:0] AN;
    
    wire[31:0] clk_res;
    wire[3:0] hex;
    wire point_o;
    wire LE;
    wire[3:0] AN;
    
    clkdiv clkdiv_1(
        .clk(clk),
        .rst(rst),
        .div_res(clk_res)
    );
    
    DisplaySync DisplaySync_1(
        .scan(clk_res[18:17]),
        .hexs(hexs),
        .points(points),
        .LEs(LEs),
        
        .hex(hex),
        .point(point_o),
        .LE(LE),
        .AN(AN)
    );
    
    MyMC14495 MyMC14495_1(
        .D0(hex[0]),
        .D1(hex[1]),
        .D2(hex[2]),
        .D3(hex[3]),
        .point(point_o),
        .LE(LE),
        
        .a(SEGMENT[0]),
        .b(SEGMENT[1]),
        .c(SEGMENT[2]),
        .d(SEGMENT[3]),
        .e(SEGMENT[4]),
        .f(SEGMENT[5]),
        .g(SEGMENT[6]),
        .p(SEGMENT[7])
    );
    
endmodule
