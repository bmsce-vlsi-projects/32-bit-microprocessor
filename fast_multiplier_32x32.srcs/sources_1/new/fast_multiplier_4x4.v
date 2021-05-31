`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2021 19:22:07
// Design Name: 
// Module Name: fast_multiplier_4x4
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


module fast_multiplier_4x4(
    input [3:0] a,
    input [3:0] b,
    output [7:0] out
    );
    wire [3:0] ac,bc,ad,bd;
    wire [7:0] t1,t2;
    wire [6:0] psum;
    
  fast_multiplier_2x2 m1(.a(a[3:2]),.b(b[3:2]),.out(ac));
  fast_multiplier_2x2 m2(.a(a[1:0]),.b(b[3:2]),.out(bc));
  fast_multiplier_2x2 m3(.a(a[3:2]),.b(b[1:0]),.out(ad));
  fast_multiplier_2x2 m4(.a(a[1:0]),.b(b[1:0]),.out(bd));
  assign t2= bd;
  assign psum = {bc+ad,2'b00};
  assign t1={ac,4'b0000};
  assign out= t1+t2+psum;
  
endmodule
