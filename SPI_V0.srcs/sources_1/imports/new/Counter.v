`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 00:00:41
// Design Name: 
// Module Name: Counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Counter(
    input clk,
    input reset_n,
    input [7:0] dvsr,
    input enable,
    input reset_s,

    output reg tick,
    output [7:0] count_out
    );


    reg [7:0] p_count, n_count;
    // reg n_spi_clk, p_spi_clk;

// assign spi_clk = p_spi_clk;
assign count_out = p_count;

always @(posedge clk or negedge reset_n) begin
    
    // tick <= 1'b0;
    
    if (!reset_n) begin
        p_count <= 8'h0;
        // p_spi_clk <= 0;
        //tick <= n_count[7];
    end
    else begin
        p_count <= n_count;
        // p_spi_clk <= n_spi_clk;
        // tick <= p_count == dvsr ;
    end

end

always @(p_count, enable, dvsr, reset_s) begin

    n_count = p_count;

    tick = 1'b0;

    if (reset_s) begin
        n_count = 8'h00;
    end
    if(p_count >= dvsr) begin
        n_count = 8'h00;
        tick = 1'b1;
        // n_spi_clk = ~p_spi_clk;
    end
    else if (enable) begin
        n_count = p_count + 1'b1;
    end
    
end




endmodule
