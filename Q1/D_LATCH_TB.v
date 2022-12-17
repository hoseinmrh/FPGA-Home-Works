`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:09:03 12/16/2022
// Design Name:   D_LATCH
// Module Name:   C:/HOSEIN/jozve and tamrin/7th Semester/FPGA/New folder/HW1/D_LATCH_TB.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_LATCH
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_LATCH_TB;

	// Inputs
	reg D;
	reg E;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	D_LATCH uut (
		.D(D), 
		.E(E), 
		.Q(Q), 
		.Qn(Qn)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		E = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		D = 1;
		E = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		D = 1;
		E = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		D = 0;
		E = 1;

        
		// Add stimulus here

	end
      
endmodule

