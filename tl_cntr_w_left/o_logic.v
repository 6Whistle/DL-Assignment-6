module o_logic(La, Lb, q);		//output logic
	input[2:0] q;
	output[1:0] La, Lb;
	
	//La0 = q0 | q2
	_or2 U0_or2(La[0], q[0], q[2]);
	
	//La1 = q2 | ~q0 & q1
	_and2 U1_and2(w_La1, ~q[0], q[1]);
	_or2 U2_or2(La[1], w_La1, q[2]);
	
	//Lb0 = ~q0 | q2
	_or2 U3_or2(Lb[0], q[0], ~q[2]);
	
	//Lb1 = ~q2 | ~q0 & q1
	_and2 U4_and2(w_Lb1, ~q[0], q[1]);
	_or2 U5_or2(Lb[1], w_Lb1, ~q[2]);
	
endmodule 
