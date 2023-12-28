`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/13 04:45:15
// Design Name: 
// Module Name: My74LS161_tb
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


module My74LS161_tb();
    reg CP;
    reg CRn;
    reg LDn;
    reg [3:0] D;
    reg CTT;
    reg CTP;
    wire [3:0] Q;
    wire CO;
    
    My74LS161 UUT(.CP(CP), .CRn(CRn), .LDn(LDn), .D(D),
                .CTT(CTT), .CTP(CTP), .Q(Q), .CO(CO));
    
    initial begin
        CP = 1;
		CRn = 0;
		D = 0;
		CTP = 0;
		CTT = 0;
		LDn = 0;

		#100;
		CRn = 1;
		LDn = 1;
		D = 4'b1100;
		CTT = 0;
		CTP = 0;
		#30 CRn = 0;
		#20 CRn = 1;
		#10 LDn = 0;
		#30 CTT = 1;
		CTP = 1;
		#10 LDn = 1;

		#510;
		CRn = 0;
		#20 CRn = 1;
		#500;
	end
	
    always begin
        #40; CP = ~CP;
    end

	
endmodule