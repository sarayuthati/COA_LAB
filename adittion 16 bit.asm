ORG 100h
NUM1 DW 1234h 
NUM2 DW 5678h 
START:
MOV AX, NUM1 
ADD AX, NUM2 
MOV BX, AX 
MOV AH, BH 
SHR AH, 4 
ADD AH, 30h 
CMP AH, 39h 
JLE PRINT_HIGH_NIBBLE                                              w
ADD AH, 7 
PRINT_HIGH_NIBBLE:
MOV DL, AH 
MOV AH, 02h
INT 21h
MOV AH, BH 
AND AH, 0Fh 
ADD AH, 30h 
CMP AH, 39h 
JLE PRINT_LOW_NIBBLE
ADD AH, 7 
PRINT_LOW_NIBBLE:
MOV DL, AH 
MOV AH, 02h 
INT 21h
MOV AH, BL 
SHR AH, 4 
ADD AH, 30h 
CMP AH, 39h
JLE PRINT_HIGH_NIBBLE2
ADD AH, 7 
PRINT_HIGH_NIBBLE2:
MOV DL, AH 
MOV AH, 02h 
INT 21h
MOV AH, BL 
AND AH, 0Fh 
ADD AH, 30h 
CMP AH, 39h 
JLE PRINT_LOW_NIBBLE2
ADD AH, 7 
PRINT_LOW_NIBBLE2:
MOV DL, AH 
MOV AH, 02h 
INT 21h
MOV AH, 4Ch