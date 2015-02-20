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
	16: data_o = 8'b11000110; //set	6		
	17: data_o = 8'b11110111; //branch	$r7		

	18: data_o = 8'b11000000; //set	0
	19: data_o = 8'b01111011; //add	$r7, $r3	
	20: data_o = 8'b01011000; //add	$r3, $r0
	21: data_o = 8'b11000000; //set	0	
	22: data_o = 8'b01111100; //add	$r7, $r4	
	23: data_o = 8'b01110001; //add	$r4, $r1	
//Equals0:				
	24: data_o = 8'b11000000; //set	0	
	25: data_o = 8'b01111101; //add	$r7, $r5	
	26: data_o = 8'b00110000; //and	$r6, $r0	
	27: data_o = 8'b11000000; //set	0		
	28: data_o = 8'b10101110; //seq	$r6		
	29: data_o = 8'b11000010; //set	2			
	30: data_o = 8'b11110111; //branch	$r7		
	31: data_o = 8'b11000001; //set	1		
	32: data_o = 8'b00110111; //and	$r6, $r7	
//JstShft:
	33: data_o = 8'b11000001; //set	1		
	34: data_o = 8'b11100001; //sll	$r1		
	35: data_o = 8'b11100000; //sll	$r0		
	36: data_o = 8'b11101010; //srl	$r2		
	37: data_o = 8'b00111110; //and	$r7, $r6	
	38: data_o = 8'b01001001; //add	$r1, $r1	
	39: data_o = 8'b11000000; //set	0	
	40: data_o = 8'b01110010; //add	$r6, $r2
	41: data_o = 8'b10101110; //seq	$r6		
	42: data_o = 8'b11010010; //set	18	
	43: data_o = 8'b00110111; //and	$r6, $r7	
	44: data_o = 8'b11000000; //set	0		
	45: data_o = 8'b11000001; //set	1	
	46: data_o = 8'b11100110; //sll	$r6			
	47: data_o = 8'b10110110; //branchb	$r6	
	 			
	48: data_o = 8'b01000011; //add	$r0, $r3
	49: data_o = 8'b01001100; //add	$r1, $r4	
	50: data_o = 8'b11000011; //set	3	
	51: data_o = 8'b10010010; //load	$r2		
//Mul2:
		
	52: data_o = 8'b11000001; //set	1		
	53: data_o = 8'b00110010; //and	$r6, $r2	
	54: data_o = 8'b11000000; //set	0	
	55: data_o = 8'b10101110; //seq	$r6	
	56: data_o = 8'b11000110; //set	6	
	57: data_o = 8'b11110111; //branch	r7	

	58: data_o = 8'b11000000; //set	0
	59: data_o = 8'b01111011; //add	$r7, $r3	
	60: data_o = 8'b01011000; //add	$r3, $r0	
	61: data_o = 8'b11000000; //set	0	
	62: data_o = 8'b01111100; //add	$r7, $r4	
	63: data_o = 8'b01100001; //add	$r4, $r1	
//Equals02:				
	64: data_o = 8'b11000000; //set	0		
	65: data_o = 8'b01111101; //add	$r7, $r5	
	66: data_o = 8'b00110000; //and	$r6, $r0	
	67: data_o = 8'b11000000; //set	0	
	68: data_o = 8'b10101110; //seq	$r6	
	69: data_o = 8'b11000000; //set	2	
	70: data_o = 8'b11110111; //branch	$r7		
	71: data_o = 8'b11000000; //set	1	
	72: data_o = 8'b00110111; //and	$r6, $r7
//JstShft2:		
	73: data_o = 8'b11000000; //set	1	
	74: data_o = 8'b11100001; //sll	$r1		
	75: data_o = 8'b11100000; //sll	$r0		
	76: data_o = 8'b11101010; //srl	$r2			
	77: data_o = 8'b00111110; //and	$r7, $r6	
	78: data_o = 8'b01001001; //add	$r1, $r1
	79: data_o = 8'b11000000; //set	0			
	80: data_o = 8'b01110010; //add	$r6, $r2	
	81: data_o = 8'b10101110; //seq	$r6			
	82: data_o = 8'b11010010; //set	18			
	83: data_o = 8'b00110111; //and	$r6, $r7	
	84: data_o = 8'b11000000; //set	0		
	85: data_o = 8'b11000001; //set	1		
	86: data_o = 8'b11100110; //sll	$r6			
	87: data_o = 8'b10110110; //branchb	$r6		

	88: data_o = 8'b11000100; //set	4			
	89: data_o = 8'b10011100; //store	$r4		
	90: data_o = 8'b11000101; //set	5
	91: data_o = 8'b10011011; //store	$r3	
	92: data_o = 8'b10001000; //halt

//--------------------program 2 String match--------------------------
	93: data_o = 8'b11000110; //set	6
	94: data_o = 8'b10010001; //load	$r1				#$r1 = $r15 = [6]

	95: data_o = 8'b11000000; //set 	0
	96: data_o = 8'b01100111; //add	$r4,	$r7			#$r4 = 0
	97: data_o = 8'b01110111; //add	$r6,	$r7			#$r6 = 0
	98: data_o = 8'b01000111; //add	$r0,	$r7			#$r0 = 0
	99: data_o = 8'b01011111; //add	$r3,	$r7			#$r0 = 0

	100: data_o = 8'b11011111; //set	31				#$r3 = 31
	101: data_o = 8'b01011011; //add	$r3,	$r3

//LOADBYTE:
	102: data_o = 8'b11000001; //set	1				#$r3 = $r3 + 1
	103: data_o = 8'b01011011; //add	$r3,	$r3

	104: data_o = 8'b11000000; //set	0
	105: data_o = 8'b01000111; //add	$r0,	$r7			#$r0 = 0


	106: data_o = 8'b11011000; //set	24				#change
	107: data_o = 8'b01111111; //add	$r7, 	$r7			#$r7 = 24 + 24 = 48
	108: data_o = 8'b01111111; //add	$r7, 	$r7			#$r7 = 48 + 48 = 96
	109: data_o = 8'b10101011; //seq	$r3				#chec, if $r3 == 96
	110: data_o = 8'b11011000; //set	24				#jump forward 29 instructions
	111: data_o = 8'b11110111; //branch		$r7			#if finished going through 64 bytes
						//#if $r3 == 32+64 go to end

	112: data_o = 8'b11000000; //set	0				#$r7 = 0
	113: data_o = 8'b01111011; //add	$r7,$r3				$r7 = $r3
	114: data_o = 8'b10010010; //load	$r2				#load	$r2, $r3

//COMPARE:
	115: data_o = 8'b11001111; //set	15				#and	$r14, $r2, 15
	116: data_o = 8'b00111010; //and	$r7,	$r2			#get the lower 4 bits of the byte store in r7

	117: data_o = 8'b10101001; //seq	$r1				#check if $r1 same as $r7
	118: data_o = 8'b11001010; //set	10				#jump foward 10
	119: data_o = 8'b11110111; //branch		$r7			#(go to match)

	120: data_o = 8'b11000001; //set	1				#srl	$r2, $r2, 1
	121: data_o = 8'b11101010; //srl	$r2
						//#set1 from above
	122: data_o = 8'b01000000; //add	$r0,	 $r0			#inc $r0

	123: data_o = 8'b11000101; //set	5					
	124: data_o = 8'b10101000; //seq	$r0				#check if $r0 == 5
	125: data_o = 8'b11011001; //set	25				#jump back 28 to LOADBYTE
	126: data_o = 8'b10110111; //branchb	$r7			#if $r6 is 5, do next byte

	127: data_o = 8'b10101111; //seq	$r7				
	128: data_o = 8'b11001111; //set	15
	129: data_o = 8'b10110111; //branchb	$r7			#jump to compare

//MATCH:
	130: data_o = 8'b11000001; //set	1				#add	$r4, $r4, 1
	131: data_o = 8'b01000100; //add	$r4,	$r4
			
	132: data_o = 8'b10101111; //seq	$r7				#beq	$r0, $r0, LOADBYTE


	133: data_o = 8'b11010001; //set 	17
	134: data_o = 8'b01111111; //add	$r7,	$r7			#jump 34
	135: data_o = 8'b10110111; //branchb	$r7			#(go to LOADBYTE)

//END:
	136: data_o = 8'b11000111; //set	7				#store	$r4, [7]
	137: data_o = 8'b10011100; //store	$r4
	138: data_o = 8'b10001000; //halt
	
//-------------------program 3: Closest pair-----------
	139: data_o = 8'b11000000; //set		0			#r4 =  0
	140: data_o = 8'b01100111; //add		$r4,	$r7
	 
	141: data_o = 8'b11010000; //set    		16;			#set i = 0
	142: data_o = 8'b01111111; //add		$r7, 	$r7
	143: data_o = 8'b01111111; //add		$r7, 	$r7
	144: data_o = 8'b01000111; //add		$r0,	$r7		#$r0 = 128
	145: data_o = 8'b01011111; //add		$r3,     $r7	 	#$r3 = 256set shortest = 2^8

//OUTERLOOP:

	146: data_o = 8'b11010011; //set		19
	147: data_o = 8'b10101100; //seq		$r4
	148: data_o = 8'b01110111; //add		$r6,	$r7
	149: data_o = 8'b11000001; //set		1
	150: data_o = 8'b01110110; //add		$r6, 	$r6	#set 39
	151: data_o = 8'b11110110; //branch $r6;		#end of outer for loop forward 39

	152: data_o = 8'b11000000; //set		0
	153: data_o = 8'b01000111; //add		$r0,	$r7	#move $r0 to $r
	154: data_o = 8'b10010010; //load		$r2		#load [$r2]

	155: data_o = 8'b11000001; //set		1;			# inc i
	156: data_o = 8'b01000000; //add		$r0,	$r0
//INNERLOOP:
    	157: data_o = 8'b11000000; //set		0			#store incremented i to k
	158: data_o = 8'b01001000; //add		$r1,	$r0

	159: data_o = 8'b11010000; //set    		16;			#set i = 0
	160: data_o = 8'b01111111; //add		$r7, 	$r7
	161: data_o = 8'b01111111; //add		$r7, 	$r7
	162: data_o = 8'b01110111; //add		$r6,	$r7		#$r6 = 128	
	163: data_o = 8'b11010100; //set		20
	164: data_o = 8'b01110110; //add		$r6, 	$r6

	165: data_o = 8'b11000000; //set		0
	166: data_o = 8'b01111110; //add		$r7,	$r6

	167: data_o = 8'b10101001; //seq		$r1
	168: data_o = 8'b11011000; //set		24			#go back 21 to OUTERLOOP
	169: data_o = 8'b10110111; //branchb	$r7				#if reached the end, reset
	
	170: data_o = 8'b11000000; //set 		0			#load [k]
	171: data_o = 8'b01111001; //add		$r7,	$r1
	172: data_o = 8'b10010101; //load		$r5;


	173: data_o = 8'b11111110; //sub		$r6			$r6 = $r2 - $r5 ( difference)
	174: data_o = 8'b10100110; //absolute		$r6;			#take absolute value of subtraction???
	
	175: data_o = 8'b11000001; //set		1;			#inc k
	176: data_o = 8'b01001001; //add		$r1,	$r1;

	177: data_o = 8'b11000000; //set		0;
	178: data_o = 8'b01111011; //add		$r7,	$r3
	179: data_o = 8'b10000000; //slt					#branch less than go to IF
	180: data_o = 8'b11000011; //set		3			#(GOTOIF)
	181: data_o = 8'b11110111; //branch		$r7

	182: data_o = 8'b10101111; //seq		$r7
	183: data_o = 8'b11011011; //set		27			#go to innerlooop
	184: data_o = 8'b10110111; //branchb	$r7			#else re-interate loop

//IF:
	185: data_o = 8'b11000000; //set		0	
	186: data_o = 8'b01011110; //add		$r3,	$r6			#$r3 = new shortest = r6
	187: data_o = 8'b10101111; //seq		$r7				#jump to innerloop
	188: data_o = 8'b11010001; //set		17				#32
	189: data_o = 8'b01111111; //add		$r7,	$r7			#r7 = $r7 +$r7 = 34
	190: data_o = 8'b10110111; //branchb	$r7		

//END:
	191: data_o = 8'b11011110; //set		30
	192: data_o = 8'b01111111; //add		$r7,	$r7			#r7 = r7 + r7 = 30 + 30= 60
	193: data_o = 8'b01111111; //add		$r6,	$r7			#r7 = r7 + r7 = 60 + 60 = 120
	194: data_o = 8'b11000111; //set		7
	195: data_o = 8'b01111110; //add		$r7,	$r6			#r7 = r6 + 7 = 127
	196: data_o = 8'b10011011; //store		$r3;				#[r7] = $r3 
	197: data_o = 8'b10001000; //halt
	default: data_o = 8'hff; // don’t forget this!
    endcase
  end
endmodule
 