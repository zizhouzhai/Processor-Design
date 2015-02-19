module rom()

reg[7:0] rom[];

initial
begin
	//program 1: multiplication
	rom[1] = 8'b11000001; //set 1
	rom[2] = 8'b10010000; //load $r0
	rom[3] = 8'b11000010; //set	2
	rom[4] = 8'b10010010; //load $r2,	
	rom[5] = 8'b11000000; //set	0
	rom[6] = 8'b01001111; //add	$r1, $r7
	rom[7] = 8'b01011111; //add	$r3, $r7
	rom[8] = 8'b01100111; //add	$r4, $r7
	rom[9] = 8'b11000001; //set	1
	rom[10] = 8'b00101111; //and	$r5, $r7
	rom[11] = 8'b11000111; //set	7
	rom[12] = 8'b11100101; //sll	$r5			
//Mult;	
	rom[13] = 8'b11000001; //set	1
	rom[14] = 8'b00110010; //and	$r6, $r2	
	rom[15] = 8'b11000000; //set	0		
	rom[16] = 8'b10101110; //seq	$r6		
	rom[17] = 8'b11000110; //set	6		
	rom[18] = 8'b11110111; //branch	$r7		

	rom[19] = 8'b11000000; //set	0
	rom[20] = 8'b01111011; //add	$r7, $r3	
	rom[21] = 8'b01011000; //add	$r3, $r0
	rom[22] = 8'b11000000; //set	0	
	rom[23] = 8'b01111100; //add	$r7, $r4	
	rom[24] = 8'b01110001; //add	$r4, $r1	
//Equals0:				
	rom[25] = 8'b11000000; //set	0	
	rom[26] = 8'b01111101; //add	$r7, $r5	
	rom[27] = 8'b00110000; //and	$r6, $r0	
	rom[28] = 8'b11000000; //set	0		
	rom[29] = 8'b10101110; //seq	$r6		
	rom[30] = 8'b11000010; //set	2			
	rom[31] = 8'b11110111; //branch	$r7		
	rom[32] = 8'b11000001; //set	1		
	rom[33] = 8'b00110111; //and	$r6, $r7	
//JstShft:
	rom[34] = 8'b11000001; //set	1		
	rom[35] = 8'b11100001; //sll	$r1		
	rom[36] = 8'b11100000; //sll	$r0		
	rom[37] = 8'b11101010; //srl	$r2		
	rom[38] = 8'b00111110; //and	$r7, $r6	
	rom[39] = 8'b01001001; //add	$r1, $r1	
	rom[40] = 8'b11000000; //set	0	
	rom[41] = 8'b01110010; //add	$r6, $r2
	rom[42] = 8'b10101110; //seq	$r6		
	rom[43] = 8'b11010010; //set	18	
	rom[44] = 8'b00110111; //and	$r6, $r7	
	rom[45] = 8'b11000000; //set	0		
	rom[46] = 8'b11000001; //set	1	
	rom[47] = 8'b11100110; //sll	$r6			
	rom[48] = 8'b10110110; //branchb	$r6	
	 			
	rom[49] = 8'b01000011; //add	$r0, $r3
	rom[50] = 8'b01001100; //add	$r1, $r4	
	rom[51] = 8'b11000011; //set	3	
	rom[52] = 8'b10010010; //load	$r2		
//Mul2:
		
	rom[53] = 8'b11000001; //set	1		
	rom[54] = 8'b00110010; //and	$r6, $r2	
	rom[55] = 8'b11000000; //set	0	
	rom[56] = 8'b10101110; //seq	$r6	
	rom[57] = 8'b11000110; //set	6	
	rom[58] = 8'b11110111; //branch	r7	

	rom[59] = 8'b11000000; //set	0
	rom[60] = 8'b01111011; //add	$r7, $r3	
	rom[61] = 8'b01011000; //add	$r3, $r0	
	rom[62] = 8'b11000000; //set	0	
	rom[63] = 8'b01111100; //add	$r7, $r4	
	rom[64] = 8'b01100001; //add	$r4, $r1	
//Equals02:				
	rom[65] = 8'b11000000; //set	0		
	rom[66] = 8'b01111101; //add	$r7, $r5	
	rom[67] = 8'b00110000; //and	$r6, $r0	
	rom[68] = 8'b11000000; //set	0	
	rom[69] = 8'b10101110; //seq	$r6	
	rom[70] = 8'b11000000; //set	2	
	rom[71] = 8'b11110111; //branch	$r7		
	rom[72] = 8'b11000000; //set	1	
	rom[73] = 8'b00110111; //and	$r6, $r7
//JstShft2:		
	rom[74] = 8'b11000000; //set	1	
	rom[75] = 8'b11100001; //sll	$r1		
	rom[76] = 8'b11100000; //sll	$r0		
	rom[77] = 8'b11101010; //srl	$r2			
	rom[78] = 8'b00111110; //and	$r7, $r6	
	rom[79] = 8'b01001001; //add	$r1, $r1
	rom[80] = 8'b11000000; //set	0			
	rom[81] = 8'b01110010; //add	$r6, $r2	
	rom[82] = 8'b10101110; //seq	$r6			
	rom[83] = 8'b11010010; //set	18			
	rom[84] = 8'b00110111; //and	$r6, $r7	
	rom[85] = 8'b11000000; //set	0		
	rom[86] = 8'b11000001; //set	1		
	rom[87] = 8'b11100110; //sll	$r6			
	rom[88] = 8'b10110110; //branchb	$r6		

	rom[89] = 8'b11000100; //set	4			
	rom[90] = 8'b10011100; //store	$r4		
	rom[91] = 8'b11000101; //set	5
	rom[92] = 8'b10011011; //store	$r3	
	rom[93] = 8'b10001000; //halt

	

end


endmodule