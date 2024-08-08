module _register2_r_async(q, clk, reset_n, d);
	input clk, reset_n;
	input [1:0] d;
	output [1:0] q;
	
	_dff_r U0_dff_r(q[0], clk, reset_n, d[0]);		//first bit D FF
	_dff_r U1_dff_r(q[1], clk, reset_n, d[1]);
	
endmodule
