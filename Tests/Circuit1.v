`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 10:51:26 AM
// Design Name: 
// Module Name: Circuit1
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


module Test_Circuit1(

input a,b,s, output out 
    );
    wire NS, w1, w2;
not notS (NS,s);
and a1(w1,NS, a);
and a2(w2,s, b);
or o1(out,w1,w2);

endmodule
