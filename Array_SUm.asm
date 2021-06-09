.model small
.stack 100h
.data
 
    array db 1,2,3,4,5,6,7,8,9;
    newl db 010,013,"$" 
    msg db "add 2 consequetive number :" 
    space db "  $"
    
.code
main proc  
    
    mov AX,@DATA
    mov DS,AX
    
    mov DI,0 
    
    lea dx,msg
    mov ah,09h
    int 21h 
    
    mov CX,9
    
    SUM: 
         
        mov al,array[SI]
        ADD al,[SI+1]
        ADD al,48
        
        mov ah,2
        mov dl,al
        int 21h
        
        lea dx,space
        mov ah,09h
        int 21h
        
        INC SI
        LOOP SUM
     
     exit : 
        
        mov ah,4ch
        int 21h
        
     main endp
end main
    
    
    
    