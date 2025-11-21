linker_output: file1.o file2.o
	 gcc file1.o file2.o -o linker_output

file1.o: file1.c
	 gcc -c file1.c

file2.o: file2.c
	 gcc -c file2.c

loader: louder

louder: louder.c
	 gcc louder.c -o louder

ldd:
	 ldd louder

process:
	 gcc process.c -o process
	 ./process






