module deserializer (
    input wire CLK, RST,
    input wire deser_en, sampled_bit, valid,
    input wire [2:0] bit_cnt,
    output reg [7:0] P_DATA
);

    always @(posedge CLK or negedge RST) begin

        if(!RST) begin
            P_DATA <= 0;
        end else if(valid && deser_en) begin
            P_DATA[bit_cnt] <= sampled_bit;
        end

    end

endmodule
