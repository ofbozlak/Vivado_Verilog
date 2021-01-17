`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2021 10:51:13
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
input clk,rst,
output reg clk_divider, clk_divider1, clk_divider2
);

reg [31:0] count;
reg [31:0] count1;
reg [31:0] count2; 
localparam freq_value = 50000000; // 1Hz        100*10^6 clk'nýn normal deðeri. biz bunu burada 1 sn ye ye düþürüyoruz. 
localparam freq_value1 = 10000000; // 5Hz
localparam freq_value2 = 5000000; // 10Hz

always@(posedge(clk) or posedge(rst))
begin
    if (rst)
    begin
        count <= 0;
    end    
    else if (count == (freq_value -1))
    begin
        count <= 0;
    end
    else
    begin
        count <= count +1;
    end
end 

always@(posedge(clk) or posedge(rst))
begin
    if (rst)
    begin
        count1 <= 0;
    end    
    else if (count1 == (freq_value1 -1))
    begin       
        count1 <= 0;
    end
    else
    begin
        count1 <= count1 +1;
    end
end

always@(posedge(clk) or posedge(rst))
begin
    if (rst)
    begin
        count2 <= 0;
    end    
    else if (count2 == (freq_value2 -1))
    begin
        count2 <= 0;
    end
    else
    begin
        count2 <= count2 +1;
    end
end  

always@(posedge(clk) or posedge(rst))
begin
    if(rst)
        clk_divider <= 0;
    else if(count == (freq_value - 1))
    begin
        clk_divider <= ~clk_divider;
    end
    else
        clk_divider <= clk_divider;
end
always@(posedge(clk) or posedge(rst))
begin
    if(rst)
    begin
        clk_divider1 <= 0;
    end 
    else if (count1 == (freq_value1 - 1))
        clk_divider1 <= ~clk_divider1;
    else
        clk_divider1 <= clk_divider1;
end
always@(posedge(clk) or posedge(rst))
begin
    if(rst)
    begin
         clk_divider2 <= 0;
    end
    else if (count2 == (freq_value2 - 1))
        clk_divider2 <= ~clk_divider2;
    else
        clk_divider2 <= clk_divider2;
end
endmodule
