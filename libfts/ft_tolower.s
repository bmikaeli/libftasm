;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    tolower.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/04 17:03:56 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/04 17:03:57 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_tolower
	section .text

_ft_tolower :
	cmp rdi, 65
	jge _low
	jmp end
_low:
 	cmp rdi, 90
 	jg end
 	add rdi, 32
 	mov rax, rdi
end:
ret