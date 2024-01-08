`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 09:35:00 AM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(input a, input b, input ci, output s, output co );
    // co
    wire  anb, cia, bci;
    and(anb, a, b);
    and(cia, a , ci);
    and(bci, b, ci);
    or(co, bci, cia, anb);
    
//    // s
    wire axorb;
    xor(axorb, a, b);
    xor(s, ci, axorb);
     
endmodule
