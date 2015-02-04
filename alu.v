module alu( input clk_i,
				input[2:0] opcode_i,
				input[7:0] rs_i,
				input[7:0] rt_i,
				output[7:0] alu_result_o,
				output set_o);
				
		reg[7:0] result;
		reg seto;

		assign alu_result_o = result;
		assign set_o = seto;
				
		always@(posedge clk_i)begin
		
			casex(opcode_i)
			
				3'b000: begin	//and operation. regd = regs & $r7
					result[7:0] <= rs_i[7:0] && rt_i[7:0];
				end
				3'b001: begin	//add operation. regd = regs + $r7
					result[7:0] <= rs_i[7:0] + rt_i[7:0];
				end
				3'b010: begin	//sll operation. $Rreg << $r7
					result[7:0] <= rs_i[7:0] << rt_i[7:0];
				end
				3'b011: begin	//srl operation. $Rreg >> 1
					result[7:0] <= rs_i[7:0] >> 1;
				end
				3'b100: begin	//sub (signed) operation. $Rreg = $r2 - $r5
					result[7:0] <= rs_i[7:0] - rt_i[7:0];
				end
				3'b101: begin	//slt operation. if ($r6 < $r7),  CB = 1 else CB = 0
					if((rs_i - rt_i)> 16'd0)begin
						seto <= 0;
					end
					else begin
						seto <= 0;
					end
				end
				3'b110: begin	//absolute operation. $Rreg = abs($Rreg)
					if (rs_i < 16'd0) begin
						result <= -rs_i ;
					end
					else begin
						result <= rs_i ;
					end
				end
				3'b111: begin	//seq operation. if ($Rreg == $r7), CB = 1 else CB = 0
					if((rs_i - rt_i) == 0)begin
						seto <= 1;
					end
				end
			endcase
		
		end		
				
				
endmodule
