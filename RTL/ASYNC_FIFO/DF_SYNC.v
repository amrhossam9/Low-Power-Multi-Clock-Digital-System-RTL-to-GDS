module DF_SYNC #(parameter SYNC_WIDTH = 4)(
    input  wire  [SYNC_WIDTH-1:0] data_in,
    input  wire                 CLK, RST_n,
    output reg  [SYNC_WIDTH-1:0] data_out
);

    reg [SYNC_WIDTH-1:0] ff;

    always @(posedge CLK or negedge RST_n) begin
        if(!RST_n)begin
            ff <= 'b0;
            data_out <= 'b0;
        end else begin
            ff <= data_in;
            data_out <= ff;
        end
    end

endmodule