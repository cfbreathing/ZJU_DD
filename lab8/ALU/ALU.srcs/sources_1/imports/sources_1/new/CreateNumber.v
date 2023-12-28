`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 02:08:47
// Design Name: 
// Module Name: CreateNumber
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


module CreateNumber(
	input wire [1:0] btn,
	input wire [1:0] sw,
	output reg [7:0] num
    );
	 wire [3:0] A1,B1;
	 initial num <= 8'b1100_1101;
	 
	 AddSub4b a1(.A(num[3:0]),.B(4'b0001),.Ctrl(sw[0]),.S(A1));
	 AddSub4b a2(.A(num[7:4]),.B(4'b0001),.Ctrl(sw[1]),.S(B1));
	 
	 always@(posedge btn[0]) num[3:0]<=A1;
	 always@(posedge btn[1]) num[7:4]<=B1;
endmodule
