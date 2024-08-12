1.Write an ARM assembly language program to covert 2-digit hexadecimal number in ASCII
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
	
	CMP R1, #0xA
	ADDLO R1, #0x30
	ADDHS R1, #0x37
	
	CMP R2, #0xA
	ADDLO R2, #0x30
	ADDHS R2, #0x37
	
	STR R1, [R6], #1
	STR R2, [R6]
	

STOP 
	B STOP
N DCD 0X2A
	AREA mydata, DATA, READWRITE
DST DCD 0
	END
