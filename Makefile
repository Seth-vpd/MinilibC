##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## make
##

SRC	=	my_strlen.asm	\
		my_strcmp.asm	\
		my_strcspn.asm	\
		memset.asm	\
		memcpy.asm	\
		memmove.asm	\
		my_strpbrk.asm	\
		strchr.asm	\
		strrchr.asm	\
		strcasecmp.asm	\
		strstr.asm	\
		rindex.asm	\
		index.asm	\
		my_strncmp.asm

OBJ	=	$(SRC:.asm=.o)

NAME	=	libasm.so

all:	$(NAME)

$(NAME): $(OBJ)
		ld -shared -o $(NAME) *.o

%.o: %.asm
	nasm -f elf64 $< -o $@

clean:
	rm -f $(OBJ)
	rm -f *~
	rm -f *#

fclean: clean
	rm -f $(NAME)

re:     fclean all
