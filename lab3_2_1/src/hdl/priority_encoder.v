`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2021 06:29:27 PM
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
    input wire [7:0] x, // input number
    input wire en_in_n, 
    output reg [2:0] y,
    output reg gs, // everything high
    output reg en_out // enable out
    );

always @( x, en_in_n ) begin
    if (en_in_n) begin
        // input disabled
        y = 3'h7;
        gs = 1;
        en_out = 1;
    end // if ~en_in_n

    else
        casex (x)
            8'b11111111: begin
                y = 3'b111;
                gs = 1;
                en_out = 0;
            end
            8'bx1111111: begin
                y = 3'b111;
                gs = 0;
                en_out = 1;
            end
            8'bxx111111: begin
                y = 3'b110;
                gs = 0;
                en_out = 1;
            end
            8'bxxx11111: begin
                y = 3'b101;
                gs = 0;
                en_out = 1;
            end
            8'bxxxx1111: begin
                y = 3'b100;
                gs = 0;
                en_out = 1;
            end
            8'bxxxxx111: begin
                y = 3'b011;
                gs = 0;
                en_out = 1;
            end
            8'bxxxxxx11: begin
                y = 3'b010;
                gs = 0;
                en_out = 1;
            end
            8'bxxxxxxx1: begin
                y = 3'b001;
                gs = 0;
                en_out = 1;
            end
            default: begin
                y = 0;
                gs = 0;
                en_out = 1;
            end
        endcase

end

endmodule