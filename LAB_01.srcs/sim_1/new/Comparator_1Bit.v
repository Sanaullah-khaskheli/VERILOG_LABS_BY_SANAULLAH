`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2020 07:49:56 PM
// Design Name: 
// Module Name: Comparator_1Bit
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


module Comparator_1Bit( );

reg A, B;
wire A_gt_B,  A_lt_B, A_eq_B;

//Signal generation

initial
begin
     #00    B = 0; A = 0;
     #10    B = 0; A = 1;
     #10    B = 1; A = 0;
     #10    B = 1; A = 1;
     #10    B = 0; A = 0;
     #10    B = 0; A = 1;
     #10    B = 1; A = 0;
     #10    B = 1; A = 1;
     #20 $stop;
    
end
 
Comperator Comperator1(A, B, A_gt_B,  A_lt_B, A_eq_B);
endmodule
