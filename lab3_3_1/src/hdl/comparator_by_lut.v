`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2021 12:58:34 PM
// Design Name: 
// Module Name: comparator_by_lut
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


module comparator_by_lut(
    input wire [1:0] a,
    input wire [1:0] b,
    output wire lt, gt, eq
    );

// somewhere for a lut
reg [2:0] lut_rom [15:0];
wire [2:0] rom_dat;

assign rom_dat = lut_rom[ {a,b} ];

assign gt = rom_dat[2];
assign eq = rom_dat[1];
assign lt = rom_dat[0];

// read rom contents from text file
initial $readmemb( "lut.txt", lut_rom, 0, 15 );

endmodule