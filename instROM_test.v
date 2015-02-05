module instROM_test();

reg [6:0] address_i;
wire [7:0] data_o;

instROM u1(
	.address_i(address_i),
	.data_o(data_o)
);
initial
	begin

	address_i = 7'b0000001;
	#5
		$display("Current address is %h,instruction is %d",address_i, data_o);
	address_i = 7'b0000010;
	#5
		$display("Current address is %h,instruction is %d",address_i, data_o);
	address_i = 7'b0000011;
	#5
		$display("Current address is %h,instruction is %d",address_i, data_o);
	address_i = 7'b0000100;
	#5
		$display("Current address is %h,instruction is %d",address_i, data_o);
	address_i = 7'b0000101;
	#5
		$display("Current address is %h,instruction is %d",address_i, data_o);
	address_i = 7'b0000110;
	#5
		$display("Current address is %h,instruction is %d",address_i, data_o);
	address_i = 7'b0000111;
	#5
		$display("Current address is %h,instruction is %d",address_i, data_o);
	address_i = 7'b0001000;
	#5
		$display("Current address is %h,instruction is %d",address_i, data_o);
	address_i = 7'b0001001;
	#5
		$display("Current address is %h,instruction is %d",address_i, data_o);

	end
endmodule