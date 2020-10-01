`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 09:59:53 PM
// Design Name: 
// Module Name: addsub
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


module addsub(
   input [1:0] a, b,
   input mode,
   output [1:0] sum,
   output cbout
   );
   
   wire c1, c2;
   wire [1:0] b_n;
   
   assign b_n[0] = b[0] ^ mode;
   assign b_n[1] = b[1] ^ mode;
   
   fulladder FA1 (
      .ain(a[0]), .bin(b_n[0]), .cin(mode),
      .cout(c1), .sout(sum[0])
      );
      
   fulladder FA2 (
      .ain(a[1]), .bin(b_n[1]), .cin(c1),
      .cout(c2), .sout(sum[1])
      );
      
   assign cbout = c2 ^ mode;
   
   
endmodule
