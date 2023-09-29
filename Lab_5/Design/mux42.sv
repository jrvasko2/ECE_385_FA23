module mux42
    #(parameter width = 16)
    (
    input logic[width - 1:0] A, B, C, D,
    input logic[1:0] select,
    output logic[width - 1:0] Q
    );

always_comb
begin
    unique case(select)
    2'b00   : Q = A; 
    2'b01   : Q = B;
    2'b10   : Q = C;
    2'b11   : Q = D;
    endcase
end
endmodule
