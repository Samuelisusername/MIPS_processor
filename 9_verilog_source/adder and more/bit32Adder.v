`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 09:36:55 AM
// Design Name: 
// Module Name: bit32Adder
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


module bit32Adder(input [31:0] a1, input [31:0] b1, output[31:0]s1 ); //31 as an output???
   wire [7:0] co;
   FourBitAdder adder1 (.a(a1[3:0]), .b(b1[3:0]), .ci(1'b0), .s(s1[3:0]), .co(co[0]));
   FourBitAdder adder2 (.a(a1[7:4]), .b(b1[7:4]), .ci(co[0]), .s(s1[7:4]), .co(co[1]));
   FourBitAdder adder3 (.a(a1[11:8]), .b(b1[11:8]), .ci(co[1]), .s(s1[11:8]), .co(co[2]));
   FourBitAdder adder4 (.a(a1[15:12]), .b(b1[15:12]), .ci(co[2]), .s(s1[15:12]), .co(co[3]));
   FourBitAdder adder5 (.a(a1[19:16]), .b(b1[19:16]), .ci(co[3]), .s(s1[19:16]), .co(co[4]));
   FourBitAdder adder6 (.a(a1[23:20]), .b(b1[23:20]), .ci(co[4]), .s(s1[23:20]), .co(co[5]));
   FourBitAdder adder7 (.a(a1[27:24]), .b(b1[27:24]), .ci(co[5]), .s(s1[27:24]), .co(co[6]));
   FourBitAdder adder8 (.a(a1[31:28]), .b(b1[31:28]), .ci(co[6]), .s(s1[31:28]), .co(co[7]));
   //assign s1[32] = co[7]; ?????????????
endmodule
