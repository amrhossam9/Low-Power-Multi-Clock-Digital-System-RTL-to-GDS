module UART_TX (
    input wire [7:0] P_DATA,
    input wire Data_Valid, PAR_TYP, PAR_EN,
    input wire CLK, RST,
    output wire TX_OUT, busy
);

    wire ser_done, ser_en, ser_data, par_bit;
    wire [1:0] mux_sel;

    fsm fsm_block (
    .ser_done(ser_done),
    .Data_Valid(Data_Valid),
    .PAR_EN(PAR_EN),
    .CLK(CLK),
    .RST(RST),
    .mux_sel(mux_sel), 
    .busy(busy),
    .ser_en(ser_en)
    );

    serializer serializer_block (
    .ser_done(ser_done),
    .Data_Valid(Data_Valid),
    .P_DATA(P_DATA),
    .CLK(CLK),
    .RST(RST),
    .ser_data(ser_data),
    .ser_en(ser_en),
    .busy(busy)
    );

    parityCalc parityCalc_block (
    .Data_Valid(Data_Valid), 
    .PAR_TYP(PAR_TYP),
    .P_DATA(P_DATA),
    .CLK(CLK), 
    .RST(RST),
    .par_bit(par_bit),
    .busy(busy)
    );
    
    wire [3:0] input_MUX = {par_bit, ser_data , 1'b1,1'b0};

    MUX MUX_block (
    .mux_sel(mux_sel),
    .inputs(input_MUX),
    .CLK(CLK), 
    .RST(RST),
    .TX_OUT(TX_OUT)
    );

endmodule