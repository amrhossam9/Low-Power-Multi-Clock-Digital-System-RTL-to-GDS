module FIFO_WR (
    input  wire       winc,
    input  wire       wclk, wrst_n,
    input  wire [3:0] wg2_rptr,
    output reg [3:0] wptr, 
    output wire [2:0] waddr, 
    output wire       wfull
);

    reg [3:0] waddr_ptr;

    assign waddr = waddr_ptr[2:0];

    always @(posedge wclk or negedge wrst_n) begin
        if(!wrst_n) begin
            waddr_ptr <= 'b0;
        end else if (winc && !wfull) begin
            waddr_ptr <= waddr_ptr + 1'b1;
        end
    end

    always @(posedge wclk or negedge wrst_n) begin
        if(!wrst_n) begin
            wptr <= 'b0;
        end else begin
            wptr <= waddr_ptr ^ (waddr_ptr >> 1);
        end
    end

    assign wfull = (wptr[3] != wg2_rptr[3] && wptr[2] != wg2_rptr[2] && wptr[1:0] == wg2_rptr[1:0]);

endmodule