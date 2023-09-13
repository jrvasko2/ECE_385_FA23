module CLA_4(
    input logic cin,
    input logic[3:0] A, B,
    output logic pg, gg,
    output logic[3:0] S
    );

logic c1, c2, c3, cout;
logic[3:0] P, G;
CLA_full_adder CFA0(.x(A[0]), .y(B[0]), .z(cin), .s(S[0]), .p(P[0]), .g(G[0]));
CLA_full_adder CFA1(.x(A[1]), .y(B[1]), .z(c1), .s(S[1]), .p(P[1]), .g(G[1]));
CLA_full_adder CFA2(.x(A[2]), .y(B[2]), .z(c2), .s(S[2]), .p(P[2]), .g(G[2]));
CLA_full_adder CFA3(.x(A[3]), .y(B[3]), .z(c3), .s(S[3]), .p(P[3]), .g(G[3]));
CLA_carry_lookahead_unit lookahead(.cin(cin), .p(P), .g(G), .c1(c1), .c2(c2), .c3(c3), .cout(cout), .pg(pg), .gg(gg));


endmodule