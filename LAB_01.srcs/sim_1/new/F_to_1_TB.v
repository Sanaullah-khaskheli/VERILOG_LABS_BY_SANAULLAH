`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2020 11:20:55 PM
// Design Name: 
// Module Name: F_to_1_TB
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


module Four_to_One_Mux_TB();
reg S0, S1, D0, D1, D2, D3;
wire Y;

Four_to_1_Mux_prep  TB(S0, S1, D0, D1, D2, D3, Y );

// signals , also using cocotanation operator
initial 
begin
    #00 S1 = 0; S0 = 0; {D3, D2, D1, D0} = 4'bzzz1;  
    #10 S1 = 0; S0 = 1; {D3, D2, D1, D0} = 4'bzz1z;
    #10 S1 = 1; S0 = 0; {D3, D2, D1, D0} = 4'bz1zz;
    #10 S1 = 1; S0 = 1; {D3, D2, D1, D0} = 4'b1zzz;
    #10 $stop;

end

endmodule
