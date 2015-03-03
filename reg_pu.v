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
// CREATED		"Tue Mar 03 00:31:10 2015"

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
wire	[7:0] SYNTHESIZED_WIRE_58;
wire	[7:0] SYNTHESIZED_WIRE_59;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	[7:0] SYNTHESIZED_WIRE_7;
wire	[7:0] SYNTHESIZED_WIRE_8;
wire	[2:0] SYNTHESIZED_WIRE_60;
wire	[2:0] SYNTHESIZED_WIRE_61;
wire	[2:0] SYNTHESIZED_WIRE_11;
wire	[2:0] SYNTHESIZED_WIRE_14;
wire	[2:0] SYNTHESIZED_WIRE_15;
wire	[2:0] SYNTHESIZED_WIRE_62;
wire	[7:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	[7:0] SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	[2:0] SYNTHESIZED_WIRE_63;
wire	[2:0] SYNTHESIZED_WIRE_64;
wire	[7:0] SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	[3:0] SYNTHESIZED_WIRE_32;
wire	[4:0] SYNTHESIZED_WIRE_33;
wire	[7:0] SYNTHESIZED_WIRE_37;
wire	[2:0] SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	[7:0] SYNTHESIZED_WIRE_65;
wire	[7:0] SYNTHESIZED_WIRE_66;
wire	[4:0] SYNTHESIZED_WIRE_43;
wire	[3:0] SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_47;
wire	[7:0] SYNTHESIZED_WIRE_67;
wire	[7:0] SYNTHESIZED_WIRE_68;
wire	[7:0] SYNTHESIZED_WIRE_50;
wire	[1:0] SYNTHESIZED_WIRE_53;
wire	[7:0] SYNTHESIZED_WIRE_54;
wire	[1:0] SYNTHESIZED_WIRE_57;





pc	b2v_inst(
	.clock_i(clock_i),
	.start_i(start_i),
	.branchb_i(SYNTHESIZED_WIRE_0),
	.branchf_i(SYNTHESIZED_WIRE_1),
	.pc_i(SYNTHESIZED_WIRE_58),
	.startadd_i(start_addr_i),
	.target_i(SYNTHESIZED_WIRE_59),
	.pc_o(SYNTHESIZED_WIRE_58));


ptestROM	b2v_inst1(
	.address_i(SYNTHESIZED_WIRE_58),
	.data_o(SYNTHESIZED_WIRE_17));


pipelineEMWB	b2v_inst14(
	.clk_i(clock_i),
	.regwrite_i(SYNTHESIZED_WIRE_5),
	.write_data_control_i(SYNTHESIZED_WIRE_6),
	.alu_result_i(SYNTHESIZED_WIRE_7),
	.q_i(SYNTHESIZED_WIRE_8),
	.rs_addr_i(SYNTHESIZED_WIRE_60),
	.rt_addr_i(SYNTHESIZED_WIRE_61),
	.write_addr_i(SYNTHESIZED_WIRE_11),
	.regwrite_o(SYNTHESIZED_WIRE_20),
	.write_data_control_o(SYNTHESIZED_WIRE_47),
	.alu_result_o(SYNTHESIZED_WIRE_68),
	.q_o(SYNTHESIZED_WIRE_67),
	.rs_addr_o(SYNTHESIZED_WIRE_14),
	.rt_addr_o(SYNTHESIZED_WIRE_15),
	.write_addr_o(SYNTHESIZED_WIRE_62));


forwarding_unit	b2v_inst2(
	.em_rs_addr_i(SYNTHESIZED_WIRE_60),
	.em_rt_addr_i(SYNTHESIZED_WIRE_61),
	.wb_rs_addr_i(SYNTHESIZED_WIRE_14),
	.wb_rt_addr_i(SYNTHESIZED_WIRE_15),
	.wb_write_addr_i(SYNTHESIZED_WIRE_62),
	.rs_muxcontrol_o(SYNTHESIZED_WIRE_53),
	.rt_muxcontrol_o(SYNTHESIZED_WIRE_57));


pipelineIFID	b2v_inst3(
	.clk(clock_i),
	.in_i(SYNTHESIZED_WIRE_17),
	.out_o(SYNTHESIZED_WIRE_19));


control	b2v_inst4(
	.cb_i(SYNTHESIZED_WIRE_18),
	.instruction_i(SYNTHESIZED_WIRE_19),
	.regwrite_o(SYNTHESIZED_WIRE_27),
	.write_data_control_o(SYNTHESIZED_WIRE_28),
	.CBwrite_o(SYNTHESIZED_WIRE_29),
	.memwrite_o(SYNTHESIZED_WIRE_30),
	.memread_o(SYNTHESIZED_WIRE_31),
	.branchb_o(SYNTHESIZED_WIRE_0),
	.branchf_o(SYNTHESIZED_WIRE_1),
	.done_o(done),
	.alucontrol_o(SYNTHESIZED_WIRE_32),
	.immediate_o(SYNTHESIZED_WIRE_33),
	.rs_addr_o(SYNTHESIZED_WIRE_64),
	.rt_addr_o(SYNTHESIZED_WIRE_63),
	.write_addr_o(SYNTHESIZED_WIRE_38));


regfile	b2v_inst5(
	.clk_i(clock_i),
	.write_i(SYNTHESIZED_WIRE_20),
	.write_CB_i(SYNTHESIZED_WIRE_21),
	.cb_data_i(SYNTHESIZED_WIRE_22),
	.rs_addr_i(SYNTHESIZED_WIRE_63),
	.rt_addr_i(SYNTHESIZED_WIRE_64),
	.write_addr_i(SYNTHESIZED_WIRE_62),
	.write_data_i(SYNTHESIZED_WIRE_26),
	.cb_data_o(SYNTHESIZED_WIRE_18),
	.rs_data_o(SYNTHESIZED_WIRE_59),
	.rt_data_o(SYNTHESIZED_WIRE_37));


pipelineIDEM	b2v_inst6(
	.regwrite_i(SYNTHESIZED_WIRE_27),
	.write_data_control_i(SYNTHESIZED_WIRE_28),
	.CBwrite_i(SYNTHESIZED_WIRE_29),
	.memwrite_i(SYNTHESIZED_WIRE_30),
	.memread_i(SYNTHESIZED_WIRE_31),
	.clk_i(clock_i),
	.alucontrol_i(SYNTHESIZED_WIRE_32),
	.immediate_i(SYNTHESIZED_WIRE_33),
	.rs_addr_i(SYNTHESIZED_WIRE_64),
	.rs_data_i(SYNTHESIZED_WIRE_59),
	.rt_addr_i(SYNTHESIZED_WIRE_63),
	.rt_data_i(SYNTHESIZED_WIRE_37),
	.write_addr_i(SYNTHESIZED_WIRE_38),
	.regwrite_o(SYNTHESIZED_WIRE_5),
	.write_data_control_o(SYNTHESIZED_WIRE_6),
	.CBwrite_o(SYNTHESIZED_WIRE_21),
	.memwrite_o(SYNTHESIZED_WIRE_39),
	.memread_o(SYNTHESIZED_WIRE_40),
	.alucontrol_o(SYNTHESIZED_WIRE_44),
	.immediate_o(SYNTHESIZED_WIRE_43),
	.rs_addr_o(SYNTHESIZED_WIRE_60),
	.rs_data_o(SYNTHESIZED_WIRE_54),
	.rt_addr_o(SYNTHESIZED_WIRE_61),
	.rt_data_o(SYNTHESIZED_WIRE_50),
	.write_addr_o(SYNTHESIZED_WIRE_11));


single_port_ram_with_init	b2v_inst7(
	.writemem(SYNTHESIZED_WIRE_39),
	.readmem(SYNTHESIZED_WIRE_40),
	.clk(clock_i),
	.addr(SYNTHESIZED_WIRE_65),
	.data(SYNTHESIZED_WIRE_66),
	.q(SYNTHESIZED_WIRE_8));
	defparam	b2v_inst7.ADDR_WIDTH = 8;


alu	b2v_inst8(
	.immediate_i(SYNTHESIZED_WIRE_43),
	.opcode_i(SYNTHESIZED_WIRE_44),
	.rs_i(SYNTHESIZED_WIRE_66),
	.rt_i(SYNTHESIZED_WIRE_65),
	.zero(SYNTHESIZED_WIRE_22),
	.alu_result_o(SYNTHESIZED_WIRE_7));


mux_2to1	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_47),
	.a(SYNTHESIZED_WIRE_67),
	.b(SYNTHESIZED_WIRE_68),
	.out(SYNTHESIZED_WIRE_26));


mux_4to1	b2v_rt_mux(
	.a_i(SYNTHESIZED_WIRE_50),
	.b_i(SYNTHESIZED_WIRE_68),
	.c_i(SYNTHESIZED_WIRE_67),
	
	.sel(SYNTHESIZED_WIRE_53),
	.out_o(SYNTHESIZED_WIRE_65));


mux_4to1	b2v_rt_mux11(
	.a_i(SYNTHESIZED_WIRE_54),
	.b_i(SYNTHESIZED_WIRE_68),
	.c_i(SYNTHESIZED_WIRE_67),
	
	.sel(SYNTHESIZED_WIRE_57),
	.out_o(SYNTHESIZED_WIRE_66));


endmodule
