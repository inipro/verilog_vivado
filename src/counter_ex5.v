module counter_ex5(clk,clr,q);
    
    input clk,clr;
    output [3:0] q;
    
    reg [31:0] cnt;
    
    always @(posedge clr or posedge clk)
    begin
        if(clr)
            cnt <= 32'h00000000;
        else
            cnt <= cnt + 1;
    end
    
    assign q = cnt[3:0];
    
endmodule
