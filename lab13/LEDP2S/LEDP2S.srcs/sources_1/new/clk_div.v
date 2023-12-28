`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/27 06:39:15
// Design Name: 
// Module Name: clk_div
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


module clk_div(
			input clk,
			input rst,
			output reg [31:0] clkdiv
    );
	always @ (posedge clk or posedge rst) begin
		if (rst) clkdiv<=0;
		else clkdiv<=clkdiv+1'b1;
	end
	
endmodule

