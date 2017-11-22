.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA

X DWORD  ?

Y DWORD  ?
Z DWORD  ?
 
 p1 BYTE "enter Frist Nubmer",0
 p2 BYTE "enter Second nuber ",0
 p3 BYTE "enter thired Number",0
   string  BYTE 40 DUP(?)
   show BYTE "the result equal",0 
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


  mov eax ,x
  add eax,y
 
  imul eax,2
  add eax,z
  dtoa res,eax
  output show,res
  mov eax ,0 
  ret


MainProc ENDP
ENd

