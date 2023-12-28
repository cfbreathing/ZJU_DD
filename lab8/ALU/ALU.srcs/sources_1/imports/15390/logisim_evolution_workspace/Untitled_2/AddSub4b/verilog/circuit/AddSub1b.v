/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : AddSub1b                                                     **
 **                                                                          **
 *****************************************************************************/

module AddSub1b( A,
                 B,
                 Ci,
                 Co,
                 Ctrl,
                 S );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input A;
   input B;
   input Ci;
   input Ctrl;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output Co;
   output S;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet2;
   wire s_logisimNet3;
   wire s_logisimNet4;
   wire s_logisimNet5;
   wire s_logisimNet6;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet1 = Ci;
   assign s_logisimNet4 = B;
   assign s_logisimNet5 = Ctrl;
   assign s_logisimNet6 = A;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Co = s_logisimNet2;
   assign S  = s_logisimNet3;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet4),
               .input2(s_logisimNet5),
               .result(s_logisimNet0));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   Adder1b   Adder1b_1 (.A(s_logisimNet6),
                        .B(s_logisimNet0),
                        .Cin(s_logisimNet1),
                        .Cout(s_logisimNet2),
                        .S(s_logisimNet3));

endmodule
