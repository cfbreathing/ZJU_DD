`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 02:00:34
// Design Name: 
// Module Name: Mux4to14b_tb
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


module Mux4to14b_tb(

    );
    reg[3:0] s;
    reg[3:0] I0;
    reg[3:0] I1;
    reg[3:0] I2;
    reg[3:0] I3;

    wire[3:0] o;

    Mux4to14b Mux4to14b_1(
    .s(s),
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .o(o)
    );
    
    initial begin
        I0 = 4'b0001;
        I1 = 4'b0010;
        I2 = 4'b0100;
        I3 = 4'b1000;
        s = 2'b00;
        #50; s= 2'b01;
        #50; s= 2'b10;
        #50; s= 2'b11;
    end
endmodule
