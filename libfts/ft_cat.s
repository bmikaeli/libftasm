;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 17:37:04 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/05 17:37:05 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_cat

extern _ft_strlen

section .data

buffer times 255 db 0
bufsize equ $ - buffer

section .text

_ft_cat:
	push rbp
	mov rbp, rsp

read:
	push rdi					; backup fd
	lea rsi, [rel buffer]		; string buf
	mov rdx, bufsize  			; buf size
	mov rax, 0x2000003 			; READ syscall
	syscall
	jc end 						; abort if bad fd (open return -1)
	cmp rax, 0					; exit if EOF (ctrl + D)
	je end
	mov rdi, 1					; file descriptor
	mov rdx, rax				; size to write
	mov rax, 0x2000004			; write syscall
	syscall
	pop rdi						; recuperate fd
	jmp read					; loop
end:
	mov rsp, rbp
	pop rbp
	ret

