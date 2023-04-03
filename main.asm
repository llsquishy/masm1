; y = (a^2 – b^2) / 2 + a * (c + 1)

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
a SDWORD 3
b SDWORD 1
cc SDWORD 2
y SDWORD 0

.code
main PROC

mov eax, cc
add eax, 1
imul a
mov ebx, eax
mov eax, b
imul b
mov ecx, eax
mov eax, a
imul a
sub eax, ecx
mov ecx, 2
cdq
idiv ecx
add eax, ebx
mov y, eax
mov y, eax

INVOKE ExitProcess,0
main ENDP
END main
