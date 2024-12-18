module FIFO_RD (
    input  wire       rinc,
    input  wire       rclk, rrst_n,
    input  wire [3:0] rg2_wptr,
    output reg [3:0] rptr, 
    output wire [2:0] raddr, 
    output wire        rempty
);

    reg [3:0] raddr_ptr;

    assign raddr = raddr_ptr[2:0];

    always @(posedge rclk or negedge rrst_n) begin
        if(!rrst_n) begin
            raddr_ptr <= 'b0;
        end else if (rinc && !rempty) begin
            raddr_ptr <= raddr_ptr + 1'b1;
        end
    end

    always @(posedge rclk or negedge rrst_n) begin
        if(!rrst_n) begin
            rptr <= 'b0;
        end else begin
            rptr <= raddr_ptr ^ (raddr_ptr >> 1);
        end
    end

    assign rempty = (rptr == rg2_wptr);

endmodule