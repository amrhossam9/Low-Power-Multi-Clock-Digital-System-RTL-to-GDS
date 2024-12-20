module FIFO_MEM_CNTRL #(parameter DATA_WIDTH = 8)(
    input  wire                      wclken, RST_n, CLK,
    input  wire [DATA_WIDTH-1:0] wdata,
    input  wire [2:0]                waddr, raddr,
    output reg  [DATA_WIDTH-1:0] rdata
);

    reg [DATA_WIDTH-1:0] fifo_mem [7:0];
    integer i;

    always @(posedge CLK or negedge RST_n) begin
        if(!RST_n) begin
            for (i=0; i<8; i=i+1) begin
                fifo_mem[i] <= 'b0;
            end
        end else if (wclken) begin
            fifo_mem[waddr] <= wdata;
        end
    end

    always @(*) begin
        rdata <= fifo_mem[raddr];
    end

endmodule
