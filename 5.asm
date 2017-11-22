.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA

grade1 DWORD ?
grade2 DWORD ?
grade3 DWORD ?
grade4 DWORD ?


  prompt1 BYTE "enter Frist Nubmer",0
  prompt2 BYTE "enter Second nuber ",0
  prompt3 BYTE "enter Second nuber ",0
  prompt4 BYTE "enter Second nuber ",0

  string  BYTE 40 DUP(?)
  show1 BYTE "the sum equal",0 
  res1 BYTE 11 DUP(?),0
  show2 BYTE "the sum equal",0 
  res2 BYTE 11 DUP(?),0

  .CODE
  MainProc  PROC
  input prompt1,string ,40
  atod string
  mov grade1,eax
  

   input prompt2,string ,40
   atod string
   mov grade2,eax


   input prompt3,string ,40
   atod string
   mov grade3,eax



   input prompt4,string ,40
   atod string
   mov grade4,eax

  mov eax,grade1
  add eax,grade2
  add eax,grade3
  add eax,grade4
  dtoa res1,eax
  output show1,res1


  mov eax,grade1
  add eax,grade2
  add eax,grade3
  add eax,grade4
  mov ebx,4
  cdq
  div ebx
  dtoa res2,eax
  output show2,res2
	mov eax,0 
	ret
	MainProc ENDP
	END


  
