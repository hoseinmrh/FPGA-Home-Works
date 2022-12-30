`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:41 12/16/2022 
// Design Name: 
// Module Name:    Q3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux2_1(
		input I0,
		input I1,
		input sel,
		output reg out
	);
	
always @(*)
begin
	if(sel == 1'b1)
		out <= I1;
	else
		out <= I0;
end
endmodule

module Q3(
	input A,
	input B,
	output out2
    );
wire high = 1'b1;
mux2_1 mux(.I0(high), .I1(~B), .sel(A), .out(out2)); // if a == 0 , nand output always == 1 , else, nand output == ~B
endmodule
