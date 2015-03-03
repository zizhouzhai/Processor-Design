module pipelineEMWB(input clk_i,
					input regwrite_i,
					input write_data_control_i,
					input [7:0] alu_result_i,
					input [2:0] write_addr_i,
					input [7:0] q_i,
					input [2:0] rs_addr_i,
					input [2:0] rt_addr_i,
					output reg regwrite_o,
					output reg write_data_control_o,
					output reg [7:0] alu_result_o,
					output reg [2:0] write_addr_o,
					output reg [7:0] q_o,
					output reg [2:0] rs_addr_o,
					output reg [2:0] rt_addr_o);
								
								
always @(posedge clk_i)
begin
	regwrite_o <= regwrite_i;
	write_data_control_o <= write_data_control_i;
	alu_result_o <= alu_result_i;
	rs_addr_o <= rs_addr_i;
	rt_addr_o <= rt_addr_i;
	write_addr_o <= write_addr_i;
	q_o <= q_i;
end					
								
endmodule