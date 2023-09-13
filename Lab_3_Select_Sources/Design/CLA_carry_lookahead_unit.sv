module CLA_carry_lookahead_unit(
    input logic cin,
    input logic[3:0] p, g,
    output logic c1, c2, c3, cout,
    output logic pg, gg
    );
    
assign c1 = cin & p[0] | g[0];
assign c2 = cin & p[0] & p[1] | g[0] & p[1] | g[1];
assign c3 = cin & p[0] & p[1] & p[2] | g[0] & p[1] & p[2] | g[1] & p[2] | g[2];
assign cout = cin & p[0] & p[1] & p[2] & p[3] | g[0] & p[1] & p[2] & p[3] | g[1] & p[2] & p[3] | g[2] & p[3] | g[3];
assign pg = p[0] & p[1] & p[2] & p[3];
assign gg = g[3] | g[2] & p[3] | g[1] & p[3] & p[2] | g[0] & p[3] & p[2] & p[1];

endmodule
