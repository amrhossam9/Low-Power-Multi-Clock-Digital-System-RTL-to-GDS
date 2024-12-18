module UART_TOP (
    input   wire                          RST,
    input   wire                          TX_CLK,
    input   wire                          RX_CLK,
    input   wire                          RX_IN_S,
    output  wire   [7:0]                  RX_OUT_P, 
    output  wire                          RX_OUT_V,
    input   wire   [7:0]                  TX_IN_P, 
    input   wire                          TX_IN_V, 
    output  wire                          TX_OUT_S,
    output  wire                          TX_OUT_V,  
    input   wire   [5:0]                  Prescale, 
    input   wire                          parity_enable,
    input   wire                          parity_type,
    output  wire                          parity_error,
    output  wire                          framing_error
);

    UART_TX UART_TX_BLOCK(
        .P_DATA(TX_IN_P),
        .Data_Valid(TX_IN_V), 
        .PAR_TYP(parity_type), 
        .PAR_EN(parity_enable),
        .CLK(TX_CLK), 
        .RST(RST),
        .TX_OUT(TX_OUT_S), 
        .busy(TX_OUT_V)
    );

    UART_RX UART_RX_BLOCK(
        .CLK(RX_CLK), 
        .RST(RST),
        .RX_IN(RX_IN_S),
        .PAR_EN(parity_enable), 
        .PAR_TYP(parity_type),
        .Prescale(Prescale),
        .data_valid(RX_OUT_V),
        .P_DATA(RX_OUT_P),
        .par_err(parity_error), 
        .stp_err(framing_error)
    );

endmodule