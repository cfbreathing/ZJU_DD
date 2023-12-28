`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/29 02:47:33
// Design Name: 
// Module Name: RevCounter_tb
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


module RevCounter_tb();
    reg clk;
    reg rst;
    reg s;
    wire[15:0] cnt;
    wire Rc;
    
    RevCounter UUT(.clk(clk), .rst(rst), .s(s), .cnt(cnt), .Rc(Rc));
    
    initial begin
        clk = 1'b0;
        s = 1'b1;
        rst = 1'b0;
        #160000; s = 1'b0;
    end
    
    always begin
        #1; clk = ~clk;
    end
endmodule
