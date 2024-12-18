module FIFO_TOP #(parameter DATA_WIDTH = 8)(
    input  wire                  wclk, wrst_n, winc,
    input  wire                  rclk, rrst_n, rinc,
    input  wire [DATA_WIDTH-1:0] wdata,
    output wire                  wfull, rempty,
    output wire [DATA_WIDTH-1:0] rdata
);

    wire [2:0] waddr, raddr;
    wire [3:0] wg2_rptr, rg2_wptr;
    wire [3:0] wptr, rptr;

    FIFO_MEM_CNTRL FIFO_MEM_CNTRL_BLOCK (
        .wclken(winc & (!wfull)), 
        .RST_n(wrst_n), 
        .CLK(wclk),
        .wdata(wdata),
        .waddr(waddr), 
        .raddr(raddr),
        .rdata(rdata)
    );

    FIFO_WR FIFO_WR_BLOCK(
        .winc(winc),
        .wclk(wclk), 
        .wrst_n(wrst_n),
        .wg2_rptr(rg2_wptr),
        .wptr(wptr), 
        .waddr(waddr), 
        .wfull(wfull)
    );

    FIFO_RD FIFO_RD_BLOCK(
        .rinc(rinc),
        .rclk(rclk), 
        .rrst_n(rrst_n),
        .rg2_wptr(wg2_rptr),
        .rptr(rptr), 
        .raddr(raddr), 
        .rempty(rempty)
    );

    DF_SYNC DF_SYNC_U0(
        .data_in(wptr),
        .CLK(wclk), 
        .RST_n(wrst_n),
        .data_out(wg2_rptr)
    );

    DF_SYNC DF_SYNC_U1(
        .data_in(rptr),
        .CLK(rclk), 
        .RST_n(rrst_n),
        .data_out(rg2_wptr)
    );

endmodule