module ns_logic(d, q, Ta, Tb);		//next state logic
	input[1:0] q;
	input Ta, Tb;
	output[1:0] d;
	
	_xor2 U0_xor2(d[1], q[1], q[0]);		//d[1] = q[1] ^ q[0];
	
	_and3 U1_and3(w0, ~q[1], ~q[0], ~Ta);	//d[0] = (~q[1] & ~q[0] & ~Ta) | (q[1] & ~q[0] & ~Tb);
	_and3 U2_and3(w1, q[1], ~q[0], ~Tb);	
	_or2 U3_or2(d[0], w0, w1);
	
endmodule 