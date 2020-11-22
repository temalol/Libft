# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nmustach <nmustach@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/06/17 16:38:23 by nmustach          #+#    #+#              #
#    Updated: 2020/11/22 15:32:11 by nmustach         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = $(wildcard ft_*.c)

BIN = $(SRCS:.c=.o) 
HEAD = ./libft.h


all: $(NAME)

$(NAME):$(BIN)
	ar rc $(NAME) $(BIN)
	ranlib $(NAME)

%.o : %.c $(HEAD)
	@gcc -Wall -Wextra -Werror -c $< -o $@
	@echo 'Compile $<'

clean:
	rm -f $(BIN)

fclean: clean 
	rm -f $(NAME)

re: fclean all