`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:46:56 10/18/2016
// Design Name:   counter
// Module Name:   D:/lab05/tb_counter.v
// Project Name:  lab05
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_counter;

	// Inputs
	reg clk;

	// Outputs
	wire [3:0] o;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #20 clk = ~clk;
	end
      
endmodule

