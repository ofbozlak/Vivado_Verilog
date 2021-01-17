`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2021 20:25:33
// Design Name: 
// Module Name: counter_4bit
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


module counter_4bit(
input reset,clk,up_down,
output reg [3:0] counter

);

always @(posedge clk)
begin
if(up_down == 1)
begin
    if (reset | counter == 4'b1111)
         counter <=4'b0000;
    else if (counter != 4'b1111)
        counter <= counter +1;
end
else if(up_down == 0)
begin
    if (reset | counter == 4'b0000)
         counter <=4'b1111;
    else if (counter != 4'b0000)
        counter <= counter -1;
end 
end 
endmodule
