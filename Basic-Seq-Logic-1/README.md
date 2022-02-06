Sequential logic circuit below implemented in the SystemVerilog HDL:

![image](https://user-images.githubusercontent.com/73920832/152664222-a6fee27a-fb43-4508-b9ba-b15d8c110a68.png)

Then, an SV testbench is used to test the sequential logic circuit and display its operation on the GTKWave waveform analyser. The outputs of the testbench from compilation of the sv files in the terminal are as follows and match the GTKWave graph:

```
VCD info: dumpfile seq_logic_tb.vcd opened for output.
t =   0, A = 0 select = 1 F = x
t =  15, A = 1 select = 1 F = x
t =  20, A = 1 select = 1 F = 1
t =  25, A = 0 select = 1 F = 1
t =  35, A = 0 select = 0 F = 1
t =  40, A = 0 select = 0 F = 0
t =  45, A = 1 select = 0 F = 0
t =  55, A = 0 select = 0 F = 0
t =  60, A = 0 select = 0 F = 1
t =  65, A = 0 select = 1 F = 1
seq_logic_tb.sv:40: $finish called at 75000 (1ps)
```

This is shown graphically by the GTKWave analyser:
![image](https://user-images.githubusercontent.com/73920832/152664850-914e3249-e656-4228-827a-9d77629de614.png)

For the first 20 ns, the output F is ambiguous (X). Then the output is correct for the operation of the logic circuit with input A, clock signal CLK (square wave with period 20 ns) and _select_ signal to assert the multiplexer (MUX).
