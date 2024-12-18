module strt_check (
    input wire CLK, RST,
    input wire strt_chk_en, sampled_bit, valid,
    output reg strt_glitch
);

   always @(posedge CLK or negedge RST) begin
        if (!RST)
            strt_glitch <= 0;
        else if (strt_chk_en && sampled_bit != 0 && valid) begin
            strt_glitch <= 1;
        end else begin
            strt_glitch <= 0;
        end
    end

endmodule