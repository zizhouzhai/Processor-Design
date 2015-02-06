module regfile_testbench();

// create output wires
wire cb_data_o;
wire[7:0] rs_data_o;
wire[7:0] rt_data_o;

// create input regs
reg clk_i;
reg write_i;
reg write_CB_i;
reg cb_data_i;
reg [2:0] write_addr_i;
reg [7:0] write_data_i;
reg [2:0] rt_addr_i;
reg [2:0] rs_addr_i;

//instance of the regfile to test.
regfile test_regfile(
.clk_i			(clk_i),
.write_i			(write_i),
.write_CB_i		(write_CB_i),
.cb_data_i		(cb_data_i),
.write_addr_i	(write_addr_i),
.write_data_i	(write_data_i),
.rt_addr_i		(rt_addr_i),
.rs_addr_i		(rs_addr_i),
.cb_data_o		(cb_data_o),
.rs_data_o		(rs_data_o),
.rt_data_o		(rt_data_o)
);


//clock generation.
always
begin
	#5; 
	clk_i = 1'b1; 
	#5
	clk_i = 1'b0; 
end

initial 
	begin
	
	//REGISTER TESTS
	//test write.
	write_i = 1;
	write_addr_i = 0;
	write_data_i = 8'h00;
	#10
	write_i = 0;
	
	//test read from rt
	rt_addr_i = 0;
	#10
	$display("From addr: %h, just read: %h",rt_addr_i,rt_data_o);
	$display("Correct output: from addr: 0, just read 00"); 
	
	//test write again with diff addr.
	write_i = 1;
	write_addr_i = 1;
	write_data_i = 8'h11;
	#10
	write_i = 0;
	
	//test read from rs
	rs_addr_i = 1;
	#10
	$display("From addr: %h, just read: %h",rs_addr_i,rs_data_o);
	$display("Correct output: from addr: 1, just read 11"); 
	
	//test read and write then same time
	rs_addr_i = 0;
	write_i = 1;
	write_addr_i = 2;
	write_data_i = 8'h22;
	#10
	write_i = 0;
	$display("From addr: %h, just read: %h",rs_addr_i,rs_data_o);
	
	//read from 2 registers and write to 1 in same cycle.
	rs_addr_i = 1;
	rt_addr_i = 2;
	write_i = 1;
	write_addr_i = 3;
	write_data_i = 8'h33	;
	#10
	write_i = 0;
	$display("From addr: %h, just read: %h",rs_addr_i,rs_data_o);

	
	
	// CONDITION BIT TESTS
	//test the conditional bit. write to cb
	write_CB_i = 1;
	cb_data_i = 1;
	#10
	write_CB_i = 0;
	
	//read from conditional bit
	$display("Condition bit out is: %d", cb_data_o);
	
	//write cb to 0.
	write_CB_i = 1;
	cb_data_i = 10;
	#10
	write_CB_i = 0;
	
	//read from conditional bit
	$display("Condition bit out is: %d", cb_data_o);

	
	
	end
endmodule
