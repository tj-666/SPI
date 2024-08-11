`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 02:19:57
// Design Name: 
// Module Name: spi_controller
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


module spi_controller(
    input clk,
    input reset_n,
    input cpol,
    input cpha,
    input start,
    input spi_tick,
    input bit_count_tick,


    output reg busy,
    output reg [3:0] enable,
    output reg [3:0] load,
    output reg cs_n,
    output reg spi_clk
    );
    
localparam S_IDLE = 2'b00;
localparam S_SAMPLE = 2'b01;
localparam S_DRIVE = 2'b10;

reg [1:0] p_state, n_state;


reg load_tx, load_rx, load_spi_tick, load_bit_count;
reg tx_en, rx_en, spi_tick_en, bit_count_en;


wire [3:0] enable_i;
wire [3:0] load_i;

wire mod0_clk;
//reg spi_clk;

assign enable_i = {tx_en, rx_en, spi_tick_en, bit_count_en} ;
assign load_i = {load_tx, load_rx, load_spi_tick, load_bit_count};

//assign start_wire = start & (~reset_n);
assign mod0_clk = ((p_state == S_DRIVE) && ~cpha) || ((p_state == S_SAMPLE) && cpha);
//assign spi_clk = cpol ? (~mod0_clk) : mod0_clk;

always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        enable <= 4'h0;
        load <= 2'h0;
        p_state <= S_IDLE ;
//        start_reg <= 1'b0;
        spi_clk <= 1'h0;
    end   
    else begin
        enable <= enable_i;
        load <= load_i;
//        start_reg <= start;
        p_state <= n_state;
        spi_clk <= cpol ? (~mod0_clk) : mod0_clk;
    end 
end

always @(p_state, spi_tick, start, bit_count_tick) begin

    cs_n = 1'b1;
    busy = 1'b1;

    load_tx = 1'b0;
    load_rx = 1'b0;
    load_spi_tick = 1'b0;
    load_bit_count = 1'b0;
    tx_en = 1'b0;
    rx_en = 1'b0;
    spi_tick_en = 1'b0;
    bit_count_en = 1'b0;

    n_state = p_state;


    case (p_state)
        S_IDLE: begin

            busy = 1'b0;

            load_spi_tick = 1'b1;
            load_bit_count = 1'b1;
            
            
            if (start) begin
                load_tx = 1'b1;
                n_state = S_SAMPLE;
            end

        end 

        S_SAMPLE : begin

            spi_tick_en =  1'b1;
            cs_n = 1'b0;
            
            if(bit_count_tick) begin
                load_rx = 1'b1;
                n_state = S_IDLE;
            end
            else if (spi_tick) begin
                rx_en = 1'b1;
                n_state = S_DRIVE ;
            end
        end

        S_DRIVE : begin
            
            spi_tick_en = 1'b1;
            cs_n = 1'b0;

            // if (spi_tick) begin
            //     if (bit_count_tick) begin
            //         load_rx = 1'b1;

            //         n_state = S_IDLE;
            //     end
            //     else begin
            //         tx_en = 1'b1;
            //         bit_count_en = 1'b1;
                    
            //         n_state = S_SAMPLE;
            //     end
            // end

            if(bit_count_tick) begin
                load_rx = 1'b1;
                n_state = S_IDLE;
            end
            else if(spi_tick) begin
                tx_en = 1'b1;
                bit_count_en = 1'b1;
                n_state = S_SAMPLE;
            end
               
        end

        default : begin
            n_state = S_IDLE;
        end
    endcase
end


endmodule
