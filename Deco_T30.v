`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:11:34 02/23/2015 
// Design Name: 
// Module Name:    Deco_T30 
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
module Deco_T30(
   input wire [2:0] switchTempPreven,
	input wire reset,
	output reg TempPreven
	
    );
 always @*
	begin
	
      if (reset)
          TempPreven <= 1'b0;
      else
			begin
         case (switchTempPreven)
				3'b000  : TempPreven <= 1'b0;
            3'b001  : TempPreven <= 1'b0;
            3'b010  : TempPreven <= 1'b0;
            3'b011  : TempPreven <= 1'b0;
            3'b100  : TempPreven <= 1'b0;
            3'b101  : TempPreven <= 1'b0;
            3'b110  : TempPreven <= 1'b1;
            3'b111  : TempPreven <= 1'b0;
            default : TempPreven <= 1'b0;
         endcase
			end
		end
		
		

endmodule
