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


module MS_FLIPFLOP_tb();
    reg C;
    reg R;
    reg S;
    wire Q;
    wire Qbar;
    
    MS_FLIPFLOP UUT(.C(C), .R(R), .S(S), .Q(Q), .Qbar(Qbar));
    
    initial begin 
        R=1; S=1; #50;
        R=1; S=0; #50;
        R=0; S=1; #50;
        R=0; S=0; #50;
        R=1; S=1; #50;
        R=1; S=0; #50;
        R=0; S=1; #50;
        R=0; S=0; #50;
    end
    initial begin 
        C=0;#200;
        C=1;#200;
    end
endmodule
