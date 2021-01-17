`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2021 19:29:57
// Design Name: 
// Module Name: d_filipflop
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


module d_filipflop(
input d ,
input clk,
input reset,
output reg q
    );
  always  @(posedge clk)
  begin
    if (reset == 1)
        begin
            q<=0;
        end 
    else
        begin 
            q<=d;
        end
  end  
    
    
endmodule
