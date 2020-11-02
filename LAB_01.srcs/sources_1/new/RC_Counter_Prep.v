`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 12:43:55 PM
// Design Name: 
// Module Name: RC_Counter_Prep
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


module RC_Counter_Prep(q, clk, Rs );
input clk, Rs;
output [3:0] q;

TFF_prep    tff0(q[0], clk, Rs );
TFF_prep    tff1(q[1], q[0], Rs );
TFF_prep    tff2(q[2], q[1], Rs );
TFF_prep    tff4(q[3], q[2], Rs );

endmodule




