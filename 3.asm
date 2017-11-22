.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA

len DWORD  ?

wd DWORD  ?
r DWORD  ?
 
 x BYTE "enter Frist Nubmer",0
 y BYTE "enter Second nuber ",0
  
  string  BYTE 40 DUP(?)
  sh BYTE "the result equal",0 
  res BYTE 11 DUP(?),0
  .CODE
  MainProc  PROC
  input x,string ,40
  atod string
  mov len,eax
  input y, string,40
  atod string 
  mov wd,eax
 
    mov eax,len
	add eax,wd
	mov r,eax
	imul eax,2
	dtoa res,eax
	output sh,res
	mov eax,0 
	ret
	MainProc ENDP
	END

