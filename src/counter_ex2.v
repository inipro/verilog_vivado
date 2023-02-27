module counter_ex2(clk,clr,q);

	input clk,clr; 
	output reg [15:0] q = 16'h0000;

	always @ (posedge clk)
	begin
		if(clr)
			q <= 16'h0000;
		else begin
			q <= q + 1;
			if(q==999) begin
				q <= 16'h0000;
				// 특정시간마다 해야 할 일
			end
		end
	end

endmodule
