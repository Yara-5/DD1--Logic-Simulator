`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 11:12:54 AM
// Design Name: 
// Module Name: Test_Circuit5
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


module Test_Circuit5(
input [0:1]x, output [0:3]y

    );
wire w1,w2;    
and a1 (y[0],w1,w2);
and a2 (y[1],w1,x[1]);
and a3 (y[2],x[0], w2);
and a4 (y[3], x[0], x[1]);

not notA (w1,x[0]);
not notB (w2,x[1]);
   
endmodule
