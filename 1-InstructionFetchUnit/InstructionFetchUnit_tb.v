`timescale 1ns / 1ps

module InstructionFetchUnit_tb(); 

    wire [31:0] Instruction;
    wire [31:0] PCResult;
    reg Clk;
    reg Reset;
//module InstructionFetchUnit(Instruction, PCResult, Reset, Clk);

	InstructionFetchUnit u0(
        .Instruction(Instruction),
        .PCResult(PCResult),
        .Reset(Reset),
        .Clk(Clk)
	);

    initial begin
		Clk <= 1'b0;
		forever #10 Clk <= ~Clk;
	end


	initial begin
	
    /* Please fill in the implementation here... */
	
		reset = 1;
        #20;
        reset = 0;
        #20;
        //$finish;

	end

endmodule
