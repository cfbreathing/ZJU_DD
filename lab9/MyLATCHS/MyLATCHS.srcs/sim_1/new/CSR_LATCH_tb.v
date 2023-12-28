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


module CSR_LATCH_tb();
    reg C;
    reg S;
    reg R;
    wire Q;
    wire Qbar;
    
    CSR_LATCH UUT(.C(C), .S(S), .R(R), .Q(Q), .Qbar(Qbar));
    
    initial begin 
        C=0;R=1;S=1; #50;
        R=1;S=0; #50;
        R=1;S=1; #50;
        R=0;S=1; #50;
        R=1;S=1; #50;
        R=0;S=0; #50;
        R=1;S=1; #50;	 
        C=1;R=0;S=0; #50;
        R=1;S=0; #50;
        R=0;S=1; #50;
        R=0;S=0; #50;
    end
endmodule