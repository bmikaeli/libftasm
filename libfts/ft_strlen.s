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
	mov rcx, -1
	mov al, 0
	cld
	repnz scasb
	not rcx
	dec rcx
	mov rax, rcx
end:
	ret