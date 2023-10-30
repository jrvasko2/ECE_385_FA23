`timescale 1 ns / 1 ps

module hdmi_text_controller_v1_0 #
(
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line


    // Parameters of Axi Slave Bus Interface S00_AXI
    parameter integer C_AXI_DATA_WIDTH	= 32,
    parameter integer C_AXI_ADDR_WIDTH	= 11 //note that we changed this from 4 in the provided template
)
(
    // Users to add ports here

    output wire hdmi_clk_n,
    output wire hdmi_clk_p,
    output wire [2:0] hdmi_tx_n,
    output wire [2:0] hdmi_tx_p,

    // User ports ends
    // Do not modify the ports beyond this line


    // Ports of Axi Slave Bus Interface AXI
    input logic  s_axi_aclk,
    input logic  s_axi_aresetn,
    input logic [C_AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr,
    input logic [2 : 0] s_axi_awprot,
    input logic  s_axi_awvalid,
    output logic  s_axi_awready,
    input logic [C_AXI_DATA_WIDTH-1 : 0] s_axi_wdata,
    input logic [(C_AXI_DATA_WIDTH/8)-1 : 0] s_axi_wstrb,
    input logic  s_axi_wvalid,
    output logic  s_axi_wready,
    output logic [1 : 0] s_axi_bresp,
    output logic  s_axi_bvalid,
    input logic  s_axi_bready,
    input logic [C_AXI_ADDR_WIDTH-1 : 0] s_axi_araddr,
    input logic [2 : 0] s_axi_arprot,
    input logic  s_axi_arvalid,
    output logic  s_axi_arready,
    output logic [C_AXI_DATA_WIDTH-1 : 0] s_axi_rdata,
    output logic [1 : 0] s_axi_rresp,
    output logic  s_axi_rvalid,
    input logic  s_axi_rready
);

//additional logic variables as necessary to support VGA, and HDMI modules.
logic clk_25MHz, clk_125MHz;//, clk, clk_100MHz;
logic locked;
logic hsync, vsync, vde;
logic [3:0] red, green, blue;
logic reset_ah;
logic [9:0] drawX, drawY, ballxsig, ballysig, ballsizesig;

logic[7:0] hdmi;

assign reset_ah = s_axi_aresetn;
//assign clk_100MHz = s_axi_aclk;

assign ballxsig = 200;
assign ballysig = 300;
assign ballsizesig = 20;

// Instantiation of Axi Bus Interface AXI
hdmi_text_controller_v1_0_AXI # ( 
    .C_S_AXI_DATA_WIDTH(C_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_AXI_ADDR_WIDTH)
) hdmi_text_controller_v1_0_AXI_inst (
    .S_AXI_ACLK(s_axi_aclk),
    .S_AXI_ARESETN(s_axi_aresetn),
    .S_AXI_AWADDR(s_axi_awaddr),
    .S_AXI_AWPROT(s_axi_awprot),
    .S_AXI_AWVALID(s_axi_awvalid),
    .S_AXI_AWREADY(s_axi_awready),
    .S_AXI_WDATA(s_axi_wdata),
    .S_AXI_WSTRB(s_axi_wstrb),
    .S_AXI_WVALID(s_axi_wvalid),
    .S_AXI_WREADY(s_axi_wready),
    .S_AXI_BRESP(s_axi_bresp),
    .S_AXI_BVALID(s_axi_bvalid),
    .S_AXI_BREADY(s_axi_bready),
    .S_AXI_ARADDR(s_axi_araddr),
    .S_AXI_ARPROT(s_axi_arprot),
    .S_AXI_ARVALID(s_axi_arvalid),
    .S_AXI_ARREADY(s_axi_arready),
    .S_AXI_RDATA(s_axi_rdata),
    .S_AXI_RRESP(s_axi_rresp),
    .S_AXI_RVALID(s_axi_rvalid),
    .S_AXI_RREADY(s_axi_rready)
);


//Instiante clocking wizard, VGA sync generator modules, and VGA-HDMI IP here. For a hint, refer to the provided
//top-level from the previous lab. You should get the IP to generate a valid HDMI signal (e.g. blue screen or gradient)
//prior to working on the text drawing.

//clock wizard configured with a 1x and 5x clock for HDMI
clk_wiz_0 clk_wiz (
    .clk_out1(clk_25MHz),
    .clk_out2(clk_125MHz),
    .reset(reset_ah),
    .locked(locked),
    .clk_in1(s_axi_aclk)
);

//VGA Sync signal generator
vga_controller vga (
    .pixel_clk(clk_25MHz),
    .reset(reset_ah),
    .hs(hsync),
    .vs(vsync),
    .active_nblank(vde),
    .drawX(drawX),
    .drawY(drawY)
); 

//Real Digital VGA to HDMI converter
hdmi_tx_0 vga_to_hdmi (
    //Clocking and Reset
    .pix_clk(clk_25MHz),
    .pix_clkx5(clk_125MHz),
    .pix_clk_locked(locked),
    //Reset is active LOW
    .rst(reset_ah),
    //Color and Sync Signals
    .red(red),
    .green(green),
    .blue(blue),
    .hsync(hsync),
    .vsync(vsync),
    .vde(vde),
    
    //aux Data (unused)
    .aux0_din(4'b0),
    .aux1_din(4'b0),
    .aux2_din(4'b0),
    .ade(1'b0),
    
    //Differential outputs
    .TMDS_CLK_P(hdmi_clk_p),          
    .TMDS_CLK_N(hdmi_clk_n),          
    .TMDS_DATA_P(hdmi_tx_p),         
    .TMDS_DATA_N(hdmi_tx_n)          
);

//Color Mapper Module for testing purposes
color_mapper color_instance(
    .BallX(ballxsig),
    .BallY(ballysig),
    .DrawX(drawX),
    .DrawY(drawY),
    .Ball_size(ballsizesig),
    .Red(red),
    .Green(green),
    .Blue(blue)
);

// User logic ends

endmodule
