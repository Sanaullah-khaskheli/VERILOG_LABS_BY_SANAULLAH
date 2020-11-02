`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2020 08:04:17 PM
// Design Name: 
// Module Name: Comp_test
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


module Comp_test(   );
reg A, B;

//in this test we use wire instead of output
wire A_gt_B,  A_lt_B, A_eq_B;

//Signal generation 
initial 
begin       
                // Our code will start from here
    #00 B = 0; A = 0;
    #10 B = 0; A = 1;
    #15 B = 1; A = 0;
    #20 B = 1; A = 1;
    #100 $stop;
    
end                         // code will end here 
                            //Module instation
Comp_1bit Comp_1bit1(A, B, A_gt_B,  A_lt_B, A_eq_B);


endmodule
