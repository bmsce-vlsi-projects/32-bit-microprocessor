`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2021 16:19:08
// Design Name: 
// Module Name: fast_multiplier_16x16
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


module fast_multiplier_16x16(
    input [15:0] a,
    input [15:0] b,
    output [31:0] out
    );
    
    wire [15:0] ac,bc,ad,bd;
    wire [31:0] t1,t2;
    wire [24:0] psum;
    
  fast_multipltier_8x8 i1(.a(a[15:8]),.b(b[15:8]),.out(ac));
  fast_multipltier_8x8 i2(.a(a[7:0]),.b(b[15:8]),.out(bc));
  fast_multipltier_8x8 i3(.a(a[15:8]),.b(b[7:0]),.out(ad));
  fast_multipltier_8x8 i4(.a(a[7:0]),.b(b[7:0]),.out(bd));
  assign t2= bd;
  assign psum = {bc+ad,8'b00000000};
  assign t1={ac,16'b0000000000000000};
  assign out= t1+t2+psum;
endmodule
