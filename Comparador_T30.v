`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:13 02/28/2015 
// Design Name: 
// Module Name:    Comparador_T30 
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
module Comparador_T30(
	input wire [2:0] temp,
	output reg Dato_comp 
    );

localparam temp30 = 3'b110;
	 
	 always @*
		 
		 if (temp >= temp30)
		 
			Dato_comp <= 1'b1;
			
		else 
			Dato_comp <= 1'b0;
			 

endmodule
