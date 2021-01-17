`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2021 19:51:50
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
reg d, reset, clk;
wire q;

d_filipflop dff0(.d(d),.reset(reset),.clk(clk),.q(q));   
    
    always #10 clk = ~clk;
    
    initial 
    begin
    clk <= 0;
    reset <= 1;
    d <= 1;
    #15;
    reset <= 0;
    d <= 0;
    #25;
    d<=1;
    #17;
    d<=0;
    
    end  
    
endmodule
