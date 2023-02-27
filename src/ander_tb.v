`timescale 1 ns / 1 ps

module ander_tb;
  reg a, b;
  wire result;
  ander uut (.a(a),.b(b),.result(result));
  initial begin
    a=0;	b=0;
    #200;
    a=0;	b=1;
    #200;
    a=1;	b=1;
  end
endmodule
