# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vlvereta <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/25 14:17:49 by vlvereta          #+#    #+#              #
#    Updated: 2017/10/25 14:26:24 by vlvereta         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

NAME = libft.a

FLAGS = -Wall -Wextra -Werror

OBJ = ft_atoi.o ft_binarysearch.o ft_byte_to_bits.o ft_bzero.o \
	ft_countwords.o ft_isalnum.o ft_isalpha.o ft_isascii.o ft_isdigit.o \
	ft_islower.o ft_isprint.o ft_isupper.o ft_itoa.o ft_itoa_base.o \
	ft_lstadd.o ft_lstdel.o ft_lstdelone.o ft_lstiter.o ft_lstmap.o \
	ft_lstnew.o ft_memalloc.o ft_memccpy.o ft_memchr.o ft_memcmp.o \
	ft_memcpy.o ft_memdel.o ft_memmove.o ft_memset.o ft_power.o \
	ft_putchar.o ft_putchar_fd.o ft_putendl.o ft_putendl_fd.o ft_putnbr.o \
	ft_putnbr_fd.o ft_putstr.o ft_putstr_fd.o ft_sort_array_nb.o ft_sqrt.o \
	ft_strcat.o ft_strchr.o ft_strclr.o ft_strcmp.o ft_strcpy.o ft_strdel.o \
	ft_strdup.o ft_strequ.o ft_striter.o ft_striteri.o ft_strjoin.o \
	ft_strlcat.o ft_strlen.o ft_strmap.o ft_strmapi.o ft_strncat.o \
	ft_strncmp.o ft_strncpy.o ft_strnequ.o ft_strnew.o ft_strnstr.o \
	ft_strrchr.o ft_strsplit.o ft_strstr.o ft_strsub.o ft_strtrim.o ft_swap.o \
	ft_tolower.o ft_toupper.o

all: $(NAME)

$(NAME): $(OBJ)
	@	ar rc $(NAME) $(OBJ)

%.o: %.c
	@	$(CC) -c $< -o $@ $(FLAGS)

clean:
	@	rm -f $(OBJ)

fclean: clean
	@	rm -f $(NAME)

re: fclean $(NAME)