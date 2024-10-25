.model small
.stack 100h
.data  

arr db 10,50,35,80,90                  ;task-3
max db ?
min db ?    
max1 db 10,13, 'Maximum Value: $'
min1 db 10,13, 'Minimum Value: $'

.code
main Proc
    mov ax,@data
    mov ds,ax  
    
    mov si,offset arr  
    mov cx,5           
    mov bl,[si] 
    
    mov max,bl
    mov min,bl
    
    L:
    
    mov bl,[si]  
    
    cmp bl,max
    jbe minimum
    mov max,bl
    
    minimum:
    cmp bl, min
    ja skip
    mov min,bl
    
    skip:
    inc si
    loop L 
    
    mov dl,max1
    mov dx, offset max1
    
    mov ah,09
    int 21h
    
    mov al,max
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
    
    mov dl,min1
    mov dx, offset min1
    
    mov ah,09
    int 21h
    
    mov al,min
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
            
            
            
    
mov ah,4ch
int 21h
main endp
end main