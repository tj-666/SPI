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



module SPI_top_tb;

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

  SPI_top  SPI_top_inst (
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

 //write to register file and start the FSM
 task test1();
 begin
    //dvsr, spi_reg_file[0];
    #40 ;
    addr = 3'h0;
    data_in = 32'h4;

    //cpol, cpha, cs_n, spi_reg_file[1];
    #40 ;
    addr = 3'h1;
    data_in = 32'h01;

    //tx_reg, spi_reg_file[3]
    #40;
    addr = 3'h3;
    data_in = 32'h55;

    //fmt, spi_reg_file[4]
    #40;
    addr = 3'h4;
    data_in = 32'h8;
    
    

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
    #40;
    start = 1;

    // #2000;
    #40
    start = 0;
    miso = 0;   //0

    #20;
    rw_n = 1;
    addr = 3'h2;

    #190;
    miso = 1;     //1
    #200;
    miso = 0;     //2
    #200;
    miso = 1;     //3
    #200;
    miso = 0;     //4
    #200;
    miso = 1;     //5
    #200;
    miso = 0;     //6
    #200;
    miso = 1;     //7
    #200;
    miso = 0;     //8
    #200;
    miso = 1;     //9



    #2000;
    rw_n = 0;
 end
    
 endtask

 
task test2();
 begin
    //dvsr, spi_reg_file[0];
    #40 ;
    addr = 3'h0;
    data_in = 8'h4;

    //cpol, cpha, cs_n, spi_reg_file[1];
    #40 ;
    addr = 3'h1;
    data_in = 32'h01;

    //tx_reg, spi_reg_file[3]
    #40;
    addr = 3'h3;
    data_in = 32'hA1;

    //fmt, spi_reg_file[4]
    #40;
    addr = 3'h4;
    data_in = 32'h10;
    
    

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
    miso = 0;   //0

    #20;
    rw_n = 1;
    addr = 3'h2;

    #190;
    miso = 1;     //1
    #200;
    miso = 0;     //2
    #200;
    miso = 1;     //3
    #200;
    miso = 0;     //4
    #200;
    miso = 1;     //5
    #200;
    miso = 0;     //6
    #200;
    miso = 1;     //7
    #200;
    miso = 0;     //8
    #200;
    miso = 1;     //9
    #200;
    miso = 0;     //10
    #200;
    miso = 1;     //11
    #200;
    miso = 0;     //12
    #200;
    miso = 1;     //13
    #200;
    miso = 0;     //14
    #200;
    miso = 1;     //15
    #200;
    miso = 0;     //16
    #200;
    miso = 1;     //17



    #2000;
 end
    
 endtask


always #10  clk = ! clk ;

initial begin

  init();

  reset_release();

  test1();

  test2();
  $stop;
  
end

endmodule
