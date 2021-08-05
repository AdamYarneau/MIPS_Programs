# File Name: machine_code_to_assembly.asm
# Author: Adam Yarneau
# Modification History
# This code was extended on November 21, 2018
# Procedures:
# main: The bones of the program, supports almost its entire operations
# TABSUB: Prints a tab charaecter
# COMMASUB:	Prints a comma
# CASHMONEY: Prints a $
# SPACESUB: Prints a space
# NEWLINESUB: Inserts a  new line
# OPENPARSUB: Prints a (
# CLOSEPARSUB: Prints a )
# LOADANDSTORESUB: Outputs the registers in the proper format for sw and lw instructions
# SYSCALLMEMAYBE: Prints only the instruction syscall, with no registers
# BGTZSUB: Outputs the registers in the proper format for bgtz instructions
# JALSUB: Outputs the registers in the proper format for jal instructions

.data
StartOfData: .word 0
StartOfText: .word 0x3000
Data:	.word	
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
12,
1750335520,
1766203493,
1634627426,
543777635,
1651340654,
544436837,
979726945,
10,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
537395200,
537722928,
2376925184,
604635137,
1176768512,
2903113728,
2903113732,
564789246,
2366308352,
2366373892,
23875616,
2903113736,
554172420,
556400639,
488701945,
537133056,
862240,
201329684,
604110858,
12,
278560,
346144,
537133110,
604110852,
12,
2365849600,
604110849,
12,
537133108,
604110852,
12,
554172420,
556400639,
488701943,
65011720,							
Offset:	.word		0,
6,
10,
12,
16,
20,
24,
29,
34,
39,
45,
50,
56,
61,
65,
70,
74,
78,
82,
86,
90,
94,
98,
102,
106,
110,
114,
118,
122,
126,
130,
134,
138,
141,
144,
148,
151,
155,
159,
163,
167,
170,
173,
177,
180,
184,
188,
192,
198,
201,
206,
211,
216,
220,
225,
230,
234,
237,
242,
247,
251,
255,
260,
265,
Name:	.asciiz	"Rtype",
"nop",
"j",
"jal",
"beq",
"bne",
"blez",
"bgtz",
"addi",
"addiu",
"slti",
"sltiu",
"andi",
"ori",
"xori",
"lui",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"lb",
"lh",
"lwl",
"lw",
"lbu",
"lhu",
"lwr",
"nop",
"sb",
"sh",
"swl",
"sw",
"nop",
"nop",
"swr",
"cache",
"ll",
"lwc1",
"lwc2",
"pref",
"nop",
"ldc1",
"ldc2",
"nop",
"sc",
"swc1",
"swc2",
"nop",
"nop",
"sdc1",
"sdc2",
"nop",
NameOfRType:	.asciiz		#Array that holds the name of the R type instruction		
"sll"
"nop",
"srl",
"sra",
"sllv",
"nop",
"sriv",
"srav",
"jr",
"jalr",
"movz",
"movn",
"syscall",
"break",
"nop",
"sync",
"mfhi",
"mthi",
"mflo",
"mtlo",
"nop",
"nop",
"nop",
"nop",
"mult",
"multu",
"div",
"divu",
"nop",
"nop",
"nop",
"nop",
"add",
"addu",
"sub",
"subu",
"and",
"or",
"xor",
"nor",
"nop",
"nop",
"slt",
"sltu",
"nop",
"nop",
"nop",
"nop",
"tge",
"tgeu",
"tlt",
"tltu",
"teq",
"nop",
"tne",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
OffsetOfRType:	.word			#Array that holds the offset of the R type instruction
0,
4,
8,
12,
16,
21,
25,
30,
35,
38,
43,
48,
53,
61,
67,
71,
76,
81,
86,
91,
96,
100,
104,
108,
112,
117,
123,
127,
132,
136,
140,
144,
148,
152,
157,
161,
166,
170,
173,
177,
181,
185,
189,
193,
198,
202,
206,
210,
214,
218,
223,
227,
232,
236,
240,
244,
248,
252,
256,
260,
264,
268,
272,
276,
Newline:	.asciiz	"\n"	#Creates a string variable called Newline to  print out a new line
PNop:		.asciiz	"nop"	#Creates a string variable called Newline to  print out a new line
DotData:	.asciiz	".data"	#Creates a string variable called Newline to  print out a new line
DotText:	.asciiz	".text"	#Creates a string variable called Newline to  print out a new line
DotWord:	.asciiz	".word"	#Creates a string variable called Newline to  print out a new line
DotAsciiz:	.asciiz	".asciiz"	#Creates a string variable called Newline to  print out a new line
GimmeAD:	.asciiz	"D"	#Creates a string variable called Newline to  print out a new line
GimmeAT:	.asciiz	"T"	#Creates a string variable called Newline to  print out a new line
Colon:		.asciiz	":"	#Creates a string variable called Newline to  print out a new line
Comma:		.asciiz	","	#Creates a string variable called Newline to  print out a new line
Tab:		.asciiz	"\t"	#Creates a string variable called Newline to  print out a new line
Space:		.asciiz	" "	#Creates a string variable called Newline to  print out a new line
CashMoney:	.asciiz	"$"	#Creates a string variable called Newline to  print out a new line
OpenParenthe:	.asciiz	"("	#Creates a string variable called Newline to  print out a new line
CloseParenthe:	.asciiz	")"	#Creates a string variable called Newline to  print out a new line
.text
# main:
# Author: Adam Yarneau
# Modification History:
# This code was created on 20 November 2018. 
# Description: Turn machine code into assembly code
# Arguments:
# None
#

Main:

#Storing the address of the arrays
la $s1, Data	#Puts address of the Data array into $s1
la $s2, Offset	#Puts address of the Offset array into $s2
la $s3, Name	#Puts address of the Name array into $s3
la $s4, NameOfRType	#Puts address of the NameOfRType array into $s4
la $s5, OffsetOfRType	#Puts address of the OffsetOfRType array into $s5

#Printing ".data" 
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, DotData	# Register $a0 now has the address of the string DotData
syscall		# Call operating system to print a string

#Loops through the data segemnt printing out the .data for the fib.asm
Dataloop:	#Start of a loop
beq $t0, 1024, doneWithData	# If $t0 == 1024 go to doneWithData:

#Formatting
jal NEWLINESUB	#prints new line

#Prints a "D"
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, GimmeAD	# Register $a0 now has the address of the string Newline
syscall		# Call operating system to print a string

#Combines the offset with the data array
sll $t5, $t0, 2	#Word alignes the offset
add $t5, $t5, $s1 #Combines the offset with the array

#Prints the program counter
li $v0, 1		# Register $v0 now has the correct system call code for printing a string (4)
move $a0, $t5	# Register $a0 now has the address of the string Tab
syscall	#Calls printer

#Prints ":"
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, Colon	# Register $a0 now has the address of the string Tab
syscall		# Call operating system to print a string

#Formatting
jal TABSUB	#Prints a tab

#Prints ".word"
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, DotWord	# Register $a0 now has the address of the string Newline
syscall		# Call operating system to print a string

#Formatting
jal TABSUB	#Prints a tab

#Prints the assembly code for the .data segemnt
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)
li $v0, 1		# Register $v0 now has the correct system call code for printing a string (4)
move $a0, $t5	# Register $a0 now has the address of the string Tab
syscall

#Formatting
jal COMMASUB

#Increments the counter then return to the top of the loop #
add $t0, $t0, 1	# Increment register $t0 by 1
j Dataloop		# Jump back to the top
doneWithData:		#End of the loop
#End of the loop


#Formatting
jal NEWLINESUB

#Printing ".text"
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, DotText	# Register $a0 now has the address of the string Newline
syscall		# Call operating system to print a string

#Formatting
jal NEWLINESUB

#Gets a value to know when to exit the loop 
subi $t9, $s2, 4	# Register $t9 now has the last element in the Data array (by subtracting one word from the offset array)

#Begins loop 
loop:
beq $t4, $t9, end	# If $t4 == $t9 go to end:

#Prints "T"
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, GimmeAT	# Register $a0 now has the address of the string Newline
syscall		# Call operating system to print a string

#Prints the program counter for the .text
sll $t2, $t0, 2
add $t5, $t2, $s1
la $a0, StartOfText	#load base text address into reg
lw $a0, ($a0)		#load word of current address
add $a0, $a0, $t0	#increment address by PC
li $v0, 1		# Register $v0 now has the correct system call code for printing a string (4)
syscall

#Prints ":"
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, Colon	# Register $a0 now has the address of the string Tab
syscall		# Call operating system to print a string

#Formatting
jal TABSUB

#Gets opcode from the Data array 
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
srl $s0, $t5, 26	 	# Register $s0 Now contains the opcode of $t5 by shifting the data over by 26 bits

#Branches if the instruction is of type F or type R
beq $s0, 0, OpCodeIsR	#If the opcode is 0, then it jumps to OpCodeIsR
beq $s0, 17, OpCodeIsF	#If the opcode is 17, then it jumps to OpCodeIsR

#Jumps if the opcode is neither
j OpCodeIsNonR

#Landing place for some functions
JumpHere:

#Formatting
jal NEWLINESUB	#Prints a new line

#Increments the counter then return to the top of the loop #
add $t0, $t0, 1	# Increment register $t0 by 1
j loop		# Jump back to the top
end:		#End of the loop

#Ends the program #
li $v0, 10	# Register $v0 now has the correct system call code for exiting a program (10)
syscall		# Call operating system to exit the program
#END OF PROGRAM

OpCodeIsNonR:

#Gets the offset value from the Offset array #
sll $s0, $s0, 2		 # Register $s0 now has the opcode multiplied by 4, by shifting left 2 bits
add $t5, $s2, $s0    	# Register $t5 now has the combined form of the address of Offset array and the index we want to access
lw $t5, 0($t5)       	# Register $t5 now has the offset value from the Offset array

#branches if the instruction is either lw, sw, bgtz, or jal
beq $t5, 177, LOADANDSTORESUB
beq, $t5, 148, LOADANDSTORESUB
beq, $t5, 29, BGTZSUB
beq, $t5, 12, JALSUB

#Gets the String to print out from the Name array #
add $t5, $s3, $t5	# Register $t5 now has the combined form of the address of Name array and the index we want to access
la $t6, 0($t5)		# Register $t6 now has what was located in that specific part of the Name array

#Prints the string from the Name array #
li $v0, 4		# Register $v0 now has the correct system call code for printing string (4)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print a string

#Formatting
jal TABSUB	#Prints a tab
jal CASHMONEY	#Prints $

#Gets destination register
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 11		#Removes the opcode
srl $t6, $s0, 27		#Removes a everthing other than the register

#Print destination register
li $v0, 1		# Register $v0 now has the correct system call code for printing an int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Formatting
jal COMMASUB	#Prints ,
jal SPACESUB	#Prints a space
jal CASHMONEY	#Prints $

#gets the source register
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 6	#Shifts to get rid of opcode
srl $t6, $s0, 27	#shfits to get rid of everything that isint the source register

#Prints the source register
li $v0, 1		# Register $v0 now has the correct system call code for printing and int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Formatting
jal COMMASUB	#Prints ,
jal SPACESUB	#Prints a space

#gets the immediate value
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 16		#Removes the opcode
sra $t6, $s0, 16		#Removes a everthing other than the register

#Print immediate value
li $v0, 1		# Register $v0 now has the correct system call code for printing and int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Jumps back to main, to move onto the next element
j JumpHere

OpCodeIsR:
#Getting the instruction name
andi $t7, $t5, 63	#Register t5 now has function code
sll $t7, $t7,  2		#Register t5 now has function code, but word aligned
add $t7, $s5, $t7	#Register t5 now has the address of s5 plus the word aligned function code
lw $t7, 0($t7)      	#Register $t7 now has the offset value from the Offset array
add $t8, $s4, $t7	#Register t8 now has the address of s4 plus the offset value
la $t6, 0($t8)		#Register t6 now has the literal word from the name array

#Printing the instruction name
li $v0, 4		# Register $v0 now has the correct system call code for printing string (4)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print a string

#Branches if the instruction is syscall, since it needs no registers
beq $t7, 53, JumpHere

#Formatting
jal TABSUB	#Prints a tab
jal CASHMONEY	#Prints $

#gets the destination register
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 16		#Removes the opcode
sra $t6, $s0, 27		#Removes a everthing other than the register

#Prints the destination register
li $v0, 1		# Register $v0 now has the correct system call code for printing and int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Formatting
jal COMMASUB	#Prints ,
jal SPACESUB	#Prints space
jal CASHMONEY	#Prints $

#Gets source register
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 6		#Removes the opcode
srl $t6, $s0, 27		#Removes a everthing other than the register

#Prints source register
li $v0, 1		# Register $v0 now has the correct system call code for printing an int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Formatting
jal COMMASUB	#Prints ,
jal SPACESUB	#Prints space
jal CASHMONEY	#Prints $

#gets the third register
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 11	#Shifts to remove the opcode
srl $t6, $s0, 27	#Shifts to remove everything other than the thrid register

#Prints the thrid register
li $v0, 1		# Register $v0 now has the correct system call code for printing and int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Jumps back to main, to move onto the next element
j JumpHere

# CASHMONEY:
# Author: Adam Yarneau
# Modification History
# This code was created on 20 November 2018. 
# Description: Prints a $
# Arguments:
#None
CASHMONEY:
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, CashMoney	# Register $a0 now has the address of the string CashMoney
syscall		# Call operating system to print a string
jr $ra		#Return to the original function call

# COMMASUB:
# Author: Adam Yarneau
# Modification History
# This code was created on 20 November 2018. 
# Description: Prints a comma
# Arguments:
#None
COMMASUB:
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, Comma	# Register $a0 now has the address of the string Comma
syscall		# Call operating system to print a string
jr $ra		#Return to the original function call

# SPACESUB:
# Author: Adam Yarneau
# Modification History
# This code was created on 20 November 2018. 
# Description: Prints a space
# Arguments:
#None
SPACESUB:
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, Space	# Register $a0 now has the address of the string Space
syscall		# Call operating system to print a string
jr $ra		#Return to the original function call

# NEWLINESUB:
# Author: Adam Yarneau
# Modification History
# This code was created on 20 November 2018. 
# Description: Inserts a new line
# Arguments:
#None
NEWLINESUB:
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, Newline	# Register $a0 now has the address of the string Newline
syscall		# Call operating system to print a string
jr $ra		#Return to the original function call

# TABSUB:
# Author: Adam Yarneau
# Modification History
# This code was created on 20 November 2018. 
# Description: Prints a tab character
# Arguments:
#None
TABSUB:	#Prints a tab
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, Tab	# Register $a0 now has the address of the string Tab
syscall		# Call operating system to print a string
jr $ra		#Return to the original function call

# OPENPARSUB:
# Author: Adam Yarneau
# Modification History
# This code was created on 20 November 2018. 
# Description: Prints a (
# Arguments:
#None
OPENPARSUB:
li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, OpenParenthe	# Register $a0 now has the address of the string OpenParenthe
syscall		# Call operating system to print a string
jr $ra		#Return to the original function call

# CLOSEPARSUB:
# Author: Adam Yarneau
# Modification History
# This code was created on 20 November 2018. 
# Description: Prints a )
# Arguments:
#None
CLOSEPARSUB:

li $v0, 4		# Register $v0 now has the correct system call code for printing a string (4)
la $a0, CloseParenthe	# Register $a0 now has the address of the string CloseParenthe
syscall		# Call operating system to print a string
jr $ra		#Return to the original function call

# LOADANDSTORESUB:
# Author: Adam Yarneau
# Modification History
# This code was created on 20 November 2018. 
# Description: Outputs the registers in the proper format for sw and lw instructions
# Arguments:
#None
LOADANDSTORESUB:

#Loading name
add $t5, $s3, $t5	# Register $t5 now has the combined form of the address of Name array and the index we want to access
la $t6, 0($t5)		# Register $t6 now has what was located in that specific part of the Name array

#Printing name
li $v0, 4		# Register $v0 now has the correct system call code for printing string (4)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print a string

#Formatting
jal TABSUB	#Prints a tab
jal CASHMONEY	#Prints $

#Getting destination register
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 11		#Removes the opcode
sra $t6, $s0, 27		#Removes a everthing other than the register

#Printing destination register
li $v0, 1		# Register $v0 now has the correct system call code for printing and int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Formatting
jal COMMASUB	#Prints comma
jal SPACESUB	#Prints space

#Getting the offset value
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 16		#Shifts to remove the opcode
sra $t6, $s0, 16		#Shfits to remove everything other than the offset value

#Printing offset value
li $v0, 1		# Register $v0 now has the correct system call code for printing and int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Formatting
jal OPENPARSUB	#Prints (
jal CASHMONEY	#Prints $

#Getting Source register
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 6
sra $t6, $s0, 27

#Printing Source register
li $v0, 1		# Register $v0 now has the correct system call code for printing and int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Formatting
jal CLOSEPARSUB	#Prints )

#Jumps to print a newline and move on in the array
j JumpHere

# SYSCALLMEMAYBE:
# Author: Adam Yarneau
# Modification History
# This code was created on 20 November 2018. 
# Description: Prints only the instruction syscall, with no registers
# Arguments:
#None
SYSCALLMEMAYBE:

#Getting the string to output
add $t5, $s5, $t5	#Register t5 now has the address of s5 plus the word aligned function code
lw $t5, 0($t5)      	#Register $t7 now has the offset value from the Offset array
add $t8, $s4, $t7	#Register t8 now has the address of s4 plus the offset value
la $t6, 0($t8)		#Register t6 now has the literal word from the name array
add $t5, $s3, $t5	# Register $t5 now has the combined form of the address of Name array and the index we want to access
la $t6, 0($t5)		# Register $t6 now has what was located in that specific part of the Name array

#Printing string
li $v0, 4		# Register $v0 now has the correct system call code for printing string (4)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print a string

#Jumps to print a newline and move on in the array
j JumpHere

#Printing Nop
OpCodeIsF:
la $t6, PNop	#Loads the address of the variable Pnop
li $v0, 4		# Register $v0 now has the correct system call code for printing string (4)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print a string

#Jumps to print a newline and move on in the array
j JumpHere		#Jumps to print the string from the name array

# BGTZSUB:
# Author: Adam Yarneau
# Modification History
# This code was created on 20 November 2018. 
# Description: Outputs the registers in the proper format for bgtz instructions
# Arguments:
#None
BGTZSUB:
#Loading name
add $t5, $s3, $t5	# Register $t5 now has the combined form of the address of Name array and the index we want to access
la $t6, 0($t5)		# Register $t6 now has what was located in that specific part of the Name array

#Printing name
li $v0, 4		# Register $v0 now has the correct system call code for printing string (4)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print a string

#Formatting
jal TABSUB	#Prints a tab
jal CASHMONEY

#Getting destination register
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 6		#Removes the opcode
sra $t6, $s0, 27		#Removes a everthing other than the register

#Printing destination register
li $v0, 1		# Register $v0 now has the correct system call code for printing and int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Formatting
jal COMMASUB
jal SPACESUB

#Getting the offset value
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 16
sra $t6, $s0, 16

#Printing offset value
li $v0, 1		# Register $v0 now has the correct system call code for printing and int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Jumps to print a newline and move on in the array
j JumpHere

# JALSUB:
# Author: Adam Yarneau
# Modification History
# This code was created on 20 November 2018. 
# Description: Outputs the registers in the proper format for jal instructions
# Arguments:
#None
JALSUB:
#Loading name
add $t5, $s3, $t5	# Register $t5 now has the combined form of the address of Name array and the index we want to access
la $t6, 0($t5)		# Register $t6 now has what was located in that specific part of the Name array

#Printing name
li $v0, 4		# Register $v0 now has the correct system call code for printing string (4)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print a string

#Formatting
jal SPACESUB

#Getting the target
add $t3, $t0, 0		# Register $t3 is now the index value (not multiplied by 4), and incrememnted by 1
sll $t3, $t3, 2		# Register $t3 now has the index multiplied by 4
add $t4, $s1, $t3    	# Register $t4 now has the combined form of the address of Data array and the index we want to access
lw $t5, 0($t4)       	# Register $t5 now has what was located in that specific part of the array
sll $s0, $t5, 6
sra $t6, $s0, 4

#Printing target
li $v0, 1		# Register $v0 now has the correct system call code for printing and int (1)
move $a0, $t6	# Register $a0 now has the value of register $t6
syscall		# Call operating system to print an integer

#Jumps to print a newline and move on in the array
j JumpHere

