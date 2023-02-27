`timescale 1 ns / 1 ps

module ander4 (a, b, result);

    input [15:0] a,b;
    output [15:0] result;
    wire [7:0] c,d;

    assign c = a[15:8] & b[15:8];
    assign d = a[7:0] & b[7:0];
    assign result = {c,d};

endmodule
