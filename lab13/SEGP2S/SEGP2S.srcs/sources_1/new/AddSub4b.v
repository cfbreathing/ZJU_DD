module AddSub4b( A,
                 B,
                 Co,
                 Ctrl,
                 S );

   input [3:0] A;
   input [3:0] B;
   input       Ctrl;

   output       Co;
   output [3:0] S;

    wire AddSub1b_1_Co;
    wire AddSub1b_2_Co;
    wire AddSub1b_3_Co;

   AddSub1b   AddSub1b_4 (.A(A[3]),
                          .B(B[3]),
                          .Ci(AddSub1b_3_Co),
                          .Co(Co),
                          .Ctrl(Ctrl),
                          .S(S[3]));

   AddSub1b   AddSub1b_3 (.A(A[2]),
                          .B(B[2]),
                          .Ci(AddSub1b_2_Co),
                          .Co(AddSub1b_3_Co),
                          .Ctrl(Ctrl),
                          .S(S[2]));

   AddSub1b   AddSub1b_2 (.A(A[1]),
                          .B(B[1]),
                          .Ci(AddSub1b_1_Co),
                          .Co(AddSub1b_2_Co),
                          .Ctrl(Ctrl),
                          .S(S[1]));

   AddSub1b   AddSub1b_1 (.A(A[0]),
                          .B(B[0]),
                          .Ci(Ctrl),
                          .Co(AddSub1b_1_Co),
                          .Ctrl(Ctrl),
                          .S(S[0]));

endmodule
