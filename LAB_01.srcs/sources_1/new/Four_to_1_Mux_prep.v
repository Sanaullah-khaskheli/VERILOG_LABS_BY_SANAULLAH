`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2020 11:15:43 PM
// Design Name: 
// Module Name: Four_to_1_Mux_prep
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


module Four_to_1_Mux_prep(Y, S0, S1, D0, D1, D2, D3 );
input S0, S1, D0, D1, D2, D3;
output Y;
wire s0, s1;

not not1(s0, S0), n0t2(s1,S1);
and and1(D0, s0, s1), and2(D1, s0, S1), and3(D2, S0, s1), and4(D3, S0, S1);
or or1(Y, D0, D1, D2, D3);

endmodule
