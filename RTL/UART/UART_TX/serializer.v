module serializer (
    input wire       ser_en, Data_Valid,
    input wire [7:0] P_DATA,
    input wire       CLK, RST, busy,
    output reg       ser_data, ser_done
);

    reg [3:0] cnt;
    reg [7:0] REG;

    always @(posedge CLK or negedge RST) 
    begin
        if (!RST)
          begin
            cnt <= 0;
            REG <= 8'b11111111;
            ser_data <= 1;
            ser_done <= 0;
          end
        else if (Data_Valid && !busy)
          begin
            cnt <= 0;
            REG <= P_DATA;
            ser_done <= 0;
          end
        else if (cnt != 4'b1000 && ser_en)
          begin
            ser_data <= REG[cnt];
            cnt <= cnt + 1;
            if (cnt == 4'b0111 && ser_en)
            begin
            ser_done <= 1;
            end
          end
        else
          ser_done <= 0;
    end


endmodule