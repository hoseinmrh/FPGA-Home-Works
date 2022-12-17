`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:09:26 12/16/2022
// Design Name:   Q3
// Module Name:   C:/HOSEIN/jozve and tamrin/7th Semester/FPGA/New folder/HW1/Q3_TB.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Q3_TB;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire out2;

	// Instantiate the Unit Under Test (UUT)
	Q3 uut (
		.A(A), 
		.B(B), 
		.out2(out2)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A = 1;
		B = 1;
		
		#100;
		
		A = 0;
		B = 1;
		
		#100;
		
		A = 1;
		B = 0;

	end
      
endmodule

