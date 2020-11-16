`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2020 06:22:36 PM
// Design Name: 
// Module Name: Four_Bit_Shift_Rig
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


module Four_Bit_Shift_Rig(Clk, Rs, S_in, S_out , q);

//another way known as parameter
parameter N = 64;

input Clk, Rs, S_in;
output reg S_out;

//internal register
output reg [N-2:0] q;
always @ (posedge Clk, posedge Rs)
begin
    if(Rs)
    {S_out , q[N-2:0]} <=0;
    
//    begin
//    q[0]     <=0;
//    q[1]     <= 0;
//    q[2]    <= 0;
//    S_out   <= 0;
//    end

    else 
    {S_out, q[N-2:0]} <= {q[N-2:0], S_in};

//    begin
//     q[0]     <=S_in; 
//     q[1]    <= q[0];
//     q[2]    <= q[1];
//     S_out   <= q[2];
//     end
    
end

endmodule

module TB();

reg Clk, Rs, S_in;
wire S_out;
parameter N = 64;
integer i;
wire [N-2:0] q;

Four_Bit_Shift_Rig  FBSR(Clk, Rs, S_in, S_out , q);

initial
Clk =0;
always
#10 Clk = ~ Clk;

//initial
//begin
//for(i =0; i<=N; i = i+1) 
//                  repeat (i) @(posedge Clk);

//         end
         
initial 
begin
    Rs =1; S_in = 1;
    @(negedge Clk);
    Rs = 0;
    
    @(negedge Clk);
    S_in = 0;
    
     for(i =0; i<=N; i = i+1)  begin
        @(negedge Clk); $display("The value of q[0] is = %b at time = %d",q, $realtime); end
     
     $finish;
end 
endmodule
    
//for(int i =0; i=4; i++){
//         $display( "\t Q[0]",q[0], "\t Q[1]", q[1], "\tQ[2]" q[2], "");
//         }