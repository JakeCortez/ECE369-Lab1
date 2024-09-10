`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 
// Module - TopLevel
// Description - Implementation of the top level design given in the powerpoint slides
////////////////////////////////////////////////////////////////////////////////

module TopLevel(Clk, Reset, en_out, out7);

input Clk, Reset;
output [7:0] en_out;
output [6:0] out7;

wire ClkOut;

wire [31:0] Instruction, PCResult;
//module ClkDiv(Clk, Rst, ClkOut);
ClkDiv Clk100(Clk, 0, ClkOut);
//module InstructionFetchUnit(Instruction, PCResult, Reset, Clk);

(* mark_debug = "true" *)  wire [31:0] debug_Instruction;
(* mark_debug = "true" *)  wire [31:0] debug_PCResult;

InstructionFetchUnit FetchUnit(Instruction, PCResult, Reset, ClkOut, debug_Instruction, debug_PCResult);
//module Two4DigitDisplay(Clk, NumberA, NumberB, out7, en_out);
Two4DigitDisplay Display(Clk, Instruction[15:0], PCResult[15:0], out7, en_out);


endmodule