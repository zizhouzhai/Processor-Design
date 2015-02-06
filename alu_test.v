module alu_test;

reg [7:0]rs_i,rt_i;
reg [2:0] opcode_i;

wire [7:0] alu_result_o;
wire set_o;
wire zero;

alu u0(
	.rs_i(rs_i),
	.rt_i(rt_i),
	.opcode_i(opcode_i),
	.alu_result_o(alu_result_o),
	.zero(zero)
);

initial 
	begin

	rs_i = 8'b01010101;
	rt_i = 8'b10101010;
	opcode_i = 3'b000;
	#10
		$display("Result is %d", alu_result_o);
	

	rs_i = 8'b00001111;
	rt_i = 8'b11110000;
	opcode_i = 3'b001;
	#10
		$display("Result is %d", alu_result_o);


	rs_i = 8'b00000101;
	rt_i = 8'b00000010;
	opcode_i = 3'b010;
	#10
		$display("Result is %d", alu_result_o);


	rs_i = 8'b11111110;
	opcode_i = 3'b011;
	#10
		$display("Result is %d", alu_result_o);
	

	rs_i = 8'b11111101;
	rt_i = 8'b11111010;
	opcode_i = 3'b100;
	#10
		$display("Result is %d", alu_result_o);
	

	rs_i = 8'b00000001;
	rt_i = 8'b00000001;
	opcode_i = 3'b101;
	#10
		$display("Result is %d", set_o);
	

	rs_i = 8'b11111111;
	opcode_i = 3'b110;
	#10
		$display("Result is %d", alu_result_o);
	

	rs_i = 8'b11111111;
	rt_i = 8'b11111111;
	opcode_i = 3'b111;
	#10
		$display("Result is %d", zero);

	end
endmodule