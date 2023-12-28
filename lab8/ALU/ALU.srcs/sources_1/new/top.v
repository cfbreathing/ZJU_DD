`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 15:23:16
// Design Name: 
// Module Name: top
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
        input wire clk,
        input wire [1:0] BTN,
        input wire [1:0] SW1,
        input wire [1:0] SW2,
        input wire [11:0] SW,
        output wire [3:0] AN,
        output wire [7:0] SEGMENT,
        output wire BTNX4,
        output wire seg_clk,
        output wire seg_clrn,
        output wire seg_sout,
        output wire SEG_PEN

);
    wire [15:0] num;
    wire [1:0] btn_out;
    wire [3:0] res;
    wire Co;
    wire [31:0] clk_div;
    wire [15:0] disp_hexs;

    assign disp_hexs[15:12] = num[7:4];
    assign disp_hexs[11:8]  = num[3:0];
    assign disp_hexs[7:4]   = {3'b000, Co};
    assign disp_hexs[3:0]   = res[3:0];
    assign BTNX4 = 1'b0;

    clkdiv m8(.clk(clk), .rst(0), .div_res(clk_div));
    pbdebounce m0(.clk(clk_div[17]), .button(BTN[0]), .pbreg(btn_out[0]));
    pbdebounce m1(.clk(clk_div[17]), .button(BTN[1]), .pbreg(btn_out[1]));

    CreateNumber m4(.btn(btn_out), .sw(SW1), .num(num[7:0])); // Attachment

    ALU m5(         .A(num[3:0]), 
                    .B(num[7:4]),                             
                    .S(SW2),                             
                    .res(res),                             
                    .cout(Co)); 

    DisplayNumber m6(.clk(clk), .hexs(disp_hexs), .LEs(4'b0000),
                                .points(SW[3:0]), .rst(1'b0),
                                .AN(AN), .SEGMENT(SEGMENT));

    SSeg_Dev m7(.clk(clk),.rst(1'b0),.Start(clk_div[20]),.flash(clk_div[25]),
        .Hexs({disp_hexs, disp_hexs}),.point({4'b0000,SW[3:0]}),.LES(SW[11:4]),
        .seg_clk(seg_clk),.seg_clrn(seg_clrn),.seg_sout(seg_sout),.SEG_PEN(SEG_PEN));

endmodule

