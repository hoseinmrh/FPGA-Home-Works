`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:10:58 12/17/2022
// Design Name:   sevenSegment
// Module Name:   C:/HOSEIN/jozve and tamrin/7th Semester/FPGA/New folder/HW1/sevenSegment_TB.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sevenSegment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sevenSegment_TB;

	// Inputs
	reg [3:0] number;

	// Outputs
	wire [6:0] sevenSegmentPins;

	// Instantiate the Unit Under Test (UUT)
	sevenSegment uut (
		.number(number), 
		.sevenSegmentPins(sevenSegmentPins)
	);

	initial begin
		// Initialize Inputs
		number = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		number = 9;
		
		#100;
		
		number = 8;
        
		// Add stimulus here

	end
      
endmodule

