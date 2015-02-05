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
		$display("Current instruction is %d", data_o);
	#5
	address_i = 7'b0000010;
		$display("Current instruction is %d", data_o);
	#5
	address_i = 7'b0000011;
		$display("Current instruction is %d", data_o);
	#5
	address_i = 7'b0000100;
		$display("Current instruction is %d", data_o);
	#5
	address_i = 7'b0000101;
		$display("Current instruction is %d", data_o);
	#5
	address_i = 7'b0000110;
		$display("Current instruction is %d", data_o);
	#5
	address_i = 7'b0000111;
		$display("Current instruction is %d", data_o);
	#5
	address_i = 7'b0001000;
		$display("Current instruction is %d", data_o);
	#5
	address_i = 7'b0001001;
		$display("Current instruction is %d", data_o);
	

	end
endmodule