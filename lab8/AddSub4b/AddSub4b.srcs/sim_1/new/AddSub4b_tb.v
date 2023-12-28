`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 14:14:10
// Design Name: 
// Module Name: AddSub4b_tb
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


`timescale 1ns / 1ps
module AddSub4b_tb();
    reg Ctrl;
    reg [3:0] A;
    reg [3:0] B;
    wire Co;
    wire [3:0] S;
    AddSub4b UUT (
     .Co(Co),
     .S(S),
     .Ctrl(Ctrl),
     .A(A),
     .B(B)
    );
     initial begin
         Ctrl = 0;
         A = 0;B = 0;
         #100
         Ctrl = 0;
         A = 4'b0101;
         B = 4'b1010;
         #100
         Ctrl = 0;
         A = 4'b1000;
         B = 4'b0001;
         #100
         Ctrl = 1;
         A = 4'b1110;
         B = 4'b0001;
         #100
         Ctrl = 1;
         A = 4'b1100;
         B = 4'b0001;
    end
endmodule
