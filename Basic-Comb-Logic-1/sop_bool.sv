module sop_bool(input logic A, B, C,
                output logic Y);

    // implementation with boolean equation for the circuit
    
    assign Y = (A & B) | (~B & C);

endmodule