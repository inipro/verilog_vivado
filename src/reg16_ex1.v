module reg16_ex1(clk,d,q);

    input clk;
    input [15:0] d;
    output reg [15:0] q;

    always @ (posedge clk)
    begin
        q <= d;
    end

endmodule
