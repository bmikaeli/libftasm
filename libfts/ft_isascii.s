;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/04 17:28:52 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/04 17:28:53 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_isascii
	section .text

_ft_isascii :
	mov rax, 0
	cmp rdi, 0
	jge yes
	jmp end
yes:
	cmp rdi, 127
	jg end
	mov rax, 1
end:
	ret