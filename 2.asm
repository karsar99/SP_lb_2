format ELF64

extrn printf

section '.data'
array dw 1, 2, 3, 4, 5, -6, -7, -8, -9, -10
format_str_for_digit db "%d", 10, 0

section '.text' executable

public main
main:
        mov rsi, array
        mov rcx, 10
        mov rax, 0
	mov rbx, 0

        lp:
                mov ax, [rsi]
                add rsi, 2
                cmp ax, 0
                jge skip
		mov edx, eax
		sub edx, eax
		sub edx, eax
		mov eax, edx
        skip:
                add bx, ax
        loop lp

	mov esi, ebx
	mov edi, format_str_for_digit
	mov eax, 0
	call printf
	;add rsp, 16
exit:
        mov rax,1
        int 0x80

