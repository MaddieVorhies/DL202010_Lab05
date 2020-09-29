`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 10:11:39 PM
// Design Name: 
// Module Name: addsub_test
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


module addsub_test();

   reg [1:0] a_t, b_t;
   reg mode_t;
   wire [1:0] sum_t;
   wire cbout_t;
   
   addsub dut (
     
     .a(a_t),
     .b(b_t),
     .mode(mode_t),
     .sum(sum_t),
     .cbout(cbout_t)
  );
  
  initial begin 
  
     mode_t = 0; a_t[1] = 0; a_t[0] = 0; b_t[1] = 0; b_t[0] = 1; #10;
     mode_t = 0; a_t[1] = 0; a_t[0] = 0; b_t[1] = 1; b_t[0] = 0; #10;
     mode_t = 0; a_t[1] = 0; a_t[0] = 0; b_t[1] = 1; b_t[0] = 1; #10;
     mode_t = 0; a_t[1] = 0; a_t[0] = 1; b_t[1] = 0; b_t[0] = 1; #10;
     mode_t = 0; a_t[1] = 1; a_t[0] = 0; b_t[1] = 0; b_t[0] = 1; #10;
     mode_t = 0; a_t[1] = 1; a_t[0] = 0; b_t[1] = 0; b_t[0] = 0; #10;
     mode_t = 1; a_t[1] = 0; a_t[0] = 0; b_t[1] = 0; b_t[0] = 1; #10;
     mode_t = 1; a_t[1] = 0; a_t[0] = 0; b_t[1] = 1; b_t[0] = 0; #10;
     mode_t = 1; a_t[1] = 0; a_t[0] = 0; b_t[1] = 1; b_t[0] = 1; #10;
     mode_t = 1; a_t[1] = 0; a_t[0] = 1; b_t[1] = 0; b_t[0] = 1; #10;
     mode_t = 1; a_t[1] = 1; a_t[0] = 0; b_t[1] = 0; b_t[0] = 1; #10;
     mode_t = 1; a_t[1] = 1; a_t[0] = 0; b_t[1] = 0; b_t[0] = 0; #10;
     
     $finish;
     
  end
  
endmodule
