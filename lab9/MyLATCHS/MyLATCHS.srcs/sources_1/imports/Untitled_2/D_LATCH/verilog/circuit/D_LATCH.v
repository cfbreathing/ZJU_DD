/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : D_LATCH                                                      **
 **                                                                          **
 *****************************************************************************/

module D_LATCH( C,
                D,
                Q,
                Qbar );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input C;
   input D;

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

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet1 = C;
   assign s_logisimNet3 = D;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Q    = s_logisimNet2;
   assign Qbar = s_logisimNet0;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet4 = ~s_logisimNet3;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   NAND_GATE #(.BubblesMask(2'b00))
      NAND_4 (.input1(s_logisimNet1),
              .input2(s_logisimNet3),
              .result(s_logisimNet6));

   NAND_GATE #(.BubblesMask(2'b00))
      NAND_1 (.input1(s_logisimNet5),
              .input2(s_logisimNet2),
              .result(s_logisimNet0));

   NAND_GATE #(.BubblesMask(2'b00))
      NAND_3 (.input1(s_logisimNet4),
              .input2(s_logisimNet1),
              .result(s_logisimNet5));

   NAND_GATE #(.BubblesMask(2'b00))
      NAND_2 (.input1(s_logisimNet0),
              .input2(s_logisimNet6),
              .result(s_logisimNet2));


endmodule