module stop_check (
    input wire CLK, RST,
    input wire stp_chk_en, sampled_bit, valid,
    output reg stp_err
);

    always @(posedge CLK or negedge RST) begin
        if (!RST)
            stp_err <= 0;
        else if (stp_chk_en && sampled_bit != 1 && valid)
            stp_err <= 1;
        else if (stp_chk_en && sampled_bit == 1 && valid)
            stp_err <= 0;
    end

endmodule