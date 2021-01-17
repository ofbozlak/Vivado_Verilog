`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2020 14:01:29
// Design Name: 
// Module Name: full_4bit_adder_tb
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


module full_4bit_adder_tb();

reg [3:0] a1;
reg [3:0] a2;
reg c_in;

wire [3:0] s;
wire elde;


    full_adder my_adder1 (.a(a1[0]),.b(a2[0]),.c_in(c_in),.c_out(c0),.s(s[0]));
    full_adder my_adder2 (.a(a1[1]),.b(a2[1]),.c_in(c0),.c_out(c1),.s(s[1]));
    full_adder my_adder3 (.a(a1[2]),.b(a2[2]),.c_in(c1),.c_out(c2),.s(s[2]));
    full_adder my_adder4 (.a(a1[3]),.b(a2[3]),.c_in(c2),.c_out(elde),.s(s[3]));

initial
begin
a1[0] <= 1;
a1[1] <= 0;
a1[2] <= 1;
a1[3] <= 1;
a2[0] <= 0;
a2[1] <= 1;
a2[2] <= 0;
a2[3] <= 1;
c_in <= 0;
#10;




end



endmodule
