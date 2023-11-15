`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2023 02:31:09 PM
// Design Name: 
// Module Name: mb_spi_camera_top
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


module mb_spi_camera_top(
    input logic clk,
    input logic reset_rtl_0,
    input logic [3:0] btn,
    
    //USB signals
    input logic camera_spi_miso,
    output logic camera_spi_mosi,
    output logic camera_spi_sclk,
    output logic camera_spi_ss,
    
    //UART
    input logic uart_rtl_0_rxd,
    output logic uart_rtl_0_txd
    );
    
  mb_camera mb_camera_i
       (.camera_spi_miso(camera_spi_miso),
        .camera_spi_mosi(camera_spi_mosi),
        .camera_spi_sclk(camera_spi_sclk),
        .camera_spi_ss(camera_spi_ss),
        .clk_100MHz(clk),
        .gpio_rtl_0_tri_i(btn[2]),
        .gpio_rtl_1_tri_i(btn[1]),
        .reset_rtl_0(~btn[0]),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd));
endmodule
