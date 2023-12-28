`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 17:13:09
// Design Name: 
// Module Name: LampCtrl_1_sim
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


module LampCtrl_1_sim();
// Inputs
   reg S1;
   reg S2;
   reg S3;

// Output
   wire F;

// Bidirs

// Instantiate the UUT
   LampCtrl_1 UUT (
		.S1(S1), 
		.S2(S2), 
		.S3(S3), 
		.F(F)
	);
// Initialize Inputs
//   `ifdef auto_init
	initial begin
		S1 = 0;
		S2 = 0;
		S3 = 0;
	#50 S1 = 1;
	#50 S1 = 0;
		S2 = 1;
	#50 S1 = 1;
	#50 S1 = 0;
		S2 = 0;
		S3 = 1;
   #50 S1 = 1;
	#50 S1 = 0;
		S2 = 1;
	#50 S1 = 1;
	#50 S1 = 0;
		S2 = 0;
		S3 = 0;
	end
//  `endif

endmodule

