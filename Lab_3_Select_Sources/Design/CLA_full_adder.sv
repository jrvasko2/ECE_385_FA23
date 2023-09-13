module CLA_full_adder(
    input logic x, y, z,
    output logic s, p, g
    );
assign s = x^y^z;
assign p = x^y;
assign g = x&y;

endmodule
