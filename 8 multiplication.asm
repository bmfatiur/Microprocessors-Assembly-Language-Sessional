.model small
.stack 100h
.data
num1 dw ?
num2 dw ?
a db ?
b db ?
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
    sub al,48
    mov a,al
    
    mov ah,9
    lea dx,var2
    int 21h
    
    ;input 2
    mov ah,1
    int 21h
    sub al,48
    mov b,al
    
    mov al,a
    mul b
    mov a,al
    
    mov ah,9
    lea dx,res ;lea->load effective address
    int 21h
    
    
    mov dl,a
    add dl,48
    mov ah,2
    int 21h
    
    exit:   mov ah,4ch
            int 21h
            main endp
end main