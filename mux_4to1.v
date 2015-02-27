module mux_4to1(input[1:0] sel,
					 input[7:0] a_i,
					 input[7:0] b_i,
					 input[7:0] c_i,
					 input[7:0] d_i,
					 output reg[7:0] out_o);
			

always @( * )
begin
   if( sel[1:0] == 0)
      out_o = a_i;

   if( sel[1:0] == 1)
      out_o = b_i;

   if( sel[1:0] == 2)
      out_o = c_i;

   if( sel[1:0] == 3)
      out_o = d_i;
end			
					 
endmodule