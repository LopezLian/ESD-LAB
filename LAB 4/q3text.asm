#2-digit hex to equivalent BCD

AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0, =N
	LDR R1,[R0]
UP2	CMP R1, #0
	BEQ EXIT2 
	MOV R3, #0
UP1
	CMP R1, #0xA
	BLO EXIT1
	SUB R1, #0xA
	ADD R3, #1
	B UP1
	
EXIT1 
	LSL R1, R2
	ADD R5, R1
	ADD R2, #4
	MOV R1, R3 
	B UP2
	
EXIT2 
	LDR R4, =DST
	STR R5, [R4]

STOP 
	B STOP
N DCD 0XFE
	AREA mydata, DATA, READWRITE
DST DCD 0
	END

	
