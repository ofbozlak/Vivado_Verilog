`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2021 13:20:23
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();

reg clk,rst;
wire [3:0] counter;
wire [3:0] counter1; 
wire [3:0] counter2;



count my_count(.clk(clk),.rst(rst),.counter(counter),.counter1(counter1),.counter2(counter2));

always #10 clk = ~clk;
initial
begin

    clk <= 0;
    rst <= 1;
    
    #10
    rst <= 0;


end

endmodule
