`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2021 11:06:11
// Design Name: 
// Module Name: count
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


module count(
input clk,rst,
output reg[3:0] counter,reg[3:0] counter1, reg[3:0] counter2
);

wire clk_divider;
wire clk_divider1;
wire clk_divider2;

clk_divider my_count(.clk(clk),.rst(rst),.clk_divider(clk_divider),.clk_divider1(clk_divider1),.clk_divider2(clk_divider2));

always@(posedge(clk_divider) or posedge(rst))
begin
    if(rst)
        counter <= 0;
    else 
        counter <= counter +1; 


end 
always@(posedge(clk_divider1) or posedge(rst))
begin
    if(rst)
        counter1 <= 0;
    else 
        counter1 <= counter1 +1; 


end 
always@(posedge(clk_divider2) or posedge(rst))
begin
    if(rst)
        counter2 <= 0;
    else 
        counter2 <= counter2 +1; 


end 
endmodule
