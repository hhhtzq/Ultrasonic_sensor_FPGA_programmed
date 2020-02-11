# Ultrasonic_sensor_programmed(FPGA)
## Task 1
 
Implement a VHDL module  that generates a clock with a period of 1μs from the board clock, which is currently 100 MHz on the Basys 3 board.

- Write a test bench and simulate the module to test its behaviour.

- Verify the behaviour by downloading the module to the FPGA board and connect the
output clock pin to an oscilloscope.

## Task 2

Using the module developed in section 2.2, implement the Echo_Analyser module that can generate pulses of width defined by a generic parameter. Set the pulse width to
10 μs by default. The repetition frequency of the pulse should be no higher than 10Hz.

- Write a test bench and simulate the module to test its behaviour.

- Verify the behaviour on FPGA by using a couple of different values for the pulse width
  and connect the pulse output to an oscilloscope.

## Task 3

Using the modules developed in sections 2.2 and 2.4, implement an additional Echo_Analyser module that receives an echo signal and measures its pulse duration as number of clock cycles.
- Write a test bench and simulate the module to test its behaviour. The simulation test bench
should create echo pulses that have widths between 200μs and 600μs.
- Verify the behaviour of the module in FPGA by using an external signal generator to send echo pulses and use LEDs to present the decoded values of the pulses. The signal generator
should send echo pulses that have widths between 200μs and 600μs.

## Task 4 
Implement a VHDL module that performs synchronous integer division of an input number with a constant denominator 58. The resulting quote should be rounded to the closest, lower integer number. Consequently, any input number less than 58 should result in zero quote. Hence, 34 => 0; 70 => 1; 290 => 5; 580 => 10; and 300 => 5.
- Write a test bench and simulate the module to test its behaviour.
- Verify the behaviour on FPGA by using switches as input values and LEDs to present the
outputs.

##  Sensor Controller
The range sensor requires a controller that gives trigger pulses and continuously measures length of the echo signal. Section 2.1 further describes the controller also depicted in figure 2. Use the on board LEDs to display measured distance as a binary number.

Design a top module  to control an SR04 range sensor module. Since the sensor has a maximum rate of 20Hz we will choose a rate of 10Hz. This means the trigger signal should have at least 100ms (100,000μs) between 2 consecutive pulses.
- Implement the top module by instantiating all the modules from Task 1 to Task 4 (as shown in Figure 2).
- Write a test bench and test the top module through simulation
- Connect the range sensor to one of the PMOD connectors of the FPGA board. Open the
.xdc constraint file in Vivado and make sure all signals in the top level entity has a corresponding external pin mapping. Synthesize, implement and download this controller design and verify detected ranges by viewing displayed binary numbers.
