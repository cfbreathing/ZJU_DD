`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/31 02:52:03
// Design Name: 
// Module Name: LampCtrl_tb
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
module LampCtrl_tb();
    // Inputs
    reg S1;
    reg S3;
    reg S2;
    // Output
    wire F;
    // Bidirs
    // Instantiate the UUT
    LampCtrl UUT (
        .S1(S1),
        .S3(S3),
        .S2(S2),
        .F(F)
    );
// Initialize Inputs
    integer i;
    initial begin
        for(i = 0; i <= 8; i = i+1)begin
            {S3,S2,S1}<=i;
            #50;
        end
    end
endmodule
