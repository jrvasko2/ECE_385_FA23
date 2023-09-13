//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 06:03:55 PM
// Design Name: 
// Module Name: testbench_select
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench_select();
    timeunit 10ns;
    timeprecision 1ns;
    
    logic Clk;
    logic  [15:0] A, B;
    logic         cin;
    logic [15:0] S;
    logic        cout;
    
    always begin: CLOCK_GENERATION
        #1 Clk = ~Clk;
    end
    
    initial begin: CLOCK_INITIALIZATION
        Clk = 0;
    end
    
    select_adder test(.*);
    
    initial begin: TEST_BODY
        #1
        A = 16'b1000000000000011;
        #1
        B = 16'b1000000000000001;
        #1
        cin = 1'b1;
        
    end
endmodule
