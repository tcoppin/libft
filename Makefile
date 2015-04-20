# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/07 15:05:27 by tcoppin           #+#    #+#              #
#    Updated: 2015/04/20 18:13:18 by tcoppin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS	= -Wall -Werror -Wextra

SRC = 	ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c\
		ft_memchr.c	ft_memcmp.c ft_strlen.c ft_strdup.c ft_strcpy.c\
		ft_strncpy.c ft_strcat.c ft_strncat.c ft_strlcat.c ft_strchr.c\
		ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strcmp.c ft_strncmp.c\
		ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c\
		ft_isprint.c ft_toupper.c ft_tolower.c ft_islower.c ft_isupper.c\
		ft_strclr.c ft_striter.c ft_striteri.c ft_strequ.c ft_strnequ.c\
		ft_isblank.c ft_iscntrl.c ft_isgraph.c ft_ispunct.c ft_isspace.c\
		ft_isxdigit.c ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c\
		ft_strmap.c ft_strmapi.c ft_strsub.c ft_strjoin.c ft_strtrim.c\
		ft_strsplit.c ft_itoa.c ft_putstr.c ft_putchar.c ft_putnbr.c\
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl.c ft_putnbr_fd.c\
		ft_putendl_fd.c ft_realloc.c ft_free_tb.c get_next_line.c\
		ft_strjoin_free.c ft_strlen_tab.c ft_strreplace.c\

OBJ = 	$(SRC:.c=.o)

SRCDIR	= ./srcs/

OBJDIR	= ./objs/

INCDIR	= ./includes/

SRCS	= $(addprefix $(SRCDIR), $(SRC))

OBJS	= $(addprefix $(OBJDIR), $(OBJ))

INCS	= $(addprefix $(INCDIR), $(INC))

all: $(NAME)

$(NAME) :
		@gcc $(FLAG) -c $(SRCS) -I$(INCDIR)
		@mkdir -p $(OBJDIR)
		@mv $(OBJ) $(OBJDIR)
		@ar rc $(NAME) $(OBJS)
		@ranlib $(NAME)

clean:
		@rm -rf $(OBJS)
		@rm -rf $(OBJDIR)
fclean: clean
		@rm -rf $(NAME)

re: 	fclean all
