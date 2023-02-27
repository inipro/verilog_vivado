module detect_01_fsm(
    rst,
    clk,
    i_seq,
    o_detected                  
);
    input rst;
    input clk;
    input i_seq;
    output reg o_detected;

    parameter S_IDLE=0, S_DETECT_0=1, S_DETECT_01=2;
    reg [1:0] current_state, next_state;

    always @(*) 
    begin
        next_state <= current_state;
        case (current_state)
            S_IDLE :
                if (i_seq == 1'b0)
                    next_state <= S_DETECT_0;
            S_DETECT_0 :
                if (i_seq == 1'b1)
                    next_state <= S_DETECT_01;
            S_DETECT_01 : 
                if (i_seq == 1'b0) 
                    next_state <= S_DETECT_0;
                else
                    next_state <= S_IDLE;
            default :
                next_state <= S_IDLE;
        endcase
    end

    always @(posedge clk)
    begin
        if (rst)
            current_state <= S_IDLE;
        else
            current_state <= next_state;
    end

    always @(*)
    begin
        case(current_state)
            S_IDLE:
                o_detected <= 1'b0;
            S_DETECT_0:
                o_detected <= 1'b0;
            S_DETECT_01:
                o_detected <= 1'b1;
            default:
                o_detected <= 1'b0;
        endcase
    end
endmodule
