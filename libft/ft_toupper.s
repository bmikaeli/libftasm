;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    toupper.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/04 17:04:17 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/04 17:04:18 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_toupper
	section .text

_ft_toupper :
	cmp rdi, 97
	jge _low
	jmp end
_low:
 	cmp rdi, 122
 	jg end
 	sub rdi, 32
 	mov rax, rdi
end:
ret