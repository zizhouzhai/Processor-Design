module CPU_test();

wire done; 

reg clock_i;
reg start_i;
reg [7:0] start_addr;
reg [14:0] dynamcount;

lab3 test_lab3(
.start_i	(start_i),
.start_addr	(start_addr),
.clock_i	(clock_i),
.done (done)
);

always
begin
	#200
	clock_i = 1'b1;
	dynamcount = dynamcount + 1;
	#200
	clock_i = 1'b0;	
end

initial
begin

	dynamcount = 0;
	$display("starting first");
	start_addr = 8'd0;
	start_i = 1;
	#400
	start_i = 0;
	wait(done == 1);
	
	$display("finished first");
	$stop;
	
	/*start_addr = 8'd93;
	start_i = 1;
	#5
	start_i = 0;
	wait(done == 1);
	

	start_addr = 8'd138;
	start_i = 1;
	#5
	start_i = 0;
	wait(done == 1);*/
	
	
end




endmodule
