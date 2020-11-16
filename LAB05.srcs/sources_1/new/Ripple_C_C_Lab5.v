`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2020 01:04:25 PM
// Design Name: 
// Module Name: Ripple_C_C_Lab5
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


module Ripple_C_C_Lab5(q, clk , Rs );
input clk, Rs;
output [3:0] q;

Tff_Lab5    tffc0 (q[0], clk  , Rs  ),
            tffc1 (q[1], q[0] , Rs  ),
            tffc2 (q[2], q[1] , Rs  ),
            tffc3 (q[3], q[2] , Rs  );
  

endmodule

module TB();
reg clk, Rs;
wire [3:0] q;

Ripple_C_C_Lab5 RC1(q, clk , Rs );

//clock generation

initial

clk = 0;
always
#10 clk = ~ clk;


initial
begin
    Rs = 1;
    @( negedge clk);
    Rs = 0;
  
    repeat(20) @(negedge clk);
    $finish;
    
end

endmodule

