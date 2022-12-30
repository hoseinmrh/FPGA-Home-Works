`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:33:54 12/16/2022
// Design Name:   JK_FF
// Module Name:   C:/HOSEIN/jozve and tamrin/7th Semester/FPGA/New folder/HW1/JK_FF_TB.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK_FF_TB;

	// Inputs
	reg J;
	reg K;
	reg clk;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	JK_FF uut (
		.J(J), 
		.K(K), 
		.clk(clk), 
		.Q(Q), 
		.Qn(Qn)
	);
	
	always begin
		#50;
		clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		J = 0;
		K = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		J = 1;
		K = 1;
		
		#100;
		
		J = 0;
		K = 1;
		#100;
		
		J = 1;
		K = 0;
        
		// Add stimulus here

	end
      
endmodule

