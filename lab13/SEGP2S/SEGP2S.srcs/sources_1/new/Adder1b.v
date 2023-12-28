module Adder1b( A,
                B,
                Cin,
                Cout,
                S );

    input A;
    input B;
    input Cin;
    output Cout;
    output S;
    
    assign S = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A | B));

endmodule
