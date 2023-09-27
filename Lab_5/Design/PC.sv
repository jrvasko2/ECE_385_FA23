module PC (input  logic Clk, Reset, Load_PC,
              input logic [1:0] MUX_Control,
              input  logic [15:0]  Data_In_Bus, Data_In_Plus,
              output logic [15:0]  Data_Out);
    
    logic [15:0] MUX_Output;
    
    reg_16 PCreg(.Clk(Clk), .Reset(Reset), .Load(Load_PC), .D(MUX_Output), .Data_Out(Data_Out));
    
    always_comb
    begin
	 	 unique case(MUX_Control)
	 	 // NOT SURE IF THIS ADDITION WORKS
	 	 2'b00   :   MUX_Output = Data_Out + 1'b1;
	 	 2'b01   :   MUX_Output = Data_In_Plus;
	 	 2'b10   :   MUX_Output = Data_In_Bus;
	 	 // Not sure if this works either but shouldn't matter anyway
	 	 2'b11   :   MUX_Output = 16'bx;
	 	 endcase
    end

endmodule
