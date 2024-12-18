module MUX (
    input wire [1:0] mux_sel,
    input wire [3:0] inputs,
    input wire       CLK, RST,
    output reg       TX_OUT
);

    always @(*) 
    begin
        TX_OUT = inputs[mux_sel];
    end

endmodule