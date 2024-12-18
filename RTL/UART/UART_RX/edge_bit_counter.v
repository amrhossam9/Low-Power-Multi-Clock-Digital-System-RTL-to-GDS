module edge_bit_counter (
    input CLK, RST,
    input wire enable,
    input wire [5:0] Prescale,
    output reg [2:0] bit_cnt,
    output reg [5:0] edge_cnt
);

    always @(posedge CLK or negedge RST) begin

        if (!RST) begin
            bit_cnt <= 0;
            edge_cnt <= 0;
        end else if(Prescale == (edge_cnt + 1'b1)) begin
            if (enable)
                bit_cnt <= bit_cnt + 1;
            edge_cnt <= 0;
        end else begin
            edge_cnt <= edge_cnt + 1;
        end
    end

endmodule