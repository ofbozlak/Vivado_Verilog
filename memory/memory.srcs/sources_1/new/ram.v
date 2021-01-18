`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2021 16:21:28
// Design Name: 
// Module Name: ram
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


module ram(
    input clk,
    input wr_en_i,
    input [3:0] wr_adder_i,
    input [7:0] wr_data_i,
    input [3:0] rd_adder_i,
    output reg [7:0] rd_data_o
    );
    
    reg [7:0] mem [0:15];
    
endmodule
