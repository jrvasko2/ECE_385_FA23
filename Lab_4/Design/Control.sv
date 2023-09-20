//Two-always example for state machine

module control (input  logic Clk, Reset, Execute, Add,
                output logic Shift_En, Ld_B, Clear_A, Subtract, InAdd );

    // Declare signals curr_state, next_state of type enum
    // with enum values of A, B, ..., F as the state values
	 // Note that the length implies a max of 8 states, so you will need to bump this up for 8-bits
    enum logic [5:0] {Halt, Prep, Shift1, Add1, Shift2, Add2, Shift3, Add3, Shift4, Add4, Shift5, Add5, Shift6, Add6, Shift7, Add7, Shift8, Add8, Finish}   curr_state, next_state; 
    // 
	//updates flip flop, current state is the only one
    always_ff @ (posedge Clk)  
    begin
        if (Reset)
            curr_state <= Halt;
        else 
            curr_state <= next_state;
    end

    // Assign outputs based on state
	always_comb
    begin
        
		  next_state  = curr_state;	//required because I haven't enumerated all possibilities below
        unique case (curr_state) 

            Halt :    if (Execute)
                       next_state = Prep;
            Prep :    next_state = Shift1;
            Add1 :    next_state = Shift1;
            Shift1 :    if (Add)
                            next_state = Add2;
                        else
                            next_state = Shift2;
            Add2 :    next_state = Shift2;
            Shift2 :    if (Add)
                            next_state = Add3;
                        else
                            next_state = Shift3;
            Add3 :    next_state = Shift3;
            Shift3 :    if (Add)
                            next_state = Add4;
                        else
                            next_state = Shift4;
            Add4 :    next_state = Shift4;
            Shift4 :    if (Add)
                            next_state = Add5;
                        else
                            next_state = Shift5;
            Add5 :    next_state = Shift5;
            Shift5 :    if (Add)
                            next_state = Add6;
                        else
                            next_state = Shift6;
            Add6 :    next_state = Shift6;
            Shift6 :    if (Add)
                            next_state = Add7;
                        else
                            next_state = Shift7;
            Add7 :    next_state = Shift7;
            Shift7 :    if (Add)
                            next_state = Add8;
                        else
                            next_state = Shift8;
            Add8 :    next_state = Shift8;
            Shift8 :    next_state = Finish;
            Finish :  if (~Execute)
                        next_state = Halt;
							  
        endcase
   
		  // Assign outputs based on ‘state’
        case (curr_state) 
	   	   Halt: 
	         begin
                Ld_B = Reset;
                Clear_A = Reset;
                Shift_En = 1'b0;
                Subtract = 1'b0;
                InAdd = 1'b0;
		      end
	   	   Prep: 
		      begin
                Clear_A = 1'b1;
                Ld_B = 1'b0;
                Shift_En = 1'b0;
                Subtract = 1'b0;
                InAdd = 1'b0;
		      end
		   Shift1:
		      begin
		        Clear_A = 1'b0;
                Ld_B = 1'b0;
                Shift_En = 1'b1;
                Subtract = 1'b0;
                InAdd = 1'b0;
		      end
		   Shift2:
		      begin
		        Clear_A = 1'b0;
                Ld_B = 1'b0;
                Shift_En = 1'b1;
                Subtract = 1'b0;
                InAdd = 1'b0;
		      end
		   Shift3:
		      begin
		        Clear_A = 1'b0;
                Ld_B = 1'b0;
                Shift_En = 1'b1;
                Subtract = 1'b0;
                InAdd = 1'b0;
		      end
		   Shift4:
		      begin
		        Clear_A = 1'b0;
                Ld_B = 1'b0;
                Shift_En = 1'b1;
                Subtract = 1'b0;
                InAdd = 1'b0;
		      end
		   Shift5:
		      begin
		        Clear_A = 1'b0;
                Ld_B = 1'b0;
                Shift_En = 1'b1;
                Subtract = 1'b0;
                InAdd = 1'b0;
		      end
		   Shift6:
		      begin
		        Clear_A = 1'b0;
                Ld_B = 1'b0;
                Shift_En = 1'b1;
                Subtract = 1'b0;
                InAdd = 1'b0;
		      end
		   Shift7:
		      begin
		        Clear_A = 1'b0;
                Ld_B = 1'b0;
                Shift_En = 1'b1;
                Subtract = 1'b0;
                InAdd = 1'b0;
		      end
		   Shift8:
		      begin
		        Clear_A = 1'b0;
                Ld_B = 1'b0;
                Shift_En = 1'b1;
                Subtract = 1'b0;
                InAdd = 1'b0;
		      end
		   Add8:
		      begin
		        Clear_A = 1'b0;
		        Ld_B = 1'b0;
		        Shift_En = 1'b0;
		        Subtract = Add;
		        InAdd = 1'b1;
		      end
		   Finish:
		      begin
		        Clear_A = 1'b0;
                Ld_B = 1'b0;
                Shift_En = 1'b0;
                Subtract = 1'b0;
                InAdd = 1'b0;
		      end
	   	   default:  //default case, applies to Add1-Add7
		      begin 
                Clear_A = 1'b0;
                Ld_B = 1'b0;
                Shift_En = 1'b0;
                Subtract = 1'b0;
                InAdd = 1'b1;
		      end
        endcase
    end

endmodule
