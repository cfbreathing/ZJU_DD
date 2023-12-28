`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/29 02:01:15
// Design Name: 
// Module Name: Counter4b_tb
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


module Counter4b_tb();

    reg clk;
    wire Qa;
    wire Qb;
    wire Qc;
    wire Qd;
    wire Rc;
    
    Counter4b UUT(.clk(clk), .Qa(Qa), .Qb(Qb), .Qc(Qc), .Qd(Qd), .Rc(Rc));
    
    initial begin
        clk = 1'b0;
    end
    
    always begin
        #100; clk = ~clk;
    end
endmodule
