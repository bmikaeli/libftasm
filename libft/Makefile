#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/04 15:55:22 by bmikaeli          #+#    #+#              #
#    Updated: 2015/02/04 15:58:15 by bmikaeli         ###   ########.fr        #
#                                                                              #
#******************************************************************************#
NAME = libfts.a

SRC = ft_bzero.s ft_isalpha.s ft_isdigit.s ft_isprint.s ft_toupper.s\
ft_tolower.s ft_isascii.s ft_strcat.s ft_isalnum.s ft_puts.s ft_strlen.s ft_memset.s

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
		@ar rc $(NAME) $(OBJ)
		@ranlib $(NAME)

%.o: %.s
		@nasm -f macho64 $^

clean:
		@rm -f $(OBJ)

fclean: clean
		@rm -f $(NAME)

re: fclean all