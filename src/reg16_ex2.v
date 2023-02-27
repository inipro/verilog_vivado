module reg16_ex2(clk,clr,d,q);

	input clk,clr;
	input [15:0] d;
	output reg [15:0] q;

	always @ (posedge clk or posedge clr)
	begin
		if(clr)
			q <= 16'h0000;
		else
			q <= d;
	end

endmodule
