`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 10:51:26 AM
// Design Name: 
// Module Name: Circuit3
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


module Test_Circuit3(
input a,b,c, output y
    );
    wire w1,w2;
nor g1 (w1,a,b);
nor g2 (w2,b,c);
nand g3 (y,w1,w2);
endmodule
