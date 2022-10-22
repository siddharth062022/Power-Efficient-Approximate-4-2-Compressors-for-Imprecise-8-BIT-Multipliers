`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2021 23:28:48
// Design Name: 
// Module Name: MULTIPLIER8BIT_TESTBENCH
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


module MULTIPLIER8BIT_TESTBENCH();
reg A0,A1,A2,A3,A4,A5,A6,A7,B0,B1,B2,B3,B4,B5,B6,B7;
wire P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15;

MULTIPLIER_8BIT uut(.a0(A0),.a1(A1),.a2(A2),.a3(A3),.a4(A4),.a5(A5),.a6(A6),.a7(A7),.b0(B0),.b1(B1),.b2(B2),.b3(B3),.b4(B4),.b5(B5),.b6(B6),.b7(B7),.p0(P0),.p1(P1),.p2(P2),.p3(P3),.p4(P4),.p5(P5),.p6(P6),.p7(P7),.p8(P8),.p9(P9),.p10(P10),.p11(P11),.p12(P12),.p13(P13),.p14(P14),.p15(P15));
initial
 begin
 
A0=1; A1=1; A2=1; A3=1; A4=1; A5=1; A6=1; A7=1; B0=1; B1=1; B2=1; B3=1; B4=1; B5=1; B6=1; B7=1;
#100
A0=0; A1=1; A2=1; A3=1; A4=1; A5=0; A6=1; A7=1; B0=1; B1=0; B2=1; B3=1; B4=0; B5=1; B6=1; B7=1;
#100
A0=1; A1=0; A2=1; A3=1; A4=0; A5=1; A6=1; A7=1; B0=0; B1=1; B2=1; B3=0; B4=1; B5=1; B6=1; B7=0;
#100
A0=1; A1=1; A2=0; A3=0; A4=1; A5=0; A6=1; A7=0; B0=1; B1=0; B2=0; B3=1; B4=0; B5=1; B6=0; B7=1;




end
endmodule
