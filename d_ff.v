module d_ff(
    input D,
    input clk,
    output reg Q,
    output wire Qnot
);

    initial begin
        Q <= 0;
    end
        
    always @(posedge clk)
        Q <= D;
    
    assign Qnot = ~Q;
    
endmodule   