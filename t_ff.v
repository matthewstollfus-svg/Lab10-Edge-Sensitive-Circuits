module t_ff(
    input T,
    input clk,
    output Q,
    output Qnot
);

wire D;

assign D = T ^ Q;

d_ff storage(
    .D(D),
    .clk(clk),
    .Q(Q),
    .Qnot(Qnot)
);

endmodule