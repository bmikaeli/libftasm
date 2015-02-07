;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/04 15:50:24 by bmikaeli          #+#    #+#              ;
;    Updated: 2015/02/04 16:18:33 by bmikaeli         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_bzero
	section .text
	
_ft_bzero:
	cmp rsi, 0
	je end
	dec rsi
	mov [rdi], byte 0
	inc rdi
	jmp _ft_bzero
end:
	ret