;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/04 16:26:09 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/04 16:27:10 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_isalpha
	section .text

_ft_isalpha :
	mov rax, 0
	cmp rdi, 65
	jge yes
	jmp end
yes:
	cmp rdi, 122
	jge end
	mov rax, 0
end:
	ret