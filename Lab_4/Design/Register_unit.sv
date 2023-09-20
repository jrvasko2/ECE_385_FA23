module register_unit (input  logic Clk, Clear, Ld_A, Ld_B, 
                            Shift_En,
                      input  logic [7:0]  Switch_D,
                      input  logic [8:0]  Adder_D,
                      output logic A_out, B_out, X,
                      output logic [7:0]  A,
                      output logic [7:0]  B);

always_ff @ (posedge Clk)
begin
    if (Clear)
        X = 0;
    else if (Ld_A)
        X = Adder_D[8];
    else
        X = X;
end

//For A: bit shifted in is X, parallel load inputs come from the adder, parallel load enable comes from control unit, last bit is shifted out, data out is same
    reg_4  reg_A (.*, .D(Adder_D[7:0]), .Shift_In(X), .Load(Ld_A),
	               .Shift_Out(A_out), .Data_Out(A));

//For B: bit shifted in is LSB of A, parallel load inputs come from switches, parallel load enable comes from button
    reg_4  reg_B (.*, .D(Switch_D), .Shift_In(A_out), .Load(Ld_B),
	               .Shift_Out(B_out), .Data_Out(B));

endmodule