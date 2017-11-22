.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA 

gr1  DWORD ?
weight1 DWORD ?
gr2 DWORD ?
weight2 DWORD ?
gr3 DWORD ?
weight3 DWORD ?
gr4 DWORD ?
weight4 DWORD ?

Rs1 DWORD ? 
Rs2 DWORD ? 
Rs3 DWORD ? 
Rs4 DWORD ? 

X1 BYTE "enter the Numerical value of   grade1",0
Y1 BYTE"enter  the Numerical value of   weight 1",0
X2 BYTE "enter the Numerical value of   grade1",0
Y2 BYTE"enter  the Numerical value of   weight 1",0
X3 BYTE "enter the Numerical value of   grade1",0
Y3 BYTE"enter  the Numerical value of   weight 1",0
X4 BYTE "enter the Numerical value of   grade1",0
Y4 BYTE"enterthe Numerical value of     weight 1",0

  string  BYTE 40 DUP(?)
  string1 BYTE "weightedsum Equal",0 
  res1 BYTE 11 DUP(?),0
  string2 BYTE "sum of weighted Equal",0 
  res2 BYTE 11 DUP(?),0
  string3  BYTE "Averge equal",0
  res3 BYTE 11 DUP(?),0

  .CODE
  MainProc  PROC
  input x1,string ,40
  atod string
  mov gr1,eax
  

   input y1,string ,40
  atod string
  mov weight1,eax


  input x2,string ,40
  atod string
  mov gr2,eax
  

   input y2,string ,40
  atod string
  mov weight2,eax



  input x3,string ,40
  atod string
  mov gr3,eax
  

   input y3,string ,40
  atod string
  mov weight3,eax


  input x4,string ,40
  atod string
  mov gr4,eax
  

   input y4,string ,40
  atod string
  mov weight4,eax

  mov eax,gr1 
  imul eax,weight1

  mov Rs1,eax
  mov eax,gr2

  imul eax,weight2
  mov Rs2,eax

  mov eax,gr3
  imul eax,weight3

  mov Rs3,eax
  mov eax,gr4
  imul eax,weight4
  mov Rs4,eax
  mov eax,Rs1
  add eax,Rs2
  add eax,Rs3
  add eax,Rs4
  mov ebx,eax
  dtoa res1,eax
  output string1,res1


  mov eax,weight1
 add eax,weight2
 add eax,weight3
 add eax,weight4
 dtoa res2,eax
 output string2,res2

atod res2
xchg eax,ebx
cdq
div ebx
dtoa res3,eax
output string3,res3

	mov eax,0 
	ret
	MainProc ENDP
	END


  
