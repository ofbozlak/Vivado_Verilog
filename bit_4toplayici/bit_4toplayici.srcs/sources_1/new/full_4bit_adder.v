`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2020 17:31:45
// Design Name: 
// Module Name: bit_2adder
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


module bit_4adder(
    input [3:0] a1,
    input [3:0] a2,
    input c_in,
    output [3:0] s,
    output c
    );
    
    wire c0,c1,c2;
    
    full_adder full_a1 (.a(a1[0]),.b(a2[0]),.c_in(c_in),.c_out(c0),.s(s[0]));
    full_adder full_a2 (.a(a1[1]),.b(a2[1]),.c_in(c0),.c_out(c1),.s(s[1]));
    full_adder full_a3 (.a(a1[2]),.b(a2[2]),.c_in(c1),.c_out(c2),.s(s[2]));
    full_adder full_a4 (.a(a1[3]),.b(a2[3]),.c_in(c2),.c_out(c),.s(s[3]));
    
endmodule
