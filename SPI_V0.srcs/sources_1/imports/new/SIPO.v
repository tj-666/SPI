`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 00:29:53
// Design Name: 
// Module Name: SIPO
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


module SIPO #(
    parameter D_WIDTH = 32
)
(
    input s_data,
    input clk,
    input reset_n,
    input enable,
    input load,
    
    output reg [(D_WIDTH-1):0] p_data
    );

    reg [(D_WIDTH-1):0] p_shift, n_shift;

always @(posedge clk or negedge reset_n) 
begin : synchronous

    if(!reset_n) begin
        p_shift <= {32{1'b0}};
    end
    else begin
        p_shift <= n_shift;
    end
    
end   

always @(p_shift, enable, s_data) begin
    n_shift = p_shift;

    if(enable) begin
        n_shift = {p_shift[(D_WIDTH-2):0], s_data} ;
    end
end

// assign p_data = p_shift;

always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
        p_data <= {32{1'b0}};
    end
    else if (load) begin
        p_data <= p_shift; 
    end
end
endmodule


