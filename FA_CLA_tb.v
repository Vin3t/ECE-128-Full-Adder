`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 03:14:25 PM
// Design Name: 
// Module Name: FA_CLA_tb
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


module FA_CLA_tb;
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
    
    A = 4'b0011; B = 4'b0101; Cin = 0; 
    #10;
    $display("A=%b B=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
    
    A = 4'b0110; B = 4'b0101; Cin = 1; 
    #10;
    $display("A=%b B=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
    
    A = 4'b1111; B = 4'b1111; Cin = 1; 
    #10;
    $display("A=%b B=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
    $finish;
    end
endmodule
