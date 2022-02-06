`timescale 1ns/1ps 
// define simulation time unit = 1 ns and time resolution 1 ps

`include "seq_logic.sv" // include device under test (DUT)

module seq_logic_tb; // testbench has no I/O

    logic A, select, CLK, F; // define internal vars of testbench
    seq_logic dut(A, select, CLK, F); // initialise DUT

    
    // define CLK signal with period 20 ns:
    always // runs simultaneously w other code and updates CLK every 10 ns
    begin
        CLK = 1; #10; CLK = 0; #10; // change CLK high-low every 10 ns
    end

    initial // single-pass code block initialisation
    begin
        $dumpfile("seq_logic_tb.vcd");
        // defines the VCD file where var changes of the testbench are dumped
        $dumpvars(0, seq_logic_tb);
        // specify to dump this testbench file on the VCD file defined above

        // testing I/O of DUT:
        A = 0; select = 1;
        #15; // to unsync var changes from CLK changes
        A = 1;
        #10;
        A = 0;
        #10;
        select = 0;
        #10;
        A = 1;
        #10;
        A = 0;
        #10;
        select = 1;
        #10;
        $finish;
    end // end stimuli

    initial
    begin
        $monitor("t = %3d, A = %d select = %d F = %d", $time, A, select, F);
        // display timing and vars A, select, F to the monitor
    end

endmodule