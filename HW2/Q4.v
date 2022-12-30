`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:08 12/30/2022 
// Design Name: 
// Module Name:    Q4 
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
module Q4_A( //For ALEF
	input clk, reset, left, right, loadParallel, shiftIn,
	input [3:0] data,
	output reg shiftOut
    );
	 
reg [3:0] tmp;

always @(posedge clk)
begin
	if (reset)
		tmp <= 4'b0000;
		
	else if (loadParallel)
		tmp <= data;
		
	else if (left)
	begin
		shiftOut <= tmp[3];
		tmp <= {tmp[2:0] , shiftIn};
	end

	else if (right)
	begin
		shiftOut <= tmp[0];
		tmp <= {shiftIn, tmp[3:1]};
	end
end

endmodule
/////////////////////////////////////////////////////////////
module Q4_B( //For B
	input clk, reset, left, right, loadParallel, shiftIn,
	input [3:0] data,
	output reg shiftOut
    );
	 
reg [3:0] tmp;

always @(posedge clk)
begin
	if (reset)
		tmp <= 4'b0000;
		
	else if (loadParallel)
		tmp <= data;
		
	else if (right)
	begin
		shiftOut <= tmp[0];
		tmp <= {shiftIn, tmp[3:1]};
	end
		
	else if (left)
	begin
		shiftOut <= tmp[3];
		tmp <= {tmp[2:0] , shiftIn};
	end

end

endmodule
////////////////////////////////////////////////////////////////
module Q4_C ( //For JIM
	input clk, reset, left, right, loadParallel, shiftIn,
	input [3:0] data,
	output reg shiftOut
    );
	 
reg [3:0] tmp;

always @(posedge clk)
begin

	if (reset)
		tmp <= 4'b0000;
		
	else if (loadParallel)
		tmp <= data;
		
	else if (right && left)
		;
		
	else if (right)
	begin
		shiftOut <= tmp[0];
		tmp <= {shiftIn, tmp[3:1]};
	end
		
	else if (left)
	begin
		shiftOut <= tmp[3];
		tmp <= {tmp[2:0] , shiftIn};
	end

end

endmodule
