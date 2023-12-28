`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/27 06:36:35
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


module Top(
    input clk,
    input [15:0]SW,
    output [3:0] AN,
    output [7:0] SEGMENT,
    output LED_CLK, LED_CLR, LED_D0, LED_EN
    );

    wire [15:0] number;
    wire clk_1s;
    wire [31:0] div;
   
    clk_div U0 (.clk(clk), .rst(1'b0), .clkdiv(div));
    CreateNumber U1 (.btn(SW[3:0]), .num(number));
    DisplayNumber U2 (.clk(clk), .hexs(number), 
                .points(4'b0000), .rst(1'b0), .LEs(4'b0000), .AN(AN), .SEGMENT(SEGMENT));
    LEDP2S U3 (.clk(clk), .start(div[20] && SW[15]), .par_in(number),.sclk(LED_CLK), 
		          .sclrn(LED_CLR), .sout(LED_D0), .EN(LED_EN));        
            
endmodule
