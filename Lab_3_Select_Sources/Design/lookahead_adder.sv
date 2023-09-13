module lookahead_adder (
	input  [15:0] A, B,
	input         cin,
	output [15:0] S,
	output        cout
);

logic c4, c8, c12;
logic[3:0] pg, gg;
logic pgdummy, ggdummy;

CLA_4 unit1(.cin(cin), .A(A[3:0]), .B(B[3:0]), .pg(pg[0]), .gg(gg[0]), .S(S[3:0]));
CLA_4 unit2(.cin(c4), .A(A[7:4]), .B(B[7:4]), .pg(pg[1]), .gg(gg[1]), .S(S[7:4]));
CLA_4 unit3(.cin(c8), .A(A[11:8]), .B(B[11:8]), .pg(pg[2]), .gg(gg[2]), .S(S[11:8]));
CLA_4 unit4(.cin(c12), .A(A[15:12]), .B(B[15:12]), .pg(pg[3]), .gg(gg[3]), .S(S[15:12]));
CLA_carry_lookahead_unit lookahead(.cin(cin), .p(pg), .g(gg), .c1(c4), .c2(c8), .c3(c12), .cout(cout), .pg(pgdummy), .gg(ggdummy));
     

endmodule
