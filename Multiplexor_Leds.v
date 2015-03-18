`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:19:36 02/22/2015 
// Design Name: 
// Module Name:    Multiplexor_Leds 
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
module Multiplexor_Leds(
	
	input wire clk,reset,
	input wire [6:0] DecoPrimero,DecoSegundo,DecoEstados,
	output reg [0:3] an,
	output reg [6:0] sseg
    );
	 
	 localparam N=18;
	 localparam E=7'b0000110;
	 
	 reg [N-1:0] q_reg;
	 wire [N-1:0] q_next;
	 
	 
	 always @ (posedge clk, posedge reset)
	 
		if (reset)
			q_reg <= 0;
		else 
			q_reg <= q_next;
			
		
		assign q_next = q_reg + 1;
		
		
		always @*
		
			case (q_reg[N-1:N-2])
				2'b00:
					begin 
						an = 4'b1110;
						sseg = DecoPrimero;
					end
				2'b01:
					begin 
						an = 4'b1101;
						sseg = DecoSegundo;
					end
				2'b10:
					begin
						an = 4'b1011;
						sseg = E;
					end
				default:
					begin
						an = 4'b0111;
						sseg = DecoEstados;
					end
			endcase
						
endmodule
