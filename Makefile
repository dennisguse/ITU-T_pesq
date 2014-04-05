#(c) Dennis Guse, 2014 (dennis.guse@alumni.tu-berlin.de)

all : build

build : bin/itu-pesq

distclean : clean

clean :
	rm -rf bin/

bin :
	mkdir bin

bin/itu-pesq : bin
	$(CC) -o $@ source/*.c -lm
