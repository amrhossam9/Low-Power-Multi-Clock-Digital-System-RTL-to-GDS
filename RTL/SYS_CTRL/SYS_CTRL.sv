module SYS_CTRL (
    input  wire        CLK, RST,
    input  wire [15:0] ALU_OUT,
    input  wire        OUT_Valid,

    output reg  [3:0]  ALU_FUN,
    output reg         EN,
    output reg         CLK_EN,
    output reg  [3:0]  Address,
    output reg         WrEn,
    output reg         RdEn,
    output reg  [7:0]  WrData,

    input  wire [7:0]  RdData,
    input  wire        RdData_Valid,
    input  wire [7:0]  RX_P_DATA,
    input  wire        RX_D_VLD,

    output reg  [7:0]  TX_P_DATA,
    output reg         TX_D_VLD,
    output reg         clk_div_en
);

    typedef enum bit [3:0] {
                IDLE         = 4'b0000,

                RF_Wr        = 4'b0001, 
                RF_Wr_Addr   = 4'b0010,
                RF_Wr_Data   = 4'b0011,

                RF_Rd_Addr   = 4'b0100,
                RF_Rd_Data   = 4'b0101,

                Operand_A    = 4'b0110,
                Operand_B    = 4'b0111,

                ALU_FUN_S    = 4'b1000,
                ALU_Wr1      = 4'b1001,
                ALU_Wr2      = 4'b1010
    } state_e;

    state_e current_state, next_state;


    always @(posedge CLK or negedge RST) begin
        if(!RST) begin
            current_state <= IDLE;
        end else begin
            current_state <= next_state;
        end
    end

    always @(*) begin
        case (current_state)
            IDLE:begin
                if(RX_D_VLD) begin
                    if (RX_P_DATA == 8'hAA) begin
                        next_state = RF_Wr_Addr;
                    end else if (RX_P_DATA == 8'hBB) begin
                        next_state = RF_Rd_Addr;
                    end else if (RX_P_DATA == 8'hCC) begin
                        next_state = Operand_A;
                    end else if (RX_P_DATA == 8'hDD) begin
                        next_state = ALU_FUN_S;
                    end else begin
                        next_state = IDLE;
                    end
                end else begin
                    next_state = IDLE;
                end
            end

            RF_Wr_Addr: begin
                if(RX_D_VLD) begin
                    next_state = RF_Wr_Data;
                end else begin
                    next_state = RF_Wr_Addr;
                end
            end

            RF_Wr_Data: begin
                if(RX_D_VLD) begin
                    next_state = IDLE;
                end else begin
                    next_state = RF_Wr_Data;
                end
            end

            RF_Rd_Addr: begin
                if(RX_D_VLD) begin
                    next_state = RF_Rd_Data;
                end else begin
                    next_state = RF_Rd_Addr;
                end
            end

            RF_Rd_Data: begin
                if(RdData_Valid) begin
                    next_state = IDLE;
                end else begin
                    next_state = RF_Rd_Data;
                end
            end

            Operand_A: begin
                if(RX_D_VLD) begin
                    next_state = Operand_B;
                end else begin
                    next_state = Operand_A;
                end
            end

            Operand_B: begin
                if(RX_D_VLD) begin
                    next_state = ALU_FUN_S;
                end else begin
                    next_state = Operand_B;
                end
            end

            ALU_FUN_S: begin
                if(RX_D_VLD) begin
                    next_state = ALU_Wr1;
                end else begin
                    next_state = ALU_FUN_S;
                end
            end

            ALU_Wr1: begin
                if(OUT_Valid) begin
                    next_state = ALU_Wr2;
                end else begin
                    next_state = ALU_Wr1;
                end
            end

            ALU_Wr2: begin
                next_state = IDLE;
            end

            default: begin
                next_state = IDLE;
            end
        endcase
    end

    reg address_flag;

    always @(*) begin

        ALU_FUN = 0;
        EN = 0;
        CLK_EN = 0;
        address_flag = 0;
        WrEn = 0;
        RdEn = 0; 
        WrData = 0;

        TX_P_DATA = 0;
        TX_D_VLD = 0;
        clk_div_en = 1;

        case (current_state)
            IDLE:begin
                ALU_FUN = 0;
                EN = 0;
                CLK_EN = 0;
                address_flag = 0;
                WrEn = 0;
                RdEn = 0; 
                WrData = 0;

                TX_P_DATA = 0;
                TX_D_VLD = 0;
                clk_div_en = 1;
            end

            RF_Wr_Addr: begin
                if(RX_D_VLD) begin
                    address_flag = 1;
                end
            end

            RF_Wr_Data: begin
                if(RX_D_VLD) begin
                    WrEn = 1;
                    WrData = RX_P_DATA;
                end 
            end

            RF_Rd_Addr: begin
                if(RX_D_VLD) begin
                    address_flag = 1;
                    RdEn = 1;
                end
            end

            RF_Rd_Data: begin
                if(RdData_Valid) begin
                    TX_P_DATA = RdData;
                    TX_D_VLD = 1;
                end 
            end

            Operand_A: begin
                if(RX_D_VLD) begin
                    WrEn = 1;
                    address_flag = 1;
                    WrData = RX_P_DATA;
                end
            end

            Operand_B: begin
                if(RX_D_VLD) begin
                    WrEn = 1;
                    address_flag = 1;
                    WrData = RX_P_DATA;
                end
            end

            ALU_FUN_S: begin
                if(RX_D_VLD) begin
                    ALU_FUN = RX_P_DATA[3:0];
                    EN = 1;
                    CLK_EN = 1;
                end
            end

            ALU_Wr1: begin
                // CLK_EN = 1;
                if(OUT_Valid) begin
                    TX_P_DATA = ALU_OUT[7:0];
                    TX_D_VLD = 1;
                end
            end

            ALU_Wr2: begin
                TX_P_DATA = ALU_OUT[15:8];
                TX_D_VLD = 1;
                // CLK_EN = 1;
            end

            default: begin
                ALU_FUN = 0;
                EN = 0;
                CLK_EN = 0;
                address_flag = 0;
                WrEn = 0;
                RdEn = 0; 
                WrData = 0;

                TX_P_DATA = 0;
                TX_D_VLD = 0;
                clk_div_en = 0;
            end
        endcase
    end

    always @(posedge CLK or negedge RST) begin
        if(!RST) begin
            Address <= 0;
        end else if(address_flag)begin
            if(current_state == Operand_A)
                Address <= 0;
            else if(current_state == Operand_B)
                Address <= 1;
            else
                Address <= RX_P_DATA;
        end
    end

endmodule
