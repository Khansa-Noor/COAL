.model small 
.stack 100h
.data 
arr db ?
.code
main proc
    
    mov ax,@data
    mov dx,ax
    mov si,offset arr
    
    mov cx,10 
    
    L1:
    mov ah,1
    int 21h
    mov si, ax
    
   
    push si
     
    loop L1
    
    mov dl,10
    mov ah,2
    int 21h
   
    mov dl,13
    mov ah,2 
    int 21h
   
    
    mov cx,10 
    
    L2: 
    pop dx
    
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