/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : AddSub4b                                                     **
 **                                                                          **
 *****************************************************************************/

module AddSub4b( A,
                 B,
                 Co,
                 Ctrl,
                 S );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [3:0] A;
   input [3:0] B;
   input       Ctrl;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       Co;
   output [3:0] S;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0] s_logisimBus17;
   wire [3:0] s_logisimBus18;
   wire [3:0] s_logisimBus19;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet2;
   wire       s_logisimNet3;
   wire       s_logisimNet4;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus17[3:0] = A;
   assign s_logisimBus18[3:0] = B;
   assign s_logisimNet16      = Ctrl;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Co = s_logisimNet10;
   assign S  = s_logisimBus19[3:0];

   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   AddSub1b   AddSub1b_4 (.A(s_logisimBus17[3]),
                          .B(s_logisimBus18[3]),
                          .Ci(s_logisimNet6),
                          .Co(s_logisimNet10),
                          .Ctrl(s_logisimNet16),
                          .S(s_logisimBus19[3]));

   AddSub1b   AddSub1b_2 (.A(s_logisimBus17[1]),
                          .B(s_logisimBus18[1]),
                          .Ci(s_logisimNet4),
                          .Co(s_logisimNet5),
                          .Ctrl(s_logisimNet16),
                          .S(s_logisimBus19[1]));

   AddSub1b   AddSub1b_3 (.A(s_logisimBus17[2]),
                          .B(s_logisimBus18[2]),
                          .Ci(s_logisimNet5),
                          .Co(s_logisimNet6),
                          .Ctrl(s_logisimNet16),
                          .S(s_logisimBus19[2]));

   AddSub1b   AddSub1b_1 (.A(s_logisimBus17[0]),
                          .B(s_logisimBus18[0]),
                          .Ci(s_logisimNet16),
                          .Co(s_logisimNet4),
                          .Ctrl(s_logisimNet16),
                          .S(s_logisimBus19[0]));

endmodule
