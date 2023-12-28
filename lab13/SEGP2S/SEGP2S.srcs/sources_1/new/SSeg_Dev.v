`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/27 09:43:35
// Design Name: 
// Module Name: SSeg_Dev
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

//module SSeg_Dev(
//    input clk,
//    input flash,
//    input [31:0] Hexs,
//    input [7:0] LES,
//    input [7:0] point,
//    input rst,
//    input Start,
//    input seg_clk,
//    input seg_clrn,
//    input SEG_PEN,
//    input seg_sout
//);
module SSeg_Dev(
    input clk,
    input flash,
    input start,
    input [31:0] Hexs,
    input [7:0] points,
    input [7:0] LEs,
    output sclk,
    output sclrn,
    output sout,
    output SEG_PEN
);

   wire [63:0] SEGMENT;

   P2S #(.BIT_WIDTH(64)) M2 (.clk(clk), 
           .par_in(SEGMENT[63:0]), 
           .start(start), 
           .EN(SEG_PEN), 
           .sout(sout), 
           .sclk(sclk), 
           .sclrn(sclrn));

   HexsTo8Seg  SM1 (.flash(flash), 
                  .hexs(Hexs[31:0]), 
                  .LEs(LEs[7:0]), 
                  .points(points[7:0]), 
                  .seg_data(SEGMENT[63:0]));
    
endmodule
