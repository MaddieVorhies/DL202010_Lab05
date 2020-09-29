`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 09:30:18 PM
// Design Name: 
// Module Name: halfadder_test
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


module halfadder_test();

   reg a1, b1;
   wire c1, s1;
   
   halfadder dut (
   
      .a(a1),
      .b(b1),
      .c(c1),
      .s(s1)
   );
   
   initial begin 
   
      a1 = 0; b1 = 0; #10;
      a1 = 1; b1 = 0; #10;
      a1 = 0; b1 = 1; #10;
      a1 = 1; b1 = 1; #10;
   
      $finish;
   
   end
   
endmodule
