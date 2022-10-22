`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2021 09:25:31
// Design Name: 
// Module Name: FA
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


module FA(
 input A,
 input B,
 input C,
 output SUM,
 output CARRY
 );
 wire ha1_sum,ha1_carry,ha2_carry,ha2_sum;
 HA HA1(.a(A), .b(B), .s(ha1_sum), .CARRY(ha1_carry) );
 HA HA2(.a(ha1_sum), .b(C), .s(SUM), .CARRY(ha2_carry));
 assign SUM = ha2_sum;
 assign CARRY = ha1_carry | ha2_carry;
endmodule


