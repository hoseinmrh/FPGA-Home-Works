`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:20:10 01/18/2023 
// Design Name: 
// Module Name:    part1 
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

///Inputs and Outputs are in form of Q0.8
module part1(
	input clk,
	input [7:0] x,
	output reg [7:0] y
    );
// define memory
reg [7:0] LUTmemory [0:255];
initial $readmemb("binary_memory.mem", LUTmemory);

always @(posedge clk)
begin
	y <= LUTmemory[x];
end



endmodule
