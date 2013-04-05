CC=mpicc
#CFLAGS=-std=gnu99 -Wall -Werror
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
	rm -f  core a.out *.o minions

