`timescale 1 ns / 1 ps

module ander5 (a, b, result);

    input [15:0] a,b;
    output reg [15:0] result;

    always @ (a,b)
    begin
        result <= a & b;
    end

endmodule
