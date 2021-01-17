`timescale 1ns / 1ps
module deneme1(
input clk,reset,d,
output q,q3,q1,q2
);
wire d1,d2,d3;

dff deneme1(.clk(clk),.reset(reset),.d(d),.qb(d),.q(q));
dff deneme2(.clk(q),.reset(reset),.d(d1),.qb(d1),.q(q1));
dff deneme3(.clk(q1),.reset(reset),.d(d2),.qb(d2),.q(q2));
dff deneme4(.clk(q2),.reset(reset),.d(d3),.qb(d3),.q(q3));

endmodule














