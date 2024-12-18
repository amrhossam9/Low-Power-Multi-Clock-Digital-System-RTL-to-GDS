module register (
    input  wire       CLK, RST,
    input  wire [7:0] WrData,
    input  wire [3:0] Address,
    input  wire       WrEn, RdEn,
    output reg        RdData_Valid,
    output reg  [7:0] RdData,
    output wire [7:0] REG0, REG1, REG2, REG3
);

    reg [7 : 0] Reg_File [15 : 0];
    integer i;

    assign REG0 = Reg_File[0];
    assign REG1 = Reg_File[1];
    assign REG2 = Reg_File[2];
    assign REG3 = Reg_File[3];

    always @(posedge CLK or negedge RST) 
    begin
        if(!RST)
        begin
                for (i=0; i<16; i=i+1) begin
                    if(i == 2)
                        Reg_File[i] <= 'b10000001;
                    else if(i == 3)
                        Reg_File[i] <= 'b00100000;
                    else
                        Reg_File[i] <= 0;
                end
                RdData <= 'b0 ;
                RdData_Valid <= 0;
        end
        else if(WrEn && !RdEn)
        begin
            Reg_File[Address] <= WrData;
        end
        else if(RdEn && !WrEn)
        begin
            RdData_Valid <= 1;
            RdData <= Reg_File[Address];
        end
        else begin
            RdData_Valid <= 0;
        end
    end
endmodule
