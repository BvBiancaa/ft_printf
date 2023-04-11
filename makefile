# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bmuni <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/23 19:14:06 by bmuni             #+#    #+#              #
#    Updated: 2023/04/11 15:48:33 by bmuni            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#base makefile, only used for the base project. the other one integrates libft and get_next_line too

NAME=libftprintf.a

all: $(NAME)

$(NAME):
	gcc -Wall -Wextra -Werror -c ft_printf.c ft_printf_nbr.c
	ar -rc $(NAME) *.o
	ranlib $(NAME)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re
