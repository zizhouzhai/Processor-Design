module forwarding_unit(input[2:0] wb_rt_addr_i,
							  input[2:0] wb_rs_addr_i,
							  input[2:0] wb_write_addr_i,
							  input 		 wb_memread_i,
							  input[2:0] em_rt_addr_i,
							  input[2:0] em_rs_addr_i,
							  input		 em_memread_i,
							  input[2:0] id_rs_addr_i,
							  input[2:0] em_write_addr_i,
							  output reg[1:0] rt_muxcontrol_o,
							  output reg[1:0] rs_muxcontrol_o,
							  output reg target_muxcontrol_o);
							  						
						always@(*)begin
						
							if(em_rt_addr_i == wb_write_addr_i)begin
								rt_muxcontrol_o = (wb_memread_i)?2:1;
							end
							else begin
								rt_muxcontrol_o = 0;
							end

							if(em_rs_addr_i == wb_write_addr_i)begin
								rs_muxcontrol_o = (wb_memread_i)?2:1;
							end
							else begin
								rs_muxcontrol_o = 0;
							end
							
							if(em_write_addr_i == id_rs_addr_i)begin
								target_muxcontrol_o = 1;
							end
							else begin
								target_muxcontrol_o = 0;
							end
													
						end
			
endmodule