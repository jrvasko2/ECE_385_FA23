module select_adder (
	input  [15:0] A, B,
	input         cin,
	output [15:0] S,
	output        cout
);

    /* TODO
     *
     * Insert code here to implement a CSA adder.
     * Your code should be completly combinational (don't use always_ff or always_latch).
     * Feel free to create sub-modules or other files. */
     logic c12, c230, c231, c340, c341, c40, c41;
     adder4 stage1 (.A(A[3:0]), .B(B[3:0]), .cin(cin), .S(S[3:0]), .cout(c12));
     logic [11:0] temp0, temp1;
     adder4 stage20 (.A(A[7:4]), .B(B[7:4]), .cin(1'b0), .S(temp0[3:0]), .cout(c230));
     adder4 stage21 (.A(A[7:4]), .B(B[7:4]), .cin(1'b1), .S(temp1[3:0]), .cout(c231));
     
     adder4 stage30 (.A(A[11:8]), .B(B[11:8]), .cin(1'b0), .S(temp0[7:4]), .cout(c340));
     adder4 stage31 (.A(A[11:8]), .B(B[11:8]), .cin(1'b1), .S(temp1[7:4]), .cout(c341));
     
     adder4 stage40 (.A(A[15:12]), .B(B[15:12]), .cin(1'b0), .S(temp0[11:8]), .cout(c40));
     adder4 stage41 (.A(A[15:12]), .B(B[15:12]), .cin(1'b1), .S(temp1[11:8]), .cout(c41));
     
     logic c2, c3;
     
     mux2 select2 (.select(c12), .c0(c230), .c1(c231), .A(temp0[3:0]), .B(temp1[3:0]), .c(c2), .Q(S[7:4]));
     mux2 select3 (.select(c2), .c0(c340), .c1(c341), .A(temp0[7:4]), .B(temp1[7:4]), .c(c3), .Q(S[11:8]));
     mux2 select4 (.select(c3), .c0(c40), .c1(c41), .A(temp0[11:8]), .B(temp1[11:8]), .c(cout), .Q(S[15:12]));
endmodule
