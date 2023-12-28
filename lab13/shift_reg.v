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
    output [BIT_WIDTH-1:0] Q);
    
    
    reg[BIT_WIDTH-1:0] rev;
    initial rev = 0;
    always @(posedge clk) begin
        if(shiftn_loadp) 
            rev = par_in;
        else begin
            rev = rev >> 1;
            rev[BIT_WIDTH-1] = shift_in;
        end
    end

    assign Q = rev;
endmodule
