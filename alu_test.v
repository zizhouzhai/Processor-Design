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

	//test and
	rs_i = 8'b01010101;
	rt_i = 8'b10101010;
	opcode_i = 3'b000;
	#10
		$display("Testing AND. Result is %d. Correct: 1", alu_result_o);
	
	//test and
	rs_i = 8'b11111111;
	rt_i = 8'b10101010;
	opcode_i = 3'b000;
	#10
		$display("Testing AND. Result is %b. Correct: 10101010", alu_result_o);
	
	//test add
	rs_i = 8'b00001111;
	rt_i = 8'b11110000;
	opcode_i = 3'b001;
	#10
		$display("Testing ADD. Result is %d, Correct: 255", alu_result_o);

	//test add
	rs_i = 8'd20;
	rt_i = 8'd100;
	opcode_i = 3'b001;
	#10
		$display("Testing ADD. Result is %d, Correct: 120",alu_result_o);
		
	//test sll
	rs_i = 8'b00000101;
	rt_i = 8'b00000010;
	opcode_i = 3'b010;
	#10
		$display("Testing SLL. Result is %d, Correct: 20", alu_result_o);

	//test sll
	rs_i = 8'b00000101;
	rt_i = 8'b11111111;
	opcode_i = 3'b010;
	#10
		$display("Testing SLL. Result is %d, Correct: 0", alu_result_o);

	//test srl
	rs_i = 8'b11111110;
	opcode_i = 3'b011;
	#10
		$display("Testing SRL. Result is %d. Correct: 127", alu_result_o);
	
	//test sub
	rs_i = 8'b11111101; //253
	rt_i = 8'b11111010; //250
	opcode_i = 3'b100;
	#10
		$display("Testing SUB. Result is %d. Correct: 3", alu_result_o);
	
	//test sub
	rs_i = 8'b11101100; //-20
	rt_i = 8'b00000100; //4
	opcode_i = 3'b100;
	#10
		$display("Testing SUB. Result is %d. Correct: -24", $signed(alu_result_o));
		
	//test set less than
	rs_i = 8'b00000001;
	rt_i = 8'b00000001;
	opcode_i = 3'b101;
	#10
		$display("Testing SLL. Result is %d. Correct: 0", zero);
	
	//test abosolute
	rs_i = 8'b11111111;
	opcode_i = 3'b110;
	#10
		$display("Testing ABSOLUTE.Result is %d. Correct: 1", alu_result_o);
	
	//test set equals.
	rs_i = 8'b11111111;
	rt_i = 8'b11111111;
	opcode_i = 3'b111;
	#10
		$display("Testing set equals. Result is %d. Correct: 1", zero);

	end
endmodule