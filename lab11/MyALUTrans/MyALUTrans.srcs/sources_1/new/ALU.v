`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 14:27:18
// Design Name: 
// Module Name: ALU
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


module ALU(
    A,
    B,
    S,
    
    res,
    cout
    );
    
    input[3:0] A;
    input[3:0] B;
    input[1:0] S;
    output[3:0] res;
    output cout;
    
    wire[3:0] AandB;
    wire[3:0] AorB;
    wire[3:0] addres;
    wire addco;
    
    assign AandB = A & B;
    assign AorB = A | B;
    
    AddSub4b AddSub4b_1(
        .Ctrl(S[0]),
        .A(A),
        .B(B),
        .S(addres),
        .Co(addco)
    );
    
    Mux4to1b4 Mux4to14_1(
        .s(S),
        .I0(addres),
        .I1(addres),
        .I2(AandB),
        .I3(AorB),
        .o(res)
    );
    
    Mux4to1 Mux4to1_1(
        .s(S),
        .I0(addco),
        .I1(addco),
        .I2(1'b0),
        .I3(1'b0),
        .o(cout)
    );
    
endmodule
