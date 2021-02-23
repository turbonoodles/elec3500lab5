`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2021 11:23:09 AM
// Design Name: 
// Module Name: two_five_encoder
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


module two_five_encoder(
    input wire [3:0] x, // input value
    output wire [4:0] y // output code
    );

// why yes this is just the truth table; come at me
assign y[4] = x > 5;
assign y[3] = ( (x > 2) & (x < 6) ) | ( x == 9 );
assign y[2] = ( x == 1 ) | ( x == 2) | ( x == 5 ) | ( x == 8 );
assign y[1] = ( x == 0 ) | ( x == 2) | ( x == 4 ) | ( x == 7 );
assign y[0] = ( x == 0 ) | ( x == 1) | ( x == 3 ) | ( x == 6 );

endmodule