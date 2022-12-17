`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:01:55 12/17/2022 
// Design Name: 
// Module Name:    Q2 
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
module Q2_partA( //Binary to BCD
	input [6:0] decimalNumber,
	output reg [3:0] rightDigit, leftDigit
);

always@(*)
begin
	rightDigit <= decimalNumber % 4'b1010;
	leftDigit <= decimalNumber / 4'b1010;
end
endmodule

module sevenSegment  ( //Number to seven segment pins
	input [3:0] number,
	output reg [6:0] sevenSegmentPins);
	
always@(number)
	begin
		case (number)
			4'b0000 : sevenSegmentPins = 7'b0111111;  // number == 0 --> pin 0,1,2,3,4,5
			4'b0001 : sevenSegmentPins = 7'b0000110;  // number == 1 --> pin 1,2
			4'b0010 : sevenSegmentPins = 7'b1011011;  // number == 2 --> pin 0,1,6,3,4
			4'b0011 : sevenSegmentPins = 7'b1001111;  // number == 3 --> pin 0,1,6,2,3
			4'b0100 : sevenSegmentPins = 7'b1100110;  // number == 4 --> pin 5,6,1,2
			4'b0101 : sevenSegmentPins = 7'b1101101;  // number == 5 --> pin 0,5,6,2,3
			4'b0110 : sevenSegmentPins = 7'b1111101;  // number == 6 --> pin 0,5,4,3,2,6
			4'b0111 : sevenSegmentPins = 7'b0000111;  // number == 7 --> pin 0,1,2
			4'b1000 : sevenSegmentPins = 7'b1111111;  // number == 8 --> pin 0,1,2,3,4,5,6
			4'b1001 : sevenSegmentPins = 7'b1101111;  // number == 0 --> pin 6,5,0,1,2,3			
		endcase
	end
endmodule



module Q2_partB( // Generate 2 seven segments
	input [6:0] decimalNumber,
	output [6:0] sevenSegmentRightDigit, sevenSegmentLeftDigit);
	
wire [3:0] leftDig, rightDig;
Q2_partA binaryBCD( .decimalNumber(decimalNumber), .rightDigit(rightDig), .leftDigit(leftDig) ); //Generate BCD
sevenSegment SS1( .number(rightDig), .sevenSegmentPins(sevenSegmentRightDigit)); //Right Digit decoder
sevenSegment SS2( .number(leftDig), .sevenSegmentPins(sevenSegmentLeftDigit)); //Left Digit decoder
endmodule



module Q2(

//Meow Meow here

    );


endmodule
