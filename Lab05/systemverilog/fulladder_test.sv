`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 09:37:37 PM
// Design Name: 
// Module Name: fulladder_test
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


module fulladder_test();

   reg ain_t, bin_t, cin_t;
   wire cout_t, sout_t;
   
   fulladder dut (
      .ain(ain_t),
      .bin(bin_t),
      .cin(cin_t),
      .cout(cout_t),
      .sout(sout_t)
   );
   
   initial begin 
   
      cin_t = 0; bin_t = 0; ain_t = 0; #10;
      cin_t = 0; bin_t = 0; ain_t = 1; #10;
      cin_t = 0; bin_t = 1; ain_t = 0; #10;
      cin_t = 0; bin_t = 1; ain_t = 1; #10;
      cin_t = 1; bin_t = 0; ain_t = 0; #10;
      cin_t = 1; bin_t = 0; ain_t = 1; #10;
      cin_t = 1; bin_t = 1; ain_t = 0; #10;
      cin_t = 1; bin_t = 1; ain_t = 1; #10;
      
      $finish;
      
   end
  
endmodule
