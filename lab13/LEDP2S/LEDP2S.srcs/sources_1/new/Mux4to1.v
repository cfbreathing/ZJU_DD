`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 01:39:39
// Design Name: 
// Module Name: Mux4to1
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


module Mux4to1(
    s,
    I0,
    I1,
    I2,
    I3,
    
    o
    );
    input[1:0] s;
    input I0;
    input I1;
    input I2;
    input I3;
    
    output o;
    
    assign o = (s == 2'b00) ? I0:
               (s == 2'b01) ? I1:
               (s == 2'b10) ? I2:
               (s == 2'b11) ? I3: 
               1'bx;
endmodule
