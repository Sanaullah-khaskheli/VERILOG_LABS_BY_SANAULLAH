`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2020 12:37:42 PM
// Design Name: 
// Module Name: Dff_Lab5
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


module Dff_Lab5(d, q, clk, Rs);
input d, clk, Rs;
output reg q;
always @(posedge Rs or posedge  clk)
if(Rs)
    q<= 1'b0;
    else
    q<=d;

endmodule



//module TB;

//reg d, clk, Rs;
//wire  q;

//Dff_Lab5    dff0(d, q, clk, Rs);
//initial 
//begin

//#00 Rs = 0; clk = 0;    d = 0;
//#10 Rs = 0; clk = 0;    d = 1;
//#10 Rs = 0; clk = 1;    d = 0;
//#10 Rs = 0; clk = 1;    d = 1;
//#10 Rs = 1; clk = 0;    d = 0;
//#10 Rs = 1; clk = 0;    d = 1;
//#10 Rs = 1; clk = 1;    d = 0;
//#10 Rs = 1; clk = 1;    d = 1;
//#10 Rs = 0; clk = 0;    d = 0;
//#10 $stop;
//end

//endmodule

