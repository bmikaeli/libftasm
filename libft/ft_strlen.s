;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 16:50:53 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/05 16:50:54 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strlen
	section .text

_ft_strlen :
	mov rax, 0

boucle:
	push rdi
	mov rdx, -1
	cld
	repnz scasb
	pop rdi
end:
	mov rax, rdi
	ret