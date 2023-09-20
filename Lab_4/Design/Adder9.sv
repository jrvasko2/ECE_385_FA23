module Adder9(
    input logic [8:0] A, B,
    input logic Subtract,
    output logic [8:0] S,
    output logic cout
    );
    logic c1, c2, c3, c4, c5, c6, c7, c8;
    logic [8:0] C;
    
    assign C[0] = (Subtract&(~B[0]))|((~Subtract)&B[0]);
    assign C[1] = (Subtract&(~B[1]))|((~Subtract)&B[1]);
    assign C[2] = (Subtract&(~B[2]))|((~Subtract)&B[2]);
    assign C[3] = (Subtract&(~B[3]))|((~Subtract)&B[3]);
    assign C[4] = (Subtract&(~B[4]))|((~Subtract)&B[4]);
    assign C[5] = (Subtract&(~B[5]))|((~Subtract)&B[5]);
    assign C[6] = (Subtract&(~B[6]))|((~Subtract)&B[6]);
    assign C[7] = (Subtract&(~B[7]))|((~Subtract)&B[7]);
    assign C[8] = (Subtract&(~B[8]))|((~Subtract)&B[8]);
    
    full_adder FA0(.x(A[0]), .y(C[0]), .z(Subtract), .s(S[0]), .c(c1));
    full_adder FA1(.x(A[1]), .y(C[1]), .z(c1), .s(S[1]), .c(c2));
    full_adder FA2(.x(A[2]), .y(C[2]), .z(c2), .s(S[2]), .c(c3));
    full_adder FA3(.x(A[3]), .y(C[3]), .z(c3), .s(S[3]), .c(c4));
    full_adder FA4(.x(A[4]), .y(C[4]), .z(c4), .s(S[4]), .c(c5));
    full_adder FA5(.x(A[5]), .y(C[5]), .z(c5), .s(S[5]), .c(c6));
    full_adder FA6(.x(A[6]), .y(C[6]), .z(c6), .s(S[6]), .c(c7));
    full_adder FA7(.x(A[7]), .y(C[7]), .z(c7), .s(S[7]), .c(c8));
    full_adder FA8(.x(A[8]), .y(C[8]), .z(c8), .s(S[8]), .c(cout));
    
endmodule