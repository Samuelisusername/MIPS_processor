`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2023 11:15:16 AM
// Design Name: 
// Module Name: FourBitAdder
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


module FourBitAdder(input [3:0] a, input [3:0] b, output[4:0]s );
    wire wire0to1, wire1to2, wire2to3;
    FullAdder fa0 (.a(a[0]), .b(b[0]), .ci(1'b0), .co(wire0to1), .s(s[0]));
    FullAdder fa1 (.a(a[1]), .b(b[1]), .ci(wire0to1), .co(wire1to2), .s(s[1]));
    FullAdder fa2 (.a(a[2]), .b(b[2]), .ci(wire1to2), .co(wire2to3), .s(s[2]));
    FullAdder fa3 (.a(a[3]), .b(b[3]), .ci(wire2to3), .co(s[4]), .s(s[3]));
endmodule
