`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:14 12/17/2022
// Design Name:   Q4
// Module Name:   C:/HOSEIN/jozve and tamrin/7th Semester/FPGA/New folder/HW1/Q4_TB.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Q4_TB;

	// Inputs
	reg start;
	reg clk;
	reg [3:0] NumberIn;

	// Outputs
	wire [7:0] Count;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	Q4 uut (
		.start(start), 
		.clk(clk), 
		.NumberIn(NumberIn), 
		.Count(Count), 
		.overflow(overflow)
	);
	
	always begin
		#25;
		clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		start = 0;
		clk = 0;
		NumberIn = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		
		start = 1;
		NumberIn = 4'b0100;
        
		// Add stimulus here

	end
      
endmodule

