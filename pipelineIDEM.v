module pipelineIDEM(input [3:0] alucontrol_i,
					input regwrite_i,
					input write_data_control_i,
					input CBwrite_i,
					input [7:0] rt_data_i,
					input [7:0] rs_data_i,
					input [2:0] rs_addr_i,
					input [2:0] rt_addr_i,
					input [2:0] write_addr_i,
					input [4:0] immediate_i,
					input memwrite_i,
					input memread_i,
					input clk_i,
					output reg [3:0] alucontrol_o,
					output reg regwrite_o,
					output reg write_data_control_o,
					output reg CBwrite_o,
					output reg [7:0] rt_data_o,
					output reg [7:0] rs_data_o,
					output reg [2:0] rs_addr_o,
					output reg [2:0] rt_addr_o,
					output reg [2:0] write_addr_o,
					output reg [4:0] immediate_o,
					output reg memwrite_o,
					output reg memread_o);

always @(posedge clk_i)
begin
	alucontrol_o <= alucontrol_i;
	regwrite_o <= regwrite_i;
	write_data_control_o <= write_data_control_i;
	CBwrite_o <= CBwrite_i;
	rt_data_o <= rt_data_i;
	rs_data_o <= rs_data_i;
	rs_addr_o <= rs_addr_i;
	rt_addr_o <= rt_addr_i;
	write_addr_o <= write_addr_i;
	immediate_o <= immediate_i;
	memwrite_o <= memwrite_i;
	memread_o <= memread_i;
end								
endmodule