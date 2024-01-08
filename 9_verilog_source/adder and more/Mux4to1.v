`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 10:31:02 AM
// Design Name: 
// Module Name: Mux4to1
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


module Mux4to1(input  [31:0] Onor, Oxor, Oor, Oand, input [1:0] s,
output [31:0] y);

assign y=s[1] ? (s[0] ? Onor : Oxor) : (s[0] ? Oor : Oand);

endmodule
