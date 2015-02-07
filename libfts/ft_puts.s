;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    puts.s                                             :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 12:37:48 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/05 12:37:49 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_puts
	section .text

_ft_puts :
	mov r8, rdi
suite:
	cmp [r8], byte 0
	je end
	mov rdi, 1
	mov rsi, r8
	mov rdx, 1
	mov rax, 0x2000004
	syscall
	inc r8
	jmp suite
end:
	mov rax, 10
	ret