module alu( input clk_i,
				input[4:0] opcode_i,
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
			
				5'b00xxx: begin	//and operation. regd = regs & $r7
					result[7:0] <= rs_i[7:0] && rt_i[7:0];
				end
				5'b01xxx: begin	//add operation. regd = regs + $r7
					result[7:0] <= rs_i[7:0] + rt_i[7:0];
				end
				5'b110xx: begin	//set operation. $r7 = immediate. Does this need to do anything in alu?
				
				end
				5'b11100: begin	//sll operation. $Rreg << $r7
					result[7:0] <= rs_i[7:0] << rt_i[7:0];
				end
				5'b11101: begin	//srl operation. $Rreg >> 1
					result[7:0] <= rs_i[7:0] >> 1;
				end
				5'b11110: begin	//branch operation. if conditionalbit is on, take branch.
				 
				end
				5'b11111: begin	//sub (signed) operation. $Rreg = $r2 - $r5
					result[7:0] <= rs_i[7:0] - rt_i[7:0];
				end
				5'b10000: begin	//slt operation. if ($r6 < $r7),  CB = 1 else CB = 0
					if((rs_i - rt_i)> 16'd0)begin
						seto <= 0;
					end
					else begin
						seto <= 0;
					end
				end
				5'b10001: begin	//halt operation
				
				end
				5'b10010: begin	//load operation
				
				end
				5'b10011: begin	//store operation
					
				end
				5'b10100: begin	//absolute operation. $Rreg = abs($Rreg)
					if (rs_i < 16'd0) begin
						result <= -rs_i ;
					end
					else begin
						result <= rs_i ;
					end
				end
				5'b10101: begin	//seq operation. if ($Rreg == $r7), CB = 1 else CB = 0
					if((rs_i - rt_i) == 0)begin
						seto <= 1;
					end
				end
				5'b10110: begin	//branchb operation	
				
				end
				5'b10111: begin	//to be added operation
				
				end
			endcase
		
		end		
				
				
endmodule
