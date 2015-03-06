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
// CREATED		"Fri Mar 06 00:26:14 2015"

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
wire	[7:0] SYNTHESIZED_WIRE_68;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_69;
wire	SYNTHESIZED_WIRE_8;
wire	[7:0] SYNTHESIZED_WIRE_70;
wire	[7:0] SYNTHESIZED_WIRE_10;
wire	[2:0] SYNTHESIZED_WIRE_71;
wire	[2:0] SYNTHESIZED_WIRE_72;
wire	[2:0] SYNTHESIZED_WIRE_73;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	[2:0] SYNTHESIZED_WIRE_74;
wire	[2:0] SYNTHESIZED_WIRE_75;
wire	[2:0] SYNTHESIZED_WIRE_76;
wire	[7:0] SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	[7:0] SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	[3:0] SYNTHESIZED_WIRE_29;
wire	[4:0] SYNTHESIZED_WIRE_30;
wire	[7:0] SYNTHESIZED_WIRE_77;
wire	[7:0] SYNTHESIZED_WIRE_34;
wire	[2:0] SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	[2:0] SYNTHESIZED_WIRE_42;
wire	[2:0] SYNTHESIZED_WIRE_43;
wire	[7:0] SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_49;
wire	[7:0] SYNTHESIZED_WIRE_78;
wire	[7:0] SYNTHESIZED_WIRE_79;
wire	[4:0] SYNTHESIZED_WIRE_53;
wire	[3:0] SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_57;
wire	[7:0] SYNTHESIZED_WIRE_80;
wire	[7:0] SYNTHESIZED_WIRE_81;
wire	[7:0] SYNTHESIZED_WIRE_60;
wire	[1:0] SYNTHESIZED_WIRE_63;
wire	[7:0] SYNTHESIZED_WIRE_64;
wire	[1:0] SYNTHESIZED_WIRE_67;





pc	b2v_inst(
	.clock_i(clock_i),
	.start_i(start_i),
	.branchb_i(SYNTHESIZED_WIRE_0),
	.branchf_i(SYNTHESIZED_WIRE_1),
	.pc_i(SYNTHESIZED_WIRE_68),
	.startadd_i(start_addr_i),
	.target_i(SYNTHESIZED_WIRE_3),
	.pc_o(SYNTHESIZED_WIRE_68));


ptestROM	b2v_inst1(
	.address_i(SYNTHESIZED_WIRE_68),
	.data_o(SYNTHESIZED_WIRE_45));


pipelineEMWB	b2v_inst13(
	.clk_i(clock_i),
	.regwrite_i(SYNTHESIZED_WIRE_5),
	.write_data_control_i(SYNTHESIZED_WIRE_6),
	.memread_i(SYNTHESIZED_WIRE_69),
	.done_i(SYNTHESIZED_WIRE_8),
	.alu_result_i(SYNTHESIZED_WIRE_70),
	.q_i(SYNTHESIZED_WIRE_10),
	.rs_addr_i(SYNTHESIZED_WIRE_71),
	.rt_addr_i(SYNTHESIZED_WIRE_72),
	.write_addr_i(SYNTHESIZED_WIRE_73),
	.regwrite_o(SYNTHESIZED_WIRE_14),
	.write_data_control_o(SYNTHESIZED_WIRE_57),
	.memread_o(SYNTHESIZED_WIRE_36),
	.done_o(done),
	.alu_result_o(SYNTHESIZED_WIRE_81),
	.q_o(SYNTHESIZED_WIRE_80),
	.rs_addr_o(SYNTHESIZED_WIRE_42),
	.rt_addr_o(SYNTHESIZED_WIRE_43),
	.write_addr_o(SYNTHESIZED_WIRE_76));


regfile	b2v_inst16(
	.clk_i(clock_i),
	.write_i(SYNTHESIZED_WIRE_14),
	.write_CB_i(SYNTHESIZED_WIRE_15),
	.cb_data_i(SYNTHESIZED_WIRE_16),
	.rs_addr_i(SYNTHESIZED_WIRE_74),
	.rt_addr_i(SYNTHESIZED_WIRE_75),
	.write_addr_i(SYNTHESIZED_WIRE_76),
	.write_data_i(SYNTHESIZED_WIRE_20),
	.cb_data_o(SYNTHESIZED_WIRE_21),
	.rs_data_o(SYNTHESIZED_WIRE_77),
	.rt_data_o(SYNTHESIZED_WIRE_34));


control	b2v_inst17(
	.cb_i(SYNTHESIZED_WIRE_21),
	.instruction_i(SYNTHESIZED_WIRE_22),
	.regwrite_o(SYNTHESIZED_WIRE_23),
	.write_data_control_o(SYNTHESIZED_WIRE_24),
	.CBwrite_o(SYNTHESIZED_WIRE_25),
	.memwrite_o(SYNTHESIZED_WIRE_26),
	.memread_o(SYNTHESIZED_WIRE_27),
	.branchb_o(SYNTHESIZED_WIRE_0),
	.branchf_o(SYNTHESIZED_WIRE_1),
	.done_o(SYNTHESIZED_WIRE_28),
	.alucontrol_o(SYNTHESIZED_WIRE_29),
	.immediate_o(SYNTHESIZED_WIRE_30),
	.rs_addr_o(SYNTHESIZED_WIRE_74),
	.rt_addr_o(SYNTHESIZED_WIRE_75),
	.write_addr_o(SYNTHESIZED_WIRE_35));


pipelineIDEM	b2v_inst18(
	.regwrite_i(SYNTHESIZED_WIRE_23),
	.write_data_control_i(SYNTHESIZED_WIRE_24),
	.CBwrite_i(SYNTHESIZED_WIRE_25),
	.memwrite_i(SYNTHESIZED_WIRE_26),
	.memread_i(SYNTHESIZED_WIRE_27),
	.clk_i(clock_i),
	.done_i(SYNTHESIZED_WIRE_28),
	.alucontrol_i(SYNTHESIZED_WIRE_29),
	.immediate_i(SYNTHESIZED_WIRE_30),
	.rs_addr_i(SYNTHESIZED_WIRE_74),
	.rs_data_i(SYNTHESIZED_WIRE_77),
	.rt_addr_i(SYNTHESIZED_WIRE_75),
	.rt_data_i(SYNTHESIZED_WIRE_34),
	.write_addr_i(SYNTHESIZED_WIRE_35),
	.regwrite_o(SYNTHESIZED_WIRE_5),
	.write_data_control_o(SYNTHESIZED_WIRE_6),
	.CBwrite_o(SYNTHESIZED_WIRE_15),
	.memwrite_o(SYNTHESIZED_WIRE_49),
	.memread_o(SYNTHESIZED_WIRE_69),
	.done_o(SYNTHESIZED_WIRE_8),
	.alucontrol_o(SYNTHESIZED_WIRE_54),
	.immediate_o(SYNTHESIZED_WIRE_53),
	.rs_addr_o(SYNTHESIZED_WIRE_71),
	.rs_data_o(SYNTHESIZED_WIRE_64),
	.rt_addr_o(SYNTHESIZED_WIRE_72),
	.rt_data_o(SYNTHESIZED_WIRE_60),
	.write_addr_o(SYNTHESIZED_WIRE_73));


forwarding_unit	b2v_inst19(
	.wb_memread_i(SYNTHESIZED_WIRE_36),
	.em_memread_i(SYNTHESIZED_WIRE_69),
	.em_rs_addr_i(SYNTHESIZED_WIRE_71),
	.em_rt_addr_i(SYNTHESIZED_WIRE_72),
	.em_write_addr_i(SYNTHESIZED_WIRE_73),
	.id_rs_addr_i(SYNTHESIZED_WIRE_74),
	.wb_rs_addr_i(SYNTHESIZED_WIRE_42),
	.wb_rt_addr_i(SYNTHESIZED_WIRE_43),
	.wb_write_addr_i(SYNTHESIZED_WIRE_76),
	.target_muxcontrol_o(SYNTHESIZED_WIRE_46),
	.rs_muxcontrol_o(SYNTHESIZED_WIRE_67),
	.rt_muxcontrol_o(SYNTHESIZED_WIRE_63));


pipelineIFID	b2v_inst3(
	.clk(clock_i),
	.in_i(SYNTHESIZED_WIRE_45),
	.out_o(SYNTHESIZED_WIRE_22));


mux_2to1	b2v_inst6(
	.sel(SYNTHESIZED_WIRE_46),
	.a(SYNTHESIZED_WIRE_70),
	.b(SYNTHESIZED_WIRE_77),
	.out_o(SYNTHESIZED_WIRE_3));


single_port_ram_with_init	b2v_inst7(
	.writemem(SYNTHESIZED_WIRE_49),
	.readmem(SYNTHESIZED_WIRE_69),
	.clk(clock_i),
	.addr(SYNTHESIZED_WIRE_78),
	.data(SYNTHESIZED_WIRE_79),
	.q(SYNTHESIZED_WIRE_10));
	defparam	b2v_inst7.ADDR_WIDTH = 8;


alu	b2v_inst8(
	.immediate_i(SYNTHESIZED_WIRE_53),
	.opcode_i(SYNTHESIZED_WIRE_54),
	.rs_i(SYNTHESIZED_WIRE_79),
	.rt_i(SYNTHESIZED_WIRE_78),
	.zero(SYNTHESIZED_WIRE_16),
	.alu_result_o(SYNTHESIZED_WIRE_70));


mux_2to1	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_57),
	.a(SYNTHESIZED_WIRE_80),
	.b(SYNTHESIZED_WIRE_81),
	.out_o(SYNTHESIZED_WIRE_20));


mux_4to1	b2v_rt_mux(
	.a_i(SYNTHESIZED_WIRE_60),
	.b_i(SYNTHESIZED_WIRE_81),
	.c_i(SYNTHESIZED_WIRE_80),
	
	.sel(SYNTHESIZED_WIRE_63),
	.out_o(SYNTHESIZED_WIRE_78));


mux_4to1	b2v_rt_mux11(
	.a_i(SYNTHESIZED_WIRE_64),
	.b_i(SYNTHESIZED_WIRE_81),
	.c_i(SYNTHESIZED_WIRE_80),
	
	.sel(SYNTHESIZED_WIRE_67),
	.out_o(SYNTHESIZED_WIRE_79));


endmodule
