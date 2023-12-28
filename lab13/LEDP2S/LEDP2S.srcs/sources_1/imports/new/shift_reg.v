`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/20 16:59:10
// Design Name: 
// Module Name: shift_reg
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
module shift_reg    
    #(parameter BIT_WIDTH = 8)(
    input wire clk, shiftn_loadp, shift_in,
    input wire [BIT_WIDTH-1:0] par_in,
    output wire [BIT_WIDTH-1:0] Q);
    
    wire [BIT_WIDTH-1:0]D_in, S_out, Sbar_out;
    wire [BIT_WIDTH:0] S_in;
    
    assign S_in[0] = shift_in;

    genvar i; // Used in generate block
    generate 
        for(i = 0; i < BIT_WIDTH; i = i+1) begin
            AND2 and2_0 (.I0(S_in[i]), .I1(~shiftn_loadp), .O(Sbar_out[BIT_WIDTH-1-i]));
            AND2 and2_1 (.I0(par_in[i]), .I1(shiftn_loadp), .O(S_out[i]));
            OR2 or2_0 (.I0(Sbar_out[i]), .I1(S_out[i]), .O(D_in[i]));
            FD fd (.clk(clk), .D(D_in[i]), .Q(Q[i]));
            wire1 w (.I(Q[i]), .O(S_in[BIT_WIDTH-i]));
        end
    endgenerate

endmodule
