CODE SEGMENT
        ASSUME CS:CODE
START:  
        MOV AL,90H   ;10010000
        OUT 86H,AL
WHILE:  
        IN  AL,80H 
        NOT AL  
        OUT 82H,AL       
        JMP WHILE
        MOV AH,4CH
        INT 21H
CODE ENDS
    END START