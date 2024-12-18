module parityCalc (
    input wire       Data_Valid, PAR_TYP,
    input wire [7:0] P_DATA,
    input wire       CLK, RST, busy,
    output reg       par_bit
);

    reg [7:0] xor_ip;
    always @(posedge CLK or negedge RST) 
    begin
        if (!RST)
            xor_ip <= 0;
        else if (Data_Valid && !busy) 
        begin
            xor_ip <= P_DATA;  
        end
    end

    always @(*) 
    begin
        if (!PAR_TYP)
                par_bit = (^xor_ip); 
        else
                par_bit = (^xor_ip) ^ 1; 
    end
endmodule