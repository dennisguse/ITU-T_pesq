#(c) Dennis Guse, 2014 (dennis.guse@alumni.tu-berlin.de)

all : build

build : bin/itu-t-pesq2005

install : build


distclean : clean

clean :
	rm -rf bin/
	rm -rf source/*.gch

bin :
	mkdir bin

bin/itu-t-pesq2005 : bin
	$(CC) $(CFLAGS) -o $@ source/*.c -lm