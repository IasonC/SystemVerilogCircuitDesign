module sop_prim(input logic A, B, C
                output logic Y);
    
    logic and1, and2, notB; 
    // internal variables from and and not gates

    // implementation with built-in primitives (outputs first, then inputs):

    and(and1, A, B); // output and1 = A and B = A & B
    
    not(notB, B); // output notB = not B = ~B
    and(and2, notB, C); // output and2 = notB and C = (~B) & C

    or(Y, and1, and2); // final output Y = and1 and and2 = and1 & and2

endmodule