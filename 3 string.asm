.model small
.stack 100h
.data
str db 'hello World $'
var db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;show str
    ;lea->Load Effective Address
    ;ah=9 -> string output
    ;ah=1 -> single input
    ;ah=2 -> single output
    mov ah,9
    lea dx,str
    int 21h
    
    ;print new line & return carriage
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;take input -> var
    mov ah,1
    int 21h
    mov var,al
    
    ;print new line & return carriage
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;show output -> var
    mov ah,2
    mov dl,var
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main