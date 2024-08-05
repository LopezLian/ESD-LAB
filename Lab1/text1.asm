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
    MOV R3, #5
	LDR R0, =N;
	LDR R1, =DST
BACK
	LDR R2, [R0], #4; read
	STR R2, [R1], #4; write
	SUB R3, #1
	CMP R3, #0
	BNE BACK 
	
STOP 
	B STOP
SIZE EQU 5
SHIFTS EQU 2
N DCD 0X12345678, 0x6A, 0x234, 0x49C, 0xA13BC
	AREA mydata, DATA, READWRITE
DST DCD 0,0,0,0,0
	END 