`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/08 15:46:24
// Design Name: 
// Module Name: MyMC14495_tb
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


module MyMC14495_tb(

    );
    integer i;
    // Inputs
    reg D0;
    reg D1;
    reg D2;
    reg D3;
    reg LE;
    reg point;
    
    // Output
    wire p;
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;

// Instantiate the UUT
MyMC14495 MC14495_inst (
    .D0(D0), 
    .D1(D1), 
    .D2(D2), 
    .D3(D3), 
    .LE(LE), 
    .point(point), 
    .p(p), 
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d), 
    .e(e), 
    .f(f), 
    .g(g)
);
initial begin
	D3 = 0;
	D2 = 0;
	D1 = 0;
	D0 = 0;
	LE = 0;
	point = 0;
	
	for (i=0; i<=15;i=i+1) begin
		#50;
		{D3,D2,D1,D0}=i;
		point = i;
	end
		
	#50;
	LE = 1;
end

endmodule
