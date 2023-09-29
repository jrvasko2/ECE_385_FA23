module testbench();

timeunit 10ns;
timeprecision 1ns;

logic [15:0] SW;
logic	Clk, Reset,Run, Continue;
logic [15:0] LED, IR;
logic [7:0] hex_seg;
logic [3:0] hex_grid;
logic [7:0] hex_segB;
logic [3:0] hex_gridB;
logic [15:0] MAR, PC, MDR;

slc3_testtop test(.*);

assign MAR = test.slc.MAR;
assign PC = test.slc.PC;
assign MDR = test.slc.MDR;

always begin : CLOCK_GENERATION
#1 Clk = ~Clk;
end

initial begin : CLOCK_INITIALIZATION
Clk = 0;
end

initial begin : TEST_VECTORS
SW = 16'b0000000000000000;
Reset = 0;
Run = 0;
Continue = 0;
#5 Reset = 1;
#5 Reset = 0;
#5 Run = 1;
#5 Run = 0;
end

endmodule
