`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 11:10:12 PM
// Design Name: 
// Module Name: alu
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

module alu (
    input [3:0] op, 
    input [7:0] a, b, 
    output reg [7:0] result
);
    always @(*) begin
        case (op)
            4'b0000: result = a + b;  // ADD
            4'b0001: result = a - b;  // SUB
            4'b0010: result = a & b;  // AND
            4'b0011: result = a | b;  // OR
            4'b0100: result = a ^ b;  // XOR
            4'b0101: result = ~a;     // NOT
            4'b0110: result = a << 1; // Shift Left
            4'b0111: result = a >> 1; // Shift Right
            default: result = 8'b00000000;
        endcase
    end
endmodule