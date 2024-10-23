ORG 100h               
MOV AH, 09h            
MOV DX, OFFSET msg_input   
INT 21h  
              
MOV AH, 01h            
INT 21h                
MOV BL, AL             

MOV AH, 09h            
MOV DX, OFFSET msg_output 
INT 21h                

MOV DL, BL            
MOV AH, 02h           
INT 21h                

MOV AH, 4Ch            
INT 21h                

msg_input  DB 'Enter the character: $'  
msg_output DB 0Dh, 0Ah, 'The output is: $'  