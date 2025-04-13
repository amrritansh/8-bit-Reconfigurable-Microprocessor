`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 10:57:37 PM
// Design Name: 
// Module Name: control
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

module control (
    input [7:0] instruction,
    output reg write_enable
);
    always @(*) begin
        case (instruction[7:4]) // Check opcode (MSBs)
            4'b0001: write_enable = 1; // Example: Enable writing for opcode `0001`
            default: write_enable = 0;
        endcase
    end
endmodule