// For demonstration purposes, this one has
// 128 entries (7 bit address, supplied by 7-bit
// PC) and of course has 8-bit output.
// You should put your real insts in it, but this one sets the values to the same
// as the address, so you can easily confirm that you are reading address 43
// because the output is 43.
module instROM (
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
	16: data_o = 8'b11000110; //set	8		
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
	45: data_o = 8'b11010010; //set	24	
	46: data_o = 8'b00110111; //and	$r6, $r7			
	47: data_o = 8'b11000001; //set	1	
	48: data_o = 8'b11100110; //sll	$r6			
	49: data_o = 8'b10110110; //branchb	$r6	
	 			
	50: data_o = 8'b11000000; //set 0
	51: data_o = 8'b01000011; //add	$r0, $r3
	52: data_o = 8'b01001100; //add	$r1, $r4	
	53: data_o = 8'b11000011; //set	3	
	54: data_o = 8'b10010010; //load	$r2		
//Mul2:
		
	55: data_o = 8'b11000001; //set	1		
	56: data_o = 8'b00110010; //and	$r6, $r2	
	57: data_o = 8'b11000000; //set	0	
	58: data_o = 8'b10101110; //seq	$r6	
	59: data_o = 8'b11000110; //set	8	
	60: data_o = 8'b11110111; //branch	r7	

	61: data_o = 8'b11000000; //set	0
	62: data_o = 8'b01111011; //add	$r7, $r3	
	63: data_o = 8'b01011000; //add	$r3, $r0
	64: data_o = 8'b10111000; //addc $r0	
	65: data_o = 8'b01100100; //add $r4,$r4
	66: data_o = 8'b11000000; //set	0	
	67: data_o = 8'b01111100; //add	$r7, $r4	
	68: data_o = 8'b01100001; //add	$r4, $r1	
//Equals02:				
	69: data_o = 8'b11000000; //set	0		
	70: data_o = 8'b01111101; //add	$r7, $r5	
	71: data_o = 8'b00110000; //and	$r6, $r0	
	72: data_o = 8'b11000000; //set	0	
	73: data_o = 8'b10101110; //seq	$r6	
	74: data_o = 8'b11000010; //set	2	
	75: data_o = 8'b11110111; //branch	$r7		
	76: data_o = 8'b11000001; //set	1	
	77: data_o = 8'b00110111; //and	$r6, $r7
//JstShft2:		
	78: data_o = 8'b11000001; //set	1	
	79: data_o = 8'b11100001; //sll	$r1		
	80: data_o = 8'b11100000; //sll	$r0		
	81: data_o = 8'b11101010; //srl	$r2			
	82: data_o = 8'b00111110; //and	$r7, $r6	
	83: data_o = 8'b01001001; //add	$r1, $r1
	84: data_o = 8'b11000000; //set	0			
	85: data_o = 8'b01110111; //add	$r6, $r7
	86: data_o = 8'b01111010; //add $r7, $r2
	87: data_o = 8'b10000000; //slt 			
	88: data_o = 8'b11010010; //set	24			
	89: data_o = 8'b00110111; //and	$r6, $r7			
	90: data_o = 8'b11000001; //set	1		
	91: data_o = 8'b11100110; //sll	$r6			
	92: data_o = 8'b10110110; //branchb	$r6		

	93: data_o = 8'b11000100; //set	4			
	94: data_o = 8'b10011100; //store	$r4		
	95: data_o = 8'b11000101; //set	5
	96: data_o = 8'b10011011; //store	$r3	
	97: data_o = 8'b10001000; //halt

//--------------------program 2 String match--------------------------
	98: data_o = 8'b11000110; //set	6
	99: data_o = 8'b10010001; //load	$r1				
	100: data_o = 8'b11000000; //set 	0
	101: data_o = 8'b01000111; //add	$r0,	$r7			
	102: data_o = 8'b11000111; //set		7
	103: data_o = 8'b10011000; //store r0	
	104: data_o = 8'b11011111; //set 31	
	105: data_o = 8'b01011000; //add	$r3,	$r0. r3 = 31		
	106: data_o = 8'b11010101; //set	21			
	107: data_o = 8'b01110000; //add	$r6,	$r0
	108: data_o = 8'b11001010; //set	10				
	109: data_o = 8'b01100000; //add	$r4,	$r0
	110: data_o = 8'b11011000; //set	24
	111: data_o = 8'b01111111; //add	$r7,	$r7			
	112: data_o = 8'b01101111; //add	$r5	$r7				

//loadbyte
	113: data_o = 8'b11000001; //set 1	
	114: data_o = 8'b01011011; //add	$r3, 	$r3		
	115: data_o = 8'b11000000; //set	0				
	116: data_o = 8'b01000111; //add 	r0	r7
	117: data_o = 8'b01111101; //add	r7	r5
	118: data_o = 8'b10101011; //seq	r3				
	119: data_o = 8'b11011100; //set	27
	120: data_o = 8'b11110111; //branch 	r7
	121: data_o = 8'b11000000; //set	0				
	122: data_o = 8'b01111011; //add	$r7,	$r3		
	123: data_o = 8'b10010010; //load	r2				

//compare
	124: data_o = 8'b11001111; //set	15			
	125: data_o = 8'b00111010; //and	r7	r2		
	126: data_o = 8'b10101001; //seq	r1				
	127: data_o = 8'b11110100; //branch	r4
	128: data_o = 8'b11000001; //set 	1

	129: data_o = 8'b11101010; //srl	r2					
	130: data_o = 8'b01000000; //add	r0	r0			
	131: data_o = 8'b11000101; //set	5
	132: data_o = 8'b10101000; //seq	r0
	133: data_o = 8'b11010110; //set 	22
	134: data_o = 8'b10110111; //branchb	r7				
	135: data_o = 8'b10101111; //seq	r7
	136: data_o = 8'b11001110; //set	14
	137: data_o = 8'b10110111; //branchb	r7

//match
	138: data_o = 8'b11000111; //set	7
	139: data_o = 8'b10010110; //load	r6
	140: data_o = 8'b11000001; //set 	1
	141: data_o = 8'b01110110; //add	$r6,	$r6			
	142: data_o = 8'b11000111; //set	7

	143: data_o = 8'b10011110; //store 	r6			
	144: data_o = 8'b10101111; //seq	r7
	145: data_o = 8'b11001001; //set	9
	146: data_o = 8'b01111111; //add	r7 	r7 9 + 9
	147: data_o = 8'b01111111; //add 	r7 	r7 18 + 18
	148: data_o = 8'b10110111; //branchb 	r7	branchb 34. needs to be 35

//end
	149: data_o = 8'b10001000; //halt
	
//-------------------program 3: Closest pair-----------
	150: data_o = 8'b11010000; //set		16			
	151: data_o = 8'b01111111; //add		$r7,	$r7
	152: data_o = 8'b01111111; //add		$r7,         $r7		  
	153: data_o = 8'b01100111; //add		$r4,	$r7
	154: data_o = 8'b11010011; //set		19	
	155: data_o = 8'b01100100; //add		$r4,	$r4

	156: data_o = 8'b11001000; //set		16			#r4 = 
	157: data_o = 8'b01111111; //add    		$r7,         $r7			#set i = 0
	158: data_o = 8'b01111111; //add		$r7, 	$r7
	159: data_o = 8'b01111111; //add		$r7, 	$r7
	160: data_o = 8'b01000111; //add		$r0,	$r7		#$r0 = 128
	161: data_o = 8'b01011111; //add		$r3,         $r7	 	#$r3 = 255set shortest = 2^8

//OUTERLOOP:

	162: data_o = 8'b11000000; //set		0
	163: data_o = 8'b01111100; //add		$r7,         $r4
	164: data_o = 8'b10101000; //seq                        $r0
	
	165: data_o = 8'b11000000;
	166: data_o = 8'b01110111;
	167: data_o = 8'b11010011; //set		19
	168: data_o = 8'b01110111; //add		$r6, 	$r7	#set 38
	169: data_o = 8'b11000011; //set		3;
	170: data_o = 8'b01110110; //add		$r6, 	$r6	#set 41
	171: data_o = 8'b11110110; //branch $r6;		#end of outer for loop forward 39

	172: data_o = 8'b11000000; //set		0
	173: data_o = 8'b01111000; //add		$r7,	$r0	#move $r0 to $r
	174: data_o = 8'b10010010; //load		$r2		#load [$r2]

	175: data_o = 8'b11000001; //set		1;			# inc i
	176: data_o = 8'b01000000; //add		$r0,	$r0

//INNERLOOP:
   177: data_o = 8'b11000000; //set		0			#store incremented i to k
	178: data_o = 8'b01001000; //add		$r1,	$r0
    
	179: data_o = 8'b11000000;
	180: data_o = 8'b01110111;
	181: data_o = 8'b11010000; //set    		16;			#set i = 0
	182: data_o = 8'b01111111; //add		$r7, 	$r7
	183: data_o = 8'b01111111; //add		$r7, 	$r7
	184: data_o = 8'b01110111; //add		$r6,	$r7		#$r6 = 128	
	185: data_o = 8'b11010100; //set		20
	186: data_o = 8'b01110110; //add		$r6, 	$r6
	187: data_o = 8'b11000000; //set		0
	188: data_o = 8'b01111110; //add		$r7,	$r6
	189: data_o = 8'b10101001; //seq		$r1
	190: data_o = 8'b11011110; //set		30			#go back 21 to OUTERLOOP
	191: data_o = 8'b10110111; //branchb	               $r7				#if reached the end, reset
	192: data_o = 8'b11000000; //set 		0			#load [k]
	193: data_o = 8'b01111001; //add		$r7,	$r1
	194: data_o = 8'b10010101; //load		$r5;
	195: data_o = 8'b11111110; //sub		$r6			$r6 = $r2 - $r5 ( difference)
	196: data_o = 8'b10100110; //absolute		$r6;			#take absolute value of subtraction???
	197: data_o = 8'b11000001; //set		1;			#inc k
	198: data_o = 8'b01001001; //add		$r1,	$r1;
	199: data_o = 8'b11000000; //set		0;
	200: data_o = 8'b01111011; //add		$r7,	$r3
	201: data_o = 8'b10000000; //slt					#branch less than go to IF
	202: data_o = 8'b11000011; //set		3			#(GOTOIF)
	203: data_o = 8'b11110111; //branch		$r7
	204: data_o = 8'b10101111; //seq		$r7
	205: data_o = 8'b11011100; //set		29			#go to innerlooop
	206: data_o = 8'b10110111; //branchb	        $r7			#else re-interate loop

//IF:
	207: data_o = 8'b11000000; //set		0	
	208: data_o = 8'b01011110; //add		$r3,	$r6			#$r3 = new shortest = r6
	209: data_o = 8'b10101111; //seq		$r7				#jump to innerloop
	210: data_o = 8'b11010001; //set		17				#32
	211: data_o = 8'b01111111; //add		$r7,	$r7			#r7 = $r7 +$r7 = 34
	212: data_o = 8'b10110111; //branchb	$r7		

//END:
	213: data_o = 8'b11011110; //set		30
	214: data_o = 8'b01111111; //add		$r7,	$r7			#r7 = r7 + r7 = 30 + 30= 60
	215: data_o = 8'b01110111; //add		$r6,	$r7			#r7 = r7 + r7 = 60 + 60 = 120
	216: data_o = 8'b11000111; //set		7
	217: data_o = 8'b01111110; //add		$r7,	$r6			#r7 = r6 + 7 = 127
	218: data_o = 8'b10011011; //store		$r3;				#[r7] = $r3 
	219: data_o = 8'b10001000; //halt


	default: data_o = 8'hff; // don’t forget this!
    endcase
  end
endmodule
 
