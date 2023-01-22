`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:42:53 01/22/2023 
// Design Name: 
// Module Name:    part3 
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
module part3(/// 64 slut memory so P is 6
		input [7:0] x,
		output reg [7:0] y
    );

// define X1, X2, X3, XLSB, XLSB^2
reg [5:0] x1;
reg [5:0] x2;
reg [5:0] x3;
reg [1:0] xLSB;
reg [5:0] xLSBpowTwo;

// Using last memory desing
reg [7:0] LUTmemory [0:255];
initial $readmemb("binary_memory.mem", LUTmemory);


// Inital new memory with 64 sluts
reg [7:0] LUTmemoryP3 [0:63];
integer ii = 0;
initial
begin
for(ii=0; ii<64; ii = ii + 1)
begin
	LUTmemoryP3[ii] <= LUTmemory[4*ii];
end
end

// Define Y1 , Y2, Y3, y3 - y1, yDiff
reg [7:0] y1;
reg [7:0] y2;
reg [7:0] y3;
reg [7:0] y3_minus_y1;
reg [7:0] yDiff;

reg [7:0] tmpRes1;
reg [7:0] tmpRes2;

always @ (*)
begin
	// inital X1, X2, X3, XLSB and XLSB^2
	x1 <= (x[7:2] - 6'b000001); //X MSB - 1
	x2 <= (x[7:2]); //X MSB
	x3 <= (x[7:2] + 6'b000001); // X MSB + 1
	xLSB <= x[1:0];
	xLSBpowTwo <= xLSB * xLSB; 
	
	
	// inital Y
	y1 <= LUTmemoryP3[x1];
	y2 <= LUTmemoryP3[x2];
	y3 <= LUTmemoryP3[x3];
	y3_minus_y1 <= (y3 - y1);
	yDiff <= (y1 - (y2 << 1) + y3);
	
	// tmpRes1 = XLSB*[y3 - y1] / 2(delta X)
	// delta x = 2^(N-P) = 2 ^ 2 = 4 ---> 2 * 4 = 8 ---> shift right 3
	
	tmpRes1 <= (xLSB * y3_minus_y1) >> 3;
	
	// tmpRes2 = xLSM^2 * [y1 - 2y2 + y3] / 2 (delta X)^2
	// (delta x)^2 = 2^(2N - 2P) = 2 ^ 4 = 16 ---> 2 * 16 = 32 ---> shift right 5
	
	tmpRes2 <= (xLSBpowTwo * yDiff) >> 5;
	
	// y = y2 + tmpRes1 + tmpRes2
	
	y <= y2 + tmpRes1 + tmpRes2;
	
	
	
	
end

endmodule
