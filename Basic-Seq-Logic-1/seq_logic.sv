module seq_logic(input logic A, select, CLK,
                 output logic F);

    logic mux_out; // define internal var - output of multiplexer

    assign mux_out = select ? A : ~F; // continuous assignment
    // mux_out = A if select asserted
    // mux_out = not(F) if select de-asserted

    always_ff @ (posedge CLK) // flip-flop cyclic loop
    // this block executes on every rising CLK edge 0->1
    begin
        F <= mux_out; 
        // non-blocking operator <= used in cyclic assignment
    end

endmodule