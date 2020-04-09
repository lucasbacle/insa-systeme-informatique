%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "symbols.h"
	#include "assembly.h"

	extern FILE *yyin;
	extern FILE *yyout;
	int yydebug = 0;
%}

%union {int nb; char * var;}

%token <nb> tNUMBER
%token <var> tIDENTIFIER
%token tCOMMA tSEMI_COLUMN tSLASH tSTAR tPLUS tMINUS tEQUAL tCLOSED_PARENTHESIS tOPENED_PARENTHESIS tVOID tCONST tINT tMAIN tOPENED_C_BRACKET tCLOSED_C_BRACKET tRETURN tPRINTF

%type <nb> EXPRESSION TYPE TYPE_OPTION LIST_IDENTIFIER

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

LIST_IDENTIFIER: tIDENTIFIER{$$=create_symbol($1, Integer, Nothing);}| tIDENTIFIER {$$=create_symbol($1, Integer, Nothing);} tCOMMA LIST_IDENTIFIER;

AFFECTATION: tIDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN 
{
	char * str;
	sprintf(str, "AFC %d %d\n",get_symbol_by_name($1),$3);
	insert(str);
	if(is_tmp($3))
	{
		pop_tmp();
	}
};
// TODO: COP @expr @resultat

AFFICHAGE: tPRINTF tOPENED_PARENTHESIS tIDENTIFIER tCLOSED_PARENTHESIS tSEMI_COLUMN 
{
	char * str;
	sprintf(str, "PRI %d\n",get_symbol_by_name($3));
	insert(str);
};

EXPRESSION: tOPENED_PARENTHESIS EXPRESSION tCLOSED_PARENTHESIS
		{
			printf("resultat inter : %d\n",$2);
				$$=$2;
		}
	|EXPRESSION tSTAR EXPRESSION 
		{
			int tmp=create_tmp_symbol();
			char * str;
			sprintf(str, "MUL %d %d %d\n", tmp, $1, $3);
			insert(str);
			$$=tmp;
		}
	|EXPRESSION tSLASH EXPRESSION 
		{
			int tmp=create_tmp_symbol();
			char * str;
			sprintf(str, "DIV %d %d %d\n", tmp, $1, $3);
			insert(str); 
			$$=tmp;
		}
	|EXPRESSION tPLUS EXPRESSION
		{
			int tmp=create_tmp_symbol();
			char * str;
			sprintf(str, "ADD %d %d %d\n", tmp, $1, $3);
			insert(str);
			$$=tmp;
		}
	|EXPRESSION tMINUS EXPRESSION 
		{
			int tmp=create_tmp_symbol();
			char * str;
			sprintf(str, "SOU %d %d %d\n", tmp, $1, $3);
			insert(str);
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
		yyin = fopen(argv[1], "r");
		
		if (yyparse()==0){
			printf("OK\n");
			writeFile(argv[2]);
		} else {
			printf("PAS OK\n");
		}
		
		fclose(yyin);
	} else {
		printf("Wrong usage !\n");
	}
	
	return 0;
}


