`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2021 13:26:48
// Design Name: 
// Module Name: state_machine_tb
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


// --------detect 1011 -------------
module state_machine_tb();
reg clk,reset;
reg sm_in;
wire sm_out;

moore_detect my_detect(.clk(clk),.reset(reset),.sm_in(sm_in),.sm_out(sm_out));

always #5 clk = ~clk;
initial 
begin
    clk <= 1;
    reset <= 1;
    #10;
    reset <= 0;
    #10;
    reset <= 1;
    #10;
    reset <= 0;
    
    sm_in <= 1;
    #10;
    sm_in <= 0;
    #10; 
    sm_in <= 1;
    #10;
    sm_in <= 1;
    #10;
    
    sm_in <= 1;
    #10;
    sm_in <= 0;
    #10; 
    sm_in <= 1;
    #10;
    sm_in <= 0;
    #10;
    
    sm_in <= 1;
    #10;
    sm_in <= 0;
    #10; 
    sm_in <= 0;
    #10;
    sm_in <= 1;
    #10;
    
    sm_in <= 0;
    #10;
    sm_in <= 0;
    #10; 
    sm_in <= 1;
    #10;
    sm_in <= 1;
    #10;
    
    sm_in <= 1;
    #10;
    sm_in <= 0;
    #10; 
    sm_in <= 1;
    #10;
    sm_in <= 1;
    #10;   

end

endmodule
