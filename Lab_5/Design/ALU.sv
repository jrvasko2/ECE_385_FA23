module ALU(
    input logic[15:0] SR1, SR2_mux_out,
    input logic[1:0] ALUK,
    output logic[15:0] ALU_out
    );
    
always_comb
begin
    unique case(ALUK)
        //add
        2'b00   : ALU_out = SR1+SR2_mux_out;
        //and
        2'b01   : ALU_out = SR1&SR2_mux_out;
        //not
        2'b10   : ALU_out = ~SR1;
        //else (pass register input)
        2'b11   : ALU_out = SR1;
    endcase
end
endmodule
