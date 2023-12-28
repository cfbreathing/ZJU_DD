module AddSub1b( A,
                 B,
                 Ci,
                 Co,
                 Ctrl,
                 S );

   input A;
   input B;
   input Ci;
   input Ctrl;

   output Co;
   output S;

   Adder1b   Adder1b_1 (.A(A),
                        .B(Ctrl^B),
                        .Cin(Ci),
                        .Cout(Co),
                        .S(S));

endmodule
