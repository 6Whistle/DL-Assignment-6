module o_logic(La, Lb, q);		//output logic
	input[1:0] q;
	output[1:0] La, Lb;
	
	assign La[1] = q[1];		//La1's boolean
	
	_and2 U0_and2(La[0], q[0], ~q[1]);			//La[0] = q[0] & ~q[1];
	
	
	assign Lb[1] = ~q[1];	//Lb1's boolean
	
	_and2 U1_and2(Lb[0], q[0], q[1]);			//Lb[0] = q[0] & q[1];
	
endmodule 
