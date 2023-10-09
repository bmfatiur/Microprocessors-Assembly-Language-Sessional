.model small
.stack 100h
.data
var1 db '1st number $'
var2 db 10,13,'2nd number $'
res db 10,13,'Result $' 
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,var1
    int 21h
    
    ;input 1
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,var2
    int 21h
    
    ;input 2
    mov ah,1
    int 21h
    mov bh,al
    
    add bl,bh
    sub bl,48
    
    mov ah,9
    lea dx,res ;lea->load effective address
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:   mov ah,4ch
            int 21h
            main endp
end main