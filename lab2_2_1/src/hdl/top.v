`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2021 09:57:19 PM
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


module top(
    input wire [3:0] val,
    output wire [6:0] seg0,
    output wire ten,
    output wire [7:0] anodes
    );

// somewhere for the digit to transfer over
wire [3:0] digit;

lab2_2_1_partA numberthing(
    .v (val),
    .z (ten),
    .m_out (digit)
);

bcdto7segment_dataflow decoder (
    .bcd_in (digit),
    .an (anodes),
    .seg (seg0)
);

endmodule