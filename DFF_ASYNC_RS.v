`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 02:38:22 PM
// Design Name: 
// Module Name: DFF_ASYNC_RS
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


module DFF_ASYNC_RS(  q, d, clk, rs );
input clk, d, rs;
output reg q;
always@(posedge clk, posedge rs)
            begin
            if(rs)
            q <= 0;
            else 
            q <= d;

            end

endmodule

module TB1;
reg clk, d, rs;
wire q;

            DFF_ASYNC_RS     dff1(q, d, clk );
            
            //Signal
      
      initial
      clk = 0;
      always
      #10 clk = ~clk;
      
      initial
      begin
        @(negedge clk);
        d= 1;
        @(negedge clk);
        d = 0;
        @(negedge clk);
        d =1;
        
        @(negedge clk);
        d = 1;
        rs =1;
        
        repeat(3) @(negedge clk);
        $finish;
      
      
      end
      
endmodule