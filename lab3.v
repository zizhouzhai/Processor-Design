// Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"
// CREATED		"Fri Feb 20 03:09:07 2015"

module lab3(
	clock_i,
	start_i,
	start_addr,
	done
);


input wire	clock_i;
input wire	start_i;
input wire	[7:0] start_addr;
output wire	done;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[2:0] SYNTHESIZED_WIRE_3;
wire	[2:0] SYNTHESIZED_WIRE_4;
wire	[2:0] SYNTHESIZED_WIRE_5;
wire	[7:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	[7:0] SYNTHESIZED_WIRE_8;
wire	[4:0] SYNTHESIZED_WIRE_9;
wire	[3:0] SYNTHESIZED_WIRE_10;
wire	[7:0] SYNTHESIZED_WIRE_25;
wire	[7:0] SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	[7:0] SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_22;
wire	[7:0] SYNTHESIZED_WIRE_23;
wire	[7:0] SYNTHESIZED_WIRE_24;





regfile	b2v_inst(
	.clk_i(clock_i),
	.write_i(SYNTHESIZED_WIRE_0),
	.write_CB_i(SYNTHESIZED_WIRE_1),
	.cb_data_i(SYNTHESIZED_WIRE_2),
	.rs_addr_i(SYNTHESIZED_WIRE_3),
	.rt_addr_i(SYNTHESIZED_WIRE_4),
	.write_addr_i(SYNTHESIZED_WIRE_5),
	.write_data_i(SYNTHESIZED_WIRE_6),
	.cb_data_o(SYNTHESIZED_WIRE_7),
	.rs_data_o(SYNTHESIZED_WIRE_25),
	.rt_data_o(SYNTHESIZED_WIRE_26));


control	b2v_inst2(
	.cb_i(SYNTHESIZED_WIRE_7),
	.instruction_i(SYNTHESIZED_WIRE_8),
	.regwrite_o(SYNTHESIZED_WIRE_0),
	.write_data_control_o(SYNTHESIZED_WIRE_22),
	.CBwrite_o(SYNTHESIZED_WIRE_1),
	.memwrite_o(SYNTHESIZED_WIRE_13),
	.memread_o(SYNTHESIZED_WIRE_14),
	.branchb_o(SYNTHESIZED_WIRE_18),
	.branchf_o(SYNTHESIZED_WIRE_19),
	.done_o(done),
	.alucontrol_o(SYNTHESIZED_WIRE_10),
	.immediate_o(SYNTHESIZED_WIRE_9),
	.rs_addr_o(SYNTHESIZED_WIRE_3),
	.rt_addr_o(SYNTHESIZED_WIRE_4),
	.write_addr_o(SYNTHESIZED_WIRE_5));


alu	b2v_inst3(
	.immediate_i(SYNTHESIZED_WIRE_9),
	.opcode_i(SYNTHESIZED_WIRE_10),
	.rs_i(SYNTHESIZED_WIRE_25),
	.rt_i(SYNTHESIZED_WIRE_26),
	.zero(SYNTHESIZED_WIRE_2),
	.alu_result_o(SYNTHESIZED_WIRE_24));


single_port_ram_with_init	b2v_inst4(
	.writemem(SYNTHESIZED_WIRE_13),
	.readmem(SYNTHESIZED_WIRE_14),
	.clk(clock_i),
	.addr(SYNTHESIZED_WIRE_26),
	.data(SYNTHESIZED_WIRE_25),
	.q(SYNTHESIZED_WIRE_23));
	defparam	b2v_inst4.ADDR_WIDTH = 8;


instROM	b2v_inst5(
	.address_i(SYNTHESIZED_WIRE_27),
	.data_o(SYNTHESIZED_WIRE_8));


pc	b2v_inst6(
	.clock_i(clock_i),
	.start_i(start_i),
	.branchb_i(SYNTHESIZED_WIRE_18),
	.branchf_i(SYNTHESIZED_WIRE_19),
	.pc_i(SYNTHESIZED_WIRE_27),
	.startadd_i(start_addr),
	.target_i(SYNTHESIZED_WIRE_25),
	.pc_o(SYNTHESIZED_WIRE_27));


mux_2to1	b2v_inst8(
	.sel(SYNTHESIZED_WIRE_22),
	.a(SYNTHESIZED_WIRE_23),
	.b(SYNTHESIZED_WIRE_24),
	.out(SYNTHESIZED_WIRE_6));


endmodule
