`timescale 1 ns / 1 ps
?
module top_name (top_a, top_b, top_result);
?
    input [3:0] top_a, top_b;
    output [3:0] top_result;
?
    ander u1(	 .a(top_a[3]), .b(top_b[3]), .result(top_result[3]) );
    ander u2(	 .a(top_a[2]), .b(top_b[2]), .result(top_result[2]) );
?   ander u3(	 .a(top_a[1]), .b(top_b[1]), .result(top_result[1]) );
?   ander u4(	 .a(top_a[0]), .b(top_b[0]), .result(top_result[0]) );
?
endmodule
