`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/13 05:01:59
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
    input SW,
    output [3:0] AN,
    output [7:0] SEGMENT,
    output wire seg_clk,
    output wire seg_clrn,
    output wire seg_sout,
    output wire SEG_PEN
);

    wire clk_1s;
    wire clk_100ms;
    wire [31:0] div;
    clk_1s clk_div_1s (.clk(clk), .clk_1s(clk_1s));
    clk_100ms clk_div_100ms (.clk(clk), .clk_100ms(clk_100ms)); // Refer to the code of clk_1s to complete this module
    clk_div clk_div(.clk(clk), .rst(1'b0), .clkdiv(div));
    wire clk_counter = (SW == 1'b0) ? clk_100ms : clk_1s; // Connect this clk_counter to CP-port of 74LS161

    wire hour_CO;
    wire min_to_hour;
    wire dummy_CO_1;
    wire dummy_CO_2;
    wire dummy_CO_3;
    wire dummy_CO_4;
    wire [3:0] hour_tens;
    wire [3:0] hour_ones;
    wire [3:0] min_tens;
    wire [3:0] min_ones;
    wire min_one_carry = ~(min_ones[3] & ~min_ones[2] & min_ones[1] & ~min_ones[0]);
    wire min_tens_carry = ~(~min_tens[3] & min_tens[2] & min_tens[1] & ~min_tens[0]);
    wire hour_ones_carry = ~(hour_ones[3] & ~hour_ones[2] & hour_ones[1] & ~hour_ones[0]);
    wire hour_tens_carry = ~(~hour_tens[3] & ~hour_tens[2] & hour_tens[1] & ~hour_tens[0] & 
                                ~hour_ones[3] & hour_ones[2] & ~hour_ones[1] & ~hour_ones[0]);

    My74LS161 a0(.CP(clk_counter), .CRn(min_one_carry), .LDn(1'b1), .Q(min_ones),
                 .D(4'b0000), .CTT(1'b1), .CTP(1'b1), .CO(dummy_CO_1));
    My74LS161 a1(.CP(~min_one_carry), .CRn(min_tens_carry), .LDn(1'b1), .Q(min_tens),
                 .D(4'b0000), .CTT(1'b1), .CTP(1'b1), .CO(dummy_CO_2));
    My74LS161 a2(.CP(~min_tens_carry), .CRn(hour_ones_carry & hour_tens_carry), .LDn(1'b1), .Q(hour_ones),
                 .D(4'b0000), .CTT(1'b1), .CTP(1'b1), .CO(dummy_CO_3));
    My74LS161 a3(.CP(~hour_ones_carry), .CRn(hour_tens_carry), .LDn(1'b1), .Q(hour_tens), 
                 .D(4'b0000), .CTT(1'b1), .CTP(1'b1), .CO(dummy_CO_4));

    DisplayNumber display_inst(.clk(clk), .hexs({hour_tens, hour_ones, min_tens, min_ones}), 
                .points(4'b0100), .rst(1'b0), .LEs(4'b0000), .AN(AN), .SEGMENT(SEGMENT));

	SSeg_Dev SSeg(.clk(clk), .rst(1'b0), .Start(div[20]),
	.flash(1'b1), .Hexs({12'h000, hour_tens,hour_ones,4'h0,min_tens,min_ones}), .point(8'b0010_0100),
	.LES(8'b00_1_00_1_00), .seg_clk(seg_clk), .seg_sout(seg_sout), 
	.SEG_PEN(SEG_PEN), .seg_clrn(seg_clrn));
    
endmodule

