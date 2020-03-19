all : comp

comp : y.tab.o lex.yy.o
	gcc -Wall y.tab.o lex.yy.o -o comp

y.tab.c : symbols.o source_v2.y
	yacc --verbose --debug -v -d source_v2.y

lex.yy.c : source.l
	lex source.l

symbols.o : error.o
	gcc -Wall symbols.c -o symbols.o

error.o : 
	gcc -Wall error.c -o error.o