;Задача: дан массив из 10 слов. Инвертировать все отрицательные
;числа и найти сумму элементов полученного массива.

format ELF64

section '.data'
array dw 1, 2, 3, 4, 5, -6, -7, -8, -9, -10; 15 + 30 + 10 = 55
format_str_for_digit db "%d", 10, 0

section '.text' executable

public _start
_start:
        mov rsi, array
        mov rcx, 10
        mov rax, 0
	mov rbx, 0

        lp:
                mov ax, [rsi]
                add rsi, 2
                cmp ax, 0
                jge skip
                not ax
                add ax, 1
        skip:
                add bx, ax
        loop lp

exit:
        mov eax,1
        int 0x80

