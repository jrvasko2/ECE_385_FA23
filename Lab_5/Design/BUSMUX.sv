module BUSMUX (input  logic [3:0] Select,
              input logic [15:0] Data_PC, Data_MAR, Data_ALU, Data_MDR,
              output logic [15:0]  Data_Out);

    always_comb
    begin
	 	 unique case(Select)
	 	 4'b1000 :   Data_Out = Data_PC;
	 	 4'b0100 :   Data_Out = Data_MAR;
	 	 4'b0010 :   Data_Out = Data_ALU;
	 	 4'b0001 :   Data_Out = Data_MDR;
	 	 default :   Data_Out = 16'bx;
	 	 endcase
    end

endmodule
