`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 06:44:18 PM
// Design Name: 
// Module Name: Top_Level_Register
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


module Top_Level_Register(clk, rs, en, d , q    );
input clk, rs, en, d ;
output q;

Blinky_1Hz      inst0_dff(clk, slow_clk    );

dff_three_seg   inst1_Dff3(slow_clk, rs, en, d , q );


endmodule
