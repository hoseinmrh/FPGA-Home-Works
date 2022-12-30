`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:53:45 12/16/2022
// Design Name:   SR_LATCH
// Module Name:   C:/HOSEIN/jozve and tamrin/7th Semester/FPGA/New folder/HW1/SR_LATCH_TB.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SR_LATCH
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SR_LATCH_TB;

	// Inputs
	reg S;
	reg R;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	SR_LATCH uut (
		.S(S), 
		.R(R), 
		.Q(Q), 
		.Qn(Qn)
	);

	initial begin
		// Initialize Inputs
    S = 1;
    R = 1;
     
    // Add stimulus here
    #100 S = 0;
    #100 S = 1;
    #100 R = 0;
    #100 R = 1;
    #100 S = 0;
         R = 0;
    #100 S = 1;
         R = 1;
    #100 S = 0;
         R = 0;
    #100 ;

	end
      
endmodule

