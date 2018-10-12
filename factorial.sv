`timescale 1 ns/ 1ps
//`include "factorial.sv"

module factorial_tb();
reg [31:0] m =0, n=0;
wire [31:0] fac;

initial begin
	$dumpfile("factorial.vcd");
	$dumpvars(1);
	$monitor ("@ time = %g,  m = %d, n = %d , factorial = %d", $time, m,n, fac_function(m,n));
end
initial begin
	#10 m = 10;
	#10 n = 10;
	#10 m = 12;
	#10 n = 15;
	#10 m = 20;
	#10 n = 20;
	#10 $finish;
end

//factorial fac (m,n);
endmodule


