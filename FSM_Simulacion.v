`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:10:24 03/09/2015
// Design Name:   FSM
// Module Name:   C:/Users/Andres/Documents/Xilinx/ProyectoCorto_1/FSM_Simulacion.v
// Project Name:  ProyectoCorto_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FSM_Simulacion;

	// Inputs
	reg clk;
	reg reset;
	reg Presencia;
	reg Ignicion;
	reg Temp_28;
	reg Temp_30;

	// Outputs
	wire Alarma;
	wire Ventilador;
	wire [1:0] Estado;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
		.clk(clk), 
		.reset(reset), 
		.Presencia(Presencia), 
		.Ignicion(Ignicion), 
		.Temp_28(Temp_28), 
		.Temp_30(Temp_30), 
		.Alarma(Alarma), 
		.Ventilador(Ventilador), 
		.Estado(Estado)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		Presencia = 0;
		Ignicion = 0;
		Temp_28 = 0;
		Temp_30 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#10 reset = 1;
		#10 reset = 0;
   
		// Add stimulus here
		#20 Presencia = 1;
		#100 Temp_28 = 1;
		#20 Temp_30 = 1;
		
		

	end
	
		initial
			begin 
				forever 
					#10 clk = ~clk;
			end
      
endmodule

