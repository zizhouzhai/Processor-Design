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
// CREATED		"Tue Mar 03 03:04:13 2015"

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
wire	[7:0] SYNTHESIZED_WIRE_63;
wire	[7:0] SYNTHESIZED_WIRE_64;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	[3:0] SYNTHESIZED_WIRE_11;
wire	[4:0] SYNTHESIZED_WIRE_12;
wire	[2:0] SYNTHESIZED_WIRE_65;
wire	[2:0] SYNTHESIZED_WIRE_66;
wire	[7:0] SYNTHESIZED_WIRE_16;
wire	[2:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_67;
wire	SYNTHESIZED_WIRE_21;
wire	[7:0] SYNTHESIZED_WIRE_22;
wire	[7:0] SYNTHESIZED_WIRE_23;
wire	[2:0] SYNTHESIZED_WIRE_68;
wire	[2:0] SYNTHESIZED_WIRE_69;
wire	[2:0] SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	[2:0] SYNTHESIZED_WIRE_31;
wire	[2:0] SYNTHESIZED_WIRE_32;
wire	[2:0] SYNTHESIZED_WIRE_70;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	[7:0] SYNTHESIZED_WIRE_40;
wire	[7:0] SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	[7:0] SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	[7:0] SYNTHESIZED_WIRE_71;
wire	[7:0] SYNTHESIZED_WIRE_72;
wire	[4:0] SYNTHESIZED_WIRE_48;
wire	[3:0] SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_52;
wire	[7:0] SYNTHESIZED_WIRE_73;
wire	[7:0] SYNTHESIZED_WIRE_74;
wire	[7:0] SYNTHESIZED_WIRE_55;
wire	[1:0] SYNTHESIZED_WIRE_58;
wire	[7:0] SYNTHESIZED_WIRE_59;
wire	[1:0] SYNTHESIZED_WIRE_62;





pc	b2v_inst(
	.clock_i(clock_i),
	.start_i(start_i),
	.branchb_i(SYNTHESIZED_WIRE_0),
	.branchf_i(SYNTHESIZED_WIRE_1),
	.pc_i(SYNTHESIZED_WIRE_63),
	.startadd_i(start_addr_i),
	.target_i(SYNTHESIZED_WIRE_64),
	.pc_o(SYNTHESIZED_WIRE_63));


ptestROM	b2v_inst1(
	.address_i(SYNTHESIZED_WIRE_63),
	.data_o(SYNTHESIZED_WIRE_41));


pipelineIDEM	b2v_inst12(
	.regwrite_i(SYNTHESIZED_WIRE_5),
	.write_data_control_i(SYNTHESIZED_WIRE_6),
	.CBwrite_i(SYNTHESIZED_WIRE_7),
	.memwrite_i(SYNTHESIZED_WIRE_8),
	.memread_i(SYNTHESIZED_WIRE_9),
	.clk_i(clock_i),
	.done_i(SYNTHESIZED_WIRE_10),
	.alucontrol_i(SYNTHESIZED_WIRE_11),
	.immediate_i(SYNTHESIZED_WIRE_12),
	.rs_addr_i(SYNTHESIZED_WIRE_65),
	.rs_data_i(SYNTHESIZED_WIRE_64),
	.rt_addr_i(SYNTHESIZED_WIRE_66),
	.rt_data_i(SYNTHESIZED_WIRE_16),
	.write_addr_i(SYNTHESIZED_WIRE_17),
	.regwrite_o(SYNTHESIZED_WIRE_18),
	.write_data_control_o(SYNTHESIZED_WIRE_19),
	.CBwrite_o(SYNTHESIZED_WIRE_35),
	.memwrite_o(SYNTHESIZED_WIRE_44),
	.memread_o(SYNTHESIZED_WIRE_67),
	.done_o(SYNTHESIZED_WIRE_21),
	.alucontrol_o(SYNTHESIZED_WIRE_49),
	.immediate_o(SYNTHESIZED_WIRE_48),
	.rs_addr_o(SYNTHESIZED_WIRE_68),
	.rs_data_o(SYNTHESIZED_WIRE_59),
	.rt_addr_o(SYNTHESIZED_WIRE_69),
	.rt_data_o(SYNTHESIZED_WIRE_55),
	.write_addr_o(SYNTHESIZED_WIRE_26));


pipelineEMWB	b2v_inst13(
	.clk_i(clock_i),
	.regwrite_i(SYNTHESIZED_WIRE_18),
	.write_data_control_i(SYNTHESIZED_WIRE_19),
	.memread_i(SYNTHESIZED_WIRE_67),
	.done_i(SYNTHESIZED_WIRE_21),
	.alu_result_i(SYNTHESIZED_WIRE_22),
	.q_i(SYNTHESIZED_WIRE_23),
	.rs_addr_i(SYNTHESIZED_WIRE_68),
	.rt_addr_i(SYNTHESIZED_WIRE_69),
	.write_addr_i(SYNTHESIZED_WIRE_26),
	.regwrite_o(SYNTHESIZED_WIRE_34),
	.write_data_control_o(SYNTHESIZED_WIRE_52),
	.memread_o(SYNTHESIZED_WIRE_27),
	.done_o(done),
	.alu_result_o(SYNTHESIZED_WIRE_74),
	.q_o(SYNTHESIZED_WIRE_73),
	.rs_addr_o(SYNTHESIZED_WIRE_31),
	.rt_addr_o(SYNTHESIZED_WIRE_32),
	.write_addr_o(SYNTHESIZED_WIRE_70));


forwarding_unit	b2v_inst15(
	.wb_memread_i(SYNTHESIZED_WIRE_27),
	.em_memread_i(SYNTHESIZED_WIRE_67),
	.em_rs_addr_i(SYNTHESIZED_WIRE_68),
	.em_rt_addr_i(SYNTHESIZED_WIRE_69),
	.wb_rs_addr_i(SYNTHESIZED_WIRE_31),
	.wb_rt_addr_i(SYNTHESIZED_WIRE_32),
	.wb_write_addr_i(SYNTHESIZED_WIRE_70),
	.rs_muxcontrol_o(SYNTHESIZED_WIRE_62),
	.rt_muxcontrol_o(SYNTHESIZED_WIRE_58));


regfile	b2v_inst16(
	.clk_i(clock_i),
	.write_i(SYNTHESIZED_WIRE_34),
	.write_CB_i(SYNTHESIZED_WIRE_35),
	.cb_data_i(SYNTHESIZED_WIRE_36),
	.rs_addr_i(SYNTHESIZED_WIRE_65),
	.rt_addr_i(SYNTHESIZED_WIRE_66),
	.write_addr_i(SYNTHESIZED_WIRE_70),
	.write_data_i(SYNTHESIZED_WIRE_40),
	.cb_data_o(SYNTHESIZED_WIRE_42),
	.rs_data_o(SYNTHESIZED_WIRE_64),
	.rt_data_o(SYNTHESIZED_WIRE_16));


pipelineIFID	b2v_inst3(
	.clk(clock_i),
	.in_i(SYNTHESIZED_WIRE_41),
	.out_o(SYNTHESIZED_WIRE_43));


control	b2v_inst4(
	.cb_i(SYNTHESIZED_WIRE_42),
	.instruction_i(SYNTHESIZED_WIRE_43),
	.regwrite_o(SYNTHESIZED_WIRE_5),
	.write_data_control_o(SYNTHESIZED_WIRE_6),
	.CBwrite_o(SYNTHESIZED_WIRE_7),
	.memwrite_o(SYNTHESIZED_WIRE_8),
	.memread_o(SYNTHESIZED_WIRE_9),
	.branchb_o(SYNTHESIZED_WIRE_0),
	.branchf_o(SYNTHESIZED_WIRE_1),
	.done_o(SYNTHESIZED_WIRE_10),
	.alucontrol_o(SYNTHESIZED_WIRE_11),
	.immediate_o(SYNTHESIZED_WIRE_12),
	.rs_addr_o(SYNTHESIZED_WIRE_65),
	.rt_addr_o(SYNTHESIZED_WIRE_66),
	.write_addr_o(SYNTHESIZED_WIRE_17));


single_port_ram_with_init	b2v_inst7(
	.writemem(SYNTHESIZED_WIRE_44),
	.readmem(SYNTHESIZED_WIRE_67),
	.clk(clock_i),
	.addr(SYNTHESIZED_WIRE_71),
	.data(SYNTHESIZED_WIRE_72),
	.q(SYNTHESIZED_WIRE_23));
	defparam	b2v_inst7.ADDR_WIDTH = 8;


alu	b2v_inst8(
	.immediate_i(SYNTHESIZED_WIRE_48),
	.opcode_i(SYNTHESIZED_WIRE_49),
	.rs_i(SYNTHESIZED_WIRE_72),
	.rt_i(SYNTHESIZED_WIRE_71),
	.zero(SYNTHESIZED_WIRE_36),
	.alu_result_o(SYNTHESIZED_WIRE_22));


mux_2to1	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_52),
	.a(SYNTHESIZED_WIRE_73),
	.b(SYNTHESIZED_WIRE_74),
	.out(SYNTHESIZED_WIRE_40));


mux_4to1	b2v_rt_mux(
	.a_i(SYNTHESIZED_WIRE_55),
	.b_i(SYNTHESIZED_WIRE_74),
	.c_i(SYNTHESIZED_WIRE_73),
	
	.sel(SYNTHESIZED_WIRE_58),
	.out_o(SYNTHESIZED_WIRE_71));


mux_4to1	b2v_rt_mux11(
	.a_i(SYNTHESIZED_WIRE_59),
	.b_i(SYNTHESIZED_WIRE_74),
	.c_i(SYNTHESIZED_WIRE_73),
	
	.sel(SYNTHESIZED_WIRE_62),
	.out_o(SYNTHESIZED_WIRE_72));


endmodule
