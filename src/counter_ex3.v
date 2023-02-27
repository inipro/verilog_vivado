module counter_ex3(clk,clr,cnten,q);

	input clk,clr,cnten; 
	output reg [15:0] q = 16'h0000;

	always @ (posedge clk)
	begin
		if(clr)
			q <= 16'h0000;
		else if(cnten) begin
			q <= q + 1;
			if(q==999) begin
				q <= 16'h0000;
				// 특정시간마다 해야 할 일
			end
		end
	end

endmodule
