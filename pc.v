module pc(
	input [7:0] pc_i,
	input clock_i,
	input start_i,
	input [7:0] startadd_i,
	input branchb_i,
	input branchf_i,
	input [7:0] target_i,  //PC-relative address not absolute
	output reg [7:0] pc_o);
	
	reg [14:0] dynaminstructcount;
initial begin
	dynaminstructcount = 0;
end
	
always @(posedge clock_i)
begin
	if(start_i == 1) 
		pc_o <= startadd_i;
		
	else if(branchf_i == 1) 
		pc_o <= pc_i + target_i;
		
	else if(branchb_i == 1) 
		pc_o <= pc_i - target_i;
		
	else begin
		pc_o <= pc_i+ 1;
	end
		
	if(!branchb_i && !branchf_i)begin
		dynaminstructcount = dynaminstructcount + 1;		
	end
		
end

endmodule