`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/27 06:00:39
// Design Name: 
// Module Name: P2S
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

module P2S
#(parameter BIT_WIDTH = 8)(
    input clk,
    input start,
    input[BIT_WIDTH-1:0] par_in,
    output sclk,
    output sclrn,
    output sout,
    output EN
);

    wire[BIT_WIDTH:0] Q;
    wire shiftn_loadp;
    wire finish;
    
    SR_Latch U1(.S(start && finish), .R(!finish), .Q(shiftn_loadp));

    shift_reg #(.BIT_WIDTH(BIT_WIDTH+1))
        U2 (.clk(clk), .shiftn_loadp(shiftn_loadp), .shift_in(1'b1),
            .par_in({1'b0, par_in}), .Q(Q));
            
    assign finish = &(Q[BIT_WIDTH:1]);
    assign EN = !start && finish;
    assign sclk = finish | !clk;
    assign sclrn = 1'b1;
    assign sout = Q[0];

endmodule

