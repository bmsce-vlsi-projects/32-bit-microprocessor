`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2021 16:23:35
// Design Name: 
// Module Name: tb
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


module tb( );

    reg [15:0]a,b;
    wire [31:0]out;
    integer i;
    fast_multiplier_16x16 uut(.a(a),.b(b),.out(out));
    initial 
    begin
    for(i=0;i<=32000;i=i+1)
        begin
        #1 a=i;
          #1 b=i;
          
        end     
        
    end
endmodule
