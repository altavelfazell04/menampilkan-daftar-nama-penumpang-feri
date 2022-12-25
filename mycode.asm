.model small
.code
org 100h
start : jmp input

nilai1 db 'masukan jumlah pria dewasa = ','$'
nilai2 db 13,10,'masukan jumlah anak dan balita = ','$' 
hasil db 13,10,'jumlah seluruh penumpampang yg brangkat = ','$'

input:

mov ah,09h
mov dx,offset nilai1
int 21h
mov ah,01h
int 21h

mov bl,al
sub bl,30h
mov ah,09h
mov dx,offset nilai2
int 21h    

mov ah,01h
int 21h
sub bl,30h
add bl,al

tampil:

mov ah,09h
mov dx,offset hasil
int 21h       
mov ah,02h
mov dl,bl
add dl,30h
int 21h

akhir:

int 20h
end start