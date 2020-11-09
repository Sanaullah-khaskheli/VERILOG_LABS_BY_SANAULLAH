`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 05:15:31 PM
// Design Name: 
// Module Name: Register_file
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


module Register_file(Clk, W_en, W_data, R_data, W_add, R_add );
//parameter
parameter word = 8;
parameter add = 10;

input Clk, W_en;
input [word-1:0] W_data;
input [add-1:0]  W_add;
input [add-1:0] R_add;
output reg [word-1:0] R_data;

//Memory Generation 2D memory 
reg [7:0] reg_file [2**add-1: 0];// 2**add-1 2^10-1

//controll logic

always@(posedge Clk)

begin
        if(W_en)
        reg_file [W_add] <= W_data;
        else
        R_data <= reg_file [R_add];
end 
endmodule


module TB_Register;
parameter word = 8;
parameter add = 10;

reg Clk, W_en;
reg [word-1:0] W_data;
reg [add-1:0]  W_add;
reg [add-1:0] R_add;
wire [word-1:0] R_data;

//instantiation

Register_file       RF_TB(Clk, W_en, W_data, R_data, W_add, R_add );

//clk generation
initial 
Clk = 0;
always #10 Clk =~Clk;

initial
begin
            //Write operation test
            @(negedge Clk);    W_en = 1;  W_add =0; W_data = 100;
            @(negedge Clk);    W_en = 1;  W_add =1; W_data = 150;
            @(negedge Clk);    W_en = 1;  W_add =2; W_data = 50;
            @(negedge Clk);    W_en = 1;  W_add =3; W_data = 70;
            @(negedge Clk);    W_en = 1;  W_add =4; W_data = 33;
            
            // Read op
            
            @(negedge Clk);    W_en = 0;  R_add =4; 
            @(negedge Clk);    W_en = 0;  R_add =3; 
            @(negedge Clk);    W_en = 0;  R_add =2; 
            @(negedge Clk);    W_en = 0;  R_add =1; 
            @(negedge Clk);    W_en = 0;  R_add =0; 
             @(negedge Clk); $stop;         
end



endmodule


