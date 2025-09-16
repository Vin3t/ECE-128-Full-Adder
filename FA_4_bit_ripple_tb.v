`timescale 1ns / 1ps
`default_nettype none;
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Vincent Langford
// 
// Create Date: 09/11/2025 01:19:04 PM
// Design Name: Full Adder 4 bit ripple carry tb
// Module Name: FA_4_bit_ripple_tb
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
module FA_4_bit_ripple_tb;
    reg [3:0] A, B; 
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    
    FA_4_bit uut(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
    
    initial begin
    A = 0;
    B = 0;
    Cin = 0;
    
    #10;
    
    //Test case 1: When A is 1 and B is 3 Sum should be 4 (no overflow)
    A = 4'b0001; B = 4'b0011; Cin = 0; 
    #10;
    $display("A=%b B=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
    $finish;
    
    A = 4'b1010; B = 4'b0101; Cin = 0; 
    #10;
    $display("A=%b B=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
    $finish;
    
    A = 4'b1111; B = 4'b0001; Cin = 1; 
    #10;
    $display("A=%b B=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
    $finish;
    
    A = 4'b1111; B = 4'b1111; Cin = 1; 
    #10;
    $display("A=%b B=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
    $finish;
    end
endmodule
