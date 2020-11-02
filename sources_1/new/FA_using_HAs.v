`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 12:33:35 PM
// Design Name: 
// Module Name: FA_using_HAs
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


module FA_using_HAs(Sum, Carry, A, B, Cin );

input A, B, Cin;
output Sum, Carry;
wire S1, C1, C2;
//logic 
//instantiation y order
Half_Adder HA1(S1, C1, A, B);

//instantation by name there is no need to remember order in this case.
//All we need to know that inside bracket current file names used while out of bracket we use original names
Half_Adder HA2(.Sum(Sum), .Carry(C2),  .A(S1), .B(Cin));

or or1(Carry, C1, C2);


endmodule
