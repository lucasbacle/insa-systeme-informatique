%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "symbols.h"

	extern FILE *yyin;
	extern FILE *yyout;
	int yydebug = 0;
%}

%union {int nb; char * var;}

%token <nb> tNUMBER
%token <var> tIDENTIFIER
%token tCOMMA tSEMI_COLUMN tSLASH tSTAR tPLUS tMINUS tEQUAL tCLOSED_PARENTHESIS tOPENED_PARENTHESIS tVOID tCONST tINT tMAIN tOPENED_C_BRACKET tCLOSED_C_BRACKET tRETURN tPRINTF

%type <nb> EXPRESSION TYPE TYPE_OPTION DECLARATION LIST_IDENTIFIER

%right tEQUAL
%left tPLUS tMINUS
%left tSTAR tSLASH

%start PROGRAM

%%

PROGRAM: RETURN_TYPE tMAIN tOPENED_PARENTHESIS tCLOSED_PARENTHESIS BODY {printf("S\n");};
RETURN_TYPE: TYPE | ;

BODY: tOPENED_C_BRACKET LISTE_DECLARATIONS LISTE_INSTRUCTIONS tCLOSED_C_BRACKET {printf("BODY\n");};
LISTE_DECLARATIONS: DECLARATION LISTE_DECLARATIONS | ;
LISTE_INSTRUCTIONS: INSTRUCTION LISTE_INSTRUCTIONS | {printf("LISTE_INSTRUCTIONS\n");};
INSTRUCTION: AFFECTATION|AFFICHAGE {printf("INSTRUCTION\n");};

TYPE: tINT {$$=Integer;};
TYPE_OPTION: tCONST{$$=Const;};

DECLARATION: TYPE_OPTION TYPE LIST_IDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN
	|TYPE LIST_IDENTIFIER tSEMI_COLUMN
	|TYPE LIST_IDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN;

LIST_IDENTIFIER: tIDENTIFIER{create_symbol($1, Integer, Nothing);}| tIDENTIFIER {create_symbol($1, Integer, Nothing);} tCOMMA LIST_IDENTIFIER;

AFFECTATION: tIDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN {fprintf(yyout,"AFC %d  %d"),get_symbol_by_name($1),$3;};
// TODO: COP @expr @resultat

AFFICHAGE: tPRINTF tOPENED_PARENTHESIS tIDENTIFIER tCLOSED_PARENTHESIS tSEMI_COLUMN {printf("AFFICHAGE\n");};

EXPRESSION: tOPENED_PARENTHESIS EXPRESSION tCLOSED_PARENTHESIS
	|EXPRESSION tSTAR EXPRESSION 
		{
			int tmp=create_tmp_symbol();
			fprintf(yyout, "MUL %d %d %d", tmp, $1, $3);
			$$=tmp;
		}
	|EXPRESSION tSLASH EXPRESSION 
		{
			int tmp=create_tmp_symbol();
			fprintf(yyout, "DIV %d %d %d", tmp, $1, $3);
			$$=tmp;
		}
	|EXPRESSION tPLUS EXPRESSION
		{
			int tmp=create_tmp_symbol();
			fprintf(yyout, "ADD %d %d %d", tmp, $1, $3);
			$$=tmp;
		}
	|EXPRESSION tMINUS EXPRESSION 
		{
			int tmp=create_tmp_symbol();
			fprintf(yyout, "SOU %d %d %d", tmp, $1, $3);
			$$=tmp;
		}
	|tIDENTIFIER
		{$$=get_symbol_by_name($1);}
	|tMINUS EXPRESSION %prec tSTAR
		{
			int tmp=create_tmp_symbol();
			$$=tmp;
		}
	|tNUMBER 
		{
			int tmp=create_tmp_symbol();
			$$=tmp;
		}	

%%

int main(int argc, char *argv[]) {
	if (argc == 3) {
		yyout = fopen(argv[2], "w");
		yyin = fopen(argv[1], "r");
		
		if (yyparse()==0){
			printf("OK\n");
		} else {
			printf("PAS OK\n");
		}
		
		fclose(yyin);
		fclose(yyout);
	} else {
		printf("Wrong usage !\n");
	}
	
	return 0;
}


