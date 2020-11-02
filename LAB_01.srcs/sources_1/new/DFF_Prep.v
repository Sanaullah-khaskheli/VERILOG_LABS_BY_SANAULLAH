`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 12:47:58 PM
// Design Name: 
// Module Name: DFF_Prep
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


module DFF_Prep(q , d, clk, Rs );
input d,  clk, Rs;
output q;
reg q;

always @(posedge Rs or negedge clk)
if(Rs)
    q<= 1'b0;
    else
    q<=d;
endmodule
