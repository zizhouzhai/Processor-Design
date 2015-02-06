module pc_test();

reg start_i;
reg [7:0] startadd_i;
reg branchb_i;
reg branchf_i;
reg [7:0] target_i;
wire [7:0] pc_o;

pc u2(
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
		$display("\nTesting the start address:\n");
	#10
		$display("Current PC should be 00000000, PC is %h\n", pc_o);

	start_i = 0;
	branchf_i = 1;
	target_i = 8'b00101001;
		$display("\nTesting the branch forward:\n");
	#10
		$display("Current PC should be 00101010, PC is %h\n", pc_o);

	branchb_i = 1;
	branchf_i = 0;
	target_i = 8'b00000101;
		$display("\nTesting the start address:\n");
	#10
		$display("Current PC should be 00100110, PC is %h\n", pc_o);

	#20
		$display("\nTesting the regular next PC:\n");
		$display("Current PC should be ?????, PC is %h\n", pc_o);
	end


endmodule