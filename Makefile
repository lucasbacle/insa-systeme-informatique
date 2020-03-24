all : comp

comp : y.tab.o lex.yy.o error.o symbols.o
	gcc -Wall y.tab.o lex.yy.o error.o symbols.o -o comp

y.tab.c : source_v2.y
	yacc --verbose --debug -v -d source_v2.y

lex.yy.c : source.l
	lex source.l
