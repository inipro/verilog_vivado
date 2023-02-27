`timescale 1 ns / 1 ps

module ander3 (a, b, result);

    input [15:0] a,b;
    output [15:0] result;
    wire [15:0] c;

    assign c[15:8] = a[15:8] & b[15:8];
    assign c[7:0] = a[7:0] & b[7:0];
    assign result = c;

endmodule
