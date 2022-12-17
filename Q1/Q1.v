`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:34:42 12/16/2022 
// Design Name: 
// Module Name:    Q1 
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

////////////////////////////// SR LATCH //////////////////////////
module SR_LATCH(
		input S,
		input R,
		output Q,
		output Qn
	);

nor (Q,R,Qn); //using nor gates --> Q = R nor Qn
nor (Qn,Q,S); //using nor gates --> Qn = S nor Q
endmodule

////////////////////////////// D LATCH //////////////////////////
module D_LATCH(
	input D, E,
	output Q, Qn
	);
wire notD_E, D_E;
and (notD_E , ~D, E); // not D & E
and (D_E , D, E); // D & E
nor (Q, notD_E, Qn); // like SR LATCH
nor (Qn, Q, D_E); // like SR LATCH

endmodule

////////////////////////////// JK FF //////////////////////////
// using gates
module JK_FF(
		input J, K, clk,
		output Q, Qn
	);

wire K_Qn, J_Q;

and (K_Qn, K, Qn, clk);
and (J_Q, J, Q, clk);
nor(Q, K_Qn, Qn);
nor (Qn, Q, J_Q);
endmodule

/* IT's not gonna work. We need to describe sequential circuits like flip flops. */

module JK_FF2(
	input J, K, clk,
	output reg Q, Qn);

always @(posedge clk)
begin
	if (K == 1'b0 & J == 1'b0)
	begin
		Q <= Q;
		Qn <= Qn;
	end
	
	else if (K == 1'b1 & J == 1'b1)
	begin
		Q <= ~Q;
		Qn <= ~Qn;
	end
	
	else if (K == 1'b1 & J == 1'b0)
	begin
		Q <= 1'b0;
		Qn <= 1'b1;
	end
	
	else if (K == 1'b0 & J == 1'b1)
	begin
		Q <= 1'b1;
		Qn <= 1'b0;
	end
end
endmodule	

module Q1(
	// MEOW MEOW HERE
    );

endmodule
