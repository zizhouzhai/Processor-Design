module pipeline_testbench();

reg[7:0] pc;
reg clk1;
wire [7:0] pc_i;
	reg start_i;
	reg [7:0] startadd_i;
	wire branchb_i;
	wire branchf_i;
	wire [7:0] target_i;  //PC-relative address not absolute
	wire[7:0] pc1_o;
	
wire [7:0] data_o;
wire[7:0] lineout;
	
pc pc_module(.pc_i(pc),
				 .clock_i(clk1),
				 .start_i(start_i),
				 .startadd_i(startadd_i),
				 .branchb_i(branchb_i),
				 .branchf_i(branchf_i),
				 .target_i(target_i),
				 .pc_o(pc1_o)
				 );

instROM instROM_module(.address_i(pc1_o),
								.data_o(data_o));	


pipelineIFID linereg(.in_i(data_o),
							.clk(clk1),
							.out_o(lineout));

always
begin
	#150; 
	clk1 = 1'b1; 
	#150;
	clk1= 1'b0; 
end

initial begin

	$display("starting test");
	pc = 8'd0;
	start_i = 1;
	#300;
	start_i = 0;
	
end


endmodule