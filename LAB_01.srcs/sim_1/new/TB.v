`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 01:14:11 PM
// Design Name: 
// Module Name: TB
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


module TB( q, clk, Rs);
reg clk, Rs;
wire [3:0] q;


initial 
begin

#00 Rs = 0; clk = 0;    
#10 Rs = 0; clk = 1; 
#10 Rs = 1; clk = 0; 
#10 Rs = 1; clk = 1; 
#10 Rs = 0; clk = 0; 
#10 $stop;
end

RC_Counter_Prep TB0(q[0], clk, Rs );

endmodule