`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/22 13:17:51
// Design Name: 
// Module Name: SR_LATCH_tb
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


module SR_LATCH_tb();
    reg R;
    reg S;
    wire Q;
    wire Qbar;
    
    SR_LATCH UUT(.R(R), .S(S), .Q(Q), .Qbar(Qbar));
    initial begin
        R=1;S=1; #50;
        R=1;S=0; #50;
        R=1;S=1; #50;
        R=0;S=1; #50;
        R=1;S=1; #50;
        R=1;S=1; #50;
    end

endmodule
