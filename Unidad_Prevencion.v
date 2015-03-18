`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:02 03/17/2015 
// Design Name: 
// Module Name:    Unidad_Prevencion 
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
module Unidad_Prevencion(
	input [2:0] switches,
	input wire clk,reset,
	output [0:3] an,
	output [6:0] sseg,
	input wire Presencia,Ignicion,
	output Alarma,Ventilador,
	input wire ps2d,ps2c, rx_en
	
	);
	
	 wire [6:0] sieteSegUno;
	 wire [6:0] sieteSegDos;
	 wire [6:0] sieteSegEstados;
	 wire [1:0] Estados;
	 wire DatoT28;
	 wire DatoT30;
	 wire rxListo;
	 wire [7:0] dout;
	 wire [7:0] datoListo;
	
	
	 
	 Deco_7Seg DecoUno7Seg (switches, reset, sieteSegUno);
	 Deco_7Seg_2 DecoDos7Seg (switches, reset, sieteSegDos);
	 Deco_Estados DecoEstados (Estados, reset, sieteSegEstados);
	 Multiplexor_Leds MultiplexorLeds (clk, reset, sieteSegUno, sieteSegDos, sieteSegEstados, an, sseg);
	 Comparador_T28 ComparadorT28 (switches, DatoT28);
	 Comparador_T30 ComparadorT30 (switches, DatoT30);
	 FSM FSMUnidaDePrevencion (clk, reset, Presencia, Ignicion, DatoT28, DatoT30, Alarma, Ventilador, Estados);
	 Recepcion_PS2 RecepcionPS2 (clk, reset, ps2d, ps2c, rx_en, rxListo, dout);
	 Captura_Teclado CapturaTeclado (dout, rxListo, clk, reset, datoListo);
	 
	 
	 
	 
	 
	 

endmodule
