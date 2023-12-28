module Top(
    input clk,
    input SW,
    input [3:0] BTN_Y,
    output BTN_X,
    output[3:0]AN,
    output[7:0] SEGMENT,
    output wire seg_clk,
    output wire seg_clrn,
    output wire seg_sout,
    output wire SEG_PEN
);

    wire [31:0] div;
    wire [3:0] btn_out;
    reg  [15:0] number = 16'b0;
    wire [3:0] A, B, C, D;
    wire [3:0] mux_out;
    wire Co;
    wire [3:0] ALU_res;

    assign BTN_X = 1'b0;

    clkdiv m0(.clk(clk), .rst(1'b0), .div_res(div));

    pbdebounce m1(.clk(div[17]), .button(BTN_Y[0]), .pbreg(btn_out[0]));
    pbdebounce m2(.clk(div[17]), .button(BTN_Y[1]), .pbreg(btn_out[1]));
    pbdebounce m3(.clk(div[17]), .button(BTN_Y[2]), .pbreg(btn_out[2]));
    pbdebounce m4(.clk(div[17]), .button(BTN_Y[3]), .pbreg(btn_out[3]));

    AddSub4b m5(.A(number[3:0]), .B(4'b0001), .Ctrl(SW), .S(A));
    AddSub4b m6(.A(number[7:4]), .B(4'b0001), .Ctrl(SW), .S(B));
    AddSub4b m7(.A(number[11:8]), .B(4'b0001), .Ctrl(SW), .S(C));
    AddSub4b m8(.A(number[15:12]), .B(4'b0001), .Ctrl(SW), .S(D));
    
    DisplayNumber m9(.clk(clk), .hexs(number), 
                            .LEs(4'b0000), .points(4'b0000), .rst(1'b0), .AN(AN),
                            .SEGMENT(SEGMENT));

    SSeg_Dev m10(.clk(clk),.start(div[10]),.flash(div[25]),
        .Hexs({number, number}),.points(8'b00000000),.LEs(8'b00000000),
        .sclk(seg_clk),.sclrn(seg_clrn),.sout(seg_sout),.SEG_PEN(SEG_PEN));

    always@(posedge btn_out[0]) number[3:0] = A;
    always@(posedge btn_out[1]) number[7:4] = B;
    always@(posedge btn_out[2]) number[11:8] = C;
    always@(posedge btn_out[3]) number[15:12] = D;

endmodule