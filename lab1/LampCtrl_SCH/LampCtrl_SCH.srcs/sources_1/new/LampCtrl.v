`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 17:33:48
// Design Name: 
// Module Name: LampCtrl
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


`timescale 1ns / 1ps
module lamp_ctrl(
 	input wire clk, 
	input wire S1, 
	input wire S2, 
	input wire S3,
	output wire F
	);

	parameter C_NUM = 8;
	parameter C_MAX = 8'hFF;

	reg [C_NUM-1:0] count;
	wire [C_NUM-1:0] c_next;
	
	initial begin	//初始化
   	count = C_MAX;//计数最大值
	end
	//button pressed
    assign w = S1^S2^S3;

	//lamp logic
	assign F = (count < C_MAX) ? 1'b1 : 1'b0;
	//count<最大值时F=1;
  // count=最大值C_MAX时为0
	//count logic
	always@(posedge clk)
	begin
		if(w == 1'b1)
			count = 0;
		else if(count < C_MAX)
			count = c_next;
	end
	//next logic
	assign c_next = count + 1'b1;

endmodule

