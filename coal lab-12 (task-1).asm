.model small
.stack 100h
.data  

num1 db 'My name is Khansa Noor. Iam 20 years old.I am a computer science student at Riphah International University.$'
.code
main Proc 
 
    call intro
    call space

    
         
mov ah,4ch
int 21h
main endp    

intro proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset num1
    mov ah,9
    int 21h 
    ret  
    
intro endp
           
           
           
space proc
    mov dx,10
    mov ah,2
    int 21h  
    
    mov dx,13
    mov ah,2
    int 21h
    ret 
space endp
       

end main