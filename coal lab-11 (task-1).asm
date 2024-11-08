.model small 
.stack 100h
.data 
.code
main proc
    
    mov cx,10
    L1:
    mov ah,1
    int 21h
    mov bx, ax
    
   
    push bx
     
    loop L1
    
    mov dl,10
    mov ah,2
    int 21h
   
    mov dl,13
    mov ah,2 
    int 21h
   
    
    mov cx,10
    L2: 
    pop bx
    mov dx,bx
    
    mov ah,02
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
   
   mov dl,13
   mov ah,2 
   int 21h
   loop L2   
   
   
    
mov ah,4ch
int 21h    
end main
main endp