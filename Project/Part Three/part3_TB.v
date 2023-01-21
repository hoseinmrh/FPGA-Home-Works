`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:01:38 01/22/2023
// Design Name:   part3
// Module Name:   C:/HOSEIN/jozve and tamrin/7th Semester/FPGA/Project/projectFPGA/part3_TB.v
// Project Name:  projectFPGA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: part3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module part3_TB;

	// Inputs
	reg [7:0] x;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	part3 uut (
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		x = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		x = 8'b10101010;
		
		#100;
		
		x = 8'b11001100;
        
		// Add stimulus here

	end
      
endmodule

