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

SRC = ft_bzero.s

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