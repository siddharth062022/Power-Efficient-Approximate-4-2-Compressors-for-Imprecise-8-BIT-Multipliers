`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2021 22:46:57
// Design Name: 
// Module Name: COMPRESSOR
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


module COMPRESSOR(
input x1,x2,x3,x4,cin,
output cout,sum, carry

    );
    wire r1,r2,r3,r4,r5,r6,r7,r8;
    XOR_BASE xor1(.X(x1),.Y(x2),.s(r1),.s_bar(r2));
    XOR_BASE xor2(.X(x3),.Y(x4),.s(r3),.s_bar(r4));
    mux m1(.D0(r2),.D1(r1),.S(x3),.Y(r5));
     mux m2(.D0(r4),.D1(r3),.S(r1),.Y(r6));
      mux m3(.D0(x3),.D1(x1),.S(r1),.Y(r7));
     assign  cout = cin & r7;
     assign sum = cin & r6;
     assign carry = (x4 | r5) & cin;
      
      endmodule
