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

//--------------------program 2 String match--------------------------
	rom[94] = 8'b110000100; //set	6
	rom[95] = 8'b10010001; //load	$r1				#$r1 = $r15 = [6]

	rom[96] = 8'b11000000; //set 	0
	rom[97] = 8'b01100111; //add	$r4,	$r7			#$r4 = 0
	rom[98] = 8'b01110111; //add	$r6,	$r7			#$r6 = 0
	rom[99] = 8'b01000111; //add	$r0,	$r7			#$r0 = 0
	rom[100] = 8'b01011111; //add	$r3,	$r7			#$r0 = 0

	rom[101] = 8'b11011111; //set	31				#$r3 = 31
	rom[102] = 8'b01011011; //add	$r3,	$r3

//LOADBYTE:
	rom[103] = 8'b11000001; //set	1				#$r3 = $r3 + 1
	rom[104] = 8'b01011011; //add	$r3,	$r3

	rom[105] = 8'b11000000; //set	0
	rom[106] = 8'b01000111; //add	$r0,	$r7			#$r0 = 0


	rom[107] = 8'b11011000; //set	24				#change
	rom[108] = 8'b01111111; //add	$r7, 	$r7			#$r7 = 24 + 24 = 48
	rom[109] = 8'b01111111; //add	$r7, 	$r7			#$r7 = 48 + 48 = 96
	rom[110] = 8'b10101011; //seq	$r3				#chec, if $r3 == 96
	rom[111] = 8'b11011000; //set	24				#jump forward 29 instructions
	rom[112] = 8'b11110111; //branch		$r7			#if finished going through 64 bytes
						//#if $r3 == 32+64 go to end

	rom[113] = 8'b11000000; //set	0				#$r7 = 0
	rom[114] = 8'b01111011; //add	$r7,$r3				$r7 = $r3
	rom[115] = 8'b10010010; //load	$r2				#load	$r2, $r3

//COMPARE:
	rom[116] = 8'b11001111; //set	15				#and	$r14, $r2, 15
	rom[117] = 8'b00111010; //and	$r7,	$r2			#get the lower 4 bits of the byte store in r7

	rom[118] = 8'b10101001; //seq	$r1				#check if $r1 same as $r7
	rom[119] = 8'b11001010; //set	10				#jump foward 10
	rom[120] = 8'b11110111; //branch		$r7			#(go to match)

	rom[121] = 8'b11000001; //set	1				#srl	$r2, $r2, 1
	rom[122] = 8'b11101010; //srl	$r2
						//#set1 from above
	rom[123] = 8'b01000000; //add	$r0,	 $r0			#inc $r0

	rom[124] = 8'b11000101; //set	5					
	rom[125] = 8'b10101000; //seq	$r0				#check if $r0 == 5
	rom[126] = 8'b11011001; //set	25				#jump back 28 to LOADBYTE
	rom[127] = 8'b10110111; //branchb	$r7			#if $r6 is 5, do next byte

	rom[128] = 8'b10101111; //seq	$r7				
	rom[129] = 8'b11001111; //set	15
	rom[130] = 8'b10110111; //branchb	$r7			#jump to compare

//MATCH:
	rom[131] = 8'b11000001; //set	1				#add	$r4, $r4, 1
	rom[132] = 8'b01000100; //add	$r4,	$r4
			
	rom[133] = 8'b10101111; //seq	$r7				#beq	$r0, $r0, LOADBYTE


	rom[134] = 8'b11010001; //set 	17
	rom[135] = 8'b01111111; //add	$r7,	$r7			#jump 34
	rom[136] = 8'b11110111; //branch	b	$r7			#(go to LOADBYTE)

//END:
	rom[137] = 8'b11000111; //set	7				#store	$r4, [7]
	rom[138] = 8'b10011100; //store	$r4
	

	

end


endmodule