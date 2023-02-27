module mult_tree(
    input clk,

    input[3:0] i_a, i_b, i_c, i_d,
    output[7:0] o_result
);

    reg[3:0] a_buf, b_buf, c_buf, d_buf;
    reg[11:0] abb_result, cdd_result;
    reg[23:0] result_buf;

    always @(posedge clk)
    begin
       a_buf <= i_a;
       b_buf <= i_b;
       c_buf <= i_c;
       d_buf <= i_d;
       
       abb_result <= ((a_buf * b_buf) * b_buf);
       cdd_result <= ((c_buf * d_buf) * d_buf);

       result_buf <= abb_result * cdd_result;
    end
    
    assign o_result = result_buf[23:16];
endmodule
