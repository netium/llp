all: hello

hello: hello.o
	ld -o hello hello.o

hello.o: hello_world.nas
	nasm -felf64 -o hello.o hello_world.nas