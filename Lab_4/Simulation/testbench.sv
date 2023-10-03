module testbench();

timeunit 10ns;

timeprecision 1ns;


logic Clk, Reset_Load_Clear
, Execute;
logic [7:0]  Din;
logic [8:0]  Aval;
 logic [7:0] Bval;
logic [7:0] hex_seg;
logic [3:0] hex_grid;

Multiplier multiplier0(.*);

always begin : CLOCK_GENERATION
#1Clk = ~Clk;
end

initial begin : CLOCK_INITIALIZATION
Clk = 0;
end


initial begin : TEST_VECTORS
//-7 = f9, 7 = 7, 59 = 3b, -59=C5
//413 = 019d, -413 = fe63
Din =  8'h8c;
Reset_Load_Clear = 0s;
Execute = 0;
#5 Reset_Load_Clear = 1;
#5 Reset_Load_Clear = 0;
Din = 8'h8c;
#5 Execute = 1;
#5 Execute = 0;
end

/*
logic Clk, Reset, Execute, Add,
 Shift_En, Ld_B, Clear_A, Subtract, InAdd, InHalt;

control control0(.*);

always begin : CLOCK_GENERATION
#1Clk = ~Clk;
end

initial begin : CLOCK_INITIALIZATION
Clk = 0;
end

initial begin : TEST_VECTORS
Reset = 0;
Execute = 0;
Add = 0;
#55 Reset = 1;
#5 Reset = 0;
#5 Execute = 1;
#4 Add = 1;
#2 Add = 0;
end
*/
endmodule