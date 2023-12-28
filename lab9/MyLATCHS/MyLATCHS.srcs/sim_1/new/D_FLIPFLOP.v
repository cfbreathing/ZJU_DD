`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/22 13:38:26
// Design Name: 
// Module Name: D_LATCH_tb
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


module D_FLIPFLOP_tb();
    reg C;
    reg D;
    wire Q;
    wire Qbar;
    
    D_FLIPFLOP UUT(.C(C), .D(D), .Q(Q), .Qbar(Qbar));
    
    initial begin 
        D = 0; #150;
        D = 1; #150;	
        C=0; #50;
        C=1; #50;
    end
endmodule
