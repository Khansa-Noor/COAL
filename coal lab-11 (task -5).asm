.model small
.stack 100h
.data  
 
 arr db 10,20,30,40,50
 
.code
main Proc
  mov ax,@data
    mov ds,ax  
    
    mov si,offset arr 
    mov cx,5
    
    L1:
    mov bx,[si]
    push bx
    inc si
    loop L1   
    
    mov cx,5
    
    L2:
    mov ax,bx
    pop ax 
    AAM
    add ah,30h
    add al,30h
    
    mov bh,ah
    mov bl,al
    
    mov dl,bh      
    mov ah,02
    int 21h
    
    mov dl,bl 
    mov ah,02    
    int 21h 
    
    mov dl,10
    mov ah,02
    int 21h
    
    mov dl,13
    mov ah,02
    int 21h
    loop L2
   
     
     
mov ah,4ch
int 21h
main endp
end main