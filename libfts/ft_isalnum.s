;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 12:23:39 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/05 12:23:40 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_isalnum
	section .text

_ft_isalnum :
	mov rax, 0
	cmp rdi, 48
	jge number
	jmp end
number:
	mov rax, 1
	cmp rdi, 58
	jge yesmin
	jmp end
yesmin:
	mov rax, 0
	cmp rdi, 64
	jg yesmin2
	jmp end
yesmin2:
	mov rax, 1
	cmp rdi, 90
	jg yesmaj
	jmp end
yesmaj:
	mov rax, 0
	cmp rdi, 97
	jge again
	jmp end
again:
	cmp rdi, 122
	jg end
	mov rax, 1
end:
	ret