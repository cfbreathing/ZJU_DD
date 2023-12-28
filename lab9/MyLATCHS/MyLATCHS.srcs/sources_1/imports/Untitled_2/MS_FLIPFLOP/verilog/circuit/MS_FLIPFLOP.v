/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : MS_FLIPFLOP                                                  **
 **                                                                          **
 *****************************************************************************/

module MS_FLIPFLOP( C,
                    Q,
                    Qbar,
                    R,
                    S );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input C;
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
   wire s_logisimNet4;
   wire s_logisimNet5;
   wire s_logisimNet6;
   wire s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet2 = C;
   assign s_logisimNet6 = S;
   assign s_logisimNet7 = R;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Q    = s_logisimNet1;
   assign Qbar = s_logisimNet0;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet4 = ~s_logisimNet2;

   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   CSR_LATCH   CSR_1 (.C(s_logisimNet2),
                      .Q(s_logisimNet3),
                      .Qbar(s_logisimNet5),
                      .R(s_logisimNet7),
                      .S(s_logisimNet6));

   CSR_LATCH   CSR_2 (.C(s_logisimNet4),
                      .Q(s_logisimNet1),
                      .Qbar(s_logisimNet0),
                      .R(s_logisimNet5),
                      .S(s_logisimNet3));

endmodule
