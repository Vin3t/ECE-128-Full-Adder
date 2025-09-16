`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Vincent Langford
// 
// Create Date: 09/11/2025 11:10:56 AM
// Design Name: 1-bit Full Adder
// Module Name: FA_1-bit
// Project Name: Full adder
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


module FA_1_bit(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    
    //Wires are coming from the truthtable where Cout is 1. Places where it will produce a carry 
    wire w1, w2, w3;
    
    xor(Sum, A, B, Cin);
    
    and(w1, B, Cin);
    and(w2, A, Cin);
    and(w3, A, B); 
    or(Cout, w1,w2,w3);
endmodule
