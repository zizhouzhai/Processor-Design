module control(input[7:0] instruction_i,
					input clock_i,
					output[3:0] alucontrol_o,
					output[2:0] rs_addr_o,
					output[2:0] rt_addr_o,
					output regwrite_o,
					output write_data_control_o,
					output CBwrite_o,
					output[2:0] write_addr_o,
					output branchb_control_o,
					output branch_control_o,
					output[4:0] immediate_o
					);
					
		reg[2:0] alucontrol;
		reg regwrite;
		reg CBwrite;
		reg[2:0] write_addr;
		reg write_data_control;
		reg[2:0] rs_addr;
		reg[2:0] rt_addr;
		reg[4:0] immediate;
		
		assign alucontrol_o = alucontrol;
		assign regwrite_o = regwrite;
		assign CBwrite_o = CBwrite;
		assign write_addr_o = write_addr;
		assign write_data_control_o = write_data_control;
		assign rs_addr_o = rs_addr;
		assign rt_addr_o = rt_addr;
		assign immediate_o = immediate;
					
		always@(posedge clock_i)begin
		
			casez(instruction_i[7:3])
			
				5'b00???: begin		
					$display("and instruction");
					alucontrol <= 4'b0000;
					regwrite <= 1'b1;
					CBwrite <= 1'b0;
					write_addr <= instruction_i[5:3];
					write_data_control <= 0;
					rs_addr <=	instruction_i[2:0];
					rt_addr <= 3'd7;
					
				end
				5'b01???: begin
					$display("add instruction");
					alucontrol <= 4'b0001;
					regwrite <= 1'b1;
					CBwrite <= 1'b0;
					write_addr <= instruction_i[5:3];
					write_data_control <= 0;
					rs_addr <=	instruction_i[2:0];
					rt_addr <= 3'd7;
				end
				5'b110??: begin
					$display("set instruction");
					alucontrol <= 4'b1000;
					regwrite <= 1'b1;
					CBwrite <= 1'b0;
					immediate <= instruction_i[4:0];
					write_addr <= 3'd7;
					write_data_control <= 0;
				end
				5'b11100: begin
					$display("sll instruction");
					alucontrol <= 4'b0010;
					regwrite <= 1'b1;
					CBwrite <= 1'b0;
					write_addr <= instruction_i[2:0];
					write_data_control <= 0;
					rs_addr <=	instruction_i[2:0];
					rt_addr <= 3'd7;
				end
				5'b11101: begin
					$display("srl instruction");
					alucontrol <= 4'b0011;
					regwrite <= 1'b1;
					CBwrite <= 1'b0;
					write_addr <= instruction_i[2:0];
					write_data_control <= 0;
					rs_addr <=	instruction_i[2:0];
				end
				5'b11110: begin
					$display("branch instruction");
					alucontrol <= 4'b0001;
					regwrite <= 1'b0;
					CBwrite <= 1'b0;
				end
				5'b11111: begin
					$display("subsigned instruction");
					alucontrol <= 4'b0100;
					regwrite <= 1'b1;
					CBwrite <= 1'b0;
					write_addr <= instruction_i[2:0];
					write_data_control <= 0;
					rs_addr <=	3'd2;
					rt_addr <= 3'd5;
				end
				5'b10000: begin
					$display("slt instruction");
					alucontrol <= 4'b0101;
					regwrite <= 1'b0;
					CBwrite <= 1'b1;
					rs_addr <=	3'd6;
					rt_addr <= 3'd7;
				end
				5'b10001: begin
					$display("halt instruction");
					alucontrol <= 4'b0001;
					regwrite <= 1'b0;
					CBwrite <= 1'b0;
				end
				5'b10010: begin
					$display("load instruction");
					alucontrol <= 4'b0001;
					regwrite <= 1'b1;
					CBwrite <= 1'b0;
					write_addr <= instruction_i[2:0];
					write_data_control <= 1;
				end
				5'b10011: begin
					$display("store instruction");
					alucontrol <= 4'b0001;
					regwrite <= 1'b0;
					CBwrite <= 1'b0;
					rs_addr <= instruction_i[2:0];
					rt_addr <= 3'd7;
				end
				5'b10100: begin
					$display("absolute instruction");
					alucontrol <= 4'b0110;
					regwrite <= 1'b1;
					CBwrite <= 1'b0;
					write_addr <= instruction_i[2:0];
					write_data_control <= 0;
					rs_addr <=	instruction_i[2:0];	
				end
				5'b10101: begin
					$display("seq instruction");
					alucontrol <= 4'b0111;
					regwrite <= 1'b0;
					CBwrite <= 1'b1;
					rs_addr <=	instruction_i[2:0];
					rt_addr <= 3'd7;
				end
				5'b10110: begin
					$display("branchb instruction");
					alucontrol <= 4'b0001;
					regwrite <= 1'b0;
					CBwrite <= 1'b0;
				end
				5'b10111: begin
					$display("tobeadded instruction");
					alucontrol <= 4'b0001;
					regwrite <= 1'b0;
					CBwrite <= 1'b0;
				end
				
			endcase
		
		end
	endmodule