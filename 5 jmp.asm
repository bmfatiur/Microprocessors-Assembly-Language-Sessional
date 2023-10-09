.model small
.stack 100h
.data
part1 db 'Hello $'
part2 db 'World $'
msg db 'JMP command $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;lea->Effective Address
    mov ah,9
    lea dx,msg
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main