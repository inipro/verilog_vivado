`timescale 1 ns / 1 ps

module ander (a, b, result);

    input a,b;
    output result;
    wire c;

    assign c = a & b;
    assign result = c;

endmodule
