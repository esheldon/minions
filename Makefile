CC=mpicc

# can't use -Wall -Werror because mpicc is rather dumb about symbols
# if you see warning: implicit declaration of function 'getline' it
# is probably OK
CFLAGS=-std=gnu99

prefix := /usr/local

SRC = minions.c
OBJ = minions.o
PROGRAM = minions

default: all

.c.o:
	$(CC) $(CFLAGS)  -c $<

all: $(OBJ) $(PROGRAM)

$(PROGRAM): $(OBJ)
	$(CC) $(OBJ) -o $(PROGRAM)

install: $(LIB) $(MAKE_INPUT_PROG)
	mkdir -p $(prefix)/bin
	cp $(PROGRAM) $(prefix)/bin/


clean:
	rm $(OBJ) $(PROGRAM)

