/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : D_FLIPFLOP                                                   **
 **                                                                          **
 *****************************************************************************/

module D_FLIPFLOP( C,
                   D,
                   Q,
                   Qbar,
                   Rbar,
                   Sbar );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input C;
   input D;
   input Rbar;
   input Sbar;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output Q;
   output Qbar;

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
   wire s_logisimNet7;
   wire s_logisimNet8;
   wire s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet0 = C;
   assign s_logisimNet6 = Rbar;
   assign s_logisimNet8 = Sbar;
   assign s_logisimNet9 = D;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Q    = s_logisimNet1;
   assign Qbar = s_logisimNet3;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   NAND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      NAND3_4 (.input1(s_logisimNet8),
               .input2(s_logisimNet2),
               .input3(s_logisimNet5),
               .result(s_logisimNet7));

   NAND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      NAND3_3 (.input1(s_logisimNet7),
               .input2(s_logisimNet6),
               .input3(s_logisimNet0),
               .result(s_logisimNet5));

   NAND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      NAND3_6 (.input1(s_logisimNet8),
               .input2(s_logisimNet5),
               .input3(s_logisimNet3),
               .result(s_logisimNet1));

   NAND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      NAND3_2 (.input1(s_logisimNet5),
               .input2(s_logisimNet0),
               .input3(s_logisimNet2),
               .result(s_logisimNet4));

   NAND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      NAND3_1 (.input1(s_logisimNet4),
               .input2(s_logisimNet9),
               .input3(s_logisimNet6),
               .result(s_logisimNet2));

   NAND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      NAND3_5 (.input1(s_logisimNet1),
               .input2(s_logisimNet4),
               .input3(s_logisimNet6),
               .result(s_logisimNet3));


endmodule
