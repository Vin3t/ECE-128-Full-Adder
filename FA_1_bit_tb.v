`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 01:09:18 PM
// Design Name: 
// Module Name: FA_1_bit_tb
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


module FA_1_bit_tb;

    reg A, B, Cin;
    wire Sum, Cout;
    
    FA_1_bit uut(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
    
    integer i,j,k;
    
    initial begin
    //Goes through all possible combinations for when A = 0 or 1, B = 0 or 1 and Cin = 0 or 1
        for(i = 0; i < 2;  i = i + 1); begin 
            for(j = 0; j < 2;  j = j + 1); begin
                for(k = 0; k < 2;  k = k + 1); begin
                    A = i; B = j; Cin = k;
                    #10;
                    $display("A=%b B=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
                 end
            end
        end
        $finish;
    end
endmodule
