NAME = libasm.a

SRCS = ./srcs/ft_strlen.s \
		./srcs/ft_strcpy.s \
		./srcs/ft_strcmp.s \
		./srcs/ft_write.s \
		./srcs/ft_read.s \
		./srcs/ft_strdup.s

MAIN = ./main.c

OBJS = ${SRCS:.s=.o}

OBJM = ${MAIN:.c=.o}

NASM = nasm -f elf64

CFLAGS = -Wall -Wextra -Werror -Ofast -pedantic-errors

INCLUDES = ./includes/libasm.h

%.o :			%.s
				${NASM} $< -o $@

%.o :			%.c ${INCLUDES}
				clang ${CFLAGS} -c $< -o $@

all : ${NAME}

${NAME} : ${OBJS}
				ar rc ${NAME} ${OBJS}

test : ${NAME} ${OBJS} ${OBJM}
				clang ${CFLAGS} ${NAME} ${OBJS} ${OBJM}

clean :
				rm -rf ${OBJS} ${OBJM}

fclean : clean
				rm -rf ${NAME}
				rm -rf a.out

re : fclean all

.PHONY : re fclean clean bonus test all