`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnológico de Costa Rica	
// Engineer: Andrés Pineda y Jairo Vindas
// 
// Create Date:    21:37:54 02/21/2015 
// Design Name: 
// Module Name:    FSM 
// Project Name: Unidad de prevención de asfixia de bebés en un auto
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
module FSM(
input wire clk, reset,Presencia,Ignicion,Temp_28, Temp_30,
output reg Alarma,Ventilador,
output reg [1:0] Estado
    );
	 
	 // Declaracion simbolica de los estados
	 localparam [1:0] s0= 2'b00,
							s1= 2'b01,
							s2= 2'b10,
							s3= 2'b11;
							
							
	// Declaracion de las senales
	
	reg [1:0] state_reg,state_next;
	
	//Estado actual
	
	always @ (posedge clk, posedge reset)
		
			if (reset)
				state_reg <= s0;
				
			else 
				state_reg <= state_next;
				
	//Estado futuro
	
	always @*
	begin
	state_next = state_reg;
	Alarma = 1'b0;
	Ventilador = 1'b0;
		case(state_reg)
		
			s0: begin 
				Ventilador = 1'b0;
				Alarma = 1'b0;
				Estado = 2'b00;
				if (Presencia && ~Ignicion && Temp_28)
					state_next = s1;
				else 
					state_next = s0;
				end
			s1: begin 
				Ventilador = 1'b1;
				Alarma = 1'b0;
				Estado = 2'b01;
				if (Presencia && ~Ignicion && Temp_28 )
					state_next = s2;
				else
					state_next = s0;
					end
					
			s2: begin
			Ventilador = 1'b1;
			Alarma = 1'b0;
			Estado = 2'b10;
			if (Presencia && ~Ignicion && Temp_30)
					state_next = s3;
				else
					state_next = s1;
					end
					
			s3:  begin
			Ventilador = 1'b1;
			Alarma = 1'b1;
			Estado = 2'b11;
			if (Presencia && ~Ignicion && Temp_30)
					state_next = s3;
				else
					state_next=s2;
					end
			default: state_next = s0;
		endcase
		end
////assign Estado[00] = (state_reg==s0);
////assign Estado[01] = (state_reg==s1);
////assign Estado[10] = (state_reg==s2);
////assign Estado[11] = (state_reg==s3);

endmodule
