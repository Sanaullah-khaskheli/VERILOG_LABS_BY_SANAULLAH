`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 05:43:55 PM
// Design Name: 
// Module Name: H_A_test
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


module H_A_test( );

reg A, B;

//in this test we use wire instead of output
wire Carry, Sum;

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
Half_Adder Half_Adder1(Carry, Sum, A, B);

endmodule
