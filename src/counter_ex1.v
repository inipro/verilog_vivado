module counter_ex1(clk,clr,q);

	input clk,clr; 
	output reg [15:0] q = 16'h0000;

	always @ (posedge clk)
	begin
		if(clr)
			q <= 16'h0000;
		else
			q <= q + 1;
	end

endmodule
