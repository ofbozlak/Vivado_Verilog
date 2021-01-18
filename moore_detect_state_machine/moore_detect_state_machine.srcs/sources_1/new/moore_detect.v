`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2021 12:41:18
// Design Name: 
// Module Name: moore_detect
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

//1011 detect 
module moore_detect(
    input clk,reset,
    input sm_in,
    output reg sm_out
    );
    
    reg [2:0] state, next_state;
    parameter s1 = 3'b000, s2= 3'b001, s3 = 3'b010, s4 = 3'b011, s5 = 3'b100;
    
    always@(posedge(clk), posedge(reset))begin
        if(reset)
            next_state <= s1;
        else 
            state <= next_state;
    end 
    
    always@(state,sm_in) begin
        case(state) 
            s1: begin
                 if(sm_in)
                    next_state <= s2;
                 else
                    next_state <= s1;
            end
            s2: begin
                 if(sm_in)
                    next_state <= s2;
                 else
                    next_state <= s3;
            end
            s3: begin
                 if(sm_in)
                    next_state <= s4;
                 else
                    next_state <= s1;
            end
            s4: begin
                 if(sm_in)
                    next_state <= s5;
                 else
                    next_state <= s3;
            end
            s5: begin
                 if(sm_in)
                    next_state <= s2;
                 else
                    next_state <= s3;
            end
            default next_state <= s1;                        
         endcase
    end
    
    always@(state)begin
        if(state == s5)
            sm_out <= 1;          
        else 
            sm_out <= 0;
    end 
    
    
endmodule
