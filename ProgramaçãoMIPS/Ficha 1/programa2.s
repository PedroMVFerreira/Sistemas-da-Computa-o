
# programa2.s

	.data		# Data declaration section
A:	.word	14 
B:	.word	5 
C:	.word	0 

	.text

main:			# Start of code section
	
	lw $t0, A
	lw $t1, B
	add $s1, $t0, $t1 # comenta'rio!!!!
	sw $s1, C

# END OF PROGRAM
