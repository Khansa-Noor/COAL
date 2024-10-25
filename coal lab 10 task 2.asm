.model
.stack 100h
.data 
     arr DB 49,50,51,52,53     ;task-2
   
.code 
main Proc 
    mov ax,@data
    mov ds,ax      
    
    
    mov si,offset arr
    mov cx,5
    
    
   L1:
   mov dl,[si+4]
   mov ah,2
   int 21h
   
   dec si
   mov dx,[si+3]
   loop L1
    
    

 mov ah,4ch
 int 21h
 main endp 
 end main