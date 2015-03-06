// For demonstration purposes, this one has
// 128 entries (7 bit address, supplied by 7-bit
// PC) and of course has 8-bit output.
// You should put your real insts in it, but this one sets the values to the same
// as the address, so you can easily confirm that you are reading address 43
// because the output is 43.
module ptestROM (
  input[7:0] address_i,
  output reg[7:0] data_o
  );
 
always @(*)
  begin
    case (address_i)
	//program 1: multiplication
	0: data_o = 8'b11000001; //set 1
	1: data_o = 8'b10010000; //load $r0
	2: data_o = 8'b11000010; //set	2
	3: data_o = 8'b10010010; //load $r2,	
	4: data_o = 8'b11000000; //set	0
	5: data_o = 8'b01001111; //add	$r1, $r7
	6: data_o = 8'b01011111; //add	$r3, $r7
	7: data_o = 8'b01100111; //add	$r4, $r7
	8: data_o = 8'b11000001; //set	1
	9: data_o = 8'b00101111; //and	$r5, $r7
	10: data_o = 8'b11000111; //set	7
	11: data_o = 8'b11100101; //sll	$r5			
//Mult;	
	12: data_o = 8'b11000001; //set	1
	13: data_o = 8'b00110010; //and	$r6, $r2	
	14: data_o = 8'b11000000; //set	0		
	15: data_o = 8'b10101110; //seq	$r6		
	16: data_o = 8'b11001000; //set	8		
	17: data_o = 8'b11110111; //branch	$r7		

	18: data_o = 8'b11000000; //set	0
	19: data_o = 8'b01111011; //add	$r7, $r3	
	20: data_o = 8'b01011000; //add	$r3, $r0
	21: data_o = 8'b10111000; //addc $r0
	22: data_o = 8'b01100100; //add $r4,$r4
	23: data_o = 8'b11000000; //set	0	
	24: data_o = 8'b01111100; //add	$r7, $r4	
	25: data_o = 8'b01100001; //add	$r4, $r1	
//Equals0:				
	26: data_o = 8'b11000000; //set	0	
	27: data_o = 8'b01111101; //add	$r7, $r5	
	28: data_o = 8'b00110000; //and	$r6, $r0	
	29: data_o = 8'b11000000; //set	0		
	30: data_o = 8'b10101110; //seq	$r6		
	31: data_o = 8'b11000010; //set	2			
	32: data_o = 8'b11110111; //branch	$r7		
	33: data_o = 8'b11000001; //set	1		
	34: data_o = 8'b00110111; //and	$r6, $r7	
//JstShft:
	35: data_o = 8'b11000001; //set	1		
	36: data_o = 8'b11100001; //sll	$r1		
	37: data_o = 8'b11100000; //sll	$r0		
	38: data_o = 8'b11101010; //srl	$r2		
	39: data_o = 8'b00111110; //and	$r7, $r6	
	40: data_o = 8'b01001001; //add	$r1, $r1	
	41: data_o = 8'b11000000; //set	0	
	42: data_o = 8'b01110111; //add	$r6, $r7
	43: data_o = 8'b01111010; //add $r7, $r2
	44: data_o = 8'b10000000; //slt 		
	45: data_o = 8'b11010011; //set	19	
	46: data_o = 8'b00110111; //and	$r6, $r7			
	47: data_o = 8'b11000001; //set	1	
	48: data_o = 8'b11100110; //sll	$r6			
	49: data_o = 8'b10110110; //branchb	$r6	
	 			
	50: data_o = 8'b11000000; //set 0
	51: data_o = 8'b01000011; //add	$r0, $r3
	52: data_o = 8'b01001100; //add	$r1, $r4
	53: data_o = 8'b01011111; //add $r3, $r7
	54: data_o = 8'b01100111; //add $r4, $r7	
	55: data_o = 8'b11000011; //set	3	
	56: data_o = 8'b10010010; //load	$r2		
//Mul2:
		
	57: data_o = 8'b11000001; //set	1		
	58: data_o = 8'b00110010; //and	$r6, $r2	
	59: data_o = 8'b11000000; //set	0	
	60: data_o = 8'b10101110; //seq	$r6	
	61: data_o = 8'b11001000; //set	8	
	62: data_o = 8'b11110111; //branch	r7	

	63: data_o = 8'b11000000; //set	0
	64: data_o = 8'b01111011; //add	$r7, $r3	
	65: data_o = 8'b01011000; //add	$r3, $r0
	66: data_o = 8'b10111000; //addc $r0	
	67: data_o = 8'b01100100; //add $r4,$r4
	68: data_o = 8'b11000000; //set	0	
	69: data_o = 8'b01111100; //add	$r7, $r4	
	70: data_o = 8'b01100001; //add	$r4, $r1	
//Equals02:				
	71: data_o = 8'b11000000; //set	0		
	72: data_o = 8'b01111101; //add	$r7, $r5	
	73: data_o = 8'b00110000; //and	$r6, $r0	
	74: data_o = 8'b11000000; //set	0	
	75: data_o = 8'b10101110; //seq	$r6	
	76: data_o = 8'b11000010; //set	2	
	77: data_o = 8'b11110111; //branch	$r7		
	78: data_o = 8'b11000001; //set	1	
	79: data_o = 8'b00110111; //and	$r6, $r7
//JstShft2:		
	80: data_o = 8'b11000001; //set	1	
	81: data_o = 8'b11100001; //sll	$r1		
	82: data_o = 8'b11100000; //sll	$r0		
	83: data_o = 8'b11101010; //srl	$r2			
	84: data_o = 8'b00111110; //and	$r7, $r6	
	85: data_o = 8'b01001001; //add	$r1, $r1
	86: data_o = 8'b11000000; //set	0			
	87: data_o = 8'b01110111; //add	$r6, $r7
	88: data_o = 8'b01111010; //add $r7, $r2
	89: data_o = 8'b10000000; //slt 			
	90: data_o = 8'b11010011; //set	19			
	91: data_o = 8'b00110111; //and	$r6, $r7			
	92: data_o = 8'b11000001; //set	1		
	93: data_o = 8'b11100110; //sll	$r6			
	94: data_o = 8'b10110110; //branchb	$r6		

	95: data_o = 8'b11000100; //set	4			
	96: data_o = 8'b10011100; //store	$r4		
	97: data_o = 8'b11000101; //set	5
	98: data_o = 8'b10011011; //store	$r3	
	99: data_o = 8'b10001000; //halt

//--------------------program 2 String match--------------------------
	100: data_o = 8'b11000000; //set	1
	101: data_o = 8'b01000111; //add r0 r7			
	102: data_o = 8'b11000001; //set 1
	103: data_o = 8'b01001000; //add	$r1,	$r0		
	104: data_o = 8'b11000010; //set		2
	105: data_o = 8'b01010000; //add r2 r0
	106: data_o = 8'b11000011; //set 3	
	107: data_o = 8'b01011000; //add	$r3,	$r0		
	108: data_o = 8'b11000100; //set	4			
	109: data_o = 8'b01100000; //add	$r4,	$r0
	110: data_o = 8'b11000001; //set 1
	111: data_o = 8'b10010101; //load r5	
	112: data_o = 8'b01110101; //add r6 r5
	113: data_o = 8'b11000001; //set 1
	114: data_o = 8'b10101001; //seq r1				

//loadbyte
	115: data_o = 8'b11000010; //set 2
	116: data_o = 8'b11110111; //branch	r7	
	117: data_o = 8'b01111111; //add				
	118: data_o = 8'b01000111; //add 	r0	r7
	119: data_o = 8'b10001000; //halt
	120: data_o = 8'b10101011; //seq	r3				
	121: data_o = 8'b11011100; //set	27
	122: data_o = 8'b11110111; //branch 	r7
	123: data_o = 8'b01111000; //set	0				
	124: data_o = 8'b01111011; //add	$r7,	$r3		
	125: data_o = 8'b10010010; //load	r2				

//compare
	126: data_o = 8'b11001111; //set	15			
	127: data_o = 8'b00111010; //and	r7	r2		
	128: data_o = 8'b10101001; //seq	r1				
	129: data_o = 8'b11110100; //branch	r4
	130: data_o = 8'b11000001; //set 	1 TODO ***MOVE UP ONE***

	131: data_o = 8'b11101010; //srl	r2					
	132: data_o = 8'b01000000; //add	r0	r0			
	133: data_o = 8'b11000101; //set	5
	134: data_o = 8'b10101000; //seq	r0
	135: data_o = 8'b11010110; //set 	22
	136: data_o = 8'b10110111; //branchb	r7				
	137: data_o = 8'b10101111; //seq	r7
	138: data_o = 8'b11001110; //set	14
	139: data_o = 8'b10110111; //branchb	r7

//match
	140: data_o = 8'b11000111; //set	7
	141: data_o = 8'b10010110; //load	r6
	142: data_o = 8'b11000001; //set 	1
	143: data_o = 8'b01110110; //add	$r6,	$r6			
	144: data_o = 8'b11000111; //set	7

	145: data_o = 8'b10011110; //store 	r6			
	146: data_o = 8'b10101111; //seq	r7
	147: data_o = 8'b11001001; //set	9
	148: data_o = 8'b01111111; //add	r7 	r7 9 + 9
	149: data_o = 8'b01111111; //add 	r7 	r7 18 + 18
	150: data_o = 8'b10110111; //branchb 	r7	branchb 34. needs to be 35

//end
	151: data_o = 8'b10001000; //halt
	
//-------------------program 3: Closest pair-----------
	152: data_o = 8'b11010000; //set		16			
	153: data_o = 8'b01111111; //add		$r7,	$r7
	154: data_o = 8'b01111111; //add		$r7,         $r7		  
	155: data_o = 8'b01100111; //add		$r4,	$r7
	156: data_o = 8'b11010011; //set		19	
	157: data_o = 8'b01100100; //add		$r4,	$r4

	158: data_o = 8'b11001000; //set		16			#r4 = 
	159: data_o = 8'b01111111; //add    		$r7,         $r7			#set i = 0
	160: data_o = 8'b01111111; //add		$r7, 	$r7
	161: data_o = 8'b01111111; //add		$r7, 	$r7
	162: data_o = 8'b01000111; //add		$r0,	$r7		#$r0 = 128
	163: data_o = 8'b01011111; //add		$r3,         $r7	 	#$r3 = 255set shortest = 2^8

//OUTERLOOP:

	164: data_o = 8'b11000000; //set		0
	165: data_o = 8'b01111100; //add		$r7,         $r4
	166: data_o = 8'b10101000; //seq                        $r0
	
	167: data_o = 8'b11000000;
	168: data_o = 8'b01110111;
	169: data_o = 8'b11010011; //set		19
	170: data_o = 8'b01110111; //add		$r6, 	$r7	#set 38
	171: data_o = 8'b11000011; //set		3;
	172: data_o = 8'b01110110; //add		$r6, 	$r6	#set 41
	173: data_o = 8'b11110110; //branch $r6;		#end of outer for loop forward 39

	174: data_o = 8'b11000000; //set		0
	175: data_o = 8'b01111000; //add		$r7,	$r0	#move $r0 to $r
	176: data_o = 8'b10010010; //load		$r2		#load [$r2]

	177: data_o = 8'b11000001; //set		1;			# inc i
	178: data_o = 8'b01000000; //add		$r0,	$r0

//INNERLOOP:
   179: data_o = 8'b11000000; //set		0			#store incremented i to k
	180: data_o = 8'b01001000; //add		$r1,	$r0
    
	181: data_o = 8'b11000000;
	182: data_o = 8'b01110111;
	183: data_o = 8'b11010000; //set    		16;			#set i = 0
	184: data_o = 8'b01111111; //add		$r7, 	$r7
	185: data_o = 8'b01111111; //add		$r7, 	$r7
	186: data_o = 8'b01110111; //add		$r6,	$r7		#$r6 = 128	
	187: data_o = 8'b11010100; //set		20
	188: data_o = 8'b01110110; //add		$r6, 	$r6
	189: data_o = 8'b11000000; //set		0
	190: data_o = 8'b01111110; //add		$r7,	$r6
	191: data_o = 8'b10101001; //seq		$r1
	192: data_o = 8'b11011110; //set		30			#go back 21 to OUTERLOOP
	193: data_o = 8'b10110111; //branchb	               $r7				#if reached the end, reset
	194: data_o = 8'b11000000; //set 		0			#load [k]
	195: data_o = 8'b01111001; //add		$r7,	$r1
	196: data_o = 8'b10010101; //load		$r5;
	197: data_o = 8'b11111110; //sub		$r6			$r6 = $r2 - $r5 ( difference)
	198: data_o = 8'b10100110; //absolute		$r6;			#take absolute value of subtraction???
	199: data_o = 8'b11000001; //set		1;			#inc k
	200: data_o = 8'b01001001; //add		$r1,	$r1;
	201: data_o = 8'b11000000; //set		0;
	202: data_o = 8'b01111011; //add		$r7,	$r3
	203: data_o = 8'b10000000; //slt					#branch less than go to IF
	204: data_o = 8'b11000011; //set		3			#(GOTOIF)
	205: data_o = 8'b11110111; //branch		$r7
	206: data_o = 8'b10101111; //seq		$r7
	207: data_o = 8'b11011100; //set		29			#go to innerlooop
	208: data_o = 8'b10110111; //branchb	        $r7			#else re-interate loop

//IF:
	209: data_o = 8'b11000000; //set		0	
	210: data_o = 8'b01011110; //add		$r3,	$r6			#$r3 = new shortest = r6
	211: data_o = 8'b10101111; //seq		$r7				#jump to innerloop
	212: data_o = 8'b11010001; //set		17				#32
	213: data_o = 8'b01111111; //add		$r7,	$r7			#r7 = $r7 +$r7 = 34
	214: data_o = 8'b10110111; //branchb	$r7		

//END:
	215: data_o = 8'b11011110; //set		30
	216: data_o = 8'b01111111; //add		$r7,	$r7			#r7 = r7 + r7 = 30 + 30= 60
	217: data_o = 8'b01110111; //add		$r6,	$r7			#r7 = r7 + r7 = 60 + 60 = 120
	218: data_o = 8'b11000111; //set		7
	219: data_o = 8'b01111110; //add		$r7,	$r6			#r7 = r6 + 7 = 127
	220: data_o = 8'b10011011; //store		$r3;				#[r7] = $r3 
	221: data_o = 8'b10001000; //halt


	default: data_o = 8'hff; // don’t forget this!
    endcase
  end
endmodule
 
