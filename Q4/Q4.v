`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:47 12/17/2022 
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
module Q4(
	input start,clk,
	input [3:0] NumberIn,
	output reg [7:0] Count,
	output reg overflow
    );
	 
initial begin
	overflow <= 1'b1;
end
 
//// OR part /////
wire or_result;
or (or_result, NumberIn[0], ~NumberIn[1], NumberIn[2], ~NumberIn[3]);

//// SUM ////
wire [8:0] add_value; // 9 bit --> 1 bit for cout
assign add_value = Count + {8'h0, or_result};

//// Bottom MUX ////
wire cout;
assign cout = add_value[8];
reg mux_out_b;
always @(start, overflow, cout)
begin
	case({start,overflow})
			2'b00 : mux_out_b = cout;
			2'b01 : mux_out_b = 1'b1;
			2'b10 : mux_out_b = 1'b0;
			2'b11 : mux_out_b = 1'b0;
	endcase
end

//// Up MUX ///
reg [7:0] mux_out_u;
always @(start,add_value[7:0])
begin
	case(start)
			1'b0 : mux_out_u = 8'b0000_0000;
			1'b1 : mux_out_u = add_value[7:0];
	endcase
end

//// D Flip Flops ////

always @(posedge clk)
begin
	Count <= mux_out_u;
end


always @(posedge clk)
begin
	overflow <= mux_out_b;
end

endmodule
