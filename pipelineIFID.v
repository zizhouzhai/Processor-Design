module pipelineIFID(input[7:0] in_i,
						  input clk,
						  output reg[7:0] out_o);
								
	always@(posedge clk)begin

		out_o <= in_i;
	
	end
								
endmodule