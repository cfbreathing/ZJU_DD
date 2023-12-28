`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 02:11:26
// Design Name: 
// Module Name: DisplaySync
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


module DisplaySync(
    scan,
    hexs,
    points,
    LEs,
    
    hex,
    point,
    LE,
    AN
    );
    
    input[1:0] scan;
    input[15:0] hexs;
    input[3:0] points;
    input[3:0] LEs;
    
    output[3:0] hex;
    output point;
    output LE;
    output[3:0] AN;
    
    Mux4to14b mux_hexs(
        .s(scan),
        .I0(hexs[3:0]),
        .I1(hexs[7:4]),
        .I2(hexs[11:8]),
        .I3(hexs[15:12]),
        .o(hex)
    );
    
    Mux4to1 mux_points(
        .s(scan),
        .I0(points[0]),
        .I1(points[1]),
        .I2(points[2]),
        .I3(points[3]),
        .o(point)
    );
    
    Mux4to1 mux_LE(
        .s(scan),
        .I0(LEs[0]),
        .I1(LEs[1]),
        .I2(LEs[2]),
        .I3(LEs[3]),
        .o(LE)
    );
    
    Mux4to14b mux_AN(
        .s(scan),
        .I0(4'b1110),
        .I1(4'b1101),
        .I2(4'b1011),
        .I3(4'b0111),
        .o(AN)
    );
endmodule
