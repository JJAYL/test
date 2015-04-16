.model small
.stack 100h
.data
msg db 'hello world, this is Joachim',10,13,'$'
.code
main proc
mov ax,@data
mov ds,ax
lea dx,msg
mov ah,9h
int 21h
mov ah,04ch
int 21h
main endp
end main
