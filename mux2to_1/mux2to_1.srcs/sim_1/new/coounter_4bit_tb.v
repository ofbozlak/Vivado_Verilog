`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2021 21:07:45
// Design Name: 
// Module Name: coounter_4bit_tb
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


module coounter_4bit_tb();

reg reset,clk,up_down;
wire [3:0] counter;

counter_4bit my_counter(.reset(reset),.clk(clk),.up_down(up_down),.counter(counter));

 always #5 clk = ~clk;
    
initial 
begin
    clk <= 0;
    reset <= 1;
    up_down <=1;
    #10;
    reset<=0;
    #150;
    reset <= 1;
    up_down <=0;
    #10;
    reset <= 0;
end
endmodule
