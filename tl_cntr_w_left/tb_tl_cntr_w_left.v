`timescale 1ns/100ps
module tb_tl_cntr_w_left;			//testbench of tl_cntr_w_left
	reg clk, reset, tb_Ta, tb_Tal, tb_Tb, tb_Tbl;
	wire[1:0] tb_La, tb_Lb;
	
	tl_cntr_w_left U0_tl_cntr_w_left(tb_La, tb_Lb, clk, reset, tb_Ta, tb_Tal, tb_Tb, tb_Tbl);
	
	
	always begin
		clk = 0;	#5;	clk = 1;	#5;
	end

	initial begin
		reset = 0; tb_Ta = 0; tb_Tal = 0; tb_Tb = 0; tb_Tbl = 0; #10;
		reset = 1;	#80;		//Ta = 01 -> 10, Tb = 00
		tb_Ta = 1; tb_Tal = 1; tb_Tb = 1; tb_Tbl = 1; #40;		//same
		tb_Ta = 0; tb_Tal = 1; tb_Tb = 1; tb_Tbl = 1; #40;
		tb_Ta = 0; tb_Tal = 0; tb_Tb = 1; tb_Tbl = 1; #40;
		tb_Ta = 0; tb_Tal = 0; tb_Tb = 0; tb_Tbl = 1; #40;
		tb_Ta = 0; tb_Tal = 1; tb_Tb = 1; tb_Tbl = 0; #80;
		tb_Ta = 1; tb_Tal = 0; tb_Tb = 0; tb_Tbl = 0; #120;
		
		$stop;
	
	end

endmodule
