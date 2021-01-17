`timescale 1ns / 1ps

module mux2to_1(
input a,b,a2,b2,
input sel,sel2,
output mux_out,mux_out2
);

assign mux_out = (a &~(sel)) | (b & sel);

assign mux_out2 = sel2 ? a2 : b2 ;
endmodule
