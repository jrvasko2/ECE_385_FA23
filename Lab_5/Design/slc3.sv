//------------------------------------------------------------------------------
// Company: 		 UIUC ECE Dept.
// Engineer:		 Stephen Kempf
//
// Create Date:    
// Design Name:    ECE 385 Given Code - SLC-3 core
// Module Name:    SLC3
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 09-22-2015 
//    Revised 06-09-2020
//	  Revised 03-02-2021
//    Xilinx vivado
//    Revised 07-25-2023 
//------------------------------------------------------------------------------


module slc3(
	input logic [15:0] SW,
	input logic	Clk, Reset, Run, Continue,
	output logic [15:0] LED,
	input logic [15:0] Data_from_SRAM,
	output logic OE, WE,
	output logic [7:0] hex_seg,
	output logic [3:0] hex_grid,
	output logic [7:0] hex_segB,
	output logic [3:0] hex_gridB,
	output logic [15:0] ADDR,
	output logic [15:0] Data_to_SRAM
);

// Internal connections
logic LD_MAR, LD_MDR, LD_IR, LD_BEN, LD_CC, LD_REG, LD_PC, LD_LED;
logic GatePC, GateMDR, GateALU, GateMARMUX;
logic SR2MUX, ADDR1MUX, MARMUX;
logic BEN, MIO_EN, DRMUX, SR1MUX, BEN_in;
logic [1:0] PCMUX, ADDR2MUX, ALUK;
logic [2:0] CC, CC_in;
logic [15:0] MDR_In;
logic [15:0] MAR, MDR, IR, ALU_out, SR2_mux_out, ADDR1_mux_out, ADDR2_mux_out, adder_out;
logic [3:0] hex_4[3:0]; 

// PC Intermediate variable
logic [15:0] PC;
// BUS Intermediate variable
logic [15:0] BUS;
// MDR Intermediate variable to get from MUX to register
logic [15:0] MDR_Intermediate;
//intermediate variables for SR1/SR2
logic[15:0] SR1, SR2;
//intermediate logic for SR1MUX/DRMUX
logic[2:0] SR1_select, DR_select;

HexDriver HexA (
    .clk(Clk),
    .reset(Reset),
    .in({hex_4[3][3:0],  hex_4[2][3:0], hex_4[1][3:0], hex_4[0][3:0]}),
    .hex_seg(hex_seg),
    .hex_grid(hex_grid)
);

// You may use the second (right) HEX driver to display additional debug information
// For example, Prof. Cheng's solution code has PC being displayed on the right HEX

HexDriver HexB (
    .clk(Clk),
    .reset(Reset),
    .in({IR[15:12], IR[11:8], IR[7:4], IR[3:0]}),
    .hex_seg(hex_segB),
    .hex_grid(hex_gridB)
);

// Connect MAR to ADDR, which is also connected as an input into MEM2IO
//	MEM2IO will determine what gets put onto Data_CPU (which serves as a potential
//	input into MDR)
assign ADDR = MAR; 
assign MIO_EN = OE;

//CC LOGIC
assign CC_in[2] = BUS[15];
assign CC_in[1] = ~(BUS[15] | BUS[14] | BUS[13] | BUS[12] | BUS[11] | BUS[10] | BUS[9] | BUS[8] | BUS[7] | BUS[6] | BUS[5] | BUS[4] | BUS[3] | BUS[2] | BUS[1] | BUS[0]);
assign CC_in[0] = (~BUS[15])&(BUS[14] | BUS[13] | BUS[12] | BUS[11] | BUS[10] | BUS[9] | BUS[8] | BUS[7] | BUS[6] | BUS[5] | BUS[4] | BUS[3] | BUS[2] | BUS[1] | BUS[0]);

//BEN LOGIC
assign BEN_in = IR[11]&CC[2]|IR[10]&CC[1]|IR[9]&CC[0];

// Instantiate the rest of your modules here according to the block diagram of the SLC-3
// including your register file, ALU, etc..
mux16 MDRmux(.select(MIO_EN), .A(BUS), .B(MDR_In), .Q(MDR_Intermediate));
// MAR register
reg_16 MARreg(.Clk(Clk), .Reset(Reset), .Load(LD_MAR), .D(BUS), .Data_Out(MAR));

// MDR register
reg_16 MDRreg(.Clk(Clk), .Reset(Reset), .Load(LD_MDR), .D(MDR_Intermediate), .Data_Out(MDR));

// IR register
reg_16 IRreg(.Clk(Clk), .Reset(Reset), .Load(LD_IR), .D(BUS), .Data_Out(IR));

// CC register
reg_16 #(3) CC_reg(.Clk(Clk), .Reset(Reset), .Load(LD_CC), .D(CC_in), .Data_Out(CC));

//BEN register (1 bit)
reg_16 #(1) BEN_reg(.Clk(Clk), .Reset(Reset), .Load(LD_BEN), .D(BEN_in), .Data_Out(BEN));

//SR1MUX
mux16 #(3) SR1_MUX(.select(SR1MUX), .A(IR[11:9]), .B(IR[8:6]), .Q(SR1_select));
//DRMUX
mux16 #(3) DR_MUX(.select(DRMUX), .A(3'b111), .B(IR[11:9]), .Q(DR_select));
//SR2MUX
mux16 SR2_MUX(.select(SR2MUX), .A({{11{IR[4]}}, IR[4:0]}), .B(SR2), .Q(SR2_mux_out));
//ADDR1MUX
mux16 ADDR1_MUX(.select(ADDR1MUX), .A(PC), .B(SR1), .Q(ADDR1_mux_out));
//ADDR2MUX
mux42 ADDR2_MUX(.select(ADDR2MUX), .A(16'b0), .B({{10{IR[5]}}, IR[5:0]}), .C({{7{IR[8]}}, IR[8:0]}), .D({{5{IR[10]}}, IR[10:0]}), .Q(ADDR2_mux_out));

// Data_In_Plus is hard coded to be 0 for part 1
PC PCunit(.Clk(Clk), .Reset(Reset), .Load_PC(LD_PC), .MUX_Control(PCMUX), .Data_In_Bus(BUS), .Data_In_Plus(adder_out), .Data_Out(PC));
// jason has many BMs
BUSMUX BM(.Select({GatePC, GateMARMUX, GateALU, GateMDR}), .Data_PC(PC), .Data_MAR(adder_out), .Data_ALU(ALU_out), .Data_MDR(MDR), .Data_Out(BUS));

// Register file holding all of our 8 operational registers
reg_unit regs(.load(LD_REG), .Clk(Clk), .Reset(Reset), .BUSSIN(BUS), .DR_select(DR_select), .SR1_select(SR1_select), .SR2_select(IR[2:0]), .SR1(SR1), .SR2(SR2));

//ALU
ALU alu(.SR1(SR1), .SR2_mux_out(SR2_mux_out), .ALUK(ALUK), .ALU_out(ALU_out));

//adder unit but we're lazy so we're reusing ALU
ALU adder_unit(.SR1(ADDR1_mux_out), .SR2_mux_out(ADDR2_mux_out), .ALUK(2'b00), .ALU_out(adder_out));

// Our I/O controller (note, this plugs into MDR/MAR)

Mem2IO memory_subsystem(
    .*, .Reset(Reset), .ADDR(ADDR), .Switches(SW),
    .HEX0(hex_4[0][3:0]), .HEX1(hex_4[1][3:0]), .HEX2(hex_4[2][3:0]), .HEX3(hex_4[3][3:0]), 
    .Data_from_CPU(MDR), .Data_to_CPU(MDR_In),
    .Data_from_SRAM(Data_from_SRAM), .Data_to_SRAM(Data_to_SRAM)
);

// State machine, you need to fill in the code here as well
ISDU state_controller(
	.*, .Reset(Reset), .Run(Run), .Continue(Continue),
	.Opcode(IR[15:12]), .IR_5(IR[5]), .IR_11(IR[11]),
   .Mem_OE(OE), .Mem_WE(WE)
);
	
endmodule
