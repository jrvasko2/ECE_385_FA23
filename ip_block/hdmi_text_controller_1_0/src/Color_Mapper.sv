//-------------------------------------------------------------------------
//    Color_Mapper.sv                                                    --
//    Stephen Kempf                                                      --
//    3-1-06                                                             --
//                                                                       --
//    Modified by David Kesler  07-16-2008                               --
//    Translated by Joe Meng    07-07-2013                               --
//    Modified by Zuofu Cheng   08-19-2023                               --
//                                                                       --
//    Fall 2023 Distribution                                             --
//                                                                       --
//    For use with ECE 385 USB + HDMI                                    --
//    University of Illinois ECE Department                              --
//-------------------------------------------------------------------------


module  color_mapper ( input  logic [9:0] DrawX, DrawY,
                       input logic [7:0] code,
                       input logic [31:0] control,
                       output logic [3:0]  Red, Green, Blue );
	 
 /* Old Ball: Generated square box by checking if the current pixel is within a square of length
    2*BallS, centered at (BallX, BallY).  Note that this requires unsigned comparisons.
	 
    if ((DrawX >= BallX - Ball_size) &&
       (DrawX <= BallX + Ball_size) &&
       (DrawY >= BallY - Ball_size) &&
       (DrawY <= BallY + Ball_size))
       )

     New Ball: Generates (pixelated) circle by using the standard circle formula.  Note that while 
     this single line is quite powerful descriptively, it causes the synthesis tool to use up three
     of the 120 available multipliers on the chip!  Since the multiplicants are required to be signed,
	  we have to first cast them from logic to int (signed by default) before they are multiplied). */
	  
	logic [10:0] sprite_addr;
	logic [7:0] sprite_data;
	logic [7:0] backwards;
	
	font_rom fr(
        .addr(sprite_addr),
        .data(sprite_data)
    );
  
    always_comb
    begin:Ball_on_proc
        sprite_addr = code[6:0] << 4 + (DrawY & 10'b0000001111);
     end 
       
    always_comb
    begin:RGB_Display
        backwards = {sprite_data[0], sprite_data[1], sprite_data[2], sprite_data[3], sprite_data[4], sprite_data[5], sprite_data[6], sprite_data[7]};
        if ((backwards[DrawX & 10'b0000000111] == 1'b1 && code[7] == 1'b0) || (backwards[DrawX & 10'b0000000111] == 1'b0 && code[7] == 1'b1)) begin 
            Red = control[24:21];
            Green = control[20:17];
            Blue = control[16:13];
        end
        else begin 
            Red = control[12:9]; 
            Green = control[8:5];
            Blue = control[4:1];
        end      
    end 
    
endmodule
