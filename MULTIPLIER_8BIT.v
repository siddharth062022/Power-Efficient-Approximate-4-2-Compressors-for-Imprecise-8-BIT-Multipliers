`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2021 21:38:43
// Design Name: 
// Module Name: MULTIPLIER_8BIT
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


module MULTIPLIER_8BIT(input a0,a1,a2,a3,a4,a5,a6,a7,b0,b1,b2,b3,b4,b5,b6,b7,
output p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15);
 




wire s0,c0,CB,s1,c1,CC,s2,c2,s3,c3,CD,s4,c4,CE,s5,c5,CF,s6,c6,CG,s7,c7,CH,s8,c8,s9,c9,CI,s10,c10,s11,c11,s12,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,cout1,cout2,cout3,cout4,cout5,cout6,cout7,cout8,cout9,cout10,cout11,cout12,cout13,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23, cp1,cp2,cp3,cp4,cp5,cp6,cp7,cp8,cp9,cp10,cp11,cp12,cp13,cp14;

reg r=0 ;

 
  //STAGE 1
     
  HA ha10(.a(a4&b0),.b(a3&b1),.s(s0),.CARRY(c0));
  COMPRESSOR com11(.x1(a5&b0),.x2(a4&b1),.x3(a3&b2),.x4(a2&b3),.cin(r),.cout(CB),.sum(s1),.carry(c1));   
  COMPRESSOR com12(.x1(a6&b0),.x2(a5&b1),.x3(a4&b2),.x4(a3&b3),.cin(CB),.cout(CC),.sum(s2),.carry(c2));
  HA ha12(.a(a2&b4),.b(a1&b5),.s(s3),.CARRY(c3));
  COMPRESSOR com13(.x1(a7&b0),.x2(a6&b1),.x3(a5&b2),.x4(a4&b3),.cin(CC),.cout(CD),.sum(s4),.carry(c4));     
  COMPRESSOR com14(.x1(a3&b4),.x2(a2&b5),.x3(a1&b6),.x4(a0&b7),.cin(c3),.cout(CE),.sum(s5),.carry(c5));
  COMPRESSOR com15(.x1(a7&b1),.x2(b6&b2),.x3(a5&b3),.x4(b4&b4),.cin(CD),.cout(CF),.sum(s6),.carry(c6));
  COMPRESSOR com16(.x1(a3&b5),.x2(a2&b6),.x3(a1&b7),.x4(r),    .cin(CE),.cout(CG),.sum(s7),.carry(c7));
  COMPRESSOR com17(.x1(a7&b2),.x2(a6&b2),.x3(a5&b3),.x4(a4&b5),.cin(CF),.cout(CH),.sum(s8),.carry(c8));
  FA fa11(.A(a3&b6),.B(a2&b7),.C(CG),.SUM(s9),.CARRY(c9));
  COMPRESSOR com18(.x1(a7&b3),.x2(a6&b4),.x3(a5&b5),.x4(a4&b6),.cin(CH),.cout(CI),.sum(s10),.carry(c10));
  FA fa12(.A(a7&b4),.B(a6&b5),.C(CI),.SUM(s11),.CARRY(c11));



// stage 2
 HA ha21        (.a(a2&b0), .b(a1&b1),                                                  .s(s12),  .CARRY(c12));
COMPRESSOR com21(.x1(a3&b0),.x2(a2&b1),.x3(a1&b2),.x4(a0&b3),.cin(c12),   .cout(cout1), .sum(s13),.carry(c13));
COMPRESSOR com22(.x1(s0),   .x2(a2&b2),.x3(a1&b3),.x4(a0&b4),.cin(cout1), .cout(cout2), .sum(s14),.carry(c14));
COMPRESSOR com23(.x1(s1),   .x2(a1&b4),.x3(a0&b5),.x4(c0),   .cin(cout2), .cout(cout4), .sum(s15),.carry(c15));
COMPRESSOR com24(.x1(s2),   .x2(c1),   .x3(s3),   .x4(a0&b6),.cin(cout4), .cout(cout5), .sum(s16),.carry(c16));
COMPRESSOR com25(.x1(s4),   .x2(c2),   .x3(s5),   .x4(r),    .cin(cout5), .cout(cout6), .sum(s17),.carry(c17));
COMPRESSOR com26(.x1(s6),   .x2(c4),   .x3(s7),   .x4(c5),   .cin(cout6), .cout(cout7), .sum(s18),.carry(c18));
COMPRESSOR com27(.x1(s8),   .x2(c6),   .x3(s9),   .x4(c7),   .cin(cout7), .cout(cout8), .sum(s19),.carry(c19));
COMPRESSOR com28(.x1(s10),  .x2(c8),   .x3(a3&b7),.x4(c9),   .cin(cout8), .cout(cout10),.sum(s20),.carry(c20));
COMPRESSOR com29(.x1(s11),  .x2(c10),  .x3(a5&b6),.x4(a4&b7),.cin(cout10),.cout(cout11),.sum(s21),.carry(c21));
COMPRESSOR com30(.x1(a7&b5),.x2(c11),  .x3(a6&b6),.x4(a5&b7),.cin(cout11),.cout(cout13),.sum(s22),.carry(c22));
FA fa21(         .A(a7&b6), .B(a6&b7), .C(cout13),                                      .SUM(s23),.CARRY(c23));


//stage 3

 assign p0 =a0&b0;

HA ha31(.a(a1&b0),.b(a0&b1),          .s(p1),    .CARRY(cp1));
FA fa31(.A(s12),  .B(a0&b2),.C(cp1),  .SUM(p2),  .CARRY(cp2));
FA fa32(.A(s13),  .B(r),    .C(cp2),  .SUM(p3),  .CARRY(cp3));
FA fa33(.A(s14),  .B(c13),  .C(cp3),  .SUM(p4),  .CARRY(cp4));
FA fa34(.A(s15),  .B(c14),  .C(cp4),  .SUM(p5),  .CARRY(cp5));
FA fa35(.A(s16),  .B(c15),  .C(cp5),  .SUM(p6),  .CARRY(cp6));
FA fa36(.A(s17),  .B(c16),  .C(cp6),  .SUM(p7),  .CARRY(cp7));
FA fa37(.A(s18),  .B(c17),  .C(cp7),  .SUM(p8),  .CARRY(cp8));
FA fa38(.A(s19),  .B(c18),  .C(cp8),  .SUM(p9),  .CARRY(cp9));
FA fa39(.A(s20),  .B(c19),  .C(cp9),  .SUM(p10), .CARRY(cp10));
FA fa40(.A(s21),  .B(c20),  .C(cp10), .SUM(p11), .CARRY(cp11));
FA fa41(.A(s22),  .B(c21),  .C(cp11), .SUM(p12), .CARRY(cp12));
FA fa42 (.A(s23), .B(c22),  .C(cp12), .SUM(p13), .CARRY(cp13));
FA fa43(.A(a7&b7),.B(c23),  .C(cp13), .SUM(p14), .CARRY(cp14));

assign p15 = cp14;

endmodule
