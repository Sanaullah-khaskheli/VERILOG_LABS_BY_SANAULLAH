`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2020 12:53:59 PM
// Design Name: 
// Module Name: Tff_Lab5
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


module Tff_Lab5(q, clk , Rs );
input clk, Rs;
output  q;
wire q1;


//instantiatio
Dff_Lab5    tff0(q1, q, clk, Rs);
not n1(q1, q);

endmodule
