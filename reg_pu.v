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
// CREATED		"Tue Mar 10 02:13:27 2015"

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
wire	[7:0] SYNTHESIZED_WIRE_69;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_70;
wire	SYNTHESIZED_WIRE_9;
wire	[7:0] SYNTHESIZED_WIRE_71;
wire	[7:0] SYNTHESIZED_WIRE_11;
wire	[2:0] SYNTHESIZED_WIRE_72;
wire	[2:0] SYNTHESIZED_WIRE_73;
wire	[2:0] SYNTHESIZED_WIRE_74;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	[2:0] SYNTHESIZED_WIRE_75;
wire	[2:0] SYNTHESIZED_WIRE_76;
wire	[2:0] SYNTHESIZED_WIRE_77;
wire	[7:0] SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	[3:0] SYNTHESIZED_WIRE_28;
wire	[4:0] SYNTHESIZED_WIRE_29;
wire	[7:0] SYNTHESIZED_WIRE_78;
wire	[7:0] SYNTHESIZED_WIRE_33;
wire	[2:0] SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	[2:0] SYNTHESIZED_WIRE_41;
wire	[2:0] SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	[7:0] SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_50;
wire	[7:0] SYNTHESIZED_WIRE_79;
wire	[7:0] SYNTHESIZED_WIRE_80;
wire	[4:0] SYNTHESIZED_WIRE_54;
wire	[3:0] SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_58;
wire	[7:0] SYNTHESIZED_WIRE_81;
wire	[7:0] SYNTHESIZED_WIRE_82;
wire	[7:0] SYNTHESIZED_WIRE_61;
wire	[1:0] SYNTHESIZED_WIRE_64;
wire	[7:0] SYNTHESIZED_WIRE_65;
wire	[1:0] SYNTHESIZED_WIRE_68;





pc	b2v_inst(
	.clock_i(clock_i),
	.start_i(start_i),
	.branchb_i(SYNTHESIZED_WIRE_0),
	.branchf_i(SYNTHESIZED_WIRE_1),
	.pc_i(SYNTHESIZED_WIRE_69),
	.startadd_i(start_addr_i),
	.target_i(SYNTHESIZED_WIRE_3),
	.pc_o(SYNTHESIZED_WIRE_69));


pipelineIFID	b2v_inst1(
	.clk(clock_i),
	.in_i(SYNTHESIZED_WIRE_4),
	.toggle_inst(SYNTHESIZED_WIRE_45),
	.out_o(SYNTHESIZED_WIRE_46));


instROM	b2v_inst11(
	.address_i(SYNTHESIZED_WIRE_69),
	.data_o(SYNTHESIZED_WIRE_4));


pipelineEMWB	b2v_inst13(
	.clk_i(clock_i),
	.regwrite_i(SYNTHESIZED_WIRE_6),
	.write_data_control_i(SYNTHESIZED_WIRE_7),
	.memread_i(SYNTHESIZED_WIRE_70),
	.done_i(SYNTHESIZED_WIRE_9),
	.alu_result_i(SYNTHESIZED_WIRE_71),
	.q_i(SYNTHESIZED_WIRE_11),
	.rs_addr_i(SYNTHESIZED_WIRE_72),
	.rt_addr_i(SYNTHESIZED_WIRE_73),
	.write_addr_i(SYNTHESIZED_WIRE_74),
	.regwrite_o(SYNTHESIZED_WIRE_15),
	.write_data_control_o(SYNTHESIZED_WIRE_58),
	.memread_o(SYNTHESIZED_WIRE_35),
	.done_o(done),
	.alu_result_o(SYNTHESIZED_WIRE_82),
	.q_o(SYNTHESIZED_WIRE_81),
	.rs_addr_o(SYNTHESIZED_WIRE_41),
	.rt_addr_o(SYNTHESIZED_WIRE_42),
	.write_addr_o(SYNTHESIZED_WIRE_77));


regfile	b2v_inst16(
	.clk_i(clock_i),
	.write_i(SYNTHESIZED_WIRE_15),
	.write_CB_i(SYNTHESIZED_WIRE_16),
	.cb_data_i(SYNTHESIZED_WIRE_17),
	.rs_addr_i(SYNTHESIZED_WIRE_75),
	.rt_addr_i(SYNTHESIZED_WIRE_76),
	.write_addr_i(SYNTHESIZED_WIRE_77),
	.write_data_i(SYNTHESIZED_WIRE_21),
	.cb_data_o(SYNTHESIZED_WIRE_44),
	.rs_data_o(SYNTHESIZED_WIRE_78),
	.rt_data_o(SYNTHESIZED_WIRE_33));


pipelineIDEM	b2v_inst18(
	.regwrite_i(SYNTHESIZED_WIRE_22),
	.write_data_control_i(SYNTHESIZED_WIRE_23),
	.CBwrite_i(SYNTHESIZED_WIRE_24),
	.memwrite_i(SYNTHESIZED_WIRE_25),
	.memread_i(SYNTHESIZED_WIRE_26),
	.clk_i(clock_i),
	.done_i(SYNTHESIZED_WIRE_27),
	.alucontrol_i(SYNTHESIZED_WIRE_28),
	.immediate_i(SYNTHESIZED_WIRE_29),
	.rs_addr_i(SYNTHESIZED_WIRE_75),
	.rs_data_i(SYNTHESIZED_WIRE_78),
	.rt_addr_i(SYNTHESIZED_WIRE_76),
	.rt_data_i(SYNTHESIZED_WIRE_33),
	.write_addr_i(SYNTHESIZED_WIRE_34),
	.regwrite_o(SYNTHESIZED_WIRE_6),
	.write_data_control_o(SYNTHESIZED_WIRE_7),
	.CBwrite_o(SYNTHESIZED_WIRE_16),
	.memwrite_o(SYNTHESIZED_WIRE_50),
	.memread_o(SYNTHESIZED_WIRE_70),
	.done_o(SYNTHESIZED_WIRE_9),
	.alucontrol_o(SYNTHESIZED_WIRE_55),
	.immediate_o(SYNTHESIZED_WIRE_54),
	.rs_addr_o(SYNTHESIZED_WIRE_72),
	.rs_data_o(SYNTHESIZED_WIRE_65),
	.rt_addr_o(SYNTHESIZED_WIRE_73),
	.rt_data_o(SYNTHESIZED_WIRE_61),
	.write_addr_o(SYNTHESIZED_WIRE_74));


forwarding_unit	b2v_inst19(
	.wb_memread_i(SYNTHESIZED_WIRE_35),
	.em_memread_i(SYNTHESIZED_WIRE_70),
	.em_rs_addr_i(SYNTHESIZED_WIRE_72),
	.em_rt_addr_i(SYNTHESIZED_WIRE_73),
	.em_write_addr_i(SYNTHESIZED_WIRE_74),
	.id_rs_addr_i(SYNTHESIZED_WIRE_75),
	.wb_rs_addr_i(SYNTHESIZED_WIRE_41),
	.wb_rt_addr_i(SYNTHESIZED_WIRE_42),
	.wb_write_addr_i(SYNTHESIZED_WIRE_77),
	.target_muxcontrol_o(SYNTHESIZED_WIRE_47),
	.rs_muxcontrol_o(SYNTHESIZED_WIRE_68),
	.rt_muxcontrol_o(SYNTHESIZED_WIRE_64));


control	b2v_inst3(
	.cb_i(SYNTHESIZED_WIRE_44),
	.toggle(SYNTHESIZED_WIRE_45),
	.instruction_i(SYNTHESIZED_WIRE_46),
	.regwrite_o(SYNTHESIZED_WIRE_22),
	.write_data_control_o(SYNTHESIZED_WIRE_23),
	.CBwrite_o(SYNTHESIZED_WIRE_24),
	.memwrite_o(SYNTHESIZED_WIRE_25),
	.memread_o(SYNTHESIZED_WIRE_26),
	.branchb_o(SYNTHESIZED_WIRE_0),
	.branchf_o(SYNTHESIZED_WIRE_1),
	.done_o(SYNTHESIZED_WIRE_27),
	
	.alucontrol_o(SYNTHESIZED_WIRE_28),
	.immediate_o(SYNTHESIZED_WIRE_29),
	.rs_addr_o(SYNTHESIZED_WIRE_75),
	.rt_addr_o(SYNTHESIZED_WIRE_76),
	.write_addr_o(SYNTHESIZED_WIRE_34));


mux_2to1	b2v_inst6(
	.sel(SYNTHESIZED_WIRE_47),
	.a(SYNTHESIZED_WIRE_71),
	.b(SYNTHESIZED_WIRE_78),
	.out_o(SYNTHESIZED_WIRE_3));


single_port_ram_with_init	b2v_inst7(
	.writemem(SYNTHESIZED_WIRE_50),
	.readmem(SYNTHESIZED_WIRE_70),
	.clk(clock_i),
	.addr(SYNTHESIZED_WIRE_79),
	.data(SYNTHESIZED_WIRE_80),
	.q(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst7.ADDR_WIDTH = 8;


alu	b2v_inst8(
	.immediate_i(SYNTHESIZED_WIRE_54),
	.opcode_i(SYNTHESIZED_WIRE_55),
	.rs_i(SYNTHESIZED_WIRE_80),
	.rt_i(SYNTHESIZED_WIRE_79),
	.zero(SYNTHESIZED_WIRE_17),
	.alu_result_o(SYNTHESIZED_WIRE_71));


mux_2to1	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_58),
	.a(SYNTHESIZED_WIRE_81),
	.b(SYNTHESIZED_WIRE_82),
	.out_o(SYNTHESIZED_WIRE_21));


mux_4to1	b2v_rt_mux(
	.a_i(SYNTHESIZED_WIRE_61),
	.b_i(SYNTHESIZED_WIRE_82),
	.c_i(SYNTHESIZED_WIRE_81),
	
	.sel(SYNTHESIZED_WIRE_64),
	.out_o(SYNTHESIZED_WIRE_79));


mux_4to1	b2v_rt_mux11(
	.a_i(SYNTHESIZED_WIRE_65),
	.b_i(SYNTHESIZED_WIRE_82),
	.c_i(SYNTHESIZED_WIRE_81),
	
	.sel(SYNTHESIZED_WIRE_68),
	.out_o(SYNTHESIZED_WIRE_80));


endmodule
