`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:22:44 12/17/2022
// Design Name:   Q2_partB
// Module Name:   C:/HOSEIN/jozve and tamrin/7th Semester/FPGA/New folder/HW1/Q2_partB_TB.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q2_partB
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Q2_partB_TB;

	// Inputs
	reg [6:0] decimalNumber;

	// Outputs
	wire [6:0] sevenSegmentRightDigit;
	wire [6:0] sevenSegmentLeftDigit;

	// Instantiate the Unit Under Test (UUT)
	Q2_partB uut (
		.decimalNumber(decimalNumber), 
		.sevenSegmentRightDigit(sevenSegmentRightDigit), 
		.sevenSegmentLeftDigit(sevenSegmentLeftDigit)
	);

	initial begin
		// Initialize Inputs
		decimalNumber = 25;

		// Wait 100 ns for global reset to finish
		#100;
		
		decimalNumber = 99;
		
		#100
		
		decimalNumber = 84;
        
		// Add stimulus here

	end
      
endmodule

