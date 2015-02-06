module regfile
  (input clk_i,
   input write_i,
	input write_CB_i,
	input cb_data_i,
	output cb_data_o,
   input [2:0] write_addr_i,
   input [7:0] write_data_i,
   input [2:0] rt_addr_i,
   output [7:0] rt_data_o,
   input [2:0] rs_addr_i,
   output [7:0] rs_data_o);

   reg [7:0] 	 regfile [7:0];
	reg	conditional_bit;

   assign rt_data_o = regfile[rt_addr_i];
   assign rs_data_o = regfile[rs_addr_i];
	assign cb_data_o = conditional_bit;

   always @(posedge clk_i) begin
	
		if (write_i) begin
			regfile[write_addr_i] <= write_data_i;
		end
		if (write_CB_i)begin
			conditional_bit <= cb_data_i;
		end
	end
endmodule