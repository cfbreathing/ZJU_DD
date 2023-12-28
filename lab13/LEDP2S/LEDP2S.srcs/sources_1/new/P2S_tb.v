`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/27 06:16:49
// Design Name: 
// Module Name: P2S_tb
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

module P2S_tb;
	// Inputs
	reg clk;
	reg start;
	reg [15:0] par_in;
	wire sout;
    wire sclk;
    wire sclrn;
    wire EN;
    
	// Instantiate the Unit Under Test (UUT)
	P2S #(.BIT_WIDTH(16)) UUT (
		.clk(clk), 
		.start(start), 
		.par_in(par_in),
		.sclk(sclk), 
		.sclrn(sclrn), 
		.sout(sout), 
		.EN(EN)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		start = 0;
		par_in = 0;
		#1500;
		par_in = 16'b1111_0000_1111_0000;
		start = 1;
		#10; start = 0;
	end

	always begin
		clk=0; #10;
		clk=1; #10;
	end
endmodule