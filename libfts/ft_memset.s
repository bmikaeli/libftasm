;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    memset.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 17:36:42 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/05 17:36:42 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_memset
	section .text

_ft_memset :
	mov rcx, rdx
	mov rax, rsi
	cld
	repne stosb
end:
ret