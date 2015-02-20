module mux_2to1(input[7:0] a,
					 input[7:0] b,
					 input sel,
					 output[7:0] out);
					 

			assign out = sel? a : b;		 
			
endmodule