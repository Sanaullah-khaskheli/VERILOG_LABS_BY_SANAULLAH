`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2020 02:46:12 PM
// Design Name: 
// Module Name: Top_Level_RC_Counter
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


module Top_Level_RC_Counter(q, clk , Rs  );
input clk, Rs ;
output [3:0]q;

Blinky_1Hz      inst0_dff(clk, slow_clk    );

Ripple_C_C_Lab5(q[3:0], slow_clk, Rs );

endmodule
