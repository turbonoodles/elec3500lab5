`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2021 11:59:59 AM
// Design Name: 
// Module Name: rca_dataflow
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


module rca_dataflow(
    input wire [3:0] A,
    input wire [3:0] B,
    input wire CIN,
    output wire [3:0] SUM,
    output wire COUT
    );

// nets for the rippled carries
wire carry0, carry1, carry2;

// instantiate four full adders
fulladder_dataflow fa0(
    .a (A[0]),
    .b (B[0]),
    .cin (CIN),
    .cout (carry0),
    .s (SUM[0])
);

fulladder_dataflow fa1(
    .a (A[1]),
    .b (B[1]),
    .cin (carry0),
    .cout (carry1),
    .s (SUM[1])
);

fulladder_dataflow fa2(
    .a (A[2]),
    .b (B[2]),
    .cin (carry1),
    .cout (carry2),
    .s (SUM[2])
);

fulladder_dataflow fa3(
    .a (A[3]),
    .b (B[3]),
    .cin (carry2),
    .cout (COUT),
    .s (SUM[3])
);

endmodule
