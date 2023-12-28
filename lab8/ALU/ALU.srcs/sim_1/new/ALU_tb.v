`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 14:36:14
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg [1:0] S;
    wire [3:0] res;
    wire cout;
    ALU UUT (
        .res(res),
        .cout(cout),
        .A(A),
        .B(B),
        .S(S)
    );
    integer i=0;
    initial begin
        A=4'b1010;B=4'b0111;S=2'b00;#100;
        B=4'b0011;
        for (i=0; i<=3;i=i+1) begin
             #100;S=i;
        end
    end

endmodule
