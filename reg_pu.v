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
// CREATED		"Tue Mar 03 01:48:44 2015"

module reg_pu(
	start_i,
	clock_i,
	start_addr_i,
	done
);


input wire	start_i;
input wire	clock_i;
input wire	[7:0] start_addr_i;
output wire	done;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[7:0] SYNTHESIZED_WIRE_62;
wire	[7:0] SYNTHESIZED_WIRE_63;
wire	SYNTHESIZED_WIRE_5;
wire	[2:0] SYNTHESIZED_WIRE_64;
wire	[2:0] SYNTHESIZED_WIRE_65;
wire	[2:0] SYNTHESIZED_WIRE_8;
wire	[2:0] SYNTHESIZED_WIRE_9;
wire	[2:0] SYNTHESIZED_WIRE_66;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	[3:0] SYNTHESIZED_WIRE_17;
wire	[4:0] SYNTHESIZED_WIRE_18;
wire	[2:0] SYNTHESIZED_WIRE_67;
wire	[2:0] SYNTHESIZED_WIRE_68;
wire	[7:0] SYNTHESIZED_WIRE_22;
wire	[2:0] SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_69;
wire	SYNTHESIZED_WIRE_27;
wire	[7:0] SYNTHESIZED_WIRE_28;
wire	[7:0] SYNTHESIZED_WIRE_29;
wire	[2:0] SYNTHESIZED_WIRE_32;
wire	[7:0] SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	[7:0] SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	[7:0] SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	[7:0] SYNTHESIZED_WIRE_70;
wire	[7:0] SYNTHESIZED_WIRE_71;
wire	[4:0] SYNTHESIZED_WIRE_47;
wire	[3:0] SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_51;
wire	[7:0] SYNTHESIZED_WIRE_72;
wire	[7:0] SYNTHESIZED_WIRE_73;
wire	[7:0] SYNTHESIZED_WIRE_54;
wire	[1:0] SYNTHESIZED_WIRE_57;
wire	[7:0] SYNTHESIZED_WIRE_58;
wire	[1:0] SYNTHESIZED_WIRE_61;





pc	b2v_inst(
	.clock_i(clock_i),
	.start_i(start_i),
	.branchb_i(SYNTHESIZED_WIRE_0),
	.branchf_i(SYNTHESIZED_WIRE_1),
	.pc_i(SYNTHESIZED_WIRE_62),
	.startadd_i(start_addr_i),
	.target_i(SYNTHESIZED_WIRE_63),
	.pc_o(SYNTHESIZED_WIRE_62));


ptestROM	b2v_inst1(
	.address_i(SYNTHESIZED_WIRE_62),
	.data_o(SYNTHESIZED_WIRE_33));


forwarding_unit	b2v_inst11(
	.wb_memread_i(SYNTHESIZED_WIRE_5),
	.em_rs_addr_i(SYNTHESIZED_WIRE_64),
	.em_rt_addr_i(SYNTHESIZED_WIRE_65),
	.wb_rs_addr_i(SYNTHESIZED_WIRE_8),
	.wb_rt_addr_i(SYNTHESIZED_WIRE_9),
	.wb_write_addr_i(SYNTHESIZED_WIRE_66),
	.rs_muxcontrol_o(SYNTHESIZED_WIRE_57),
	.rt_muxcontrol_o(SYNTHESIZED_WIRE_61));


pipelineIDEM	b2v_inst12(
	.regwrite_i(SYNTHESIZED_WIRE_11),
	.write_data_control_i(SYNTHESIZED_WIRE_12),
	.CBwrite_i(SYNTHESIZED_WIRE_13),
	.memwrite_i(SYNTHESIZED_WIRE_14),
	.memread_i(SYNTHESIZED_WIRE_15),
	.clk_i(clock_i),
	.done_i(SYNTHESIZED_WIRE_16),
	.alucontrol_i(SYNTHESIZED_WIRE_17),
	.immediate_i(SYNTHESIZED_WIRE_18),
	.rs_addr_i(SYNTHESIZED_WIRE_67),
	.rs_data_i(SYNTHESIZED_WIRE_63),
	.rt_addr_i(SYNTHESIZED_WIRE_68),
	.rt_data_i(SYNTHESIZED_WIRE_22),
	.write_addr_i(SYNTHESIZED_WIRE_23),
	.regwrite_o(SYNTHESIZED_WIRE_24),
	.write_data_control_o(SYNTHESIZED_WIRE_25),
	.CBwrite_o(SYNTHESIZED_WIRE_37),
	.memwrite_o(SYNTHESIZED_WIRE_43),
	.memread_o(SYNTHESIZED_WIRE_69),
	.done_o(SYNTHESIZED_WIRE_27),
	.alucontrol_o(SYNTHESIZED_WIRE_48),
	.immediate_o(SYNTHESIZED_WIRE_47),
	.rs_addr_o(SYNTHESIZED_WIRE_64),
	.rs_data_o(SYNTHESIZED_WIRE_58),
	.rt_addr_o(SYNTHESIZED_WIRE_65),
	.rt_data_o(SYNTHESIZED_WIRE_54),
	.write_addr_o(SYNTHESIZED_WIRE_32));


pipelineEMWB	b2v_inst13(
	.clk_i(clock_i),
	.regwrite_i(SYNTHESIZED_WIRE_24),
	.write_data_control_i(SYNTHESIZED_WIRE_25),
	.memread_i(SYNTHESIZED_WIRE_69),
	.done_i(SYNTHESIZED_WIRE_27),
	.alu_result_i(SYNTHESIZED_WIRE_28),
	.q_i(SYNTHESIZED_WIRE_29),
	.rs_addr_i(SYNTHESIZED_WIRE_64),
	.rt_addr_i(SYNTHESIZED_WIRE_65),
	.write_addr_i(SYNTHESIZED_WIRE_32),
	.regwrite_o(SYNTHESIZED_WIRE_36),
	.write_data_control_o(SYNTHESIZED_WIRE_51),
	.memread_o(SYNTHESIZED_WIRE_5),
	.done_o(done),
	.alu_result_o(SYNTHESIZED_WIRE_73),
	.q_o(SYNTHESIZED_WIRE_72),
	.rs_addr_o(SYNTHESIZED_WIRE_8),
	.rt_addr_o(SYNTHESIZED_WIRE_9),
	.write_addr_o(SYNTHESIZED_WIRE_66));


pipelineIFID	b2v_inst3(
	.clk(clock_i),
	.in_i(SYNTHESIZED_WIRE_33),
	.out_o(SYNTHESIZED_WIRE_35));


control	b2v_inst4(
	.cb_i(SYNTHESIZED_WIRE_34),
	.instruction_i(SYNTHESIZED_WIRE_35),
	.regwrite_o(SYNTHESIZED_WIRE_11),
	.write_data_control_o(SYNTHESIZED_WIRE_12),
	.CBwrite_o(SYNTHESIZED_WIRE_13),
	.memwrite_o(SYNTHESIZED_WIRE_14),
	.memread_o(SYNTHESIZED_WIRE_15),
	.branchb_o(SYNTHESIZED_WIRE_0),
	.branchf_o(SYNTHESIZED_WIRE_1),
	.done_o(SYNTHESIZED_WIRE_16),
	.alucontrol_o(SYNTHESIZED_WIRE_17),
	.immediate_o(SYNTHESIZED_WIRE_18),
	.rs_addr_o(SYNTHESIZED_WIRE_67),
	.rt_addr_o(SYNTHESIZED_WIRE_68),
	.write_addr_o(SYNTHESIZED_WIRE_23));


regfile	b2v_inst5(
	.clk_i(clock_i),
	.write_i(SYNTHESIZED_WIRE_36),
	.write_CB_i(SYNTHESIZED_WIRE_37),
	.cb_data_i(SYNTHESIZED_WIRE_38),
	.rs_addr_i(SYNTHESIZED_WIRE_68),
	.rt_addr_i(SYNTHESIZED_WIRE_67),
	.write_addr_i(SYNTHESIZED_WIRE_66),
	.write_data_i(SYNTHESIZED_WIRE_42),
	.cb_data_o(SYNTHESIZED_WIRE_34),
	.rs_data_o(SYNTHESIZED_WIRE_63),
	.rt_data_o(SYNTHESIZED_WIRE_22));


single_port_ram_with_init	b2v_inst7(
	.writemem(SYNTHESIZED_WIRE_43),
	.readmem(SYNTHESIZED_WIRE_69),
	.clk(clock_i),
	.addr(SYNTHESIZED_WIRE_70),
	.data(SYNTHESIZED_WIRE_71),
	.q(SYNTHESIZED_WIRE_29));
	defparam	b2v_inst7.ADDR_WIDTH = 8;


alu	b2v_inst8(
	.immediate_i(SYNTHESIZED_WIRE_47),
	.opcode_i(SYNTHESIZED_WIRE_48),
	.rs_i(SYNTHESIZED_WIRE_71),
	.rt_i(SYNTHESIZED_WIRE_70),
	.zero(SYNTHESIZED_WIRE_38),
	.alu_result_o(SYNTHESIZED_WIRE_28));


mux_2to1	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_51),
	.a(SYNTHESIZED_WIRE_72),
	.b(SYNTHESIZED_WIRE_73),
	.out(SYNTHESIZED_WIRE_42));


mux_4to1	b2v_rt_mux(
	.a_i(SYNTHESIZED_WIRE_54),
	.b_i(SYNTHESIZED_WIRE_73),
	.c_i(SYNTHESIZED_WIRE_72),
	
	.sel(SYNTHESIZED_WIRE_57),
	.out_o(SYNTHESIZED_WIRE_70));


mux_4to1	b2v_rt_mux11(
	.a_i(SYNTHESIZED_WIRE_58),
	.b_i(SYNTHESIZED_WIRE_73),
	.c_i(SYNTHESIZED_WIRE_72),
	
	.sel(SYNTHESIZED_WIRE_61),
	.out_o(SYNTHESIZED_WIRE_71));


endmodule
