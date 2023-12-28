`timescale 1ns / 1ps

module MyMC14495(   D0,
                    D1,
                    D2,
                    D3,
                    LE,
                    point,
                    a,
                    b,
                    c,
                    d,
                    e,
                    f,
                    g,
                    p
                    );
    input D0;
    input D1;
    input D2;
    input D3;
    input LE;
    input point;

    output a;
    output b;
    output c;
    output d;
    output e;
    output f;
    output g;
    output p;

assign a = LE || 
                ((~D3 & ~D2 & ~D1 & D0) |
                 (~D3 & D2 & ~D1 & ~D0) |
                 (D3 & ~D2 & D1 & D0) |
                 (D3 & D2 & ~D1 & D0));
                 
assign b = LE || 
                ((~D3 & D2 & ~D1 & D0) |
                 (D3 & D1 & D0) |
                 (D2 & D1 & ~D0) |
                 (D3 & D2 & ~D0));        
                 
assign c = LE || 
                ((~D3 & ~D2 & D1 & ~D0) |
                 (D3 & D2 & D1) |
                 (D3 & D2 & ~D0));

assign d = LE || 
                ((~D3 & D2 & ~D1 & ~D0) |
                 (~D3 & ~D2 & ~D1 & D0) |
                 (D3 & ~D2 & D1 & ~D0) |
                 (D2 & D1 & D0));
                 
assign e = LE || 
                ((~D2 & ~D1 & D0) |
                 (~D3 & D2 & ~D1) |
                 (~D3 & D0));

assign f = LE || 
                ((D3 & D2 & ~D1 & D0) |
                 (~D3 & ~D2 & D1) |
                 (~D3 & ~D2 & D0) |
                 (~D3 & D1 & D0));  

assign g = LE || 
                ((~D3 & D2 & D1 & D0) |
                 (D3 & D2 & ~D1 & ~D0) |
                 (~D3 & ~D2 & ~D1));

assign p = ~point;
endmodule