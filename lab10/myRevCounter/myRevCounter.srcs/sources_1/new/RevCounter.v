`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/29 02:39:44
// Design Name: 
// Module Name: Top
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


/** module RevCounter
  * input
    *   clk: A clock signal driven by module clk_1s.
    *   s: 1 for increment, 0 for decrement
    * output
    *   cnt: a 16-bits register
    *   Rc: rise when the counter reset(i.e. carry will be set), that is, Rc becomes 1 when
    *           increment(s=1 & cnt=F) or decrement(s=0, cnt=0)
 */

//! NOTE: DO NOT CHANGE THE MODULE NAME & PORT NAMES
module RevCounter( 
    input wire clk,
    input wire rst,
    input wire s,
    output reg [15:0] cnt=0,
    output wire Rc
);
    assign Rc = (~s & (~|cnt)) | (s & (&cnt));
    always @(posedge clk) begin
        if (s == 1'b1) begin
            cnt <= cnt + 1'b1;
        end
        else begin
            cnt <= cnt - 1'b1;
        end
    end


endmodule

