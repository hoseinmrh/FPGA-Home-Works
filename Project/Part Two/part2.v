`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:24:37 01/21/2023 
// Design Name: 
// Module Name:    part2 
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
module part2( /// 64 slut memory so P is 6
		input [7:0] x,
		output reg [7:0] y
    );

// Define X1, X2 and X LSB
reg [5:0] x1;
reg [5:0] x2;
reg [1:0] xLSB;


// Using last memory desing
reg [7:0] LUTmemory [0:255];
initial $readmemb("binary_memory.mem", LUTmemory);


// Inital new memory with 64 sluts
reg [7:0] LUTmemoryP2 [0:63];
integer ii = 0;
initial
begin
for(ii=0; ii<64; ii = ii + 1)
begin
	LUTmemoryP2[ii] <= LUTmemory[4*ii];
end
end

// Define Y1 , Y2 and yDiff
reg [7:0] y1;
reg [7:0] y2;
reg [7:0] yDiff;
reg [7:0] tmpResult;

always @ (*)
begin
	// inital X1, X2 and XLSB
	x1 <= x[7:2]; //X MSB 
	x2 <= (x[7:2] + 1); //X MSB + 1
	xLSB <= x[1:0];
	
	
	// inital Y1 and Y2 and yDiff
	y1 <= LUTmemoryP2[x1];
	y2 <= LUTmemoryP2[x2];
	yDiff <= (y2 - y1);
	
	// 2 ^ (n-p) = 2 ^ (8-6) = 4
	
	tmpResult <= (xLSB * yDiff) >> 2; //Div by 4 is equal to right shift with 2
	
	// y = tmpResult + y1
	y<= tmpResult + y1;
	
end



endmodule
