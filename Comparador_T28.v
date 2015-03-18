`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:21 02/28/2015 
// Design Name: 
// Module Name:    Comparador_T28 
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
module Comparador_T28(
	input wire [2:0] temp,
	output reg Dato_comp
    );
localparam temp28 = 3'b100;
	 
	 always @*
		 
		 if (temp >= temp28)
		 
			Dato_comp <= 1'b1;
			
		else 
			Dato_comp <= 1'b0;
			 

endmodule
