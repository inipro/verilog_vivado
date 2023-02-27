`timescale 1 ns / 1 ps

module ander6 (
    input[15:0] a, 
    input[15:0] b, 
    output reg[15:0] result
);

    always @ (a,b)
    begin
        result <= a & b;
    end

endmodule
