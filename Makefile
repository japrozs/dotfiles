CC = gcc
CFLAGS = -Wall -pedantic -I include -g
SRC = $(wildcard *.c src/*.c src/**/*.c)
HEAD = $(wildcard include/*.h include/**/*.h)
OBJ = $(SRC:.c=.o)
EXEC = bin/nib

all: clean $(OBJ) $(EXEC) $(HEAD)

$(EXEC): $(OBJ)
	$(CC) $^ -o $@
	rm -rf src/*.o
	rm -rf src/**/*.o

%.o: %.cpp
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -rf *.o src/*.o src/**/*.o $(EXEC)
