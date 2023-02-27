module reg16_ex3(clk,clr,clken,d,q);

	input clk,clr,clken;
	input [15:0] d;
	output reg [15:0] q;

	always @ (posedge clk)
	begin
		if(clr)
			q <= 16'h0000;
		else if(clken)
			q <= d;
	end

endmodule
