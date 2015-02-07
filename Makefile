#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bmikaeli <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/04 15:43:21 by bmikaeli          #+#    #+#              #
#    Updated: 2015/02/04 15:56:50 by bmikaeli         ###   ########.fr        #
#                                                                              #
#******************************************************************************#
NAME = test

LIB = libfts.a

LIBDIR = libft

SRC = main.c

CFLAGS = -Wall -Wextra -Werror

OBJ = $(SRC:.c=.o)

all: $(LIBDIR)/$(LIB) $(NAME)

$(LIBDIR)/$(LIB):
		make -C $(LIBDIR)

$(NAME): $(OBJ)
		@/usr/local/bin/gcc-4.9 -o $(NAME) $(OBJ) $(CFLAGS) -I./$(LIBDIR) -L./$(LIBDIR) -lfts

%.o: %.c
		/usr/local/bin/gcc-4.9 $(CFLAGS) -c $^ -I./$(LIBDIR)

clean:
		@make clean -C $(LIBDIR)
		@rm -f $(OBJ)

fclean: clean
		@make fclean -C $(LIBDIR)
		@rm -f $(NAME)

re: fclean all