`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2020 07:09:08 PM
// Design Name: 
// Module Name: Comperator
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


module Comperator(A, B, A_gt_B,  A_lt_B, A_eq_B);

input A, B;

output A_gt_B,  A_lt_B, A_eq_B;


//logics
always @(A, B);
begin
        if(A==B)
        begin 
                    A_eq_B = 1'b1;
                    A_gt_B =1'b0;
                     A_lt_B = 1'b0;
        end
        else if(A>B)
        begin 
                    A_eq_B = 1'b0; 
                    A_gt_B =1'b1;  
                    A_lt_B = 1'b0;
        end
          else if(A<B)
          begin 
                    A_eq_B = 1'b0;  
                    A_gt_B =1'b0; 
                     A_lt_B = 1'b1;
          end


endmodule

