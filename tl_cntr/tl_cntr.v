module tl_cntr(La, Lb, clk, reset_n, Ta, Tb);	//traffic controller
	input clk, reset_n, Ta, Tb;
	output[1:0] La, Lb;
	
	wire[1:0] q, q_n;
	
	ns_logic U0_ns_logic(q_n, q, Ta, Tb);		//next state logic
	_register2_r_async U1_register2_r_async(q, clk, reset_n, q_n);		//register
	o_logic U2_o_logic(La, Lb, q);		//output logic

endmodule
