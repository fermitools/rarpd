CC=gcc
CFLAGS=-O2 -Wall -g $(DEFINES)

OBJ=rarpd.o ethernet.o

all: rarpd

rarpd: $(OBJ)

clean:
	rm -f $(OBJ) rarpd
