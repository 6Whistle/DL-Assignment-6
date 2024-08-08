module ns_logic(d, q, Ta, Tal, Tb, Tbl);		//next state logic
	input[2:0] q;
	input Ta, Tb, Tal, Tbl;
	output[2:0] d;
	
	
	
	//d0 = (~q2 & ~q1 ~q0 & ~Ta) | (~q2 & q1 & ~q0 & ~Tal) | (q2 & ~q1 & ~q0 & ~Tb) | (q2 & q1 & ~q0 & ~Tbl)
	_and4 U0_and4(w_d0_0, ~q[2], ~q[1], ~q[0], ~Ta);
	_and4 U1_and4(w_d0_1, ~q[2], q[1], ~q[0], ~Tal);
	_and4 U2_and4(w_d0_2, q[2], ~q[1], ~q[0], ~Tb);
	_and4 U3_and4(w_d0_3, q[2], q[1], ~q[0], ~Tbl);
	_or4 U4_or4(d[0], w_d0_0, w_d0_1, w_d0_2, w_d0_3);
	
	//d1 = q1 ^ q0
	_xor2 U5_xor2(d[1], q[1], q[0]);
	
	//d2 = ~q2 & q1 & q0 | q2 & ~q1 | q2 & q1 & ~q0
	_and3 U6_and3(w_d2_0, ~q[2], q[1], q[0]);
	_and2 U7_and2(w_d2_1, q[2], ~q[1]);
	_and3 U8_and3(w_d2_2, q[2], q[1], ~q[0]);
	_or3 U9_or3(d[2], w_d2_0, w_d2_1, w_d2_2);
	
	
endmodule 