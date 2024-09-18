org 100h
num1 db 18h     ;(24) - dividend
num2 db 04h     ;(4) - divisor
start:
    mov al, num1      
    mov bl, num2      
    xor ah, ah        
    div bl            
    mov bh, al       
    mov bl, ah        
    
    mov ah, bh
    and ah, 0F0h      
    shr ah, 4         
    call division

    mov ah, bh
    and ah, 0Fh       
    call division

 
    mov ah, bl
    and ah, 0F0h      
    shr ah, 4         
    call division

    
    mov ah, bl
    and ah, 0Fh       
    call division

    
    mov ah, 4Ch       
    int 21h

division:
    add ah, 30h       
    cmp ah, 39h
    jle print_now
    add ah, 7         
    
print_now:
    mov dl, ah        
    mov ah, 02h       
    int 21h
    ret               