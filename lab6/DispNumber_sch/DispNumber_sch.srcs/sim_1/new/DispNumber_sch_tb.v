`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/08 20:25:25
// Design Name: 
// Module Name: DispNumber_sch_tb
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

module DispNumber_sch_tb(

    );
integer i;
// Inputs
reg[1:0] BTN;
reg[7:0] SW;

// Output
wire[3:0] AN;
wire[7:0] SEGMENT;

// Instantiate the UUT
DispNumber_sch DispNumber_sch_inst (
    .BTN(BTN),
    .SW(SW),
    .AN(AN),
    .SEGMENT(SEGMENT)
);
initial begin
	BTN = 2'b00;
	SW = 8'b000000000;
	
	for (i=0; i<=15;i=i+1) begin
		#50;
		SW[7:0]=i;
		BTN = i;
	end

end

endmodule

