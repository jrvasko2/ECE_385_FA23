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
                       input logic [15:0] code,
                       input logic [31:0] palette1, palette2, palette3, palette4, palette5, palette6, palette7, palette8,
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
	logic [31:0] palette[8];
	assign palette[0] = palette1;
	assign palette[1] = palette2;
	assign palette[2] = palette3;
	assign palette[3] = palette4;
	assign palette[4] = palette5;
	assign palette[5] = palette6;
	assign palette[6] = palette7;
	assign palette[7] = palette8;
	
	font_rom fr(
        .addr(sprite_addr),
        .data(sprite_data)
    );
  
    always_comb
    begin:Ball_on_proc
        sprite_addr = (code[14:8] << 4) + (DrawY & 10'b0000001111);
     end 
       
    always_comb
    begin:RGB_Display
        backwards = {sprite_data[0], sprite_data[1], sprite_data[2], sprite_data[3], sprite_data[4], sprite_data[5], sprite_data[6], sprite_data[7]};
        if ((backwards[DrawX & 10'b0000000111] == 1'b1 && code[15] == 1'b0) || (backwards[DrawX & 10'b0000000111] == 1'b0 && code[15] == 1'b1)) begin 
            unique case(code[7:4])
                4'b0000 : begin
                    Red = palette[0][11:8];
                    Green = palette[0][7:4];
                    Blue = palette[0][3:0];
                end
                4'b0001 : begin
                    Red = palette[0][27:24];
                    Green = palette[0][23:20];
                    Blue = palette[0][19:16];
                end
                4'b0010 : begin
                    Red = palette[1][11:8];
                    Green = palette[1][7:4];
                    Blue = palette[1][3:0];
                end
                4'b0011 : begin
                    Red = palette[1][27:24];
                    Green = palette[1][23:20];
                    Blue = palette[1][19:16];
                end
                4'b0100 : begin
                    Red = palette[2][11:8];
                    Green = palette[2][7:4];
                    Blue = palette[2][3:0];
                end
                4'b0101 : begin
                    Red = palette[2][27:24];
                    Green = palette[2][23:20];
                    Blue = palette[2][19:16];
                end
                4'b0110 : begin
                    Red = palette[3][11:8];
                    Green = palette[3][7:4];
                    Blue = palette[3][3:0];
                end
                4'b0111 : begin
                    Red = palette[3][27:24];
                    Green = palette[3][23:20];
                    Blue = palette[3][19:16];
                end
                4'b1000 : begin
                    Red = palette[4][11:8];
                    Green = palette[4][7:4];
                    Blue = palette[4][3:0];
                end
                4'b1001 : begin
                    Red = palette[4][27:24];
                    Green = palette[4][23:20];
                    Blue = palette[4][19:16];
                end
                4'b1010 : begin
                    Red = palette[5][11:8];
                    Green = palette[5][7:4];
                    Blue = palette[5][3:0];
                end
                4'b1011 : begin
                    Red = palette[5][27:24];
                    Green = palette[5][23:20];
                    Blue = palette[5][19:16];
                end
                4'b1100 : begin
                    Red = palette[6][11:8];
                    Green = palette[6][7:4];
                    Blue = palette[6][3:0];
                end
                4'b1101 : begin
                    Red = palette[6][27:24];
                    Green = palette[6][23:20];
                    Blue = palette[6][19:16];
                end
                4'b1110 : begin
                    Red = palette[7][11:8];
                    Green = palette[7][7:4];
                    Blue = palette[7][3:0];
                end
                4'b1111 : begin
                    Red = palette[7][27:24];
                    Green = palette[7][23:20];
                    Blue = palette[7][19:16];
                end
            endcase
            
            
            /*if (code[7:4] && 4'b0001) begin
                Red = palette[code[7:4] >> 1][27:24];
                Green = palette[code[7:4] >> 1][23:20];
                Blue = palette[code[7:4] >> 1][19:16];
            end
            else begin
                Red = palette[code[7:4] >> 1][11:8];
                Green = palette[code[7:4] >> 1][7:4];
                Blue = palette[code[7:4] >> 1][3:0];
            end*/
        end
        else begin 
            unique case(code[3:0])
                4'b0000 : begin
                    Red = palette[0][11:8];
                    Green = palette[0][7:4];
                    Blue = palette[0][3:0];
                end
                4'b0001 : begin
                    Red = palette[0][27:24];
                    Green = palette[0][23:20];
                    Blue = palette[0][19:16];
                end
                4'b0010 : begin
                    Red = palette[1][11:8];
                    Green = palette[1][7:4];
                    Blue = palette[1][3:0];
                end
                4'b0011 : begin
                    Red = palette[1][27:24];
                    Green = palette[1][23:20];
                    Blue = palette[1][19:16];
                end
                4'b0100 : begin
                    Red = palette[2][11:8];
                    Green = palette[2][7:4];
                    Blue = palette[2][3:0];
                end
                4'b0101 : begin
                    Red = palette[2][27:24];
                    Green = palette[2][23:20];
                    Blue = palette[2][19:16];
                end
                4'b0110 : begin
                    Red = palette[3][11:8];
                    Green = palette[3][7:4];
                    Blue = palette[3][3:0];
                end
                4'b0111 : begin
                    Red = palette[3][27:24];
                    Green = palette[3][23:20];
                    Blue = palette[3][19:16];
                end
                4'b1000 : begin
                    Red = palette[4][11:8];
                    Green = palette[4][7:4];
                    Blue = palette[4][3:0];
                end
                4'b1001 : begin
                    Red = palette[4][27:24];
                    Green = palette[4][23:20];
                    Blue = palette[4][19:16];
                end
                4'b1010 : begin
                    Red = palette[5][11:8];
                    Green = palette[5][7:4];
                    Blue = palette[5][3:0];
                end
                4'b1011 : begin
                    Red = palette[5][27:24];
                    Green = palette[5][23:20];
                    Blue = palette[5][19:16];
                end
                4'b1100 : begin
                    Red = palette[6][11:8];
                    Green = palette[6][7:4];
                    Blue = palette[6][3:0];
                end
                4'b1101 : begin
                    Red = palette[6][27:24];
                    Green = palette[6][23:20];
                    Blue = palette[6][19:16];
                end
                4'b1110 : begin
                    Red = palette[7][11:8];
                    Green = palette[7][7:4];
                    Blue = palette[7][3:0];
                end
                4'b1111 : begin
                    Red = palette[7][27:24];
                    Green = palette[7][23:20];
                    Blue = palette[7][19:16];
                end
            endcase
            /*if (code[3:0] && 4'b0001) begin
                Red = palette[code[3:0] >> 1][27:24];
                Green = palette[code[3:0] >> 1][23:20];
                Blue = palette[code[3:0] >> 1][19:16];
            end
            else begin
                Red = palette[code[3:0] >> 1][11:8];
                Green = palette[code[3:0] >> 1][7:4];
                Blue = palette[code[3:0] >> 1][3:0];
            end*/
        end      
    end 
    
endmodule
