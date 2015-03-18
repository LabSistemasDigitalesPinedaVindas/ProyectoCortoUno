`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:39:22 02/28/2015 
// Design Name: 
// Module Name:    Deco_Estados 
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
module Deco_Estados(
   input [1:0] Estados,
	input wire reset,
	output reg [6:0] sieteSeg
    );
	 
//localparam En0= 1'b1;

   always @*
	begin
	
      if (reset)
          sieteSeg <= 7'b1111111;
      else
			begin
         case (Estados)
            2'b00  : sieteSeg  <= 7'b1000000;
            2'b01  : sieteSeg  <= 7'b1111001;
            2'b10  : sieteSeg  <= 7'b1111001;
            2'b11  : sieteSeg  <= 7'b0100100;

            default : sieteSeg <=  7'b1111111;
         endcase
			end
		end

endmodule
