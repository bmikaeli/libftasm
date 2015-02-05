;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 11:29:27 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/05 11:29:29 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_strcat
	section .text

_ft_strcat :
	mov rax, rdi

first:
	cmp [rdi], byte 0
	je next
	inc rdi
	jmp first

next:
	cmp [rsi], byte 0
	je end
	mov r11, [rsi]
	mov [rdi], r11
	inc rsi
	inc rdi
	jmp next
end:
	ret