`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2021 11:44:17 AM
// Design Name: 
// Module Name: ripple_carry_adder
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


module fulladder_dataflow(
    input wire b, // number 1
    input wire a, // number 2
    input wire cin,     // carry in 
    output wire s, // sum
    output wire p, 
    output wire g
    );

// internal carries between full-adders
wire carry0, carry1, carry2;

// full adder for carry-lookahead
assign s = ^{a, b, cin}; // xor reduction
assign p = a | b;
assign g = a & b;


endmodule
