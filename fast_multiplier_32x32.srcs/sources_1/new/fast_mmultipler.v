`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2021 16:10:05
// Design Name: 
// Module Name: fast_multiplier_2x2
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


module fast_multiplier_2x2(
    input [1:0] a,
    input [1:0] b,
    output [3:0] out
    );
    wire temp;
    assign out[0]= a[0]&b[0];
    assign out[1]= (a[1]&b[0])^(a[0]&b[1]);
    assign temp =  (a[1]&b[0])&(a[0]&b[1]);
    assign out[2]= temp ^(a[1]&b[1]);
    assign out[3]= temp &(a[1]&b[1]);
endmodule
