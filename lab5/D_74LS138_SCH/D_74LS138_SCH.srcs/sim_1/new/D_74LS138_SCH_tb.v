`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 19:35:36
// Design Name: 
// Module Name: D_74LS138_SCH_tb
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


module D_74LS138_SCH_tb();
// Inputs
   reg G;
   reg G2A;
   reg G2B;
   reg A;
   reg B;
   reg C;
// Output
   wire [7:0] Y;
// Instantiate the UUT
   D_74LS138 UUT (
		.G(G), 
		.G2A(G2A), 
		.G2B(G2B), 
		.A(A), 
		.B(B), 
		.C(C), 
		.Y(Y)
    );
    integer i;
    initial begin
        A = 0; B = 0; C = 0;
        G = 1; G2A = 0; G2B = 0;
        #50;
        for (i=0; i<=7; i=i+1)begin
            {C,B,A} = i;
            #50;
        end
        
        assign G = 0;
        assign G2A = 0;
        assign G2B = 0;
        #50;
        
        assign G = 1;
        assign G2A = 1;
        assign G2B = 0;
        #50;
        
        assign G = 1;
        assign G2A = 0;
        assign G2B = 1;
        #50;
     end
endmodule
