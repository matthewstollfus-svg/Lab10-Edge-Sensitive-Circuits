module jk_ff(
    input J,
    input K,
    input clk,
    output Q,
    output Qnot
);

wire D;

assign D = (J & ~Q)|(~K & Q);

d_ff storage(
    .D(D),
    .clk(clk),
    .Q(Q),
    .Qnot(Qnot)
);

endmodule