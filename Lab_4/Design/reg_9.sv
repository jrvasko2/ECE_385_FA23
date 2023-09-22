module reg_9 (input  logic Clk, Clear, Load, Shift_En,
              input  logic [8:0]  D,
              output logic Shift_Out,
              output logic [8:0]  Data_Out);

    always_ff @ (posedge Clk)
    begin
	 	 if (Clear) //notice, this is a sycnrhonous reset, which is recommended on the FPGA
			  Data_Out <= 9'h0;
		 else if (Load)
			  Data_Out <= D;
		 else if (Shift_En)
		 begin
			  //concatenate shifted in data to the previous left-most 3 bits
			  //note this works because we are in always_ff procedure block
			  Data_Out <= { Data_Out[8],Data_Out[8:1] }; 
	    end
    end
	
    assign Shift_Out = Data_Out[0];

endmodule
