`timescale 1ns / 1ps

module top(
    input [1:0] chooseDisplay,
    input [3:0] In1,
    input [3:0] In2,
    output [6:0] Out, // digit to be shown on the display
    output LED, // the most significant bit
    output reg [3:0] AN // indicates which display should be on
    );
    
    wire [4:0] added; 
    FourBitAdder(.a(In1), .b(In2), .s(added));
    Decoder2(.fourIn(added), .segments(Out));
    assign LED = added[4];
        always @ * begin
            AN[0] = 1'b1; 
            AN[1] = 1'b1; 
            AN[2] = 1'b1; 
            AN[3] = 1'b1; 
            case(chooseDisplay)
                0: AN[0] = 1'b0;
                1: AN[1] = 1'b0;
                2: AN[2] = 1'b0;
                3: AN[3] = 1'b0;
                default: AN[0] = 1'b1;
            endcase
        end
endmodule
