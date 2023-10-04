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

logic [3:0] hex_4 [3:0];

logic [15:0] reg2, reg7;
logic [4:0] state;
logic loadreg, loadmdr;

slc3_testtop test(.*);
assign hex_4 = test.slc.hex_4;
assign reg2 = test.slc.regs.R2_data;
assign reg7 = test.slc.regs.R7_data;
assign state = test.slc.state_controller.State;
assign loadreg = test.slc.LD_REG;
assign loadmdr = test.slc.LD_MDR;

assign MAR = test.slc.MAR;
assign PC = test.slc.PC;
assign MDR = test.slc.MDR;
assign IR = test.slc.IR;

always begin : CLOCK_GENERATION
#1 Clk = ~Clk;
end

initial begin : CLOCK_INITIALIZATION
Clk = 0;
end

initial begin : TEST_VECTORS
SW = 16'b0000000000001011;
Reset = 0;
Run = 0;
Continue = 0;
#5 Reset = 1;
#5 Reset = 0;
#5 Run = 1;
#5 Run = 0;

#70 Continue = 1;
#5 Continue = 0;

#170 Continue = 1;
#5 Continue = 0;
end

endmodule
