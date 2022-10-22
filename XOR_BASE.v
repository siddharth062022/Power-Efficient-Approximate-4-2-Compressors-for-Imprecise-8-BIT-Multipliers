`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2021 09:25:08
// Design Name: 
// Module Name: XOR_BASE
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


module XOR_BASE
(input  X,Y,
output s,s_bar);

assign s = X^Y;
assign s_bar = ~(X^Y);
    
endmodule
