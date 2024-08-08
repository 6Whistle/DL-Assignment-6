module tl_cntr_w_left(La, Lb, clk, reset_n, Ta, Tal, Tb, Tbl);	//traffic controller with left
	input clk, reset_n, Ta, Tal, Tb, Tbl;
	output[1:0] La, Lb;
	
	wire[2:0] q, q_n;
	
	ns_logic U0_ns_logic(q_n, q, Ta, Tal, Tb, Tbl);		//next state logic
	_register3_r U1_register3_r(q, clk, reset_n, q_n);		//register
	o_logic U2_o_logic(La, Lb, q);		//output logic

endmodule
