//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/08 15:59:24
// Design Name: 
// Module Name: DispNumber_sch
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

module DispNumber_sch(BTN, 
                      SW, 
                      AN, 
                      SEGMENT
                      );

    input [1:0] BTN;
    input [7:0] SW;
   output [3:0] AN;
   output [7:0] SEGMENT;
   
   
   MyMC14495  XLXI_1 (.D0(SW[0]), 
                     .D1(SW[1]), 
                     .D2(SW[2]), 
                     .D3(SW[3]), 
                     .LE(BTN[0]), 
                     .point(BTN[1]), 
                     .a(SEGMENT[0]), 
                     .b(SEGMENT[1]), 
                     .c(SEGMENT[2]), 
                     .d(SEGMENT[3]), 
                     .e(SEGMENT[4]), 
                     .f(SEGMENT[5]), 
                     .g(SEGMENT[6]), 
                     .p(SEGMENT[7]));

   assign AN[3:0] = ~SW[7:4];
   
endmodule

