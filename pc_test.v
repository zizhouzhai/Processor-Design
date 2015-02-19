module pc_test;

reg [7:0] pc_i;
reg start_i;
reg [7:0] startadd_i;
reg branchb_i;
reg branchf_i;
reg [7:0] target_i;
wire [7:0] pc_o;

pc u2(
	.pc_i(pc_i),
	.start_i(start_i),
	.startadd_i(startadd_i),
	.branchb_i(branchb_i),
	.branchf_i(branchf_i),
	.target_i(target_i),
	.pc_o(pc_o)
);

initial
	begin

	start_i = 1;
	startadd_i = 8'b00000000;
	branchf_i = 0;
	branchb_i = 0;
	pc_i = 8'b10111110;
	target_i = 0;
	#10
		$display("\nTesting the start address:\n");
		$display("Current PC should be 00000000, PC is %b\n", pc_o);

	pc_i = pc_o;
	start_i = 0;
	branchf_i = 1;
	target_i = 8'b00101001;
	#10
		$display("\nTesting the branch forward:\n");
		$display("Current PC should be 00101010, PC is %b\n", pc_o);

	pc_i = pc_o;
	branchb_i = 1;
	branchf_i = 0;
	target_i = 8'b00000101;
	#10
		$display("\nTesting the start address:\n");
		$display("Current PC should be 00100110, PC is %b\n", pc_o);

	pc_i = pc_o;
	branchb_i = 0;
	#10
		$display("\nTesting the regular next PC:\n");
		$display("Current PC should be 00100111, PC is %b\n", pc_o);
	
	pc_i = 8'b00000000;
	branchf_i = 1;
	target_i = 8'b11111110;
	#10
		$display("\nTesting branching to highest that pc can go:\n");
		$display("Current PC should be 11111111, PC is %b\n", pc_o);
	
	pc_i = 8'b11111110;
	branchb_i = 1;
	branchf_i = 0;
	target_i = 8'b11111111;
	#10
		$display("\nTesting branching back with highest target:\n");
		$display("Current PC should be 00000000, PC is %b\n", pc_o);
	end


endmodule