`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 09:27:38 AM
// Design Name: 
// Module Name: main_ALU
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


module main_ALU(
    input [31:0] A,
    input [31:0] B,
    input [3:0] AluOP,
    output [31:0] finalout,
    output flag
    );
    
    //wires for the Arithmetic part
    wire [31:0] BtoAddMux, AddMuxtoAdd, AddtoSlt, SlttoArithMux, ArithMuxtoFinMux;
    //wire for Logic part
    wire[31:0]  MuxtoFinMux;
    
    
   //Arithmetic part 
      Mux2to1 mux0 (.ifone(-B), .ifzero(B), .c(AluOP[1]), .out(AddMuxtoAdd));
      //assign AddtoSlt = A + AddMuxtoAdd;
      bit32Adder add (.a1(A), .b1(AddMuxtoAdd), .s1(AddtoSlt));
      assign SlttoArithMux = AddtoSlt[31];
      Mux2to1 mux1 (.ifone(SlttoArithMux), .ifzero(AddtoSlt), .c(AluOP[3]), .out(ArithMuxtoFinMux));
      
      
   //Logic part
      Mux4to1 m3 ( .Onor(~(A | B)), .Oxor(A ^ B), .Oor(A | B), .Oand(A & B), .s(AluOP[1:0]), .y(MuxtoFinMux));
      
      
   //Final Mux
      Mux2to1 m4 (.ifone(MuxtoFinMux), .ifzero(ArithMuxtoFinMux), .c(AluOP[2]), .out(finalout));
      assign flag = (finalout === 32'b0) ? 1 : (finalout > 0) ? 0 : 1'bx;
    
endmodule
