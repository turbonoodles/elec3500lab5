`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2021 09:54:09 PM
// Design Name: 
// Module Name: decoder_3to8_dataflow
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


module decoder_3to8_dataflow(
    input wire [2:0] x,
    input wire [7:0] y
    );

assign y[7] = &( {  x[2],  x[1],  x[0] } );
assign y[6] = &( {  x[2],  x[1], ~x[0] } );
assign y[5] = &( {  x[2], ~x[1],  x[0] } );
assign y[4] = &( {  x[2], ~x[1], ~x[0] } );
assign y[3] = &( { ~x[2],  x[1],  x[0] } );
assign y[2] = &( { ~x[2],  x[1], ~x[0] } );
assign y[1] = &( { ~x[2], ~x[1],  x[0] } );
assign y[0] = &( { ~x[2], ~x[1], ~x[0] } );

endmodule
