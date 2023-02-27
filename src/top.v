module top(clk,q);
    
    input clk;
    output [7:0] q;
    wire [31:0] qtmp;
    
    c_counter_binary_0 u1 (
      .CLK(clk),  // input wire CLK
      .Q(qtmp)      // output wire [31 : 0] Q
    );
    
    assign q = qtmp[31:24];
    
endmodule