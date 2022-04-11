# =======================================================
#   Feito por Eduardo Gobbo Willi Vasconcellos Goncalves
#   GRR20203892
#   Makefile do programa FOTOMOSAICO
#  ======================================================= 

EXECUTAVEL = a.out

INCL1 = /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
INCL2 = /usr/lib/x86_64-linux-gnu/crt1.o
INCL3 = /usr/lib/x86_64-linux-gnu/crti.o
INCL4 = /usr/lib/x86_64-linux-gnu/crtn.o

INCLUDES = $(INCL1) $(INCL2) $(INCL3) $(INCL4) -lc

main: nossomal.o main.o
	ld -o $(EXECUTAVEL) main.o nossomal.o -dynamic-linker $(INCLUDES)

nossomal.o: 
	as nossomal.s -o nossomal.o 

main.o: 
	gcc -c main.c

clear:
	rm *.o 

purge: clear
	rm $(EXECUTAVEL)

# CFLAGS = -Wall -ansi -g -std=c99
# LDLIBS = -lm

# # nome do arquivo compilado
# NAME = main

# # codigo
# CODED = main.c 
# HEADERS = h 
# #objetos gerados
# objects = main.o nossomal.o 



# REGRAS DE COMPILACAO
# all: main

# main: $(objects) 
# 	gcc -o $(NAME) $(objects) $(LDLIBS)

# main.o: $(CODED)
# 	gcc $(CFLAGS) -c $(CODED)

# clean:
# 	rm $(objects) 

# purge: clean
# 	rm $(NAME)
