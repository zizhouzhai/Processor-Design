module pc(
	input start_i,
	input [7:0] startadd_i,
	input branch_i,
	input [7:0] target_i,  //PC-relative address not absolute
	output [7:0] pc_o);

	reg [7:0] prgcount;

	assign  pc_o = (start_i) ? startadd_i : 
			  (branch_i) ? (pc_o + 1 + target_i):
			  (pc_o + 1);

endmodule