`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 10:33:14 PM
// Design Name: 
// Module Name: top
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

module top (
    input clk,             // System clock
    input reset,           // Reset signal
    input [7:0] in_data,   // External input data from switches
    input load_button,     // Button to load data into register
    output [7:0] out_data // External output data (Register content)
    //output [10:0] pc_out   // Program Counter output
);

    // Internal signals
    wire [7:0] instruction;
    wire [7:0] alu_result;
    wire [7:0] mem_data;
    wire write_enable;
    
    reg [7:0] reg_data;    // Register to store in_data
    reg [10:0] pc;         // Program Counter register

    // Instantiate Memory (Instruction and Data)
    memory mem_inst (.clk(clk),.addr(pc),.data_out(mem_data));

    // Instantiate Control Unit
    control ctrl_inst (.instruction(instruction),.write_enable(write_enable));

    // Instantiate ALU
    alu alu_inst (.op(instruction[7:4]),.a(reg_data),.b(mem_data),.result(alu_result));

    // Data Load Logic using Button
    always @(posedge clk or posedge reset) begin
        if (reset)
            reg_data <= 8'b0;  // Clear register on reset
        else if (load_button)
            reg_data <= in_data;  // Load in_data when button is pressed
    end

    // Program Counter Logic
    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 0;
        else
            pc <= pc + 1;  // Increment PC every clock cycle
    end

    // Assign outputs
    //assign pc_out = pc;        // PC value as output
    assign out_data = reg_data; // Register output
endmodule