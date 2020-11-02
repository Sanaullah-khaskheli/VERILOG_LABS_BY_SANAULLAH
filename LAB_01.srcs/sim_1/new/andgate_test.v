`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 05:07:28 PM
// Design Name: 
// Module Name: andgate_test
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


module andgate_test(); //there is no ports inside brackets



//in this test we use reg instead of input

reg In1, In2;

//in this test we use wire instead of output
wire Out;

//Signal generation 
initial 
begin                       // Our code will start from here
    #00 In2 = 0; In1 = 0;
    #10 In2 = 0; In1 = 1;
    #15 In2 = 1; In1 = 0;
    #20 In2 = 1; In1 = 1;
    #100 $stop;
    
end                         // code will end here 
                            //Module instation
LAB1  LAB11(Out, In1, In2);

endmodule                   // Module will end here
