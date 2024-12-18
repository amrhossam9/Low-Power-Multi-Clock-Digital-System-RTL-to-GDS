module Data_Sync #(parameter BUS_WIDTH = 8, NUM_STAGES = 2) (
    input wire [BUS_WIDTH - 1:0] unsync_bus,
    input wire bus_enable, CLK, RST,
    output reg [BUS_WIDTH - 1:0] sync_bus,
    output reg enable_pulse
);

    reg [NUM_STAGES - 1:0] Multi_Flip_Flop;
    reg Pulse_Gen_ff;
    wire Pulse_Gen_output;

    assign Pulse_Gen_output = ((!Pulse_Gen_ff) & Multi_Flip_Flop[NUM_STAGES - 1]);


    always @(posedge CLK or negedge RST) begin
        if(!RST) begin
            Multi_Flip_Flop <= 0;
        end else begin
            Multi_Flip_Flop <= {Multi_Flip_Flop[NUM_STAGES - 2:0], bus_enable};
        end
    end

    always @(posedge CLK or negedge RST) begin
        if(!RST) begin
            Pulse_Gen_ff <= 0;
            enable_pulse <= 0;
        end else begin
            Pulse_Gen_ff <= Multi_Flip_Flop[NUM_STAGES - 1];
            enable_pulse <= Pulse_Gen_output;
        end
    end

    always @(posedge CLK or negedge RST) begin
        if(!RST) begin
            sync_bus <= 0;
        end else begin
            if(Pulse_Gen_output)
                sync_bus <= unsync_bus;
            else
                sync_bus <= sync_bus;
        end
    end

endmodule