`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/20 16:57:43
// Design Name: 
// Module Name: FD
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

module FD(
    input clk,
    input D,
    output Q);

    reg Q_reg = 1'b0;
    always @(posedge clk) begin
        Q_reg <= D;    
    end

    assign Q = Q_reg;

endmodule

