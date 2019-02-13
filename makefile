ABC.exe: big3.o fact.o main.o
	gcc -o ABC.exe big3.o fact.o main.o
big.o:big.c
	gcc -c big.c
fact.o:fact.o
	gcc -c fact.c
main.o:main.c
	gcc -c main.c
