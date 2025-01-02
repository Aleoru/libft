# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aoropeza <aoropeza@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/25 18:18:48 by aoropeza          #+#    #+#              #
#    Updated: 2022/05/13 11:18:42 by aoropeza         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a
SRC		= ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
		ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c \
		ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c ft_strdup.c \
		ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c \
		ft_strrchr.c ft_tolower.c ft_toupper.c ft_itoa.c ft_putchar_fd.c \
		ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_striteri.c \
		ft_strjoin.c ft_strmapi.c ft_strtrim.c ft_substr.c
B_SRC	= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
		ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
OBJS	= $(SRC:.c=.o)
B_OBJS	= $(B_SRC:.c=.o)
CC		= gcc
CFLAGS	= -Wall -Werror -Wextra
RM		= rm -f

$(NAME) : $(OBJS)
	@$(CC) -c $(CFLAGS) $(SRC)
	ar cr $(NAME) $(OBJS)

bonus : $(B_OBJS) $(OBJS)
	@$(CC) -c $(CFLAGS) $(B_SRC)
	ar cr $(NAME) $(B_OBJS) $(OBJS)

all : $(NAME)

clean :
	@$(RM) $(OBJS) $(B_OBJS)

fclean : clean
	@$(RM) $(NAME) 

re : fclean all

.PHONY: all clean fclean re bonus
