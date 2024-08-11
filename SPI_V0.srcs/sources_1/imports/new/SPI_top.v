`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 02:17:04
// Design Name: 
// Module Name: SPI_top
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


module SPI_top#(
    parameter D_WIDTH = 32,
    parameter TX_SHIFT_FMT = 8'd32
)
(
    input clk,
    input reset_n,
    
    input start,

    input rw_n,
    input [2:0] addr,
    input [(D_WIDTH-1):0] data_in,  
    output [(D_WIDTH-1):0] data_out, 
    
    
    input miso,
    output mosi,
    output spi_clk, 
//    output [7:0] cs_n,
    output cs_n,

    output busy
    );

    wire [3:0] wire_enable, wire_load;
//    wire [7:0] wire_cs_n;
    wire wire_cs_n, wire_busy;

    wire [(D_WIDTH-1):0] wire_tx_reg, wire_rx_reg;

    wire [(D_WIDTH-1):0] wire_tx_reg_shifted;

    wire wire_cpha, wire_cpol;
 
    wire [7:0] wire_dvsr, wire_fmt;
    
//    assign cs_n = wire_cs_n;
       assign busy = wire_busy;

    assign wire_tx_en = wire_enable[3];
    assign wire_rx_en = wire_enable[2];
    assign wire_spi_tick_en = wire_enable[1];
    assign wire_bit_count_tick_en = wire_enable[0];

    assign wire_load_tx = wire_load[3];
    assign wire_load_rx = wire_load[2];
    assign wire_load_spi_tick = wire_load[1];
    assign wire_load_bit_count_tick = wire_load[0];


    spi_controller control_and_clkgen(
    .clk(clk),
    .reset_n(reset_n),
    .cpol(wire_cpol),
    .cpha(wire_cpha),
    .start(start),
    .spi_tick(wire_spi_tick),
    .bit_count_tick(wire_bit_count_tick),
    .busy(wire_busy),
    .enable(wire_enable),
    .load(wire_load),
    .cs_n(cs_n),
    .spi_clk(spi_clk)
    );

    reg_spi spi_register_file(
    .clk(clk),
    .reset_n(reset_n),
    .addr(addr),
    .rw_n(rw_n),
    .enable(~wire_busy),
    .data_in(data_in),
    .tx_reg(wire_tx_reg),
    .rx_reg(wire_rx_reg),
    .cs_n(),
    .cpha(wire_cpha),
    .cpol(wire_cpol),
    .dvsr(wire_dvsr),
    .fmt(wire_fmt),
    .data_out(data_out)
    );

    Counter spi_tick(
    .clk(clk),
    .reset_n(reset_n),
    .dvsr(wire_dvsr),
    .enable(wire_spi_tick_en),
    .reset_s(wire_load_spi_tick),
    .tick(wire_spi_tick),
    .count_out()
    );

    Counter bit_count_tick(
    .clk(clk),
    .reset_n(reset_n),
    .dvsr(wire_fmt),
    .enable(wire_bit_count_tick_en),
    .reset_s(wire_load_bit_count_tick),
    .tick(wire_bit_count_tick),
    .count_out()
    );

    assign wire_tx_reg_shifted = (wire_tx_reg << (TX_SHIFT_FMT - wire_fmt));

    PISO tx_shift_reg(
    .p_data(wire_tx_reg_shifted),
    .clk(clk),
    .reset_n(reset_n),
    .load(wire_load_tx),
    .enable(wire_tx_en),
    .s_data(mosi)
    );

    SIPO rx_shift_reg(
    .s_data(miso),
    .clk(clk),
    .reset_n(reset_n),
    .enable(wire_rx_en),
    .load(wire_load_rx),
    .p_data(wire_rx_reg)
    );


endmodule
