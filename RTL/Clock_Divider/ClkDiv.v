module ClkDiv (
    input wire I_ref_clk,
    input wire I_rst_n, I_clk_en,
    input wire [7:0] I_div_ratio,
    output wire O_div_clk
);

    reg [4:0] counter; 
    wire [4:0] half;
    wire odd_cond, even_cond;
    wire odd, CLK_DIV_EN;
    reg flag, o_clk;

    assign odd = I_div_ratio[0];
    
    assign half = (I_div_ratio >> 1) - 1;
    assign even_cond = (counter == half);
    assign odd_cond = ((counter == half && !flag) || (counter == half + 1 && flag));
    assign CLK_DIV_EN = I_clk_en && (I_div_ratio != 1) && (I_div_ratio != 0);

    always @(posedge I_ref_clk or negedge I_rst_n) 
    begin
        if (!I_rst_n)
        begin
            o_clk <= 0;
            counter <= 0;
            flag <= 0;
        end
        else if(!CLK_DIV_EN)
        begin
            counter <= 0;
        end
        else if(CLK_DIV_EN && !odd && even_cond)
        begin
            o_clk <= !o_clk;
            counter <= 0;
        end
        else if(CLK_DIV_EN && odd && odd_cond)
        begin
            o_clk <= !o_clk;
            counter <= 0;
            flag <= o_clk;
        end
        else
        begin
            counter <= counter + 1;
        end
    end


    assign O_div_clk = CLK_DIV_EN ? o_clk : I_ref_clk;

endmodule
