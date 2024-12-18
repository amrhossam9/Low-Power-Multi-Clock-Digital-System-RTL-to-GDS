module fsm (
    input wire       ser_done, Data_Valid, PAR_EN,
    input wire       CLK, RST,
    output reg [1:0] mux_sel, 
    output reg       busy, ser_en
);

    typedef enum bit [2:0] {
                IDLE      = 3'b000,
                START_BIT = 3'b001,
                SER_DATA  = 3'b010,
                PAR_BIT   = 3'b011,
                STOP_BIT  = 3'b100
    } state_e;

    state_e PS, NS;

    always @(posedge CLK or negedge RST) 
    begin
        if (!RST)
            PS <= IDLE;
        else
            PS <= NS;
    end

    always @(*) begin
      busy = 1'b1;
      ser_en = 1'b1;
      mux_sel = 2'b00;
        case (PS) 
            IDLE:
              begin
                mux_sel = 2'b01; // so it takes the ideal output from the serializer
                busy = 1'b0;
                if (Data_Valid == 1'b1)
                    NS = START_BIT;
                else
                    NS = IDLE;
              end
            START_BIT:
              begin
                mux_sel = 2'b00;
                busy = 1'b1;
                ser_en = 1'b1;
                NS = SER_DATA;
              end
            SER_DATA:
              begin
                mux_sel = 2'b10;
                if (ser_done && !PAR_EN)
                begin
                    ser_en = 1'b0;
                    NS = STOP_BIT;
                end
                else if (ser_done && PAR_EN)
                begin
                  ser_en = 1'b0;
                  NS = PAR_BIT;
                end
                else
                begin
                  ser_en = 1'b1;
                  mux_sel = 2'b10;
                  NS = SER_DATA;
                end
              end
            PAR_BIT:
              begin
                mux_sel = 2'b11;
                NS = STOP_BIT;
              end
            STOP_BIT:
              begin
                mux_sel = 2'b01;
                NS = IDLE;
              end
            default:
              begin
                mux_sel = 2'b10; // so it takes the ideal output from the serializer
                busy = 1'b0;
                NS = IDLE;
              end
        endcase
    end

endmodule