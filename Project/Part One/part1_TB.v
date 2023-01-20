`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:21:50 01/21/2023
// Design Name:   part1
// Module Name:   C:/HOSEIN/jozve and tamrin/7th Semester/FPGA/Project/projectFPGA/part1_TB.v
// Project Name:  projectFPGA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: part1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module part1_TB;

	// Inputs
	reg clk;
	reg [7:0] x;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	part1 uut (
		.clk(clk), 
		.x(x), 
		.y(y)
	);
	
	always begin
		#25 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		x = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		x= 8'b11111100;
		
		#100;
        
		// Add stimulus here

	end
      
endmodule

