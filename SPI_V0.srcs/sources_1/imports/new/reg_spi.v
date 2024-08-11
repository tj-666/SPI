`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 00:51:07
// Design Name: 
// Module Name: reg_spi
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


module reg_spi #(
    parameter D_WIDTH = 32,
    parameter TX_SHIFT = 8'd32,
    parameter A_DEPTH = 5
)
(
    input clk,
    input reset_n,
    input [2:0] addr,
    input rw_n,
    input enable,
    input [(D_WIDTH-1):0] data_in,

    input [(D_WIDTH-1):0] rx_reg,
    output [(D_WIDTH-1):0] tx_reg,
    output cs_n,
    output cpha,
    output cpol,
    output [7:0] dvsr,
    output [7:0] fmt,

    output reg [(D_WIDTH-1):0] data_out
    );



    localparam RW = 2'b10;
    localparam IDLE = 2'b01 ;
    localparam RESET = 2'b00;
    
//        reg [1:0] n_state, p_state;
    
        // reg [7:0] n_spi_reg_file [4:0] ;
        // reg [7:0] p_spi_reg_file [4:0] ;
        reg [(D_WIDTH-1):0] spi_reg_file [(A_DEPTH-1):0] ;
        integer i;
        // wire [7:0] w_fmt_shift;

    // assign w_fmt_shift = TX_SHIFT - spi_reg_file[4];
    
    assign fmt = spi_reg_file[4];
    assign tx_reg = spi_reg_file[3];
    // assign spi_reg_file[2] = rx_reg;
    assign cpol = spi_reg_file[1][7];
    assign cpha = spi_reg_file[1][6];
    assign cs_n = spi_reg_file[1][0];
    assign dvsr = spi_reg_file[0];


    // always @(posedge clk or negedge reset_n) begin

    //     data_out <= 8'hzz;
        
    //         if (!reset_n) begin
                
    //             for (i=0;i<=4;i=i+1)  begin
    //                 spi_reg_file[i] <= 32'd0;
    //             end
            
    //         end
    //         else begin
        
    //             spi_reg_file[2] <= rx_reg ;
                
                
    //             if(enable) begin
        
    //                 if (rw_n) begin
    //                     data_out <= spi_reg_file[addr];
    //                 end
    //                 else if(addr != 2'b10) begin
    //                     if (addr == 2'b11) begin
    //                         spi_reg_file[addr] <= (data_in << w_fmt_shift);    //data_in + {}
    //                     end
    //                     else begin
    //                         spi_reg_file[addr] <= data_in;
    //                     end        
    //                 end
                    
    //             end
        
    //         end 
            
        
        
    //     end







always @(posedge clk or negedge reset_n) begin

data_out <= {32{1'b0}};

    if (!reset_n) begin
        
        for (i=0;i<=4;i=i+1)  begin
            spi_reg_file[i] <= {32{1'b0}};
        end
    
    end
    else begin

        spi_reg_file[2] <= rx_reg ;
        
        
        if(enable) begin

            if (rw_n) begin
                data_out <= spi_reg_file[addr];
            end
            else if(addr != 2'b10) begin
                spi_reg_file[addr] <= data_in;
            end
            
        end

    end 
    


end




// always @(posedge clk or negedge reset_n) begin
//     if (!reset_n) begin
//         p_state <= RESET;
//     end
//     else begin
//         p_state <= n_state;
//     end
// end

// always @(p_state, addr, rw_n, data_in, enable) begin

//     n_state = p_state;

//     case (p_state)
//         RESET : begin
//             for (i=0;i<=3;i=i+1)  begin
//                 spi_reg_file[i] <= 8'h00;
//             end

//             n_state = IDLE;
//         end 
        
//         IDLE : begin
//             if (enable) begin
//                 n_state = RW;
//             end
//             else begin
//                 spi_reg_file[2] = rx_reg;
//             end
//         end

//         RW : begin
//             if(!enable) begin
//                 n_state = IDLE;
//             end
//             else if (rw_n) begin
//                 data_out <= spi_reg_file[addr];
//             end
//             else begin
//                 spi_reg_file[addr] <= data_in;
//             end
//         end
//     endcase
// end

endmodule
