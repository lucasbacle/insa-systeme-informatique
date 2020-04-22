SRC=src/
all : comp clean

comp : $(SRC)y.tab.o $(SRC)lex.yy.o $(SRC)error.o $(SRC)symbols.o $(SRC)assembly.o
	gcc -Wall $(SRC)*.o -o comp

$(SRC)y.tab.c : $(SRC)source_v2.y
	yacc --verbose --debug -v -d -o $(SRC)y.tab.c $(SRC)source_v2.y

$(SRC)lex.yy.c : $(SRC)source.l
	lex -o $(SRC)lex.yy.c $(SRC)source.l 

clean:
	rm -r $(SRC)*.o
	rm -r $(SRC)y.tab.*
