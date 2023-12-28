/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : SR_LATCH                                                     **
 **                                                                          **
 *****************************************************************************/

module SR_LATCH( Q,
                 Qbar,
                 R,
                 S );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input R;
   input S;

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

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet2 = S;
   assign s_logisimNet3 = R;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Q    = s_logisimNet0;
   assign Qbar = s_logisimNet1;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   NAND_GATE #(.BubblesMask(2'b00))
      NAND_1 (.input1(s_logisimNet2),
              .input2(s_logisimNet1),
              .result(s_logisimNet0));

   NAND_GATE #(.BubblesMask(2'b00))
      NAND_2 (.input1(s_logisimNet0),
              .input2(s_logisimNet3),
              .result(s_logisimNet1));


endmodule
