;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    strdup.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 17:36:54 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/05 17:36:55 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_strdup

	extern _malloc
	extern _ft_strlen

section .text

_ft_strdup :
	push rdi

	call _ft_strlen
	mov rcx, rax
	push rcx
	mov rdi, rax

	call _malloc
	pop rcx
	pop rsi
	mov rdi, rax
	cld
	repnz movsb
end:
	ret