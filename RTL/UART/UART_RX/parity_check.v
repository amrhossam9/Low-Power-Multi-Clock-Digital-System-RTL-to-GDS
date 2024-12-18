module parity_check (
    input wire CLK, RST,
    input wire PAR_TYP, par_chk_en, 
    input wire sampled_bit, valid, 
    input wire [7:0] data,
    output reg par_err
);

    reg par_bit;

    always @(*) 
    begin
        if (!PAR_TYP)
                par_bit <= (^data); 
        else
                par_bit <= (^data) ^ 1; 
    end

    always @(posedge CLK or negedge RST) begin
        
        if(!RST)
            par_err <= 0;
        else if (par_chk_en && sampled_bit != par_bit && valid) begin
            par_err <= 1;
        end else if (par_chk_en && sampled_bit == par_bit && valid) begin
            par_err <= 0;
        end
    end

endmodule