.model small
.stack 100h
.data
.code
main proc
   
    mov cx,10
    pushloop:
    mov ah,1
    int 21h
    mov bx, ax
   
 
   
    and bl,1
   
    jnz label1
    push bx
     
    label1:
    loop pushloop  
   
    mov dl,10
    mov ah,2
   int 21h
   
   mov dl,13
   mov ah,2
   int 21h
   
   
    mov cx,10
    poploop:
    pop bx
    mov ax,6
    cmp bx,ax
    jge label2
               
    mov dx,bx
    mov ah,02
    int 21h
   
    mov dl,10
    mov ah,2
   int 21h
   
   mov dl,13
   mov ah,2
   int 21h
   
   
   label2:
   loop poploop
   
mov ah,4ch
int 21h
   
end main
main endp