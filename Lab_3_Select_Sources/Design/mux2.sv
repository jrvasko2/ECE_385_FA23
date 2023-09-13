`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 05:14:22 PM
// Design Name: 
// Module Name: mux2
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


module mux2(
    input select, c0, c1,
    input [3:0] A, B,
    output logic c,
    output logic [3:0] Q
    );
    
    always_comb
    begin
        unique case(select)
            1'b0    :   Q = A;
            1'b1    :   Q = B;
        endcase
        unique case(select)
            1'b0    :   c = c0;
            1'b1    :   c = c1;
        endcase
    end
endmodule