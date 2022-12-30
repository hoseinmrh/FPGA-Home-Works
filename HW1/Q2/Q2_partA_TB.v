`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:07:35 12/17/2022
// Design Name:   Q2_partA
// Module Name:   C:/HOSEIN/jozve and tamrin/7th Semester/FPGA/New folder/HW1/Q2_partA_TB.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q2_partA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Q2_partA_TB;

	// Inputs
	reg [6:0] decimalNumber;

	// Outputs
	wire [3:0] rightDigit;
	wire [3:0] leftDigit;

	// Instantiate the Unit Under Test (UUT)
	Q2_partA uut (
		.decimalNumber(decimalNumber), 
		.rightDigit(rightDigit), 
		.leftDigit(leftDigit)
	);

	initial begin
		// Initialize Inputs
		decimalNumber = 95;

		// Wait 100 ns for global reset to finish
		#100;
		
		decimalNumber = 80;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

