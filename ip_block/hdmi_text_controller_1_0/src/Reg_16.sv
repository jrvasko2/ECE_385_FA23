module reg_16 
              #(parameter width = 16)
              (input  logic Clk, Reset, Load,
              input  logic [width - 1:0]  D,
              output logic [width - 1:0]  Data_Out);

    always_ff @ (posedge Clk)
    begin
	 	 if (Reset) //notice, this is a sycnrhonous reset, which is recommended on the FPGA
			  Data_Out <= 'b0;
		 else if (Load)
			  Data_Out <= D;
    end

endmodule
