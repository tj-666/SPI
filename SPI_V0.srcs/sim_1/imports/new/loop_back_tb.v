`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2024 21:35:09
// Design Name: 
// Module Name: SPI_top_tb
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



module loop_back_tb;

  // Parameters
  parameter D_WIDTH = 32;
  //Ports
  reg  clk;
  reg  reset_n;
  reg  rw_n;
  reg start;
  reg [2:0] addr;
  reg [(D_WIDTH-1):0] data_in;
  wire [(D_WIDTH-1):0] data_out;
  reg  miso;
  wire  mosi;
  wire  spi_clk;
  wire  cs_n;
  wire  busy;

  SPI_top  SPI_loop_back_inst (
    .clk(clk),
    .reset_n(reset_n),
    .rw_n(rw_n),
    .start(start),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out),
    .miso(miso),
    .mosi(mosi),
    .spi_clk(spi_clk),
    .cs_n(cs_n),
    .busy(busy)
  );


 task init();
 begin
  clk = 0;
  reset_n = 0;
  rw_n = 0;
  addr = 3'h0;
  data_in = 32'h0;
  miso = 0;
  start = 0;

 end
 endtask

 task reset_release();
  #40 reset_n = 1;
 endtask

 //loop-back test added on 11/08/2024 04:14am
 
//assign miso = mosi;
always @(*) miso <= mosi ;

 task loop_back_test(input [(D_WIDTH-1):0] tx_data, input [(D_WIDTH-1):0] fmt_data);
 begin

    #1000;
  //dvsr, spi_reg_file[0];
  #40 ;
  rw_n = 0;
  addr = 3'h0;
  data_in = 32'h4;

  //cpol, cpha, cs_n, spi_reg_file[1];
  #40 ;
  addr = 3'h1;
  data_in = 32'h01;

  //tx_reg, spi_reg_file[3]
  #40;
  addr = 3'h3;
  data_in = tx_data;

  //fmt, spi_reg_file[4]
  #40;
  addr = 3'h4;
  data_in = fmt_data;
  
  //read back the assigned reg file
  #40;
  rw_n = 1;
  addr = 3'h0;
  #40;
  addr = 3'h1;
  #40
  addr = 3'h2;
  #40
  addr = 3'h3;
  #40
  addr = 3'h4;

  //start the FSM
  #80;
  start = 1;

  // #2000;
  #40
  start = 0;
  addr = 3'h32;

  #7000;
  
 end
 endtask


always #10  clk = ! clk ;

initial begin

  init();

  reset_release();

//   test1();

//   test2();

  loop_back_test(32'h5555, 32'd16) ;    //new test for loop back 16bits

  loop_back_test(32'hDEAD_BEEF, 32'd32) ;    //new test for loop back 32bits

  loop_back_test(32'hAA_AAAA, 32'd24) ;    //new test for loop back 32bits

  loop_back_test(32'hFFFF, 32'd16) ;    //new test for loop back 24bits

  loop_back_test(32'hC0DE_BAAD, 32'd32) ;    //new test for loop back 8bits
  $stop;
  
end

endmodule
