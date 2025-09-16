`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Vincent Langford
// 
// Create Date: 09/11/2025 12:15:29 PM
// Design Name: Full Adder Ripple Carry
// Module Name: FA_4_bit
// Project Name: Full Adder
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


module FA_4_bit(
    input [3:0] A,
    input [3:0] B,
    input Cin, //Initial Carry in
    output [3:0] Sum,
    output Cout //Final Carry out 
    );
    
    //Places where it will produce a carry 
    wire c1, c2, c3;
    
    FA_1_bit FA0(.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(c1));
    FA_1_bit FA1(.A(A[1]), .B(B[1]), .Cin(c1), .Sum(Sum[1]), .Cout(c2));
    FA_1_bit FA2(.A(A[2]), .B(B[2]), .Cin(c2), .Sum(Sum[2]), .Cout(c3));
    FA_1_bit FA3(.A(A[3]), .B(B[3]), .Cin(c3), .Sum(Sum[3]), .Cout(Cout));
endmodule
