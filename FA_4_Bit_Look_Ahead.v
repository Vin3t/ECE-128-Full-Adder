`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 12:42:52 PM
// Design Name: 
// Module Name: FA_4_Bit_Look_Ahead
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


module FA_4_Bit_Look_Ahead(
    input [3:0] A,
    input [3:0] B,
    input Cin, //Initial Carry in
    output [3:0] Sum,
    output Cout //Final Carry out 
    );
    
    wire [3:0] P,G;
    wire c1, c2, c3, c4;
    
    assign P = A^ B;
    assign G = A & B;
    
    //carry lookahead
    assign c1 = G[0] | (P[0] & Cin);
    assign c2 = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
    assign c3 = G[2] | (P[2] & G[1]) |  (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & G[0]);
    assign c4 = G[3] | (P[3] & G[2]) |  (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);
    
    // Sum
    assign Sum[0] = P[0] ^ Cin;
    assign Sum[1] = P[1] ^ c1;
    assign Sum[2] = P[2] ^ c2;
    assign Sum[3] = P[3] ^ c3;
    //Final Carry 
    assign Cout = c4;
endmodule
