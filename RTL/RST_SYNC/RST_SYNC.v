module RST_SYNC #(parameter NUM_STAGES = 2) (
    input  wire RST, CLK,
    output reg SYNC_RST
);

    reg [NUM_STAGES - 1 : 0] ff;

    always @(posedge CLK or negedge RST) begin

        if(!RST) begin
            ff <= 0;
        end else begin
            ff <= {ff[NUM_STAGES - 2: 0] , 1'b1};
        end
    end

    always @(*) begin
        SYNC_RST = ff[NUM_STAGES - 1];
    end

endmodule