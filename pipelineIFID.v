module pipelineIFID(input[7:0] in_i,
						  input clk,
						  output reg[7:0] out_o,
						  output toggle_inst);
						
reg t;
assign toggle_inst=t;
initial begin
	t = 0;
end	
							
	always@(posedge clk)begin

		out_o <= in_i;
		t<= t? 0 : 1;
	
	end
								
endmodule