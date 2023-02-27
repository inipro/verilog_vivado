module reg16_ex5(clk,a,d);

	input clk,a;
	output reg d;
	reg b,c;

	always @ (posedge clk)
	begin
		b = a;
		c = b;
		d = c;
	end

endmodule
