`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/20 17:32:31
// Design Name: 
// Module Name: shift_reg_tb
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


module shift_reg_tb();
    reg clk, shiftn_loadp, shift_in;
    reg [7:0] par_in;
    wire [7:0] Q;
    
    shift_reg #(.BIT_WIDTH(8))
        UUT (.clk(clk), .shiftn_loadp(shiftn_loadp), .shift_in(shift_in), .par_in(par_in), .Q(Q));
        
	initial begin
		// Initialize Inputs
		clk = 0;
		shiftn_loadp = 0;
		shift_in = 0;
		par_in = 0;

		#100;
		// Add stimulus here
		shiftn_loadp = 0;
		shift_in = 1;
		par_in =0;
		#200;
		shiftn_loadp = 1;
		shift_in = 0;
		par_in = 8'b0101_0101;
		#500;
	end
	
	always begin
		clk = 0; #20;
		clk = 1; #20;
	end

endmodule
