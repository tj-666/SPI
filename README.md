# SPIV0.2 #
####
#### Removed extra logic in S_DRIVE of spi_controller.v, now S_DRIVE->S_IDLE transition denotes the end of SPI transaction.
#### Added new loop_back_test_tb, the tb is capable of doing loopback test for required fmt.
#### Added rx padding to remove residual data from RX shift regsiter (SIPO).
####
#### outcome : 1.Loopback test successfull for 8, 16, 24, 32 bits.
####           2.Loopback test successfull in behavioural, post synth timing and post implementation timing simulations.
####           3.Functionality unafected from exit condition removal of S_DRIVE->S_IDLE
####           4.Residual data from RX register is successfully removed before loading to register file.
####

# WAVEFORM SIMULATION RESULT #

![image](https://github.com/user-attachments/assets/f9a6c2ce-05b4-4842-8178-1ed2ff8baaef)

![image](https://github.com/user-attachments/assets/eafd6140-eb5a-431d-8688-3514d14ed0ef)


# END OF SPIV0.2 #
