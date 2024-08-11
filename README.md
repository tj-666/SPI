#SPI repo#
#SPI master core synthesiszed and simulated in Vivado.
#AIM : To generate SPI master that can be interfaced later with AXI slave interconnect i.e SPI peripheral that can be 
#connected to an AXI bridge.

#Current version - V0.1
#Status - 1.SPI master core successfully synthesized in Vivado. 
          2.Simple verilog testbench was created to verify the SPI operation in mode 0 only.


#Issues : 1. Additional logic at S_SAMPLE state to transition to S_IDLE state.
