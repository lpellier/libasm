NAME = libasm.a

SRCS = ./ft_strlen.s \
		./ft_strcpy.s

MAIN = ./main.c

OBJS = ${SRCS:.s=.o}

OBJM = ${MAIN:.c=.o}

NASM = nasm -f elf64

CFLAGS = -Wall -Wextra -Werror -Ofast -pedantic-errors

INCLUDES = ./libasm.h

NAME_TEST = libasm.out

%.o :			%.s
				${NASM} $< -o $@

%.o :			%.c ${INCLUDES}
				clang ${CFLAGS} -c $< -o $@

all : ${NAME}

${NAME} :		${OBJS}
				ar rc ${NAME} ${OBJS}

test :			${NAME_TEST}

${NAME_TEST} : ${NAME} ${OBJM}
				clang ${CFLAGS} ${NAME} ${OBJS} ${OBJM} -o ${NAME_TEST}

clean :
				rm -rf ${OBJS} ${OBJM}

fclean : clean
				rm -rf ${NAME}
				rm -rf ${NAME_TEST}

re : fclean all

.PHONY : re fclean clean bonus test all