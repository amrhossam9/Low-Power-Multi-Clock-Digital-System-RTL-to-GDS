module data_sampling (
    input wire       CLK, RST,
    input wire       data_samp_en, RX_IN,
    input wire [5:0] edge_cnt, Prescale,
    output reg       sampled_bit, valid
);

    reg[2:0] samples;
    wire sample1_cond, sample2_cond, sample3_cond;

    assign sample1_cond = ((Prescale >> 1) - 1) == edge_cnt && data_samp_en;
    assign sample2_cond = ((Prescale >> 1))     == edge_cnt && data_samp_en;
    assign sample3_cond = ((Prescale >> 1) + 1) == edge_cnt && data_samp_en;

    always @(posedge CLK or negedge RST) begin
        if (!RST)
        begin
            samples <= 0;
            valid <= 0;
        end
        else if (sample1_cond)
            samples[0] <= RX_IN;
        else if (sample2_cond)
            samples[1] <= RX_IN;
        else if (sample3_cond)
        begin
            samples[2] <= RX_IN;
            valid <= 1;
        end
        else 
            valid <= 0;

    end

    always @(*) begin

        if (samples[0] == samples[1])
            sampled_bit = samples[0];
        else if (samples[0] == samples[2]) 
            sampled_bit = samples[0];
        else
            sampled_bit = samples[1];

    end

endmodule
