`timescale 1ns/1ps // define timescale 1 ns and resolution 1 ps = 0.001 ns

`include "and2.sv" // include DUT = device under test

module and2_tb; // testbench for testing the add2.sv AND gate

    logic a, b, y;      // define vars used in the testbench
    and2 dut (a, b, y); // define the add2.sv gate as DUT (named locally) w I/O being vars a,b,y

    initial // single iteration of block
    begin
        $dumpfile("and2_tb.vcd"); /* dump var changes of the testbench file 
                                  onto this Variable Dump Changes (vcd) file */
        $dumpvars(0, and2_tb);    /* Specifies to dump into VCD the lvl 0 file (i.e. top-level file) 
                                  w module name add2_tb */

        a = 0; b = 0; #20; // Set variable values and set time delay 20ns
        b = 1; #20;        // Update var after 20ns from a=0,b=0
        a = 1; #20;        // Update var a after 20ns from updating b
        b = 0; #20;        // Update b after 20ns from updating a. End testbench after another 20ns
    end

    initial
    begin
        $monitor("t = %3d, a = %b, b = %b, y = %b \n", $time, a, b, y);
        // print to monitor vars t time in decimal, vars a b y in binary
    end

endmodule