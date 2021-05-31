`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2021 16:16:39
// Design Name: 
// Module Name: fast_multipltier_8x8
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


module fast_multipltier_8x8(
    input [7:0] a,
    input [7:0] b,
    output [15:0] out
    );
    
    wire [7:0] ac,bc,ad,bd;
    wire [15:0] t1,t2;
    wire [12:0] psum;
    
  fast_multiplier_4x4 m1(.a(a[7:4]),.b(b[7:4]),.out(ac));
  fast_multiplier_4x4 m2(.a(a[3:0]),.b(b[7:4]),.out(bc));
  fast_multiplier_4x4 m3(.a(a[7:4]),.b(b[3:0]),.out(ad));
  fast_multiplier_4x4 m4(.a(a[3:0]),.b(b[3:0]),.out(bd));
  assign t2= bd;
  assign psum = {bc+ad,4'b0000};
  assign t1={ac,8'b0000};
  assign out= t1+t2+psum;
endmodule
