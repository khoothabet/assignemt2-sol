.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA

X DWORD  ?

Y DWORD  ?
Z DWORD  ?
r DWORD  ?
 
 p1 BYTE "enter Frist value",0
 p2 BYTE "enter Second value",0
 p3 BYTE "enter thired value",0
string  BYTE 40 DUP(?)
  sh BYTE "the result equal",0 
  res BYTE 11 DUP(?),0
  .CODE
  MainProc  PROC
  input p1,string ,40
  atod string
  mov x,eax
  input p2, string,40
  atod string 
  mov y,eax
  input p3,string,40
  atod string
  mov z,eax 


  imul eax,2
  mov r,eax
  mov eax,x
  add eax,y
  sub eax,r

 inc eax 
  neg eax
  dtoa res,eax
   output sh,res
mov eax,0 
ret
MainProc ENDP
ENd
