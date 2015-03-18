`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:41:22 02/22/2015 
// Design Name: 
// Module Name:    Deco_7Seg_2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Deco_7Seg_2(
	input [2:0] switchSieteSegUno,
	input wire reset,
	output reg [6:0] sieteSeg
    );

   always @*
	begin
	
      if (reset)
          sieteSeg <= 7'b1111111;
      else
			begin
         case (switchSieteSegUno)
            3'b000  : sieteSeg <= 7'b0011001;
            3'b001  : sieteSeg <= 7'b0010010;
            3'b010  : sieteSeg <= 7'b0000010;
            3'b011  : sieteSeg <= 7'b1111000;
            3'b100  : sieteSeg <= 7'b0000000;
            3'b101  : sieteSeg <= 7'b0010000;
            3'b110  : sieteSeg <= 7'b1000000;
            3'b111  : sieteSeg <= 7'b1111001;
            default : sieteSeg <= 7'b0110000;
         endcase
			end
		end

endmodule
