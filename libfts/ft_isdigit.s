;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/04 16:53:59 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/04 16:54:03 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_isdigit
	section .text

_ft_isdigit :
	mov rax, 0
	cmp rdi, 48
	jge yes
	jmp end
yes:
	cmp rdi, 57
	jg end
	mov rax, 1
end:
	ret