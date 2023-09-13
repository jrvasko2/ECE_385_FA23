`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 09:06:36 PM
// Design Name: 
// Module Name: adder4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder4(
    input [3:0] A, B,
    input cin,
    output [3:0] S,
    output cout
    );
    
    logic c1, c2, c3;
     
    full_adder adder1		(.x(A[0]), .y(B[0]), .z(cin), .s(S[0]), .c(c1) );
    full_adder adder2		(.x(A[1]), .y(B[1]), .z(c1), .s(S[1]), .c(c2) );
    full_adder adder3		(.x(A[2]), .y(B[2]), .z(c2), .s(S[2]), .c(c3) );
    full_adder adder4		(.x(A[3]), .y(B[3]), .z(c3), .s(S[3]), .c(cout) );
endmodule
