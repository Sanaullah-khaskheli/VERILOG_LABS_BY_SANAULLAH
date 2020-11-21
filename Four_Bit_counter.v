`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2020 06:26:42 PM
// Design Name: 
// Module Name: Four_Bit_counter
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


module Four_Bit_counter 
#(parameter N=8)
(      input clk, reset,  
    output wire max_tick,  
        output wire [N-1:0] q );

// signal declaration  
reg [N-1:0] r_reg; 
wire [N-1:0] r_next; 
 
// body or register 
always@(posedge clk, posedge reset )  
   if(reset)     
       r_reg <= 0;   
     else     
         r_reg <= r_next; 
 
// next_state_logic
 assign r_next = r_reg + 1; 
 
// output logic 
assign q = r_reg; 
assign max_tick = (r_reg == 2**N-1) ? 1'b1 : 1'b0; 
endmodule
