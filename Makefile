all:
	as -o test.o test.s
	ld -o test --oformat binary -e start test.o

clean:
	rm test test.o
