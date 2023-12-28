`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/27 06:32:09
// Design Name: 
// Module Name: LEDP2S
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


module LEDP2S(
    input clk,
    input start,
    input[15:0] par_in,
    output sclk,
    output sclrn,
    output sout,
    output EN
    );
    
	P2S #(.BIT_WIDTH(16)) UUT (
		.clk(clk), 
		.start(start), 
		.par_in(par_in),
		.sclk(sclk), 
		.sclrn(sclrn), 
		.sout(sout), 
		.EN(EN)
	);
	
endmodule
