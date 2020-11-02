`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 02:04:59 PM
// Design Name: 
// Module Name: PE
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


module Priority_Encoder(D, X, Y);
input [3:0] D;
output reg X, Y;

 always@ (*)
begin

casex (D[3:0])
//4'b0000 : begin X = x; Y = x;  end

4'b1xxx : begin X = 0; Y = 0;  end

4'b01xx : begin  X = 0; Y = 1;  end

4'b001x : begin X = 1; Y = 0;  end

4'b0001 : begin X = 1; Y = 1;  end
endcase

end
endmodule


module test;
reg [3:0] D;
wire X, Y;

//signal
initial 
begin
#00 D[0] = 0; D[1] =0; D[2] = 0; D[3]=0;

#10 D[0] = 1; D[1] =0; D[2] = 0; D[3]=0;

#10 D[0] = 1; D[1] =1; D[2] = 0; D[3]=0;

#10 D[0] = 0; D[1] =0; D[2] = 1; D[3]=0;


#10 D[0] = 0; D[1] =0; D[2] = 0; D[3]=1;

$stop;


end
Priority_Encoder    PE_TB(D, X, Y);
endmodule

