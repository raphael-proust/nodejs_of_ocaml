

all:
	make -C src
	make -C runtime
	make -C test

clean:
	make -C src clean
	make -C runtime clean
	make -C test clean

