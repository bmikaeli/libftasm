;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/04 17:00:54 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/04 17:01:01 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_isprint
	section .text

_ft_isprint :
	mov rax, 0
	cmp rdi, 32
	jge yes
	jmp end
yes:
	cmp rdi, 126
	jg end
	mov rax, 1
end:
	ret