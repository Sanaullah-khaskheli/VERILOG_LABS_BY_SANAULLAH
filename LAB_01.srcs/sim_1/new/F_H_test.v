`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 06:27:08 PM
// Design Name: 
// Module Name: F_H_test
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


module F_H_test();



//Signal generation

reg [3:0] x,y;
reg operation;
wire  [3:0] o;

ripple_carry_adder_subtractor c1(.S(o), .A(x),.B(y),.Op(operation));
initial 
begin

#10 $display ("                 Time","    Result   ","   A    ", "   B    ", " M  "  ); 
 x=1; y=1; operation =0;
#10 $display ($time,"       ",o,"       ", x, "       ",y, "   " , operation ); 
x= 10 ; y=1; operation =0;
#10 $display ($time,"       ",o,"       ", x, "       ",y, "   " , operation); 
x=11; y=0; operation =0;
 #10 $display ($time,"       ",o,"       ", x, "       ",y, "   " , operation); 
x=11; y=2; operation =0;
 #10 $display ($time,"       ",o,"       ", x, "       ",y, "   " , operation); 


end

 

    

endmodule
