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

OBJ = srcs/ft_atoi.o srcs/ft_binarysearch.o srcs/ft_byte_to_bits.o \
	srcs/ft_bzero.o srcs/ft_countwords.o srcs/ft_isalnum.o \
	srcs/ft_isalpha.o srcs/ft_isascii.o srcs/ft_isdigit.o \
	srcs/ft_islower.o srcs/ft_isprint.o srcs/ft_isupper.o srcs/ft_itoa.o \
	srcs/ft_itoa_base.o srcs/ft_lstadd.o srcs/ft_lstdel.o srcs/ft_lstdelone.o \
	srcs/ft_lstiter.o srcs/ft_lstmap.o srcs/ft_lstnew.o srcs/ft_memalloc.o \
	srcs/ft_memccpy.o srcs/ft_memchr.o srcs/ft_memcmp.o srcs/ft_memcpy.o \
	srcs/ft_memdel.o srcs/ft_memmove.o srcs/ft_memset.o srcs/ft_power.o \
	srcs/ft_putchar.o srcs/ft_putchar_fd.o srcs/ft_putendl.o \
	srcs/ft_putendl_fd.o srcs/ft_putnbr.o srcs/ft_putnbr_fd.o \
	srcs/ft_putstr.o srcs/ft_putstr_fd.o srcs/ft_sort_array_nb.o \
	srcs/ft_sqrt.o srcs/ft_strcat.o srcs/ft_strchr.o srcs/ft_strclr.o \
	srcs/ft_strcmp.o srcs/ft_strcpy.o srcs/ft_strdel.o srcs/ft_strdup.o \
	srcs/ft_strequ.o srcs/ft_striter.o srcs/ft_striteri.o srcs/ft_strjoin.o \
	srcs/ft_strlcat.o srcs/ft_strlen.o srcs/ft_strmap.o srcs/ft_strmapi.o \
	srcs/ft_strncat.o srcs/ft_strncmp.o srcs/ft_strncpy.o srcs/ft_strnequ.o \
	srcs/ft_strnew.o srcs/ft_strnstr.o srcs/ft_strrchr.o srcs/ft_strsplit.o \
	srcs/ft_strstr.o srcs/ft_strsub.o srcs/ft_strtrim.o srcs/ft_swap.o \
	srcs/ft_tolower.o srcs/ft_toupper.o

all: $(NAME)

$(NAME): $(OBJ)
	@	ar rc $(NAME) $(OBJ)

%.o: %.c
	@	$(CC) -c $< -o $@ $(FLAGS) -Iincludes

clean:
	@	rm -f $(OBJ)

fclean: clean
	@	rm -f $(NAME)

re: fclean $(NAME)
