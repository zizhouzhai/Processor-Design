module alu(	input[3:0] opcode_i,
				input[7:0] rs_i,
				input[7:0] rt_i,
				input[4:0] immediate_i,
				output reg[7:0] alu_result_o,
				output reg zero);
					
		reg[8:0] subresult;
		reg[8:0] rs_extended;
		reg[8:0] rt_extended;
		
		always@(*)begin
		
			case(opcode_i)
			
				4'b0000: begin	//and operation. regd = regs & $r7
					alu_result_o[7:0] = rs_i[7:0] & rt_i[7:0];
				end
				4'b0001: begin	//add operation. regd = regs + $r7
					alu_result_o[7:0] = rs_i[7:0] + rt_i[7:0];
				end
				4'b0010: begin	//sll operation. $Rreg << $r7
					alu_result_o[7:0] = rs_i[7:0] << rt_i[7:0];
				end
				4'b0011: begin	//srl operation. $Rreg >> 1
					alu_result_o[7:0] = rs_i[7:0] >> 1;
				end
				4'b0100: begin	//sub (signed) operation. $Rreg = $r2 - $r5
					alu_result_o[7:0] = rs_i[7:0] - rt_i[7:0];
				end
				4'b0101: begin	//slt operation. if ($r6(rs_i) < $r7(rt_i)),  CB = 1 else CB = 0
					rs_extended = {1'b0,rs_i};
					rt_extended = {1'b0,rt_i};
					subresult = (rs_i - rt_i);
					zero = subresult[8];
				end
				4'b0110: begin	//absolute operation. $Rreg = abs($Rreg)
					if (rs_i[7] == 1'b1) begin
						alu_result_o = -rs_i ;
					end
					else begin
						alu_result_o = rs_i ;
					end
				end
				4'b0111: begin	//seq operation. if ($Rreg == $r7), CB = 1 else CB = 0
					zero = !(rs_i - rt_i);
				end
				4'b1000: begin //set instruction
					rs_extended = {3'b000,immediate_i[4:0]};
					alu_result_o = rs_extended;
				end
				4'b1001: begin //addc instruction
					rs_extended = {1'b0,rs_i};
					rt_extended = {1'b0,rt_i};
					subresult = (rs_extended + rt_extended);
					alu_result_o[7:0] = {7'b0,subresult[8]};
				end
			endcase
		
		end		
				
				
endmodule
