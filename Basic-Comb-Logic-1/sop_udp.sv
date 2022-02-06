primitive sop_udp(input logic A, B, C,
                  output logic Y);

    // user-defined primitive (UDP) to implement the logic circuit
    
    // implementation with truth table definition
    table
//  A   B   C : Y
    0   0   0 : 0
    0   0   1 : 1
    0   1   0 : 0
    0   1   1 : 0
    1   0   0 : 0
    1   0   1 : 1
    1   1   0 : 1
    1   1   1 : 1
    endtable

endprimitive