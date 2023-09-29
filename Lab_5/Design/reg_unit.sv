module reg_unit(
    input logic load, Clk, Reset,
    input logic [15:0] BUSSIN,
    input logic [2:0] DR_select,
    input logic [2:0] SR1_select,
    input logic [2:0] SR2_select,
    output logic [15:0] SR1, SR2
    );
    
    logic[15:0] R0_data, R1_data, R2_data, R3_data, R4_data, R5_data, R6_data, R7_data;
    logic[7:0] load_signals;
    
    always_comb
    begin
        unique case(DR_select)
            3'b000  : load_signals = 8'b00000001;
            3'b001  : load_signals = 8'b00000010;
            3'b010  : load_signals = 8'b00000100;
            3'b011  : load_signals = 8'b00001000;
            3'b100  : load_signals = 8'b00010000;
            3'b101  : load_signals = 8'b00100000;
            3'b110  : load_signals = 8'b01000000;
            3'b111  : load_signals = 8'b10000000;
        endcase
        unique case(SR1_select)
            3'b000  : SR1 = R0_data;
            3'b001  : SR1 = R1_data;
            3'b010  : SR1 = R2_data;
            3'b011  : SR1 = R3_data;
            3'b100  : SR1 = R4_data;
            3'b101  : SR1 = R5_data;
            3'b110  : SR1 = R6_data;
            3'b111  : SR1 = R7_data;
        endcase
        unique case(SR2_select)
            3'b000  : SR2 = R0_data;
            3'b001  : SR2 = R1_data;
            3'b010  : SR2 = R2_data;
            3'b011  : SR2 = R3_data;
            3'b100  : SR2 = R4_data;
            3'b101  : SR2 = R5_data;
            3'b110  : SR2 = R6_data;
            3'b111  : SR2 = R7_data;
        endcase
    end
    
    reg_16 R0(.Clk(Clk), .Reset(Reset), .Load(load_signals[0]), .D(BUSSIN), .Data_Out(R0_data));
    reg_16 R1(.Clk(Clk), .Reset(Reset), .Load(load_signals[1]), .D(BUSSIN), .Data_Out(R1_data));
    reg_16 R2(.Clk(Clk), .Reset(Reset), .Load(load_signals[2]), .D(BUSSIN), .Data_Out(R2_data));
    reg_16 R3(.Clk(Clk), .Reset(Reset), .Load(load_signals[3]), .D(BUSSIN), .Data_Out(R3_data));
    reg_16 R4(.Clk(Clk), .Reset(Reset), .Load(load_signals[4]), .D(BUSSIN), .Data_Out(R4_data));
    reg_16 R5(.Clk(Clk), .Reset(Reset), .Load(load_signals[5]), .D(BUSSIN), .Data_Out(R5_data));
    reg_16 R6(.Clk(Clk), .Reset(Reset), .Load(load_signals[6]), .D(BUSSIN), .Data_Out(R6_data));
    reg_16 R7(.Clk(Clk), .Reset(Reset), .Load(load_signals[7]), .D(BUSSIN), .Data_Out(R7_data));
    
endmodule
