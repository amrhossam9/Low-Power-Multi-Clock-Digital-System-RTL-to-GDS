module SYS_TOP (
    input   wire                          RST_N,
    input   wire                          UART_CLK,
    input   wire                          REF_CLK,
    input   wire                          UART_RX_IN,
    output  wire                          UART_TX_O,
    output  wire                          parity_error,
    output  wire                          framing_error
);

    wire [7:0] RX_OUT_P;
    wire RX_OUT_V;

    wire [7:0] WrData, RdData;
    wire [3:0] Address;
    wire       WrEn, RdEn;
    wire       RdData_Valid;

    wire [7:0] rdata;
    wire       empty; 

    wire [7:0]  TX_P_DATA;
    wire        TX_D_VLD;
    wire        clk_div_en;

    wire        wfull;

    wire [7:0]  RX_P_DATA;
    wire        RX_D_VLD;

    wire        TX_OUT_V;
    wire        rinc;

    wire        TX_CLK, RX_CLK;

    wire [7:0]  CLK_DIV_RX;

    wire [7:0] REG0, REG1, REG2, REG3;

    wire SYNC_RST_1, SYNC_RST_2;

    wire [15:0] ALU_OUT;
    wire        OUT_Valid;

    wire [3:0]  ALU_FUN;
    wire        EN;
    wire        CLK_EN;

    wire        ALU_CLK;

///********************************************************///
//////////////////// Reset synchronizers /////////////////////
///********************************************************///

    RST_SYNC RST_SYNC_BLOCK_U1 (
        .RST(RST_N), 
        .CLK(REF_CLK),
        .SYNC_RST(SYNC_RST_1)
    );

    RST_SYNC RST_SYNC_BLOCK_U2 (
        .RST(RST_N), 
        .CLK(UART_CLK),
        .SYNC_RST(SYNC_RST_2)
    );

///********************************************************///
///////////////////// Data Synchronizers /////////////////////
///********************************************************///

    Data_Sync Data_Sync_BLOCK (
        .CLK(REF_CLK), 
        .RST(SYNC_RST_1),
        .unsync_bus(RX_OUT_P),
        .bus_enable(RX_OUT_V), 
        .sync_bus(RX_P_DATA),
        .enable_pulse(RX_D_VLD)
    );

///********************************************************///
///////////////////////// Async FIFO /////////////////////////
///********************************************************///

    FIFO_TOP FIFO_BLOCK (
        .wclk(REF_CLK), 
        .wrst_n(SYNC_RST_1), 
        .winc(TX_D_VLD),
        .rclk(TX_CLK), 
        .rrst_n(SYNC_RST_2), 
        .rinc(rinc),
        .wdata(TX_P_DATA),
        .wfull(wfull), 
        .rempty(empty),
        .rdata(rdata)
    );

///********************************************************///
//////////////////////// Pulse Generator /////////////////////
///********************************************************///

    PULSE_GEN PULSE_GEN_BLOCK (
        .CLK(TX_CLK),
        .RST(SYNC_RST_2),
        .lvl_sig(TX_OUT_V),
        .pulse_sig(rinc)
    );

///********************************************************///
//////////// Clock Divider for UART_TX Clock /////////////////
///********************************************************///

    ClkDiv ClkDiv_TX_BLOCK (
        .I_ref_clk(UART_CLK),
        .I_rst_n(SYNC_RST_2), 
        .I_clk_en(clk_div_en),
        .I_div_ratio(REG3),
        .O_div_clk(TX_CLK)
    );

///********************************************************///
/////////////////////// Custom Mux Clock /////////////////////
///********************************************************///

    CLKDIV_MUX CLKDIV_MUX_BLOCK (
        .IN(REG2[7:2]),
        .OUT(CLK_DIV_RX)
    );

///********************************************************///
//////////// Clock Divider for UART_RX Clock /////////////////
///********************************************************///

    ClkDiv ClkDiv_RX_BLOCK (
        .I_ref_clk(UART_CLK),
        .I_rst_n(SYNC_RST_2), 
        .I_clk_en(clk_div_en),
        .I_div_ratio(CLK_DIV_RX),
        .O_div_clk(RX_CLK)
    );

///********************************************************///
/////////////////////////// UART /////////////////////////////
///********************************************************///

    UART_TOP UART_TOP_BLOCK (
        .RST(SYNC_RST_2),
        .TX_CLK(TX_CLK),
        .RX_CLK(RX_CLK),
        .RX_IN_S(UART_RX_IN),
        .RX_OUT_P(RX_OUT_P), 
        .RX_OUT_V(RX_OUT_V),
        .TX_IN_P(rdata), 
        .TX_IN_V(!empty), 
        .TX_OUT_S(UART_TX_O),
        .TX_OUT_V(TX_OUT_V),  
        .Prescale(REG2[7:2]), 
        .parity_enable(REG2[0]),
        .parity_type(REG2[1]),
        .parity_error(parity_error),
        .framing_error(framing_error)
    );

///********************************************************///
//////////////////// System Controller ///////////////////////
///********************************************************///

    SYS_CTRL SYS_CTRL_BLOCK (
        .CLK(REF_CLK), 
        .RST(SYNC_RST_1),
        .ALU_OUT(ALU_OUT),
        .OUT_Valid(OUT_Valid),

        .ALU_FUN(ALU_FUN),
        .EN(EN),
        .CLK_EN(CLK_EN),
        .Address(Address),
        .WrEn(WrEn),
        .RdEn(RdEn),
        .WrData(WrData),

        .RdData(RdData),
        .RdData_Valid(RdData_Valid),
        .RX_P_DATA(RX_P_DATA),
        .RX_D_VLD(RX_D_VLD),

        .TX_P_DATA(TX_P_DATA),
        .TX_D_VLD(TX_D_VLD),
        .clk_div_en(clk_div_en)
    );

///********************************************************///
/////////////////////// Register File ////////////////////////
///********************************************************///

    register register_BLOCK (
        .CLK(REF_CLK), 
        .RST(SYNC_RST_1),
        .WrData(WrData),
        .Address(Address),
        .WrEn(WrEn), 
        .RdEn(RdEn),
        .RdData_Valid(RdData_Valid),
        .RdData(RdData),
        .REG0(REG0), 
        .REG1(REG1), 
        .REG2(REG2), 
        .REG3(REG3)
    );

///********************************************************///
//////////////////////////// ALU /////////////////////////////
///********************************************************///

    ALU ALU_BLOCK(
        .A(REG0), 
        .B(REG1),
        .EN(EN),
        .ALU_FUN(ALU_FUN),
        .CLK(ALU_CLK),
        .RST(SYNC_RST_1),  
        .ALU_OUT(ALU_OUT),
        .OUT_VALID(OUT_Valid)  
    );

///********************************************************///
///////////////////////// Clock Gating ///////////////////////
///********************************************************///

    CLK_GATE CLK_GATE_BLOCK (
        .CLK_EN(CLK_EN),
        .CLK(REF_CLK),
        .GATED_CLK(ALU_CLK)
    );

endmodule

