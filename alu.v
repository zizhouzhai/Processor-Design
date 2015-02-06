module alu(	input[2:0] opcode_i,
				input[7:0] rs_i,
				input[7:0] rt_i,
				output reg[7:0] alu_result_o,
				output reg zero);
					
		
reg signed [7:0] rs_signed;
reg signed [7:0] rt_signed;
		
		always@(*)begin
		
			case(opcode_i)
			
				3'b000: begin	//and operation. regd = regs & $r7
					alu_result_o[7:0] = rs_i[7:0] & rt_i[7:0];
				end
				3'b001: begin	//add operation. regd = regs + $r7
					alu_result_o[7:0] = rs_i[7:0] + rt_i[7:0];
				end
				3'b010: begin	//sll operation. $Rreg << $r7
					alu_result_o[7:0] = rs_i[7:0] << rt_i[7:0];
				end
				3'b011: begin	//srl operation. $Rreg >> 1
					alu_result_o[7:0] = rs_i[7:0] >> 1;
				end
				3'b100: begin	//sub (signed) operation. $Rreg = $r2 - $r5
					//rs_signed = rs_i;
					//rt_signed = rt_i;
					//alu_result_o[7:0] = rs_signed[7:0] - rt_signed[7:0];
					alu_result_o[7:0] = rs_i[7:0] - rt_i[7:0];
				end
				3'b101: begin	//slt operation. if ($r6(rs_i) < $r7(rt_i)),  CB = 1 else CB = 0
					if((rs_i - rt_i)>= 8'd0)begin
						zero = 0;
					end
					else begin
						zero = 1;
					end
				end
				3'b110: begin	//absolute operation. $Rreg = abs($Rreg)
					if (rs_i[7] == 1'b1) begin
						alu_result_o = -rs_i ;
					end
					else begin
						alu_result_o = rs_i ;
					end
				end
				3'b111: begin	//seq operation. if ($Rreg == $r7), CB = 1 else CB = 0
					zero = !(rs_i - rt_i);
				end
			endcase
		
		end		
				
				
endmodule
