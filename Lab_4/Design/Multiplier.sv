//Multiplier top level module
//for use with ECE 385 Fall 2023
//last modified by me :)


//Always use input/output logic types when possible, prevents issues with tools that have strict type enforcement

module Multiplier (input logic   Clk,     // Internal
                                Reset_Load_Clear,   // Push button 0
                                Execute,   // Push button 1
                  input  logic [7:0]  Din,     // input data
                  output LED,
                  output logic [7:0]  Aval,    // DEBUG
                                Bval,    // DEBUG
                  output logic [7:0] hex_seg, // Hex display control
                  output logic [3:0] hex_grid); // Hex display control

	 //local logic variables go here
	 logic Reset_Load_Clear_SH, Execute_SH;
	 logic Shift_En;
	 logic LSB_A, LSB_B;
	 logic [7:0] A, B, Din_S;
	 logic Subtract;
	 logic [8:0] Adder_D;
	 logic InAdd;
	 logic Clear_A;
	 logic Ld_B;
	 
	 
	 //We can use the "assign" statement to do simple combinational logic
	 assign Aval = A;
	 assign Bval = B;
	 assign LED = A[7]; //Concatenate is a common operation in HDL
	 
	 //Instantiation of modules here
	 register_unit    reg_unit (
                        .Clk(Clk),
                        .Clear(Clear_A),
                        .Ld_A(InAdd), //note these are inferred assignments, because of the existence a logic variable of the same name
                        .Ld_B(Ld_B),
                        .Shift_En(Shift_En),
                        .Switch_D(Din_S),
                        .Adder_D(Adder_D),
                        .A_out(LSB_A),
                        .B_out(LSB_B),
                        .A(A),
                        .B(B) );
                        
	 control          control_unit (
                        .Clk(Clk),
                        .Reset(Reset_Load_Clear_SH),
                        .Execute(Execute_SH),
                        .Add(LSB_B),
                        .Shift_En(Shift_En),
                        .Ld_B(Ld_B),
                        .Clear_A(Clear_A),
                        .Subtract(Subtract),
                        .InAdd(InAdd)
                        );
                        
      Adder9 a(.A(A), .D(Din_S), .X(A[7]), .Subtract(Subtract), .S(Adder_D));
                     
 	 //When you extend to 8-bits, you will need more HEX drivers to view upper nibble of registers, for now set to 0
     HexDriver HexA(
        .clk(Clk),
        .reset(Reset_Load_Clear_SH),
        .in({A[7:4], A[3:0], B[7:4], B[3:0]}),
        .hex_seg(hex_seg),
        .hex_grid(hex_grid)
     );
								
	 //Input synchronizers required for asynchronous inputs (in this case, from the switches)
	 //These are array module instantiations
	 //Note: S stands for SYNCHRONIZED, H stands for active HIGH
	 //Note: We can invert the levels inside the port assignments
	 sync button_sync[1:0] (Clk, {Reset_Load_Clear, Execute}, {Reset_Load_Clear_SH, Execute_SH});
	 sync Din_sync[7:0] (Clk, Din, Din_S);
	  
endmodule