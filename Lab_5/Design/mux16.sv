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


module mux16(
    input select,
    input [15:0] A, B,
    output logic [15:0] Q
    );
    
    always_comb
    begin
        unique case(select)
            1'b0    :   Q = A;
            1'b1    :   Q = B;
        endcase
    end
endmodule