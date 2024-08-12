#2-digit BCD to equivalent HEXA
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
	LDR R6, =DST
	LDR R0,[R0] 
	AND R1,R0,#0xF
	LSR R2,R0,#4
	
	MOV R3, #0xA
	MLA R5,R3,R2,R1
	STR R5, [R6]

STOP 
	B STOP
N DCD 0X97
	AREA mydata, DATA, READWRITE
DST DCD 0
	END
