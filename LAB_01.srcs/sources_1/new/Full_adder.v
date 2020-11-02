`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 06:24:57 PM
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(Carry, Sum, A, B, Cin);

input A, B, Cin;

output Carry, Sum;

//logics

xor xor1(s1, A, B);
and and1(c1, A, B);
xor xor2(Sum, s1, Cin);
and and2(s2, s1, Cin);
xor xor3(Carry, c1, s2);

endmodule
