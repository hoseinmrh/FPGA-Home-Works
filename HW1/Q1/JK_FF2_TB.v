`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:53:35 12/16/2022
// Design Name:   JK_FF2
// Module Name:   C:/HOSEIN/jozve and tamrin/7th Semester/FPGA/New folder/HW1/JK_FF2_TB.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK_FF2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK_FF2_TB;

	// Inputs
	reg J;
	reg K;
	reg clk;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	JK_FF2 uut (
		.J(J), 
		.K(K), 
		.clk(clk), 
		.Q(Q), 
		.Qn(Qn)
	);

	always begin
		#10;
		clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
		J = 0;
		K = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#50;
      
		J = 1;
		K = 0;
		
		#50;
		J = 1;
		K = 1;
		
		#50
		
		J = 0;
		K = 1;
		
		#50
		
		J = 0;
		K = 0;
		// Add stimulus here

	end
      
endmodule

