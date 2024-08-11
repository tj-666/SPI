`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 02:18:15
// Design Name: 
// Module Name: spi_clock_gen
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


module spi_clock_gen(
    input clk,
    input tick,
    input reset_n,
    input cpol, 
    input cpha,
    input clk_out
    );

    reg p_clock, n_clock;

assign clk_out = p_clock;

always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        p_clock <= 1'b0;
    end
    else begin
        p_clock <= n_clock;
    end
end

always @(p_clock, tick) begin
    if (tick) begin
        p_clock = ~n_clock;
    end
end
endmodule
