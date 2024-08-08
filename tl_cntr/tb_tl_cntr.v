`timescale 1ns/100ps
module tb_tl_cntr;			//testbench of tl_cntr
	reg clk, reset, tb_Ta, tb_Tb;
	wire[1:0] tb_La, tb_Lb;
	
	tl_cntr U0_tl_cntr(tb_La, tb_Lb, clk, reset, tb_Ta, tb_Tb);
	
	
	always begin
		clk = 0;	#5;	clk = 1;	#5;
	end

	initial begin
		reset = 0; tb_Ta = 0; tb_Tb = 0; #10;
		reset = 1;	#80;		//rotate
		tb_Tb = 1;	#20;		//Ta = 10, Tb = 00
		tb_Ta = 1;	#20;		//same
		tb_Tb = 0;	#20;		//Ta = 10 -> 00, Tb = 00 -> 01 -> 10
		tb_Ta = 0;	#20;		//Ta = 00 -> 01 -> 10, Tb = 10 -> 00
		tb_Ta = 1;	#20;		//Ta = 10 -> 00, Tb = 00 -> 01 -> 10
		tb_Tb = 1;	#20;		//same
		tb_Ta = 0;	#20;		//Ta = 00 -> 01 -> 10, Tb = 10 -> 00
		$stop;
	
	end

endmodule
