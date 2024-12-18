module FSM (
    input wire CLK, RST,
    input wire RX_IN,
    input wire PAR_EN,
    input wire [2:0] bit_cnt,
    input wire [5:0] edge_cnt, Prescale,
    input wire par_err, strt_glitch, stp_err,
    output reg par_chk_en, strt_chk_en, stp_chk_en, deser_en,
    output reg data_valid, enable, data_samp_en
);

    typedef enum bit [2:0] {
                IDLE         = 3'b000,
                START_BIT    = 3'b001,
                SAMPLE_DATA  = 3'b010,
                PAR_BIT      = 3'b011,
                STOP_BIT     = 3'b100,
                DATA_VALID   = 3'b101
    } state_e;

    state_e current_state, next_state;

    reg data_valid_c;

    always @(posedge CLK or negedge RST) begin

        if(!RST) begin
            current_state <= IDLE;
        end else begin
            current_state <= next_state;
        end

    end

    always @(*) begin

        case(current_state)

            IDLE:begin
                if (!RX_IN)
                    next_state = START_BIT;
                else
                    next_state = IDLE;
            end

            START_BIT:begin
                if (strt_glitch)
                    next_state = IDLE;
                else if((edge_cnt + 1'b1) == Prescale)
                    next_state = SAMPLE_DATA;
                else
                    next_state = START_BIT;
            end

            SAMPLE_DATA:begin
                if (bit_cnt == 3'b111 && (edge_cnt + 1'b1) == Prescale)
                    if (PAR_EN)
                        next_state = PAR_BIT;
                    else 
                        next_state = STOP_BIT;
                // else if((edge_cnt + 1'b1) == Prescale)
                //     next_state = SAMPLE_DATA;
                else
                    next_state = SAMPLE_DATA;
            end

            PAR_BIT:begin
                if((edge_cnt + 1'b1) == Prescale)
                    next_state = STOP_BIT;
                else
                    next_state = PAR_BIT;
            end

            STOP_BIT:begin
                if((edge_cnt + 1'b1) == Prescale)
                    next_state = DATA_VALID;
                else
                    next_state = STOP_BIT;
            end

            DATA_VALID:begin
                if (!RX_IN)
                    next_state = START_BIT;
                else
                    next_state = IDLE;
            end 

            default:begin
                next_state = IDLE;
            end

        endcase

    end

    always @(*) begin

        par_chk_en = 1'b0;
        strt_chk_en = 1'b0;
        stp_chk_en = 1'b0; 
        deser_en = 1'b0;
        data_valid = 1'b0; 
        enable = 1'b0; 
        data_samp_en = 1'b1;

        case(current_state)

            IDLE:begin
                par_chk_en = 1'b0;
                strt_chk_en = 1'b0;
                stp_chk_en = 1'b0; 
                deser_en = 1'b0;
                data_valid = 1'b0; 
                enable = 1'b0; 
            end

            START_BIT:begin
                strt_chk_en = 1'b1;
                data_samp_en = 1'b1;
            end

            SAMPLE_DATA:begin
                enable = 1'b1;
                deser_en = 1'b1;
            end

            PAR_BIT:begin
                par_chk_en = 1'b1;
            end

            STOP_BIT:begin
                stp_chk_en = 1'b1;
            end

            DATA_VALID:begin
                if (stp_err || par_err)
                    data_valid = 1'b0;
                else
                    data_valid = 1'b1;
            end

        endcase

    end
endmodule
