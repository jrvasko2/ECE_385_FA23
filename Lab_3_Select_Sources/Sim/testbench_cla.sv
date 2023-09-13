module testbench_cla();

timeunit 10ns;
timeprecision 1ns;

logic Clk;
logic[15:0] A, B;
logic cin;
logic [15:0] S;
logic cout;

always begin: CLOCK_GENERATION
    #1 Clk = ~Clk;
end

initial begin: CLOCK_INITIALIZATION
    Clk = 0;
end

lookahead_adder test_adder(.*);

initial begin: TESTBODY
    #5 A = 16'b0000000000000000;
    B = 16'b0000000000000000;
    cin = 0;
    #5 A = 16'b1101000000000001;
    B = 16'b100001100000001;
    cin = 1;
end

endmodule
