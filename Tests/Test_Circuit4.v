`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 11:08:12 AM
// Design Name: 
// Module Name: Test_Circuit4
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


module Test_Circuit4(
input a,b,c, output y
    );
    wire w1,w2,w3;
    nand (w1,a,b);
    buf (w2,a);
    buf (w3,c);
    xnor(out,w1,w2,w3);
endmodule
