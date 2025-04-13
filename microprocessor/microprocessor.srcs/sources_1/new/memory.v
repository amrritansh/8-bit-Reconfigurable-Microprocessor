`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 10:56:06 PM
// Design Name: 
// Module Name: memory
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

module memory (
    input clk,
    input [10:0] addr,
    output reg [7:0] data_out
);
    reg [7:0] mem [0:2047]; // 2K x 8-bit memory

    initial begin
        // Load memory with instructions or data (example initialization)
        $readmemh("memory_init.hex", mem);
    end
    always @(posedge clk) begin
        data_out <= mem[addr]; // Read memory at address
    end
endmodule