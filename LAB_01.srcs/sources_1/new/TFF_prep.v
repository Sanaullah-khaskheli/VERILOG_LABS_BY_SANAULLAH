`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 12:54:14 PM
// Design Name: 
// Module Name: TFF_prep
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


module TFF_prep(q, clk, Rs );
input clk, Rs;
wire d;
output q;
DFF_Prep    Dff0(q , d, clk, Rs );
    not n1(d,q);

endmodule
