ORG 0000H

MAIN:
    MOV P1, #00H

LOOP:

; GREEN
    SETB P1.0
    CLR  P1.1
    CLR  P1.2
    ACALL DELAY_5

; YELLOW
    CLR  P1.0
    SETB P1.1
    CLR  P1.2
    ACALL DELAY_5

; RED
    CLR  P1.0
    CLR  P1.1
    SETB P1.2
    ACALL DELAY_5

    SJMP LOOP

DELAY_5:
	mov r3,#14
	l3:mov r1,#0ffh
	l1:mov r2,#0ffh
	l2:nop
	nop
	nop
	djnz r2,l2
	djnz r1,l1
	djnz r3,l3
	ret



END