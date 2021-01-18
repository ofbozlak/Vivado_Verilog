`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2021 19:15:16
// Design Name: 
// Module Name: state_macine
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


module state_macine(
    input clk,
    input reset,
    input sm_in,
    output reg sm_out
    );
    
    reg [1:0] state, state_next;
    parameter s1= 2'b00,s2= 2'b01,s3= 2'b10;
    
    always@(posedge(clk) or posedge(reset))
    begin
        if(reset)
            state_next <= s1;
        else 
            state <= state_next;
    end
    
    always@(state,sm_in)
    begin
        case(state)
            s1:begin
                if(sm_in)
                    state_next <= s1;
                else
                    state_next <= s2;
            end
            s2: begin 
                if(sm_in)
                    state_next <= s1;
                else
                    state_next <= s3;
            end
            s3: begin 
                
                    state_next <= s1;
              
            end endcase
    end
    
    always@(state,sm_in)begin
        if(state == s3 & sm_in == 0 )
            sm_out <= 1;
        else 
           sm_out <= 0; 
    
    end
    
    
endmodule
