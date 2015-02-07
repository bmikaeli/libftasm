#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/04 15:43:21 by bmikaeli          #+#    #+#              #
#    Updated: 2015/02/07 11:51:59 by bmikaeli         ###   ########.fr        #
#                                                                              #
#******************************************************************************#
NAME = test

LIB = libfts.a

LIBDIR = libfts

SRC = main.c

CFLAGS = -Wall -Wextra -Werror

OBJ = $(SRC:.c=.o)

all: $(LIBDIR)/$(LIB) $(NAME)

$(LIBDIR)/$(LIB):
		make -C $(LIBDIR)

$(NAME): $(OBJ)
		@gcc -o $(NAME) $(OBJ) $(CFLAGS) -I./$(LIBDIR) -L./$(LIBDIR) -lfts

%.o: %.c
		gcc $(CFLAGS) -c $^ -I./$(LIBDIR)

clean:
		@make clean -C $(LIBDIR)
		@rm -f $(OBJ)

fclean: clean
		@make fclean -C $(LIBDIR)
		@rm -f $(NAME)

re: fclean all