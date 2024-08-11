`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 00:29:53
// Design Name: 
// Module Name: PISO
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


module PISO#(
    parameter D_WIDTH = 32
)
(
    input [(D_WIDTH-1):0] p_data,
    input clk,
    input reset_n,
    input load,
    input enable,

    output s_data
    );

    reg [(D_WIDTH-1):0] n_shift, p_shift;
    
always @(posedge clk or negedge reset_n) 
begin : synchronous

    if(!reset_n) begin
        p_shift <= {32{1'b0}};
    end
    else begin
        p_shift <= n_shift;
    end
end

always @(p_shift, enable, load, p_data) 
begin : combinatorial

    n_shift = p_shift;

    if(load) begin
        n_shift = p_data;
    end
    else if(enable) begin
        n_shift = {p_shift[(D_WIDTH-2):0],1'b0};
    end
    
end

assign s_data = p_shift[(D_WIDTH-1)];
endmodule
