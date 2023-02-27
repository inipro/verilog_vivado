module counter_ex4(clk,clr,cnten,updown,q);

	input clk,clr,cnten,updown; 
	output reg [15:0] q = 16'h0000;

	always @ (posedge clk)
	begin
		if(clr)
			q <= 16'h0000;
		else if(cnten) begin
			if(updown)
				q <= q + 1;
			else
				q <= q - 1;	 
		end
	end

endmodule
