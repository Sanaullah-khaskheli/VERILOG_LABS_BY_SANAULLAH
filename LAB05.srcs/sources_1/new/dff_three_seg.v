`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 04:40:51 PM
// Design Name: 
// Module Name: dff_three_seg
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


module dff_three_seg(clk, rs, en, d , q );
input clk, rs, en, d;
output reg q;

//internal register
reg r_reg, r_next;

// central block design/ memory block seq cirt current state logic

always @(posedge clk, posedge rs)
            begin
            if (rs)
                    r_reg <= 0;
            else 
                     r_reg <= r_next;  //non_blocking assignment
end
// Input Block, comb: circuit next_state logic
always @(*)
begin
        if(en)
                r_next = d;     //blocking assignment
        else
                r_next = r_reg;
 end
 
 //output block com: block
 
 always@(*)
 begin 
 
    q = r_reg;
  end   

endmodule


module TB1;
reg clk, d, rs, en;
wire q;

dff_three_seg DFF2(clk, rs, en, d , q);

initial
clk = 0;
always
#10 clk = ~ clk;

initial
begin
//// Enable deasserted
    @(negedge clk);
    d = 1; en = 1;
    @(negedge clk) ;
    d = 0; en = 1;
//// Enable Asserted    
    @(negedge clk);
    d = 1; en = 0;
    @(negedge clk) ;
    d = 0; en = 0;
    
//// Reset Asserted    
    @(negedge clk);
    rs = 1;
    
    repeat(3) @(negedge clk);
    $finish;
    
end 

endmodule 
