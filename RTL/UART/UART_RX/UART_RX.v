module UART_RX (
    input wire CLK, RST,
    input wire RX_IN,
    input wire PAR_EN, PAR_TYP,
    input wire [5:0] Prescale,
    output wire data_valid,
    output wire [7:0] P_DATA,
    output wire par_err, stp_err
);

    wire [2:0] bit_cnt;
    wire [5:0] edge_cnt;
    wire strt_glitch;
    wire par_chk_en, strt_chk_en, stp_chk_en, deser_en;
    wire enable, data_samp_en, sampled_bit, valid;

    FSM FSM_BLOCK (
        .CLK(CLK), 
        .RST(RST),
        .RX_IN(RX_IN),
        .PAR_EN(PAR_EN),
        .bit_cnt(bit_cnt),
        .edge_cnt(edge_cnt),
        .par_err(par_err), 
        .strt_glitch(strt_glitch), 
        .stp_err(stp_err),
        .par_chk_en(par_chk_en), 
        .strt_chk_en(strt_chk_en), 
        .stp_chk_en(stp_chk_en), 
        .deser_en(deser_en),
        .data_valid(data_valid), 
        .enable(enable), 
        .data_samp_en(data_samp_en),
        .Prescale(Prescale)
    );

    data_sampling data_sampling_BLOCK (
        .CLK(CLK), 
        .RST(RST),
        .data_samp_en(data_samp_en), 
        .RX_IN(RX_IN),
        .edge_cnt(edge_cnt), 
        .Prescale(Prescale),
        .sampled_bit(sampled_bit), 
        .valid(valid)
    );

    parity_check parity_check_BLOCK (
        .CLK(CLK), 
        .RST(RST),
        .PAR_TYP(PAR_TYP), 
        .par_chk_en(par_chk_en), 
        .sampled_bit(sampled_bit), 
        .valid(valid),
        .data(P_DATA),
        .par_err(par_err)
    );

    strt_check strt_check_BLOCK (
        .CLK(CLK), 
        .RST(RST),
        .strt_chk_en(strt_chk_en), 
        .sampled_bit(sampled_bit), 
        .valid(valid),
        .strt_glitch(strt_glitch)
    );

    stop_check stop_check_BLOCK (
        .CLK(CLK), 
        .RST(RST),
        .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), 
        .valid(valid),
        .stp_err(stp_err)
    );

    edge_bit_counter edge_bit_counter_BLOCK (
        .CLK(CLK), 
        .RST(RST),
        .enable(enable),
        .bit_cnt(bit_cnt),
        .edge_cnt(edge_cnt), 
        .Prescale(Prescale)
    );

    deserializer deserializer_BLOCK (
        .CLK(CLK), 
        .RST(RST),
        .deser_en(deser_en), 
        .sampled_bit(sampled_bit), 
        .valid(valid),
        .P_DATA(P_DATA),
        .bit_cnt(bit_cnt)
    );

endmodule